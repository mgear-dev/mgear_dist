# MGEAR is under the terms of the MIT License

# Copyright (c) 2016 Jeremie Passerin, Miquel Campos

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Author:     Jeremie Passerin      geerem@hotmail.com  www.jeremiepasserin.com
# Author:     Miquel Campos         hello@miquel-campos.com  www.miquel-campos.com
# Date:       2016 / 10 / 10

from functools import partial
import pymel.core as pm

#mGear Tools
import mGear_postSpring
import mGear_proxySlicer
import mGear_rope
import mGear_guidesTemplates
import mGear_utils

import mGear_mocapTools


#mGear modules
import mgear
import mgear.maya.synoptic as syn
import mgear.maya.skin as skin

#import rigbits
import mgear.maya.rigbits as rigbits


def CreateMenu():

    if pm.menu('mGear', exists=1):
        pm.deleteUI('mGear')
    mGearM = pm.menu('mGear', p='MayaWindow', tearOff=1, allowOptionBoxes=1, label='mGear')

    ## Rigging systems
    ## Shifter rigging builder
    shifterM = pm.menuItem(parent='mGear', subMenu=True, tearOff=True, label='Shifter')
    pm.menuItem(label="Guides UI", command=partial(mGear_guidesTemplates.guideUI))
    pm.menuItem( divider=True )
    pm.menuItem(label="Build From Selection", command=partial(mGear_guidesTemplates.buildFromSelection))
    pm.menuItem( divider=True )
    pm.menuItem(label="Import Biped Guide", command=partial(mGear_guidesTemplates.bipedGuide))
    pm.menuItem(label="Import Quadruped Guide", command=partial(mGear_guidesTemplates.quadrupedGuide))
    pm.menuItem( divider=True )
    pm.menuItem(label="Update Guide", command=partial(mGear_guidesTemplates.updateGuide))


    pm.setParent(mGearM, menu=True)
    pm.menuItem( divider=True )

    ## Rigging Tools
    riggingM = pm.menuItem(parent='mGear', subMenu=True, tearOff=True, label='Rigging')
    pm.menuItem(label="Add NPO", command=partial(rigbits.addNPO))
    pm.menuItem(subMenu=True, tearOff=True, label='Gimmick Joints')
    pm.menuItem(label="Add Joint", command=partial(rigbits.addJnt, False, False))
    pm.menuItem( divider=True )
    pm.menuItem(label="Add Blended Joint", command=partial(rigbits.addBlendedJoint, False, False))
    pm.menuItem(label="Add Support Joint", command=partial(rigbits.addSupportJoint, False, False))
    pm.setParent(riggingM, menu=True)
    pm.menuItem( divider=True )
    pm.menuItem(label="Replace Shape", command=partial(rigbits.replaceShape))
    pm.menuItem( divider=True )
    pm.menuItem(label="Match All Transform", command=partial(rigbits.matchWorldXform))
    pm.menuItem(label="Match Pos with BBox", command=partial(rigbits.matchPosfromBBox))
    pm.menuItem(label="Align Ref Axis", command=partial(rigbits.alignToPointsLoop, None, None, None))

    pm.setParent(riggingM, menu=True)
    pm.menuItem( divider=True )
    pm.menuItem(subMenu=True, tearOff=True, label='CTL as Parent')
    pm.menuItem(label="Square", command=partial(rigbits.createCTL, "square"))
    pm.menuItem(label="Circle", command=partial(rigbits.createCTL, "circle"))
    pm.menuItem(label="Cube", command=partial(rigbits.createCTL, "cube"))
    pm.menuItem(label="Diamond", command=partial(rigbits.createCTL, "diamond"))
    pm.menuItem(label="Sphere", command=partial(rigbits.createCTL, "sphere"))
    pm.menuItem(label="Cross", command=partial(rigbits.createCTL, "cross"))
    pm.menuItem(label="Cross Arrow", command=partial(rigbits.createCTL, "crossarrow"))
    pm.menuItem(label="Pyramid", command=partial(rigbits.createCTL, "pyramid"))
    pm.menuItem(label="Cube With Peak", command=partial(rigbits.createCTL, "cubewithpeak"))
    pm.setParent(riggingM, menu=True)
    pm.menuItem(subMenu=True, tearOff=True, label='CTL as Child')
    pm.menuItem(label="Square", command=partial(rigbits.createCTL, "square", True))
    pm.menuItem(label="Circle", command=partial(rigbits.createCTL, "circle", True))
    pm.menuItem(label="Cube", command=partial(rigbits.createCTL, "cube", True))
    pm.menuItem(label="Diamond", command=partial(rigbits.createCTL, "diamond", True))
    pm.menuItem(label="Sphere", command=partial(rigbits.createCTL, "sphere", True))
    pm.menuItem(label="Cross", command=partial(rigbits.createCTL, "cross", True))
    pm.menuItem(label="Cross Arrow", command=partial(rigbits.createCTL, "crossarrow", True))
    pm.menuItem(label="Pyramid", command=partial(rigbits.createCTL, "pyramid", True))
    pm.menuItem(label="Cube With Peak", command=partial(rigbits.createCTL, "cubewithpeak", True))
    pm.setParent(riggingM, menu=True)
    pm.menuItem( divider=True )
    pm.menuItem(label="Duplicate symmetrical", command=partial(rigbits.duplicateSym))
    pm.menuItem( divider=True )
    pm.menuItem(label="Space Jumper", command=partial(rigbits.spaceJump))
    pm.menuItem(label="Interpolated Transform", command=partial(rigbits.createInterpolateTransform))

    pm.menuItem(subMenu=True, tearOff=True, label='Connect local SRT')
    pm.menuItem(label="connect SRT", command=partial(rigbits.connectLocalTransform, None, 1, 1, 1))
    pm.menuItem(label="connect T", command=partial(rigbits.connectLocalTransform, None, 0, 0, 1))
    pm.menuItem(label="connect R", command=partial(rigbits.connectLocalTransform, None, 0, 1, 0))
    pm.menuItem(label="connect S", command=partial(rigbits.connectLocalTransform, None, 1, 0, 0))
    pm.setParent(riggingM, menu=True)
    pm.menuItem( divider=True )
    pm.menuItem(label="Spring", command=partial(mGear_postSpring.spring_UI))
    pm.menuItem(label="Rope", command=partial(mGear_rope.rope_UI))

    

    ## skinning tools
    skinM = pm.menuItem(parent='mGear', subMenu=True, tearOff=True, label='Skinning')
    pm.menuItem(label="Copy Skin", command=partial(skin.skinCopy, None, None))
    pm.menuItem(label="Select Skin Deformers", command=partial(skin.selectDeformers))
    pm.menuItem( divider=True )
    pm.menuItem(label="Import Skin", command=partial(skin.importSkin, None, False))
    pm.menuItem(label="Export Skin", command=partial(skin.exportSkin, None, None))
    pm.menuItem( divider=True )
    pm.menuItem(label="Get Names in gSkin File", command=partial(skin.getObjsFromSkinFile, None, False))


    ## Modeling tools
    modelM = pm.menuItem(parent='mGear', subMenu=True, tearOff=True, label='Modeling')
    pm.menuItem(label="Proxy Slicer", command=partial(mGear_proxySlicer.slice))
    pm.menuItem(label="Proxy Slicer Parenting", command=partial(mGear_proxySlicer.slice, True))

    ## Animation Tools
    animationM = pm.menuItem(parent='mGear', subMenu=True, tearOff=True, label='Animation')
    pm.menuItem(label="Synoptic", command=partial(syn.open))
    pm.menuItem( divider=True )
    pm.menuItem(label="Import Mocap Skeleton Biped", command=partial(mGear_mocapTools.importSkeletonBiped))
    pm.menuItem(label="Characterize Biped", command=partial(mGear_mocapTools.characterizeBiped))
    pm.menuItem(label="Bake Mocap Biped", command=partial(mGear_mocapTools.bakeMocap))


    ## util Tools
    pm.setParent(mGearM, menu=True)
    pm.menuItem( divider=True )
    utilM = pm.menuItem(parent='mGear', subMenu=True, tearOff=True, label='Utilities')
    pm.menuItem(label="reload", command=partial(mgear.reloadModule, "mgear"))
    pm.menuItem( divider=True )
    pm.menuItem(label="Compile PyQt ui", command=partial(mGear_utils.ui2py, None))
    pm.menuItem( divider=True )
    pm.menuItem(label="Create mGear Hotkeys", command=partial(mGear_utils.createHotkeys, None))

