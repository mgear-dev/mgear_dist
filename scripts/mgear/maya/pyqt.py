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

"""
pyQt/pySide widgets and helper functions for mGear
"""

#############################################
# GLOBAL
#############################################
import os
import pymel.core as pm
import maya.cmds as cmds

from maya.app.general.mayaMixin import MayaQDockWidget

from functools import partial
import traceback
import maya.OpenMayaUI as omui

def _qt_import(binding, shi=False):
    QtGui = None
    QtCore = None
    QtWidgets = None
    wrapInstance = None

    if binding == "PySide2":
        from PySide2 import QtGui, QtCore, QtWidgets
        import shiboken2 as shiboken
        from shiboken2 import wrapInstance

    elif binding == "PySide":
        from PySide import QtGui, QtCore
        import PySide.QtGui as QtWidgets
        import shiboken
        from shiboken import wrapInstance

    elif binding == "PyQt4":
        from PyQt4 import QtGui
        from PyQt4 import QtCore
        import PyQt4.QtGui as QtWidgets
        from PyQt4.QtCore import QObject, pyqtSignal
        from sip import wrapinstance as wrapInstance

    else:
        raise Exception("Unsupported python Qt binding '%s'" % binding)

    if shi:
        return QtGui, QtCore, QtWidgets, wrapInstance, shiboken
    else:
        return QtGui, QtCore, QtWidgets, wrapInstance

##  Master qt import function ##
def qt_import(shi=False):
    """
    import pyside/pyQt

    Returns:
        multi: QtGui, QtCore, QtWidgets, wrapInstance

    """
    lookup = ["PySide2", "PySide", "PyQt4"]

    preferredBinding = os.environ.get("MGEAR_PYTHON_QT_BINDING", None)
    if preferredBinding is not None and preferredBinding in lookup:
        lookup.remove(preferredBinding)
        lookup.insert(0, preferredBinding)

    for binding in lookup:
        try:
            return _qt_import(binding, shi)
        except:
            pass

    raise _qt_import("ThisBindingSurelyDoesNotExist", False)


QtGui, QtCore, QtWidgets, wrapInstance = qt_import()


#############################################
# helper Maya pyQt functions
#############################################

def maya_main_window():
    """
    Get Maya's main window

    Returns:
        QMainWindow: main window.

    """

    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QtWidgets.QMainWindow)



def showDialog(dialog, *args):
    """
    Show the defined dialog window

    Attributes:
        dialog (QDialog): The window to show.

    """

    try:
        for c in maya_main_window().children():
            if isinstance(c, dialog):
                c.deleteLater()
    except:
        pass

    # Create minimal dialog object
    windw = dialog(maya_main_window())
    windw.move(QtWidgets.QApplication.desktop().screen().rect().center()- windw.rect().center())

    # Delete the UI if errors occur to avoid causing winEvent
    # and event errors (in Maya 2014)
    try:
        # windw.create()
        # windw.show(dockable = True)
        windw.show()
    except:
        windw.deleteLater()
        traceback.print_exc()


def deleteInstances(dialog, checkinstance):
    """
    Delete any instance of a given dialog and if the dialog is instance of checkinstance.

    Attributes:
        dialog (QDialog): The dialog to delete.
        checkinstance (QDialog): The instance to check the type of dialog.

    """
    
    mayaMainWindow = maya_main_window()
    for obj in mayaMainWindow.children():
        if type( obj ) == checkinstance:
            if obj.widget().objectName() == dialog.toolName:
                print 'Deleting instance {0}'.format(obj)
                mayaMainWindow.removeDockWidget(obj)
                obj.setParent(None)
                obj.deleteLater()        


def createStandardContextMenu(lineEdit):
        menu = QLineEdit.createStandardContextMenu(self.lineEdit())
        menu.addSeparator()
        menu.addAction(_('&Edit authors'), self.edit_authors)
        return menu


def fakeTranslate(*args):
    """
    fake QApplication.translate. This function helps to bypass the incompativility 
    for the Unicode utf8  deprecated in pyside2
    

    """

    return args[1]