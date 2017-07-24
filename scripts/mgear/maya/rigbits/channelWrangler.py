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
import mgear.maya.attribute as att
import mgear.maya.rigbits.channelWranglerUI as channelWranglerUI

import pymel.core as pm


from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


######################################################################
## Functions
######################################################################


# apply the channel configuration from a dictionary
def _applyChannelConfig(configDic):
    tableMap = configDic["map"]
    movePolicy = configDic["movePolicy"]
    proxyPolicy = configDic["proxyPolicy"]
    for rule in tableMap:
        attr = rule[0]
        sourceNode = rule[1]
        targetNode = rule[2]
        option = rule[3]
        # proxy
        if option:
            node = pm.PyNode(sourceNode)
            sourceAttrs = node.attr(attr)
            target = pm.PyNode(targetNode)
            att.addProxyAttribute(sourceAttrs, target,  proxyPolicy)
        # move
        else:
            att.moveChannel(attr, sourceNode, targetNode, movePolicy)

# apply the configuration stored in a  json file. This will be to use outside the interface
def applyChannelConfig(filePath):
    return


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
        self.table = self.cwUIInst.channelMapping_tableWidget
        self.headerTable = self.table.horizontalHeader()
        # we try setSectionResizeMode for Pyside2 if attributeError setResizeMode for PySide
        for i in [1, 4]:
            try:
                self.headerTable.setSectionResizeMode(i,  QtWidgets.QHeaderView.Stretch)
                self.headerTable.setSectionResizeMode(0,  QtWidgets.QHeaderView.ResizeToContents)
            except AttributeError:
                self.headerTable.setResizeMode(i,  QtWidgets.QHeaderView.Stretch)
                self.headerTable.setResizeMode(0,  QtWidgets.QHeaderView.ResizeToContents)

        self.setup_channelWranglerWindow()
        self.create_layout()
        self.create_connections()

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

    ###########################
    #create connections SIGNALS
    ###########################
    def create_connections(self):
        self.cwUIInst.channel_pushButton.clicked.connect(self.populateChannelLineEdit)
        self.cwUIInst.target_pushButton.clicked.connect(self.populateTargetLineEdit)
        self.cwUIInst.setRow_pushButton.clicked.connect(self.setRow)
        self.cwUIInst.setMultiChannel_pushButton.clicked.connect(self.setMultiChannel)
        self.cwUIInst.setMultiTarget_pushButton.clicked.connect(self.setMultiTarget)
        self.cwUIInst.clearAll_pushButton.clicked.connect(self.clearAllRows)
        self.cwUIInst.clearSelectedRows_pushButton.clicked.connect(self.clearSelectedRows)

    ##################
    # helper functions
    ##################
    # set the row item
    def _setRowItem(self, table, rowPosition, itemIndex, itemContent):
        item = QtWidgets.QTableWidgetItem(itemContent)
        table.setItem(rowPosition , itemIndex, item)
        return item

    # the source is set at the same time as the channel
    def _setRowChannel(self, table, rowPosition, channel, source):
        self._setRowItem(table, rowPosition, 0, str(rowPosition).zfill(3))
        self._setRowItem(table, rowPosition, 1, channel)
        self._setRowItem(table, rowPosition, 2, source)
        return

    def _setRowTarget(self, table, rowPosition, target):
        self._setRowItem(table, rowPosition, 3, target)
        return


    def _addNewRow(self, channel=None, source=None, target=None):
        table = self.table
        rowPosition = table.rowCount()
        table.insertRow(rowPosition)
        if channel and source:
            self._setRowChannel(table, rowPosition, channel, source)
        if target:
            self._setRowTarget(table, rowPosition, target)

        # adding the operation combo box
        operation_comboBox = QtWidgets.QComboBox()
        operation_comboBox.setObjectName("operation")
        operation_comboBox.addItem("Move Channel")
        operation_comboBox.addItem("Proxy Channel")
        operation_comboBox.SizeAdjustPolicy(QtWidgets.QComboBox.AdjustToContentsOnFirstShow)
        table.setCellWidget(rowPosition, 4, operation_comboBox)
        return rowPosition

    # build the config dictionary from the UI data
    def _buildConfigDict(self):
        return

    ###########################
    #SLOTS
    ###########################
    #buttons
    def populateChannelLineEdit(self):
        oSel = pm.selected()[0]
        chan = att.getSelectedChannels(True)[0]
        self.cwUIInst.channel_lineEdit.setText("{}.{}".format(oSel.name(), chan))

    def populateTargetLineEdit(self):
        oSel = pm.selected()[0]
        self.cwUIInst.target_lineEdit.setText(oSel.name())

    # sets a new row with the information on the channel and target lineEdit
    def setRow(self):
        fullChanName = self.cwUIInst.channel_lineEdit.text()
        if fullChanName:
            sourceName, chanName = fullChanName.split(".")
        targetName = self.cwUIInst.target_lineEdit.text()
        #TODO: checker for the new rule, be sure is not duplicated
        self._addNewRow(chanName, sourceName, targetName)

    # sets new rows from the selectec channels. 1 channel for each row.
    def setMultiChannel(self):
        oSel = pm.selected()[0]
        if oSel:
            channels = att.getSelectedChannels(True)
            if not channels:
                channels = att.getSelectedObjectChannels(oSel, True, True)
            for ch in channels:
                self._addNewRow(ch, oSel.name(), oSel.name())

    # set the target colum for the selected rows
    # if only one object is selected will populate all the rows with the same object
    # if there is more that one object selected, will iterate the selection adding one object to each row
    def setMultiTarget(self):
        #first ge if we have rows selected:
        rows = sorted(set(item.row() for item in self.table.selectedItems()))
        print len(rows)
        #
        return

    # clear selected rows
    def clearSelectedRows(self):

        index_list = []
        for model_index in self.table.selectionModel().selectedRows():
            index = QtCore.QPersistentModelIndex(model_index)
            index_list.append(index)

        for index in index_list:
            # self.model.removeRow(index.row())
            self.table.removeRow(index.row())

    # clear all the rows
    def clearAllRows(self):
        for i in reversed(range(self.table.rowCount())):
            self.table.removeRow(i)

    # export channelWrangler configuration
    def exportConfig(self):
        configDict = self._buildConfigDict()
        return

    # import channel wrangler configuration
    def importConfig(self):
        # TODO: if import dict ask to add to the current configuration or replace.
        # also ask for proxy and move policy if is not the same when we add to the current list
        # checker to avoid a double configuration in several rows
        return

    # apply the current configuration in the dialog
    def applyChannelConfig(self):
        configDict = self._buildConfigDict()
        return

    def _setOperator(self, operator):
        #TODO: set the operator comboBox  to move or proxy
        # if nothing selected will apply it to all the rows
        return

    def setMoveOperator(self):
        self._setOperator(0)

    def setProxyOperator(self):
        self._setOperator(1)


####################################
if __name__ == "__main__":
    gqt.showDialog(channelWrangler)
