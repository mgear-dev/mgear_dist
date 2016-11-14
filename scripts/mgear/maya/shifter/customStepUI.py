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
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(348, 505)
        self.groupBox = QtWidgets.QGroupBox(Form)
        self.groupBox.setGeometry(QtCore.QRect(9, 6, 331, 491))
        self.groupBox.setObjectName("groupBox")
        self.layoutWidget = QtWidgets.QWidget(self.groupBox)
        self.layoutWidget.setGeometry(QtCore.QRect(10, 20, 311, 459))
        self.layoutWidget.setObjectName("layoutWidget")
        self.verticalLayout_3 = QtWidgets.QVBoxLayout(self.layoutWidget)
        self.verticalLayout_3.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.preCustomStep_checkBox = QtWidgets.QCheckBox(self.layoutWidget)
        self.preCustomStep_checkBox.setObjectName("preCustomStep_checkBox")
        self.verticalLayout.addWidget(self.preCustomStep_checkBox)
        self.preCustomStep_horizontalLayout = QtWidgets.QHBoxLayout()
        self.preCustomStep_horizontalLayout.setObjectName("preCustomStep_horizontalLayout")
        self.preCustomStep_verticalLayout_1 = QtWidgets.QVBoxLayout()
        self.preCustomStep_verticalLayout_1.setObjectName("preCustomStep_verticalLayout_1")
        self.preCustomStep_listWidget = QtWidgets.QListWidget(self.layoutWidget)
        self.preCustomStep_listWidget.setDragDropOverwriteMode(True)
        self.preCustomStep_listWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.preCustomStep_listWidget.setDefaultDropAction(QtCore.Qt.MoveAction)
        self.preCustomStep_listWidget.setAlternatingRowColors(True)
        self.preCustomStep_listWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.preCustomStep_listWidget.setProperty("isWrapping", False)
        self.preCustomStep_listWidget.setViewMode(QtWidgets.QListView.ListMode)
        self.preCustomStep_listWidget.setObjectName("preCustomStep_listWidget")
        self.preCustomStep_verticalLayout_1.addWidget(self.preCustomStep_listWidget)
        self.preCustomStep_horizontalLayout.addLayout(self.preCustomStep_verticalLayout_1)
        self.preCustomStep_verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.preCustomStep_verticalLayout_2.setObjectName("preCustomStep_verticalLayout_2")
        self.preCustomStepAdd_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.preCustomStepAdd_pushButton.setObjectName("preCustomStepAdd_pushButton")
        self.preCustomStep_verticalLayout_2.addWidget(self.preCustomStepAdd_pushButton)
        self.preCustomStepRemove_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.preCustomStepRemove_pushButton.setObjectName("preCustomStepRemove_pushButton")
        self.preCustomStep_verticalLayout_2.addWidget(self.preCustomStepRemove_pushButton)
        self.preCustomStepRun_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.preCustomStepRun_pushButton.setObjectName("preCustomStepRun_pushButton")
        self.preCustomStep_verticalLayout_2.addWidget(self.preCustomStepRun_pushButton)
        self.preCustomStepEdit_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.preCustomStepEdit_pushButton.setObjectName("preCustomStepEdit_pushButton")
        self.preCustomStep_verticalLayout_2.addWidget(self.preCustomStepEdit_pushButton)
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.preCustomStep_verticalLayout_2.addItem(spacerItem)
        self.preCustomStep_horizontalLayout.addLayout(self.preCustomStep_verticalLayout_2)
        self.verticalLayout.addLayout(self.preCustomStep_horizontalLayout)
        self.verticalLayout_3.addLayout(self.verticalLayout)
        self.line = QtWidgets.QFrame(self.layoutWidget)
        self.line.setLineWidth(3)
        self.line.setMidLineWidth(0)
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.verticalLayout_3.addWidget(self.line)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.postCustomStep_checkBox = QtWidgets.QCheckBox(self.layoutWidget)
        self.postCustomStep_checkBox.setObjectName("postCustomStep_checkBox")
        self.verticalLayout_2.addWidget(self.postCustomStep_checkBox)
        self.preCustomStep_horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.preCustomStep_horizontalLayout_2.setObjectName("preCustomStep_horizontalLayout_2")
        self.preCustomStep_verticalLayout_3 = QtWidgets.QVBoxLayout()
        self.preCustomStep_verticalLayout_3.setObjectName("preCustomStep_verticalLayout_3")
        self.postCustomStep_listWidget = QtWidgets.QListWidget(self.layoutWidget)
        self.postCustomStep_listWidget.setDragDropOverwriteMode(True)
        self.postCustomStep_listWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.postCustomStep_listWidget.setDefaultDropAction(QtCore.Qt.MoveAction)
        self.postCustomStep_listWidget.setAlternatingRowColors(True)
        self.postCustomStep_listWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.postCustomStep_listWidget.setViewMode(QtWidgets.QListView.ListMode)
        self.postCustomStep_listWidget.setWordWrap(False)
        self.postCustomStep_listWidget.setSelectionRectVisible(False)
        self.postCustomStep_listWidget.setObjectName("postCustomStep_listWidget")
        self.preCustomStep_verticalLayout_3.addWidget(self.postCustomStep_listWidget)
        self.preCustomStep_horizontalLayout_2.addLayout(self.preCustomStep_verticalLayout_3)
        self.preCustomStep_verticalLayout_4 = QtWidgets.QVBoxLayout()
        self.preCustomStep_verticalLayout_4.setObjectName("preCustomStep_verticalLayout_4")
        self.postCustomStepAdd_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.postCustomStepAdd_pushButton.setObjectName("postCustomStepAdd_pushButton")
        self.preCustomStep_verticalLayout_4.addWidget(self.postCustomStepAdd_pushButton)
        self.postCustomStepRemove_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.postCustomStepRemove_pushButton.setObjectName("postCustomStepRemove_pushButton")
        self.preCustomStep_verticalLayout_4.addWidget(self.postCustomStepRemove_pushButton)
        self.postCustomStepRun_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.postCustomStepRun_pushButton.setObjectName("postCustomStepRun_pushButton")
        self.preCustomStep_verticalLayout_4.addWidget(self.postCustomStepRun_pushButton)
        self.postCustomStepEdit_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.postCustomStepEdit_pushButton.setObjectName("postCustomStepEdit_pushButton")
        self.preCustomStep_verticalLayout_4.addWidget(self.postCustomStepEdit_pushButton)
        spacerItem1 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.preCustomStep_verticalLayout_4.addItem(spacerItem1)
        self.preCustomStep_horizontalLayout_2.addLayout(self.preCustomStep_verticalLayout_4)
        self.verticalLayout_2.addLayout(self.preCustomStep_horizontalLayout_2)
        self.verticalLayout_3.addLayout(self.verticalLayout_2)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(gqt.fakeTranslate("Form", "Form", None, -1))
        self.groupBox.setTitle(gqt.fakeTranslate("Form", "Custom Steps", None, -1))
        self.preCustomStep_checkBox.setText(gqt.fakeTranslate("Form", "Pre Custom Step", None, -1))
        self.preCustomStepAdd_pushButton.setText(gqt.fakeTranslate("Form", "Add", None, -1))
        self.preCustomStepRemove_pushButton.setText(gqt.fakeTranslate("Form", "Remove", None, -1))
        self.preCustomStepRun_pushButton.setText(gqt.fakeTranslate("Form", "Run Sel.", None, -1))
        self.preCustomStepEdit_pushButton.setText(gqt.fakeTranslate("Form", "Edit", None, -1))
        self.postCustomStep_checkBox.setText(gqt.fakeTranslate("Form", "Post  Custom Step", None, -1))
        self.postCustomStepAdd_pushButton.setText(gqt.fakeTranslate("Form", "Add", None, -1))
        self.postCustomStepRemove_pushButton.setText(gqt.fakeTranslate("Form", "Remove", None, -1))
        self.postCustomStepRun_pushButton.setText(gqt.fakeTranslate("Form", "Run Sel.", None, -1))
        self.postCustomStepEdit_pushButton.setText(gqt.fakeTranslate("Form", "Edit", None, -1))

