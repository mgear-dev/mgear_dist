# MGEAR is under the terms of the MIT License

# Copyright (c) 2016 Jeremie Passerin, Miquel Campos

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Author:     Jeremie Passerin      geerem@hotmail.com  www.jeremiepasserin.com
# Author:     Miquel Campos         hello@miquel-campos.com  www.miquel-campos.com
# Date:       2016 / 10 / 10

"""
Shifter component rig class.
"""

#############################################
# GLOBAL
#############################################
# pymel
import pymel.core as pm
import pymel.core.datatypes as dt
from pymel import versions

# mgear
import mgear
import mgear.maya.primitive as pri
import mgear.maya.vector as vec
import mgear.maya.transform as tra
import mgear.maya.attribute as att
import mgear.maya.applyop as aop
import mgear.maya.node as nod
import mgear.maya.icon as ico

#############################################
# COMPONENT
#############################################
class MainComponent(object):
    """
    Main component class

    Attributes:
        rig (Rig): The parent Rig of this component.
        guide (ComponentGuide): The guide for this component.

    """
    steps = ["Objects", "Properties", "Operators", "Connect", "Joints", "Finalize"]

    local_params = ("tx", "ty", "tz", "rx", "ry", "rz", "ro", "sx", "sy", "sz")
    t_params = ("tx", "ty", "tz")
    r_params = ("rx", "ry", "rz", "ro")
    s_params = ("sx", "sy", "sz")
    tr_params = ("tx", "ty", "tz", "rx", "ry", "rz", "ro")
    rs_params = ("rx", "ry", "rz", "ro", "sx", "sy", "sz")
    x_axis = dt.Vector(1,0,0)
    y_axis = dt.Vector(0,1,0)
    z_axis = dt.Vector(0,0,1)

    def __init__(self, rig, guide):

        # --------------------------------------------------
        # Main Objects
        self.rig = rig
        self.guide = guide

        self.options = self.rig.options
        self.model = self.rig.model
        self.settings = self.guide.values
        self.setupWS = self.rig.setupWS

        self.name = self.settings["comp_name"]
        self.side = self.settings["comp_side"]
        self.index = self.settings["comp_index"]

        # --------------------------------------------------
        # Shortcut to useful settings
        self.size = self.guide.size

        self.color_fk = self.options[self.side + "_color_fk"]
        self.color_ik = self.options[self.side + "_color_ik"]

        self.negate = self.side == "R"
        if self.negate:
            self.n_sign = "-"
            self.n_factor = -1
        else:
            self.n_sign = ""
            self.n_factor = 1

        # --------------------------------------------------
        # Builder init
        self.groups = {} ## Dictionary of groups
        self.subGroups = {} ## Dictionary of subGroups
        self.controlers = [] ## List of all the controllers of the component

        # --------------------------------------------------
        # Connector init
        self.connections = {}
        self.connections["standard"]  = self.connect_standard

        self.relatives = {}
        self.jointRelatives = {} #joint relatives mapping for automatic connection
        self.controlRelatives = {}

        # --------------------------------------------------
        # Joint positions init
        # jnt_pos is a list of lists [Joint position object + name +  optional flag "parent_jnt_org" or object fullName ]
        self.jnt_pos = []
        self.jointList = []

        self.transform2Lock = []

        # --------------------------------------------------
        # Step
        self.stepMethods = [eval("self.step_0%s"%i) for i in range(len(self.steps))]

    # =====================================================
    # BUILDING STEP
    # =====================================================

    def step_00(self):
        """
        Step 00. PreScript, initial Hierarchy, create objects and set the connection relation.
        """
        self.preScript()
        self.initialHierarchy()
        self.initControlTag()
        self.addObjects()
        self.setRelation()
        return


    def step_01(self):
        """
        Step 01. Get the properties host, create parameters and set layout and logic.
        """
        self.getHost()
        self.validateProxyChannels()
        self.addFullNameParam()
        self.addAttributes()
        return


    def step_02(self):
        """
        Step 02. Apply all the operators.
        """
        self.addOperators()
        return


    def step_03(self):
        """
        Step 03. Connect the component to the rest of the rig.
        """
        self.initConnector()
        self.addConnection()
        self.connect()
        self.postConnect()
        return


    def step_04(self):
        """
        Step 04. Joint structure creation.
        """
        self.jointStructure()
        return


    def step_05(self):
        """
        Step 05. Finalize the component and post Script.
        """
        self.finalize()
        self.postScript()
        return

    # =========================================
    # Creation methods
    def preScript(self):
        """
        Execute an external .py file, before the rig building.
        """
        return


    def initialHierarchy(self):
        """
        Create the inital structure for the rig.

        """
        # Root
        self.root = pri.addTransformFromPos(self.model, self.getName("root"), self.guide.pos["root"])
        self.addToGroup( self.root, names=["componentsRoots"])

        #infos
        att.addAttribute(self.root, "componentType", "string", self.guide.compType)
        att.addAttribute(self.root, "componentName", "string", self.guide.compName)
        att.addAttribute(self.root, "componentVersion", "string", str(self.guide.version)[1:-1])
        att.addAttribute(self.root, "componentAuthor", "string", self.guide.author)
        att.addAttribute(self.root, "componentURL", "string", self.guide.url)
        att.addAttribute(self.root, "componentEmail", "string", self.guide.email)

        # joint --------------------------------
        if self.options["joint_rig"]:
            self.component_jnt_org = pri.addTransform(self.rig.jnt_org, self.getName("jnt_org"))
            # The initial assigment of the active jnt and the parent relative jnt is the same, later will be updated base in the user options
            self.active_jnt = self.component_jnt_org
            self.parent_relative_jnt = self.component_jnt_org

        return


    def addObjects(self):
        """
        This method creates the objects of the component.

        Note:
            REIMPLEMENT. This method should be reimplemented in each component.

        """
        return

    def addJoint(self, obj, name, newActiveJnt=None, UniScale=True, segComp=0, gearMulMatrix=True):
        """
        Add joint as child of the active joint or under driver object.

        Args:
            obj (dagNode): The input driver object for the joint.
            name (str): The joint name.
            newActiveJnt (bool or dagNode): If a joint is pass, this joint will be the active joint
                and parent of the newly created joint.
            UniScale (bool): Connects the joint scale with the Z axis for a unifor scalin, if set False
                will connect with each axis separated.
            segComp (bool): Set True or False the segment compensation in the joint..
            gearMulMatrix (bool): Use the custom gear_multiply matrix node, if False will use
                 Maya's default mulMatrix node.

        Returns:
            dagNode: The newly created joint.

        """

        if self.options["joint_rig"]:
            if newActiveJnt:
                self.active_jnt = newActiveJnt

            jnt = pri.addJoint(self.active_jnt, self.getName(str(name) + "_jnt"), tra.getTransform(obj))
            #All new jnts are the active by default
            self.active_jnt = jnt

            if gearMulMatrix:
                mulmat_node = aop.gear_mulmatrix_op(obj + ".worldMatrix", jnt + ".parentInverseMatrix")
                dm_node = nod.createDecomposeMatrixNode(mulmat_node+".output")
                m = mulmat_node.attr('output').get()
            else:
                mulmat_node = nod.createMultMatrixNode(obj + ".worldMatrix", jnt + ".parentInverseMatrix")
                dm_node = nod.createDecomposeMatrixNode(mulmat_node+".matrixSum")
                m = mulmat_node.attr('matrixSum').get()
            pm.connectAttr(dm_node+".outputTranslate", jnt+".t")
            pm.connectAttr(dm_node+".outputRotate", jnt+".r")
            # TODO: fix squash stretch solver to scale the joint uniform
            # the next line cheat the uniform scaling only fo X or Y axis oriented joints
            if UniScale:
                pm.connectAttr(dm_node+".outputScaleZ", jnt+".sx")
                pm.connectAttr(dm_node+".outputScaleZ", jnt+".sy")
                pm.connectAttr(dm_node+".outputScaleZ", jnt+".sz")
            else:
                pm.connectAttr(dm_node+".outputScale", jnt+".s")
                pm.connectAttr(dm_node+".outputShear", jnt+".shear")

            # Segment scale compensate Off to avoid issues with the global scale
            jnt.setAttr("segmentScaleCompensate", segComp)

            jnt.setAttr("jointOrient", 0, 0, 0)

            # setting the joint orient compensation in order to have clean rotation channels
            jnt.attr("jointOrientX").set(jnt.attr("rx").get())
            jnt.attr("jointOrientY").set(jnt.attr("ry").get())
            jnt.attr("jointOrientZ").set(jnt.attr("rz").get())

            im = m.inverse()

            if gearMulMatrix:
                aop.gear_mulmatrix_op(mulmat_node.attr('output'), im, jnt,'r')
            else:
                nod.createMultMatrixNode(mulmat_node.attr('matrixSum'), im, jnt,'r')

        else:
            jnt = pri.addJoint(obj, self.getName(str(name)+"_jnt"), tra.getTransform(obj))
            pm.connectAttr(self.rig.jntVis_att, jnt.attr("visibility"))

        self.addToGroup(jnt, "deformers")

        return jnt


    def getNormalFromPos(self, pos):
        """
        Get the normal vector from 3 positions.

        Args:
            pos (list of vectors): List of 3 vectors.

        Returns:
            vector: The 3 vectors plane normal.

        """
        if len(pos) < 3:
            mgear.log("%s : Not enough references to define normal"%self.fullName, mgear.sev_error)

        return vec.getPlaneNormal(pos[0], pos[1], pos[2])


    def getBiNormalFromPos(self, pos):
        """
        Get the binormal vector from 3 positions.

        Args:
            pos (list of vectors): List of 3 vectors.

        Returns:
            vector: The 3 vectors plane binormal.

        """
        if len(pos) < 3:
            mgear.log("%s : Not enough references to define binormal"%self.fullName, mgear.sev_error)

        return vec.getPlaneBiNormal(pos[0], pos[1], pos[2])


    def addCtl(self, parent, name, m, color, icon, tp=None, **kwargs):
        """
        Create the control and apply the shape, if this is alrealdy stored
        in the guide controllers grp.

        Args:
            parent (dagNode): The control parent
            name (str): The control name.
            m (matrix): The transfromation matrix for the control.
            color (int or list of float): The color for the control in idex or RGB.
            icon (str): The controls default shape.
            tp (dagNode): Tag Parent Control object to connect as a parent controller
            kwargs (variant): Other arguments for the icon type variations.

        Returns:
            dagNode: The Control.

        """
        fullName = self.getName(name)
        bufferName =  fullName+"_controlBuffer"
        if bufferName in self.rig.guide.controllers.keys():
            ctl_ref = self.rig.guide.controllers[bufferName]
            ctl = pri.addTransform(parent, fullName, m)
            for shape in ctl_ref.getShapes():
                ctl.addChild(shape, shape=True, add=True)
                pm.rename(shape, fullName+"Shape")
            ico.setcolor(ctl, color)
        else:
            ctl = ico.create(parent, fullName, m, color, icon, **kwargs)

        # create the attributes to handlde mirror and symetrical pose
        att.addAttribute(ctl, "invTx", "bool", 0,  keyable=False, niceName="Invert Mirror TX")
        att.addAttribute(ctl, "invTy", "bool", 0,  keyable=False, niceName="Invert Mirror TY")
        att.addAttribute(ctl, "invTz", "bool", 0,  keyable=False, niceName="Invert Mirror TZ")
        att.addAttribute(ctl, "invRx", "bool", 0,  keyable=False, niceName="Invert Mirror RX")
        att.addAttribute(ctl, "invRy", "bool", 0,  keyable=False, niceName="Invert Mirror RY")
        att.addAttribute(ctl, "invRz", "bool", 0,  keyable=False, niceName="Invert Mirror RZ")
        att.addAttribute(ctl, "invSx", "bool", 0,  keyable=False, niceName="Invert Mirror SX")
        att.addAttribute(ctl, "invSy", "bool", 0,  keyable=False, niceName="Invert Mirror SY")
        att.addAttribute(ctl, "invSz", "bool", 0,  keyable=False, niceName="Invert Mirror SZ")

        if self.settings["ctlGrp"]:
            ctlGrp = self.settings["ctlGrp"]
            self.addToGroup(ctl, ctlGrp,  "controllers")
        else:
            ctlGrp = "controllers"
            self.addToGroup(ctl, ctlGrp)

        #lock the control parent attributes if is not a control
        if parent not in self.groups[ctlGrp]:
            self.transform2Lock.append(parent)

        # Set the control shapes isHistoricallyInteresting
        for oShape in ctl.getShapes():
            oShape.isHistoricallyInteresting.set(False)

        #set controller tag
        if versions.current() >= 201650:
            try:
                oldTag = pm.PyNode( ctl.name()+"_tag" )
                if not oldTag.controllerObject.connections():
                    # NOTE:  The next line is comment out. Because this will happend alot since maya does't clean
                    # controller tags after deleting the control Object of the tag. This have been log to Autodesk.
                    # If orphane tags are found, it will be clean in silence.
                    # pm.displayWarning("Orphane Tag: %s  will be delete and created new for: %s"%(oldTag.name(), ctl.name()))
                    pm.delete(oldTag)

            except:
                pass
            pm.controller(ctl)


            if tp:
                ctt = pm.PyNode(pm.controller(ctl, q=True)[0])
                tpTagNode = pm.PyNode(pm.controller(tp, q=True)[0])
                tpTagNode.cycleWalkSibling.set(True)
                pm.connectAttr(tpTagNode.prepopulate, ctt.prepopulate, f=True)
                # The connectAttr to the children attribute is giving error
                # i.e:  pm.connectAttr(ctt.attr("parent"), tpTagNode.attr("children"), na=True)
                # if using the next available option tag
                # I was expecting to use ctt.setParent(tp) but doest't work as expected.
                # After reading the documentation this method looks prety useless.
                # Looks like is boolean and works based on selection :(

                # this is a dirty loop workaround. Naaah!
                i = 0
                while True:
                    try:
                        pm.connectAttr(ctt.parent, tpTagNode.attr("children[%s]"%str(i)))
                        break
                    except:
                        i+=1
                        if i >100:
                            pm.displayWarning("The controller tag for %s has reached the limit index of 100 children"%ctl.name())
                            break



        return ctl


    def addToGroup(self, objects, names=["hidden"], parentGrp=None):
        """
        Add the object in a collection for later group creation.

        Args:
            objects (dagNode or list of dagNode): Object to put in the group.
            names (str or list of str): Names of the groups to create.
        """

        if not isinstance(names, list):
            names = [names]

        if not isinstance(objects, list):
            objects = [objects]

        for name in names:
            if name not in self.groups.keys():
                self.groups[name] = []

            self.groups[name].extend(objects)

            if parentGrp:
                if parentGrp not in self.subGroups.keys():
                    self.subGroups[parentGrp] = []
                if name not in self.subGroups[parentGrp]:
                    self.subGroups[parentGrp].append(name)



    # =====================================================
    # PROPERTY
    # =====================================================

    def getHost(self):
        """
        Get the host for the properties.
        """
        self.uihost = self.rig.findRelative(self.settings["ui_host"])

    def validateProxyChannels(self):
        """
        Check the Maya version to determinate if we can use proxy channels
        and check user setting on the guide.
        This feature is available from 2016.5
        """

        if versions.current() >= 201650 and  self.options["proxyChannels"]:
            self.validProxyChannels = True
        else:
            self.validProxyChannels = False

    def addAttributes(self):
        """
        This method add the attributes of the component.

        Note:
            REIMPLEMENT. This method should be reimplemented in each component.

        """
        return


    def addFullNameParam(self):
        """
        Add a parameter to the animation property.
        Note that animatable and keyable are True per default.

        """

        # attr = self.addAnimEnumParam("", "", 0, ["---------------"] )
        if self.options["classicChannelNames"]:
            attr = self.addAnimEnumParam(self.getName(), "__________", 0, [self.getName()] )
        else:
            attr = self.addAnimEnumParam(self.guide.compName, "__________", 0, [self.guide.compName] )

        return attr


    def addAnimParam(self, longName, niceName, attType, value, minValue=None, maxValue=None, keyable=True, readable=True, storable=True, writable=True):
        """
        Add a parameter to the animation property.
        Note that animatable and keyable are True per default.

        Args:
            longName (str): The attribute name.
            niceName (str): The attribute nice name. (optional)
            attType (str): The Attribute Type. Exp: 'string', 'bool', 'long', etc..
            value (float or int): The default value.
            minValue (float or int): minimum value. (optional)
            maxValue (float or int): maximum value. (optional)
            keyable (bool): Set if the attribute is keyable or not. (optional)
            readable (bool): Set if the attribute is readable or not. (optional)
            storable (bool): Set if the attribute is storable or not. (optional)
            writable (bool): Set if the attribute is writable or not. (optional)

        Returns:
            str: The long name of the new attribute

        """
        if self.options["classicChannelNames"]:
            attr = att.addAttribute(self.uihost, self.getName(longName), attType, value, niceName, None, minValue=minValue, maxValue=maxValue, keyable=keyable, readable=readable, storable=storable, writable=writable)
        else:
            if self.uihost.hasAttr(self.getCompName(longName)):
                attr = self.uihost.attr(self.getCompName(longName))
            else:
                attr = att.addAttribute(self.uihost, self.getCompName(longName), attType, value, niceName, None, minValue=minValue, maxValue=maxValue, keyable=keyable, readable=readable, storable=storable, writable=writable)

        return attr

    ## Add a parameter to the animation property.\n
    # Note that animatable and keyable are True per default.
    # @param self
    def addAnimEnumParam(self, longName, niceName, value, enum=[], keyable=True, readable=True, storable=True, writable=True):
        """
        Add a parameter to the animation property.
        Note that animatable and keyable are True per default.

        Args:
            longName (str): The attribute name.
            niceName (str): The attribute nice name. (optional)
            attType (str): The Attribute Type. Exp: 'string', 'bool', 'long', etc..
            value (float or int): The default value.
            enum (list of str): The list of elements in the enumerate control
            keyable (bool): Set if the attribute is keyable or not. (optional)
            readable (bool): Set if the attribute is readable or not. (optional)
            storable (bool): Set if the attribute is storable or not. (optional)
            writable (bool): Set if the attribute is writable or not. (optional)

        Returns:
            str: The long name of the new attribute

        """
        if self.options["classicChannelNames"]:
            attr = att.addEnumAttribute(self.uihost, self.getName(longName), value, enum, niceName, None, keyable=keyable, readable=readable, storable=storable, writable=writable)
        else:
            if self.uihost.hasAttr(self.getCompName(longName)):
                attr = self.uihost.attr(self.getCompName(longName))
            else:
                attr = att.addEnumAttribute(self.uihost, self.getCompName(longName), value, enum, niceName, None, keyable=keyable, readable=readable, storable=storable, writable=writable)

        return attr


    def addSetupParam(self, longName, niceName, attType, value, minValue=None, maxValue=None, keyable=True, readable=True, storable=True, writable=True):
        """
        Add a parameter to the setup property.
        Note that animatable and keyable are False per default.

        Args:
            longName (str): The attribute name.
            niceName (str): The attribute nice name. (optional)
            attType (str): The Attribute Type. Exp: 'string', 'bool', 'long', etc..
            value (float or int): The default value.
            minValue (float or int): minimum value. (optional)
            maxValue (float or int): maximum value. (optional)
            keyable (bool): Set if the attribute is keyable or not. (optional)
            readable (bool): Set if the attribute is readable or not. (optional)
            storable (bool): Set if the attribute is storable or not. (optional)
            writable (bool): Set if the attribute is writable or not. (optional)

        Returns:
            str: The long name of the new attribute

        """
        attr = att.addAttribute(self.root, longName, attType, value, niceName, None, minValue=minValue, maxValue=maxValue, keyable=keyable, readable=readable, storable=storable, writable=writable)

        return attr

    # =====================================================
    # OPERATORS
    # =====================================================
    def addOperators(self):
        """
        This method add the operators of the component.

        Note:
            REIMPLEMENT. This method should be reimplemented in each component.

        """
        return

    # =====================================================
    # CONNECTOR
    # =====================================================

    def addConnection(self):
        """
        Add more connection definition to the set.

        Note:
            REIMPLEMENT. This method should be reimplemented in each component.
            Only if you need to use an new connection (not the standard).

        """
        return


    def setRelation(self):
        """
        Set the relation beetween object from guide to rig.

        Note:
            REIMPLEMENT. This method should be reimplemented in each component.

        """
        for name in self.guide.objectNames:
            self.relatives[name] = self.root
            self.controlRelatives[name] = self.global_ctl


    def getRelation(self, name):
        """
        Return the relational object from guide to rig.

        Args:
            name (str): Local name of the guide object.

        Returns:
            dagNode: The relational object.

        """
        if name not in self.relatives.keys():
            mgear.log("Can't find reference for object : " + self.fullName + "." + name, mgear.sev_error)
            return False

        return self.relatives[name]

    def getControlRelation(self, name):
        """
        Return the relational object from guide to rig.

        Args:
            name (str): Local name of the guide object.

        Returns:
            dagNode: The relational object.

        """
        if name not in self.controlRelatives.keys():
            mgear.log("Control tag relative: Can't find reference for object : " + self.fullName + "." + name, mgear.sev_error)
            return False

        return self.controlRelatives[name]

    def initControlTag(self):
        """Initialice the control tag parent.
        The controllers tag are a new feature from Maya 2016.5 and up.
        Helps to stablish realtions with a custom walkpick.
        Also tells maya how to evaluate the control properly on parallel evaluation
        """
        self.parentCtlTag = None
        if versions.current() >= 201650:
            parent_name = "none"
            if self.guide.parentComponent is not None:
                parent_name = self.guide.parentComponent.getName(self.guide.parentLocalName)
            self.parentCtlTag = self.rig.findControlRelative(parent_name)


    def initConnector(self):
        """
        Initialize the connections beetween the component and his parent component.
        """
        parent_name = "none"
        if self.guide.parentComponent is not None:
            parent_name = self.guide.parentComponent.getName(self.guide.parentLocalName)

        self.parent = self.rig.findRelative(parent_name)
        self.parent_comp = self.rig.findComponent(parent_name)


    def connect(self):
        """
        Connect the component to the rest of the rig using the defined connection.
        """


        if self.settings["connector"] not in self.connections.keys():
            mgear.log("Unable to connect object", mgear.sev_error)
            return False

        self.connections[self.settings["connector"]]()

        return True


    def connect_standard(self):
        """
        Standard connection definition. This is a simple parenting of the root.
        """
        self.parent.addChild(self.root)


    def connect_standardWithIkRef(self):
        """
        Standard connection definition with ik and upv references.
        """
        self.parent.addChild(self.root)

        # Set the Ik Reference
        self.connectRef(self.settings["ikrefarray"], self.ik_cns)
        self.connectRef(self.settings["upvrefarray"], self.upv_cns, True)



    def connect_orientCns(self):
        """
        Connection definition using orientation constraint.
        """

        self.parent.addChild(self.root)

        refArray = self.settings["ikrefarray"]

        if refArray:
            ref_names = refArray.split(",")
            if len(ref_names) == 1:
                ref = self.rig.findRelative(ref_names[0])
                pm.parent(self.ik_cns, ref)
            else:
                ref = []
                for ref_name in ref_names:
                    ref.append(self.rig.findRelative(ref_name))

                ref.append(self.ik_cns)
                cns_node = pm.orientConstraint(*ref, maintainOffset=True)
                cns_attr = pm.orientConstraint(cns_node, query=True, weightAliasList=True)

                for i, attr in enumerate(cns_attr):
                    pm.setAttr(attr, 1.0)
                    node_name = pm.createNode("condition")
                    pm.connectAttr(self.ikref_att, node_name+".firstTerm")
                    pm.setAttr(node_name+".secondTerm", i)
                    pm.setAttr(node_name+".operation", 0)
                    pm.setAttr(node_name+".colorIfTrueR", 1)
                    pm.setAttr(node_name+".colorIfFalseR", 0)
                    pm.connectAttr(node_name+".outColorR", attr)

    def connect_standardWithSimpleIkRef(self):
        """
        Standard connection definition with simple IK reference.
        """

        self.parent.addChild(self.root)

        # Set the Ik Reference
        self.connectRef(self.settings["ikrefarray"], self.ik_cns)

    def connect_averageParentCns(self):
        """
        Connection definition using average parent constraint.
        """
        self.parent.addChild(self.root)

        refArray = self.settings["ikrefarray"]

        if refArray:
            ref_names = refArray.split(",")
            if len(ref_names) == 1:
                ref = self.rig.findRelative(ref_names[0])
                pm.parent(self.ik_cns, ref)
            else:
                ref = []
                for ref_name in ref_names:
                    ref.append(self.rig.findRelative(ref_name))

                ref.append(self.ik_cns)
                cns_node = pm.parentConstraint(*ref, maintainOffset=True)
                cns_attr = pm.parentConstraint(cns_node, query=True, weightAliasList=True)

                for i, attr in enumerate(cns_attr):
                    pm.setAttr(attr, 1.0)

    def connectRef(self, refArray, cns_obj, upVAttr=None):
        """
        Connect the cns_obj to a multiple object using parentConstraint.

        Args:
            refArray (list of dagNode): List of driver objects
            cns_obj (dagNode): The driven object.
            upVAttr (bool): Set if the ref Array is for IK or Up vector
        """

        if refArray:
            ref_names = refArray.split(",")
            if len(ref_names) == 1:
                ref = self.rig.findRelative(ref_names[0])
                pm.parent(cns_obj, ref)
            else:
                ref = []
                for ref_name in ref_names:
                    ref.append(self.rig.findRelative(ref_name))

                ref.append(cns_obj)
                cns_node = pm.parentConstraint(*ref, maintainOffset=True)
                cns_attr = pm.parentConstraint(cns_node, query=True, weightAliasList=True)
                # check if the ref Array is for IK or Up vector
                if upVAttr:
                    oAttr = self.upvref_att
                else:
                    oAttr = self.ikref_att

                for i, attr in enumerate(cns_attr):
                    node_name = pm.createNode("condition")
                    pm.connectAttr(oAttr, node_name+".firstTerm")
                    pm.setAttr(node_name+".secondTerm", i)
                    pm.setAttr(node_name+".operation", 0)
                    pm.setAttr(node_name+".colorIfTrueR", 1)
                    pm.setAttr(node_name+".colorIfFalseR", 0)
                    pm.connectAttr(node_name+".outColorR", attr)

    def connectRef2(self, refArray, cns_obj, in_attr, init_ref=False, skipTranslate = False  ):
        """
        Connect the cns_obj to a multiple object using parentConstraint.

        Args:
            refArray (string): List of driver objects divided by ",".
            cns_obj (dagNode): The driven object.
            upVAttr (bool): Set if the ref Array is for IK or Up vector
            init_ref (list of dagNode): Set the initial default ref connections
            skipTranslate (bool): if True will skip the translation connections
        """

        if refArray:
            ref_names = refArray.split(",")
            if len(ref_names) == 1:
                ref = self.rig.findRelative(ref_names[0])
                pm.parent(cns_obj, ref)
            else:
                ref = []
                for ref_name in ref_names:
                    if self.rig.findRelative(ref_name) == self.rig.findRelative("return the global ctl"):
                        pass
                    else:
                        ref.append(self.rig.findRelative(ref_name))
                if init_ref:
                    ref = init_ref + ref
                ref.append(cns_obj)
                if skipTranslate:
                    cns_node = pm.parentConstraint(*ref, maintainOffset=True, skipTranslate=["x","y","z"])
                else:
                    cns_node = pm.parentConstraint(*ref, maintainOffset=True)
                cns_attr = pm.parentConstraint(cns_node, query=True, weightAliasList=True)

                for i, attr in enumerate(cns_attr):
                    node_name = pm.createNode("condition")
                    pm.connectAttr(in_attr, node_name+".firstTerm")
                    pm.setAttr(node_name+".secondTerm", i)
                    pm.setAttr(node_name+".operation", 0)
                    pm.setAttr(node_name+".colorIfTrueR", 1)
                    pm.setAttr(node_name+".colorIfFalseR", 0)
                    pm.connectAttr(node_name+".outColorR", attr)

    def connect_standardWithRotRef(self, refArray, cns_obj):
        """
        Connect the cns_obj to a multiple object using parentConstraint, but skipping translation connection.

        Args:
            refArray (list of dagNode): List of driver objects
            cns_obj (dagNode): The driven object.

        """
        if refArray:
            ref_names = refArray.split(",")
            if len(ref_names) >= 1:
                ref = []
                for ref_name in ref_names:
                    ref.append(self.rig.findRelative(ref_name))

                ref.append(cns_obj)
                cns_node = pm.parentConstraint(*ref, maintainOffset=True, skipTranslate=["x","y","z"])
                cns_attr = pm.parentConstraint(cns_node, query=True, weightAliasList=True)
                for i, attr in enumerate(cns_attr):
                    node_name = pm.createNode("condition")
                    pm.connectAttr(self.ref_att, node_name+".firstTerm")
                    pm.setAttr(node_name+".secondTerm", i)
                    pm.setAttr(node_name+".operation", 0)
                    pm.setAttr(node_name+".colorIfTrueR", 1)
                    pm.setAttr(node_name+".colorIfFalseR", 0)
                    pm.connectAttr(node_name+".outColorR", attr)


    def postConnect(self):
        """
        Post connection actions.

        Note:
            REIMPLEMENT. This method should be reimplemented in each component.

        """
        return


    # =====================================================
    # JOINTS STRUCTURE
    # =====================================================
    def jointStructure(self):
        """
        Handle the building of the joint structure, when we select jnt_org option.

        """
        #get parent component joint
        if self.settings["useIndex"]:
            try:
                self.active_jnt = self.parent_comp.jointList[self.settings["parentJointIndex"]]
            except:
                pm.displayWarning("The parent component for: %s don't have any joint with the index: %s."%(self.fullName, str(self.settings["parentJointIndex"])))
        else:
            parent_name = "none"
            if self.guide.parentComponent is not None:
                parent_name = self.guide.parentComponent.getName(self.guide.parentLocalName)

            relative_name = self.rig.getRelativeName(parent_name)

            oParent_comp = self.parent_comp
            while oParent_comp:
                try:
                    self.active_jnt = oParent_comp.jointList[oParent_comp.jointRelatives[relative_name]]
                    # when we search  in the parent component for a active jnt we also store it for later retrive
                    self.parent_relative_jnt = self.active_jnt
                    break
                except:
                    if oParent_comp.parent_comp:
                        parent_name = oParent_comp.guide.parentComponent.getName(oParent_comp.guide.parentLocalName)
                        relative_name = oParent_comp.rig.getRelativeName(parent_name)
                    else:
                        pm.displayInfo("The parent components for: %s don't have joint List in any of them use the root off guide."%self.fullName)

                    oParent_comp = oParent_comp.parent_comp

        # Joint creation
        for jpo in self.jnt_pos:
            if len(jpo)>=3 and self.options["joint_rig"]:
                if jpo[2] == "component_jnt_org":
                    newActiveJnt = self.component_jnt_org
                elif jpo[2] == "parent_relative_jnt":
                    # this option force the active jnt always to the parent relative jnt.
                    # if None the active jnt will be updated to the latest in each jnt creation
                    newActiveJnt = self.parent_relative_jnt
                else:
                    try:
                        # here jpo[2] is also the string name of the jnt inside the component. IE: "root"
                        newActiveJnt =  self.jointList[self.jointRelatives[jpo[2]]]

                    except:
                        if jpo[2]:
                            pm.displayWarning( "Joint Structure creation: The object %s can't be found. Joint parent is NONE for %s, from %s"%(jpo[2], jpo[0], self.fullName))
                        newActiveJnt = None
            else:
                newActiveJnt = None
            # Handle the uniform scale
            if len(jpo)==4 and self.options["joint_rig"]:
                uniScale = jpo[3]
            else:
                uniScale = True
            self.jointList.append(self.addJoint(jpo[0], jpo[1], newActiveJnt, uniScale))


    # =====================================================
    # FINALIZE
    # =====================================================
    def finalize(self):
        """
        Finalize and clean the rig builing.
        """
        #locking the attributes for all the ctl parents that are not ctl itself.
        for t in self.transform2Lock:
            att.lockAttribute(t)

        return

    def postScript(self):
        """
        Execute an external .py file, after the rig building.
        """

        return

    # =====================================================
    # MISC
    # =====================================================

    def getName(self, name="", side=None):
        """
        Return the name for component element

        Args:
            name (str): The name to concatenate to the component name. (Optional)
            side (str): The side (Optional).

        Returns:
            str: The name.

        """
        if side is None:
            side = self.side

        name = str(name)

        if name:
            return "_".join([self.name, side+str(self.index), name])
        else:
            return self.fullName


    def getCompName(self, name=""):
        """
        Return the component type name

        Args:
            name (str): The name to concatenate to the component name.
        Returns:
            str: The name.

        """

        return "_".join([self.guide.compName, name])


    # =====================================================
    # PROPERTIES
    # =====================================================

    def getFullName(self):
        """
        return the fullname of the component
        """
        return self.guide.fullName


    def getType(self):
        """
        return the type of the component
        """
        return self.guide.type

    fullName = property(getFullName)
    type = property(getType)
