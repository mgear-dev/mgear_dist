import os


def _qt_import(binding, shi=False, cui=False):
    QtGui = None
    QtCore = None
    QtWidgets = None
    wrapInstance = None

    if binding == "PySide2":
        from PySide2 import QtGui, QtCore, QtWidgets
        import shiboken2 as shiboken
        from shiboken2 import wrapInstance
        from pyside2uic import compileUi

    elif binding == "PySide":
        from PySide import QtGui, QtCore
        import PySide.QtGui as QtWidgets
        import shiboken
        from shiboken import wrapInstance
        from pysideuic import compileUi

    elif binding == "PyQt4":
        from PyQt4 import QtGui
        from PyQt4 import QtCore
        import PyQt4.QtGui as QtWidgets
        from sip import wrapinstance as wrapInstance
        from PyQt4.uic import compileUi
        print("Warning: 'shiboken' is not supported in 'PyQt4' Qt binding")
        shiboken = None

    else:
        raise Exception("Unsupported python Qt binding '%s'" % binding)

    rv = [QtGui, QtCore, QtWidgets, wrapInstance]
    if shi:
        rv.append(shiboken)
    if cui:
        rv.append(compileUi)
    return rv


def qt_import(shi=False, cui=False):
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
            return _qt_import(binding, shi, cui)
        except Exception:
            pass

    raise _qt_import("ThisBindingSurelyDoesNotExist", False, False)


(QtGui,
 QtCore,
 QtWidgets,
 wrapInstance,
 shiboken,
 compileUi) = qt_import(shi=True, cui=True)
