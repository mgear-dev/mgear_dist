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

# Author:     Jeremie Passerin      www.jeremiepasserin.com
# Author:     Miquel Campos         www.miquel-campos.com
# Date:       2016 / 10 / 10


import pymel.core as pm
import json
from functools import partial

import mgear.maya.utils as mutils
import mgear.string as string

import mgear.maya.shifter.gameToolsUI as gtUI

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
import mgear.maya.pyqt as gqt
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


@mutils.one_undo
def disconnect(cnxDict):
    for i, jnt in enumerate(cnxDict["joints"]):
        # we don't need to disconnect blended joint since the connection is from other joints
        if not jnt.startswith("blend_"):
            oJnt = pm.PyNode(jnt)

            for e, plug in enumerate([  oJnt.translate, oJnt.rotate, oJnt.scale,
                                        oJnt.scale.scaleX, oJnt.scale.scaleY,
                                        oJnt.scale.scaleZ, oJnt.shear]):
                if cnxDict["attrs"][i][e]:
                    pm.disconnectAttr( cnxDict["attrs"][i][e], plug)
            if cnxDict["attrs"][i][7]:
                pm.disconnectAttr(oJnt.parentInverseMatrix[0], cnxDict["attrs"][i][7] )


def connect(cnxDict, nsRig=None, nsSkin=None):
    for i, jnt in enumerate(cnxDict["joints"]):
        try:
            if nsSkin:
                oJnt = pm.PyNode(nsSkin+":"+jnt)
            else:
                oJnt = pm.PyNode(jnt)
            for e, plug in enumerate([  oJnt.translate, oJnt.rotate, oJnt.scale,
                                        oJnt.scale.scaleX, oJnt.scale.scaleY,
                                        oJnt.scale.scaleZ, oJnt.shear]):
                if cnxDict["attrs"][i][e]:
                    if nsRig:
                        pm.connectAttr(nsRig+":"+ cnxDict["attrs"][i][e],plug, f=True)
                    else:
                        pm.connectAttr(cnxDict["attrs"][i][e],plug, f=True)

            if cnxDict["attrs"][i][7]:
                if nsRig:
                    pm.connectAttr(oJnt.parentInverseMatrix[0], nsRig+":"+ cnxDict["attrs"][i][7], f=True)
                else:
                    pm.connectAttr(oJnt.parentInverseMatrix[0], cnxDict["attrs"][i][7], f=True)

        except:
            pm.displayError("{} is not found in the scene".format(jnt))


def connectCns(cnxDict, nsRig=None, nsSkin=None):
    for i, jnt in enumerate(cnxDict["joints"]):
        if nsSkin:
            oJnt = pm.PyNode(nsSkin+":"+jnt)
        else:
            oJnt = pm.PyNode(jnt)

        if cnxDict["attrs"][i][0]:
            if nsRig:
                oAttr = pm.PyNode(nsRig+":"+ cnxDict["attrs"][i][0])
            else:
                oAttr = pm.PyNode( cnxDict["attrs"][i][0])

            oNode = oAttr.node()
            oTrans = pm.listConnections(pm.listConnections(oNode.inputMatrix)[0].matrixIn[0])
            pm.parentConstraint(oTrans,oJnt, mo=True)
            pm.scaleConstraint(oTrans,oJnt, mo=True)


def exportConnections(source=None, disc=False):
    connections = {}
    connections["joints"] = []
    connections["attrs"] = []
    if not source:
        source = pm.selected()
    for x in source:
        if not x.name().startswith("blend_"):
            connections["joints"].append(x.name())
            trans_attr = pm.listConnections(x.translate, p=True, type="decomposeMatrix")
            rot_attr =  pm.listConnections(x.rotate, p=True, type="decomposeMatrix")
            scl_attr =  pm.listConnections(x.scale, p=True, type="decomposeMatrix")
            sclX_attr =  pm.listConnections(x.scale.scaleX, p=True, type="decomposeMatrix")
            sclY_attr =  pm.listConnections(x.scale.scaleY, p=True, type="decomposeMatrix")
            sclZ_attr =  pm.listConnections(x.scale.scaleZ, p=True, type="decomposeMatrix")
            shear_attr =  pm.listConnections(x.shear, p=True, type="decomposeMatrix")
            parentInv_attr =  pm.listConnections(x.parentInverseMatrix[0], d=True, p=True)

            attrs_list = [trans_attr, rot_attr, scl_attr, sclX_attr, sclY_attr, sclZ_attr, shear_attr, parentInv_attr]
            attrs_list_checked = []
            for at in attrs_list:
                if at:
                    attrs_list_checked.append(at[0].name())
                else:
                    attrs_list_checked.append(None)


            connections["attrs"].append(attrs_list_checked)

    data_string = json.dumps(connections, indent=4, sort_keys=True)
    filePath = pm.fileDialog2(dialogStyle=2, fileMode=0,
                              fileFilter=' Shifter joint cnx maya matrix  .jmm (*%s)' %".jmm")
    if not filePath:
        return
    if not isinstance(filePath, basestring):
        filePath = filePath[0]
    f = open(filePath, 'w')
    f.write(data_string)
    f.close()

    if disc:
        # print connections
        disconnect(connections)



def importConnections(filePath=None, nsRig=None, nsSkin=None, useMtx=True):
    if not filePath:
        startDir = pm.workspace(q=True, rootDirectory=True)
        filePath = pm.fileDialog2(  dialogStyle=2, fileMode=1, startingDirectory=startDir,
                                    fileFilter=' Shifter joint cnx maya matrix  .jmm (*%s)' %".jmm")
    if not filePath:
        return
    if not isinstance(filePath, basestring):
        filePath = filePath[0]
    configDict = json.load(open(filePath))

    if useMtx:
        connect(configDict, nsRig=nsRig, nsSkin=nsSkin)
    else:
        connectCns(configDict, nsRig=nsRig, nsSkin=nsSkin)



####################################
## Soft tweaks Manager dialog
####################################

class gameToolsUI(QtWidgets.QDialog, gtUI.Ui_gameTools):

    def __init__(self, parent=None):
        super(gameToolsUI, self).__init__(parent)
        self.setupUi(self)

class gameTools(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    def __init__(self, parent=None):
        self.toolName = "shifterGameTools"
        super(self.__class__, self).__init__(parent = parent)
        self.gtUIInst = gameToolsUI()

        self.gameTools_window()
        self.gameTools_layout()
        self.createConnections()

        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, True)

    def gameTools_window(self):

        self.setObjectName(self.toolName)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle("Shifter Game Tools")
        self.resize(300, 330)

    def gameTools_layout(self):

        self.gt_layout = QtWidgets.QVBoxLayout()
        self.gt_layout.addWidget(self.gtUIInst)

        self.setLayout(self.gt_layout)

    @staticmethod
    def _validCharacters(lEdit):
        name = string.removeInvalidCharacter(lEdit.text())
        lEdit.setText(name)

    def createConnections(self):
        self.gtUIInst.assetName_lineEdit.editingFinished.connect(partial(gameTools._validCharacters, self.gtUIInst.assetName_lineEdit ))

if __name__ == "__main__":

    gqt.showDialog(gameTools)
