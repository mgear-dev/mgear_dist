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

# import maya.OpenMayaUI as mui
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
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose)

    def create_widgets(self):
        self.setupUi()

        # Connect Signal
        self.refresh_button.clicked.connect(self.updateModelList)
        self.model_list.currentIndexChanged.connect(self.updateTabs)

        # Initialise
        self.updateModelList()
        self.updateTabs()

    def setupUi(self):
        # Widgets
        self.setObjectName(SYNOPTIC_WIDGET_NAME)
        self.resize(560, 775)

        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.sizePolicy().hasHeightForWidth())
        self.setSizePolicy(sizePolicy)
        self.setMinimumSize(QtCore.QSize(0, 0))

        self.gridLayout_2 = QtWidgets.QGridLayout(self)
        self.gridLayout_2.setContentsMargins(0, 0, 0, 0)
        self.gridLayout_2.setObjectName("gridLayout_2")

        self.mainContainer = QtWidgets.QGroupBox(self)

        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.mainContainer.sizePolicy().hasHeightForWidth())

        self.mainContainer.setSizePolicy(sizePolicy)
        self.mainContainer.setMinimumSize(QtCore.QSize(0, 0))
        self.mainContainer.setObjectName("mainContainer")

        self.gridLayout_3 = QtWidgets.QGridLayout(self.mainContainer)
        self.gridLayout_3.setContentsMargins(0, 0, 0, 0)
        self.gridLayout_3.setObjectName("gridLayout_3")

        # header boxies
        self.hbox = QtWidgets.QHBoxLayout()
        self.hbox.setContentsMargins(5, 5, 5, 5)
        self.hbox.setObjectName("hbox")

        self.model_list = QtWidgets.QComboBox(self.mainContainer)
        self.model_list.setObjectName("model_list")
        self.model_list.setMinimumSize(QtCore.QSize(0, 23))

        self.refresh_button = QtWidgets.QPushButton(self.mainContainer)
        self.refresh_button.setObjectName("refresh_button")
        self.refresh_button.setText("Refresh")

        self.hbox.addWidget(self.model_list)
        self.hbox.addWidget(self.refresh_button)
        self.gridLayout_3.addLayout(self.hbox, 0, 0, 1, 1)

        # synoptic main area
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.scrollArea = QtWidgets.QScrollArea(self.mainContainer)

        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.scrollArea.sizePolicy().hasHeightForWidth())

        self.scrollArea.setSizePolicy(sizePolicy)
        self.scrollArea.setFocusPolicy(QtCore.Qt.NoFocus)
        self.scrollArea.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
        self.scrollArea.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
        self.scrollArea.setWidgetResizable(True)
        self.scrollArea.setAlignment(QtCore.Qt.AlignCenter)
        self.scrollArea.setObjectName("scrollArea")

        self.tabs = QtWidgets.QTabWidget()
        self.tabs.setSizePolicy(sizePolicy)
        self.tabs.setObjectName("tabs")

        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(1)
        sizePolicy.setVerticalStretch(1)
        sizePolicy.setHeightForWidth(self.tabs.sizePolicy().hasHeightForWidth())

        self.tabs.setSizePolicy(sizePolicy)
        self.tabs.setObjectName("synoptic_tab")
        self.scrollArea.setWidget(self.tabs)

        self.gridLayout.addWidget(self.scrollArea, 0, 0, 1, 1)
        self.gridLayout_3.addLayout(self.gridLayout, 2, 0, 1, 1)
        self.gridLayout_2.addWidget(self.mainContainer, 0, 0, 1, 1)

    # Singal Methods =============================
    def updateModelList(self):
        rig_models = [item for item in pm.ls(transforms=True) if item.hasAttr("is_rig")]
        self.model_list.clear()
        for item in rig_models:
            self.model_list.addItem(item.name(), item.name() )

    def updateTabs(self):
        self.tabs.clear()
        # defPath = os.environ.get("MGEAR_SYNOPTIC_PATH", None)

        tab_names = pm.ls(self.model_list.currentText())[0].getAttr("synoptic").split(",")

        for i, tab_name in enumerate(tab_names):
            try:
                if tab_name:
                    module = importTab(tab_name)
                    SynopticTab = getattr(module, "SynopticTab")

                    tab = self.wrapTabContents(SynopticTab())
                    self.tabs.insertTab(i, tab, tab_name)
                else:
                    mes = "No synoptic tabs for %s" % self.model_list.currentText()
                    pm.displayWarning(mes)

            except Exception as e:
                import traceback
                traceback.print_exc()
                mes = "Synoptic tab: %s Loading fail {0}\n{1}".format(tab_name, e)
                pm.displayError(mes)

    def wrapTabContents(self, synoptic_tab):
        # type: (SynopticTab) -> QtWidgets.QWidget

        # horizontal layout:
        #     spacer >>  SynopticTab << spacer

        if synoptic_tab.minimumHeight() == 0:
            synoptic_tab.setMinimumHeight(synoptic_tab.height())

        if synoptic_tab.minimumWidth() == 0:
            synoptic_tab.setMinimumWidth(synoptic_tab.width())

        wrapperWidget = SynopticTabWrapper()
        wrapperWidget.setGeometry(QtCore.QRect(0, 0, 10, 10))
        wrapperWidget.setObjectName("wrapperWidget")

        horizontalLayout = QtWidgets.QHBoxLayout(wrapperWidget)
        horizontalLayout.setContentsMargins(0, 0, 0, 0)
        horizontalLayout.setObjectName("horizontalLayout")

        spacer_left = QtWidgets.QSpacerItem(0, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        spacer_right = QtWidgets.QSpacerItem(0, 0, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        # spacer_left.setObjectName("spacer_left")
        # spacer_right.setObjectName("spacer_right")
        wrapperWidget.setSpacerLeft(spacer_left)

        horizontalLayout.addItem(spacer_left)
        horizontalLayout.addWidget(synoptic_tab)
        horizontalLayout.addItem(spacer_right)

        horizontalLayout.setStretch(0, 1)
        horizontalLayout.setStretch(1, 0)
        horizontalLayout.setStretch(2, 1)

        return wrapperWidget


class SynopticTabWrapper(QtWidgets.QWidget):
    """
    class for handling mouse rubberband within spacer and synoptic tab that is children of.
    """

    def __init__(self, *args, **kwargs):
        super(SynopticTabWrapper, self).__init__(*args, **kwargs)

        self.setAttribute(QtCore.Qt.WA_DeleteOnClose)
        self.rubberband = QtWidgets.QRubberBand(QtWidgets.QRubberBand.Rectangle, self)
        self.offset = QtCore.QPoint()

    def setSpacerLeft(self, spacer):
        self.spacer = spacer

    def searchMainSynopticTab(self):
        # type: () -> MainSynopticTab

        # avoiding cyclic import, declaration here not top of code
        from mgear.maya.synoptic.tabs import MainSynopticTab
        for kid in self.children():
            if isinstance(kid, MainSynopticTab):
                return kid

            if "SynopticTab" in str(type(kid)):
                return kid

        else:
            mes = "synoptic tab not found"
            mgear.log(mes, mgear.sev_warn)
            return None

    def calculateOffset(self):
        # type: () -> QtCore.QPoint

        w = self.spacer.geometry().width()
        return QtCore.QPoint(w * -1, 0)

    def offsetEvent(self, event):
        # type: (QtGui.QMouseEvent) -> QtGui.QMouseEvent

        offsetev = QtGui.QMouseEvent(
            QtCore.QEvent.MouseButtonPress,
            event.pos() + self.offset,
            event.globalPos(),
            event.button(),
            event.buttons(),
            event.modifiers()
        )

        return offsetev

    def mousePressEvent(self, event):
        # type: (QtGui.QMouseEvent) -> None

        self.syn_widget = self.searchMainSynopticTab()
        self.offset = self.calculateOffset()
        self.origin = event.pos()

        self.rubberband.setGeometry(QtCore.QRect(self.origin, QtCore.QSize()))
        self.rubberband.show()

        self.syn_widget.mousePressEvent(self.offsetEvent(event))

    def mouseMoveEvent(self, event):
        # type: (QtGui.QMouseEvent) -> None

        if self.rubberband.isVisible():
            self.rubberband.setGeometry(QtCore.QRect(self.origin, event.pos()).normalized())

        self.syn_widget.mouseMoveEvent(self.offsetEvent(event))

    def mouseReleaseEvent(self, event):
        # type: (QtGui.QMouseEvent) -> None

        if self.rubberband.isVisible():
            self.rubberband.hide()
            self.syn_widget.mouseReleaseEvent(self.offsetEvent(event))
