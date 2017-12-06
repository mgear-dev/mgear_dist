import pymel.core as pm
import json
from functools import partial
import traceback
import os.path

import mgear.maya.utils as mutils
import mgear.string as string

import mgear.maya.shifter.gameToolsUI as gtUI

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
import mgear.maya.pyqt as gqt
from mgear.vendor.Qt import QtCore, QtWidgets


@mutils.one_undo
def disconnect(cnxDict):
    for i, jnt in enumerate(cnxDict["joints"]):
        # we don't need to disconnect blended joint since the connection is
        # from other joints
        if not jnt.startswith("blend_"):
            oJnt = pm.PyNode(jnt)

            for e, plug in enumerate([oJnt.translate, oJnt.rotate, oJnt.scale,
                                      oJnt.scale.scaleX, oJnt.scale.scaleY,
                                      oJnt.scale.scaleZ, oJnt.shear]):
                if cnxDict["attrs"][i][e]:
                    pm.disconnectAttr(cnxDict["attrs"][i][e], plug)
            if cnxDict["attrs"][i][7]:
                pm.disconnectAttr(
                    oJnt.parentInverseMatrix[0], cnxDict["attrs"][i][7])


def connect(cnxDict, nsRig=None, nsSkin=None):
    for i, jnt in enumerate(cnxDict["joints"]):
        try:
            if nsSkin:
                oJnt = pm.PyNode(nsSkin + ":" + jnt)
            else:
                oJnt = pm.PyNode(jnt)
            for e, plug in enumerate([oJnt.translate, oJnt.rotate, oJnt.scale,
                                      oJnt.scale.scaleX, oJnt.scale.scaleY,
                                      oJnt.scale.scaleZ, oJnt.shear]):
                if cnxDict["attrs"][i][e]:
                    if nsRig:
                        pm.connectAttr(
                            nsRig + ":" + cnxDict["attrs"][i][e], plug, f=True)
                    else:
                        pm.connectAttr(cnxDict["attrs"][i][e], plug, f=True)

            if cnxDict["attrs"][i][7]:
                if nsRig:
                    pm.connectAttr(
                        oJnt.parentInverseMatrix[0], nsRig + ":" +
                        cnxDict["attrs"][i][7], f=True)
                else:
                    pm.connectAttr(
                        oJnt.parentInverseMatrix[0],
                        cnxDict["attrs"][i][7],
                        f=True)

        except Exception:
            pm.displayError("{} is not found in the scene".format(jnt))


def connectCns(cnxDict, nsRig=None, nsSkin=None):
    for i, jnt in enumerate(cnxDict["joints"]):
        if nsSkin:
            oJnt = pm.PyNode(nsSkin + ":" + jnt)
        else:
            oJnt = pm.PyNode(jnt)

        if cnxDict["attrs"][i][0]:
            if nsRig:
                oAttr = pm.PyNode(nsRig + ":" + cnxDict["attrs"][i][0])
            else:
                oAttr = pm.PyNode(cnxDict["attrs"][i][0])

            oNode = oAttr.node()
            oTrans = pm.listConnections(
                pm.listConnections(oNode.inputMatrix)[0].matrixIn[0])
            pm.parentConstraint(oTrans, oJnt, mo=True)
            pm.scaleConstraint(oTrans, oJnt, mo=True)


def exportConnections(source=None, filePath=None, disc=False):
    connections = {}
    connections["joints"] = []
    connections["attrs"] = []
    if not source:
        source = pm.selected()
    for x in source:
        if not x.name().startswith("blend_"):
            connections["joints"].append(x.name())
            trans_attr = pm.listConnections(
                x.translate, p=True, type="decomposeMatrix")
            rot_attr = pm.listConnections(
                x.rotate, p=True, type="decomposeMatrix")
            scl_attr = pm.listConnections(
                x.scale, p=True, type="decomposeMatrix")
            sclX_attr = pm.listConnections(
                x.scale.scaleX, p=True, type="decomposeMatrix")
            sclY_attr = pm.listConnections(
                x.scale.scaleY, p=True, type="decomposeMatrix")
            sclZ_attr = pm.listConnections(
                x.scale.scaleZ, p=True, type="decomposeMatrix")
            shear_attr = pm.listConnections(
                x.shear, p=True, type="decomposeMatrix")
            parentInv_attr = pm.listConnections(
                x.parentInverseMatrix[0], d=True, p=True)

            attrs_list = [trans_attr, rot_attr, scl_attr, sclX_attr,
                          sclY_attr, sclZ_attr, shear_attr, parentInv_attr]
            attrs_list_checked = []
            for at in attrs_list:
                if at:
                    attrs_list_checked.append(at[0].name())
                else:
                    attrs_list_checked.append(None)

            connections["attrs"].append(attrs_list_checked)

    data_string = json.dumps(connections, indent=4, sort_keys=True)
    if not filePath:
        filePath = pm.fileDialog2(dialogStyle=2, fileMode=0,
                                  fileFilter=' Shifter joint cnx maya matrix'
                                  '  .jmm (*%s)' % ".jmm")
        if not filePath:
            return
        if not isinstance(filePath, basestring):
            filePath = filePath[0]

    if os.path.isfile(filePath) and connections["joints"]:
        with open(filePath, 'w') as f:
            f.write(data_string)

        if disc:
            disconnect(connections)


def importConnections(filePath=None, nsRig=None, nsSkin=None, useMtx=True):
    if not filePath:
        startDir = pm.workspace(q=True, rootDirectory=True)
        filePath = pm.fileDialog2(dialogStyle=2, fileMode=1,
                                  startingDirectory=startDir,
                                  fileFilter=' Shifter joint cnx maya matrix '
                                  ' .jmm (*%s)' % ".jmm")
    if not filePath:
        return
    if not isinstance(filePath, basestring):
        filePath = filePath[0]
    with open(filePath) as fp:
        configDict = json.load(fp)

    if useMtx:
        connect(configDict, nsRig=nsRig, nsSkin=nsSkin)
    else:
        connectCns(configDict, nsRig=nsRig, nsSkin=nsSkin)


def getRigTopNode(node=None):
    if not node and pm.selected():
        node = pm.selected()[0]
        if not node.hasAttr("is_rig"):
            pm.displayWarning(
                "Please select a valid rig top node!. '{}' "
                "is not a rig top node".format(node.name()))
            return False
        return node.name()
    else:
        pm.displayWarning("Please select a rig top node!")
        return False


def runScript(path=None):
    if path:
        execfile(path)


@mutils.one_undo
def exportAssetAssembly(name, rigTopNode, meshTopNode, path, postScript=None):
    if pm.ls(rigTopNode):
        rigTopNode = pm.PyNode(rigTopNode)
    else:
        pm.displayError(
            "{} doesn't exist or duplicated. Please check your "
            "scene".format(rigTopNode))
        return

    if pm.ls(meshTopNode):
        meshTopNode = pm.PyNode(meshTopNode)
    else:
        pm.displayError(
            "{} doesn't exist or duplicated. Please check "
            "your scene".format(meshTopNode))
        return
    # check the folder and script
    # if the target name exist abort and request another name

    deformer_jnts = rigTopNode.rigGroups[3].connections()[0].members()
    if not deformer_jnts:
        pm.displayError(
            "{} is empty. The tool can't find any joint".format(meshTopNode))

    # export connections and cut joint connections

    # cut al possible remaining connection and adjust hierarchy

    # pot script
    if postScript:
        try:
            execfile(postScript)
        except Exception as ex:
            template = "An exception of type {0} occured. Arguments:\n{1!r}"
            message = template.format(type(ex).__name__, ex.args)
            pm.displayError(message)
            cont = pm.confirmBox("FAIL: Script Fail",
                                 "Do you want to export anyway?" + "\n\n" +
                                 message + "\n\n" + traceback.format_exc(),
                                 "Continue", "Cancel")
            if not cont:
                pm.undo()
                return

    # export rig model

    # export mesh and joints


def _importAssetAssembly(paht=None, reference=False):
    return


def importAssetAssembly(path=None):
    return


def referenceAssetAssembly(path=None):
    return


####################################
# Soft tweaks Manager dialog
####################################

class gameToolsUI(QtWidgets.QDialog, gtUI.Ui_gameTools):

    def __init__(self, parent=None):
        super(gameToolsUI, self).__init__(parent)
        self.setupUi(self)


class gameTools(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    def __init__(self, parent=None):
        self.toolName = "shifterGameTools"
        super(self.__class__, self).__init__(parent=parent)
        self.gtUIInst = gameToolsUI()

        self.startDir = pm.workspace(q=True, rootDirectory=True)

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

    # Slots
    @staticmethod
    def _validCharacters(lEdit):
        name = string.removeInvalidCharacter(lEdit.text())
        lEdit.setText(name)

    def populateRigTopNode(self):
        topNode = getRigTopNode()
        if topNode:
            self.gtUIInst.rigNode_lineEdit.setText(topNode)

    def populateMeshTopNode(self):
        if pm.selected():
            node = pm.selected()[0]
            self.gtUIInst.meshNode_lineEdit.setText(node.name())
        else:
            pm.displayWarning("Please select a Mesh top node!")
            return False

    def populateOutputFolder(self):
        filePath = pm.fileDialog2(dialogStyle=2, fileMode=2,
                                  startingDirectory=self.startDir,
                                  fileFilter=' Shifter Game Assembly folder')
        if not filePath:
            return
        if not isinstance(filePath, basestring):
            filePath = filePath[0]
        self.gtUIInst.path_lineEdit.setText(filePath)

    def populateScript(self):
        filePath = pm.fileDialog2(dialogStyle=2, fileMode=1,
                                  startingDirectory=self.startDir,
                                  fileFilter=' Post Script  .py (*%s)' % ".py")
        if not filePath:
            return
        if not isinstance(filePath, basestring):
            filePath = filePath[0]
        self.gtUIInst.script_lineEdit.setText(filePath)

    def disconnectExport(self):
        name = self.gtUIInst.assetName_lineEdit.text()
        rigTopNode = self.gtUIInst.rigNode_lineEdit.text()
        meshTopNode = self.gtUIInst.meshNode_lineEdit.text()
        path = self.gtUIInst.path_lineEdit.text()
        postScript = self.gtUIInst.script_lineEdit.text()

        if name and rigTopNode and meshTopNode and path:
            exportAssetAssembly(
                name, rigTopNode, meshTopNode, path, postScript)
        else:
            pm.displayWarning(
                "Name, Rig Top Node, Mesh Top Node and path "
                "are mandatory fields. Please check it.")

    # Connect slots
    def createConnections(self):
        self.gtUIInst.assetName_lineEdit.editingFinished.connect(
            partial(gameTools._validCharacters,
                    self.gtUIInst.assetName_lineEdit))
        self.gtUIInst.rigNode_pushButton.clicked.connect(
            self.populateRigTopNode)
        self.gtUIInst.meshNode_pushButton.clicked.connect(
            self.populateMeshTopNode)
        self.gtUIInst.path_pushButton.clicked.connect(
            self.populateOutputFolder)
        self.gtUIInst.script_pushButton.clicked.connect(self.populateScript)
        self.gtUIInst.disconnectExport_pushButton.clicked.connect(
            self.disconnectExport)


if __name__ == "__main__":

    gqt.showDialog(gameTools)
