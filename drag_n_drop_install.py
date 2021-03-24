"""
Drag and drop this file into your viewport to run the mGear installer.

1. Default Install:
     Will install in the users documents folder where Maya is installed, a
     restart will not be required.

2. Custom Install:
    Will install in the user specified directory, this method will write the
    correct module path in the Maya.env file, but a restart will be required
    in this case.

"""
import os
import sys
import shutil

try:
    import pymel.core as pm
    from pymel import mayautils
    from maya.app.startup import basic
    is_maya = True

except ImportError():
    is_maya = False

# -- maya requires this in order to successfully execute


def onMayaDroppedPythonFile(*args, **kwargs):
    """
    This function is only supported since Maya 2017 Update 3
    """
    pass


def files_exist(file_list):
    """Get all file paths that exist.

    Args:
        file_list (list): List of paths to iterate through

    Returns:
        list: List of all paths found
    """

    file_found = []
    for item in file_list:
        if os.path.exists(item):
            found = item
            file_found.append(found)

    return file_found


def _dropped_install():

    # -- current folder where the installer resides
    current_folder = os.path.dirname(__file__)
    # -- folder of all conents of mgear resides
    mgear_folder = os.path.normpath(os.path.join(current_folder, "release"))
    custom_path = False

    # -- default modules folder to install to
    install_path = os.path.normpath(os.path.join(
        os.environ['MAYA_APP_DIR'], "modules"))

    # -- mesage for the main installer dialog window
    message = (
        "mGear will be installed here:\n"
        "{}\n"
        "\n"
        "Make sure to SAVE your scene before continuing.\n"
        "\n"
        "NOTE: Installing to a custom directory will require a restart.\n"
        "\n"
        "Would you like to continue?".format(install_path)
    )

    # -- installer dialog window
    input = pm.confirmDialog(title="Installation Path",
                             message=message,
                             icon="question",
                             button=["OK", "Cancel", "No, Custom Path"],
                             cancelButton="Cancel",
                             dismissString="Cancel")

    if input == "Cancel":
        pm.displayError("mGear installation has been cancelled.")
        return
    elif input == "No, Custom Path":
        install_path = None

    # -- custom path will be set here
    if install_path is None:
        install_path = pm.fileDialog2(
            fileMode=3,
            okCaption="Install here",
            caption="Please choose a folder to install mGear...")[0]
        custom_path = True

    # -- if install path is still None, exit
    if not install_path:
        return

    # -- flush the undo que in case there is anything that might disrupt
    # the install
    pm.flushUndo()

    # -- create a fresh scene incase there are any solvers still
    # loaded in memory
    pm.newFile(force=True)

    # -- mgear install path
    mgear_install_path = os.path.join(install_path, "mgear")

    # -- make sure the the mgear folder does not exist
    if os.path.exists(mgear_install_path):
        shutil.rmtree(mgear_install_path)

    # -- copy to a folder because tge copytree gives issues with
    # existing folders
    shutil.copytree(mgear_folder, mgear_install_path)

    # -- look in install directory for files of same name
    search_names = ["platforms", "mGear.mod", "scripts"]

    # -- construct path names
    full_path = [os.path.join(install_path, x) for x in search_names]

    # -- files of the same name
    found = files_exist(full_path)
    if found:
        # -- message if same files are found
        message = ("mGear files already exist in the install location.\n"
                   "\n"
                   "Would you like to overrite them?")
        # -- same files dialog window
        input = pm.confirmDialog(title="Delete existing files",
                                 message=message,
                                 icon="warning",
                                 button=["OK", "Cancel"],
                                 cancelButton="Cancel",
                                 dismissString="Cancel")

        if input == "Cancel":
            # -- delete the temp folder
            shutil.rmtree(mgear_install_path)
            pm.displayError("mGear installation has been cancelled.")
            return

    # -- iterate over folders and remove them
    for item in os.listdir(mgear_install_path):
        if os.path.exists(os.path.join(install_path, item)):
            # -- unload plugins incase there is a faulty install
            try:
                pm.unloadPlugin("mgear_solvers.mll", force=True)
                pm.unloadPlugin("weightDriver.mll", force=True)
            except:
                pass
            # -- delete file and folders
            if os.path.isfile(os.path.join(install_path, item)):
                os.remove(os.path.join(install_path, item))
            elif os.path.isdir(os.path.join(install_path, item)):
                shutil.rmtree(os.path.join(install_path, item))
        # -- move the folder to the install path
        shutil.move(os.path.join(install_path, "mgear", item), install_path)

    # -- delete the temp folder
    shutil.rmtree(mgear_install_path)

    # -- now let's get mgear up and running
    # -- add to the system path
    if not os.path.join(install_path, "scripts") in sys.path:
        sys.path.append(os.path.join(install_path, "scripts"))

    if custom_path:
        # -- we look for the Maya.env file and write the path to it
        env_file = os.path.normpath(os.path.join(
            os.environ["MAYA_APP_DIR"], pm.about(version=True), "Maya.env"))
        # -- will create a file if it does not exist
        f = open(env_file, "a+")
        f.write("MAYA_MODULE_PATH={0}".format(install_path))
        f.close()

        # -- custom install dialog message
        message = ("A re-start of Maya will be required after this setup.")

        # -- custom install dialog window
        input = pm.confirmDialog(title="Custom Install Path Restart",
                                 message=message,
                                 icon="information",
                                 button=["OK"])

    # -- if not a custom install we can load in the module
    else:
        # -- allows for not having to restart maya
        pm.loadModule(scan=True)
        pm.loadModule(allModules=True)

        # -- reload user setup files
        basic.executeUserSetup()

        # -- force load the plugins just incase it does not happen
        try:
            pm.loadPlugin("mgear_solvers.mll")
            pm.loadPlugin("weightDriver.mll")
        except:
            pass
        # -- installation message
        message = ("Installation Complete!")
        # -- installation dialog window
        input = pm.confirmDialog(title="Installation",
                                 message=message,
                                 icon="information",
                                 button=["OK"])

    pm.displayInfo("Installation Complete")

if is_maya:
    _dropped_install()
