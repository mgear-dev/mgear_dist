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

import mgear.maya.pyqt as gqt
import mgear.maya.rigbits.channelWranglerUI as channelWranglerUI

import pymel.core as pm

from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


class cwUI(QtWidgets.QDialog, channelWranglerUI.Ui_Form):

    def __init__(self, parent=None):
        super(cwUI, self).__init__(parent)
        self.setupUi(self)

class channelWrangler(MayaQWidgetDockableMixin, QtWidgets.QDialog):
    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        self.toolName = "ChannelWranglerWindow"

        super(self.__class__, self).__init__(parent = parent)
        self.cwUIInst = cwUI()
        self.headerTable = self.cwUIInst.channelMapping_tableWidget.horizontalHeader()
        # we try setSectionResizeMode for Pyside2 if attributeError setResizeMode for PySide
        try:
            self.headerTable.setSectionResizeMode(0,  QtWidgets.QHeaderView.Stretch)
        except AttributeError:
            self.headerTable.setResizeMode(0,  QtWidgets.QHeaderView.Stretch)


        self.setup_channelWranglerWindow()
        self.create_layout()
        # self.create_connections()

        self.setAttribute(QtCore.Qt.WA_DeleteOnClose)

    def setup_channelWranglerWindow(self):
        self.mayaMainWindow = gqt.maya_main_window()

        self.setObjectName(self.toolName)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle("Channel Wrangler")
        self.resize(750, 525)

    def create_layout(self):

        self.cw_layout = QtWidgets.QVBoxLayout()
        self.cw_layout.addWidget(self.cwUIInst)

        self.setLayout(self.cw_layout)





if __name__ == "__main__":
    gqt.showDialog(channelWrangler)
