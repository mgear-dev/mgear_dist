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

##########################################################
# GLOBAL
##########################################################
# Built-in
import os

from functools import partial

# pymel
import pymel.core as pm

# mgear
import mgear
import mgear.maya.shifter as shifter
import mgear.maya.skin as skin
import mgear.maya.pyqt as gqt

GUIDE_UI_WINDOW_NAME = "guide_UI_window"
GUIDE_DOCK_NAME = "Guide_Components"


##############################
# CLASS
##############################
class Guide_UI(object):

    def __init__(self):

        # Remove existing window
        if pm.window(GUIDE_UI_WINDOW_NAME, exists=True):
            print "deleting win"
            pm.deleteUI(GUIDE_UI_WINDOW_NAME)


        if pm.dockControl( GUIDE_DOCK_NAME, exists=True):
            print "deleting dock"
            pm.deleteUI(GUIDE_DOCK_NAME)

        panelWeight = 200
        scrollHight = 600

        # Create Window and main tab
        self.ui_window = pm.window(GUIDE_UI_WINDOW_NAME, width=panelWeight, title="Guide Tools", sizeable=True)
        self.ui_topLevelColumn = pm.columnLayout(adjustableColumn=True, columnAlign="center")

        #
        pm.columnLayout()
        pm.rowLayout( numberOfColumns=1,  columnWidth=[(1, panelWeight)]  )
        pm.button(label="Settings", w=panelWeight, h=30, bgc=[.042, .351, .615], command=partial(self.inspectSettings)  )
        pm.setParent( '..' )
        pm.rowLayout( numberOfColumns=3,  columnWidth=[(1, (panelWeight/3)-1), (2, (panelWeight/3)-1), (3, (panelWeight/3)-1)] )
        pm.button(label="Dupl.", w=(panelWeight/3)-1, h=23, bgc=[.311, .635, 0], command=partial(self.duplicate, False)  )
        pm.button(label="Dupl. Sym", w=(panelWeight/3)-1, h=23, bgc=[.465, .785, .159], command=partial(self.duplicate, True)  )
        pm.button(label="Extr. Ctl", w=(panelWeight/3)-1, h=23, bgc=[.835, .792, .042], command=partial(self.extractControls)  )
        pm.setParent( '..' )
        pm.rowLayout( numberOfColumns=1,  columnWidth=[(1, panelWeight)]  )
        pm.button(label="Build from selection", w=panelWeight, h=30, bgc=[.912, .427, .176], command=partial(self.buildFromSelection)  )
        pm.setParent( '..' )

        self.ui_tabs = pm.tabLayout(width=panelWeight, innerMarginWidth=5, innerMarginHeight=5)
        pm.tabLayout(self.ui_tabs, q=True, width=True)

        #
        self.ui_compColumn = pm.columnLayout(adj=True, rs=3)
        self.ui_compFrameLayout = pm.frameLayout(height=scrollHight, collapsable=False, borderVisible=False, labelVisible=False)
        self.ui_compList_Scroll = pm.scrollLayout(hst=0)
        self.ui_compList_column = pm.columnLayout(columnWidth=panelWeight, adj=True, rs=2)
        pm.separator()

        # List of components
        # doGrouping = 1 < len(shifter.COMPONENTS_DIRECTORIES.keys())
        compDir = shifter.getComponentDirectories()
        trackLoadComponent = []
        for path, comps in compDir.iteritems():

            pm.text(align="center", label=os.path.basename(path))
            pm.separator()
            for comp_name in comps:

                if  comp_name in trackLoadComponent:
                    pm.displayWarning("Custom component name: %s, already in default components. Names should be unique. This component is not loaded"%comp_name)
                    continue
                else:
                    trackLoadComponent.append(comp_name)

                if not os.path.exists(os.path.join(path, comp_name, "__init__.py")):
                    continue

                # module = __import__("mgear.maya.rig.component."+comp_name, globals(), locals(), ["*"], -1)
                module = shifter.importComponentGuide(comp_name)
                # print module
                # print dir(module)
                reload(module)
                image = os.path.join(path, comp_name, "icon.jpg")

                buttonSize = 25
                textDesc = "Name: "+module.NAME+"\nType:: "+module.TYPE+"\n===========\nAuthor: "+module.AUTHOR+"\nWeb: "+module.URL+\
                           "\nEmail: "+module.EMAIL+"\n===========\nDescription:\n"+module.DESCRIPTION

                pm.rowLayout(numberOfColumns=2, columnWidth=([1, buttonSize]), adjustableColumn=2, columnAttach=([1, "both", 0], [2, "both", 5]))
                pm.symbolButton(ann=textDesc, width=buttonSize, height=buttonSize, bgc=[0,0,0], ebg=False, i=image, command=partial(self.drawComp, module.TYPE))
                pm.columnLayout(columnAlign="center")
                pm.text(align="center", width=panelWeight*.6, label=module.TYPE, ann=textDesc, fn="plainLabelFont")

                pm.setParent(self.ui_compList_column)
                pm.separator()

        # Display the window
        pm.tabLayout(self.ui_tabs, edit=True, tabLabelIndex=([1, "Components"]))
        allowedAreas = ['right', 'left']
        pm.dockControl( GUIDE_DOCK_NAME, area='right', content=self.ui_window, allowedArea=allowedAreas, width=panelWeight , s=True)

    def drawComp(self, compType, *args):

        guide = shifter.RigGuide()

        if pm.selected():
            parent = pm.selected()[0]
        else:
            parent = None

        guide.drawNewComponent(parent, compType)


    def buildFromSelection(self, *args):

        print mgear.logInfos()
        rg = shifter.Rig()
        rg.buildFromSelection()
    @classmethod
    def duplicate(self, sym, *args):
        oSel = pm.selected()
        if oSel:
            root = oSel[0]
            guide = shifter.RigGuide()
            guide.duplicate(root, sym)
        else:
            mgear.log("Select one component root to edit properties", mgear.sev_error)
            return

    @classmethod
    def inspectSettings(self, *args):

        oSel = pm.selected()
        if oSel:
            root = oSel[0]
        else:
            pm.displayWarning("please select one object from the componenet guide")
            return

        comp_type = False
        guide_root = False
        while root:
            if pm.attributeQuery("comp_type", node=root, ex=True):
                comp_type = root.attr("comp_type").get()
                break
            elif pm.attributeQuery("ismodel", node=root, ex=True):
                guide_root = root
                break
            root = root.getParent()
            pm.select(root)


        if comp_type:
            guide = shifter.importComponentGuide(comp_type)
            gqt.showDialog(guide.componentSettings)

        elif guide_root:
            module_name = "mgear.maya.shifter.guide"
            guide = __import__(module_name, globals(), locals(), ["*"], -1)
            gqt.showDialog(guide.guideSettings)


        else:
            pm.displayError("The selected object is not part of component guide")

    @classmethod
    def inspectProperties(self, *args):

        modeSet = ["FK", "IK", "IK/FK"]
        rotOrderSet = ["XYZ","YZX", "ZXY", "XZY", "YXZ", "ZYX"]
        guideModeSet = ["Final", "WIP"]

        # apply changes
        def applyCloseGuide( root, *args):
            if pm.attributeQuery("mode", node=root, ex=True):
                root.attr("mode").set(guideModeSet.index(pMode.getValue()))
            pm.select(root, r=True)

            pm.deleteUI(window, window=True)

        def skinLoad(root, *args):
            startDir = root.attr("skin").get()
            filePath = pm.fileDialog2(dialogStyle=2, fileMode=1, startingDirectory=startDir,
                                      fileFilter='mGear skin (*%s)' % skin.FILE_EXT)
            if not filePath:
                return
            if not isinstance(filePath, basestring):
                filePath = filePath[0]

            root.attr("skin").set(filePath)

        def applyCloseComp( root, *args):
            newName = pName.getText()
            newSide = pSide.getValue()
            newIndex = pIndex.getValue1()
            if pm.attributeQuery("mode", node=root, ex=True):
                root.attr("mode").set(modeSet.index(pMode.getValue()))
            if pm.attributeQuery("default_rotorder", node=root, ex=True):
                root.attr("default_rotorder").set(rotOrderSet.index(pRotOrder.getValue()))

            guide = shifter.RigGuide()
            guide.updateProperties(root, newName, newSide, newIndex)
            pm.select(root, r=True)

            pm.deleteUI(window, window=True)

        if pm.window("compProperties", exists=True):
            pm.deleteUI("compProperties")


        oSel = pm.selected()
        if oSel:
            root = oSel[0]
        else:
            mgear.log("Select one root Guide or component to edit properties", mgear.sev_error)
            return


        if pm.attributeQuery("comp_type", node=root, ex=True):
            #property window constructor
            customAttr = pm.listAttr( root, ud=True)

            window = pm.window( title=root.name() )
            pm.columnLayout( adjustableColumn=True, cal="right" )

            for attr in customAttr:

                if attr == "comp_name":
                    fl = pm.formLayout()
                    oriVal = root.attr("comp_name").get()
                    pName = pm.textFieldGrp(l="comp_name")
                    pm.setParent( '..' )
                    pm.formLayout(fl, e=True, af=(pName, "left", 0))
                    pName.setText(oriVal)

                elif attr == "comp_side":
                    sideSet = ["C", "L", "R"]
                    fl = pm.formLayout()
                    pSide = pm.optionMenu(l="comp_side")
                    pSide.addMenuItems(sideSet)
                    pSide.setWidth(120)
                    pm.setParent( '..' )
                    pm.formLayout(fl, e=1, af=(pSide, "left", 90))
                    oriVal = root.attr("comp_side").get()
                    pSide.setValue(oriVal )
                elif attr == "mode":
                    fl = pm.formLayout()
                    pMode = pm.optionMenu(l="mode")
                    pMode.addMenuItems(modeSet)
                    pMode.setWidth(120)
                    pm.setParent( '..' )
                    pm.formLayout(fl, e=1, af=(pMode, "left", 115))
                    oriVal = root.attr("mode").get()
                    pMode.setValue(modeSet[oriVal])

                elif attr == "default_rotorder":
                    fl = pm.formLayout()
                    pRotOrder = pm.optionMenu(l="default_rotorder")
                    pRotOrder.addMenuItems(rotOrderSet)
                    pRotOrder.setWidth(140)
                    pm.setParent( '..' )
                    pm.formLayout(fl, e=1, af=(pRotOrder, "left", 60))
                    oriVal = root.attr("default_rotorder").get()
                    pRotOrder.setValue(rotOrderSet[oriVal])

                elif attr == "comp_index":
                    fl = pm.formLayout()
                    oriVal = root.attr("comp_index").get()
                    pIndex = pm.intFieldGrp(v1=oriVal, l="comp_index")
                    pm.setParent( '..' )
                    pm.formLayout(fl, e=True, af=(pIndex, "left", 0))

                else:
                    editable = True
                    if attr == "comp_type":
                        editable = False
                    pm.columnLayout( cal="right" )
                    pm.attrControlGrp( attribute= root.attr(attr), po=True, en=editable)
                    pm.setParent( '..' )

            pm.button( label='Apply', command=partial(applyCloseComp, root), h=100)
            pm.setParent( '..' )
            pm.showWindow( window )

        elif pm.attributeQuery("ismodel", node=root, ex=True):
            #property window constructor
            customAttr = pm.listAttr( root, ud=True)

            window = pm.window( title=root.name() )
            pm.columnLayout( adjustableColumn=True, cal="right" )

            for attr in customAttr:
                if attr.split("_")[-1] not in ["r", "g", "b"]:
                    if attr == "mode":
                        fl = pm.formLayout()
                        pMode = pm.optionMenu(l="mode")
                        pMode.addMenuItems(guideModeSet)
                        pMode.setWidth(120)
                        pm.setParent( '..' )
                        pm.formLayout(fl, e=1, af=(pMode, "left", 115))
                        oriVal = root.attr("mode").get()
                        pMode.setValue(guideModeSet[oriVal])
                    elif attr == "skin":
                        pm.columnLayout( cal="right" )
                        pm.attrControlGrp( attribute= root.attr(attr), po=True)
                        pm.setParent( '..' )
                        pm.button( label='Load Skin ', command=partial(skinLoad, root))

                    else:
                        pm.columnLayout( cal="right" )
                        pm.attrControlGrp( attribute= root.attr(attr), po=True)
                        pm.setParent( '..' )

            pm.button( label='Apply', command=partial(applyCloseGuide, root ), h=50)
            pm.setParent( '..' )
            pm.showWindow( window )

        else:
            mgear.log("Select a root Guide or component to edit properties", mgear.sev_error)
            return

    def extractControls(self, *args):

        oSel = pm.selected()

        try:
            cGrp = pm.PyNode("controllers_org")
        except:
            cGrp = False
            mgear.log("Not controller group in the scene or the group is not unique", mgear.sev_error )
        for x in oSel:
            try:
                old = pm.PyNode(cGrp.name() + "|" + x.name().split("|")[-1] +"_controlBuffer")
                pm.delete(old)
            except:
                pass
            new = pm.duplicate(x)[0]
            pm.parent(new, cGrp, a=True)
            pm.rename(new, x.name() +"_controlBuffer")
            toDel = new.getChildren(type="transform")
            pm.delete(toDel)
            try:
                pm.sets( "rig_controllers_grp", remove=new )
            except:
                pass
