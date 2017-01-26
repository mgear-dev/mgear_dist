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

##################################################
# GLOBAL
##################################################



import pymel.core as pm
import maya.mel as mel
import maya.OpenMayaUI as omui
from functools import partial

import mgear
import mgear.maya.dag as dag
import mgear.maya.transform as tra
import traceback


import mgear.maya.pyqt as gqt
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
from maya.app.general.mayaMixin import MayaQDockWidget

QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


SYNOPTIC_WIDGET_NAME = "synoptic_view"
CTRL_GRP_SUFFIX = "_controllers_grp"


##################################################
#
##################################################

def getSynopticWidget(widget, max_iter=20):

    """
    Return the widget where the synoptic panel is attach
    :param widget:
    :param max_iter:
    :return:
    """
    parent = widget.parentWidget()
    for i in range(max_iter):
        if parent.objectName() == SYNOPTIC_WIDGET_NAME:
            return parent
        parent = parent.parentWidget()

    return False

def getModel(widget):

    syn_widget = getSynopticWidget(widget, max_iter=20)
    model_name = syn_widget.model_list.currentText()

    if not pm.ls(model_name):
        return None

    try:
        model = pm.PyNode(model_name)

    except pm.general.MayaNodeError:
        mes = traceback.format_exc()
        mes = "Can't find model {0} for widget: {1}\n{2}".format(model_name, widget, mes)
        mgear.log(mes, mgear.sev_error)
        return None

    return model

def getControlers(model):

    ctl_set = pm.PyNode(model.name()+CTRL_GRP_SUFFIX)
    members = ctl_set.members()

    return members

def getNamespace(modelName):
    if not modelName:
        return ""

    if len(modelName.split(":")) >= 2:
        nameSpace = ":".join(modelName.split(":")[:-1])
    else:
        nameSpace = ""

    return nameSpace

def stripNamespace(nodeName):
    return nodeName.split(":")[-1]

def getNode(nodeName):
    try:
        return pm.PyNode(nodeName)

    except pm.MayaNodeError:
        return None

##################################################
# SELECT
##################################################
# ================================================
def selectObj(model, object_names, mouse_button, key_modifier):

    if not model:
        return

    nameSpace = getNamespace(model)

    with pm.UndoChunk():
        nodes = []
        for name in object_names:
            if  nameSpace:
                node = getNode(nameSpace + ":" + name)
            else:
                node = getNode(name)

            if not node:
                continue

            if not node and nameSpace:
                mgear.log("Can't find object : %s:%s"%( nameSpace, name), mgear.sev_error)
            elif not node:
                mgear.log("Can't find object : %s"%( name), mgear.sev_error)
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
        elif key_modifier == QtCore.Qt.NoModifier:# No Key
            pm.select(nodes)
        elif key_modifier == QtCore.Qt.ControlModifier: # ctrl
            pm.select(nodes, add=True)
        elif key_modifier == QtCore.Qt.ShiftModifier: # shift
            pm.select(nodes, toggle=True)
        elif int(key_modifier) == QtCore.Qt.ControlModifier + QtCore.Qt.ShiftModifier: # ctrl + shift
            pm.select(nodes, deselect=True)
        elif key_modifier == QtCore.Qt.AltModifier: # alt
            pm.select(nodes)
        elif int(key_modifier) == QtCore.Qt.ControlModifier + QtCore.Qt.AltModifier: # ctrl + alt
            pm.select(nodes, add=True)
        elif int(key_modifier) == QtCore.Qt.ShiftModifier + QtCore.Qt.AltModifier: # shift + alt
            pm.select(nodes, toggle=True)
        elif int(key_modifier) == QtCore.Qt.ControlModifier + QtCore.Qt.AltModifier + QtCore.Qt.ShiftModifier: # Ctrl + alt + shift
            pm.select(nodes, deselect=True)
        else:
            pm.select(nodes)

# ================================================
def quickSel(model, channel, mouse_button):

    qs_attr = model.attr("quicksel%s"%channel)

    if mouse_button == QtCore.Qt.LeftButton: # Call Selection
        names = qs_attr.get().split(",")
        if not names:
            return
        pm.select(clear=True)
        for name in names:
            ctl = dag.findChild(model, name)
            if ctl:
                ctl.select(add=True)
    elif mouse_button == QtCore.Qt.MidButton: # Save Selection
        names = [ sel.name().split("|")[-1] for sel in pm.ls(selection=True) if sel.name().endswith("_ctl") ]
        qs_attr.set(",".join(names))

    elif mouse_button == QtCore.Qt.RightButton: # Key Selection
        names = qs_attr.get().split(",")
        if not names:
            return
        else:
            keyObj(model, names)

# ================================================
def selAll(model):

    controlers = getControlers(model)
    pm.select(controlers)

##################################################
# KEY
##################################################
# ================================================
def keySel():
    pm.setKeyframe()

# ================================================
def keyObj(model, object_names):

    """
    Set the keyframe in the controls pass by a list in obj_names variable

    :param model: Name of the namespace that will define de the model
    :param object_names: names of the controls, without the name space
    :return: None
    """
    nodes = []
    for name in object_names:
        nameSpace = getNamespace(model)
        if  nameSpace:
            node = dag.findChild(nameSpace + ":" + name)
        else:
            node = dag.findChild(model, name)

        if not node and nameSpace:
            mgear.log("Can't find object : %s:%s"%( nameSpace, name), mgear.sev_error)
        elif not node:
            mgear.log("Can't find object : %s"%( name), mgear.sev_error)
        nodes.append(node)

    if not nodes:
        return

    pm.setKeyframe(*nodes)

# ================================================
def keyAll(model):

    controlers = getControlers(model)
    pm.setKeyframe(controlers)

# ================================================


def toggleAttr(model, object_name, attr_name):

    nameSpace = getNamespace(model)
    if  nameSpace:
        node = dag.findChild(nameSpace + ":" + object_name)
    else:
        node = dag.findChild(model, object_name)

    oAttr =  node.attr(attr_name)
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

    nameSpace = getNamespace(model)
    if  nameSpace:
        node = getNode(nameSpace + ":" + object_name)
        # node = dag.findRelative(model, model.split(":")[0] + ":" + object_name)
    else:
        node = getNode(object_name)
        # node = dag.findRelative(model, object_name)

    oAttr = node.attr(combo_attr)
    keys = oAttr.getEnums().keys()
    keys.append("++ Space Transfer ++")
    return keys


def getComboIndex(model, object_name, combo_attr):

    nameSpace = getNamespace(model)
    if  nameSpace:
        node = getNode(nameSpace + ":" + object_name)
    else:
        node = getNode(object_name)

    oVal =  node.attr(combo_attr).get()
    return oVal


def changeSpace(model, object_name, combo_attr, cnsIndex, ctl_name):

    nameSpace = getNamespace(model)
    if nameSpace:
        node = getNode(nameSpace + ":" + object_name)
        ctl = getNode(nameSpace + ":" + ctl_name)
    else:
        node = getNode(object_name)
        ctl = getNode(ctl_name)

    sWM = ctl.getMatrix(worldSpace=True)

    oAttr = node.attr(combo_attr)

    oVal = oAttr.set(cnsIndex)
    ctl.setMatrix(sWM, worldSpace=True)


##################################################
# IK FK switch match
##################################################
# ================================================
def ikFkMatch(model, ikfk_attr, uiHost_name, fks, ik, upv, ikRot=None):
    # type: (pm.nodetypes.Transform, str, str, List[str], str, str, str) -> None

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
            tra.matchWorldTransform(target, ctl)

        oAttr.set(0.0)

    # if is FK
    elif val == 0.0:

        tra.matchWorldTransform(ikTarget, ikCtrl)
        if ikRot:
            tra.matchWorldTransform(ikRotTarget, ikRotNode)

        tra.matchWorldTransform(upvTarget, upvCtrl)
        oAttr.set(1.0)

##################################################
# POSE
##################################################
# ================================================
def mirrorPose(flip=False, nodes=False):

    axis = ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]
    aDic = {"tx":"invTx", "ty":"invTy", "tz":"invTz", "rx":"invRx", "ry":"invRy", "rz":"invRz", "sx":"invSx", "sy":"invSy", "sz":"invSz"}
    mapDic = {"L":"R", "R":"L"}
    if not nodes:
        nodes = pm.selected()
    pm.undoInfo(ock=1)
    try:
        nameSpace = False
        if nodes:
            nameSpace = getNamespace(nodes[0])
        for oSel in nodes:
            nameParts = stripNamespace(oSel.name()).split("|")[-1]
                        
            if "_L" in nameParts or "_R" in nameParts:
                if "_L" in nameParts:
                    nameParts = nameParts.replace("_L", "_R")
                else:
                    nameParts = nameParts.replace("_R", "_L")
                
                if nameSpace:
                    nameTarget = nameSpace +":"+ nameParts
                else:
                    nameTarget = nameParts
                oTarget = getNode(nameTarget)
                for a in axis:
                    if not oSel.attr(a).isLocked():
                        if oSel.attr(aDic[a]).get():
                            inv = -1
                        else:
                            inv = 1
                        if flip:
                            flipVal = oTarget.attr(a).get()

                        oTarget.attr(a).set(oSel.attr(a).get()*inv)

                        if flip:
                            oSel.attr(a).set(flipVal*inv)
                #custom attr
                attrs = pm.listAttr(oSel, userDefined=True)
                for at in attrs:
                    tat = at
                    if "_L" in tat:
                        tat = tat.replace("_L", "_R")
                    elif "_R" in tat:
                        tat = tat.replace("_R", "_L")

                    if flip:
                        flipVal = oTarget.attr(tat).get()

                    oTarget.attr(tat).set(oSel.attr(at).get())

                    if flip:
                        oSel.attr(at).set(flipVal)
                            
            else:
                if not oSel.attr("tx").isLocked():
                    oSel.attr("tx").set(oSel.attr("tx").get()*-1)
                if not oSel.attr("ry").isLocked():
                    oSel.attr("ry").set(oSel.attr("ry").get()*-1)
                if not oSel.attr("rz").isLocked():
                    oSel.attr("rz").set(oSel.attr("rz").get()*-1)



    except:
        pm.displayWarning("Flip/Mirror pose fail")
        pass
    finally:
        pm.undoInfo(cck=1)

def mirrorPoseOld(flip=False, nodes=False):

    axis = ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]
    aDic = {"tx":"invTx", "ty":"invTy", "tz":"invTz", "rx":"invRx", "ry":"invRy", "rz":"invRz", "sx":"invSx", "sy":"invSy", "sz":"invSz"}
    mapDic = {"L":"R", "R":"L"}
    if not nodes:
        nodes = pm.selected()
    pm.undoInfo(ock=1)
    try:
        nameSpace = False
        if nodes:
            if  len(nodes[0].split(":")) == 2:
                nameSpace = nodes[0].split(":")[0]
        for oSel in nodes:
            if nameSpace:
                nameParts = oSel.name().split(":")[1].split("|")[-1].split("_")
            else:
                nameParts = oSel.name().split("|")[-1].split("_")

            if nameParts[1][0] == "C":
                if not oSel.attr("tx").isLocked():
                    oSel.attr("tx").set(oSel.attr("tx").get()*-1)
                if not oSel.attr("ry").isLocked():
                    oSel.attr("ry").set(oSel.attr("ry").get()*-1)
                if not oSel.attr("rz").isLocked():
                    oSel.attr("rz").set(oSel.attr("rz").get()*-1)
            else:
                nameParts[1] = mapDic[nameParts[1][0]] + nameParts[1][1:]
                if nameSpace:
                    nameTarget = nameSpace+":"+"_".join(nameParts)
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

                        oTarget.attr(a).set(oSel.attr(a).get()*inv)

                        if flip:
                            oSel.attr(a).set(flipVal*inv)
    except:
        pm.displayWarning("Flip/Mirror pose fail")
        pass
    finally:
        pm.undoInfo(cck=1)


def bindPose(model):
    nameSpace = getNamespace(model.name())
    if nameSpace:
        dagPoseName = nameSpace+':dagPose1'
    else:
        dagPoseName = 'dagPose1'
    pm.dagPose( dagPoseName, restore=True )


def resetSelTrans():
    with pm.UndoChunk():
        for obj in pm.selected():
            tra.resetTransform(obj)


##################################################
# Transfer space
##################################################
# ================================================
class AbstractAnimationTransfer(QtWidgets.QDialog):

    try:
        valueChanged = QtCore.Signal(int)
    except Exception:
        valueChanged = gqt.pyqtSignal()

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
        self.timeSliderFrames_button = QtWidgets.QPushButton("Time Slider Frames")

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

        spaceTransfer_layout = QtWidgets.QVBoxLayout()
        spaceTransfer_layout.setContentsMargins(6, 5, 6, 5)
        spaceTransfer_layout.addWidget(self.onlyKeyframes_check)
        spaceTransfer_layout.addLayout(frames_layout)
        spaceTransfer_layout.addLayout(framesSetter_layout)
        spaceTransfer_layout.addWidget(self.comboBoxSpaces)
        spaceTransfer_layout.addWidget(self.spaceTransfer_button)

        self.setLayout(spaceTransfer_layout)

    def create_connections(self):
        # type: () -> None

        self.spaceTransfer_button.clicked.connect(self.doItByUI)
        self.allFrames_button.clicked.connect(partial(self.populateRange, False))
        self.timeSliderFrames_button.clicked.connect(partial(self.populateRange, True))

    # SLOTS ##########################################################

    def populateRange(self, timeSlider=False):
        # type: (bool) -> None

        start = pm.playbackOptions(q=True, min=timeSlider, ast=True)
        end = pm.playbackOptions(q=True, max=timeSlider, aet=True)
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
        # type: (int, int, List[pm.nodetypes.Transform]) -> List[List[pm.datatypes.Matrix]]
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
        raise NotImplementedError("must implement transfer in each specialized class")

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

        for c in gqt.maya_main_window().children():
            if isinstance(c, AbstractAnimationTransfer):
                c.deleteLater()

    def bakeAnimation(self, switch_attr_name, val_src_nodes, key_src_nodes, key_dst_nodes,
                      startFrame, endFrame, onlyKeyframes=True):
        # type: (str, List[pm.nodetypes.Transform], List[pm.nodetypes.Transform], List[pm.nodetypes.Transform], int, int, bool) -> None

        channels = ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz"]
        worldMatrixList = self.getWorldMatrices(startFrame, endFrame, val_src_nodes)
        keyframeList = list(set(pm.keyframe(key_src_nodes, at=["t", "r", "s"], q=True)))
        keyframeList.sort()

        pm.undoInfo(openChunk=True)
        try:
            for i, x in enumerate(range(startFrame, endFrame + 1)):

                if onlyKeyframes and x not in keyframeList:
                    continue

                pm.currentTime(x)

                # delete animation in the space switch channel
                pm.cutKey(switch_attr_name)

                # set the new space in the channel
                self.changeAttrToBoundValue()

                # bake the stored transforms to the cotrols
                for j, n in enumerate(key_dst_nodes):
                    n.setMatrix(worldMatrixList[i][j], worldSpace=True)

                pm.setKeyframe(key_dst_nodes, at=channels)

        except Exception as e:
            raise e

        finally:
            pm.undoInfo(closeChunk=True)


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

    def transfer(self, startFrame, endFrame, onlyKeyframes, *args, **kwargs):
        # type: (int, int, bool, *str, **str) -> None

        val_src_nodes = [self.ctrlNode]
        key_src_nodes = val_src_nodes
        key_dst_nodes = val_src_nodes

        self.bakeAnimation(self.getChangeAttrName(), val_src_nodes, key_src_nodes, key_dst_nodes,
                           startFrame, endFrame, onlyKeyframes)

    @staticmethod
    def showUI(combo, model, uihost, switchedAttrShortName, ctrl_name, *args):
        # type: (widgets.toggleCombo, pm.nodetypes.Transform, str, str, str, *str) -> None

        try:
            for c in gqt.maya_main_window().children():
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
            ui.createUI(gqt.maya_main_window())
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

    def setCtrls(self, fks, ik, upv):
        # type: (list[str], str, str) -> None
        """gather maya PyNode represented each controllers"""

        self.fkCtrls = [self._getNode(x) for x in fks]
        self.fkTargets = [self._getMth(x) for x in fks]

        self.ikCtrl = self._getNode(ik)
        self.ikTarget = self._getMth(ik)

        self.upvCtrl = self._getNode(upv)
        self.upvTarget = self._getMth(upv)

    # ----------------------------------------------------------------

    def transfer(self, startFrame, endFrame, onlyKeyframes, switchTo=None, *args, **kargs):
        # type: (int, int, bool, str, *str, **str) -> None

        if switchTo is not None:
            if "fk" in switchTo.lower():

                val_src_nodes = self.fkTargets
                key_src_nodes = [self.ikCtrl, self.upvCtrl]
                key_dst_nodes = self.fkCtrls

            else:

                val_src_nodes = [self.ikTarget, self.upvTarget]
                key_src_nodes = self.fkCtrls
                key_dst_nodes = [self.ikCtrl, self.upvCtrl]

        else:
            if self.comboBoxSpaces.currentIndex() != 0:  # to FK

                val_src_nodes = self.fkTargets
                key_src_nodes = [self.ikCtrl, self.upvCtrl]
                key_dst_nodes = self.fkCtrls

            else:  # to IK

                val_src_nodes = [self.ikTarget, self.upvTarget]
                key_src_nodes = self.fkCtrls
                key_dst_nodes = [self.ikCtrl, self.upvCtrl]

        self.bakeAnimation(self.getChangeAttrName(), val_src_nodes, key_src_nodes, key_dst_nodes,
                           startFrame, endFrame, onlyKeyframes)

    # ----------------------------------------------------------------

    @staticmethod
    def showUI(model, ikfk_attr, uihost, fks, ik, upv, *args):
        # type: (pm.nodetypes.Transform, str, str, List[str], str, str, *str) -> None

        try:
            for c in gqt.maya_main_window().children():
                if isinstance(c, IkFkTransfer):
                    c.deleteLater()

        except RuntimeError:
            pass

        # Create minimal UI object
        ui = IkFkTransfer()
        ui.setModel(model)
        ui.setUiHost(uihost)
        ui.setSwitchedAttrShortName(ikfk_attr)
        ui.setCtrls(fks, ik, upv)
        ui.setComboObj(None)
        ui.setComboBoxItemsFormList(["IK", "FK"])

        # Delete the UI if errors occur to avoid causing winEvent
        # and event errors (in Maya 2014)
        try:
            ui.createUI(gqt.maya_main_window())
            ui.show()

        except Exception as e:
            ui.deleteLater()
            traceback.print_exc()
            mgear.log(e, mgear.sev_error)

    @staticmethod
    def execute(model, ikfk_attr, uihost, fks, ik, upv,
                startFrame=None, endFrame=None, onlyKeyframes=None, switchTo=None):
        # type: (pm.nodetypes.Transform, str, str, List[str], str, str, int, int, bool, str) -> None
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
        ui.setCtrls(fks, ik, upv)
        ui.setComboBoxItemsFormList(["IK", "FK"])
        ui.getValue = lambda: 0.0 if "fk" in switchTo.lower() else 1.0
        ui.transfer(startFrame, endFrame, onlyKeyframes, switchTo="fk")

    @staticmethod
    def toIK(model, ikfk_attr, uihost, fks, ik, upv, **kwargs):
        # type: (pm.nodetypes.Transform, str, str, List[str], str, str, **str) -> None

        kwargs.update({"switchTo": "ik"})
        IkFkTransfer.execute(model, ikfk_attr, uihost, fks, ik, upv, **kwargs)

    @staticmethod
    def toFK(model, ikfk_attr, uihost, fks, ik, upv, **kwargs):
        # type: (pm.nodetypes.Transform, str, str, List[str], str, str, **str) -> None

        kwargs.update({"switchTo": "fk"})
        IkFkTransfer.execute(model, ikfk_attr, uihost, fks, ik, upv, **kwargs)
