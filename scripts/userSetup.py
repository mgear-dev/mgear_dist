from maya import utils


def mGearLoader():
    """Create mGear menu"""
    import mGear_menu
    mGear_menu.CreateMenu()


utils.executeDeferred(mGearLoader)
