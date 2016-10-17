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
import mgear.maya.pyqt as gqt
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
from maya.app.general.mayaMixin import MayaQDockWidget
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()

import mgear.maya.synoptic.utils as syn_uti


##################################################
# PROMOTED WIDGETS
##################################################
# They must be declared first because they are used in the widget.ui

class toggleCombo(QtWidgets.QComboBox):

    def __init__(self, parent=None):
        super(toggleCombo, self).__init__(parent)
        self.firstUpdate = False

        self.currentIndexChanged['QString'].connect(self.handleChanged)

        
    def wheelEvent (self, event):
        event.ignore()


    # def focusInEvent(self, event):
    def enterEvent(self, event):
        self.model = syn_uti.getModel(self)
        self.uihost_name = str(self.property("Object"))
        self.combo_attr = str(self.property("Attr"))
        self.ctl_name = str(self.property("ik_ctl"))
        if not self.currentText():
            list1 = syn_uti.getComboKeys( self.model, self.uihost_name, self.combo_attr)
            self.addItems(list1)

        self.setCurrentIndex(syn_uti.getComboIndex( self.model, self.uihost_name, self.combo_attr))
        self.firstUpdate = True 

    def handleChanged(self):
        if self.firstUpdate:
            if self.currentIndex() == self.count() -1:
                print "Space Transfer"
                self.setCurrentIndex(syn_uti.getComboIndex( self.model, self.uihost_name, self.combo_attr))
                # self.setCurrentIndex(0)
                syn_uti.showSpaceTransferUI(self, self.model, self.uihost_name, self.combo_attr, self.ctl_name)

            else:
                syn_uti.changeSpace(self.model, self.uihost_name, self.combo_attr, self.currentIndex(), self.ctl_name)

class bakeMocap(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        model = syn_uti.getModel(self)
        syn_uti.bakeMocap(model)

class ikfkMatchButton(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        model = syn_uti.getModel(self)
        ikfk_attr = str(self.property("ikfk_attr"))
        uiHost_name = str(self.property("uiHost_name"))
        fk0 = str(self.property("fk0"))
        fk1 = str(self.property("fk1"))
        fk2 = str(self.property("fk2"))
        ik = str(self.property("ik"))
        upv = str(self.property("upv"))

        mouse_button = event.button()

        syn_uti.ikFkMatch(model, ikfk_attr, uiHost_name, fk0, fk1, fk2, ik, upv)

class toggleAttrButton(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        model = syn_uti.getModel(self)
        object_name = str(self.property("Object"))
        attr_name = str(self.property("Attr"))
        mouse_button = event.button()

        syn_uti.toggleAttr(model, object_name, attr_name)


class resetTransform(QtWidgets.QPushButton):

    def mousePressEvent(self, event):
        mouse_button = event.button()
        syn_uti.resetSelTrans()


class resetBindPose(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        model = syn_uti.getModel(self)
        mouse_button = event.button()

        syn_uti.bindPose(model)

class MirrorPoseButton(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        mouse_button = event.button()
        syn_uti.mirrorPose()

class FlipPoseButton(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        mouse_button = event.button()
        syn_uti.mirrorPose(True)

class QuickSelButton(QtWidgets.QPushButton):

    def mousePressEvent(self, event):

        model = syn_uti.getModel(self)
        channel = str(self.property("channel"))
        mouse_button = event.button()

        syn_uti.quickSel(model, channel, mouse_button)

class SelectButton(QtWidgets.QWidget):
    over = False
    color_over = QtGui.QColor(255, 255, 255, 255)

    def __init__(self, parent=None):
        super(SelectButton, self).__init__(parent)
        p = self.palette()
        p.setColor(self.foregroundRole(),QtGui.QColor(000, 000, 000, 000))
        self.setPalette(p)
    

    def enterEvent(self, event):
        self.over = True
        self.repaint()
        self.update()

    def leaveEvent(self, event):
        self.over = False
        self.repaint()
        self.update()

    def rectangleSelection(self,event, firstLoop):
        if firstLoop:
            key_modifier = event.modifiers()
        else:
            key_modifier = QtCore.Qt.ShiftModifier
        model = syn_uti.getModel(self)
        object = str(self.property("object")).split(",")

        mouse_button = event.button()
        syn_uti.selectObj(model, object, mouse_button, key_modifier)

    def mousePressEvent(self, event):

        model = syn_uti.getModel(self)
        object = str(self.property("object")).split(",")
        mouse_button = event.button()
        key_modifier = event.modifiers()

        syn_uti.selectObj(model, object, mouse_button, key_modifier)

    def paintEvent(self, event):
        painter = QtGui.QPainter()
        painter.begin(self)
        if self.over:
            painter.setBrush(self.color_over)
        else:
            painter.setBrush(self.color)
        self.drawShape(painter)
        painter.end()

    def paintSelected(self, paint=False):
        if paint:
            p = self.palette()
            p.setColor(self.foregroundRole(),QtGui.QColor(255, 255, 255, 255))
            self.setPalette(p)
        else:
            p = self.palette()
            p.setColor(self.foregroundRole(),QtGui.QColor(000, 000, 000, 000))
            self.setPalette(p)


class SelectBtn_RFk(SelectButton):
    color = QtGui.QColor(0, 0, 192, 255)

class SelectBtn_RIk(SelectButton):
    color = QtGui.QColor(0, 128, 192, 255)

class SelectBtn_CFk(SelectButton):
    color = QtGui.QColor(128, 0, 128, 255)

class SelectBtn_CIk(SelectButton):
    color = QtGui.QColor(192, 64, 192, 255)

class SelectBtn_LFk(SelectButton):
    color = QtGui.QColor(192, 0, 0, 255)

class SelectBtn_LIk(SelectButton):
    color = QtGui.QColor(192, 128, 0, 255)

class SelectBtn_yellow(SelectButton):
    color = QtGui.QColor(255, 192, 0, 255)

class SelectBtn_green(SelectButton):
    color = QtGui.QColor(0, 192, 0, 255)

class SelectBtn_darkGreen(SelectButton):
    color = QtGui.QColor(0, 100, 0, 255)

class SelectBtn_Box(SelectButton):
    def drawShape(self, painter):
        painter.drawRect(0, 0, self.width()-1, self.height()-1)

class SelectBtn_Circle(SelectButton):
    def drawShape(self, painter):
        painter.drawEllipse(0, 0, self.width()-1, self.height()-1)

class SelectBtn_TriangleLeft(SelectButton):
    def drawShape(self, painter):
        triangle = QtGui.QPolygon([QtCore.QPoint(1, self.height()/2), QtCore.QPoint( self.width()-1, 0), QtCore.QPoint( self.width()-1,self.height()-1)])
        painter.drawPolygon(triangle)

class SelectBtn_TriangleRight(SelectButton):
    def drawShape(self, painter):
        triangle = QtGui.QPolygon([ QtCore.QPoint(-1, 0), QtCore.QPoint( -1,self.height()-1), QtCore.QPoint(self.width()-1, self.height()/2)])
        painter.drawPolygon(triangle)
        painter.setClipRegion(triangle, QtCore.Qt.ReplaceClip)

# ------------------------------------------
class SelectBtn_RFkBox(SelectBtn_RFk, SelectBtn_Box):
    pass
class SelectBtn_RIkBox(SelectBtn_RIk, SelectBtn_Box):
    pass
class SelectBtn_CFkBox(SelectBtn_CFk, SelectBtn_Box):
    pass
class SelectBtn_CIkBox(SelectBtn_CIk, SelectBtn_Box):
    pass
class SelectBtn_LFkBox(SelectBtn_LFk, SelectBtn_Box):
    pass
class SelectBtn_LIkBox(SelectBtn_LIk, SelectBtn_Box):
    pass
class SelectBtn_yellowBox(SelectBtn_yellow, SelectBtn_Box):
    pass
class SelectBtn_greenBox(SelectBtn_green, SelectBtn_Box):
    pass
class SelectBtn_darkGreenBox(SelectBtn_darkGreen, SelectBtn_Box):
    pass

class SelectBtn_RFkCircle(SelectBtn_RFk, SelectBtn_Circle):
    pass
class SelectBtn_RIkCircle(SelectBtn_RIk, SelectBtn_Circle):
    pass
class SelectBtn_CFkCircle(SelectBtn_CFk, SelectBtn_Circle):
    pass
class SelectBtn_CIkCircle(SelectBtn_CIk, SelectBtn_Circle):
    pass
class SelectBtn_LFkCircle(SelectBtn_LFk, SelectBtn_Circle):
    pass
class SelectBtn_LIkCircle(SelectBtn_LIk, SelectBtn_Circle):
    pass
class SelectBtn_greenCircle(SelectBtn_green, SelectBtn_Circle):
    pass
class SelectBtn_redCircle(SelectBtn_LFk, SelectBtn_Circle):
    pass
class SelectBtn_yellowCircle(SelectBtn_yellow, SelectBtn_Circle):
    pass
class SelectBtn_blueCircle(SelectBtn_RFk, SelectBtn_Circle):
    pass

class SelectBtn_greenTriangleRight(SelectBtn_green, SelectBtn_TriangleRight):
    pass
class SelectBtn_greenTriangleLeft(SelectBtn_green, SelectBtn_TriangleLeft):
    pass