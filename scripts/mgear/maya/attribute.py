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
Attribute creation functions.
"""

#############################################
# GLOBAL
#############################################\
import collections
import mgear
import pymel.core as pm
import pymel.core.datatypes as dt


#############################################
# NODE
#############################################

def addAttribute(node, longName, attributeType, value, niceName=None, shortName=None, minValue=None,
                 maxValue=None, keyable=True, readable=True, storable=True, writable=True, channelBox=False):
    """
    Add attribute to a node

    Args:
        node (dagNode): The object to add the new attribute.
        longName (str): The attribute name.
        attributeType (str): The Attribute Type. Exp: 'string', 'bool', 'long', etc..
        value (float or int): The default value.
        niceName (str): The attribute nice name. (optional)
        shortName (str): The attribute short name. (optional)
        minValue (float or int): minimum value. (optional)
        maxValue (float or int): maximum value. (optional)
        keyable (bool): Set if the attribute is keyable or not. (optional)
        readable (bool): Set if the attribute is readable or not. (optional)
        storable (bool): Set if the attribute is storable or not. (optional)
        writable (bool): Set if the attribute is writable or not. (optional)
        channelBox (bool): Set if the attribute is in the channelBox or not, when the attribute is not keyable. (optional)

    Returns:
        str: The long name of the new attribute
    """
    if node.hasAttr(longName):
        mgear.log("Attribute already exists", mgear.error)
        return

    data = {}

    if shortName is not None:
        data["shortName"] = shortName
    if niceName is not None:
        data["niceName"] = niceName
    if attributeType == "string":
        data["dataType"] = attributeType
    else:
        data["attributeType"] = attributeType

    if minValue is not None and minValue is not False:
        data["minValue"] = minValue
    if maxValue is not None and maxValue is not False:
        data["maxValue"] = maxValue

    data["keyable"] = keyable
    data["readable"] = readable
    data["storable"] = storable
    data["writable"] = writable
    node.addAttr(longName, **data)
    if value is not None:
        node.setAttr(longName, value)
    if channelBox:
        node.attr(longName).set(channelBox=True)
    return node.attr(longName)


def addColorAttribute(node, longName, value=False, keyable=True, readable=True, storable=True,
                      writable=True, niceName=None, shortName=None):

    """
    Add a color attribute to a node

    Args:
        node (dagNode): The object to add the new attribute.
        longName (str): The attribute name.
        value (list of flotat): The default value in a list for RGB. exp [1.0, 0.99, 0.13].
        keyable (bool): Set if the attribute is keyable or not. (optional)
        readable (bool): Set if the attribute is readable or not. (optional)
        storable (bool): Set if the attribute is storable or not. (optional)
        writable (bool): Set if the attribute is writable or not. (optional)
        niceName (str): The attribute nice name. (optional)
        shortName (str): The attribute short name. (optional)

    Returns:
        str: The long name of the new attribute
    """
    if node.hasAttr(longName):
        mgear.log("Attribute already exists", mgear.error)
        return

    data = {}

    data["attributeType"] = "float3"
    if shortName is not None:
        data["shortName"] = shortName
    if niceName is not None:
        data["niceName"] = niceName

    data["usedAsColor"] = True
    data["keyable"] = keyable
    data["readable"] = readable
    data["storable"] = storable
    data["writable"] = writable

    #child nested attr
    dataChild = {}
    dataChild["attributeType"] = 'float'
    dataChild["parent"] = longName

    node.addAttr(longName, **data)
    node.addAttr(longName + "_r", **dataChild)
    node.addAttr(longName + "_g", **dataChild)
    node.addAttr(longName + "_b", **dataChild)

    if value:
        node.setAttr(longName+ "_r", value[0])
        node.setAttr(longName+ "_g", value[1])
        node.setAttr(longName+ "_b", value[2])

    return node.attr(longName)


def addEnumAttribute(node, longName, value, enum, niceName=None, shortName=None, keyable=True, readable=True,
                     storable=True, writable=True):
    """
    Add an enumerate attribute to a node

    Args:
        node (dagNode): The object to add the new attribute.
        longName (str): The attribute name.
        value (int): The default value.
        enum (list of str): The list of elements in the enumerate control
        niceName (str): The attribute nice name. (optional)
        shortName (str): The attribute short name. (optional)
        keyable (bool): Set if the attribute is keyable or not. (optional)
        readable (bool): Set if the attribute is readable or not. (optional)
        storable (bool): Set if the attribute is storable or not. (optional)
        writable (bool): Set if the attribute is writable or not. (optional)

    Returns:
        str: The long name of the new attribute
    """

    if node.hasAttr(longName):
        mgear.log("Attribute '"+longName+"' already exists", mgear.sev_warning)
        return

    data = {}

    if shortName is not None:
        data["shortName"] = shortName
    if niceName is not None:
        data["niceName"] = niceName

    data["attributeType"] = "enum"
    data["en"] = ":".join(enum)

    data["keyable"] = keyable
    data["readable"] = readable
    data["storable"] = storable
    data["writable"] = writable

    node.addAttr(longName, **data)
    node.setAttr(longName, value)

    return node.attr(longName)

def addProxyAttribute(sourceAttrs, targets,  duplicatedPolicy=None):
    """Add proxy paramenter to a list of target dagNode
    Duplicated channel policy, stablish the rule in case the channel already
    exist on the target.

    Duplicate policy options

    ================    =================================================================
    index               This policy will add an index to avoid clashing channel names
    fullName            This policy will add the name of the source object to the channel
    merge               This policy will merge the channels
    ================    =================================================================

    Args:
        sourceAttrs (attr or list of attr): The parameters to be connected as proxy
        targets (dagNode or list of dagNode): The list of dagNode to add the proxy paramenter
        duplicatedPolicy (string, optional): Set the duplicated channel policy
    """
    if not isinstance(targets, list):
        targets = [targets]
    if not isinstance(sourceAttrs, list):
        sourceAttrs = [sourceAttrs]
    for sourceAttr in sourceAttrs:
        for target in targets:
            attrName = sourceAttr.longName()
            if target.hasAttr(sourceAttr.longName()):
                if duplicatedPolicy == "index":
                    i = 0
                    while target.hasAttr(sourceAttr.longName()+str(i)):
                        i+=1
                    attrName = sourceAttr.longName()+str(i)
                elif duplicatedPolicy == "fullName":
                    attrName = "{}_{}".format(sourceAttr.nodeName(), sourceAttr.longName())

            if not target.hasAttr(attrName):
                target.addAttr(attrName, pxy=sourceAttr)
            else:
                pm.displayWarning("The proxy channel %s already exist on: %s."%(sourceAttr.longName(), target.name()))


def moveChannel(attr, sourceNode, targetNode, duplicatedPolicy=None):
    """Move channels  keeping the output connections.
    Duplicated channel policy, stablish the rule in case the channel already
    exist on the target.

    NOTE: For the moment move channel only supports type double and enum

    Duplicate policy options

    ================    =================================================================
    index               This policy will add an index to avoid clashing channel names
    fullName            This policy will add the name of the source object to the channel
    merge               This policy will merge the channels
    ================    =================================================================

    Args:
        attr (str): Name of the channel to move
        sourceNode (PyNoe or str): The source node with the channel
        targetNode (PyNoe or str): The target node for the channel
        duplicatedPolicy (None, str): Set the duplicated channel policy
    """
    if isinstance(sourceNode, str):
        sourceNode = pm.PyNode(sourceNode)
    if isinstance(targetNode, str):
        targetNode = pm.PyNode(targetNode)

    at = sourceNode.attr(attr)
    atType =  at.type()
    if atType in ["double", "enum"]:

        # define duplicated attribute policy
        newAtt = None
        attrName = attr
        if pm.attributeQuery( attr, node=targetNode, exists=True ):
            if duplicatedPolicy == "index":
                i = 0
                while targetNode.hasAttr(attr+str(i)):
                    i+=1
                attrName = attr+str(i)
            elif duplicatedPolicy == "fullName":
                attrName = "{}_{}".format(sourceNode.name(), attr)

            elif duplicatedPolicy == "merge":
                newAtt = pm.PyNode(".".join([targetNode.name(), attr]))

            else:
                pm.displayWarning("Duplicated channel policy, is not defined. Move channel operation will fail if the channel already exist on the target.")
                return False

        outcnx = at.listConnections(p=True)
        if not newAtt:
            value = at.get()
            if atType == "double":
                min = at.getMin()
                max = at.getMax()
                pm.addAttr(targetNode, ln=attrName, at="double", min=min, max=max, dv=value, k=True)
            elif atType == "enum":
                en = at.getEnums()
                oEn = collections.OrderedDict(sorted(en.items(), key=lambda t: t[1]))
                enStr = ":".join([n for n in oEn])
                pm.addAttr(targetNode, ln=attr, at="enum", en=enStr, dv=value, k=True)
            newAtt = pm.PyNode(".".join([targetNode.name(), attrName]))
        for cnx in outcnx:
            pm.connectAttr(newAtt, cnx, f=True)

        if sourceNode.name() != targetNode.name():
            pm.deleteAttr(at)

    else:
        pm.displayWarning("MoveChannel function can't handle an attribute of type: %s. Only supported 'double' adn 'enum' types."%atType)


def lockAttribute(node, attributes=["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz", "v"]):
    """
    Lock attributes of a node. By defaul will lock the rotation, scale and translation.

    Args:
        node(dagNode): The node with the attributes to lock.
        attributes (list of str): The list of the attributes to lock.

    Example:
        >>> att.lockAttribute(self.root_ctl, ["sx", "sy", "sz", "v"])
    """
    if not isinstance(attributes, list):
        attributes = [attributes]

    for attr_name in attributes:
        node.setAttr(attr_name, lock=True, keyable=False)


def setKeyableAttributes(nodes, params=["tx", "ty", "tz", "ro", "rx", "ry", "rz", "sx", "sy", "sz"]):
    """
    Set keyable attributes of a node. By defaul will set keyable the rotation, scale and translation.

    Args:
        node(dagNode): The node with the attributes to set keyable.
        attributes (list of str): The list of the attributes to set keyable. Attrs not in the list will be locked
            if None, ["tx", "ty", "tz", "rorder", "rx", "ry", "rz", "sx", "sy", "sz"] is used

    """

    localParams = ["tx", "ty", "tz", "ro", "rx", "ry", "rz", "sx", "sy", "sz", "v"]

    if not isinstance(nodes, list):
        nodes = [nodes]

    for attr_name in params:
        for node in nodes:
            node.setAttr(attr_name, lock=False, keyable=True)

    for attr_name in localParams:
        if attr_name not in params:
            for node in nodes:
                node.setAttr(attr_name, lock=True, keyable=False)


def setNotKeyableAttributes(nodes, attributes=["tx", "ty", "tz", "ro", "rx", "ry", "rz", "sx", "sy", "sz", "v"]):
    """
    Set not keyable attributes of a node. By defaul will set not keyable the rotation, scale and translation.

    Args:
        node(dagNode): The node with the attributes to set keyable.
        attributes (list of str): The list of the attributes to set not keyable.
    """

    if not isinstance(nodes, list):
        nodes = [nodes]

    for attr_name in attributes:
        for node in nodes:
            node.setAttr(attr_name, lock=False, keyable=False, cb=True)



def setRotOrder(node, s="XYZ"):
    """
    Set the rotorder of the object.

    Args:
        node (dagNode): The object to set the rot order on.
        s (str): Value of the rotorder. Possible values : ("XYZ", "XZY", "YXZ", "YZX", "ZXY", "ZYX")
    """

    a = ["XYZ", "YZX", "ZXY", "XZY", "YXZ", "ZYX"]

    if s not in a:
        mgear.log("Invalid Rotorder : "+s, mgear.siError)
        return False

    # Unless Softimage there is no event on the rotorder parameter to automatically adapt the angle values
    # So let's do it manually using the EulerRotation class

    er = dt.EulerRotation([pm.getAttr(node+".rx"),pm.getAttr(node+".ry"),pm.getAttr(node+".rz")], unit="degrees")
    er.reorderIt(s)

    node.setAttr("ro", a.index(s))
    node.setAttr("rotate", er.x, er.y, er.z)


# ========================================================
## Set invert mirror pose values
# @param node X3DObject - The object to set invert mirror Values
# @param params List of String - The  parameter to invert in a mirror pose\n
# @return
def setInvertMirror(node, invList=None):
    """
    Set invert mirror pose values

    Args:
        node (dagNode): The object to set invert mirror Values

    """

    aDic = {"tx":"invTx", "ty":"invTy", "tz":"invTz", "rx":"invRx", "ry":"invRy", "rz":"invRz", "sx":"invSx", "sy":"invSy", "sz":"invSz"}

    for axis in invList:
        if axis not in aDic:
            mgear.log("Invalid Invert Axis : "+axis, mgear.siError)
            return False

        node.setAttr(aDic[axis], True)

########################################################
# FCurve attribute (just a animCurveUU node connected to an attribute)
#######################################################
# =====================================================
## FCurve(animCurveUU) attribute
# @param node X3DObject - The object to add the new fcurve attribute
# @param name String - The  attribute name
# @return Fcurve and attribute name
def addFCurve( node, name="fcurve", keys=[]):
    """
    FCurve attribute (just a animCurveUU node connected to an attribute)

    Warning:
        This Method is deprecated.

    Args:
        node (dagNode): The object to add the new fcurve attribute
        name (str): The attribute name
        key (list): list of keyframes and values

    Returns:
        Fcurve and attribute name

    """

    attr_name = addAttribute(node, name, "double", 0)
    attrDummy_name = addAttribute(node, name + "_dummy", "double", 0)


    for key in keys:
        # we use setDrivenKeyframe, because is the only workaround that I found to create an animCurveUU with keyframes
        # fCurve = pm.PyNode(pm.createNode("animCurveUU"))
        pm.setDrivenKeyframe(attr_name, cd= attrDummy_name, dv=key[0], v=key[1], itt=key[2], ott=key[2])

    #clean dummy attr
    pm.deleteAttr(attrDummy_name)

    fCurve = pm.PyNode(attr_name).listConnections(type="animCurveUU")[0]

    return fCurve, attr_name

##########################################################
# PARAMETER DEFINITION
##########################################################
# ========================================================
class ParamDef(object):
    """
    ParamDef (read as Parameter Definition) encapsulate the attribute creation arguments in a handy object.
    Also include a creation method.

    Example:
        This can be use later to create attr or export the description to xml or json file

     Args:
        scriptName (str): Attribute fullName
        paranDef (dic): The stored param definition

    """
    def __init__(self, scriptName):

        self.scriptName = scriptName
        self.value = None
        self.valueType = None

    def create(self, node):
        """
        Add a parameter to property using the parameter definition.

        Args:
            node (dagNode): The node to add the attribute
        """
        attr_name = addAttribute(node, self.scriptName, self.valueType, self.value, self.niceName, self.shortName, self.minimum, self.maximum, self.keyable, self.readable, self.storable, self.writable)

        return node, attr_name


class ParamDef2(ParamDef):
    """
    ParamDef2 inherit from ParamDef

    Args:
        scriptName (str): Parameter scriptname.
        valueType (str): The Attribute Type. Exp: 'string', 'bool', 'long', etc..
        value (float or int): Default parameter value.
        niceName (str): Parameter niceName.
        shortName (str): Parameter shortName.
        minimum (float or int): mininum value.
        maximum (float or int): maximum value.
        keyable (boo): If true is keyable
        readable (boo): If true is readable
        storable (boo): If true is storable
        writable (boo): If true is writable

    Returns:
        ParamDef: The stored parameter definition.

    """
    def __init__(self, scriptName, valueType, value, niceName=None, shortName=None, minimum=None, maximum=None, keyable=True, readable=True, storable=True, writable=True):

        self.scriptName = scriptName
        self.niceName = niceName
        self.shortName = shortName
        self.valueType = valueType
        self.value = value
        self.minimum = minimum
        self.maximum = maximum
        self.keyable = keyable
        self.readable = readable
        self.storable = storable
        self.writable = writable


class FCurveParamDef(ParamDef):
    """
    Create an Fcurve parameter definition.

    Args:
        scriptName (str): Attribute fullName.
        keys (list): The keyframes to define the function curve.
        interpolation (int): the curve interpolation.
        extrapolation (int): the curve extrapolation.

    """
    def __init__(self, scriptName, keys=None, interpolation=0, extrapolation=0):

        self.scriptName = scriptName
        self.keys = keys
        self.interpolation = interpolation
        self.extrapolation = extrapolation
        self.value = None
        self.valueType = None

    def create(self, node):
        """
        Add a parameter to property using the parameter definition.

        Args:
            node (dagNode): The node to add the attribute
        """

        attr_name = addAttribute(node, self.scriptName, "double", 0)
        attrDummy_name = addAttribute(node, self.scriptName + "_dummy", "double", 0)

        for key in self.keys:
            pm.setDrivenKeyframe(attr_name, cd= attrDummy_name, dv=key[0], v=key[1])

        #clean dummy attr
        pm.deleteAttr(attrDummy_name)

        return node, attr_name


class colorParamDef(ParamDef):
    """
    Create a Color parameter definition.

    Args:
        scriptName (str): Attribute fullName
        value (list of float): The default value in a list for RGB. exp [1.0, 0.99, 0.13].
    """
    def __init__(self, scriptName, value=False):

        self.scriptName = scriptName
        self.value = value

    def create(self, node):
        """
        Add a parameter to property using the parameter definition.

        Args:
            node (dagNode): The node to add the attribute
        """
        attr_name = addColorAttribute(node, self.scriptName, value=self.value)

        return node, attr_name


class enumParamDef(ParamDef):
    """
    Create an enumarator parameter definition.

    Args:
        scriptName (str): Attribute fullName
        enum (list of str): The list of elements in the enumerate control.
        value (int): The default value.

    """
    def __init__(self, scriptName, enum, value=False ):

        self.scriptName = scriptName
        self.value = value
        self.enum = enum
        self.valueType = None

    def create(self, node):
        """
        Add a parameter to property using the parameter definition.

        Args:
            node (dagNode): The node to add the attribute

        """
        attr_name = addEnumAttribute(node, self.scriptName, enum=self.enum, value=self.value)

        return node, attr_name


##########################################################
# GETTERS
##########################################################
# ========================================================

def getSelectedChannels(userDefine=False):
    """Get the selected channels on the channel box

    Args:
        userDefine (bool, optional): If True, will return only the user defined channels. Other channels will be skipped.

    Returns:
        list: The list of selected channels names
    """
    channelBox = pm.mel.eval('global string $gChannelBoxName; $temp=$gChannelBoxName;') #fetch maya's main channelbox
    attrs = pm.channelBox(channelBox, q=True, sma=True)
    if userDefine:
        oSel = pm.selected()[0]
        uda = oSel.listAttr(ud=True)
        if attrs:
            attrs = [x for x in attrs if oSel.attr(x)  in uda]
        else:
            return None

    return attrs

def getSelectedObjectChannels(oSel=None, userDefine=False, animatable=False):
    """Get the selected object channels.

    Args:
        oSel (None, optional): The  pynode with channels to get
        userDefine (bool, optional): If True, will return only the user defined channels. Other channels will be skipped.
        animatable (bool, optional): If True, only animatable parameters will be return

    Returns:
        list: The list of the selected object channels names
    """
    if not oSel:
        oSel = pm.selected()[0]

    channels = [x.name().rsplit(".", 1)[1] for x in oSel.listAttr(ud=userDefine, k=animatable)]

    return channels
