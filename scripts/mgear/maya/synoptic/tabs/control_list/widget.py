# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'D:/repo/mgear/scripts/mgear/maya/synoptic/tabs/control_list/widget.ui'
#
# Created: Tue Mar 13 17:28:23 2018
#      by: pyside2-uic  running on PySide2 2.0.0~alpha0
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_baker(object):
    def setupUi(self, baker):
        baker.setObjectName("baker")
        baker.resize(325, 840)
        baker.setMinimumSize(QtCore.QSize(325, 790))
        self.gridLayout = QtWidgets.QGridLayout(baker)
        self.gridLayout.setObjectName("gridLayout")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setObjectName("verticalLayout")
        self.widget = ControlListerUI(baker)
        self.widget.setObjectName("widget")
        self.verticalLayout.addWidget(self.widget)
        spacerItem = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout.addItem(spacerItem)
        self.gridLayout.addLayout(self.verticalLayout, 0, 0, 1, 1)

        self.retranslateUi(baker)
        QtCore.QMetaObject.connectSlotsByName(baker)

    def retranslateUi(self, baker):
        baker.setWindowTitle(QtWidgets.QApplication.translate("baker", "Form", None, -1))

from mgear.maya.synoptic.searchControlsWidget import ControlListerUI
