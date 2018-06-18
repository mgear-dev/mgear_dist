from functools import partial
import webbrowser
import pymel.core as pm
import mgear

menuId = "mGear"


def create(menuId=menuId):
    """Create mGear main menu

    Args:
        menuId (str, optional): Main menu name

    Returns:
        str: main manu name
    """

    if pm.menu(menuId, exists=True):
        pm.deleteUI(menuId)

    pm.menu(menuId,
            parent="MayaWindow",
            tearOff=True,
            allowOptionBoxes=True,
            label=menuId)

    return menuId


def install_help_menu(menuId=menuId):
    """Install help menu section

    Args:
        menuId (str, optional): Main menu name
    """

    # Help
    pm.setParent(menuId, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(parent=menuId, subMenu=True, tearOff=True, label="Help")
    pm.menuItem(label="Web",
                command=lambda _=None: webbrowser.open(
                    "http://www.mgear-framework.com/")
                )
    pm.menuItem(label="Forum",
                command=lambda _=None: webbrowser.open(
                    "http://forum.mgear-framework.com/")
                )
    pm.menuItem(divider=True)
    pm.menuItem(label="About", command=mgear.core.aboutMgear)


def install_utils_menu():
    """Install Utilities submenu
    """
    pm.setParent(mgear.menu_id, menu=True)
    pm.menuItem(divider=True)
    commands = [("Reload", partial(mgear.reloadModule, "mgear"))]

    m = install("Utilities", commands)
    return m


def install(label, commands, parent=menuId):
    """Installer Function for sub menus

    Args:
        label (str): Name of the sub menu
        commands (list): List of commands to install
        parent (str, optional): Parent menu for the submenu
    """
    try:
        m = pm.menuItem(parent=parent,
                        subMenu=True,
                        tearOff=True,
                        label=label)
        for label, command in commands:
            if not command:
                pm.menuItem(divider=True)
                continue
            if not label:
                command(m)
                pm.setParent(m, menu=True)
                continue

            pm.menuItem(label=label, command=command)

        return m

    except Exception as ex:
        template = ("An exception of type {0} occured. "
                    "Arguments:\n{1!r}")
        message = template.format(type(ex).__name__, ex.args)
        pm.displayError(message)
