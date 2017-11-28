from functools import partial
import re
import traceback

from pymel import versions
import pymel.core as pm

import mgear

from mgear.maya import pyqt, dag, transform, utils
from mgear.vendor.Qt import QtCore, QtWidgets


SYNOPTIC_WIDGET_NAME = "synoptic_view"
CTRL_GRP_SUFFIX = "_controllers_grp"
PLOT_GRP_SUFFIX = "_PLOT_grp"


EXPR_LEFT_SIDE = re.compile("L(\d+)")
EXPR_RIGHT_SIDE = re.compile("R(\d+)")


##################################################
# util
def isSideElement(name):
    """Returns is name(str) side element?

    Arguments:
        name (str): Description

    Returns:
        bool

    Deleted Parameters:
        node: str
    """

    nameParts = stripNamespace(name).split("|")[-1]

    for part in nameParts.split("_"):
        if EXPR_LEFT_SIDE.match(part) or EXPR_RIGHT_SIDE.match(part):
            return True
    else:
        return False


def swapSideLabel(name):
    """Returns fliped name

    Returns fliped name that replaced side label left to right or
    right to left

    Arguments:
        name(str): Name to swap the side

    Returns:
        str
    """

    for part in name.split("_"):
        if EXPR_LEFT_SIDE.match(part):
            return EXPR_LEFT_SIDE.sub(r"R\1", name)
        if EXPR_RIGHT_SIDE.match(part):
            return EXPR_RIGHT_SIDE.sub(r"L\1", name)

    else:
        return name


##################################################
#
##################################################

def getSynopticWidget(widget, max_iter=20):
    """Return the widget where the synoptic panel is attach

    Arguments:
        widget (QWidget): The widget to get the parent
        max_iter (int, optional): Iteration limit to find the paretn widget

    Returns:
        widget: The Parent widget
    """
    parent = widget.parentWidget()
    for i in range(max_iter):
        if parent.objectName() == SYNOPTIC_WIDGET_NAME:
            return parent
        parent = parent.parentWidget()

    return False


def getModel(widget):
    """Get the model Name

    Args:
        widget (QWidget): Synoptic widget

    Returns:
        PyNode: The rig model name
    """
    syn_widget = getSynopticWidget(widget, max_iter=20)
    model_name = syn_widget.model_list.currentText()

    if not pm.ls(model_name):
        return None

    try:
        model = pm.PyNode(model_name)

    except pm.general.MayaNodeError:
        mes = traceback.format_exc()
        mes = "Can't find model {0} for widget: {1}\n{2}".format(
            model_name, widget, mes)
        mgear.log(mes, mgear.sev_error)
        return None

    return model


def getControlers(model, gSuffix=CTRL_GRP_SUFFIX):
    """Get thr controlers from the set

    Args:
        model (PyNode): Rig root
        gSuffix (str, optional): set suffix

    Returns:
        list: The members of the group
    """
    try:
        ctl_set = pm.PyNode(model.name() + gSuffix)
        members = ctl_set.members()

        return members
    except TypeError:
        return None


def getNamespace(modelName):
    """Get the name space from rig root

    Args:
        modelName (str): Rig top node name

    Returns:
        str: Namespace
    """
    if not modelName:
        return ""

    if len(modelName.split(":")) >= 2:
        nameSpace = ":".join(modelName.split(":")[:-1])
    else:
        nameSpace = ""

    return nameSpace


def stripNamespace(nodeName):
    """Strip all the namespaces from a given name

    Args:
        nodeName (str): Node name to strip the namespaces

    Returns:
        str: Node name without namespace
    """
    return nodeName.split(":")[-1]


def getNode(nodeName):
    """Get a PyNode from the string name


    Args:
        nodeName (str): Node name

    Returns:
        PyNode or None: The node. or None if the object can't be found
    """
    try:
        return pm.PyNode(nodeName)

    except pm.MayaNodeError:
        return None


def listAttrForMirror(node):
    """List attributes to invert the value for mirror posing

    Args:
        node (PyNode): The Node with the attributes to invert

    Returns:
        list: Attributes to invert
    """
    # TODO: should "ro" be here?
    res = ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]
    res.extend(pm.listAttr(node, userDefined=True, shortNames=True))
    res = list(filter(lambda x: not x.startswith("inv"), res))

    return res


def getInvertCheckButtonAttrName(str):
    """Get the invert check butto attribute name

    Args:
        str (str): The attribute name

    Returns:
        str: The checked attribute name
    """
    # type: (str) -> str
    return "inv{0}".format(str.lower().capitalize())


##################################################
# SELECT
##################################################
# ================================================
def selectObj(model, object_names, mouse_button, key_modifier):
    """Select an object

    Args:
        model (PyNode): The rig top node
        object_names (list): The names of the objects to select
        mouse_button (QtSignal): Clicked mouse button signal
        key_modifier (QtSignal): Modifier button signal

    Returns:
        None
    """
    if not model:
        return

    nameSpace = getNamespace(model)

    with pm.UndoChunk():
        nodes = []
        for name in object_names:
            if nameSpace:
                node = getNode(nameSpace + ":" + name)
            else:
                node = getNode(name)

            if not node:
                continue

            if not node and nameSpace:
                mgear.log("Can't find object : %s:%s" % (nameSpace, name),
                          mgear.sev_error)
            elif not node:
                mgear.log("Can't find object : %s" % (name), mgear.sev_error)
            nodes.append(node)

        if not nodes:
            return
        if mouse_button == QtCore.Qt.RightButton:
            mirrorPose(False, nodes)
            return
        if mouse_button == QtCore.Qt.MiddleButton:
            mirrorPose(True, nodes)
            return
        # Key pressed
        if key_modifier is None:
            pm.select(nodes)
        elif key_modifier == QtCore.Qt.NoModifier:  # No Key
            pm.select(nodes)
        elif key_modifier == QtCore.Qt.ControlModifier:  # ctrl
            pm.select(nodes, deselect=True)
        elif key_modifier == QtCore.Qt.ShiftModifier:  # shift
            pm.select(nodes, toggle=True)
        elif int(key_modifier) == (QtCore.Qt.ControlModifier
                                   | QtCore.Qt.ShiftModifier):  # ctrl + shift
            pm.select(nodes, add=True)
        elif key_modifier == QtCore.Qt.AltModifier:  # alt
            pm.select(nodes)
        elif int(key_modifier) == (QtCore.Qt.ControlModifier
                                   | QtCore.Qt.AltModifier):  # ctrl + alt
            pm.select(nodes, deselect=True)
        elif int(key_modifier) == (QtCore.Qt.ShiftModifier
                                   | QtCore.Qt.AltModifier):  # shift + alt
            pm.select(nodes, toggle=True)

            # Ctrl + alt + shift
        elif int(key_modifier) == (QtCore.Qt.ControlModifier
                                   | QtCore.Qt.AltModifier
                                   | QtCore.Qt.ShiftModifier):
            pm.select(nodes, add=True)
        else:
            pm.select(nodes)

# ================================================


def quickSel(model, channel, mouse_button):
    """Select the object stored on the quick selection attributes

    Args:
        model (PyNode): The rig top node
        channel (str): The quick selection channel name
        mouse_button (QtSignal): Clicked mouse button

    Returns:
        None
    """
    qs_attr = model.attr("quicksel%s" % channel)

    if mouse_button == QtCore.Qt.LeftButton:  # Call Selection
        names = qs_attr.get().split(",")
        if not names:
            return
        pm.select(clear=True)
        for name in names:
            ctl = dag.findChild(model, name)
            if ctl:
                ctl.select(add=True)
    elif mouse_button == QtCore.Qt.MidButton:  # Save Selection
        names = [sel.name().split("|")[-1]
                 for sel in pm.ls(selection=True)
                 if sel.name().endswith("_ctl")]

        qs_attr.set(",".join(names))

    elif mouse_button == QtCore.Qt.RightButton:  # Key Selection
        names = qs_attr.get().split(",")
        if not names:
            return
        else:
            keyObj(model, names)

# ================================================


def selAll(model):
    """Select all controlers

    Args:
        model (PyNode): Rig top node
    """
    controlers = getControlers(model)
    pm.select(controlers)

# ================================================


def selGroup(model, groupSuffix):
    """Select the members of a given set

    Args:
        model (PyNode): Rig top node
        groupSuffix (str): Set suffix name
    """
    controlers = getControlers(model, groupSuffix)
    pm.select(controlers)


##################################################
# KEY
##################################################
# ================================================
def keySel():
    """Key selected controls"""

    pm.setKeyframe()

# ================================================


def keyObj(model, object_names):
    """Set the keyframe in the controls pass by a list in obj_names variable

    Args:
        model (Str): Name of the namespace that will define de the model
        object_names (Str): names of the controls, without the name space

    Returns:
        None
    """
    with pm.UndoChunk():
        nodes = []
        nameSpace = getNamespace(model)
        for name in object_names:
            if nameSpace:
                node = getNode(nameSpace + ":" + name)
            else:
                node = getNode(name)

            if not node:
                continue

            if not node and nameSpace:
                mgear.log("Can't find object : %s:%s" % (nameSpace, name),
                          mgear.sev_error)
            elif not node:
                mgear.log("Can't find object : %s" % (name), mgear.sev_error)
            nodes.append(node)

        if not nodes:
            return

        pm.setKeyframe(*nodes)

# ================================================


def keyAll(model):
    """Keyframe all the controls inside the controls group

    Note: We use the workd "group" to refer to a set in Maya

    Args:
        model (PyNode): Rig top node
    """
    controlers = getControlers(model)
    pm.setKeyframe(controlers)

# ================================================


def keyGroup(model, groupSuffix):
    """Keyframe all the members of a given group

    Args:
        model (PyNode): Rig top node
        groupSuffix (str): The group preffix
    """
    controlers = getControlers(model, groupSuffix)
    pm.setKeyframe(controlers)

# ================================================


def toggleAttr(model, object_name, attr_name):
    """Toggle a boolean attribute

    Args:
        model (PyNode): Rig top node
        object_name (str): The name of the control containing the attribute to
            toggle
        attr_name (str): The attribute to toggle
    """
    nameSpace = getNamespace(model)
    if nameSpace:
        node = dag.findChild(nameSpace + ":" + object_name)
    else:
        node = dag.findChild(model, object_name)

    oAttr = node.attr(attr_name)
    if oAttr.type() in ["float", "bool"]:
        oVal = oAttr.get()
        if oVal == 1:
            oAttr.set(0)
        else:
            oAttr.set(1)


##################################################
# Combo Box
##################################################
# ================================================
def getComboKeys(model, object_name, combo_attr):
    """Get the keys from a combo attribute

    Args:
        model (PyNode): Rig top node
        object_name (str): Control name
        combo_attr (str): Combo attribute name

    Returns:
        list: Keys names from the combo attribute.
    """
    nameSpace = getNamespace(model)
    if nameSpace:
        node = getNode(nameSpace + ":" + object_name)
    else:
        node = getNode(object_name)

    oAttr = node.attr(combo_attr)
    keys = oAttr.getEnums().keys()
    keys.append("++ Space Transfer ++")
    return keys


def getComboIndex(model, object_name, combo_attr):
    """Get the index from a  combo attribute

    Args:
        model (PyNode): Rig top node
        object_name (str): Control name
        combo_attr (str): Combo attribute name

    Returns:
        int: Current index in the combo attribute
    """
    nameSpace = getNamespace(model)
    if nameSpace:
        node = getNode(nameSpace + ":" + object_name)
    else:
        node = getNode(object_name)

    oVal = node.attr(combo_attr).get()
    return oVal


def changeSpace(model, object_name, combo_attr, cnsIndex, ctl_name):
    """Change the space of a control

    i.e: A control with ik reference array

    Args:
        model (PyNode): Rig top node
        object_name (str): Object Name
        combo_attr (str): Combo attribute name
        cnsIndex (int): Combo index to change
        ctl_name (str): Control name
    """
    nameSpace = getNamespace(model)
    if nameSpace:
        node = getNode(nameSpace + ":" + object_name)
        ctl = getNode(nameSpace + ":" + ctl_name)
    else:
        node = getNode(object_name)
        ctl = getNode(ctl_name)

    sWM = ctl.getMatrix(worldSpace=True)

    oAttr = node.attr(combo_attr)

    oAttr.set(cnsIndex)
    ctl.setMatrix(sWM, worldSpace=True)


##################################################
# IK FK switch match
##################################################
# ================================================
def ikFkMatch(model, ikfk_attr, uiHost_name, fks, ik, upv, ikRot=None):
    """Switch IK/FK with matching functionality

    This function is meant to work with 2 joint limbs.
    i.e: human legs or arms

    Args:
        model (PyNode): Rig top transform node
        ikfk_attr (str): Blend ik fk attribute name
        uiHost_name (str): Ui host name
        fks ([str]): List of fk controls names
        ik (str): Ik control name
        upv (str): Up vector control name
        ikRot (None, str): optional. Name of the Ik Rotation control
    """
    nameSpace = getNamespace(model)

    def _getNode(name):
        # type: (str) -> pm.nodetypes.Transform
        node = getNode(":".join([nameSpace, name]))

        if not node:
            mgear.log("Can't find object : {0}".format(name), mgear.sev_error)

        return node

    def _getMth(name):
        # type: (str) -> pm.nodetypes.Transform
        tmp = name.split("_")
        tmp[-1] = "mth"
        return _getNode("_".join(tmp))

    fkCtrls = [_getNode(x) for x in fks]
    fkTargets = [_getMth(x) for x in fks]

    ikCtrl = _getNode(ik)
    ikTarget = _getMth(ik)

    upvCtrl = _getNode(upv)
    upvTarget = _getMth(upv)

    if ikRot:
        ikRotNode = _getNode(ikRot)
        ikRotTarget = _getMth(ikRot)

    uiNode = _getNode(uiHost_name)
    oAttr = uiNode.attr(ikfk_attr)
    val = oAttr.get()

    # if is IKw
    if val == 1.0:

        for target, ctl in zip(fkTargets, fkCtrls):
            transform.matchWorldTransform(target, ctl)

        oAttr.set(0.0)

    # if is FK
    elif val == 0.0:

        transform.matchWorldTransform(ikTarget, ikCtrl)
        if ikRot:
            transform.matchWorldTransform(ikRotTarget, ikRotNode)

        transform.matchWorldTransform(upvTarget, upvCtrl)
        oAttr.set(1.0)

        roll_att = uiNode.attr(ikfk_attr.replace("blend", "roll"))
        roll_att.set(0.0)

##################################################
# POSE
##################################################


def mirrorPose(flip=False, nodes=None):
    """Summary

    Args:
        flip (bool, optiona): Set the function behaviout to flip
        nodes (None,  [PyNode]): Controls to mirro/flip the pose
    """
    if nodes is None:
        nodes = pm.selected()

    pm.undoInfo(ock=1)
    try:
        nameSpace = False
        if nodes:
            nameSpace = getNamespace(nodes[0])

        mirrorEntries = []
        for oSel in nodes:
            mirrorEntries.extend(gatherMirrorData(nameSpace, oSel, flip))

        for dat in mirrorEntries:
            applyMirror(nameSpace, dat)

    except Exception as e:
        pm.displayWarning("Flip/Mirror pose fail")
        import traceback
        traceback.print_exc()
        print e

    finally:
        pm.undoInfo(cck=1)


def applyMirror(nameSpace, mirrorEntry):
    """Apply mirro pose

    Args:
        nameSpace (str): Namespace
        mirrorEntry (list): List witht the mirror entry template
    """
    node = mirrorEntry["target"]
    attr = mirrorEntry["attr"]
    val = mirrorEntry["val"]

    try:
        if (
            pm.attributeQuery(attr, node=node, shortName=True, exists=True) and
            not node.attr(attr).isLocked()
        ):
            node.attr(attr).set(val)

    except RuntimeError as e:
        mgear.log("applyMirror failed: {0} {1}: {2}".format(node.name(),
                                                            attr,
                                                            e),
                  mgear.sev_error)


def gatherMirrorData(nameSpace, node, flip):
    """Get the data to mirror

    Args:
        nameSpace (str): Namespace
        node (PyNode): No
        flip (TYPE): flip option

    Returns:
        [dict[str]: The mirror data
    """
    if isSideElement(node.name()):

        nameParts = stripNamespace(node.name()).split("|")[-1]
        nameParts = swapSideLabel(nameParts)
        nameTarget = ":".join([nameSpace, nameParts])

        oTarget = getNode(nameTarget)

        return calculateMirrorData(node, oTarget, flip=flip)

    else:
        return calculateMirrorData(node, node, flip=False)


def calculateMirrorData(srcNode, targetNode, flip=False):
    """Calculate the mirror data

    Args:
        srcNode (str): The source Node
        targetNode ([dict[str]]): Target node
        flip (bool, optional): flip option

    Returns:
        [{"target": node, "attr": at, "val": flipVal}]
    """

    results = []

    # mirror attribute of source
    for attrName in listAttrForMirror(srcNode):

        # whether does attribute "invTx" exists when attrName is "tx"
        invCheckName = getInvertCheckButtonAttrName(attrName)
        if not pm.attributeQuery(invCheckName,
                                 node=srcNode,
                                 shortName=True,
                                 exists=True):

            # if not exists, straight
            inv = 1

        else:
            # if exists, check its value
            invAttr = srcNode.attr(invCheckName)
            if invAttr.get():
                inv = -1
            else:
                inv = 1

        # if attr name is side specified, record inverted attr name
        if isSideElement(attrName):
            invAttrName = swapSideLabel(attrName)
        else:
            invAttrName = attrName

        # if flip enabled record self also
        if flip:
            flipVal = targetNode.attr(attrName).get()
            results.append({"target": srcNode,
                            "attr": invAttrName,
                            "val": flipVal * inv})

        results.append({"target": targetNode,
                        "attr": invAttrName,
                        "val": srcNode.attr(attrName).get() * inv})

    return results


def mirrorPoseOld(flip=False, nodes=False):
    """Deprecated: Mirror pose

    Args:
        flip (bool, optional): if True will flip the pose
        nodes (bool, optional): Nodes to mirror or flip transformation
    """
    axis = ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]
    aDic = {"tx": "invTx",
            "ty": "invTy",
            "tz": "invTz",
            "rx": "invRx",
            "ry": "invRy",
            "rz": "invRz",
            "sx": "invSx",
            "sy": "invSy",
            "sz": "invSz"}

    mapDic = {"L": "R", "R": "L"}
    if not nodes:
        nodes = pm.selected()
    pm.undoInfo(ock=1)
    try:
        nameSpace = False
        if nodes:
            if len(nodes[0].split(":")) == 2:
                nameSpace = nodes[0].split(":")[0]
        for oSel in nodes:
            if nameSpace:
                nameParts = oSel.name().split(":")[1].split("|")[-1].split("_")
            else:
                nameParts = oSel.name().split("|")[-1].split("_")

            if nameParts[1][0] == "C":
                if not oSel.attr("tx").isLocked():
                    oSel.attr("tx").set(oSel.attr("tx").get() * -1)
                if not oSel.attr("ry").isLocked():
                    oSel.attr("ry").set(oSel.attr("ry").get() * -1)
                if not oSel.attr("rz").isLocked():
                    oSel.attr("rz").set(oSel.attr("rz").get() * -1)
            else:
                nameParts[1] = mapDic[nameParts[1][0]] + nameParts[1][1:]
                if nameSpace:
                    nameTarget = nameSpace + ":" + "_".join(nameParts)
                else:
                    nameTarget = "_".join(nameParts)
                oTarget = getNode(nameTarget)
                for a in axis:
                    if not oSel.attr(a).isLocked():
                        if oSel.attr(aDic[a]).get():
                            inv = -1
                        else:
                            inv = 1
                        if flip:
                            flipVal = oTarget.attr(a).get()

                        oTarget.attr(a).set(oSel.attr(a).get() * inv)

                        if flip:
                            oSel.attr(a).set(flipVal * inv)
    except Exception:
        pm.displayWarning("Flip/Mirror pose fail")
        pass
    finally:
        pm.undoInfo(cck=1)


def bindPose(model):
    """Restore the reset position of the rig

    Args:
        model (TYPE): Description
    """
    nameSpace = getNamespace(model.name())
    if nameSpace:
        dagPoseName = nameSpace + ':dagPose1'
    else:
        dagPoseName = 'dagPose1'
    pm.dagPose(dagPoseName, restore=True)


def resetSelTrans():
    """Reset the transfom values (SRT) for the selected objects"""
    with pm.UndoChunk():
        for obj in pm.selected():
            transform.resetTransform(obj)


##################################################
# Transfer space
##################################################
class AbstractAnimationTransfer(QtWidgets.QDialog):
    """Abstract animation transfer class"""

    try:
        valueChanged = QtCore.Signal(int)
    except Exception:
        valueChanged = pyqt.pyqtSignal()

    def __init__(self):
        # type: () -> None

        self.comboObj = None               # type: widgets.toggleCombo
        self.comboItems = []               # type: list[str]
        self.model = None                  # type: pm.nodetypes.Transform
        self.uihost = None                 # type: str
        self.switchedAttrShortName = None  # type: str

    def createUI(self, parent=None):
        # type: (QtWidgets.QObject) -> None

        super(AbstractAnimationTransfer, self).__init__(parent)

        self.setWindowTitle("Space Transfer")
        self.setWindowFlags(QtCore.Qt.Tool)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, 1)

        self.create_controls()
        self.create_layout()
        self.create_connections()

    def create_controls(self):
        # type: () -> None

        self.groupBox = QtWidgets.QGroupBox()

        # must be implemented in each specialized classes
        self.setGroupBoxTitle()

        self.onlyKeyframes_check = QtWidgets.QCheckBox('Only Keyframe Frames')
        self.onlyKeyframes_check.setChecked(True)
        self.startFrame_label = QtWidgets.QLabel("Start")
        self.startFrame_value = QtWidgets.QSpinBox()
        self.startFrame_value = QtWidgets.QSpinBox()
        self.startFrame_value.setMinimum(-999999)
        self.startFrame_value.setMaximum(999999)
        self.endFrame_label = QtWidgets.QLabel("End")
        self.endFrame_value = QtWidgets.QSpinBox()
        self.endFrame_value.setMinimum(-999999)
        self.endFrame_value.setMaximum(999999)
        self.populateRange(True)
        self.allFrames_button = QtWidgets.QPushButton("All Frames")
        self.timeSliderFrames_button = QtWidgets.QPushButton(
            "Time Slider Frames")

        self.comboBoxSpaces = QtWidgets.QComboBox()
        self.comboBoxSpaces.addItems(self.comboItems)
        if self.comboObj is not None:
            self.comboBoxSpaces.setCurrentIndex(self.comboObj.currentIndex())

        self.spaceTransfer_button = QtWidgets.QPushButton("Space Transfer")

    def create_layout(self):
        # type: () -> None

        frames_layout = QtWidgets.QHBoxLayout()
        frames_layout.setContentsMargins(1, 1, 1, 1)
        frames_layout.addWidget(self.startFrame_label)
        frames_layout.addWidget(self.startFrame_value)
        frames_layout.addWidget(self.endFrame_label)
        frames_layout.addWidget(self.endFrame_value)

        framesSetter_layout = QtWidgets.QHBoxLayout()
        framesSetter_layout.setContentsMargins(1, 1, 1, 1)
        framesSetter_layout.addWidget(self.allFrames_button)
        framesSetter_layout.addWidget(self.timeSliderFrames_button)

        paremeter_layout = QtWidgets.QVBoxLayout(self.groupBox)
        paremeter_layout.setContentsMargins(6, 5, 6, 5)
        paremeter_layout.addWidget(self.onlyKeyframes_check)
        paremeter_layout.addLayout(frames_layout)
        paremeter_layout.addLayout(framesSetter_layout)
        paremeter_layout.addWidget(self.comboBoxSpaces)
        paremeter_layout.addWidget(self.spaceTransfer_button)

        spaceTransfer_layout = QtWidgets.QVBoxLayout()
        spaceTransfer_layout.addWidget(self.groupBox)

        self.setLayout(spaceTransfer_layout)

    def create_connections(self):
        # type: () -> None

        self.spaceTransfer_button.clicked.connect(self.doItByUI)
        self.allFrames_button.clicked.connect(
            partial(self.populateRange, False))
        self.timeSliderFrames_button.clicked.connect(
            partial(self.populateRange, True))

    # SLOTS ##########################################################

    def populateRange(self, timeSlider=False):
        # type: (bool) -> None
        if timeSlider:
            start = pm.playbackOptions(q=True, min=True)
            end = pm.playbackOptions(q=True, max=True)
        else:
            start = pm.playbackOptions(q=True, ast=True)
            end = pm.playbackOptions(q=True, aet=True)
        self.startFrame_value.setValue(start)
        self.endFrame_value.setValue(end)

    def setComboBoxItemsFormComboObj(self, combo):
        # type: (widegts.toggleCombo) -> None

        del self.comboItems[:]
        for i in range(combo.count() - 1):
            self.comboItems.append(combo.itemText(i))

    def setComboBoxItemsFormList(self, comboList):
        # type: (list[str]) -> None

        del self.comboItems[:]
        for i in range(len(comboList)):
            self.comboItems.append(comboList[i])

    # ----------------------------------------------------------------

    def setGroupBoxTitle(self):
        # type: (str) -> None
        # raise NotImplementedError("must implement transfer
        # in each specialized class")
        pass

    def setComboObj(self, combo):
        # type: (widgets.toggleCombo) -> None
        self.comboObj = combo

    def setModel(self, model):
        # type: (pm.nodetypes.Transform) -> None
        self.model = model
        self.nameSpace = getNamespace(self.model)

    def setUiHost(self, uihost):
        # type: (str) -> None
        self.uihost = uihost

    def setSwitchedAttrShortName(self, attr):
        # type: (str) -> None
        self.switchedAttrShortName = attr

    def getHostName(self):
        # type: () -> str
        return ":".join([self.nameSpace, self.uihost])

    def getWorldMatrices(self, start, end, val_src_nodes):
        # type: (int, int, List[pm.nodetypes.Transform]) ->
        # List[List[pm.datatypes.Matrix]]
        """ returns matrice List[frame][controller number]."""

        res = []
        for x in range(start, end + 1):
            tmp = []
            for n in val_src_nodes:
                tmp.append(pm.getAttr(n + '.worldMatrix', time=x))

            res.append(tmp)

        return res

    def transfer(self, startFrame, endFrame, onlyKeyframes, *args, **kwargs):
        # type: (int, int, bool, *str, **str) -> None
        raise NotImplementedError("must be implemented in each "
                                  "specialized class")

    def doItByUI(self):
        # type: () -> None

        # gather settings from UI
        startFrame = self.startFrame_value.value()
        endFrame = self.endFrame_value.value()
        onlyKeyframes = self.onlyKeyframes_check.isChecked()

        # main body
        self.transfer(startFrame, endFrame, onlyKeyframes)

        # set the new space value in the synoptic combobox
        if self.comboObj is not None:
            self.comboObj.setCurrentIndex(self.comboBoxSpaces.currentIndex())

        for c in pyqt.maya_main_window().children():
            if isinstance(c, AbstractAnimationTransfer):
                c.deleteLater()

    @utils.one_undo
    @utils.viewport_off
    def bakeAnimation(self,
                      switch_attr_name,
                      val_src_nodes,
                      key_src_nodes,
                      key_dst_nodes,
                      startFrame,
                      endFrame,
                      onlyKeyframes=True):
        # type: (str, List[pm.nodetypes.Transform],
        # List[pm.nodetypes.Transform],
        # List[pm.nodetypes.Transform], int, int, bool) -> None

        # Temporaly turn off cycle check to avoid misleading cycle message
        # on Maya 2016.  With Maya 2016.5 and 2017 the cycle warning doesn't
        # show up
        if versions.current() < 201650:
            pm.cycleCheck(e=False)
            pm.displayWarning("Maya version older than: 2016.5: "
                              "CycleCheck temporal turn OFF")

        channels = ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]
        worldMatrixList = self.getWorldMatrices(startFrame,
                                                endFrame,
                                                val_src_nodes)

        keyframeList = sorted(set(pm.keyframe(key_src_nodes,
                                              at=["t", "r", "s"],
                                              q=True)))

        # delete animation in the space switch channel and destination ctrls
        pm.cutKey(key_dst_nodes, at=channels, time=(startFrame, endFrame))
        pm.cutKey(switch_attr_name, time=(startFrame, endFrame))

        for i, x in enumerate(range(startFrame, endFrame + 1)):

            if onlyKeyframes and x not in keyframeList:
                continue

            pm.currentTime(x)

            # set the new space in the channel
            self.changeAttrToBoundValue()

            # bake the stored transforms to the cotrols
            for j, n in enumerate(key_dst_nodes):
                n.setMatrix(worldMatrixList[i][j], worldSpace=True)

            pm.setKeyframe(key_dst_nodes, at=channels)

        if versions.current() < 201650:
            pm.cycleCheck(e=True)
            pm.displayWarning("CycleCheck turned back ON")

# ================================================
# Transfer space


class ParentSpaceTransfer(AbstractAnimationTransfer):

    def __init__(self):
        # type: () -> None
        super(ParentSpaceTransfer, self).__init__()

    # ----------------------------------------------------------------

    def setCtrls(self, srcName):
        # type: (str) -> None
        self.ctrlNode = getNode(":".join([self.nameSpace, srcName]))

    def getChangeAttrName(self):
        # type: () -> str
        return "{}.{}".format(self.getHostName(), self.switchedAttrShortName)

    def changeAttrToBoundValue(self):
        # type: () -> None
        pm.setAttr(self.getChangeAttrName(), self.getValue())

    def getValue(self):
        # type: () -> int
        return self.comboBoxSpaces.currentIndex()

    def setGroupBoxTitle(self):
        if hasattr(self, "groupBox"):
            # TODO: extract logic with naming convention
            part = "_".join(
                self.ctrlNode.name().split(":")[-1].split("_")[:-1])
            self.groupBox.setTitle(part)

    def transfer(self, startFrame, endFrame, onlyKeyframes, *args, **kwargs):
        # type: (int, int, bool, *str, **str) -> None

        val_src_nodes = [self.ctrlNode]
        key_src_nodes = val_src_nodes
        key_dst_nodes = val_src_nodes

        self.bakeAnimation(self.getChangeAttrName(),
                           val_src_nodes,
                           key_src_nodes,
                           key_dst_nodes,
                           startFrame,
                           endFrame,
                           onlyKeyframes)

    @staticmethod
    def showUI(combo, model, uihost, switchedAttrShortName, ctrl_name, *args):
        # type: (widgets.toggleCombo,
        # pm.nodetypes.Transform, str, str, str, *str) -> None

        try:
            for c in pyqt.maya_main_window().children():
                if isinstance(c, ParentSpaceTransfer):
                    c.deleteLater()

        except RuntimeError:
            pass

        # Create minimal UI object
        ui = ParentSpaceTransfer()
        ui.setComboObj(combo)
        ui.setModel(model)
        ui.setUiHost(uihost)
        ui.setSwitchedAttrShortName(switchedAttrShortName)
        ui.setCtrls(ctrl_name)
        ui.setComboBoxItemsFormComboObj(ui.comboObj)

        # Delete the UI if errors occur to avoid causing winEvent
        # and event errors (in Maya 2014)
        try:
            ui.createUI(pyqt.maya_main_window())
            ui.show()

        except Exception as e:
            ui.deleteLater()
            traceback.print_exc()
            mgear.log(e, mgear.sev_error)


class IkFkTransfer(AbstractAnimationTransfer):

    def __init__(self):
        # type: () -> None
        super(IkFkTransfer, self).__init__()
        self.getValue = self.getValueFromUI

    # ----------------------------------------------------------------

    def getChangeAttrName(self):
        # type: () -> str
        return "{}.{}".format(self.getHostName(), self.switchedAttrShortName)

    def getChangeRollAttrName(self):
        # type: () -> str
        return "{}.{}".format(
            self.getHostName(),
            self.switchedAttrShortName.replace("blend", "roll"))

    def changeAttrToBoundValue(self):
        # type: () -> None
        pm.setAttr(self.getChangeAttrName(), self.getValue())

    def getValueFromUI(self):
        # type: () -> float
        if self.comboBoxSpaces.currentIndex() == 0:
            # IK
            return 1.0
        else:
            # FK
            return 0.0

    def _getNode(self, name):
        # type: (str) -> pm.nodetypes.Transform
        node = getNode(":".join([self.nameSpace, name]))

        if not node:
            mgear.log("Can't find object : {0}".format(name), mgear.sev_error)

        return node

    def _getMth(self, name):
        # type: (str) -> pm.nodetypes.Transform

        tmp = name.split("_")
        tmp[-1] = "mth"
        return self._getNode("_".join(tmp))

    def setCtrls(self, fks, ik, upv, ikRot):
        # type: (list[str], str, str) -> None
        """gather maya PyNode represented each controllers"""

        self.fkCtrls = [self._getNode(x) for x in fks]
        self.fkTargets = [self._getMth(x) for x in fks]

        self.ikCtrl = self._getNode(ik)
        self.ikTarget = self._getMth(ik)

        self.upvCtrl = self._getNode(upv)
        self.upvTarget = self._getMth(upv)

        if ikRot:
            self.ikRotCtl = self._getNode(ikRot)
            self.ikRotTarget = self._getMth(ikRot)
            self.hasIkRot = True
        else:
            self.hasIkRot = False

    def setGroupBoxTitle(self):
        if hasattr(self, "groupBox"):
            # TODO: extract logic with naming convention
            part = "_".join(self.ikCtrl.name().split(":")[-1].split("_")[:-2])
            self.groupBox.setTitle(part)

    # ----------------------------------------------------------------

    def transfer(self,
                 startFrame,
                 endFrame,
                 onlyKeyframes,
                 ikRot,
                 switchTo=None,
                 *args,
                 **kargs):
        # type: (int, int, bool, str, *str, **str) -> None

        if switchTo is not None:
            if "fk" in switchTo.lower():

                val_src_nodes = self.fkTargets
                key_src_nodes = [self.ikCtrl, self.upvCtrl]
                key_dst_nodes = self.fkCtrls
                if ikRot:
                    key_src_nodes.append(self.ikRotCtl)

            else:

                val_src_nodes = [self.ikTarget, self.upvTarget]
                key_src_nodes = self.fkCtrls
                key_dst_nodes = [self.ikCtrl, self.upvCtrl]
                if ikRot:
                    val_src_nodes.append(self.ikRotTarget)
                    key_dst_nodes.append(self.ikRotCtl)

                # reset roll channel:
                roll_att = self.getChangeRollAttrName()
                pm.cutKey(roll_att, time=(startFrame, endFrame), cl=True)
                pm.setAttr(roll_att, 0)

        else:
            if self.comboBoxSpaces.currentIndex() != 0:  # to FK

                val_src_nodes = self.fkTargets
                key_src_nodes = [self.ikCtrl, self.upvCtrl]
                key_dst_nodes = self.fkCtrls
                if ikRot:
                    key_src_nodes.append(self.ikRotCtl)

            else:  # to IK

                val_src_nodes = [self.ikTarget, self.upvTarget]
                key_src_nodes = self.fkCtrls
                key_dst_nodes = [self.ikCtrl, self.upvCtrl]
                if ikRot:
                    val_src_nodes.append(self.ikRotTarget)
                    key_dst_nodes.append(self.ikRotCtl)

                # reset roll channel:
                roll_att = self.getChangeRollAttrName()
                pm.cutKey(roll_att, time=(startFrame, endFrame))
                pm.setAttr(roll_att, 0)

        self.bakeAnimation(self.getChangeAttrName(),
                           val_src_nodes,
                           key_src_nodes,
                           key_dst_nodes,
                           startFrame,
                           endFrame,
                           onlyKeyframes)

    # ----------------------------------------------------------------
    # re implement doItbyUI to have access to self.hasIKrot option
    def doItByUI(self):
        # type: () -> None

        # gather settings from UI
        startFrame = self.startFrame_value.value()
        endFrame = self.endFrame_value.value()
        onlyKeyframes = self.onlyKeyframes_check.isChecked()

        # main body
        self.transfer(startFrame, endFrame, onlyKeyframes, self.hasIkRot)

        # set the new space value in the synoptic combobox
        if self.comboObj is not None:
            self.comboObj.setCurrentIndex(self.comboBoxSpaces.currentIndex())

        for c in pyqt.maya_main_window().children():
            if isinstance(c, AbstractAnimationTransfer):
                c.deleteLater()
    # ----------------------------------------------------------------

    @staticmethod
    def showUI(model, ikfk_attr, uihost, fks, ik, upv, ikRot, *args):
        # type: (pm.nodetypes.Transform, str, str,
        # List[str], str, str, *str) -> None

        try:
            for c in pyqt.maya_main_window().children():
                if isinstance(c, IkFkTransfer):
                    c.deleteLater()

        except RuntimeError:
            pass

        # Create minimal UI object
        ui = IkFkTransfer()
        ui.setModel(model)
        ui.setUiHost(uihost)
        ui.setSwitchedAttrShortName(ikfk_attr)
        ui.setCtrls(fks, ik, upv, ikRot)
        ui.setComboObj(None)
        ui.setComboBoxItemsFormList(["IK", "FK"])

        # Delete the UI if errors occur to avoid causing winEvent
        # and event errors (in Maya 2014)
        try:
            ui.createUI(pyqt.maya_main_window())
            ui.show()

        except Exception as e:
            ui.deleteLater()
            traceback.print_exc()
            mgear.log(e, mgear.sev_error)

    @staticmethod
    def execute(model,
                ikfk_attr,
                uihost,
                fks,
                ik,
                upv,
                ikRot=None,
                startFrame=None,
                endFrame=None,
                onlyKeyframes=None,
                switchTo=None):
        # type: (pm.nodetypes.Transform, str, str,
        # List[str], str, str, int, int, bool, str) -> None
        """transfer without displaying UI"""

        if startFrame is None:
            startFrame = int(pm.playbackOptions(q=True, ast=True))

        if endFrame is None:
            endFrame = int(pm.playbackOptions(q=True, aet=True))

        if onlyKeyframes is None:
            onlyKeyframes = True

        if switchTo is None:
            switchTo = "fk"

        # Create minimal UI object
        ui = IkFkTransfer()

        ui.setComboObj(None)
        ui.setModel(model)
        ui.setUiHost(uihost)
        ui.setSwitchedAttrShortName(ikfk_attr)
        ui.setCtrls(fks, ik, upv, ikRot)
        ui.setComboBoxItemsFormList(["IK", "FK"])
        ui.getValue = lambda: 0.0 if "fk" in switchTo.lower() else 1.0
        ui.transfer(startFrame, endFrame, onlyKeyframes, ikRot, switchTo="fk")

    @staticmethod
    def toIK(model, ikfk_attr, uihost, fks, ik, upv, ikRot, **kwargs):
        # type: (pm.nodetypes.Transform, str, str,
        # List[str], str, str, **str) -> None

        kwargs.update({"switchTo": "ik"})
        IkFkTransfer.execute(model,
                             ikfk_attr,
                             uihost,
                             fks,
                             ik,
                             upv,
                             ikRot,
                             **kwargs)

    @staticmethod
    def toFK(model, ikfk_attr, uihost, fks, ik, upv, ikRot, **kwargs):
        # type: (pm.nodetypes.Transform, str, str,
        # List[str], str, str, **str) -> None

        kwargs.update({"switchTo": "fk"})
        IkFkTransfer.execute(model,
                             ikfk_attr,
                             uihost,
                             fks,
                             ik,
                             upv,
                             ikRot,
                             **kwargs)


# Baker Springs

def clearSprings(model):
    springNodes = getControlers(model, gSuffix=PLOT_GRP_SUFFIX)
    pm.cutKey(springNodes, cl=True)


@utils.one_undo
@utils.viewport_off
def bakeSprings(model):
    springNodes = getControlers(model, gSuffix=PLOT_GRP_SUFFIX)
    if springNodes:
        pm.cutKey(springNodes, cl=True)
        start = pm.playbackOptions(q=True, min=True)
        end = pm.playbackOptions(q=True, max=True)
        pm.bakeResults(springNodes, t=(start, end), simulation=True)
