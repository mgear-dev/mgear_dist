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
import os

import maya.cmds as cmds
import maya.OpenMayaUI as mui
import pymel.core as pm

from maya.app.general.mayaMixin import MayaQDockWidget
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
import mgear.maya.pyqt as gqt
import mgear.maya.utils
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


# TAB_PATH = os.path.join(os.path.dirname(__file__), "tabs")
SYNOPTIC_WIDGET_NAME = "synoptic_view"
SYNOPTIC_ENV_KEY = "MGEAR_SYNOPTIC_PATH"

SYNOPTIC_DIRECTORIES = mgear.maya.utils.gatherCustomModuleDirectories(
            SYNOPTIC_ENV_KEY,
            os.path.join(os.path.dirname(__file__), "tabs"))

##################################################
# OPEN
##################################################
def open(*args):

    gqt.showDialog(Synoptic)


def importTab(tabName):
    import mgear.maya.synoptic as syn
    dirs = syn.SYNOPTIC_DIRECTORIES
    defFmt = "mgear.maya.synoptic.tabs.{}"
    customFmt = "{0}.{1}"

    module = mgear.maya.utils.importFromStandardOrCustomDirectories(dirs, defFmt, customFmt, tabName)
    return module


##################################################
# SYNOPTIC
##################################################
class Synoptic(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    def __init__(self, parent=None):
        self.toolName = SYNOPTIC_WIDGET_NAME
        # Delete old instances of the componet settings window.
        gqt.deleteInstances(self, MayaQDockWidget)
        super(Synoptic, self).__init__(parent)
        self.create_widgets()

    def create_widgets(self):

        # Widgets
        self.model_list = QtWidgets.QComboBox()
        self.model_list.setObjectName("model_list")
        self.refresh_button = QtWidgets.QPushButton("Refresh")
        self.refresh_button.setObjectName("refresh_button")
        self.tabs = QtWidgets.QTabWidget()
        self.tabs.setObjectName("synoptic_tab")

        # Layout
        self.setObjectName(SYNOPTIC_WIDGET_NAME)

        self.vbox = QtWidgets.QVBoxLayout(self)
        self.hbox = QtWidgets.QHBoxLayout(self)

        self.vbox.addLayout(self.hbox)
        self.hbox.addWidget(self.model_list)
        self.hbox.addWidget(self.refresh_button)

        #Container Widget
        self.scrollWidget = QtWidgets.QWidget()
        self.scrollWidget.setFixedHeight(1024)
        self.scrollWidget.setFixedWidth(375)
        #Layout of Container Widget
        self.scrollLayout = QtWidgets.QVBoxLayout(self)
        self.scrollLayout.addWidget(self.tabs)
        self.scrollWidget.setLayout(self.scrollLayout)

        #Scroll Area Properties
        self.scroll = QtWidgets.QScrollArea()
        self.scroll.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOn)
        self.scroll.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.scroll.setWidget(self.scrollWidget)

        #Scroll Area Layer add
        self.vbox.addWidget(self.scroll)
        # self.setLayout(self.vbox)

        # Connect Signal
        self.refresh_button.clicked.connect(self.updateModelList)
        self.model_list.currentIndexChanged.connect(self.updateTabs)

        # Initialise
        self.updateModelList()
        self.updateTabs()

    # Singal Methods =============================
    def updateModelList(self):
        rig_models = [item for item in pm.ls(transforms=True) if item.hasAttr("is_rig")]
        self.model_list.clear()
        for item in rig_models:
            self.model_list.addItem(item.name(), item.name() )

    def updateTabs(self):
        self.tabs.clear()
        defPath = os.environ.get("MGEAR_SYNOPTIC_PATH", None)

        tab_names = pm.ls(self.model_list.currentText())[0].getAttr("synoptic").split(",")

        for i, tab_name in enumerate(tab_names):
            try:
                if tab_name:
                    module = importTab(tab_name)
                    SynopticTab = getattr(module , "SynopticTab")

                    tab = SynopticTab()
                    self.tabs.insertTab(i, tab, tab_name)
                else:
                    pm.displayWarning("No synoptic tabs for %s"%self.model_list.currentText())
            except:
                import traceback
                traceback.print_exc()
                pm.displayError("Synoptic tab: %s Loading fail"%tab_name)
