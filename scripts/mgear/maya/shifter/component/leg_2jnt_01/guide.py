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
import mgear.maya.transform as tra

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
VERSION = [1,3,0]
TYPE = "leg_2jnt_01"
NAME = "leg"
DESCRIPTION = "2 bones leg with stretch, roundess, ik/fk..., This component add to div near the knee. with knee pin"

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
        self.save_transform = ["root", "knee", "ankle", "eff"]

    # =====================================================
    ## Add more object to the object definition list.
    # @param self
    def addObjects(self):

        self.root = self.addRoot()
        vTemp = tra.getOffsetPosition( self.root, [0,-3,0.1])
        self.knee = self.addLoc("knee", self.root, vTemp)
        vTemp = tra.getOffsetPosition( self.root, [0,-6,0])
        self.ankle = self.addLoc("ankle", self.knee, vTemp)
        vTemp = tra.getOffsetPosition( self.root, [0,-6, .5])
        self.eff = self.addLoc("eff", self.ankle, vTemp)

        centers = [self.root, self.knee, self.ankle, self.eff]
        self.dispcrv = self.addDispCurve("crv", centers)

    # =====================================================
    ## Add more parameter to the parameter definition list.
    # @param self
    def addParameters(self):

        # Default Values
        self.pBlend       = self.addParam("blend", "double", 1, 0, 1)
        self.pIkRefArray  = self.addParam("ikrefarray", "string", "")
        self.pUpvRefArray = self.addParam("upvrefarray", "string", "")
        self.pUpvRefArray = self.addParam("pinrefarray", "string", "")
        self.pMaxStretch  = self.addParam("maxstretch", "double", 1.5 , 1, None)
        self.pMirrorMid = self.addParam("mirrorMid", "bool", False)

        # Divisions
        self.pDiv0 = self.addParam("div0", "long", 2, 1, None)
        self.pDiv1 = self.addParam("div1", "long", 2, 1, None)

        # FCurves
        self.pSt_profile = self.addFCurveParam("st_profile", [[0,0],[.5,-1],[1,0]])
        self.pSq_profile = self.addFCurveParam("sq_profile", [[0,0],[.5,1],[1,0]])

        self.pUseIndex       = self.addParam("useIndex", "bool", False)
        self.pParentJointIndex = self.addParam("parentJointIndex", "long", -1, None, None)

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
        self.resize(280, 780)

    def create_componentControls(self):
        return


    def populate_componentControls(self):
        """
        Populate the controls values from the custom attributes of the component.

        """
        #populate tab
        self.tabs.insertTab(1, self.settingsTab, "Component Settings")

        #populate component settings
        self.settingsTab.ikfk_slider.setValue(int(self.root.attr("blend").get()*100))
        self.settingsTab.ikfk_spinBox.setValue(int(self.root.attr("blend").get()*100))
        self.settingsTab.maxStretch_spinBox.setValue(self.root.attr("maxstretch").get())
        self.populateCheck(self.settingsTab.mirrorMid_checkBox, "mirrorMid")
        self.settingsTab.div0_spinBox.setValue(self.root.attr("div0").get())
        self.settingsTab.div1_spinBox.setValue(self.root.attr("div1").get())
        ikRefArrayItems = self.root.attr("ikrefarray").get().split(",")
        for item in ikRefArrayItems:
            self.settingsTab.ikRefArray_listWidget.addItem(item)
        upvRefArrayItems = self.root.attr("upvrefarray").get().split(",")
        for item in upvRefArrayItems:
            self.settingsTab.upvRefArray_listWidget.addItem(item)
        pinRefArrayItems = self.root.attr("pinrefarray").get().split(",")
        for item in pinRefArrayItems:
            self.settingsTab.pinRefArray_listWidget.addItem(item)


    def create_componentLayout(self):

        self.settings_layout = QtWidgets.QVBoxLayout()
        self.settings_layout.addWidget(self.tabs)
        self.settings_layout.addWidget(self.close_button)

        self.setLayout(self.settings_layout)

    def create_componentConnections(self):

        self.settingsTab.ikfk_slider.valueChanged.connect(partial(self.updateSlider, self.settingsTab.ikfk_slider, "blend"))
        self.settingsTab.ikfk_spinBox.valueChanged.connect(partial(self.updateSlider, self.settingsTab.ikfk_spinBox, "blend"))
        self.settingsTab.maxStretch_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.maxStretch_spinBox, "maxstretch"))
        self.settingsTab.div0_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.div0_spinBox, "div0"))
        self.settingsTab.div1_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.div1_spinBox, "div1"))
        self.settingsTab.squashStretchProfile_pushButton.clicked.connect(self.setProfile)
        self.settingsTab.mirrorMid_checkBox.stateChanged.connect(partial(self.updateCheck, self.settingsTab.mirrorMid_checkBox, "mirrorMid"))

        self.settingsTab.ikRefArrayAdd_pushButton.clicked.connect(partial(self.addItem2listWidget, self.settingsTab.ikRefArray_listWidget, "ikrefarray"))
        self.settingsTab.ikRefArrayRemove_pushButton.clicked.connect(partial(self.removeSelectedFromListWidget, self.settingsTab.ikRefArray_listWidget, "ikrefarray"))
        self.settingsTab.ikRefArray_copyRef_pushButton.clicked.connect(partial(self.copyFromListWidget, self.settingsTab.upvRefArray_listWidget, self.settingsTab.ikRefArray_listWidget, "ikrefarray"))
        self.settingsTab.ikRefArray_listWidget.installEventFilter(self)

        self.settingsTab.upvRefArrayAdd_pushButton.clicked.connect(partial(self.addItem2listWidget, self.settingsTab.upvRefArray_listWidget, "upvrefarray"))
        self.settingsTab.upvRefArrayRemove_pushButton.clicked.connect(partial(self.removeSelectedFromListWidget, self.settingsTab.upvRefArray_listWidget, "upvrefarray"))
        self.settingsTab.upvRefArray_copyRef_pushButton.clicked.connect(partial(self.copyFromListWidget, self.settingsTab.ikRefArray_listWidget, self.settingsTab.upvRefArray_listWidget, "upvrefarray"))
        self.settingsTab.upvRefArray_listWidget.installEventFilter(self)

        self.settingsTab.pinRefArrayAdd_pushButton.clicked.connect(partial(self.addItem2listWidget, self.settingsTab.pinRefArray_listWidget, "pinrefarray"))
        self.settingsTab.pinRefArrayRemove_pushButton.clicked.connect(partial(self.removeSelectedFromListWidget, self.settingsTab.pinRefArray_listWidget, "pinrefarray"))
        self.settingsTab.pinRefArray_copyRef_pushButton.clicked.connect(partial(self.copyFromListWidget, self.settingsTab.ikRefArray_listWidget, self.settingsTab.pinRefArray_listWidget, "pinrefarray"))
        self.settingsTab.pinRefArray_listWidget.installEventFilter(self)

    def eventFilter(self, sender, event):
        if event.type() == QtCore.QEvent.ChildRemoved:
            if sender == self.settingsTab.ikRefArray_listWidget:
                self.updateListAttr(sender, "ikrefarray")
            elif sender == self.settingsTab.upvRefArray_listWidget:
                self.updateListAttr(sender, "upvrefarray")
            elif sender == self.settingsTab.pinRefArray_listWidget:
                self.updateListAttr(sender, "pinrefarray")
            return True
        else:
            return QtWidgets.QDialog.eventFilter(self, sender, event)



    def dockCloseEventTriggered(self):
        gqt.deleteInstances(self, MayaQDockWidget)
