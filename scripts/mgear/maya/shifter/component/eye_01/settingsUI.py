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
        Form.resize(255, 226)
        self.ikRefArray_groupBox = QtWidgets.QGroupBox(Form)
        self.ikRefArray_groupBox.setGeometry(QtCore.QRect(0, 54, 249, 169))
        self.ikRefArray_groupBox.setObjectName("ikRefArray_groupBox")
        self.layoutWidget = QtWidgets.QWidget(self.ikRefArray_groupBox)
        self.layoutWidget.setGeometry(QtCore.QRect(10, 20, 231, 141))
        self.layoutWidget.setObjectName("layoutWidget")
        self.ikRefArray_horizontalLayout = QtWidgets.QHBoxLayout(self.layoutWidget)
        self.ikRefArray_horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.ikRefArray_horizontalLayout.setObjectName("ikRefArray_horizontalLayout")
        self.ikRefArray_verticalLayout_1 = QtWidgets.QVBoxLayout()
        self.ikRefArray_verticalLayout_1.setObjectName("ikRefArray_verticalLayout_1")
        self.ikRefArray_listWidget = QtWidgets.QListWidget(self.layoutWidget)
        self.ikRefArray_listWidget.setDragDropOverwriteMode(True)
        self.ikRefArray_listWidget.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove)
        self.ikRefArray_listWidget.setDefaultDropAction(QtCore.Qt.MoveAction)
        self.ikRefArray_listWidget.setAlternatingRowColors(True)
        self.ikRefArray_listWidget.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.ikRefArray_listWidget.setSelectionRectVisible(False)
        self.ikRefArray_listWidget.setObjectName("ikRefArray_listWidget")
        self.ikRefArray_verticalLayout_1.addWidget(self.ikRefArray_listWidget)
        self.ikRefArray_horizontalLayout.addLayout(self.ikRefArray_verticalLayout_1)
        self.ikRefArray_verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.ikRefArray_verticalLayout_2.setObjectName("ikRefArray_verticalLayout_2")
        self.ikRefArrayAdd_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.ikRefArrayAdd_pushButton.setObjectName("ikRefArrayAdd_pushButton")
        self.ikRefArray_verticalLayout_2.addWidget(self.ikRefArrayAdd_pushButton)
        self.ikRefArrayRemove_pushButton = QtWidgets.QPushButton(self.layoutWidget)
        self.ikRefArrayRemove_pushButton.setObjectName("ikRefArrayRemove_pushButton")
        self.ikRefArray_verticalLayout_2.addWidget(self.ikRefArrayRemove_pushButton)
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.ikRefArray_verticalLayout_2.addItem(spacerItem)
        self.ikRefArray_horizontalLayout.addLayout(self.ikRefArray_verticalLayout_2)
        self.groupBox = QtWidgets.QGroupBox(Form)
        self.groupBox.setGeometry(QtCore.QRect(0, 1, 249, 41))
        self.groupBox.setTitle("")
        self.groupBox.setObjectName("groupBox")
        self.widget = QtWidgets.QWidget(self.groupBox)
        self.widget.setGeometry(QtCore.QRect(12, 10, 231, 22))
        self.widget.setObjectName("widget")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.widget)
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.upvDirection_label = QtWidgets.QLabel(self.widget)
        self.upvDirection_label.setObjectName("upvDirection_label")
        self.horizontalLayout.addWidget(self.upvDirection_label)
        self.upVectorDirection_comboBox = QtWidgets.QComboBox(self.widget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.upVectorDirection_comboBox.sizePolicy().hasHeightForWidth())
        self.upVectorDirection_comboBox.setSizePolicy(sizePolicy)
        self.upVectorDirection_comboBox.setObjectName("upVectorDirection_comboBox")
        self.upVectorDirection_comboBox.addItem("")
        self.upVectorDirection_comboBox.addItem("")
        self.upVectorDirection_comboBox.addItem("")
        self.horizontalLayout.addWidget(self.upVectorDirection_comboBox)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(gqt.fakeTranslate("Form", "Form", None, -1))
        self.ikRefArray_groupBox.setTitle(gqt.fakeTranslate("Form", "IK Reference Array", None, -1))
        self.ikRefArrayAdd_pushButton.setText(gqt.fakeTranslate("Form", "<<", None, -1))
        self.ikRefArrayRemove_pushButton.setText(gqt.fakeTranslate("Form", ">>", None, -1))
        self.upvDirection_label.setText(gqt.fakeTranslate("Form", "Up Vector Direction", None, -1))
        self.upVectorDirection_comboBox.setItemText(0, gqt.fakeTranslate("Form", "X", None, -1))
        self.upVectorDirection_comboBox.setItemText(1, gqt.fakeTranslate("Form", "Y", None, -1))
        self.upVectorDirection_comboBox.setItemText(2, gqt.fakeTranslate("Form", "Z", None, -1))

