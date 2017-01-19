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
    if  nameSpace:
        node = getNode( nameSpace + ":" + object_name)
        ctl = getNode( nameSpace + ":" + ctl_name)
    else:
        node = getNode(object_name)
        ctl = getNode(ctl_name)

    sWM = ctl.getMatrix(worldSpace=True)

    oAttr = node.attr(combo_attr)


    oVal =  oAttr.set(cnsIndex)
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

class spaceTransferUI(QtWidgets.QDialog):

    try:
        valueChanged = QtCore.Signal(int)
    except:
        valueChanged = pyqtSignal()

    def __init__(self, parent=None):
        super(spaceTransferUI, self).__init__(parent)
        self.comboObj = None
        self.comboItems = []
        self.model = None
        self.uihost = None
        self.combo_attr = None
        self.ctrl_name = None



    def create(self):

        self.setWindowTitle("Space Transfer ")
        self.setWindowFlags(QtCore.Qt.Tool)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, 1)

        self.create_controls()
        self.create_layout()
        self.create_connections()

    def create_controls(self):
        self.onlyKeyframes_check = QtGui.QCheckBox('Only Keyframe Frames')
        self.onlyKeyframes_check.setChecked(True)
        self.startFrame_label = QtGui.QLabel("Start")
        self.startFrame_value = QtGui.QSpinBox()
        self.startFrame_value.setMinimum(-999999)
        self.startFrame_value.setMaximum(999999)
        self.endFrame_label = QtGui.QLabel("End")
        self.endFrame_value = QtGui.QSpinBox()
        self.endFrame_value.setMinimum(-999999)
        self.endFrame_value.setMaximum(999999)
        self.populateRange(True)
        self.allFrames_button = QtGui.QPushButton("All Frames")
        self.timeSliderFrames_button = QtGui.QPushButton("Time Slider Frames")
        self.comboBoxSpaces = QtGui.QComboBox()
        self.comboBoxSpaces.addItems(self.comboItems)
        self.comboBoxSpaces.setCurrentIndex(self.comboObj.currentIndex())
        self.spaceTransfer_button = QtGui.QPushButton("Space Transfer")

    def create_layout(self):

        frames_layout = QtGui.QHBoxLayout()
        frames_layout.setContentsMargins(1,1,1,1)
        frames_layout.addWidget(self.startFrame_label)
        frames_layout.addWidget(self.startFrame_value)
        frames_layout.addWidget(self.endFrame_label)
        frames_layout.addWidget(self.endFrame_value)

        framesSetter_layout = QtGui.QHBoxLayout()
        framesSetter_layout.setContentsMargins(1,1,1,1)
        framesSetter_layout.addWidget(self.allFrames_button)
        framesSetter_layout.addWidget(self.timeSliderFrames_button)


        spaceTransfer_layout = QtWidgets.QVBoxLayout()
        spaceTransfer_layout.setContentsMargins(6,5,6,5)
        spaceTransfer_layout.addWidget(self.onlyKeyframes_check)
        spaceTransfer_layout.addLayout(frames_layout)
        spaceTransfer_layout.addLayout(framesSetter_layout)
        spaceTransfer_layout.addWidget(self.comboBoxSpaces)
        spaceTransfer_layout.addWidget(self.spaceTransfer_button)

        self.setLayout(spaceTransfer_layout)


    def create_connections(self):
        self.spaceTransfer_button.clicked.connect(self.doSpaceTransfer)
        self.allFrames_button.clicked.connect(partial(self.populateRange, False))
        self.timeSliderFrames_button.clicked.connect(partial(self.populateRange, True))


    # SLOTS ##########################################################

    def populateRange(self, timeSlider=False):
        start = pm.playbackOptions(q=True, min=timeSlider, ast=True)
        end = pm.playbackOptions(q=True, max=timeSlider, aet=True)
        self.startFrame_value.setValue(start)
        self.endFrame_value.setValue(end)

    def doSpaceTransfer(self):

        nameSpace = getNamespace(self.model)
        if nameSpace:
            ctrlName = nameSpace+":"+self.ctrl_name
            hostName = nameSpace+":"+self.uihost
        else:
            ctrlName = self.ctrl_name
            hostName = self.uihost



        self.ctl_node = getNode(ctrlName)
        startFrame = self.startFrame_value.value()
        endFrame = self.endFrame_value.value()

        # store the current world space position
        wmList = []
        for x in range(startFrame, endFrame+1):
            wmList.append(pm.getAttr(self.ctl_node+'.worldMatrix',time=x))
        pm.undoInfo(ock=True)
        keyframeList = list(set(pm.keyframe(self.ctl_node, at=["t","r","s"], q=True)))
        keyframeList.sort()
        for i, x in enumerate(range(startFrame, endFrame+1)):
            if self.onlyKeyframes_check.isChecked() and x not in keyframeList:
                continue
            pm.currentTime(x)
            # delete animation in the space switch channel
            pm.cutKey( hostName+"."+self.combo_attr)

            # set the new space in the channel
            pm.setAttr( hostName+"."+self.combo_attr, self.comboBoxSpaces.currentIndex())

            # bake the stored transforms to the cotrol
            self.ctl_node.setMatrix(wmList[i], worldSpace=True)
            channels = ["tx","ty","tz", "rx","ry","rz", "sx","sy","sz"]
            pm.setKeyframe( self.ctl_node, at=channels)


        # set the new space value in the synoptic combobox
        self.comboObj.setCurrentIndex(self.comboBoxSpaces.currentIndex())
        pm.undoInfo(cck=True)
        for c in gqt.maya_main_window().children():
            if isinstance(c, spaceTransferUI):
                c.deleteLater()




def showSpaceTransferUI(combo, model, uihost, combo_attr, ctrl_name, *args):

    try:
        for c in gqt.maya_main_window().children():
            if isinstance(c, spaceTransferUI):
                c.deleteLater()

    except:
        pass



    # Create minimal UI object
    spaceTransfer = spaceTransferUI(gqt.maya_main_window())

    # Delete the UI if errors occur to avoid causing winEvent
    # and event errors (in Maya 2014)
    try:
        spaceTransfer.comboObj =  combo
        spaceTransfer.model = model
        spaceTransfer.uihost = uihost
        spaceTransfer.combo_attr = combo_attr
        spaceTransfer.ctrl_name = ctrl_name
        for i in range(spaceTransfer.comboObj.count()-1):
            spaceTransfer.comboItems.append(spaceTransfer.comboObj.itemText(i))
        spaceTransfer.create()
        spaceTransfer.show()

    except:
        spaceTransfer.deleteLater()
        traceback.print_exc()
