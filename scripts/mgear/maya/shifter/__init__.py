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
Shifter base rig class.
"""


#############################################
# GLOBAL
#############################################
# Built in
import datetime
import getpass

# Maya
import pymel.core as pm
import pymel.core.datatypes as dt

# mgear
import mgear
from mgear.maya.shifter.guide import RigGuide
from mgear.maya.shifter.component import MainComponent

import mgear.maya.primitive as pri
import mgear.maya.icon as ico
import mgear.maya.attribute as att
import mgear.maya.skin as skin

# check if we have loaded the necessary plugins
if not pm.pluginInfo("mgear_solvers", q=True, l=True):
    try:
        pm.loadPlugin("mgear_solvers")
    except:
        pm.displayError("You need the mgear_solvers plugin!")
if not pm.pluginInfo("matrixNodes", q=True, l=True):
    pm.loadPlugin("matrixNodes")


##########################################################
# RIG
##########################################################

class Rig(object):
    """
    The main rig class.

    Attributes:
        guide: RigGuide() initialization.
        groups (dic): Rig groups (Maya sets)
        components (dic): Dictionary for the rig components.
            Keys are the component fullname (ie. 'arm_L0')
        componentsIndex (list): Components index list.

    """
    def __init__(self):

        self.guide = RigGuide()

        self.groups = {}

        self.components = {}
        self.componentsIndex = []

    def buildFromSelection(self):
        """
        Build the rig from selected guides.

        """
        startTime = datetime.datetime.now()
        mgear.log("= GEAR RIG SYSTEM ==============================================")

        # Get the option first otherwise the change wight might do won't be taken
        sel = pm.ls(selection=True)

        # Check guide is valid
        self.guide.setFromSelection()
        if not self.guide.valid:
            return

        # Build
        self.build()

        endTime = datetime.datetime.now()
        finalTime = endTime - startTime
        mgear.log("= GEAR BUILD RIG DONE ================ [ " + str(finalTime) + " ] ======")


    def build(self):
        """
        Build the rig.
        """

        self.options = self.guide.values
        self.guides = self.guide.components

        self.initialHierarchy()
        self.processComponents()
        self.finalize()

        return self.model


    def initialHierarchy(self):
        """
        Build the initial hierarchy of the rig.
        Create the rig model, the main properties, and a couple of base organisation nulls.
        Get the global size of the rig.

        """
        mgear.log("Initial Hierarchy")

        # --------------------------------------------------
        # Model
        self.model = pri.addTransformFromPos(None, self.options["rig_name"])
        att.lockAttribute(self.model)

        # --------------------------------------------------
        # Global Ctl
        self.global_ctl = self.addCtl(self.model, "global_C0_ctl", dt.Matrix(), self.options["C_color_fk"], "crossarrow", w=10)
        att.setRotOrder(self.global_ctl, "ZXY")

        # --------------------------------------------------
        # Setup in world Space
        self.setupWS = pri.addTransformFromPos(self.model, "setup")
        att.lockAttribute(self.setupWS)

        # --------------------------------------------------
        # INFOS
        self.isRig_att       = att.addAttribute(self.model, "is_rig", "bool", True)
        self.rigName_att     = att.addAttribute(self.model, "rig_name", "string", self.options["rig_name"])
        self.user_att        = att.addAttribute(self.model, "user", "string", getpass.getuser())
        self.isWip_att       = att.addAttribute(self.model, "wip", "bool", self.options["mode"] != 0)
        self.date_att        = att.addAttribute(self.model, "date", "string", str(datetime.datetime.now()))
        self.mayaVersion_att = att.addAttribute(self.model, "maya_version", "string", str(pm.mel.eval("getApplicationVersionAsFloat")))
        self.gearVersion_att = att.addAttribute(self.model, "gear_version", "string", mgear.getVersion())
        self.synoptic_att    = att.addAttribute(self.model, "synoptic", "string", str(self.options["synoptic"]))
        self.comments_att    = att.addAttribute(self.model, "comments", "string", str(self.options["comments"]))
        self.ctlVis_att      = att.addAttribute(self.model, "ctl_vis", "bool", True)
        self.jntVis_att      = att.addAttribute(self.model, "jnt_vis", "bool", True)

        self.qsA_att         = att.addAttribute(self.model, "quickselA", "string", "")
        self.qsB_att         = att.addAttribute(self.model, "quickselB", "string", "")
        self.qsC_att         = att.addAttribute(self.model, "quickselC", "string", "")
        self.qsD_att         = att.addAttribute(self.model, "quickselD", "string", "")
        self.qsE_att         = att.addAttribute(self.model, "quickselE", "string", "")
        self.qsF_att         = att.addAttribute(self.model, "quickselF", "string", "")


        self.rigGroups  = self.model.addAttr( "rigGroups",  at='message', m=1 )
        self.rigPoses = self.model.addAttr( "rigPoses", at='message', m=1 )

        # --------------------------------------------------
        # Basic set of null
        if self.options["joint_rig"]:
            self.jnt_org = pri.addTransformFromPos(self.model, "jnt_org")
            pm.connectAttr(self.jntVis_att, self.jnt_org.attr("visibility"))


    def processComponents(self):
        """
        Process the components of the rig, following the creation steps.
        """

        # Init
        self.components_infos = {}

        for comp in self.guide.componentsIndex:
            guide = self.guides[comp]
            mgear.log("Init : "+ guide.fullName + " ("+guide.type+")")

            module_name = "mgear.maya.shifter.component."+guide.type
            module = __import__(module_name, globals(), locals(), ["*"], -1)
            Component = getattr(module , "Component")

            component = Component(self, guide)
            if component.fullName not in self.componentsIndex:
                self.components[component.fullName] = component
                self.componentsIndex.append(component.fullName)

                self.components_infos[component.fullName] = [guide.compType, guide.getVersion(), guide.author]

        # Creation steps
        self.steps = MainComponent.steps
        for i, name in enumerate(self.steps):
            # for count, compName in enumerate(self.componentsIndex):
            for compName in self.componentsIndex:
                component = self.components[compName]
                mgear.log(name+" : "+ component.fullName + " ("+component.type+")")
                component.stepMethods[i]()

            if self.options["step"] >= 1 and i >= self.options["step"]-1:
                break


    def finalize(self):
        """
        Finalize the rig.
        """
        groupIdx = 0

        # Properties --------------------------------------
        mgear.log("Finalize")

        # Groups ------------------------------------------
        mgear.log("Creating groups")
        # Retrieve group content from components
        for name in self.componentsIndex:
            component = self.components[name]
            for name, objects in component.groups.items():
                self.addToGroup(objects, name)


        #Create master set to group all the groups
        masterSet = pm.sets(n=self.model.name()+"_sets_grp", em=True)
        pm.connectAttr(masterSet.message, self.model.rigGroups[groupIdx])
        groupIdx += 1
        

        # Creating all groups
        pm.select(cl=True)
        for name, objects in self.groups.items():
            s = pm.sets(n=self.model.name()+"_"+name+"_grp")
            s.union( objects)
            pm.connectAttr(s.message, self.model.rigGroups[groupIdx])
            groupIdx += 1
            masterSet.add(s)




        # Bind pose ---------------------------------------
        print self.groups["controllers"]
        pm.select(self.groups["controllers"])
        node = pm.dagPose(save=True, selection=True)
        pm.connectAttr(node.message, self.model.rigPoses[0])
        print node

        # Bind skin re-apply
        if self.options["importSkin"]:
            try:
                pm.displayInfo("Importing Skin")
                skin.importSkin(self.options["skin"])

            except:
                pm.displayWarning("Skin doesn't exist or is not correct. "+self.options["skin"]+" Skipped!")


    def addCtl(self, parent, name, m, color, icon, **kwargs):
        """
        Create the control and apply the shape, if this is alrealdy stored
        in the guide controllers grp.

        Args:
            parent (dagNode): The control parent
            name (str): The control name.
            m (matrix): The transfromation matrix for the control.
            color (int or list of float): The color for the control in idex or RGB.
            icon (str): The controls default shape.
            kwargs (variant): Other arguments for the icon type variations.

        Returns:
            dagNode: The Control.

        """
        if name in self.guide.controllers.keys():
            ctl_ref = self.guide.controllers[name]
            ctl = pri.addTransform(parent, name, m)
            for shape in ctl_ref.getShapes():
                ctl.addChild(shape, shape=True, add=True)
        else:
            ctl = ico.create(parent, name, m, color, icon, **kwargs)

        self.addToGroup(ctl, "controllers")

        return ctl


    def addToGroup(self, objects, names=["hidden"]):
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


    def getLocalName(self, guideName):
        """
        This function return the local name, cutting the Maya fullname
        and taking the latest part.

            ie. "parentA|parentB|arm_C0_root" will return "arm_C0_root"

        Args:
            guideName (str): The guide name.

        Returns:
            str: The local Name

        """
        if guideName is None:
            return None
        localName = guideName.split("|")[-1]
        return localName


    def getComponentName(self, guideName, local=True):
        """
        This function return the component name

            ie. "arm_C0_root" return "arm_C0"

        Args:
            guideName (str): The guide name.

        Returns:
            str: The compnent Name
        """

        if guideName is None:
            return None
        if local:
            guideName = self.getLocalName(guideName)

        comp_name = "_".join(guideName.split("_")[:2])
        return comp_name

    def getRelativeName(self, guideName):
        """
        This function return the name of the relative in the guide

            ie. "arm_C0_root" return "root"

        Args:
            guideName (str): The guide name.

        Returns:
            str: The relative Name

        """
        if guideName is None:
            return None

        localName = self.getLocalName(guideName)
        relative_name = "_".join(localName.split("_")[2:])
        return relative_name


    def findRelative(self, guideName):
        """
        Return the objects in the rig matching the guide object.

        Args:
            guideName (str): Name of the guide object.

        Returns:
           transform: The relative object

        """

        if guideName is None:
            return self.global_ctl

        # localName = self.getLocalName(guideName)
        comp_name = self.getComponentName(guideName)
        relative_name = self.getRelativeName(guideName)

        if comp_name not in self.components.keys():
            return self.global_ctl
        return self.components[comp_name].getRelation(relative_name)

    # TODO: update findComponent and other find methods with new funtions like
    # comp_name and others.  Better composability
    def findComponent(self, guideName):
        """
        Return the component from a guide Name.

        Args:
            guideName (str): Name of the guide object.

        Returns:
           transform: The component

        """
        if guideName is None:
            return None

        comp_name = self.getComponentName(guideName, False)
        # comp_name = "_".join(guideName.split("_")[:2])

        if comp_name not in self.components.keys():
            return None

        return self.components[comp_name]

    def findUIHost(self, guideName):
        """
        Return the UI host of the compoent

        Args:
            guideName (str): Name of the guide object.

        Returns:
           transform: The relative object

        """

        if guideName is None:
            return self.ui

        comp_name = self.getComponentName(guideName, False)
        # comp_name = "_".join(guideName.split("_")[:2])

        if comp_name not in self.components.keys():
            return self.ui

        if self.components[comp_name].ui is None:
            self.components[comp_name].ui = pm.UIHost(self.components[comp_name].root)

        return self.components[comp_name].ui

