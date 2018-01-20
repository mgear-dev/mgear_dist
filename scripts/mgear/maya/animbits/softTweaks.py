"""
SoftTweak is a dynamic position tweak using softmod deformer
The credit of the idea goes to Vasil Shotarov, thanks!
http://bindpose.com/help-animators-fix-intersections-softmod-deformer/
"""

# TODO:
# add options for L  and R. By position and by name detection
# if the parent have name space, the tweak should have the same namespace
# maybe? controls grp inside another set and automatic if  shifter rig.
# Maybe check the parent of the root. if already member of a controllers group
# or subgroup

import json

import pymel.core as pm
from pymel.core import datatypes

from mgear.maya import pyqt, attribute, icon, node, primitive, applyop
import mgear.maya.animbits.softTweakWindowUI as stUI

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

from mgear.vendor.Qt import QtCore, QtWidgets, QtGui


#########################################
# Soft Tweak
#########################################

# CREATORS -------------------------------
# Create the controls for the softTweak


def _createSoftTweakControls(name,
                             parent=None,
                             t=datatypes.Matrix(),
                             grp=None,
                             size=0.5):
    root_name = "{}_{}".format(name, "softTweak_root")
    namespace = None
    try:
        # simple check if exist a tweak with the same name
        exist = pm.PyNode(root_name)
        if exist:
            pm.displayError("the tweak: {} already exist. Please use a "
                            "unique name.".format(name))
            return False, False
    except pm.MayaNodeError:
        if parent:
            try:
                p = pm.PyNode(parent)
                namespace = p.namespace()

            except pm.MayaNodeError:
                pm.displayWarning("{} is not a valid parent or doesn't "
                                  "exist".format(parent))
                p = None
        else:
            p = None
        root = primitive.addTransform(p, root_name, t)
        attribute.addAttribute(root, "iconSize", "float", size, keyable=False)

        baseCtl = icon.create(parent=root,
                              name="{}_{}".format(name, "baseSoftTweak_ctl"),
                              m=t,
                              color=[1, 0.622, 0],
                              icon="square",
                              d=size,
                              w=size)
        tweakCtl = icon.create(parent=baseCtl,
                               name="{}_{}".format(name, "softTweak_ctl"),
                               m=t,
                               color=[0.89, 0.0, 0.143],
                               icon="diamond",
                               w=size * .8)
        attribute.addAttribute(tweakCtl, "falloff", "float", .5)

        if grp:
            try:
                # try if exist
                oGrp = pm.PyNode(grp)
            except pm.MayaNodeError:
                # create a new grp if does't exist
                if len(grp.split("_")) >= 3:  # simple check  name convention
                    name = grp
                else:
                    name = "rig_{}_grp".format(grp)

                    # namespace basic handling
                    # NOTE: Doesn't support more than one namespace stacked
                    if namespace and len(name.split(":")) < 2:
                        name = namespace + name

                oGrp = pm.sets(n=name, em=True)

            pm.sets(oGrp, add=[baseCtl, tweakCtl])
        if t:
            root.setMatrix(t, worldSpace=True)

        return baseCtl, tweakCtl

# Create a tweak using softMod deformer
# We have separated the softmode creationg so we can use any pre-existing ctl.


def _createSoftModTweak(baseCtl, tweakCtl, name, targets):

    sm = pm.softMod(targets, wn=[tweakCtl, tweakCtl])
    pm.rename(sm[0], "{}_softMod".format(name))

    # disconnect default connection
    plugs = sm[0].softModXforms.listConnections(p=True)
    for p in plugs:
        pm.disconnectAttr(p, sm[0].softModXforms)
        pm.delete(p.node())

    dm_node = node.createDecomposeMatrixNode(baseCtl.worldMatrix[0])
    pm.connectAttr(dm_node.outputTranslate, sm[0].falloffCenter)
    mul_node = node.createMulNode(dm_node.outputScaleX,
                                  tweakCtl.attr("falloff"))
    pm.connectAttr(mul_node.outputX, sm[0].falloffRadius)
    mulMatrix_node = applyop.gear_mulmatrix_op(tweakCtl.worldMatrix[0],
                                               tweakCtl.parentInverseMatrix[0])
    pm.connectAttr(mulMatrix_node.output, sm[0].weightedMatrix)
    pm.connectAttr(baseCtl.worldInverseMatrix[0], sm[0].postMatrix)
    pm.connectAttr(baseCtl.worldMatrix[0], sm[0].preMatrix)
    attribute.addAttribute(sm[0], "_isSoftTweak", "bool", False, keyable=False)

    sm[0].addAttr("ctlRoot", at='message', m=False)
    sm[0].addAttr("ctlBase", at='message', m=False)
    sm[0].addAttr("ctlTweak", at='message', m=False)
    pm.connectAttr(baseCtl.getParent().attr("message"), sm[0].attr("ctlRoot"))
    pm.connectAttr(baseCtl.attr("message"), sm[0].attr("ctlBase"))
    pm.connectAttr(tweakCtl.attr("message"), sm[0].attr("ctlTweak"))

    return sm[0]


#  Create softTweak and controls convenience function.
def createSoftTweak(name, targets=[], parent=None, t=None, grp=None, size=0.5):
    with pm.UndoChunk():
        if isinstance(targets, basestring):
            targets = pm.PyNode(targets)
        if not isinstance(targets, list):
            targets = [targets]
        if not targets:
            pm.displayWarning("Can't find the targets to apply to "
                              "softModTweak or Targets not selectedIndexes")
            return False, False, False
        # namespace basic handling
        # NOTE: Doesn't support more than one namespace stacked
        if pm.ls(parent) and len(name.split(":")) < 2:
            name = pm.PyNode(parent).namespace() + name

        baseCtl, tweakCtl = _createSoftTweakControls(
            name, parent, t, grp, size)

        if baseCtl:
            softModNode = _createSoftModTweak(baseCtl, tweakCtl, name, targets)

            return softModNode, baseCtl, tweakCtl
        else:
            return False, False, False


# EDIT -------------------------------
# get softMod affected objects
def _getAffectedObjects(softMods):
    affectedList = []
    if not isinstance(softMods, list):
        softMods = [softMods]
    for softMod in softMods:
        if isinstance(softMod, basestring):
            softMod = pm.PyNode(softMod)
        affectedList = affectedList + softMod.getGeometry()

    return affectedList

# get plugget object


def _getPluggetObj(softMods, plug):
    ctlRoots = []
    if not isinstance(softMods, list):
        softMods = [softMods]
    for softMod in softMods:
        if isinstance(softMod, basestring):
            softMod = pm.PyNode(softMod)
        ctlRoots.append(softMod.attr(plug).listConnections(p=True)[0].node())
    return ctlRoots


# add or remove obj from softmod
def _addRemoveSoftMode(softMods, targets=[], add=True):
    if isinstance(softMods, basestring):
        softMods = pm.PyNode(softMods)
    if not isinstance(softMods, list):
        softMods = [softMods]
    for softMod in softMods:
        softSet = pm.listConnections(softMod, type='objectSet')
        if softSet:
            if isinstance(targets, basestring):
                targets = pm.PyNode(targets)
            if not isinstance(targets, list):
                targets = [targets]

            if add:
                pm.sets(softSet[0], add=targets)
            else:
                pm.sets(softSet[0], rm=targets)


# add to softmod
def addToSoftMod(softMods, targets=[]):
    _addRemoveSoftMode(softMods, targets)

# remove from soft mode


def removeSoftMod(softMods, targets=[]):
    _addRemoveSoftMode(softMods, targets, False)

# list soft modeTweaks in the scene


def _listSoftModTweaks():
    return [sm for sm in pm.ls(type="softMod") if sm.hasAttr("_isSoftTweak")]


def _buildConfigDict(softMods=[]):
    """build the config dictionary softMod list

    Returns:
        dic: SoftMod tweaks configuration
    """
    configDict = {}

    # Softmods list
    configDict["softMods"] = [sm.name() for sm in softMods]

    for sm in softMods:
        softModConfig = {}
        root = sm.ctlRoot.listConnections(p=True)[0].node()
        baseCtl = sm.ctlBase.listConnections(p=True)[0].node()
        ctl = sm.ctlTweak.listConnections(p=True)[0].node()

        # base name without the extension_softMod
        softModConfig["name"] = sm.name().replace("_softMod", "")
        # fallof value
        softModConfig["falloff"] = ctl.falloff.get()
        # affected objects
        print _getAffectedObjects(sm)
        softModConfig["affected"] = _getAffectedObjects(sm)
        # root parent
        if root.getParent():
            parentName = root.getParent().name()
        else:
            parentName = None
        softModConfig["rootParent"] = parentName
        # icons size
        softModConfig["iconSize"] = root.iconSize.get()
        # root matrix
        m = root.getMatrix(objectSpace=True)
        softModConfig["rootMatrix"] = m.get()
        # ctl base matrix
        m = baseCtl.getMatrix(objectSpace=True)
        softModConfig["baseCtlMatrix"] = m.get()
        # ctl matrix
        m = ctl.getMatrix(objectSpace=True)
        softModConfig["ctlMatrix"] = m.get()
        # grp name
        # oSet = root.grp.listConnections(p=True)
        oSet = ctl.instObjGroups.listConnections()
        if oSet:
            # grp = oSet[0].node().name()
            grp = oSet[0].name()
        else:
            grp = None
        softModConfig["grpName"] = grp

        configDict[sm.name()] = softModConfig

    return configDict

# EXPORTERS -------------------------------
# export configuration from a softMod tweaks list


def exportConfiguration(softMods):
    configDict = _buildConfigDict(softMods)
    startDir = pm.workspace(q=True, rootDirectory=True)
    data_string = json.dumps(configDict, indent=4, sort_keys=True)
    filePath = pm.fileDialog2(
        dialogStyle=2,
        fileMode=0,
        startingDirectory=startDir,
        fileFilter='SoftMod Tweaks configuration .smt (*%s)' % ".smt")
    if not filePath:
        return
    if not isinstance(filePath, basestring):
        filePath = filePath[0]
    f = open(filePath, 'w')
    f.write(data_string)
    f.close()

# IMPORTERS -------------------------------
# import softTweaker configuration


def _importConfiguration(configDict):
    with pm.UndoChunk():
        for sm in configDict["softMods"]:
            smConfig = configDict[sm]
            targets = []
            for t in smConfig["affected"]:
                try:
                    targets.append(pm.PyNode(t))
                except pm.MayaNodeError:
                    pm.displayWarning("{}: has not been found in the scene "
                                      "and will be skipped".format(t))

            name = smConfig["name"]
            parent = smConfig["rootParent"]
            size = smConfig["iconSize"]
            grp = smConfig["grpName"]
            rootMatrix = datatypes.Matrix(smConfig["rootMatrix"])
            softModNode, baseCtl, tweakCtl = createSoftTweak(name,
                                                             targets=targets,
                                                             parent=parent,
                                                             t=rootMatrix,
                                                             grp=grp,
                                                             size=size)
            if softModNode:
                ctlBaseMatrix = datatypes.Matrix(smConfig["baseCtlMatrix"])
                ctlMatrix = datatypes.Matrix(smConfig["ctlMatrix"])
                baseCtl.setMatrix(ctlBaseMatrix, objectSpace=True)
                tweakCtl.setMatrix(ctlMatrix, objectSpace=True)
                tweakCtl.falloff.set(smConfig["falloff"])
                # we have to set the matrix again on the root because is stored
                # in local space
                baseCtl.getParent().setMatrix(rootMatrix, objectSpace=True)

# import softTweaker configuration from file


def importConfigurationFromFile(filePath=None):
    if not filePath:
        startDir = pm.workspace(q=True, rootDirectory=True)
        filePath = pm.fileDialog2(
            dialogStyle=2,
            fileMode=1,
            startingDirectory=startDir,
            fileFilter='SoftMod Tweaks configuration .smt (*%s)' % ".smt")

    if not filePath:
        return
    if not isinstance(filePath, basestring):
        filePath = filePath[0]
    configDict = json.load(open(filePath))
    _importConfiguration(configDict)


####################################
# Soft tweaks Manager dialog
####################################

class softTweakManagerUI(QtWidgets.QMainWindow, stUI.Ui_MainWindow):

    def __init__(self, parent=None):
        super(softTweakManagerUI, self).__init__(parent)
        self.setupUi(self)


class softTweakManager(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        self.toolName = "softTweakManager"
        super(softTweakManager, self).__init__(parent)
        self.stUIInst = softTweakManagerUI()

        self.__proxyModel = QtCore.QSortFilterProxyModel(self)
        self.stUIInst.softTweak_listView.setModel(self.__proxyModel)

        self.setup_softTweakManagerrWindow()
        self.create_layout()
        self.create_connections()
        self._refreshList()

        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, True)

    def setup_softTweakManagerrWindow(self):

        self.setObjectName(self.toolName)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle("Animbits: SoftTweak Manager")
        self.resize(400, 600)

    def create_layout(self):

        self.stm_layout = QtWidgets.QVBoxLayout()
        self.stm_layout.addWidget(self.stUIInst)

        self.setLayout(self.stm_layout)

    def setSourceModel(self, model):
        self.__proxyModel.setSourceModel(model)

    ####################
    # Helper functions
    ####################

    # export selected softTweaker configuration from selected on the list
    def _exportSelectedConfigurationFromList(self):
        softMods = None
        exportConfiguration(softMods)
        return

    # export all the softTweaks in the list
    def _exportAllFromList(self):
        softMods = None
        exportConfiguration(softMods)
        return

    def _refreshList(self):
        model = QtGui.QStandardItemModel(self)
        for t_node in _listSoftModTweaks():
            model.appendRow(QtGui.QStandardItem(t_node.name()))
        self.setSourceModel(model)

    def _getSelectedListIndexes(self):
        softMods = []
        for x in self.stUIInst.softTweak_listView.selectedIndexes():
            try:
                softMods.append(pm.PyNode(x.data()))

            except pm.MayaNodeError:
                pm.displayWarning("{}  can't be find.".format(x.data()))
                return False
        return softMods

    ###########################
    # create connections SIGNALS
    ###########################
    def create_connections(self):
        self.stUIInst.search_lineEdit.textChanged.connect(self.filterChanged)
        self.stUIInst.refresh_pushButton.clicked.connect(self.refreshList)
        self.stUIInst.addObjectToTweak_pushButton.clicked.connect(self.addObj)
        self.stUIInst.removeObjFromTweak_pushButton.clicked.connect(
            self.removeObj)
        self.stUIInst.setParent_pushButton.clicked.connect(self.setTweakParent)
        self.stUIInst.setCtrlGrp_pushButton.clicked.connect(self.setCtlGrp)
        self.stUIInst.newTweak_pushButton.clicked.connect(self.newTweak)
        self.stUIInst.delete_pushButton.clicked.connect(self.deleteTweak)
        self.stUIInst.selectObjectsFromTweak_pushButton.clicked.connect(
            self.selectectAffected)
        self.stUIInst.selectCtlBase_pushButton.clicked.connect(
            self.selectBaseCtl)
        self.stUIInst.selectCtl_pushButton.clicked.connect(self.selectCtl)

        # actions
        self.stUIInst.exportSelected_action.triggered.connect(
            self.exportSelection)
        self.stUIInst.exportAll_action.triggered.connect(self.exportAll)
        self.stUIInst.import_action.triggered.connect(self.importConfiguration)

    #############
    # SLOTS
    #############
    def filterChanged(self, filter):
        regExp = QtCore.QRegExp(filter,
                                QtCore.Qt.CaseSensitive,
                                QtCore.QRegExp.Wildcard
                                )
        self.__proxyModel.setFilterRegExp(regExp)

    # FILE MENU COMMANDS
    # export from list ui
    def exportSelection(self):
        softMods = self._getSelectedListIndexes()
        exportConfiguration(softMods)

    def exportAll(self):
        softMods = _listSoftModTweaks()
        exportConfiguration(softMods)

    # import configuration
    def importConfiguration(self):
        # import the configuration
        importConfigurationFromFile()
        # refresh UI list
        self.refreshList()

    # UI BUTTONS
    # refresh the softTweakers list
    def refreshList(self):
        self._refreshList()

    def _addRemoveObj(self, add=True):
        softMods = self._getSelectedListIndexes()
        _addRemoveSoftMode(softMods, pm.selected(), add)

    def addObj(self):
        self._addRemoveObj()

    def removeObj(self):
        self._addRemoveObj(False)

    def _populate_object(self, lEdit, oType=True):
        if oType:
            testInstance = pm.nodetypes.Transform
        else:
            testInstance = pm.nodetypes.ObjectSet

        oSel = pm.selected()
        if oSel:
            if isinstance(oSel[0], testInstance):
                lEdit.setText(oSel[0].name())
            else:
                pm.displayWarning("The selected element is not a valid object")
        else:
            pm.displayWarning("Please select first the element to add.")

    def setCtlGrp(self):
        self._populate_object(self.stUIInst.ctlGrp_lineEdit, False)

    def setTweakParent(self):
        self._populate_object(self.stUIInst.parent_lineEdit)

    def newTweak(self):
        name = self.stUIInst.name_lineEdit.text()
        if not name:
            pm.displayWarning("please define the name before create "
                              "the softTweak.")
            return
        grp = self.stUIInst.ctlGrp_lineEdit.text()
        parent = self.stUIInst.parent_lineEdit.text()
        if parent:
            try:
                p = pm.PyNode(parent)
                trans = p.getMatrix(worldSpace=True)

            except pm.MayaNodeError:
                pm.displayWarning("{} is not a valid parent or doesn't "
                                  "exist".format(parent))
                return
        else:
            trans = datatypes.Matrix()
        try:
            oSel = [x for x in pm.selected()
                    if x.getShape().type()
                    in ["mesh", "nurbsSurface"]]
        except pm.MayaNodeError:
            pm.displayError("Some objects on the current selection are "
                            "not valid. Please review the selection")
            return
        size = self.stUIInst.size_doubleSpinBox.value()
        createSoftTweak(name,
                        targets=oSel,
                        parent=parent,
                        t=trans,
                        grp=grp,
                        size=size)
        self._refreshList()
        pm.select(oSel, r=True)

    # delete the selected tweaks and the relative controls
    # What happen if the controls have more child objects?
    # like tweaks under tweaks
    def deleteTweak(self):
        option = pm.confirmDialog(title='Delete Tweak,',
                                  message='Are you sure?',
                                  button=['Delete', 'Cancel'],
                                  defaultButton='Delete',
                                  cancelButton='Cancel',
                                  dismissString='Cancel')
        if option == "Delete":
            softMods = self._getSelectedListIndexes()
            objs = _getPluggetObj(softMods, "ctlRoot")
            pm.delete(softMods)
            pm.delete(objs)
            self._refreshList()

    def selectectAffected(self):
        softMods = self._getSelectedListIndexes()
        aObj = _getAffectedObjects(softMods)
        pm.select(aObj, r=True)

    def selectBaseCtl(self):
        softMods = self._getSelectedListIndexes()
        objs = _getPluggetObj(softMods, "ctlBase")
        pm.select(objs, r=True)

    def selectCtl(self):
        softMods = self._getSelectedListIndexes()
        objs = _getPluggetObj(softMods, "ctlTweak")
        pm.select(objs, r=True)


def openSoftTweakManager(*args):
    pyqt.showDialog(softTweakManager)


if __name__ == "__main__":

    openSoftTweakManager()
