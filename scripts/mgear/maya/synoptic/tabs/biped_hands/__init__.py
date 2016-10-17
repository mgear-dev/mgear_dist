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

import mgear.maya.pyqt as gqt
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()
import xml.etree.ElementTree as xml
from cStringIO import StringIO

import mgear.maya.synoptic.utils as syn_uti
import mgear.maya.synoptic.widgets as mwi
import widget as wui




BG_PATH = os.path.join(os.path.dirname(__file__), "background.bmp")

##################################################
# SYNOPTIC TAB WIDGET
##################################################

class SynopticTab(QtWidgets.QDialog, wui.Ui_biped_hand):

    # ============================================
    # INIT
    def __init__(self, parent=None):
        super(SynopticTab, self).__init__(parent)
        self.setupUi(self)

        # Retarget background Image to absolute path
        self.img_background.setPixmap(QtGui.QPixmap(BG_PATH))

        # Connect signal
        self.b_selRight.clicked.connect(self.selRight_clicked)
        self.b_selLeft.clicked.connect(self.selLeft_clicked)
        self.b_keyRight.clicked.connect(self.keyRight_clicked)
        self.b_keyLeft.clicked.connect(self.keyLeft_clicked)
        self.b_keySel.clicked.connect(self.keySel_clicked)

        self.rubberband = QtWidgets.QRubberBand(QtWidgets.QRubberBand.Rectangle, self)

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
                for wi in selected:
                    wi.rectangleSelection(event,firstLoop)
                    firstLoop = False
            else:
                print ' Nothing Selected\n'
        QtWidgets.QWidget.mouseReleaseEvent(self, event)

    # ============================================
    # BUTTONS
    def selRight_clicked(self):
        model = syn_uti.getModel(self)
        # i : num of fingers, j : finger length
        object_names = ["finger_R%s_fk%s_ctl"%(i,j) for i in range(4) for j in range(3)]
        thumb_names = ["thumb_R0_fk%s_ctl"%j for j in range(3)]
        object_names.extend(thumb_names)
        syn_uti.selectObj(model, object_names, None, None)

    def selLeft_clicked(self):
        model = syn_uti.getModel(self)
        # i : num of fingers, j : finger length
        object_names = ["finger_L%s_fk%s_ctl"%(i,j) for i in range(4) for j in range(3)]
        thumb_names = ["thumb_L0_fk%s_ctl"%j for j in range(3)]
        object_names.extend(thumb_names)
        syn_uti.selectObj(model, object_names, None, None)

    def keyRight_clicked(self):
        model = syn_uti.getModel(self)
        # i : num of fingers, j : finger length
        object_names = ["finger_R%s_fk%s_ctl"%(i,j) for i in range(4) for j in range(3)]
        thumb_names = ["thumb_R0_fk%s_ctl"%j for j in range(3)]
        object_names.extend(thumb_names)
        syn_uti.keyObj(model, object_names)

    def keyLeft_clicked(self):
        model = syn_uti.getModel(self)
        # i : num of fingers, j : finger length
        object_names = ["finger_L%s_fk%s_ctl"%(i,j) for i in range(4) for j in range(3)]
        thumb_names = ["thumb_L0_fk%s_ctl"%j for j in range(3)]
        object_names.extend(thumb_names)
        syn_uti.keyObj(model, object_names)

    def keySel_clicked(self):
        syn_uti.keySel()
