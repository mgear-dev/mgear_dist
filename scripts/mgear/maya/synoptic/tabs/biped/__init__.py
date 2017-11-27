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
import mgear.maya.pyqt as pyqt
import mgear.maya.synoptic.utils as syn_uti

from mgear.maya.synoptic.tabs import MainSynopticTab
import widget as wui

QtGui, QtCore, QtWidgets, wrapInstance, shiboken = pyqt.qt_import(True)


##################################################
# SYNOPTIC TAB WIDGET
##################################################


class SynopticTab(MainSynopticTab, wui.Ui_biped_body):

    description = "biped"
    name = "biped"
    bgPath = os.path.join(os.path.dirname(__file__), "background.bmp")

    buttons = [
        {"name": "selRight"},
        {"name": "selLeft"},
        {"name": "keyRight"},
        {"name": "keyLeft"},
    ]

    # ============================================
    # INIT
    def __init__(self, parent=None):
        super(SynopticTab, self).__init__(self, parent)

    # ============================================
    # BUTTONS
    def selRight_clicked(self):
        model = syn_uti.getModel(self)
        # i : num of fingers, j : finger length
        object_names = ["finger_R%s_fk%s_ctl"%(i,j) for i in range(4) for j in range(3)]
        thumb_names = ["thumb_R0_fk%s_ctl"%j for j in range(3)]
        object_names.extend(thumb_names)
        modifiers = QtWidgets.QApplication.keyboardModifiers()
        syn_uti.selectObj(model, object_names, None, modifiers)

    def selLeft_clicked(self):
        model = syn_uti.getModel(self)
        # i : num of fingers, j : finger length
        object_names = ["finger_L%s_fk%s_ctl"%(i,j) for i in range(4) for j in range(3)]
        thumb_names = ["thumb_L0_fk%s_ctl"%j for j in range(3)]
        object_names.extend(thumb_names)
        modifiers = QtWidgets.QApplication.keyboardModifiers()
        syn_uti.selectObj(model, object_names, None, modifiers)

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



'''
MEMO: widget.py snippet
self.thumbRoll_L0_ctl.setToolTip(pyqt.fakeTranslate("biped_body", "thumbRoll_L0_ctl", None, -1))
self.thumbRoll_L0_ctl.setStatusTip(pyqt.fakeTranslate("biped_body", "thumbRoll_L0_ctl", None, -1))
self.thumbRoll_L0_ctl.setWhatsThis(pyqt.fakeTranslate("biped_body", "thumbRoll_L0_ctl", None, -1))
'''
