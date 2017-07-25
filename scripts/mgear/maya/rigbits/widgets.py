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


## Rigbits  widgets

import mgear.maya.pyqt as gqt
import mgear.widgets as gWidgets


QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()


#################################################
## CUSTOM WIDGETS
#################################################

class TableWidgetDragRowsChannelWrangler(gWidgets.TableWidgetDragRows):
    """TableWidgetDragRows subclass for channelWrangler
    """
    def __init__(self, *args, **kwargs):
        gWidgets.TableWidgetDragRows.__init__(self, *args, **kwargs)

    def dropEvent(self, event):
        if not event.isAccepted() and event.source() == self:
            drop_row = self.drop_on(event)

            rows = sorted(set(item.row() for item in self.selectedItems()))
            rows_to_move = [[QtWidgets.QTableWidgetItem(self.item(row_index, column_index)) for column_index in range(self.columnCount())]
                            for row_index in rows]
            rows_widgets_to_move = [ self.cellWidget(row_index, 4) for row_index in rows]

            for row_index in reversed(rows):
                self.removeRow(row_index)
                if row_index < drop_row:
                    drop_row -= 1

            for row_index, data in enumerate(rows_to_move):

                inRow = row_index + drop_row
                self.insertRow(inRow)
                for column_index, column_data in enumerate(data):
                    if column_index !=4:
                        self.setItem(inRow, column_index, column_data)
                # self.setCellWidget(inRow, 4, rows_widgets_to_move[row_index])
                # moving the combo box crash maya. Current workaround is create a new one and destroy the old
                # someone knows better way?  Thanks :)
                operation_comboBox = QtWidgets.QComboBox()
                operation_comboBox.setObjectName("operation")
                operation_comboBox.addItem("Move Channel")
                operation_comboBox.addItem("Proxy Channel")
                operation_comboBox.SizeAdjustPolicy(QtWidgets.QComboBox.AdjustToContentsOnFirstShow)
                oComboOld = rows_widgets_to_move[row_index]
                self.setCellWidget(inRow, 4, operation_comboBox)
                operation_comboBox.setCurrentIndex(oComboOld.currentIndex())
                oComboOld.deleteLater()

            event.accept()
            for row_index in range(len(rows_to_move)):
                self.item(drop_row + row_index, 0).setSelected(True)
                self.item(drop_row + row_index, 1).setSelected(True)
                self.item(drop_row + row_index, 2).setSelected(True)
                self.item(drop_row + row_index, 3).setSelected(True)





####################################
if __name__ == "__main__":
    gqt.showDialog(channelWrangler)
