"""mGear init module"""

import os
import sys
import exceptions

# Debug mode for the logger
logDebug = False

# Severity for logged messages
sev_fatal = 1
sev_error = 2
sev_warning = 4
sev_info = 8
sev_verbose = 16
sev_comment = 32

# gear version
VERSION = [2, 5, 24]

##########################################################
# METHODS
##########################################################


def logInfos():
    """Log version of Gear"""
    print "GEAR version : " + getVersion()


def getVersion():
    """Get mGear version

    Returns:
        mgear version

    """
    return ".".join([str(i) for i in VERSION])


def reloadModule(name="mgear", *args):
    """Reload a module and its sub-modules from a given module name.

    Args:
        name (str): Module Name. Default value is "mgear".

    """
    debugMode = setDebug(False)
    module = __import__(name, globals(), locals(), ["*"], -1)

    path = module.__path__[0]

    __reloadRecursive(path, name)

    setDebug(debugMode)


def __reloadRecursive(path, parentName):
    """search subfolders recursive

    Args:
        path (str): Path to search subfolder recursive
        parentName (str): parent name

    """
    for root, dirs, files in os.walk(path, True, None):

        # parse all the files of given path and reload python modules
        for sfile in files:
            if sfile.endswith(".py"):
                if sfile == "__init__.py":
                    name = parentName
                else:
                    name = parentName + "." + sfile[:-3]

                log("reload : %s" % name)
                try:
                    module = __import__(name, globals(), locals(), ["*"], -1)
                    reload(module)
                except ImportError as e:
                    for arg in e.args:
                        log(arg, sev_error)
                except Exception as e:
                    for arg in e.args:
                        log(arg, sev_error)

        # Now reload sub modules
        for dirName in dirs:
            __reloadRecursive(path + "/" + dirName, parentName + "." + dirName)
        break

##########################################################
# LOGGER
##########################################################


def setDebug(b):
    """Set the debug mode to given value.

    Args:
        b (bool): boolean

    Returns:
        bool: The previous value of the debug mode

    """
    global logDebug
    original_value = logDebug
    logDebug = b
    return original_value


def toggleDebug():
    """Toggle the debug mode value.

    Returns;
        bool: The new debug mode value.

    """
    global logDebug
    logDebug = not logDebug
    return logDebug


def log(message, severity=sev_comment, infos=False):
    """Log a message using severity and additional info from the file itself.

    Severity has been taken from Softimage one:
        * 1. Fatal
        * 2. Error
        * 4. Warning
        * 8. Info
        * 16. Verbose
        * 32. Comment

    Args:
        messages(str): The message
        severity (int): Severity level.
        infos (bool):  Add extra infos from the module, class, method and
            line number.

    """
    message = str(message)

    if infos or logDebug:
        message = getInfos(1) + "\n" + message

    sys.stdout.write(message + "\n")

# ========================================================
# Exception


class FakeException(exceptions.Exception):
    pass


def getInfos(level):
    """Get information from where the method has been fired.
    Such as module name, method, line number...

    Args:
        level (int): Level

    Returns:
        str: The info

    """
    try:
        raise FakeException("this is fake")
    except Exception:
        # get the current execution frame
        f = sys.exc_info()[2].tb_frame

    # go back as many call-frames as was specified
    while level >= 0:
        f = f.f_back
        level = level - 1

    infos = ""

    # Module Name
    moduleName = f.f_globals["__name__"]
    if moduleName != "__ax_main__":
        infos += moduleName + " | "

    # Class Name
    # if there is a self variable in the caller's local namespace then
    # we'll make the assumption that the caller is a class method
    obj = f.f_locals.get("self", None)
    if obj:
        infos += obj.__class__.__name__ + "::"

    # Function Name
    functionName = f.f_code.co_name
    if functionName != "<module>":
        infos += functionName + "()"

    # Line Number
    lineNumber = str(f.f_lineno)
    infos += " line " + lineNumber + ""

    if infos:
        infos = "[" + infos + "]"

    return infos
