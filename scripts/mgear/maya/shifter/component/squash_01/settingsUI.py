# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'C:/datawork/repo/mgear/scripts/mgear/maya/shifter/component/squash_01/settingsUI.ui'
#
# Created: Mon Mar 27 12:02:31 2017
#      by: pyside-uic 0.2.14 running on PySide 1.2.0
#
# WARNING! All changes made in this file will be lost!

from PySide import QtCore, QtGui

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(290, 188)
        self.gridLayout = QtGui.QGridLayout(Form)
        self.gridLayout.setObjectName("gridLayout")
        self.upvRefArray_groupBox = QtGui.QGroupBox(Form)
        self.upvRefArray_groupBox.setObjectName("upvRefArray_groupBox")
        self.verticalLayout = QtGui.QVBoxLayout(self.upvRefArray_groupBox)
        self.verticalLayout.setObjectName("verticalLayout")
        self.upvRefArray_horizontalLayout = QtGui.QHBoxLayout()
        self.upvRefArray_horizontalLayout.setObjectName("upvRefArray_horizontalLayout")
        self.upvRefArray_verticalLayout_1 = QtGui.QVBoxLayout()
        self.upvRefArray_verticalLayout_1.setObjectName("upvRefArray_verticalLayout_1")
        self.refArray_listWidget = QtGui.QListWidget(self.upvRefArray_groupBox)
        self.refArray_listWidget.setDragDropOverwriteMode(True)
        self.refArray_listWidget.setDragDropMode(QtGui.QAbstractItemView.InternalMove)
        self.refArray_listWidget.setDefaultDropAction(QtCore.Qt.MoveAction)
        self.refArray_listWidget.setAlternatingRowColors(True)
        self.refArray_listWidget.setSelectionMode(QtGui.QAbstractItemView.ExtendedSelection)
        self.refArray_listWidget.setSelectionRectVisible(False)
        self.refArray_listWidget.setObjectName("refArray_listWidget")
        self.upvRefArray_verticalLayout_1.addWidget(self.refArray_listWidget)
        self.upvRefArray_horizontalLayout.addLayout(self.upvRefArray_verticalLayout_1)
        self.upvRefArray_verticalLayout_2 = QtGui.QVBoxLayout()
        self.upvRefArray_verticalLayout_2.setObjectName("upvRefArray_verticalLayout_2")
        self.refArrayAdd_pushButton = QtGui.QPushButton(self.upvRefArray_groupBox)
        self.refArrayAdd_pushButton.setObjectName("refArrayAdd_pushButton")
        self.upvRefArray_verticalLayout_2.addWidget(self.refArrayAdd_pushButton)
        self.refArrayRemove_pushButton = QtGui.QPushButton(self.upvRefArray_groupBox)
        self.refArrayRemove_pushButton.setObjectName("refArrayRemove_pushButton")
        self.upvRefArray_verticalLayout_2.addWidget(self.refArrayRemove_pushButton)
        spacerItem = QtGui.QSpacerItem(20, 40, QtGui.QSizePolicy.Minimum, QtGui.QSizePolicy.Expanding)
        self.upvRefArray_verticalLayout_2.addItem(spacerItem)
        self.upvRefArray_horizontalLayout.addLayout(self.upvRefArray_verticalLayout_2)
        self.verticalLayout.addLayout(self.upvRefArray_horizontalLayout)
        self.gridLayout.addWidget(self.upvRefArray_groupBox, 0, 0, 1, 1)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QtGui.QApplication.translate("Form", "Form", None, QtGui.QApplication.UnicodeUTF8))
        self.upvRefArray_groupBox.setTitle(QtGui.QApplication.translate("Form", "Tip Reference Array", None, QtGui.QApplication.UnicodeUTF8))
        self.refArrayAdd_pushButton.setText(QtGui.QApplication.translate("Form", "<<", None, QtGui.QApplication.UnicodeUTF8))
        self.refArrayRemove_pushButton.setText(QtGui.QApplication.translate("Form", ">>", None, QtGui.QApplication.UnicodeUTF8))

