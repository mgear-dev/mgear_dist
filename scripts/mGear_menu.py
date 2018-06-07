import os
import subprocess
import sys
from functools import partial

import pymel.core as pm
from mgear.rigbits import (
    rope,
    proxySlicer,
    utils,
    channelWrangler,
    eye_rigger,
    lips_rigger,
    rbf_manager_ui
)

import mgear
from mGear_guidesTemplates import (
    guideUI,
    buildFromSelection,
    bipedGuide,
    quadrupedGuide,
    updateGuide
)
from mGear_mocapTools import (
    importSkeletonBiped,
    characterizeBiped,
    bakeMocap,
)
from mgear.core import skin, attribute
from mgear import synoptic, shifter, rigbits
from mgear.animbits import softTweaks
from mgear.rigbits import postSpring
from mgear.simpleRig import simpleRigTool


def openFile(file, *args):
    if sys.platform.startswith("darwin"):
        subprocess.call(("open", file))
    elif os.name == "nt":
        os.startfile(file)
    elif os.name == "posix":
        subprocess.call(("xdg-open", file))
    else:
        raise OSError("Unsupported platform '%s'" % os.name)


def createMenu():
    if pm.menu("mGear", exists=True):
        pm.deleteUI("mGear")

    mGearM = pm.menu("mGear",
                     parent="MayaWindow",
                     tearOff=True,
                     allowOptionBoxes=True,
                     label="mGear")

    # Rigging systems
    # Shifter rigging builder
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Shifter")
    pm.menuItem(label="Guides UI", command=guideUI)
    pm.menuItem(divider=True)
    pm.menuItem(label="Build From Selection",
                command=buildFromSelection)
    pm.menuItem(divider=True)
    pm.menuItem(label="Import Biped Guide",
                command=bipedGuide)
    pm.menuItem(label="Import Quadruped Guide",
                command=quadrupedGuide)
    pm.menuItem(divider=True)
    pm.menuItem(label="Update Guide", command=updateGuide)
    pm.menuItem(divider=True)
    pm.menuItem(label="Reload Components", command=shifter.reloadComponents)

    pm.setParent(mGearM, menu=True)
    pm.menuItem(divider=True)

    # Simple rig
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Simple Rig")
    pm.menuItem(label="Simple Rig Tool", command=simpleRigTool.openSimpleRigUI)
    pm.setParent(mGearM, menu=True)
    pm.menuItem(divider=True)

    # Rigging Tools
    riggingM = pm.menuItem(parent="mGear",
                           subMenu=True,
                           tearOff=True,
                           label="Rigging")
    pm.menuItem(label="Add NPO", command=rigbits.addNPO)
    pm.menuItem(subMenu=True, tearOff=True, label="Gimmick Joints")
    pm.menuItem(label="Add Joint",
                command=rigbits.addJnt)
    pm.menuItem(divider=True)
    pm.menuItem(label="Add Blended Joint",
                command=rigbits.addBlendedJoint)
    pm.menuItem(label="Add Support Joint",
                command=rigbits.addSupportJoint)
    pm.setParent(riggingM, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(label="Replace Shape",
                command=rigbits.replaceShape)
    pm.menuItem(divider=True)
    pm.menuItem(label="Match All Transform", command=rigbits.matchWorldXform)
    pm.menuItem(label="Match Pos with BBox", command=rigbits.matchPosfromBBox)
    pm.menuItem(label="Align Ref Axis", command=rigbits.alignToPointsLoop)

    pm.setParent(riggingM, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(subMenu=True, tearOff=True, label="CTL as Parent")
    pm.menuItem(label="Square", command=partial(rigbits.createCTL, "square"))
    pm.menuItem(label="Circle", command=partial(rigbits.createCTL, "circle"))
    pm.menuItem(label="Cube", command=partial(rigbits.createCTL, "cube"))
    pm.menuItem(label="Diamond", command=partial(rigbits.createCTL, "diamond"))
    pm.menuItem(label="Sphere", command=partial(rigbits.createCTL, "sphere"))
    pm.menuItem(label="Cross", command=partial(rigbits.createCTL, "cross"))
    pm.menuItem(label="Cross Arrow",
                command=partial(rigbits.createCTL, "crossarrow"))
    pm.menuItem(label="Pyramid",
                command=partial(rigbits.createCTL, "pyramid"))
    pm.menuItem(label="Cube With Peak",
                command=partial(rigbits.createCTL, "cubewithpeak"))
    pm.setParent(riggingM, menu=True)
    pm.menuItem(subMenu=True, tearOff=True, label="CTL as Child")
    pm.menuItem(label="Square",
                command=partial(rigbits.createCTL, "square", True))
    pm.menuItem(label="Circle",
                command=partial(rigbits.createCTL, "circle", True))
    pm.menuItem(label="Cube",
                command=partial(rigbits.createCTL, "cube", True))
    pm.menuItem(label="Diamond",
                command=partial(rigbits.createCTL, "diamond", True))
    pm.menuItem(label="Sphere",
                command=partial(rigbits.createCTL, "sphere", True))
    pm.menuItem(label="Cross",
                command=partial(rigbits.createCTL, "cross", True))
    pm.menuItem(label="Cross Arrow",
                command=partial(rigbits.createCTL, "crossarrow", True))
    pm.menuItem(label="Pyramid",
                command=partial(rigbits.createCTL, "pyramid", True))
    pm.menuItem(label="Cube With Peak",
                command=partial(rigbits.createCTL, "cubewithpeak", True))
    pm.setParent(riggingM, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(label="Duplicate symmetrical",
                command=rigbits.duplicateSym)
    pm.menuItem(divider=True)
    pm.menuItem(label="RBF Manager",
                command=rbf_manager_ui.show)
    pm.menuItem(label="Space Jumper",
                command=rigbits.spaceJump)
    pm.menuItem(label="Interpolated Transform",
                command=rigbits.createInterpolateTransform)

    pm.menuItem(subMenu=True, tearOff=True, label="Connect local SRT")
    pm.menuItem(label="connect SRT",
                command=partial(rigbits.connectLocalTransform, None, 1, 1, 1))
    pm.menuItem(label="connect T",
                command=partial(rigbits.connectLocalTransform, None, 0, 0, 1))
    pm.menuItem(label="connect R",
                command=partial(rigbits.connectLocalTransform, None, 0, 1, 0))
    pm.menuItem(label="connect S",
                command=partial(rigbits.connectLocalTransform, None, 1, 0, 0))
    pm.setParent(riggingM, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(label="Spring", command=postSpring.spring_UI)
    pm.menuItem(label="Rope", command=rope.rope_UI)
    pm.menuItem(divider=True)
    pm.menuItem(label="Channel Wrangler",
                command=channelWrangler.openChannelWrangler)
    pm.menuItem(divider=True)
    pm.menuItem(label="FACIAL: Eye Rigger",
                command=eye_rigger.showEyeRigUI)
    pm.menuItem(label="FACIAL: Lips Rigger",
                command=lips_rigger.showLipRigUI)

    # skinning tools
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Skinning")
    pm.menuItem(label="Copy Skin", command=partial(skin.skinCopy, None, None))
    pm.menuItem(label="Select Skin Deformers", command=skin.selectDeformers)
    pm.menuItem(divider=True)
    pm.menuItem(label="Import Skin", command=skin.importSkin)
    pm.menuItem(label="Import Skin Pack", command=skin.importSkinPack)
    pm.menuItem(divider=True)
    pm.menuItem(label="Export Skin", command=skin.exportSkin)
    pm.menuItem(label="Export Skin Pack", command=skin.exportSkinPack)
    pm.menuItem(divider=True)
    pm.menuItem(label="Get Names in gSkin File",
                command=skin.getObjsFromSkinFile)

    # Modeling tools
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Modeling")
    pm.menuItem(label="Proxy Slicer",
                command=partial(proxySlicer.slice))
    pm.menuItem(label="Proxy Slicer Parenting",
                command=partial(proxySlicer.slice, True))

    # Animation Tools
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Animation")
    pm.menuItem(label="Synoptic", command=synoptic.open)
    pm.menuItem(divider=True)
    pm.menuItem(label="Soft Tweaks", command=softTweaks.openSoftTweakManager)
    pm.menuItem(divider=True)
    pm.menuItem(label="Import Mocap Skeleton Biped",
                command=importSkeletonBiped)
    pm.menuItem(label="Characterize Biped",
                command=characterizeBiped)
    pm.menuItem(label="Bake Mocap Biped", command=bakeMocap)
    pm.menuItem(divider=True)
    pm.menuItem(label="Smart Reset Attribute/SRT",
                command=attribute.smart_reset)

    # util Tools
    pm.setParent(mGearM, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Utilities")
    pm.menuItem(label="Reload", command=partial(mgear.reloadModule, "mgear"))
    pm.menuItem(divider=True)
    pm.menuItem(label="Compile PyQt ui", command=utils.ui2py)
    pm.menuItem(divider=True)
    pm.menuItem(label="Create mGear Hotkeys",
                command=utils.createHotkeys)

    # Help
    pm.setParent(mGearM, menu=True)
    pm.menuItem(divider=True)
    pm.menuItem(parent="mGear", subMenu=True, tearOff=True, label="Help")
    pm.menuItem(label="Web",
                command=partial(
                    openFile,
                    "http://www.mgear-framework.com/"))
    pm.menuItem(label="Forum",
                command=partial(
                    openFile,
                    "http://forum.mgear-framework.com/"))
    pm.menuItem(divider=True)
    pm.menuItem(label="About", command=mgear.core.aboutMgear)


# Backwards compatibiltiy
CreateMenu = createMenu
