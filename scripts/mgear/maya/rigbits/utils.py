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

"""
mGear utilitie tools.
"""

from mGear_pyqt import compileUi

import pymel.core as pm

UI_EXT = "ui"

def ui2py(filePath=None, *args):
    """
    Convert qtDesigner .ui files to .py.
    """

    if not filePath:
        startDir = pm.workspace(q=True, rootDirectory=True)
        filePath = pm.fileDialog2(dialogStyle=2, fileMode=1, startingDirectory=startDir,
                                  fileFilter='PyQt Designer (*%s)' % UI_EXT, okc="Compile to .py")
        if not filePath:
            return False
        filePath = filePath[0]
    if not filePath:
        return False

    if not filePath.endswith(UI_EXT):
        filePath += UI_EXT
    compiledFilePath = filePath[:-2] + "py"
    pyfile = open(compiledFilePath, 'w')
    compileUi(filePath, pyfile, False, 4, False)
    pyfile.close()
    pm.displayInfo("PyQt Designer file compiled to .py in: " + compiledFilePath)


def createRunTimeCommand(name, rCmd, ann=""):
    """
    Create run time commands from raw string.
    This function is used to create the mGear hotkeys.
    """
    if pm.runTimeCommand(name, ex=True):
        pm.runTimeCommand(name, e=True, delete=True)
        pm.displayWarning("Old hotkey: " +name+ " Deleted" )


    pm.runTimeCommand(name, ann=ann, c=rCmd, cat="mGear")
    pm.displayInfo("Hotkey: " +name+ " created" )

def createHotkeys(*args):
    """Create  mGear custom hotkey functions ready to be use.
    This command doesn't set the hotkey binding. Only create the functions.

    Args:
        *args: Maya's dummy
    """
    # duplicate sym
    rCmd = '''
import pymel.core as pm
import mgear.maya.shifter.gui as gui
import mgear.maya.rigbits as rigbits
if isinstance(pm.selected()[0], pm.MeshFace):
    pm.polyExtrudeFacet(constructionHistory=True,keepFacesTogether=True )
else:
    root = pm.selected()[0]
    if not pm.attributeQuery("comp_type", node=root, ex=True):
        rigbits.duplicateSym()
    else:
        gui.Guide_UI.duplicate(True)

'''
    createRunTimeCommand("mGear_duplicateSym", rCmd, ann="")

    # duplicate
    rCmd = '''
import pymel.core as pm
import mgear.maya.shifter.gui as gui
import mgear.maya.rigbits as rigbits
if isinstance(pm.selected()[0], pm.MeshFace):
    pm.polyExtrudeFacet(constructionHistory=True,keepFacesTogether=True )
else:
    root = pm.selected()[0]
    if not pm.attributeQuery("comp_type", node=root, ex=True):
        pm.duplicate()
    else:
        gui.Guide_UI.duplicate(False)

'''
    createRunTimeCommand("mGear_duplicate", rCmd, ann="")

    # frame in center
    rCmd = '''
import pymel.core as pm
import maya.mel as mel

def frameSelectedCenter():
    oSel = pm.selected()[0]

    oTra = pm.spaceLocator()
    oTra.setTransformation(oSel.getMatrix(worldSpace=True))
    mel.eval("fitPanel -selected;")
    pm.delete(oTra)
    pm.select(oSel, r=True)

frameSelectedCenter()

'''
    createRunTimeCommand("mGear_frameCenter", rCmd, ann="")


    # reset SRT
    rCmd = '''
import pymel.core as pm
def resetSRT(oColl):
    trList = ['.tx','.ty','.tz','.rx','.ry','.rz']
    sList = ['.sx','.sy','.sz']

    for attr in [(o, x) for o in oColl for x in trList]:
        try: pm.Attribute(attr[0] + attr[1]).set(0)
        except: pass
    for attr in [(o, x) for o in oColl for x in sList]:
        try: pm.Attribute(attr[0] + attr[1]).set(1)
        except: pass
#this ensure it is one undo step
doReset = pm.Callback(resetSRT, pm.selected() )
doReset()

'''
    createRunTimeCommand("mGear_resetSRT", rCmd, ann="")

    # maximize Maya window
    rCmd = '''
import maya.cmds as cmds
import maya.mel as mel
gMainWindow = mel.eval('$temp1=$gMainWindow')
acti = cmds.window( gMainWindow, q=True, titleBar=True  )
if acti:
    cmds.window( gMainWindow, e=True, titleBar=False  )
else:
    cmds.window( gMainWindow, e=True, titleBar=True  )

'''
    createRunTimeCommand("mGear_maximizeMaya", rCmd, ann="")

    # toggle visibility Softimage style
    rCmd = '''
import pymel.core as pm
for obj in pm.selected():
    if pm.selected()[0].nodeType() == "transform":

        if pm.getAttr(obj + ".visibility"):
            pm.setAttr(obj + ".visibility", False)
        else:
            pm.setAttr(obj + ".visibility", True)

'''
    createRunTimeCommand("mGear_toggleVisibility", rCmd, ann="")

    # toggle wireframe on top
    rCmd = '''
import pymel.core as pm
import maya.mel as mel

panel = pm.getPanel(wf=True)

shaded = pm.modelEditor(panel, q=True, wos=True)
if shaded:
    pm.modelEditor(panel, e=True, wos=False)
else:
    pm.modelEditor(panel, e=True, wos=True)

'''
    createRunTimeCommand("mGear_toggleWireframeOnTop", rCmd, ann="")

    # toggle shaded wireframe
    rCmd = '''
import pymel.core as pm
import maya.mel as mel

panel = pm.getPanel(wf=True)

shaded = pm.modelEditor(panel, q=True, da=True)
if shaded == "smoothShaded":
    pm.modelEditor(panel, e=True, da='wireframe')
else:
    pm.modelEditor(panel, e=True, da='smoothShaded')

'''
    createRunTimeCommand("mGear_toggleShadedWireframe", rCmd, ann="")

    # align 2 transforms
    rCmd = '''
import pymel.core as pm

if len(pm.selected()) !=2:
    print "2 objects must be selected"
else:
    source, target = pm.selected()

    sWM = source.getMatrix(worldSpace=True)
    target.setMatrix(sWM, worldSpace=True)

'''
    createRunTimeCommand("mGear_align2Transforms", rCmd, ann="")



    #  inspect property
    rCmd = '''
import mgear.maya.shifter.gui as gui
gui.Guide_UI.inspectSettings()

'''
    createRunTimeCommand("mGear_inspectProperty", rCmd, ann="")

    #  build from selection
    rCmd = '''
import mGear_guidesTemplates
mGear_guidesTemplates.buildFromSelection()

'''
    createRunTimeCommand("mGear_buildFromSelection", rCmd, ann="")

    # walk transform child
    rCmd = '''
import pymel.core as pm

def walkChild():
    oSel = pm.selected()[0]
    oChild = oSel.listRelatives(typ='transform')
    if oChild:
        pm.select(oChild[0])
    else:
        pm.displayWarning("No child to walk Down.")

walkChild()

'''
    createRunTimeCommand("mGear_walkTransformChild", rCmd, ann="")

    # walk transform Parent
    rCmd = '''
import pymel.core as pm


def walkParent():
    oSel = pm.selected()[0]
    oParent = oSel.listRelatives(p=True)
    if oParent:
        pm.select(oParent)
    else:
        pm.displayWarning("No parent to walk Up.")

walkParent()

'''

    createRunTimeCommand("mGear_walkTransformParent", rCmd, ann="")

    # walk transform Left
    rCmd = '''
import pymel.core as pm

def walkLeft():
    pm.runtime.PickWalkLeft()
    oSel = pm.selected()[0]
    while oSel.type()!='transform':
        pm.runtime.PickWalkLeft()
        oSel = pm.selected()[0]

walkLeft()

'''
    createRunTimeCommand("mGear_walkTransformLeft", rCmd, ann="")

    # walk transform Right
    rCmd = '''
import pymel.core as pm

def walkRight():
    pm.runtime.PickWalkRight()
    oSel = pm.selected()[0]
    while oSel.type()!='transform':
        pm.runtime.PickWalkRight()
        oSel = pm.selected()[0]
walkRight()

'''
    createRunTimeCommand("mGear_walkTransformRight", rCmd, ann="")

    # reset camera persp
    rCmd = '''
import pymel.core as pm

pm.viewSet(p=True, fit=True)

'''
    createRunTimeCommand("mGear_resetCameraPersp", rCmd, ann="")

    pm.displayInfo("mGear Hotkeys creation finish.")
