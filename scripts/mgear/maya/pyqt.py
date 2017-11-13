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
import traceback
import maya.OpenMayaUI as omui

from mGear_pyqt import qt_import
from mgear.vendor.Qt import QtWidgets, QtCompat

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
    return QtCompat.wrapInstance(long(main_window_ptr), QtWidgets.QWidget)

def showDialog(dialog, dInst=True, *args):
    """
    Show the defined dialog window

    Attributes:
        dialog (QDialog): The window to show.

    """
    if dInst:
        try:
            for c in maya_main_window().children():
                if isinstance(c, dialog):
                    c.deleteLater()
        except:
            pass

    # Create minimal dialog object

    # if versions.current() >= 20180000:
    #     windw = dialog(maya_main_window())
    # else:
    windw = dialog()
    windw.move(QtWidgets.QApplication.desktop().screen().rect().center()- windw.rect().center())

    # Delete the UI if errors occur to avoid causing winEvent
    # and event errors (in Maya 2014)
    try:
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

def fakeTranslate(*args):
    """
    fake QApplication.translate. This function helps to bypass the incompativility
    for the Unicode utf8  deprecated in pyside2


    """

    return args[1]
