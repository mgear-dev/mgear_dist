"""
CUSTOM_STEPS_DIR = os.environ.get('MGEAR_SHIFTER_CUSTOMSTEP_PATH', None)
os.sys.path.append(CUSTOM_STEPS_DIR)
from _library import weightNode_io

# Find all the weight Nodes
weightDrivers = pm.ls(type="weightDriver")

# any filePath
testPath = r"C:\Users\rafael\Documents\maya\scripts\testWeightNodes.json"

# Export listed weightDrivers
weightNode_io.exportWeightNodes(testPath, weightDrivers)

# import all weight drivers from filePath
weightNode_io.importWeightNodes(testPath)


Attributes:
    WNODE_DRIVERPOSE_ATTRS (TYPE): Description
    WNODE_SHAPE_ATTRS (TYPE): Description
    WNODE_TRANSFORM_ATTRS (TYPE): Description
"""


import copy
import pprint

import maya.cmds as mc
import pymel.core as pm

import rbf_io
import rbf_node
# reload(rbf_io)
# reload(rbf_node)

# ==============================================================================
# Constants
# ==============================================================================

CTL_SUFFIX = rbf_node.CTL_SUFFIX
DRIVEN_SUFFIX = rbf_node.DRIVEN_SUFFIX

WNODE_DRIVERPOSE_ATTRS = {"poseMatrix": "matrix",
                          "poseParentMatrix": "matrix",
                          "poseMode": "enum",
                          "controlPoseAttributes": "stringArray",
                          "controlPoseValues": "doubleArray",
                          "controlPoseRotateOrder": "enum"}

WNODE_TRANSFORM_ATTRS = ["tx",
                         "ty",
                         "tz",
                         "rx",
                         "ry",
                         "rz",
                         "sx",
                         "sy",
                         "sz",
                         "v"]

WNODE_SHAPE_ATTRS = ['visibility',
                     # 'instObjGroups',
                     'type',
                     'direction',
                     'invert',
                     'useRotate',
                     'angle',
                     'centerAngle',
                     'twist',
                     'twistAngle',
                     'useTranslate',
                     'grow',
                     'translateMin',
                     'translateMax',
                     'interpolation',
                     'iconSize',
                     # 'blendCurve',
                     # 'blendCurve.blendCurve_Position',
                     # 'blendCurve.blendCurve_FloatValue',
                     # 'blendCurve.blendCurve_Interp',
                     'drawCone',
                     'drawCenterCone',
                     'drawWeight',
                     'outWeight',
                     # 'readerMatrix',
                     # 'driverMatrix',
                     # 'input',
                     # 'restInput',
                     # 'poses',
                     # 'poses.poseInput',
                     # 'poses.poseValue',
                     # 'output',
                     'twistAxis',
                     'opposite',
                     'rbfMode',
                     'useInterpolation',
                     'allowNegativeWeights',
                     'scale',
                     'distanceType',
                     'drawOrigin',
                     'drawDriver',
                     'drawPoses',
                     'drawIndices',
                     'drawTwist',
                     'poseLength',
                     'indexDistance',
                     'driverIndex']

ENVELOPE_ATTR = "scale"

WD_SUFFIX = "_WD"
RBF_TYPE = "weightDriver"
# ==============================================================================
# General utils
# ==============================================================================


# Check for plugin
def loadWeightPlugin(dependentFunc):
    pm.loadPlugin("weightDriver.mll", qt=True)
    return dependentFunc


def createRBF(name, transformName=None):
    if transformName is None:
        transformName = "{}_trfm".format(name)
    wd_ShapeNode = pm.createNode(RBF_TYPE, n=name)
    wd_transform = pm.listRelatives(wd_ShapeNode, p=True)[0]
    wd_transform = pm.rename(wd_transform, transformName)
    pm.setAttr("{}.type".format(wd_ShapeNode), 1)
    return wd_transform, wd_ShapeNode


def forceEvaluation(node):
    pm.setAttr("{}.evaluate".format(node), 1)


def getNodeConnections(node):
    connections = []
    attributesToRecreate = []
    nodePlugConnections = pm.listConnections(node,
                                             plugs=True,
                                             scn=True,
                                             connections=True,
                                             sourceFirst=True)

    for connectPair in nodePlugConnections:
        srcPlug = connectPair[0].name()
        srcAttrName = connectPair[0].attrName(longName=True)
        destPlug = connectPair[1].name()
        destAttrName = connectPair[1].attrName(longName=True)
        connections.append([srcPlug, destPlug])
        if srcAttrName in ["solverGroupMessage"]:
            attributesToRecreate.append([srcPlug, "message"])
        if destAttrName in ["solverGroupMessage"]:
            attributesToRecreate.append([destPlug, "message"])
    return connections, attributesToRecreate


def getRBFTransformInfo(node):
    tmp_dict = {}
    parentName = None
    nodeTransform = pm.listRelatives(node, p=True)[0]
    tmp_dict["name"] = nodeTransform.name()
    transformPar = pm.listRelatives(nodeTransform, p=True) or [None]
    if transformPar[0] is not None:
        parentName = transformPar[0].name()
    tmp_dict["parent"] = parentName
    for attr in WNODE_TRANSFORM_ATTRS:
        tmp_dict[attr] = nodeTransform.getAttr(attr)
    return tmp_dict


def getIndexValue(nodePlug, indices):
    allValues = []
    if indices:
        indices = range(indices[-1] + 1)
    for index in indices:
        attrPlugIdex = "{}[{}]".format(nodePlug, index)
        val = mc.getAttr(attrPlugIdex)
        allValues.append(val)
    return allValues


def lengthenCompoundAttrs(node):
    poseLen = mc.getAttr("{}.poses".format(node), mi=True)
    if poseLen is None:
        return
    attrSize = mc.getAttr("{}.input".format(node), s=True)
    valSize = mc.getAttr("{}.output".format(node), s=True)
    for poseIndex in poseLen:
        for index in range(attrSize):
            nodeInput = "{}.poses[{}].poseInput[{}]".format(node,
                                                            poseIndex,
                                                            index)
            mc.getAttr(nodeInput)

    for poseIndex in poseLen:
        for index in range(valSize):
            nodeValue = "{}.poses[{}].poseValue[{}]".format(node,
                                                            poseIndex,
                                                            index)
            mc.getAttr(nodeValue)


def getPoseInfo(node):
    lengthenCompoundAttrs(node)
    tmp_dict = {"poseInput": [],
                "poseValue": []}
    numberOfPoses = pm.getAttr("{}.poses".format(node), mi=True) or []
    for index in numberOfPoses:
        nameAttrInput = "{0}.poses[{1}].poseInput".format(node, index)
        nameAttrValue = "{0}.poses[{1}].poseValue".format(node, index)
        poseInputIndex = pm.getAttr(nameAttrInput, mi=True) or []
        poseValueIndex = pm.getAttr(nameAttrValue, mi=True) or []
        poseInput = getIndexValue(nameAttrInput, poseInputIndex)
        poseValue = getIndexValue(nameAttrValue, poseValueIndex)
        tmp_dict["poseInput"].append(poseInput)
        tmp_dict["poseValue"].append(poseValue)

    return tmp_dict


def getDriverListInfo(node):
    driver_dict = {}
    numberOfDrivers = pm.getAttr("{}.driverList".format(node), mi=True) or []
    for dIndex in numberOfDrivers:
        nameAttrDriver = "{0}.driverList[{1}].pose".format(node, dIndex)
        numberOfPoses = pm.getAttr(nameAttrDriver, mi=True) or []
        poseInfo = {}
        for pIndex in numberOfPoses:
            attrDriverPose = "{}[{}]".format(nameAttrDriver, pIndex)
            poseIndex = "pose[{}]".format(pIndex)
            # tmp_dict = {key: pm.getAttr("{}.{}".format(attrDriverPose, key))
            #             for key in WNODE_DRIVERPOSE_ATTRS.keys()}
            tmp_dict = {}
            for key in WNODE_DRIVERPOSE_ATTRS.keys():
                attrValue = pm.getAttr("{}.{}".format(attrDriverPose, key))
                if type(attrValue) == pm.dt.Matrix:
                    attrValue = attrValue.get()
                tmp_dict[key] = attrValue
            poseInfo[poseIndex] = tmp_dict
        driver_dict["driverList[{}]".format(dIndex)] = poseInfo
    return driver_dict


def setDriverNode(node, driverNode, driverAttrs):
    for index, dAttr in enumerate(driverAttrs):
        driverPlug = "{}.{}".format(driverNode, dAttr)
        nodePlug = "{}.input[{}]".format(node, index)
        mc.connectAttr(driverPlug, nodePlug, f=True)


def getDriverNode(node):
    drivers = list(set(pm.listConnections("{}.input".format(node),
                                          scn=True)))
    if node in drivers:
        drivers.remove(node)
    drivers = [str(dNode.name()) for dNode in drivers]
    return drivers


def setDrivenNode(node, drivenNode, drivenAttrs):
    for index, dAttr in enumerate(drivenAttrs):
        nodePlug = "{}.output[{}]".format(node, index)
        drivenPlug = "{}.{}".format(drivenNode, dAttr)
        mc.connectAttr(nodePlug, drivenPlug, f=True)


def getDrivenNode(node):
    driven = list(set(pm.listConnections("{}.output".format(node),
                                         scn=True)))
    if node in driven:
        driven.remove(node)
    driven = [str(dNode.name()) for dNode in driven]
    return driven


def getAttrInOrder(node, attrWithIndex):
    attrsToReturn = []
    attrs = mc.getAttr("{}.{}".format(node, attrWithIndex), mi=True) or []
    for index in attrs:
        nodePlug = "{}.{}[{}]".format(node, attrWithIndex, index)
        connected = pm.listConnections(nodePlug, scn=True, p=True)
        if not connected:
            continue
            connected = [None]
        attrsToReturn.append(connected[0])
    return attrsToReturn


def getDriverNodeAttributes(node):
    attributesToReturn = []
    driveAttrs = getAttrInOrder(node, "input")
    attributesToReturn = [attr.attrName(longName=True) for attr in driveAttrs
                          if attr.nodeName() != node]
    return attributesToReturn


def getDrivenNodeAttributes(node):
    attributesToReturn = []
    drivenAttrs = getAttrInOrder(node, "output")
    attributesToReturn = [attr.attrName(longName=True) for attr in drivenAttrs
                          if attr.nodeName() != node]
    return attributesToReturn


def copyPoses(nodeA, nodeB, emptyPoseValues=True):
    posesIndices = pm.getAttr("{}.poses".format(nodeA), mi=True) or [0]
    if len(posesIndices) == 1 and posesIndices[0] == 0:
        return
    nodeA_poseInfo = getPoseInfo(nodeA)
    drivenAttrs = getDrivenNodeAttributes(nodeB)
    nodeBdrivenIndex = range(len(drivenAttrs))
    for attr, value in nodeA_poseInfo.iteritems():
        if value == ():
            continue
        numberOfPoses = len(value)
        for poseIndex in range(numberOfPoses):
            poseValues = value[poseIndex]
            for index, pIndexValue in enumerate(poseValues):
                pathToAttr = "{}.poses[{}].{}[{}]".format(nodeB,
                                                          poseIndex,
                                                          attr,
                                                          index)
                if attr == "poseInput":
                    valueToSet = pIndexValue
                elif attr == "poseValue" and emptyPoseValues:
                    valueToSet = 0.0
                if index > nodeBdrivenIndex:
                    continue
                pm.setAttr(pathToAttr, valueToSet)


def getNodeInfo(node):
    node = pm.PyNode(node)
    weightNodeInfo_dict = {}
    for attr in WNODE_SHAPE_ATTRS:
        weightNodeInfo_dict[attr] = node.getAttr(attr)
    weightNodeInfo_dict["transformNode"] = getRBFTransformInfo(node)
    connections, attributesToRecreate = getNodeConnections(node)
    weightNodeInfo_dict["connections"] = connections
    weightNodeInfo_dict["attributesToRecreate"] = attributesToRecreate
    weightNodeInfo_dict["poses"] = getPoseInfo(node)
    # is an attribute on the weightedDriver node
    weightNodeInfo_dict["driverList"] = getDriverListInfo(node)
    # actual source node that is driving the poses on node
    weightNodeInfo_dict["driverNode"] = getDriverNode(node)
    # attr on driver node pushing the poses
    weightNodeInfo_dict["driverAttrs"] = getDriverNodeAttributes(node)
    # node being driven by the setup
    weightNodeInfo_dict["drivenNode"] = getDrivenNode(node)
    # node.attrs being driven by the setup
    weightNodeInfo_dict["drivenAttrs"] = getDrivenNodeAttributes(node)
    driverContol = rbf_node.getDriverControlAttr(node.name())
    weightNodeInfo_dict["driverControl"] = driverContol
    weightNodeInfo_dict["setupName"] = rbf_node.getSetupName(node.name())
    drivenControlName = rbf_node.getConnectedRBFToggleNode(node.name(),
                                                           ENVELOPE_ATTR)
    weightNodeInfo_dict["drivenControlName"] = drivenControlName
    weightNodeInfo_dict["rbfType"] = RBF_TYPE
    return weightNodeInfo_dict


def setTransformNode(transformNode, transformInfo):
    parent = transformInfo.pop("parent", None)
    if parent is not None:
        pm.parent(transformNode, parent)
    for attr, value in transformInfo.iteritems():
        transformNode.setAttr(attr, value)


def deletePose(node, indexToPop):
    node = pm.PyNode(node)
    posesInfo = getPoseInfo(node)
    poseInput = posesInfo["poseInput"]
    poseValue = posesInfo["poseValue"]
    currentLength = range(len(poseInput))
    poseInput.pop(indexToPop)
    poseValue.pop(indexToPop)
    setPosesFromInfo(node, posesInfo)
    attrPlug = "{}.poses[{}]".format(node, currentLength[-1])
    pm.removeMultiInstance(attrPlug, b=True)


def addPose(node, poseInput, poseValue, posesIndex=None):
    if posesIndex is None:
        posesIndex = len(pm.getAttr("{}.poses".format(node), mi=True) or [])
        # if posesIndex != 0:
        #     posesIndex = posesIndex + 1

    for index, value in enumerate(poseInput):
        attrPlug = "{}.poses[{}].poseInput[{}]".format(node, posesIndex, index)
        pm.setAttr(attrPlug, value)

    for index, value in enumerate(poseValue):
        attrPlug = "{}.poses[{}].poseValue[{}]".format(node, posesIndex, index)
        pm.setAttr(attrPlug, value)


def setPosesFromInfo(node, posesInfo):
    for attr, value in posesInfo.iteritems():
        if value == ():
            continue
        numberOfPoses = len(value)
        for poseIndex in range(numberOfPoses):
            poseValues = value[poseIndex]
            for index, pIndexValue in enumerate(poseValues):
                pathToAttr = "poses[{}].{}[{}]".format(poseIndex,
                                                       attr,
                                                       index)
                node.setAttr(pathToAttr, pIndexValue)


def setDriverListFromInfo(node, driverListInfo):
    for attr, posesInfo in driverListInfo.iteritems():
        # attrDriver = "{}.pose".format(attr)
        numberOfPoses = len(posesInfo.keys())
        for pIndex in range(numberOfPoses):
            poseIndex = "pose[{}]".format(pIndex)
            poseAttrIndex = "{}.{}".format(attr, poseIndex)
            for driverAttr, attrType in WNODE_DRIVERPOSE_ATTRS.iteritems():
                fullPathToAttr = "{}.{}".format(poseAttrIndex, driverAttr)
                attrValue = posesInfo[poseIndex][driverAttr]
                if attrType == "enum":
                    node.setAttr(fullPathToAttr, attrValue)
                elif attrType == "matrix":
                    attrValue = pm.dt.Matrix(attrValue)
                    node.setAttr(fullPathToAttr, attrValue, type=attrType)
                else:
                    node.setAttr(fullPathToAttr, attrValue, type=attrType)


def setWeightNodeAttributes(node, weightNodeAttrInfo):
    failedAttrSets = []
    for attr, value in weightNodeAttrInfo.iteritems():
        try:
            node.setAttr(attr, value)
        except Exception as e:
            failedAttrSets.append([attr, value, e])
    if failedAttrSets:
        pprint.pprint(failedAttrSets)


def createVectorDriver(driverInfo):
    # future vector driver support starts here
    pass


def recreateAttributes(node, attributesToRecreate):
    for attrInfo in attributesToRecreate:
        attrPlug = attrInfo[0]
        attrType = attrInfo[1]
        attrName = attrPlug.split(".")[1]
        if pm.objExists(attrPlug):
            continue
        pm.addAttr(node, ln=attrName, at=attrType)


def recreateConnections(connectionsInfo):
    failedConnections = []
    for attrPair in connectionsInfo:
        try:
            pm.connectAttr(attrPair[0], attrPair[1], f=True)
        except Exception as e:
            failedConnections.append([attrPair, e])
    if failedConnections:
        print "The Following Connections failed..."
        pprint.pprint(failedConnections)


@loadWeightPlugin
def crateRBFFromInfo(weightNodeInfo_dict):
    createdNodes = []
    weightNodeInfo_dict = copy.deepcopy(weightNodeInfo_dict)
    for weightNodeName, weightInfo in weightNodeInfo_dict.iteritems():
        rbfType = weightInfo.pop("rbfType", RBF_TYPE)
        connectionsInfo = weightInfo.pop("connections", {})
        posesInfo = weightInfo.pop("poses", {})
        transformNodeInfo = weightInfo.pop("transformNode", {})
        driverListInfo = weightInfo.pop("driverList", {})
        attributesToRecreate = weightInfo.pop("attributesToRecreate", [])
        # hook for future support of vector
        driverInfo = weightInfo.pop("vectorDriver", {})
        driverNodeName = weightInfo.pop("driverNode", {})
        driverNodeAttributes = weightInfo.pop("driverAttrs", {})
        drivenNodeName = weightInfo.pop("drivenNode", {})
        drivenNodeAttributes = weightInfo.pop("drivenAttrs", {})
        transformName = transformNodeInfo.pop("name", None)
        setupName = weightInfo.pop("setupName", "")
        drivenControlName = weightInfo.pop("drivenControlName", "")
        driverControl = weightInfo.pop("driverControl", "")
        transformNode, node = createRBF(weightNodeName,
                                        transformName=transformName)
        rbf_node.setSetupName(node.name(), setupName)
        if drivenNodeName and drivenNodeName[0].endswith(DRIVEN_SUFFIX):
            rbf_node.addDrivenGroup(drivenControlName)
        rbf_node.createRBFToggleAttr(drivenControlName)
        rbf_node.setDriverControlAttr(node.name(), driverControl)
        setTransformNode(transformNode, transformNodeInfo)
        setWeightNodeAttributes(node, weightInfo)
        recreateAttributes(node, attributesToRecreate)
        setPosesFromInfo(node, posesInfo)
        setDriverListFromInfo(node, driverListInfo)
        createVectorDriver(driverInfo)
        recreateConnections(connectionsInfo)
        createdNodes.append(node.name())
    return createdNodes


def getNodesInfo(weightDriverNodes):
    weightNodeInfo_dict = {}
    for wdNode in weightDriverNodes:
        wdNode = pm.PyNode(wdNode)
        weightNodeInfo_dict[wdNode.name()] = getNodeInfo(wdNode)
    return weightNodeInfo_dict


def exportWeightNodes(filePath, weightDriverNodes):
    weightNodeInfo_dict = getNodesInfo(weightDriverNodes)
    rbf_io._exportData(weightNodeInfo_dict, filePath)
    print "Weight Driver Nodes successfully exported: {}".format(filePath)


def importWeightNodes(filePath):
    weightNodeInfo_dict = rbf_io._importData(filePath)
    crateRBFFromInfo(weightNodeInfo_dict)


class RBFNode(rbf_node.RBFNode):
    """docstring for RBFNode"""

    def __init__(self, name):
        self.rbfType = RBF_TYPE
        super(RBFNode, self).__init__(name)

    def nodeType_suffix(self):
        return WD_SUFFIX

    def create(self):
        name = self.formatName()
        transformNode, node = createRBF(name)
        self.transformNode = transformNode.name()
        self.name = node.name()

    def getPoseInfo(self):
        return getPoseInfo(self.name)

    def getNodeInfo(self):
        return getNodeInfo(pm.PyNode(self.name))

    def lengthenCompoundAttrs(self):
        lengthenCompoundAttrs(self.name)

    def addPose(self, poseInput, poseValue, posesIndex=None):
        addPose(self.name,
                poseInput,
                poseValue,
                posesIndex=posesIndex)

    def deletePose(self, indexToPop):
        deletePose(self.name, indexToPop)

    def getDriverNode(self):
        return getDriverNode(self.name)

    def getDriverNodeAttributes(self):
        return getDriverNodeAttributes(self.name)

    def getDrivenNode(self):
        return getDrivenNode(self.name)

    def getDrivenNodeAttributes(self):
        return getDrivenNodeAttributes(self.name)

    def getTransformParent(self):
        return getRBFTransformInfo(self)["name"]

    def setDriverNode(self, driverNode, driverAttrs):
        setDriverNode(self.name, driverNode, driverAttrs)

    def setDrivenNode(self, drivenNode, drivenAttrs, parent=True):
        setDrivenNode(self.name, drivenNode, drivenAttrs)
        if parent:
            mc.parent(self.transformNode, drivenNode)
        if drivenNode.endswith(DRIVEN_SUFFIX):
            drivenControlName = drivenNode.replace(DRIVEN_SUFFIX, CTL_SUFFIX)
            if not mc.objExists(drivenControlName):
                return
            rbf_node.createRBFToggleAttr(drivenControlName)
            rbf_node.connectRBFToggleAttr(drivenControlName,
                                          self.name,
                                          self.getRBFToggleAttr())

    def copyPoses(self, nodeB):
        copyPoses(self.name, nodeB)

    def recallDriverPose(self, poseIndex):
        driverControl = self.getDriverControlAttr()
        driverAttrs = self.getDriverNodeAttributes()
        poseInfo = self.getPoseInfo()
        poseInput = poseInfo["poseInput"][poseIndex]
        for index, pValue in enumerate(poseInput):
            attrPlug = "{}.{}".format(driverControl, driverAttrs[index])
            try:
                mc.setAttr(attrPlug, pValue)
            except Exception:
                pass

    def forceEvaluation(self):
        forceEvaluation(self.transformNode)

    def getRBFToggleAttr(self):
        return ENVELOPE_ATTR
