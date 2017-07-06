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

#############################################
# GLOBAL
#############################################
from functools import partial

# mgear
from mgear.maya.shifter.component.guide import ComponentGuide

#Pyside
from mgear.maya.shifter.component.guide import componentMainSettings
import mgear.maya.pyqt as gqt
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
from maya.app.general.mayaMixin import MayaQDockWidget
import settingsUI as sui
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


# guide info
AUTHOR = "Jeremie Passerin, Miquel Campos"
URL = "www.jeremiepasserin.com, www.miquel-campos.com"
EMAIL = "geerem@hotmail.com, hello@miquel-campos.com"
VERSION = [1,0,1]
TYPE = "control_01"
NAME = "control"
DESCRIPTION = "Simple controler with space switch and Rot order selection. \nThis component can use the root rotation to place  the control orientation"
##########################################################
# CLASS
##########################################################
class Guide(ComponentGuide):

    compType = TYPE
    compName = NAME
    description = DESCRIPTION

    author = AUTHOR
    url = URL
    email = EMAIL
    version = VERSION

    # =====================================================
    ##
    # @param self
    def postInit(self):
        self.save_transform = ["root"]

    # =====================================================
    ## Add more object to the object definition list.
    # @param self
    def addObjects(self):

        self.root = self.addRoot()


    # =====================================================
    ## Add more parameter to the parameter definition list.
    # @param self
    def addParameters(self):


        self.pIcon = self.addParam("icon", "string", "cube")

        self.pIkRefArray  = self.addParam("ikrefarray",  "string", "")

        self.pJoint = self.addParam("joint", "bool", False)
        self.pJoint = self.addParam("uniScale", "bool", True)

        for s in ["tx", "ty", "tz", "ro", "rx", "ry", "rz", "sx", "sy", "sz"]:
            self.addParam("k_"+s, "bool", True)

        self.pDefault_RotOrder = self.addParam("default_rotorder", "long", 0, 0, 5)
        self.pNeutralRotation = self.addParam("neutralRotation", "bool", True)
        self.pCtlSize = self.addParam("ctlSize", "double", 1 , None, None)
        self.pUseIndex = self.addParam("useIndex", "bool", False)
        self.pParentJointIndex = self.addParam("parentJointIndex", "long", -1, None, None)

        return

##########################################################
# Setting Page
##########################################################

class settingsTab(QtWidgets.QDialog, sui.Ui_Form):

    def __init__(self, parent=None):
        super(settingsTab, self).__init__(parent)
        self.setupUi(self)


class componentSettings(MayaQWidgetDockableMixin, componentMainSettings):

    def __init__(self, parent = None):
        self.toolName = TYPE
        # Delete old instances of the componet settings window.
        gqt.deleteInstances(self, MayaQDockWidget)
        self.iconsList = ['arrow', 'circle', 'compas', 'cross', 'crossarrow', 'cube', 'cubewithpeak', 'cylinder', 'diamond', 'flower', 'null', 'pyramid', 'sphere', 'square']


        super(self.__class__, self).__init__(parent = parent)
        self.settingsTab = settingsTab()


        self.setup_componentSettingWindow()
        self.create_componentControls()
        self.populate_componentControls()
        self.create_componentLayout()
        self.create_componentConnections()

    def setup_componentSettingWindow(self):
        self.mayaMainWindow = gqt.maya_main_window()

        self.setObjectName(self.toolName)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle(TYPE)
        self.resize(280, 520)

    def create_componentControls(self):
        return


    def populate_componentControls(self):
        """
        Populate the controls values from the custom attributes of the component.

        """
        #populate tab
        self.tabs.insertTab(1, self.settingsTab, "Component Settings")

        #populate component settings

        self.populateCheck(self.settingsTab.joint_checkBox, "joint")
        self.populateCheck(self.settingsTab.uniScale_checkBox, "uniScale")
        self.populateCheck(self.settingsTab.neutralRotation_checkBox, "neutralRotation")
        self.settingsTab.ctlSize_doubleSpinBox.setValue(self.root.attr("ctlSize").get())
        sideIndex = self.iconsList.index(self.root.attr("icon").get())
        self.settingsTab.controlShape_comboBox.setCurrentIndex(sideIndex)

        self.populateCheck(self.settingsTab.tx_checkBox, "k_tx")
        self.populateCheck(self.settingsTab.ty_checkBox, "k_ty")
        self.populateCheck(self.settingsTab.tz_checkBox, "k_tz")
        self.populateCheck(self.settingsTab.rx_checkBox, "k_rx")
        self.populateCheck(self.settingsTab.ry_checkBox, "k_ry")
        self.populateCheck(self.settingsTab.rz_checkBox, "k_rz")
        self.populateCheck(self.settingsTab.ro_checkBox, "k_ro")
        self.populateCheck(self.settingsTab.sx_checkBox, "k_sx")
        self.populateCheck(self.settingsTab.sy_checkBox, "k_sy")
        self.populateCheck(self.settingsTab.sz_checkBox, "k_sz")

        self.settingsTab.ro_comboBox.setCurrentIndex(self.root.attr("default_rotorder").get())

        ikRefArrayItems = self.root.attr("ikrefarray").get().split(",")
        for item in ikRefArrayItems:
            self.settingsTab.ikRefArray_listWidget.addItem(item)


    def create_componentLayout(self):

        self.settings_layout = QtWidgets.QVBoxLayout()
        self.settings_layout.addWidget(self.tabs)
        self.settings_layout.addWidget(self.close_button)

        self.setLayout(self.settings_layout)

    def create_componentConnections(self):

        self.settingsTab.joint_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.joint_checkBox, "joint"))
        self.settingsTab.uniScale_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.uniScale_checkBox, "uniScale"))
        self.settingsTab.neutralRotation_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.neutralRotation_checkBox, "neutralRotation"))
        self.settingsTab.ctlSize_doubleSpinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.ctlSize_doubleSpinBox, "ctlSize"))
        self.settingsTab.controlShape_comboBox.currentIndexChanged.connect(partial(self.updateControlShape, self.settingsTab.controlShape_comboBox, self.iconsList, "icon"))

        self.settingsTab.tx_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.tx_checkBox, "k_tx"))
        self.settingsTab.ty_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.ty_checkBox, "k_ty"))
        self.settingsTab.tz_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.tz_checkBox, "k_tz"))
        self.settingsTab.rx_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.rx_checkBox, "k_rx"))
        self.settingsTab.ry_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.ry_checkBox, "k_ry"))
        self.settingsTab.rz_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.rz_checkBox, "k_rz"))
        self.settingsTab.ro_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.ro_checkBox, "k_ro"))
        self.settingsTab.sx_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.sx_checkBox, "k_sx"))
        self.settingsTab.sy_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.sy_checkBox, "k_sy"))
        self.settingsTab.sz_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.sz_checkBox, "k_sz"))

        self.settingsTab.ro_comboBox.currentIndexChanged.connect(partial(self.updateComboBox, self.settingsTab.ro_comboBox, "default_rotorder"))

        self.settingsTab.ikRefArrayAdd_pushButton.clicked.connect(partial(self.addItem2listWidget, self.settingsTab.ikRefArray_listWidget, "ikrefarray"))
        self.settingsTab.ikRefArrayRemove_pushButton.clicked.connect(partial(self.removeSelectedFromListWidget, self.settingsTab.ikRefArray_listWidget, "ikrefarray"))
        self.settingsTab.ikRefArray_listWidget.installEventFilter(self)

    def eventFilter(self, sender, event):
        if event.type() == QtCore.QEvent.ChildRemoved:
            if sender == self.settingsTab.ikRefArray_listWidget:
                self.updateListAttr(sender, "ikrefarray")
            return True
        else:
            return QtWidgets.QDialog.eventFilter(self, sender, event)


    def dockCloseEventTriggered(self):
        gqt.deleteInstances(self, MayaQDockWidget)
