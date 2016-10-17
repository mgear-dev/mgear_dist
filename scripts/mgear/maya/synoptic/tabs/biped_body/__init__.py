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
import pymel.core as pm
import maya.OpenMayaUI as OpenMayaUI
import mgear.maya.pyqt as gqt
QtGui, QtCore, QtWidgets, wrapInstance, shiboken = gqt.qt_import(True)


import xml.etree.ElementTree as xml
from cStringIO import StringIO

import mgear.maya.synoptic.utils as syn_uti
import mgear.maya.synoptic.widgets as mwi
import widget as wui

import functools

BG_PATH = os.path.join(os.path.dirname(__file__), "background.bmp")


##################################################
# SYNOPTIC TAB WIDGET
##################################################

class SynopticTab(QtWidgets.QDialog, wui.Ui_biped_body):

    # ============================================
    # INIT
    def __init__(self, parent=None):
        super(SynopticTab, self).__init__(parent)
        print "Loading body"
        self.setupUi(self)

        # Retarget background Image to absolute path
        self.img_background.setPixmap(QtGui.QPixmap(BG_PATH))

        # Connect signal
        self.b_selAll.clicked.connect(self.selAll_clicked)
        self.b_selAll.setMouseTracking(True)
        self.b_keyAll.clicked.connect(self.keyAll_clicked)
        self.b_keySel.clicked.connect(self.keySel_clicked)

        self.rubberband = QtWidgets.QRubberBand(QtWidgets.QRubberBand.Rectangle, self)

        #script job callback
        ptr = long(shiboken.getCppPointer(self)[0])
        gui = OpenMayaUI.MQtUtil.fullName(ptr)
        self.selJob = pm.scriptJob(e=("SelectionChanged", self.selectChanged), parent=gui)
    
    def selectChanged(self, *args):
        sels = []
        [sels.append(x.name()) for x in  pm.ls(sl=1)]
        nameSpace = False
        if sels:
            oModel = syn_uti.getModel(self)
            if  len(oModel.split(":")) == 2:
                nameSpace = oModel.split(":")[0]

        selButtons = self.findChildren(mwi.SelectButton)
        for selB in selButtons:
            obj = str(selB.property("object")).split(",")
            if len(obj) == 1:
                if nameSpace:
                    checkName = nameSpace+":"+obj[0]
                else: 
                    checkName = obj[0]
                if checkName in sels:
                    selB.paintSelected(True)
                else:
                    selB.paintSelected(False)

    def mousePressEvent(self, event):
        self.origin = event.pos()
        self.rubberband.setGeometry(QtCore.QRect(self.origin, QtCore.QSize()))
        self.rubberband.show()
        QtWidgets.QWidget.mousePressEvent(self, event)

    def mouseMoveEvent(self, event):
        if self.rubberband.isVisible():
            self.rubberband.setGeometry(QtCore.QRect(self.origin, event.pos()).normalized())
        QtWidgets.QWidget.mouseMoveEvent(self, event)


    def mouseReleaseEvent(self, event):
        if self.rubberband.isVisible():
            self.rubberband.hide()
            selected = []
            rect = self.rubberband.geometry()
            for child in self.findChildren(mwi.SelectButton):
                if rect.intersects(child.geometry()):
                    selected.append(child)
            if selected:
                firstLoop = True
                with pm.UndoChunk():
                    for wi in selected:
                        wi.rectangleSelection(event,firstLoop)
                        firstLoop = False
            else:
                if event.modifiers() == QtCore.Qt.NoModifier:
                    pm.select(cl=True)
                    pm.displayInfo("Clear selection")
        QtWidgets.QWidget.mouseReleaseEvent(self, event)

    # ============================================
    # BUTTONS
    def selAll_clicked(self):
        model = syn_uti.getModel(self)
        syn_uti.selAll(model)

    def resetAll_clicked(self):
        print "resetAll"

    def resetSel_clicked(self):
        print "resetSel"

    def keyAll_clicked(self):
        model = syn_uti.getModel(self)
        syn_uti.keyAll(model)

    def keySel_clicked(self):
        syn_uti.keySel()
