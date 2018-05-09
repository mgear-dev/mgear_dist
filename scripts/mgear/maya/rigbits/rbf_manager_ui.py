"""
Todo

-Multiple driven support for add button
-clean up code
-add documentation
-sync driver table
-look into deleting attr post creation(not likely, rbf might fail)
-newScene callback

2.0 -------
LOOK into coloring the pose and how close it is
import replace name support (will work through json manually)
support live connections
settings support for suffix, etc
rename existing setup

Original M.O
-Needs to support live connections
-Normalize Value view
-edit disconnects all plugs
-cells rmb invert selected value
-import replace name
-keep in mind possible future RBF solvers
-non compound, ty vs .t

Attributes:
    CTL_SUFFIX (str): suffix for anim controls
    DRIVEN_SUFFIX (str): suffix for driven group nodes
    EXTRA_MODULE_DICT (str): name of the dict which holds additional modules
    MGEAR_EXTRA_ENVIRON (str): environment variable to query for paths
    TOOL_NAME (str): name of UI
    TOOL_TITLE (str): title as it appears in the ui
    TOOL_VERSION (float): UI version

Deleted Attributes:
    RBF_MODULES (dict): of supported rbf modules

"""
# python
import os
import imp
import pprint
from functools import partial

# maya
import maya.cmds as mc
import pymel.core as pm
import maya.OpenMayaUI as mui

# mgear
from mgear.maya import pyqt
import mgear.string as mString
from mgear.maya import synoptic
from mgear.vendor.Qt import QtWidgets, QtCore, QtCompat
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

# rbf
import rbf_io
import rbf_node

# =============================================================================
# Constants
# =============================================================================

TOOL_NAME = "RBF Manager UI"
TOOL_VERSION = .1
TOOL_TITLE = "{} v{}".format(TOOL_NAME, TOOL_VERSION)

DRIVEN_SUFFIX = rbf_node.DRIVEN_SUFFIX
CTL_SUFFIX = rbf_node.CTL_SUFFIX

MGEAR_EXTRA_ENVIRON = "MGEAR_RBF_EXTRA"
EXTRA_MODULE_DICT = "extraFunc_dict"

MIRROR_SUFFIX = "_mr"

# =============================================================================
# general functions
# =============================================================================


def testFunctions(*args):
    """test function for connecting signals during debug

    Args:
        *args: Description
    """
    print '1', args


def getPlugAttrs(nodes, attrType="all"):
    """Get a list of attributes to display to the user

    Args:
        nodes (str): name of node to attr query
        keyable (bool, optional): should the list only be kayable attrs

    Returns:
        list: list of attrplugs
    """
    plugAttrs = []
    for node in nodes:
        if attrType == "all":
            attrs = mc.listAttr(node, se=True, u=False)
        elif attrType == "cb":
            attrs = mc.listAttr(node, se=True, u=False, cb=True)
        elif attrType == "keyable":
            attrs = mc.listAttr(node, se=True, u=False, keyable=True)
        if attrs is None:
            continue
        [plugAttrs.append("{}.{}".format(node, a)) for a in attrs]
    return plugAttrs


def sortRBF(name, rbfType=None):
    """Get node wrapped in RBFNode class based on the type of node

    Args:
        name (str): name of the RBFNode in scene
        rbfType (str, optional): type of RBF to get instance from

    Returns:
        RBFNode: instance of RBFNode
    """
    if mc.objExists(name) and mc.nodeType(name) in rbf_io.RBF_MODULES:
        rbfType = mc.nodeType(name)
        return rbf_io.RBF_MODULES[rbfType].RBFNode(name)
    elif rbfType is not None:
        return rbf_io.RBF_MODULES[rbfType].RBFNode(name)


def getEnvironModules():
    """if there are any environment variables set that load additional
    modules for the UI, query and return dict

    Returns:
        dict: displayName:funcObject
    """
    extraModulePath = os.environ.get(MGEAR_EXTRA_ENVIRON, None)
    if extraModulePath is None or not os.path.exists(extraModulePath):
        return None
    exModule = imp.load_source(MGEAR_EXTRA_ENVIRON,
                               os.path.abspath(extraModulePath))
    additionalFuncDict = getattr(exModule, EXTRA_MODULE_DICT, None)
    if additionalFuncDict is None:
        mc.warning("'{}' not found in {}".format(EXTRA_MODULE_DICT,
                                                 extraModulePath))
        print "No additional menu items added to {}".format(TOOL_NAME)
    return additionalFuncDict


def selectNode(name):
    """Convenience function, to ensure no errors when selecting nodes in UI

    Args:
        name (str): name of node to be selected
    """
    if mc.objExists(name):
        mc.select(name)
    else:
        print name, "No longer exists for selection!"


# =============================================================================
# UI General Functions
# =============================================================================

def getControlAttrWidget(nodeAttr, label=""):
    """get a cmds.attrControlGrp wrapped in a qtWidget, still connected
    to the specified attr

    Args:
        nodeAttr (str): node.attr, the target for the attrControlGrp
        label (str, optional): name for the attr widget

    Returns:
        QtWidget: qwidget created from attrControlGrp
    """
    mAttrFeild = mc.attrControlGrp(attribute=nodeAttr,
                                   label=label,
                                   po=True)
    ptr = mui.MQtUtil.findControl(mAttrFeild)
    controlWidget = QtCompat.wrapInstance(long(ptr), base=QtWidgets.QWidget)
    controlWidget.setContentsMargins(0, 0, 0, 0)
    controlWidget.setMinimumWidth(0)
    attrEdit = [wdgt for wdgt in controlWidget.children()
                if type(wdgt) == QtWidgets.QLineEdit]
    [wdgt.setParent(attrEdit[0]) for wdgt in controlWidget.children()
     if type(wdgt) == QtCore.QObject]

    attrEdit[0].setParent(None)
    controlWidget.setParent(attrEdit[0])
    controlWidget.setHidden(True)
    return attrEdit[0], mAttrFeild


def HLine():
    """seporator line for widgets

    Returns:
        Qframe: line for seperating UI elements visually
    """
    seperatorLine = QtWidgets.QFrame()
    seperatorLine.setFrameShape(QtWidgets.QFrame.HLine)
    seperatorLine.setFrameShadow(QtWidgets.QFrame.Sunken)
    return seperatorLine


def VLine():
    """seporator line for widgets

    Returns:
        Qframe: line for seperating UI elements visually
    """
    seperatorLine = QtWidgets.QFrame()
    seperatorLine.setFrameShape(QtWidgets.QFrame.VLine)
    seperatorLine.setFrameShadow(QtWidgets.QFrame.Sunken)
    return seperatorLine


def show(*args):
    """To launch the ui and not get the same instance

    Returns:
        DistributeUI: instance

    Args:
        *args: Description
    """
    global RBF_UI
    if 'RBF_UI' in globals():
        try:
            RBF_UI.close()
        except TypeError:
            pass
    RBF_UI = RBFManagerUI(parent=pyqt.maya_main_window())
    RBF_UI.show(dockable=True)
    return RBF_UI


def genericWarning(parent, warningText):
    """generic prompt warning with the provided text

    Args:
        parent (QWidget): Qwidget to be parented under
        warningText (str): information to display to the user

    Returns:
        QtCore.Response: of what the user chose. For warnings
    """
    selWarning = QtWidgets.QMessageBox(parent)
    selWarning.setText(warningText)
    results = selWarning.exec_()
    return results


def promptAcceptance(parent, descriptionA, descriptionB):
    """Warn user, asking for permission

    Args:
        parent (QWidget): to be parented under
        descriptionA (str): info
        descriptionB (str): further info

    Returns:
        QtCore.Response: accept, deline, reject
    """
    msgBox = QtWidgets.QMessageBox(parent)
    msgBox.setText(descriptionA)
    msgBox.setInformativeText(descriptionB)
    msgBox.setStandardButtons(QtWidgets.QMessageBox.Ok |
                              QtWidgets.QMessageBox.Cancel)
    msgBox.setDefaultButton(QtWidgets.QMessageBox.Cancel)
    decision = msgBox.exec_()
    return decision


class ClickableLineEdit(QtWidgets.QLineEdit):

    """subclass to allow for clickable lineEdit, as a button

    Attributes:
        clicked (QtCore.Signal): emitted when clicked
    """

    clicked = QtCore.Signal(str)

    def mousePressEvent(self, event):
        if event.button() == QtCore.Qt.LeftButton:
            self.clicked.emit(self.text())
        else:
            super(ClickableLineEdit, self).mousePressEvent(event)


class TabBar(QtWidgets.QTabBar):
    """Subclass to get a taller tab widget, for readability
    """

    def __init__(self):
        super(TabBar, self).__init__()

    def tabSizeHint(self, index):
        width = QtWidgets.QTabBar.tabSizeHint(self, index).width()
        return QtCore.QSize(width, 25)


class RBFSetupInput(QtWidgets.QDialog):

    """Allow the user to select which attrs will drive the rbf nodes in a setup

    Attributes:
        drivenListWidget (QListWidget): widget to display attrs to drive setup
        okButton (QPushButton): BUTTON
        result (list): of selected attrs from listWidget
        setupField (bool)): Should the setup lineEdit widget be displayed
        setupLineEdit (QLineEdit): name selected by user
    """

    def __init__(self, listValues, setupField=True, parent=None):
        """setup the UI widgets

        Args:
            listValues (list): attrs to be displayed on the list
            setupField (bool, optional): should the setup line edit be shown
            parent (QWidget, optional): widget to parent this to
        """
        super(RBFSetupInput, self).__init__(parent=parent)
        self.setWindowTitle(TOOL_TITLE)
        mainLayout = QtWidgets.QVBoxLayout()
        self.setLayout(mainLayout)
        self.setupField = setupField
        self.result = []
        #  --------------------------------------------------------------------
        setupLayout = QtWidgets.QHBoxLayout()
        setupLabel = QtWidgets.QLabel("Specify Setup Name")
        self.setupLineEdit = QtWidgets.QLineEdit()
        self.setupLineEdit.setPlaceholderText("<name>_<side><int> // skirt_L0")
        setupLayout.addWidget(setupLabel)
        setupLayout.addWidget(self.setupLineEdit)
        if setupField:
            mainLayout.addLayout(setupLayout)
        #  --------------------------------------------------------------------
        drivenLayout = QtWidgets.QVBoxLayout()
        drivenLabel = QtWidgets.QLabel("Select Driven Attributes")
        self.drivenListWidget = QtWidgets.QListWidget()
        self.drivenListWidget.setToolTip("Right Click for sorting!")
        selType = QtWidgets.QAbstractItemView.ExtendedSelection
        self.drivenListWidget.setSelectionMode(selType)
        self.drivenListWidget.addItems(listValues)
        self.drivenListWidget.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        drivenLayout.addWidget(drivenLabel)
        drivenLayout.addWidget(self.drivenListWidget)
        mainLayout.addLayout(drivenLayout)
        #  --------------------------------------------------------------------
        # buttonLayout = QtWidgets.QHBoxLayout()
        self.okButton = QtWidgets.QPushButton("Ok")
        self.okButton.clicked.connect(self.onOK)
        mainLayout.addWidget(self.okButton)

    def onOK(self):
        """collect information from the displayed widgets, userinput, return

        Returns:
            list: of user input provided from user
        """
        setupName = self.setupLineEdit.text()
        if setupName == "" and self.setupField:
            genericWarning(self, "Enter Setup Name")
            return
        selectedAttrs = self.drivenListWidget.selectedItems()
        if not selectedAttrs:
            genericWarning(self, "Select at least one attribute")
            return
        driverAttrs = [item.text().split(".")[1] for item in selectedAttrs]
        self.result.append(setupName)
        self.result.append(driverAttrs)
        self.accept()
        return self.result

    def getValue(self):
        """convenience to get result

        Returns:
            TYPE: Description
        """
        return self.result

    def exec_(self):
        """Convenience

        Returns:
            list: [str, [of selected attrs]]
        """
        super(RBFSetupInput, self).exec_()
        return self.result


class RBFManagerUI(MayaQWidgetDockableMixin, QtWidgets.QMainWindow):

    """A manager for creating, mirroring, importing/exporting poses created
    for RBF type nodes.

    Attributes:
        addRbfButton (QPushButton): button for adding RBFs to setup
        allSetupsInfo (dict): setupName:[of all the RBFNodes in scene]
        attrMenu (TYPE): Description
        currentRBFSetupNodes (list): currently selected setup nodes(userSelect)
        driverPoseTableWidget (QTableWidget): poseInfo for the driver node
        genericWidgetHight (int): convenience to adjust height of all buttons
        mousePosition (QPose): if tracking mouse position on UI
        rbfTabWidget (QTabWidget): where the driven table node info is
        displayed
    """

    mousePosition = QtCore.Signal(int, int)

    def __init__(self, parent=None, hideMenuBar=False):
        super(RBFManagerUI, self).__init__(parent=parent)
        self.setWindowTitle(TOOL_TITLE)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, True)
        self.genericWidgetHight = 24
        self.currentRBFSetupNodes = []
        self.allSetupsInfo = None
        self.setMenuBar(self.createMenuBar(hideMenuBar=hideMenuBar))
        self.setCentralWidget(self.createCentralWidget())
        self.centralWidget().setMouseTracking(True)
        self.refreshRbfSetupList()
        self.connectSignals()
        # added because the dockableMixin makes the ui appear small
        self.adjustSize()

    # general functions -------------------------------------------------------
    def getSelectedSetup(self):
        """return the string name of the selected setup from user and type

        Returns:
            str, str: name, nodeType
        """
        selectedSetup = self.rbf_cbox.currentText()
        if selectedSetup.startswith("New"):
            setupType = selectedSetup.split(" ")[1]
            return None, setupType
        else:
            return selectedSetup, self.currentRBFSetupNodes[0].rbfType

    def getDrivenNodesFromSetup(self):
        """based on the user selected setup, get the associated RBF nodes

        Returns:
            list: driven rbfnodes
        """
        drivenNodes = []
        for rbfNode in self.currentRBFSetupNodes:
            drivenNodes.extend(rbfNode.getDrivenNode)
        return drivenNodes

    def getUserSetupInfo(self, drivenNode, drivenAttrs, setupField=True):
        """prompt the user for information needed to create setup or add
        rbf node to existing setup

        Args:
            drivenAttrs (list): of attrs to display to user to select from
            setupField (bool, optional): should the user be asked to input
            a name for setup

        Returns:
            list: list of selected attrs, name specified
        """
        userInputWdgt = RBFSetupInput(drivenAttrs,
                                      setupField=setupField,
                                      parent=self)
        partialObj = partial(self.attrListMenu,
                             userInputWdgt.drivenListWidget,
                             "",
                             nodeToQuery=drivenNode)
        customMenu = userInputWdgt.drivenListWidget.customContextMenuRequested
        customMenu.connect(partialObj)
        results = userInputWdgt.exec_()
        if results:
            return results[0], results[1]
        else:
            return None, None

    def __deleteSetup(self):
        decision = promptAcceptance(self,
                                    "Delete current Setup?",
                                    "This will delete all RBF nodes in setup.")
        if decision in [QtWidgets.QMessageBox.Discard,
                        QtWidgets.QMessageBox.Cancel]:
            return
        self.deleteSetup()

    def deleteSetup(self, setupName=None):
        """Delete all the nodes within a setup.

        Args:
            setupName (None, optional): Description
        """
        setupType = None
        if setupName is None:
            setupName, setupType = self.getSelectedSetup()
        nodesToDelete = self.allSetupsInfo.get(setupName, [])
        for rbfNode in nodesToDelete:
            drivenNode = rbfNode.getDrivenNode()
            rbfNode.deleteRBFToggleAttr()
            if drivenNode:
                rbf_node.removeDrivenGroup(drivenNode[0])
            mc.delete(rbfNode.transformNode)
        self.refresh()

    def removeRBFFromSetup(self, drivenWidgetIndex):
        """remove RBF tab from setup. Delete driven group, attrs and clean up

        Args:
            drivenWidgetIndex (QWidget): parent widget that houses the contents
            and info of the rbf node

        Returns:
            n/a: n/a
        """
        decision = promptAcceptance(self,
                                    "Are you sure you want to remove node?",
                                    "This will delete the RBF & driven node.")
        if decision in [QtWidgets.QMessageBox.Discard,
                        QtWidgets.QMessageBox.Cancel]:
            return
        drivenWidget = self.rbfTabWidget.widget(drivenWidgetIndex)
        self.rbfTabWidget.removeTab(drivenWidgetIndex)
        rbfNode = getattr(drivenWidget, "rbfNode")
        self.__deleteAssociatedWidgets(drivenWidget, attrName="associated")
        drivenWidget.deleteLater()
        drivenNode = rbfNode.getDrivenNode()
        rbfNode.deleteRBFToggleAttr()
        if drivenNode and drivenNode[0].endswith(rbf_node.DRIVEN_SUFFIX):
            rbf_node.removeDrivenGroup(drivenNode[0])
        mc.delete(rbfNode.transformNode)
        self.currentRBFSetupNodes.remove(rbfNode)
        if self.rbfTabWidget.count() == 0:
            self.refresh(rbfSelection=True,
                         driverSelection=True,
                         drivenSelection=True,
                         currentRBFSetupNodes=True)
        else:
            self.refreshAllTables()

    def addRBFToSetup(self):
        """query the user in case of a new setup or adding additional RBFs to
        existing.

        Returns:
            TYPE: Description
        """
        driverNode = self.driverLineEdit.text()
        driverControl = self.controlLineEdit.text()
        # take every opportunity to return to avoid unneeded processes
        if driverNode == "":
            return
        selectedAttrItems = self.driver_attributes_widget.selectedItems()
        if not selectedAttrItems:
            return
        driverAttrs = [item.text().split(".")[1] for item in selectedAttrItems]
        drivenNode = mc.ls(sl=True)
        # This does prevents a driver to be its own driven
        if not drivenNode or drivenNode[0] == driverNode:
            genericWarning(self, "Select Node to be driven!")
            return
        drivenNode = drivenNode[0]
        drivenNodeType = mc.nodeType(drivenNode)
        # smart display all when needed
        if drivenNodeType in ["transform", "joint"]:
            attrType = "keyable"
        else:
            attrType = "all"
        availableAttrs = getPlugAttrs([drivenNode], attrType=attrType)
        setupName, rbfType = self.getSelectedSetup()
        # if a setup has already been named or starting new
        if setupName is None:
            setupName, drivenAttrs = self.getUserSetupInfo(drivenNode,
                                                           availableAttrs)
        else:
            tmpName, drivenAttrs = self.getUserSetupInfo(drivenNode,
                                                         availableAttrs,
                                                         setupField=False)
        if not drivenAttrs:
            return
        parentNode = False
        if mc.nodeType(drivenNode) == "transform":
            parentNode = True
            drivenNode = rbf_node.addDrivenGroup(drivenNode)
        # create RBFNode instance, apply settings
        rbfNode = sortRBF(drivenNode, rbfType=rbfType)
        rbfNode.setSetupName(setupName)
        rbfNode.setDriverControlAttr(driverControl)
        rbfNode.setDriverNode(driverNode, driverAttrs)
        rbfNode.setDrivenNode(drivenNode, drivenAttrs, parent=parentNode)
        # Check if there any preexisting nodes in setup, if so copy pose index
        if self.currentRBFSetupNodes:
            currentRbfs = self.currentRBFSetupNodes[0]
            print "Syncing poses indices from  {} >> {}".format(currentRbfs,
                                                                rbfNode)
            rbfNode.syncPoseIndices(self.currentRBFSetupNodes[0])
        else:
            rbfNode.applyDefaultPose()
            self.populateDriverInfo(rbfNode, rbfNode.getNodeInfo())
        # add newly created RBFNode to list of current
        self.currentRBFSetupNodes.append(rbfNode)
        # get info to populate the UI with it
        weightInfo = rbfNode.getNodeInfo()
        tabDrivenWidget = self.addNewTab(rbfNode)
        self.populateDrivenWidgetInfo(tabDrivenWidget, weightInfo, rbfNode)
        self.refreshRbfSetupList(setToSelection=setupName)
        self.lockDriverWidgets()

    def refreshAllTables(self):
        """Convenience function to refresh all the tables on all the tabs
        with latest information.
        """
        weightInfo = None
        rbfNode = None
        for index in range(self.rbfTabWidget.count()):
            drivenWidget = self.rbfTabWidget.widget(index)
            drivenNodeName = drivenWidget.drivenLineEdit.text()
            for rbfNode in self.currentRBFSetupNodes:
                drivenNodes = rbfNode.getDrivenNode()
                if drivenNodes and drivenNodes[0] != drivenNodeName:
                    continue
                weightInfo = rbfNode.getNodeInfo()
                self.setDrivenTable(drivenWidget, rbfNode, weightInfo)
        if weightInfo and rbfNode:
            self.populateDriverInfo(rbfNode, weightInfo)

    def deletePose(self):
        """delete a pose from the UI and all the RBFNodes in the setup.

        Returns:
            n/a: n/a
        """
        driverRow = self.driverPoseTableWidget.currentRow()
        drivenWidget = self.rbfTabWidget.currentWidget()
        drivenTableWidget = getattr(drivenWidget, "tableWidget")
        drivenRow = drivenTableWidget.currentRow()
        # TODO if one is allow syncing of nodes of different lengths
        # it should be done here
        if drivenRow != driverRow or drivenRow == -1:
            genericWarning(self, "Select Pose # to be deleted.")
            return

        for rbfNode in self.currentRBFSetupNodes:
            rbfNode.deletePose(indexToPop=drivenRow)
        self.refreshAllTables()

    def editPose(self):
        """edit an existing pose. Specify the index

        Returns:
            TYPE: Description
        """
        rbfNodes = self.currentRBFSetupNodes
        if not rbfNodes:
            return
        driverRow = self.driverPoseTableWidget.currentRow()
        drivenWidget = self.rbfTabWidget.currentWidget()
        drivenTableWidget = getattr(drivenWidget, "tableWidget")
        drivenRow = drivenTableWidget.currentRow()
        if drivenRow != driverRow or drivenRow == -1:
            genericWarning(self, "Select Pose # to be Edited.")
            return
        driverNode = rbfNodes[0].getDriverNode()[0]
        driverAttrs = rbfNodes[0].getDriverNodeAttributes()
        poseInputs = rbf_node.getMultipleAttrs(driverNode, driverAttrs)
        for rbfNode in rbfNodes:
            poseValues = rbfNode.getPoseValues(resetDriven=True)
            rbfNode.addPose(poseInput=poseInputs,
                            poseValue=poseValues,
                            posesIndex=drivenRow)
            rbfNode.forceEvaluation()
        self.refreshAllTables()

    def addPose(self):
        """Add pose to rbf nodes in setup. Additional index on all nodes

        Returns:
            TYPE: Description
        """
        rbfNodes = self.currentRBFSetupNodes
        if not rbfNodes:
            return
        driverNode = rbfNodes[0].getDriverNode()[0]
        driverAttrs = rbfNodes[0].getDriverNodeAttributes()
        poseInputs = rbf_node.getMultipleAttrs(driverNode, driverAttrs)
        for rbfNode in rbfNodes:
            poseValues = rbfNode.getPoseValues(resetDriven=True)
            rbfNode.addPose(poseInput=poseInputs, poseValue=poseValues)
        self.refreshAllTables()

    def updateAllSetupsInfo(self, includeEmpty=False):
        """refresh the instance dictionary of all the setps in the scene.

        Args:
            includeEmpty (bool, optional): there could be rbf nodes with no
            setup names.
        """
        self.allSetupsInfo = {}
        tmp_dict = rbf_node.getRbfSceneSetupsInfo(includeEmpty=includeEmpty)
        for setupName, nodes in tmp_dict.iteritems():
            self.allSetupsInfo[setupName] = [sortRBF(n) for n in nodes]

    def setNodeToField(self, lineEdit, multi=False):
        """take the currently selected node and set its name to the lineedit
        provided

        Args:
            lineEdit (QLineEdit): widget to set the name to
            multi (bool, optional): should multiple nodes be supported

        Returns:
            str: str set to the lineedit
        """
        selected = mc.ls(sl=True)
        if not multi:
            selected = [selected[0]]
        controlNameData = ", ".join(selected)
        lineEdit.setText(controlNameData)
        mc.select(cl=True)
        return controlNameData

    def highlightListEntries(self, listWidget, toHighlight):
        """set the items in a listWidget to be highlighted if they are in list

        Args:
            listWidget (QListWidget): list to highlight items on
            toHighlight (list): of things to highlight
        """
        toHighlight = list(toHighlight)
        scrollToItems = []
        for index in range(listWidget.count()):
            # for qt to check for events like keypress
            item = listWidget.item(index)
            itemText = item.text()
            for desired in toHighlight:
                if desired in itemText:
                    item.setSelected(True)
                    scrollToItems.append(item)
                    toHighlight.remove(desired)
        if scrollToItems:
            listWidget.scrollToItem(scrollToItems[0])

    def setAttributeDisplay(self, attrListWidget, driverName, displayAttrs):
        nodeAttrsToDisplay = ["{}.{}".format(driverName, attr)
                              for attr in displayAttrs]
        attrListWidget.clear()
        attrListWidget.addItems(sorted(nodeAttrsToDisplay))
        self.highlightListEntries(attrListWidget, displayAttrs)

    def updateAttributeDisplay(self,
                               attrListWidget,
                               driverNames,
                               highlight=[],
                               attrType="all"):
        """update the provided listwidget with the attrs collected from the
        list of nodes provided

        Args:
            attrListWidget (QListWidget): widget to update
            driverNames (list): of nodes to query for attrs to display
            highlight (list, optional): of item entries to highlight
            keyable (bool, optional): should the displayed attrs be keyable

        Returns:
            n/a: n/a
        """
        nodeAttrsToDisplay = []
        if not driverNames:
            return
        elif type(driverNames) != list:
            driverNames = [driverNames]
        nodeAttrsToDisplay = getPlugAttrs(driverNames, attrType=attrType)
        attrListWidget.clear()
        attrListWidget.addItems(sorted(nodeAttrsToDisplay))
        if highlight:
            self.highlightListEntries(attrListWidget, highlight)

    def __deleteAssociatedWidgetsMaya(self, widget, attrName="associatedMaya"):
        """delete maya ui items 'associated' with the provided widgets

        Args:
            widget (QWidget): Widget that has the associated attr set
            attrName (str, optional): class attr to query
        """
        if hasattr(widget, attrName):
            for t in getattr(widget, attrName):
                try:
                    mc.deleteUI(t, ctl=True)
                except Exception:
                    pass
        else:
            setattr(widget, attrName, [])

    def __deleteAssociatedWidgets(self, widget, attrName="associated"):
        """delete widget items 'associated' with the provided widgets

        Args:
            widget (QWidget): Widget that has the associated attr set
            attrName (str, optional): class attr to query
        """
        if hasattr(widget, attrName):
            for t in getattr(widget, attrName):
                try:
                    t.deleteLater()
                except Exception:
                    pass
        else:
            setattr(widget, attrName, [])

    def syncDriverTableCells(self, attrEdit, rbfAttrPlug, *args):
        """When you edit the driver table, it will update all the sibling
        rbf nodes in the setup.

        Args:
            attrEdit (QLineEdit): cell that was edited in the driver table
            rbfAttrPlug (str): node.attr the cell represents
            *args: signal throws additional args
        """
        attr = rbfAttrPlug.partition(".")[2]
        value = attrEdit.text()
        for rbfNode in self.currentRBFSetupNodes:
            attrPlug = "{}.{}".format(rbfNode, attr)
            try:
                mc.setAttr(attrPlug, value)
            except Exception:
                pass

    def setDriverTable(self, rbfNode, weightInfo):
        poses = weightInfo["poses"]
        self.__deleteAssociatedWidgetsMaya(self.driverPoseTableWidget)
        self.__deleteAssociatedWidgets(self.driverPoseTableWidget)
        self.driverPoseTableWidget.clear()
        columnLen = len(weightInfo["driverAttrs"])
        self.driverPoseTableWidget.setColumnCount(columnLen)
        headerNames = weightInfo["driverAttrs"]
        self.driverPoseTableWidget.setHorizontalHeaderLabels(headerNames)
        poseInputLen = len(poses["poseInput"])
        self.driverPoseTableWidget.setRowCount(poseInputLen)
        if poseInputLen == 0:
            return
        verticalLabels = ["Pose {}".format(index) for index
                          in range(poseInputLen)]
        self.driverPoseTableWidget.setVerticalHeaderLabels(verticalLabels)
        tmpWidgets = []
        mayaUiItems = []
        for rowIndex, poseInput in enumerate(poses["poseInput"]):
            for columnIndex, pValue in enumerate(poseInput):
                # TODO, this is where we get the attrControlGroup
                rbfAttrPlug = "{}.poses[{}].poseInput[{}]".format(rbfNode,
                                                                  rowIndex,
                                                                  columnIndex)

                attrEdit, mAttrFeild = getControlAttrWidget(rbfAttrPlug,
                                                            label="")
                func = partial(self.syncDriverTableCells,
                               attrEdit,
                               rbfAttrPlug)
                self.driverPoseTableWidget.setCellWidget(rowIndex,
                                                         columnIndex,
                                                         attrEdit)
                attrEdit.textEdited.connect(func)
                tmpWidgets.append(attrEdit)
                mayaUiItems.append(mAttrFeild)
        setattr(self.driverPoseTableWidget, "associated", tmpWidgets)
        setattr(self.driverPoseTableWidget, "associatedMaya", mayaUiItems)

    def lockDriverWidgets(self, lock=True):
        self.setDriverButton.blockSignals(lock)
        if lock:
            self.driver_attributes_widget.setEnabled(False)
        else:
            self.driver_attributes_widget.setEnabled(True)

    def populateDriverInfo(self, rbfNode, weightInfo):
        driverNode = weightInfo["driverNode"]
        if driverNode:
            driverNode = driverNode[0]
        self.driverLineEdit.setText(driverNode)
        driverControl = weightInfo["driverControl"]
        # populate control here
        self.controlLineEdit.setText(driverControl)
        # self.updateAttributeDisplay(self.driver_attributes_widget,
        #                             [driverNode],
        #                             highlight=weightInfo["driverAttrs"])
        self.setAttributeDisplay(self.driver_attributes_widget,
                                 driverNode,
                                 weightInfo["driverAttrs"])
        self.setDriverTable(rbfNode, weightInfo)

    def _associateRBFnodeAndWidget(self, tabDrivenWidget, rbfNode):
        setattr(tabDrivenWidget, "rbfNode", rbfNode)

    def createAndTagDrivenWidget(self, weightInfo, lockWidgets=True):
        drivenWidgetComponents = self.createDrivenAttributeWidget()
        drivenWidget = drivenWidgetComponents.pop(-1)
        widgetAttrs = ("drivenLineEdit",
                       "drivenSelectButton",
                       "attributeListWidget",
                       "tableWidget")
        for component, attr in zip(drivenWidgetComponents, widgetAttrs):
            setattr(drivenWidget, attr, component)
            if attr == "attributeListWidget" and lockWidgets:
                component.setEnabled(False)
        # TODO add signal connections here
        table = [wdgt for wdgt in drivenWidgetComponents
                 if type(wdgt) == QtWidgets.QTableWidget][0]
        header = table.verticalHeader()
        # try:
        header.sectionClicked.connect(self.setConsistentHeaderSelection)
        header.sectionClicked.connect(self.recallDriverPose)
        # except AttributeError:
        #     pass
        selDelFunc = self.setEditDeletePoseEnabled
        table.itemSelectionChanged.connect(selDelFunc)
        clickWidget = [wdgt for wdgt in drivenWidgetComponents
                       if type(wdgt) == ClickableLineEdit][0]
        clickWidget.clicked.connect(selectNode)
        return drivenWidget

    def setDrivenTable(self, drivenWidget, rbfNode, weightInfo):
        poses = weightInfo["poses"]
        drivenWidget.tableWidget.clear()
        rowCount = len(poses["poseValue"])
        drivenWidget.tableWidget.setRowCount(rowCount)
        drivenAttrs = weightInfo["drivenAttrs"]
        drivenWidget.tableWidget.setColumnCount(len(drivenAttrs))
        drivenWidget.tableWidget.setHorizontalHeaderLabels(drivenAttrs)
        verticalLabels = ["Pose {}".format(index) for index in range(rowCount)]
        drivenWidget.tableWidget.setVerticalHeaderLabels(verticalLabels)
        for rowIndex, poseInput in enumerate(poses["poseValue"]):
            for columnIndex, pValue in enumerate(poseInput):
                rbfAttrPlug = "{}.poses[{}].poseValue[{}]".format(rbfNode,
                                                                  rowIndex,
                                                                  columnIndex)
                attrEdit, mAttrFeild = getControlAttrWidget(rbfAttrPlug,
                                                            label="")
                drivenWidget.tableWidget.setCellWidget(rowIndex,
                                                       columnIndex,
                                                       attrEdit)

    def populateDrivenWidgetInfo(self, drivenWidget, weightInfo, rbfNode):
        drivenWidget.drivenLineEdit.clear()
        driverNode = weightInfo["drivenNode"]
        if driverNode:
            driverNode = driverNode[0]
        else:
            return
        drivenWidget.drivenLineEdit.setText(str(driverNode))
        # self.updateAttributeDisplay(drivenWidget.attributeListWidget,
        #                             [weightInfo["drivenNode"][0]],
        #                             highlight=weightInfo["drivenAttrs"])
        self.setAttributeDisplay(drivenWidget.attributeListWidget,
                                 weightInfo["drivenNode"][0],
                                 weightInfo["drivenAttrs"])
        self.setDrivenTable(drivenWidget, rbfNode, weightInfo)

    def addNewTab(self, rbfNode):
        tabDrivenWidget = self.createAndTagDrivenWidget({})
        self._associateRBFnodeAndWidget(tabDrivenWidget, rbfNode)
        self.rbfTabWidget.addTab(tabDrivenWidget, str(rbfNode))
        return tabDrivenWidget

    def recreateDrivenTabs(self, rbfNodes):
        rbfNodes = sorted(rbfNodes)
        self.rbfTabWidget.clear()
        for rbfNode in rbfNodes:
            weightInfo = rbfNode.getNodeInfo()
            drivenWidget = self.createAndTagDrivenWidget(weightInfo)
            self._associateRBFnodeAndWidget(drivenWidget, rbfNode)
            self.populateDrivenWidgetInfo(drivenWidget, weightInfo, rbfNode)
            self.rbfTabWidget.addTab(drivenWidget, rbfNode.name)

    def editSize(self):
        self.adjustSize()

    def displayRBFSetupInfo(self, index):
        rbfSelection = str(self.rbf_cbox.currentText())
        self.refresh(rbfSelection=False,
                     driverSelection=True,
                     drivenSelection=True,
                     currentRBFSetupNodes=False)
        if rbfSelection.startswith("New "):
            self.currentRBFSetupNodes = []
            self.lockDriverWidgets(lock=False)
            return
        rbfNodes = self.allSetupsInfo.get(rbfSelection, [])
        if not rbfNodes:
            return
        self.currentRBFSetupNodes = rbfNodes
        weightInfo = rbfNodes[0].getNodeInfo()
        self.populateDriverInfo(rbfNodes[0], weightInfo)
        self.lockDriverWidgets(lock=True)
        # wrapping the following in try due to what I think is a Qt Bug.
        # need to look further into this.
        #   File "rbf_manager_ui.py", line 872, in createAndTagDrivenWidget
        #     header.sectionClicked.connect(self.setConsistentHeaderSelection)
        # AttributeError: 'PySide2.QtWidgets.QListWidgetItem' object has
        # no attribute 'sectionClicked'
        try:
            self.recreateDrivenTabs(self.allSetupsInfo[rbfSelection])
        except AttributeError:
            print "Forcing refresh on UI due to error."
            self.refresh(rbfSelection=True,
                         driverSelection=True,
                         drivenSelection=True,
                         currentRBFSetupNodes=True)

    def attrListMenu(self,
                     attributeListWidget,
                     driverLineEdit,
                     QPos,
                     nodeToQuery=None):
        """right click menu for queie qlistwidget

        Args:
            QPos (QtCore.QPos): due to the signal, used
            for menu placement

        Returns:
            n/a: n/a
        """
        if nodeToQuery is None:
            nodeToQuery = str(driverLineEdit.text())
        self.attrMenu = QtWidgets.QMenu()
        parentPosition = attributeListWidget.mapToGlobal(QtCore.QPoint(0, 0))
        menu_item_01 = self.attrMenu.addAction("Display Keyable")
        menu_item_01.setToolTip("Show Keyable Attributes")
        menu_item_01.triggered.connect(partial(self.updateAttributeDisplay,
                                               attributeListWidget,
                                               nodeToQuery,
                                               attrType="keyable"))
        menu2Label = "Display ChannelBox (Non Keyable)"
        menu_item_02 = self.attrMenu.addAction(menu2Label)
        menu2tip = "Show attributes in ChannelBox that are not keyable."
        menu_item_02.setToolTip(menu2tip)
        menu_item_02.triggered.connect(partial(self.updateAttributeDisplay,
                                               attributeListWidget,
                                               nodeToQuery,
                                               attrType="cb"))
        menu_item_03 = self.attrMenu.addAction("Display All")
        menu_item_03.setToolTip("GIVE ME ALL!")
        menu_item_03.triggered.connect(partial(self.updateAttributeDisplay,
                                               attributeListWidget,
                                               nodeToQuery,
                                               attrType="all"))
        self.attrMenu.move(parentPosition + QPos)
        self.attrMenu.show()

    def refreshRbfSetupList(self, setToSelection=False):
        self.rbf_cbox.blockSignals(True)
        self.rbf_cbox.clear()
        addNewOfType = ["New {} setup".format(rbf)
                        for rbf in rbf_node.SUPPORTED_RBF_NODES]
        self.updateAllSetupsInfo()
        addNewOfType.extend(sorted(self.allSetupsInfo.keys()))
        self.rbf_cbox.addItems(addNewOfType)
        if setToSelection:
            selectionIndex = self.rbf_cbox.findText(setToSelection)
            self.rbf_cbox.setCurrentIndex(selectionIndex)
        else:
            self.lockDriverWidgets(lock=False)
        self.rbf_cbox.blockSignals(False)

    def clearDrivenTabs(self):
        toRemove = []
        tabIndicies = self.rbfTabWidget.count()
        for index in range(tabIndicies):
            tabWidget = self.rbfTabWidget.widget(index)
            toRemove.append(tabWidget)
        self.rbfTabWidget.clear()
        [t.deleteLater() for t in toRemove]

    def refresh(self,
                rbfSelection=True,
                driverSelection=True,
                drivenSelection=True,
                currentRBFSetupNodes=True):
        if rbfSelection:
            self.refreshRbfSetupList()
        if driverSelection:
            self.controlLineEdit.clear()
            self.driverLineEdit.clear()
            self.driver_attributes_widget.clear()
            self.__deleteAssociatedWidgetsMaya(self.driverPoseTableWidget)
            self.__deleteAssociatedWidgets(self.driverPoseTableWidget)
            self.driverPoseTableWidget.clear()
        if drivenSelection:
            self.clearDrivenTabs()
        if currentRBFSetupNodes:
            self.currentRBFSetupNodes = []

    def recallDriverPose(self, indexSelected):
        if not self.currentRBFSetupNodes:
            return
        self.currentRBFSetupNodes[0].recallDriverPose(indexSelected)

    def setConsistentHeaderSelection(self, hIndex):
        self.driverPoseTableWidget.blockSignals(True)
        self.driverPoseTableWidget.selectRow(hIndex)
        self.driverPoseTableWidget.blockSignals(False)
        for index in range(self.rbfTabWidget.count()):
            drivenWidget = self.rbfTabWidget.widget(index)
            drivenTableWidget = getattr(drivenWidget, "tableWidget")
            drivenTableWidget.blockSignals(True)
            drivenTableWidget.selectRow(hIndex)
            drivenTableWidget.blockSignals(False)
        self.setEditDeletePoseEnabled(enable=True)

    def setEditDeletePoseEnabled(self, enable=False):
        self.editPoseButton.setEnabled(enable)
        self.deletePoseButton.setEnabled(enable)

    def setDriverControlOnSetup(self, controlName):
        for rbfNode in self.currentRBFSetupNodes:
            rbfNode.setDriverControlAttr(controlName)

    def setSetupDriverControl(self, lineEditWidget):
        # previousControl = lineEditWidget.text()
        if not self.currentRBFSetupNodes:
            self.setNodeToField(lineEditWidget)
        elif self.currentRBFSetupNodes:
            textA = "Do you want to change the Control for setup?"
            textB = "This Control that will be used for recalling poses."
            decision = promptAcceptance(self, textA, textB)
            if decision in [QtWidgets.QMessageBox.Discard,
                            QtWidgets.QMessageBox.Cancel]:
                return
            controlName = self.setNodeToField(lineEditWidget)
            self.setDriverControlOnSetup(controlName)

    def getRBFNodesInfo(self, rbfNodes):
        weightNodeInfo_dict = {}
        for rbf in rbfNodes:
            weightNodeInfo_dict[rbf.name] = rbf.getNodeInfo()
        return weightNodeInfo_dict

    def importNodes(self):
        sceneFilePath = mc.file(sn=True, q=True)
        startDir = os.path.dirname(sceneFilePath)
        filePath = rbf_io.fileDialog(startDir, mode=1)
        if filePath is None:
            return
        rbf_io.importRBFs(filePath)
        self.refresh(rbfSelection=True,
                     driverSelection=True,
                     drivenSelection=True,
                     currentRBFSetupNodes=True)

    def exportNodes(self, allSetups=True):
        # TODO WHEN NEW RBF NODE TYPES ARE ADDED, THIS WILL NEED TO BE RETOOLED
        nodesToExport = []
        if allSetups:
            [nodesToExport.extend(v) for k, v,
             in self.allSetupsInfo.iteritems()]
        else:
            nodesToExport = self.currentRBFSetupNodes

        nodesToExport = [n.name for n in nodesToExport]
        sceneFilePath = mc.file(sn=True, q=True)
        startDir = os.path.dirname(sceneFilePath)
        filePath = rbf_io.fileDialog(startDir, mode=0)
        if filePath is None:
            return
        rbf_io.exportRBFs(nodesToExport, filePath)

    def gatherMirroredInfo(self, rbfNodes):
        mirrorWeightInfo = {}
        for rbfNode in rbfNodes:
            weightInfo = rbfNode.getNodeInfo()
            # connections -----------------------------------------------------
            mrConnections = []
            for pairs in weightInfo["connections"]:
                mrConnections.append([mString.convertRLName(pairs[0]),
                                     mString.convertRLName(pairs[1])])
            weightInfo["connections"] = mrConnections
            # drivenControlName -----------------------------------------------
            mrDrvnCtl = mString.convertRLName(weightInfo["drivenControlName"])
            weightInfo["drivenControlName"] = mrDrvnCtl
            # drivenNode ------------------------------------------------------
            weightInfo["drivenNode"] = [mString.convertRLName(n) for n
                                        in weightInfo["drivenNode"]]
            # driverControl ---------------------------------------------------
            mrDrvrCtl = mString.convertRLName(weightInfo["driverControl"])
            weightInfo["driverControl"] = mrDrvrCtl
            # driverNode ------------------------------------------------------
            weightInfo["driverNode"] = [mString.convertRLName(n) for n
                                        in weightInfo["driverNode"]]
            # setupName -------------------------------------------------------
            mrSetupName = mString.convertRLName(weightInfo["setupName"])
            if mrSetupName == weightInfo["setupName"]:
                mrSetupName = "{}{}".format(mrSetupName, MIRROR_SUFFIX)
            weightInfo["setupName"] = mrSetupName
            # transformNode ---------------------------------------------------
                # name
                # parent
            tmp = weightInfo["transformNode"]["name"]
            mrTransformName = mString.convertRLName(tmp)
            weightInfo["transformNode"]["name"] = mrTransformName

            tmp = weightInfo["transformNode"]["parent"]
            if tmp is None:
                mrTransformPar = None
            else:
                mrTransformPar = mString.convertRLName(tmp)
            weightInfo["transformNode"]["parent"] = mrTransformPar
            # name ------------------------------------------------------------
            mirrorWeightInfo[mString.convertRLName(rbfNode.name)] = weightInfo
        return mirrorWeightInfo

    def getMirroredSetupTargetsInfo(self):
        setupTargetInfo_dict = {}
        for rbfNode in self.currentRBFSetupNodes:
            mrRbfNode = mString.convertRLName(rbfNode.name)
            mrRbfNode = sortRBF(mrRbfNode)
            drivenNode = rbfNode.getDrivenNode()[0]
            drivenControlNode = rbfNode.getConnectedRBFToggleNode()
            mrDrivenControlNode = mString.convertRLName(drivenControlNode)
            mrDrivenControlNode = pm.PyNode(mrDrivenControlNode)
            setupTargetInfo_dict[pm.PyNode(drivenNode)] = [mrDrivenControlNode,
                                                           mrRbfNode]
        return setupTargetInfo_dict

    def mirrorSetup(self):
        if not self.currentRBFSetupNodes:
            return
        aRbfNode = self.currentRBFSetupNodes[0]
        mirrorWeightInfo = self.gatherMirroredInfo(self.currentRBFSetupNodes)
        mrRbfType = aRbfNode.rbfType
        poseIndices = len(aRbfNode.getPoseInfo()["poseInput"])
        rbfModule = rbf_io.RBF_MODULES[mrRbfType]
        createdNodes = rbfModule.createRBFFromInfo(mirrorWeightInfo)
        setupTargetInfo_dict = self.getMirroredSetupTargetsInfo()
        nameSpace = synoptic.utils.getNamespace(aRbfNode.name)
        mrRbfNodes = [v[1] for k, v in setupTargetInfo_dict.iteritems()]
        [v.setToggleRBFAttr(0) for v in mrRbfNodes]
        mrDriverNode = mrRbfNodes[0].getDriverNode()[0]
        mrDriverAttrs = mrRbfNodes[0].getDriverNodeAttributes()
        driverControl = aRbfNode.getDriverControlAttr()
        driverControl = pm.PyNode(driverControl)
        for index in range(poseIndices):
            aRbfNode.recallDriverPose(index)
            synoptic.utils.mirrorPose(flip=False, nodes=[driverControl])
            mrData = []
            for srcNode, dstValues in setupTargetInfo_dict.iteritems():
                mrData.extend(synoptic.utils.calculateMirrorData(srcNode,
                                                                 dstValues[0]))
            for entry in mrData:
                synoptic.utils.applyMirror(nameSpace, entry)

            poseInputs = rbf_node.getMultipleAttrs(mrDriverNode, mrDriverAttrs)
            for mrRbfNode in mrRbfNodes:
                poseValues = mrRbfNode.getPoseValues(resetDriven=True)
                mrRbfNode.addPose(poseInput=poseInputs,
                                  poseValue=poseValues,
                                  posesIndex=index)
                mrRbfNode.forceEvaluation()
        [v.setToggleRBFAttr(1) for v in mrRbfNodes]
        setupName, rbfType = self.getSelectedSetup()
        self.refreshRbfSetupList(setToSelection=setupName)
        mc.select(cl=True)

    def hideMenuBar(self, x, y):
        if x < 100 and y < 50:
            self.menuBar().show()
        else:
            self.menuBar().hide()

    def tabConextMenu(self, qPoint):
        tabIndex = self.rbfTabWidget.tabBar().tabAt(qPoint)
        if tabIndex == -1:
            return
        selWidget = self.rbfTabWidget.widget(tabIndex)
        rbfNode = getattr(selWidget, "rbfNode")
        tabMenu = QtWidgets.QMenu(self)
        parentPosition = self.rbfTabWidget.mapToGlobal(QtCore.QPoint(0, 0))
        menu_item_01 = tabMenu.addAction("Select {}".format(rbfNode))
        menu_item_01.triggered.connect(partial(mc.select, rbfNode))
        partialObj_selWdgt = partial(self.rbfTabWidget.setCurrentWidget,
                                     selWidget)
        menu_item_01.triggered.connect(partialObj_selWdgt)
        tabMenu.move(parentPosition + qPoint)
        tabMenu.show()

    def reevalluateAllNodes(self):
        """for evaluation on all nodes in any setup. In case of manual editing
        """
        for name, rbfNodes in self.allSetupsInfo.iteritems():
            [rbfNode.forceEvaluation() for rbfNode in rbfNodes]
        print "All Nodes have been Re-evaluated"

    # signal management -------------------------------------------------------
    def connectSignals(self):
        self.rbf_cbox.currentIndexChanged.connect(self.displayRBFSetupInfo)

        self.rbf_refreshButton.clicked.connect(self.refresh)

        self.driverLineEdit.clicked.connect(selectNode)
        self.controlLineEdit.clicked.connect(selectNode)
        header = self.driverPoseTableWidget.verticalHeader()
        header.sectionClicked.connect(self.setConsistentHeaderSelection)
        header.sectionClicked.connect(self.recallDriverPose)
        selDelFunc = self.setEditDeletePoseEnabled
        self.driverPoseTableWidget.itemSelectionChanged.connect(selDelFunc)
        self.addRbfButton.clicked.connect(self.addRBFToSetup)

        self.addPoseButton.clicked.connect(self.addPose)
        self.editPoseButton.clicked.connect(self.editPose)
        self.deletePoseButton.clicked.connect(self.deletePose)
        partialObj = partial(self.setSetupDriverControl, self.controlLineEdit)
        self.setControlButton.clicked.connect(partialObj)
        self.setDriverButton.clicked.connect(partial(self.setNodeToField,
                                                     self.driverLineEdit))
        partialObj = partial(self.updateAttributeDisplay,
                             self.driver_attributes_widget)
        self.driverLineEdit.textChanged.connect(partialObj)
        partialObj = partial(self.attrListMenu,
                             self.driver_attributes_widget,
                             self.driverLineEdit)
        customMenu = self.driver_attributes_widget.customContextMenuRequested
        customMenu.connect(partialObj)
        tabBar = self.rbfTabWidget.tabBar()
        tabBar.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        tabBar.customContextMenuRequested.connect(self.tabConextMenu)
        tabBar.tabCloseRequested.connect(self.removeRBFFromSetup)

    # broken down widgets -----------------------------------------------------
    def createSetupSelectorWidget(self):
        setRBFLayout = QtWidgets.QHBoxLayout()
        rbfLabel = QtWidgets.QLabel("Select RBF Setup:")
        rbf_cbox = QtWidgets.QComboBox()
        rbf_refreshButton = QtWidgets.QPushButton("Refresh")
        rbf_cbox.setFixedHeight(self.genericWidgetHight)
        rbf_refreshButton.setMaximumWidth(80)
        rbf_refreshButton.setFixedHeight(self.genericWidgetHight - 1)
        setRBFLayout.addWidget(rbfLabel)
        setRBFLayout.addWidget(rbf_cbox, 1)
        setRBFLayout.addWidget(rbf_refreshButton)
        return setRBFLayout, rbf_cbox, rbf_refreshButton

    def selectNodeWidget(self, label, buttonLabel="Select"):
        nodeLayout = QtWidgets.QHBoxLayout()
        nodeLabel = QtWidgets.QLabel(label)
        nodeLabel.setFixedWidth(40)
        nodeLineEdit = ClickableLineEdit()
        nodeLineEdit.setReadOnly(True)
        nodeSelectButton = QtWidgets.QPushButton(buttonLabel)
        nodeLineEdit.setFixedHeight(self.genericWidgetHight)
        nodeSelectButton.setFixedHeight(self.genericWidgetHight)
        nodeLayout.addWidget(nodeLabel)
        nodeLayout.addWidget(nodeLineEdit, 1)
        nodeLayout.addWidget(nodeSelectButton)
        return nodeLayout, nodeLineEdit, nodeSelectButton

    def labelListWidget(self, label, horizontal=True):
        if horizontal:
            attributeLayout = QtWidgets.QHBoxLayout()
        else:
            attributeLayout = QtWidgets.QVBoxLayout()
        attributeLabel = QtWidgets.QLabel(label)
        attributeListWidget = QtWidgets.QListWidget()
        attributeLayout.addWidget(attributeLabel)
        attributeLayout.addWidget(attributeListWidget)
        return attributeLayout, attributeListWidget

    def addRemoveButtonWidget(self, label1, label2, horizontal=True):
        if horizontal:
            addRemoveLayout = QtWidgets.QHBoxLayout()
        else:
            addRemoveLayout = QtWidgets.QVBoxLayout()
        addAttributesButton = QtWidgets.QPushButton(label1)
        removeAttributesButton = QtWidgets.QPushButton(label2)
        addRemoveLayout.addWidget(addAttributesButton)
        addRemoveLayout.addWidget(removeAttributesButton)
        return addRemoveLayout, addAttributesButton, removeAttributesButton

    def createDriverAttributeWidget(self):
        driverMainLayout = QtWidgets.QVBoxLayout()
        #  --------------------------------------------------------------------
        (driverLayout,
         driverLineEdit,
         driverSelectButton) = self.selectNodeWidget("Driver",
                                                     buttonLabel="Set")
        #  --------------------------------------------------------------------
        (controlLayout,
         controlLineEdit,
         setControlButton) = self.selectNodeWidget("Control",
                                                   buttonLabel="Set")
        #  --------------------------------------------------------------------
        (attributeLayout,
         attributeListWidget) = self.labelListWidget(label="Select Attributes",
                                                     horizontal=False)
        selType = QtWidgets.QAbstractItemView.ExtendedSelection
        attributeListWidget.setSelectionMode(selType)
        attributeListWidget.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        #  --------------------------------------------------------------------
        driverMainLayout.addLayout(driverLayout, 0)
        driverMainLayout.addLayout(controlLayout, 0)
        driverMainLayout.addLayout(attributeLayout, 0)
        return [controlLineEdit,
                setControlButton,
                driverLineEdit,
                driverSelectButton,
                attributeListWidget,
                driverMainLayout]

    def createDrivenAttributeWidget(self):
        drivenWidget = QtWidgets.QWidget()
        drivenMainLayout = QtWidgets.QHBoxLayout()
        drivenMainLayout.setContentsMargins(0, 10, 0, 10)
        drivenMainLayout.setSpacing(9)
        driverSetLayout = QtWidgets.QVBoxLayout()
        drivenMainLayout.addLayout(driverSetLayout)
        drivenWidget.setLayout(drivenMainLayout)
        #  --------------------------------------------------------------------
        (driverLayout,
         driverLineEdit,
         driverSelectButton) = self.selectNodeWidget("Driven",
                                                     buttonLabel="Select")
        driverSelectButton.hide()
        #  --------------------------------------------------------------------
        (attributeLayout,
         attributeListWidget) = self.labelListWidget(label="Attributes",
                                                     horizontal=False)
        attributeLayout.setSpacing(1)
        selType = QtWidgets.QAbstractItemView.ExtendedSelection
        attributeListWidget.setSelectionMode(selType)
        attributeListWidget.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        #  --------------------------------------------------------------------
        addBtnText = "Add selected Attributes"
        removeBtnText = "Remove selected Attributes"
        (addRemoveLayout,
         addAttributesButton,
         removeAttributesButton) = self.addRemoveButtonWidget(addBtnText,
                                                              removeBtnText,
                                                              horizontal=False)
        #  --------------------------------------------------------------------
        tableWidget = self.createTableWidget()

        driverSetLayout.addLayout(driverLayout, 0)
        driverSetLayout.addLayout(attributeLayout, 0)
        drivenMainLayout.addWidget(tableWidget, 1)
        return [driverLineEdit,
                driverSelectButton,
                attributeListWidget,
                tableWidget,
                drivenWidget]

    def createTableWidget(self):
        tableWidget = QtWidgets.QTableWidget()
        tableWidget.insertColumn(0)
        tableWidget.insertRow(0)
        tableWidget.setHorizontalHeaderLabels(["Pose Value"])
        tableWidget.setVerticalHeaderLabels(["Pose #0"])
        return tableWidget

    def createTabWidget(self):
        tabLayout = QtWidgets.QTabWidget()
        tabLayout.setContentsMargins(0, 0, 0, 0)
        tabBar = TabBar()
        tabLayout.setTabBar(tabBar)
        tabBar.setTabsClosable(True)
        return tabLayout

    def createOptionsButtonsWidget(self):
        optionsLayout = QtWidgets.QHBoxLayout()
        addPoseButton = QtWidgets.QPushButton("Add Pose")
        addPoseButton.setFixedHeight(self.genericWidgetHight)
        EditPoseButton = QtWidgets.QPushButton("Edit Pose")
        EditPoseButton.setFixedHeight(self.genericWidgetHight)
        deletePoseButton = QtWidgets.QPushButton("Delete Pose")
        deletePoseButton.setFixedHeight(self.genericWidgetHight)
        optionsLayout.addWidget(addPoseButton)
        optionsLayout.addWidget(EditPoseButton)
        optionsLayout.addWidget(deletePoseButton)
        return (optionsLayout,
                addPoseButton,
                EditPoseButton,
                deletePoseButton)

    def createMenuBar(self, hideMenuBar=False):
        mainMenuBar = QtWidgets.QMenuBar()
        mainMenuBar.setContentsMargins(0, 0, 0, 0)
        file = mainMenuBar.addMenu("File")
        file.addAction("Re-evaluate Nodes", self.reevalluateAllNodes)
        file.addAction("Export All", self.exportNodes)
        file.addAction("Export current setup", partial(self.exportNodes,
                                                       allSetups=False))
        file.addAction("Import RBFs", partial(self.importNodes))
        file.addSeparator()
        file.addAction("Delete Current Setup", self.__deleteSetup)
        # mirror --------------------------------------------------------------
        mirrorMenu = mainMenuBar.addMenu("Mirror")
        mirrorMenu.addAction("Mirror Setup", self.mirrorSetup)

        # show override -------------------------------------------------------
        additionalFuncDict = getEnvironModules()
        if additionalFuncDict:
            showOverridesMenu = mainMenuBar.addMenu("Show Overrides")
            for k, v in additionalFuncDict.iteritems():
                showOverridesMenu.addAction(k, v)

        if hideMenuBar:
            mainMenuBar.hide()
            self.setMouseTracking(True)
            self.mousePosition.connect(self.hideMenuBar)
        return mainMenuBar

    # main assebly ------------------------------------------------------------

    def createCentralWidget(self):
        centralWidget = QtWidgets.QWidget()
        centralWidgetLayout = QtWidgets.QVBoxLayout()
        centralWidget.setLayout(centralWidgetLayout)
        (rbfLayout,
         self.rbf_cbox,
         self.rbf_refreshButton) = self.createSetupSelectorWidget()
        centralWidgetLayout.addLayout(rbfLayout)
        centralWidgetLayout.addWidget(HLine())
        #  --------------------------------------------------------------------
        driverDrivenLayout = QtWidgets.QHBoxLayout()
        (self.controlLineEdit,
         self.setControlButton,
         self.driverLineEdit,
         self.setDriverButton,
         self.driver_attributes_widget,
         driverLayout) = self.createDriverAttributeWidget()

        self.addRbfButton = QtWidgets.QPushButton("New RBF")
        self.addRbfButton.setFixedHeight(self.genericWidgetHight)
        self.addRbfButton.setStyleSheet("background-color: rgb(23, 158, 131)")
        driverLayout.addWidget(self.addRbfButton)

        self.driverPoseTableWidget = self.createTableWidget()
        driverDrivenLayout.addLayout(driverLayout, 0)
        driverDrivenLayout.addWidget(self.driverPoseTableWidget, 1)
        centralWidgetLayout.addLayout(driverDrivenLayout, 1)
        #  --------------------------------------------------------------------
        self.rbfTabWidget = self.createTabWidget()
        centralWidgetLayout.addWidget(self.rbfTabWidget, 1)
        #  --------------------------------------------------------------------
        (optionsLayout,
         self.addPoseButton,
         self.editPoseButton,
         self.deletePoseButton) = self.createOptionsButtonsWidget()
        self.editPoseButton.setEnabled(False)
        self.deletePoseButton.setEnabled(False)
        centralWidgetLayout.addWidget(HLine())
        centralWidgetLayout.addLayout(optionsLayout)
        return centralWidget

    # overrides ---------------------------------------------------------------
    def mouseMoveEvent(self, event):
        if event.type() == QtCore.QEvent.MouseMove:
            if event.buttons() == QtCore.Qt.NoButton:
                pos = event.pos()
                self.mousePosition.emit(pos.x(), pos.y())

    def closeEvent(self, evnt):
        self.__deleteAssociatedWidgetsMaya(self.driverPoseTableWidget)
        self.__deleteAssociatedWidgets(self.driverPoseTableWidget)
        super(RBFManagerUI, self).closeEvent(evnt)
