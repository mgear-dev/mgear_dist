
import math

import maya.cmds as mc
import pymel.core as pm
import maya.OpenMaya as OpenMaya

from mgear.maya import transform

DRIVEN_SUFFIX = "_driven"
CTL_SUFFIX = "_ctl"


RBF_SETUP_ATTR = "rbf_setup_name"

TRANSLATE_ATTRS = ["translateX",
                   "translateY",
                   "translateZ"]

ROTATE_ATTRS = ["rotateX",
                "rotateY",
                "rotateZ"]

SCALE_ATTRS = ["scaleX",
               "scaleY",
               "scaleZ"]

SUPPORTED_RBF_NODES = ("weightDriver",)

GENERIC_SUFFIX = "_RBF"

DRIVER_CTL_ATTR_NAME = "driverControlName"
DRIVER_POSES_ATTR = "driverPoses"
DRIVER_POSEINPUT_ATTR = "poseInput"

RBF_SCALE_ATTR = "RBF_Multiplier"


# =============================================================================
# general functions
# =============================================================================
def addDrivenGroup(node):
    parentOfTarget = mc.listRelatives(node, p=True) or None
    if not parentOfTarget:
        return node
    if node.endswith(CTL_SUFFIX):
        drivenName = node.replace(CTL_SUFFIX, DRIVEN_SUFFIX)
    else:
        drivenName = "{}{}".format(DRIVEN_SUFFIX)
    drivenName = mc.group(name=drivenName, p=parentOfTarget[0], em=True)
    mc.parent(node, drivenName)
    return drivenName


def removeDrivenGroup(node):
    parentOfTarget = mc.listRelatives(node, p=True) or None
    childrenNode = mc.listRelatives(node, type="transform")

    for child in childrenNode:
        if parentOfTarget is None:
            mc.parent(child, w=True)
        else:
            mc.parent(child, parentOfTarget[0])
    mc.delete(node)


def decompMatrix(node, matrix):
    '''
    Decomposes a MMatrix in new api. Returns an list of
    translation,rotation,scale in world space.
    '''
    # Rotate order of object
    rotOrder = mc.getAttr("{}.rotateOrder".format(node))

    # Puts matrix into transformation matrix
    mTransformMtx = OpenMaya.MTransformationMatrix(matrix)

    # Translation Values
    trans = mTransformMtx.translation(OpenMaya.MSpace.kObject)

    # Euler rotation value in radians
    eulerRot = mTransformMtx.eulerRotation()

    # Reorder rotation order based on ctrl.
    eulerRot.reorderIt(rotOrder)

    radian = 180.0 / math.pi

    rotations = [rot * radian for rot in [eulerRot.x, eulerRot.y, eulerRot.z]]

    # Find world scale of our object.
    # for scale we need to utilize MScriptUtil to deal with the native
    # double pointers
    scaleUtil = OpenMaya.MScriptUtil()
    scaleUtil.createFromList([0, 0, 0], 3)
    scaleVec = scaleUtil.asDoublePtr()
    mTransformMtx.getScale(scaleVec, OpenMaya.MSpace.kObject)
    scale = [OpenMaya.MScriptUtil.getDoubleArrayItem(scaleVec, i)
             for i in range(0, 3)]

    # Return Values
    return [trans.x, trans.y, trans.z], rotations, scale


def resetDrivenNodes(node):
    children = mc.listRelatives(node, type="transform")
    controlNode = node.replace(DRIVEN_SUFFIX, CTL_SUFFIX)
    if mc.objExists(controlNode) and controlNode in children:
        transform.resetTransform(pm.PyNode(controlNode))
    transform.resetTransform(pm.PyNode(node))


def getDrivenMatrix(node):
    children = mc.listRelatives(node, type="transform")
    node = pm.PyNode(node)
    controlNode = node.replace(DRIVEN_SUFFIX, CTL_SUFFIX)
    if mc.objExists(controlNode) and controlNode in children:
        controlNode = pm.PyNode(controlNode)
        nodeInverParMat = node.getAttr("parentInverseMatrix")
        controlMat = controlNode.getMatrix(worldSpace=True)
        defaultMat = OpenMaya.MMatrix()
        if controlMat == defaultMat:
            totalMatrix = defaultMat
        else:
            totalMatrix = controlMat * nodeInverParMat
    else:
        totalMatrix = node.getMatrix(worldSpace=False)

    return totalMatrix


def createRBFToggleAttr(node):
    try:
        mc.addAttr(node,
                   ln=RBF_SCALE_ATTR,
                   at="float",
                   dv=1,
                   min=0,
                   max=1,
                   k=True)
    except RuntimeError:
        pass


def connectRBFToggleAttr(node, rbfNode, rbfEnableAttr):
    nodeAttr = "{}.{}".format(node, RBF_SCALE_ATTR)
    rbfAttr = "{}.{}".format(rbfNode, rbfEnableAttr)
    mc.connectAttr(nodeAttr, rbfAttr, f=True)


def deleteRBFToggleAttr(node):
    try:
        mc.deleteAttr("{}.{}".format(node, RBF_SCALE_ATTR))
    except ValueError:
        pass


def getConnectedRBFToggleNode(node, toggleAttr):
    rbfAttr = "{}.{}".format(node, toggleAttr)
    driverControl = mc.listConnections(rbfAttr)
    if driverControl:
        return driverControl[0]
    return driverControl


def createDriverControlAttr(node):
    try:
        mc.addAttr(node, ln=DRIVER_CTL_ATTR_NAME, dt="string")
    except RuntimeError:
        pass


def getDriverControlAttr(node):
    try:
        return mc.getAttr("{}.{}".format(node, DRIVER_CTL_ATTR_NAME))
    except ValueError:
        return ""


def setDriverControlAttr(node, controlName):
    if not mc.attributeQuery(DRIVER_CTL_ATTR_NAME, n=node, ex=True):
        createDriverControlAttr(node)
    mc.setAttr("{}.{}".format(node, DRIVER_CTL_ATTR_NAME),
               controlName,
               type="string")


def getSceneRBFNodes():
    return mc.ls(type=SUPPORTED_RBF_NODES) or []


def getSceneSetupNodes():
    nodes = set(mc.ls(type=SUPPORTED_RBF_NODES))
    return [rbf for rbf in nodes if mc.attributeQuery(RBF_SETUP_ATTR,
                                                      n=rbf,
                                                      ex=True)]


def getRbfSceneSetupsInfo(includeEmpty=True):
    setups_dict = {"empty": []}
    for rbfNode in getSceneSetupNodes():
        setupName = mc.getAttr("{}.{}".format(rbfNode, RBF_SETUP_ATTR))
        if setupName == "":
            setups_dict["empty"].append(rbfNode)
            continue
        if setupName in setups_dict:
            setups_dict[setupName].append(rbfNode)
        else:
            setups_dict[setupName] = [rbfNode]
    if not includeEmpty:
        setups_dict.pop("empty")
    return setups_dict


def setSetupName(node, setupName):
    if not mc.attributeQuery(RBF_SETUP_ATTR, n=node, ex=True):
        mc.addAttr(node, ln=RBF_SETUP_ATTR, dt="string")
    mc.setAttr("{}.{}".format(node, RBF_SETUP_ATTR), setupName, type="string")


def getSetupName(node):
    if not mc.attributeQuery(RBF_SETUP_ATTR, n=node, ex=True):
        return None
    return mc.getAttr("{}.{}".format(node, RBF_SETUP_ATTR))


class RBFNode(object):
    """docstring for RBFNode"""

    def __init__(self, name):
        self.name = name
        self.transformNode = None
        if mc.objExists(name) and mc.nodeType(name) in SUPPORTED_RBF_NODES:
            self.rbfType = mc.nodeType(name)
            self.transformNode = self.getTransformParent()
            self.lengthenCompoundAttrs()
        else:
            self.create()
            createDriverControlAttr(self.name)

    def __repr__(self):
        return self.name

    def __unicode__(self):
        return unicode(self.name).encode('utf-8')

    def __str__(self):
        return str(self.name)

    def nodeType_suffix(self):
        self.nodeType_suffix = GENERIC_SUFFIX

    def formatName(self):
        return "{}{}".format(self.name, self.nodeType_suffix())

    def create(self):
        raise NotImplementedError()

    def getPoseInfo(self):
        raise NotImplementedError()

    def getNodeInfo(self):
        raise NotImplementedError()

    def lengthenCompoundAttrs(self):
        pass

    def addPose(self, poseInput, poseValue, posesIndex=None):
        raise NotImplementedError()

    def deletePose(self, indexToPop):
        raise NotImplementedError()

    def getDriverNode(self):
        raise NotImplementedError()

    def getDriverNodeAttributes(self):
        raise NotImplementedError()

    def getDrivenNode(self):
        raise NotImplementedError()

    def getDrivenNodeAttributes(self):
        raise NotImplementedError()

    def getSetupName(self):
        return getSetupName(self.name)

    def setSetupName(self, setupName):
        setSetupName(str(self.name), setupName)

    def setDriverNode(self, driverNode, driverAttrs):
        raise NotImplementedError()

    def setDrivenNode(self, drivenNode, drivenAttrs, parent=True):
        raise NotImplementedError()

    def getTransformParent(self):
        NotImplementedError()

    def copyPoses(self, nodeB):
        NotImplementedError()

    def setDriverControlAttr(self, controlName):
        setDriverControlAttr(self.name, controlName)

    def getDriverControlAttr(self):
        driverControl = getDriverControlAttr(self.name)
        if driverControl == "":
            driverControl = self.getDriverNode()[0]
        return driverControl

    def recallDriverPose(self, poseIndex):
        NotImplementedError()

    def getPoseValues(self, resetDriven=True):
        attributeValue_dict = {}
        drivenNode = self.getDrivenNode()[0]
        drivenAttrs = self.getDrivenNodeAttributes()
        (trans,
         rotate,
         scale) = decompMatrix(drivenNode,
                               getDrivenMatrix(drivenNode))
        for attr in drivenAttrs:
            if attr in TRANSLATE_ATTRS:
                index = TRANSLATE_ATTRS.index(attr)
                attributeValue_dict[attr] = trans[index]
            elif attr in ROTATE_ATTRS:
                index = ROTATE_ATTRS.index(attr)
                attributeValue_dict[attr] = rotate[index]
            elif attr in SCALE_ATTRS:
                index = SCALE_ATTRS.index(attr)
                attributeValue_dict[attr] = scale[index]
            else:
                nodePlug = "{}.{}".format(drivenNode, attr)
                attributeValue_dict[attr] = mc.getAttr(nodePlug)
        if resetDriven:
            resetDrivenNodes(drivenNode)
        poseValues = [attributeValue_dict[attr] for attr in drivenAttrs]
        return poseValues

    def forceEvaluation(self):
        NotImplementedError()

    def getRBFToggleAttr(self):
        NotImplementedError()
        # return "scale"

    def deleteRBFToggleAttr(self):
        driverControl = getConnectedRBFToggleNode(self.name,
                                                  self.getRBFToggleAttr())
        if not driverControl:
            return
        deleteRBFToggleAttr(driverControl)
