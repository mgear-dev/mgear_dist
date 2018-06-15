from maya import utils


def mGearLoader():
    """Create mGear menu"""
    import menu
    menu.CreateMenu()


utils.executeDeferred(mGearLoader)
