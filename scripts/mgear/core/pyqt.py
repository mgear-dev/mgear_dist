"""pyQt/pySide widgets and helper functions for mGear"""

#############################################
# GLOBAL
#############################################
import os
import traceback
import maya.OpenMayaUI as omui

from mgear.vendor.Qt import QtWidgets, QtCompat

# TODO: Delete after finish refactor
# not used in this module, but imported in others
from mGear_pyqt import qt_import

#############################################
# helper Maya pyQt functions
#############################################


def maya_main_window():
    """Get Maya's main window

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
        except Exception:
            pass

    # Create minimal dialog object

    # if versions.current() >= 20180000:
    #     windw = dialog(maya_main_window())
    # else:
    windw = dialog()
    windw.move(QtWidgets.QApplication.desktop().screen().rect().center()
               - windw.rect().center())

    # Delete the UI if errors occur to avoid causing winEvent
    # and event errors (in Maya 2014)
    try:
        windw.show()
    except Exception:
        windw.deleteLater()
        traceback.print_exc()


def deleteInstances(dialog, checkinstance):
    """Delete any instance of a given dialog

    Delete any instance of a given dialog and if the dialog is
    instance of checkinstance.

    Attributes:
        dialog (QDialog): The dialog to delete.
        checkinstance (QDialog): The instance to check the type of dialog.

    """
    mayaMainWindow = maya_main_window()
    for obj in mayaMainWindow.children():
        if isinstance(obj, checkinstance):
            if obj.widget().objectName() == dialog.toolName:
                print 'Deleting instance {0}'.format(obj)
                mayaMainWindow.removeDockWidget(obj)
                obj.setParent(None)
                obj.deleteLater()


def fakeTranslate(*args):
    """Fake Translation

    fake QApplication.translate. This function helps to bypass the
    incompativility for the Unicode utf8  deprecated in pyside2

    """
    return args[1]
