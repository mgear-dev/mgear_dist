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
# pyMel
import pymel.core as pm

# mgear
from mgear.maya.shifter.component.guide import ComponentGuide
import mgear.maya.transform as tra

#Pyside
from mgear.maya.shifter.component.guide import componentMainSettings
import mgear.maya.pyqt as gqt
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
from maya.app.general.mayaMixin import MayaQDockWidget
import maya.OpenMayaUI as omui
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()
import settingsUI as sui

# guide info
AUTHOR = "Jeremie Passerin, Miquel Campos"
URL = "www.jeremiepasserin.com, www.miquel-campos.com"
EMAIL = "geerem@hotmail.com, hello@miquel-campos.com"
VERSION = [1,1,0]
TYPE = "spine_ik_02"
NAME = "spine"
DESCRIPTION = """an ik spine with an over top layer of fk controllers
that follow the ik position.
"""

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
        self.save_transform = ["root", "eff"]
        self.save_blade = ["blade"]

    # =====================================================
    ## Add more object to the object definition list.
    # @param self
    def addObjects(self):

        self.root = self.addRoot()
        vTemp = tra.getOffsetPosition( self.root, [0,4,0])
        self.eff = self.addLoc("eff", self.root, vTemp)
        self.blade = self.addBlade("blade", self.root, self.eff)

        centers = [self.root, self.eff]
        self.dispcrv = self.addDispCurve("crv", centers)

    # =====================================================
    ## Add more parameter to the parameter definition list.
    # @param self
    def addParameters(self):

        # Default values
        self.pPosition = self.addParam("position", "double", 0, 0, 1)
        self.pMaxStretch = self.addParam("maxstretch", "double", 1.5, 1)
        self.pMaxSquash = self.addParam("maxsquash", "double", .5, 0, 1)
        self.pSoftness = self.addParam("softness", "double", 0, 0, 1)
        self.pLockOri = self.addParam("lock_ori", "double", 1, 0, 1)

        # Options
        self.pDivision = self.addParam("division", "long", 5, 3)

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
        self.resize(280, 360)

    def create_componentControls(self):
        return
        

    def populate_componentControls(self):
        """
        Populate the controls values from the custom attributes of the component.

        """
        #populate tab
        self.tabs.insertTab(1, self.settingsTab, "Component Settings")

        #populate component settings
        self.settingsTab.softness_slider.setValue(int(self.root.attr("softness").get()*100))
        self.settingsTab.position_spinBox.setValue(int(self.root.attr("position").get()*100))
        self.settingsTab.position_slider.setValue(int(self.root.attr("position").get()*100))
        self.settingsTab.lockOri_spinBox.setValue(int(self.root.attr("lock_ori").get()*100))
        self.settingsTab.lockOri_slider.setValue(int(self.root.attr("lock_ori").get()*100))
        self.settingsTab.softness_spinBox.setValue(int(self.root.attr("softness").get()*100))
        self.settingsTab.maxStretch_spinBox.setValue(self.root.attr("maxstretch").get())
        self.settingsTab.maxSquash_spinBox.setValue(self.root.attr("maxsquash").get())
        self.settingsTab.division_spinBox.setValue(self.root.attr("division").get())



    def create_componentLayout(self):

        self.settings_layout = QtWidgets.QVBoxLayout()
        self.settings_layout.addWidget(self.tabs)
        self.settings_layout.addWidget(self.close_button)

        self.setLayout(self.settings_layout)

    def create_componentConnections(self):

        self.settingsTab.softness_slider.valueChanged.connect(partial(self.updateSlider, self.settingsTab.softness_slider, "softness"))
        self.settingsTab.softness_spinBox.valueChanged.connect(partial(self.updateSlider, self.settingsTab.softness_spinBox, "softness"))
        self.settingsTab.position_slider.valueChanged.connect(partial(self.updateSlider, self.settingsTab.position_slider, "position"))
        self.settingsTab.position_spinBox.valueChanged.connect(partial(self.updateSlider, self.settingsTab.position_spinBox, "position"))
        self.settingsTab.lockOri_slider.valueChanged.connect(partial(self.updateSlider, self.settingsTab.lockOri_slider, "lock_ori"))
        self.settingsTab.lockOri_spinBox.valueChanged.connect(partial(self.updateSlider, self.settingsTab.lockOri_spinBox, "lock_ori"))
        self.settingsTab.maxStretch_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.maxStretch_spinBox, "maxstretch"))
        self.settingsTab.maxSquash_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.maxSquash_spinBox, "maxsquash"))
        self.settingsTab.division_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.settingsTab.division_spinBox, "division"))
        self.settingsTab.squashStretchProfile_pushButton.clicked.connect(self.setProfile)



    def dockCloseEventTriggered(self):
        gqt.deleteInstances(self, MayaQDockWidget)