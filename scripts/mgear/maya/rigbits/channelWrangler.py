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
import collections


from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


######################################################################
## Functions
######################################################################


# apply the channel configuration from a dictionary
def _applyChannelConfig():
    return

# apply the configuration stored in a  json file. This will be to use outside the interface
def applyChannelConfig(filePath):
    return


# move the channel and  connect  (is WIP)
# posible test
# for at in ["arm_C0_maxstretch", "arm_C0_slide", "arm_C0_blend", "arm_C0_upvref"]:

#     moveChannel(at, "global_C0_ctl", "pCube1")
def moveChannel(attr, sourceNode, targetNode):

    if isinstance(sourceNode, str):
        sourceNode = pm.PyNode(sourceNode)
    if isinstance(targetNode, str):
        targetNode = pm.PyNode(targetNode)

    at = sourceNode.attr(attr)
    atType =  at.type()
    if atType in ["double", "enum"]:
        outcnx = at.listConnections(p=True)
        value = at.get()
        if atType == "double":
            min = at.getMin()
            max = at.getMax()
            pm.addAttr(targetNode, ln=attr, at="double", min=min, max=max, dv=value, k=True)
        elif atType == "enum":
            en = at.getEnums()
            oEn = collections.OrderedDict(sorted(en.items(), key=lambda t: t[1]))
            enStr = ":".join([n for n in oEn])
            pm.addAttr(targetNode, ln=attr, at="enum", en=enStr, dv=value, k=True)
        newAtt = pm.PyNode(".".join([targetNode.name(), attr]))
        for cnx in outcnx:
            pm.connectAttr(newAtt, cnx, f=True)
        pm.deleteAttr(at)

    else:
        pm.displayWarning("MoveChannel function can't handle an attribure of type: %s"%atType)



######################################################################
## Dialog
######################################################################

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

    # set the row item
    def _setRowItem(self, row, itemIndex):
        return

    # the source is set at the same time as the channel
    def _setRowChannel(self, row, channel, source):
        return

    def _setRowTarget(self, row, target):
        return


    def _addNewRow(self, channel=None, source=None, target=None):
        row = "need to be implemented"
        if channel and source:
            self._setRowChannel(row, channel, source)
        return

    # clear the list of rows
    def _clearRows(self):
        return


    #SLOTS
    #buttons
    def populateChannelLineEdit(self):
        return

    def populateTargetLineEdit(self):
        return

    # sets a new row with the information on the channel and target lineEdit
    def setRow(self):
        return

    # sets new rows from the selectec channels. 1 channel for each row.
    def setMultiChannel(self):
        return

    # set the target colum for the selected rows
    # if only one object is selected will populate all the rows with the same object
    # if there is more that one object selected, will iterate the selection adding one object to each row
    def setMultyTarget(self):
        return

    # populate new rows with all the user defined parameters from the selected objects
    def autoPopulate(self):
        return

    # clear selected rows
    def clearSelectedRows(self):
        return

    # clear all the rows
    def clearAllRows(self):
        return

    # export channelWrangler configuration
    def exportConfig(self):
        return

    # import channel wrangler configuration
    def importConfig(self):
        return

    # apply the current configuration in the dialog
    def applyChannelConfig(self):
        return


####################################
if __name__ == "__main__":
    gqt.showDialog(channelWrangler)
