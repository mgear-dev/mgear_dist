"""Utilitie functions"""


import os
import sys
from functools import wraps

from maya import cmds
import pymel.core as pm
from maya import mel

import mgear


##########################################################
# UTILS
##########################################################

def is_odd(num):
    """Check if the number is odd.

    Arguments:
    num (int): the number

    Returns:
        bool: True or False
    """
    return num % 2


def gatherCustomModuleDirectories(envvarkey,
                                  defaultModulePath,
                                  component=False):
    """returns component directory

    Arguments:
        envvarkey: The environment variable key name, that is searched
        defaultModulePath: The default module path for search in.

    Returns:
        Dict{string: []string}

    """
    results = {}

    # default path
    if not os.path.exists(defaultModulePath):
        message = "= GEAR RIG SYSTEM ====== notify:"
        message += "\n  default module directory is not " \
                   "found at {}".format(defaultModulePath)
        message += "\n\n check your mGear installation"
        message += " or call your system administrator."
        message += "\n"
        mgear.log(message, mgear.sev_error)
        return {}

    modules = sorted(os.listdir(defaultModulePath))
    results[defaultModulePath] = modules

    # from environment variables
    envvarval = os.environ.get(envvarkey, "")
    for path in envvarval.split(os.pathsep):

        if not path or not os.path.exists(path):
            continue
        if component:
            init_py_path = os.path.join(path, "__init__.py")
            if not os.path.exists(init_py_path):
                message = "= GEAR RIG SYSTEM ====== notify:"
                message += "\n  __init__.py for custom component not " \
                           "found {}".format(init_py_path)
                message += "\n\n check your module definition file or " \
                           "environment variable 'MGEAR_COMPONENTS_PATH'"
                message += " or call your system administrator."
                message += "\n"
                mgear.log(message, mgear.sev_error)
                continue

        modules = sorted(os.listdir(path))
        modules = [x for x in modules if os.path.isdir(os.path.join(path, x))]

        results[path] = modules

    return results


def getModuleBasePath(directories, moduleName):
    """search component path"""

    for basepath, modules in directories.iteritems():
        if moduleName in modules:
            # moduleBasePath = os.path.basename(basepath)
            moduleBasePath = basepath
            break
    else:
        moduleBasePath = ""
        message = "= GEAR RIG SYSTEM ======"
        message += "component base directory not found " \
                   " for {}".format(moduleName)
        mgear.log(message, mgear.sev_error)

    return moduleBasePath


def importFromStandardOrCustomDirectories(directories,
                                          defaultFormatter,
                                          customFormatter,
                                          moduleName):
    """Return imported module

    Arguments:
        directories: the directories for search in. this is got by
            gatherCustomModuleDirectories
        defaultFormatter: this represents module structure for default
            module. for example "mgear.core.shifter.component.{}"
        customFormatter:  this represents module structure for custom
            module. for example "{0}.{1}"

    Returns:
        module: imported module

    """
    # Import module and get class
    try:
        module_name = defaultFormatter.format(moduleName)
        module = __import__(module_name, globals(), locals(), ["*"], -1)

    except ImportError:
        moduleBasePath = getModuleBasePath(directories, moduleName)
        module_name = customFormatter.format(moduleName)
        sys.path.append(pm.dirmap(cd=moduleBasePath))
        module = __import__(module_name, globals(), locals(), ["*"], -1)

    return module


# -----------------------------------------------------------------------------
# Decorators
# -----------------------------------------------------------------------------
def viewport_off(func):
    """Decorator - Turn off Maya display while func is running.

    if func will fail, the error will be raised after.

    type: (function) -> function

    """
    @wraps(func)
    def wrap(*args, **kwargs):
        # type: (*str, **str) -> None

        # Turn $gMainPane Off:
        gMainPane = mel.eval('global string $gMainPane; $temp = $gMainPane;')
        cmds.paneLayout(gMainPane, edit=True, manage=False)

        try:
            return func(*args, **kwargs)

        except Exception as e:
            raise e

        finally:
            cmds.paneLayout(gMainPane, edit=True, manage=True)

    return wrap


def one_undo(func):
    """Decorator - guarantee close chunk.

    type: (function) -> function

    """
    @wraps(func)
    def wrap(*args, **kwargs):
        # type: (*str, **str) -> None

        try:
            cmds.undoInfo(openChunk=True)
            return func(*args, **kwargs)

        except Exception as e:
            raise e

        finally:
            cmds.undoInfo(closeChunk=True)

    return wrap
