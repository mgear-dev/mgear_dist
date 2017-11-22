import os
import pymel.core as pm

from mgear.maya import shifter, utils
from mgear.maya.shifter import gui, component


def guideUI(*args):
    """Open shifter UI"""
    gui.Guide_UI()


# @utils.one_undo
def buildFromSelection(*args):
    """Build the rig from the guide root selection or a component root"""
    gui.Guide_UI.buildFromSelection()


def updateGuide(*args):
    """Update the guide rig"""
    if pm.selected():
        rgGuide = shifter.RigGuide()
        rgGuide.update(pm.selected()[0])
    else:
        pm.displayWarning("Please select the guide top node")


def bipedGuide(*args):
    """Import the basic biped template"""
    path = os.path.dirname(component.__file__)
    pm.importFile(os.path.join(path, "_templates", "biped_guide.ma"))


def quadrupedGuide(*args):
    """Import the basic quadruped template"""
    path = os.path.dirname(component.__file__)
    pm.importFile(os.path.join(path, "_templates", "quadruped.ma"))
