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

##########################################################
# GLOBAL
##########################################################
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

# guide info
AUTHOR = "Jeremie Passerin, Miquel Campos"
URL = "www.jeremiepasserin.com, www.miquletd.com"
EMAIL = "geerem@hotmail.com, hello@miquel-campos.com"
VERSION = [1,0,0]
TYPE = "mouth_01"
NAME = "mouth"
DESCRIPTION = "mouth lips and jaw"

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
        self.save_transform = ["root", "rotcenter", "lipup", "liplow", "jaw"]



    # =====================================================
    ## Add more object to the object definition list.
    # @param self
    def addObjects(self):

        #eye guide
        self.root = self.addRoot()
        vTemp = tra.getOffsetPosition( self.root, [0,0,1])
        self.rotcenter = self.addLoc("rotcenter", self.root, vTemp)
        vTemp = tra.getOffsetPosition( self.root, [0,.3,1.3])
        self.lipup = self.addLoc("lipup", self.rotcenter, vTemp)
        vTemp = tra.getOffsetPosition( self.root, [0,-.3,1.3])
        self.liplow = self.addLoc("liplow", self.rotcenter, vTemp)
        vTemp = tra.getOffsetPosition( self.root, [0,-2,2])
        self.jaw = self.addLoc("jaw", self.root, vTemp)

        centers = [self.root, self.rotcenter]
        self.dispcrv = self.addDispCurve("crv", centers)

        centers = [self.lipup, self.rotcenter]
        self.dispcrv = self.addDispCurve("crv", centers)

        centers = [self.liplow, self.rotcenter]
        self.dispcrv = self.addDispCurve("crv", centers)

        centers = [self.root, self.jaw]
        self.dispcrv = self.addDispCurve("crv", centers)



    # =====================================================
    ## Add more parameter to the parameter definition list.
    # @param self
    def addParameters(self):

        self.pUseIndex       = self.addParam("useIndex", "bool", False)
        self.pParentJointIndex = self.addParam("parentJointIndex", "long", -1, None, None)


        return


##########################################################
# Setting Page
##########################################################


class componentSettings(MayaQWidgetDockableMixin, componentMainSettings):

    def __init__(self, parent = None):
        self.toolName = TYPE
        # Delete old instances of the componet settings window.
        gqt.deleteInstances(self, MayaQDockWidget)

        super(self.__class__, self).__init__(parent = parent)

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
        self.resize(280, 350)

    def create_componentControls(self):
        return
        

    def populate_componentControls(self):
        """
        Populate the controls values from the custom attributes of the component.

        """
        return

    def create_componentLayout(self):

        self.settings_layout = QtWidgets.QVBoxLayout()
        self.settings_layout.addWidget(self.tabs)
        self.settings_layout.addWidget(self.close_button)

        self.setLayout(self.settings_layout)

    def create_componentConnections(self):
        return

    def dockCloseEventTriggered(self):
        gqt.deleteInstances(self, MayaQDockWidget)