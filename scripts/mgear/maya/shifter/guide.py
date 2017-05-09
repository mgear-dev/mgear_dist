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
Shifter's MainGuide class and RigGuide class.
"""

##########################################################
# GLOBAL
##########################################################
# Built-in
import os
import sys
import subprocess
from functools import partial
import datetime
import getpass
import traceback
import imp


# pymel
import pymel.core as pm
import pymel.core.datatypes as dt

# mgear
import mgear
import mgear.maya.attribute as att
import mgear.maya.dag as dag
import mgear.maya.vector as vec
import mgear.string
import mgear.maya.pyqt as gqt
import mgear.string as string
import mgear.maya.skin as skin

# pyside
from maya.app.general.mayaMixin import MayaQDockWidget
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin
QtGui, QtCore, QtWidgets, wrapInstance = gqt.qt_import()

import guideUI as guui
import customStepUI as csui


GUIDE_UI_WINDOW_NAME = "guide_UI_window"
GUIDE_DOCK_NAME = "Guide_Components"

TYPE = "mgear_guide_root"

##########################################################
# GUIDE
##########################################################

class MainGuide(object):
    """
    The main guide class.
    Provide the methods to add parameters, set parameter values, create property...

    Attributes:
        paramNames (list): List of parameter name cause it's actually important to keep them sorted.
        paramDefs (dic): Dictionary of parameter definition.
        values (dic): Dictionary of options values.
        valid (bool): We will check a few things and make sure the guide we are loading is up to date.
            If parameters or object are missing a warning message will be display and
            the guide should be updated.

    """
    def __init__(self):

        self.paramNames = []
        self.paramDefs = {}
        self.values = {}
        self.valid = True


    def addPropertyParamenters(self, parent):
        """
        Add attributes ( Attribute = Parameters terminology from Softimage) from the parameter definition list.

        Args:
            parent (dagNode): The object to add the attributes.

        Returns:
            dagNode: parent with the attributes.

        """
        for scriptName in self.paramNames:
            paramDef = self.paramDefs[scriptName]
            paramDef.create(parent)

        return parent


    def setParamDefValue(self, scriptName, value):
        """
        Set the value of parameter with matching scriptname.

        Args:
            scriptName (str): Scriptname of the parameter to edit.
            value (variant): New value.

        Returns:
            bool: False if the parameter wasn't found.

        """
        if not scriptName in self.paramDefs.keys():
            mgear.log("Can't find parameter definition for : " + scriptName, mgear.sev_warning)
            return False

        self.paramDefs[scriptName].value = value
        self.values[scriptName] = value

        return True


    def setParamDefValuesFromProperty(self, node):
        """
        Set the parameter definition values from the attributes of an object.

        Args:
            node (dagNode): The object with the attributes.
        """

        for scriptName, paramDef in self.paramDefs.items():
            if not pm.attributeQuery(scriptName, node=node, exists=True):
                mgear.log("Can't find parameter '%s' in %s"%(scriptName, node), mgear.sev_warning)
                self.valid = False
            else:
                cnx = pm.listConnections(node+"."+scriptName, destination=False, source=True)
                if cnx:
                    paramDef.value = None
                    self.values[scriptName] = cnx[0]
                else:
                    paramDef.value = pm.getAttr(node+"."+scriptName)
                    self.values[scriptName] = pm.getAttr(node+"."+scriptName)

    def addColorParam(self, scriptName, value=False):
        """
        Add color paramenter to the paramenter definition Dictionary.

        Args:
            scriptName (str): The name of the color parameter.
            value (Variant): The default color value.

        Returns:
            paramDef: The newly create paramenter definition.
        """

        paramDef = att.colorParamDef(scriptName, value)
        self.paramDefs[scriptName] = paramDef
        self.paramNames.append(scriptName)

        return paramDef

    def addParam(self, scriptName,  valueType, value, minimum=None, maximum=None, keyable=False, readable=True, storable=True, writable=True, niceName=None, shortName=None):
        """
        Add paramenter to the paramenter definition Dictionary.

        Args:
            scriptName (str): Parameter scriptname.
            valueType (str): The Attribute Type. Exp: 'string', 'bool', 'long', etc..
            value (float or int): Default parameter value.
            niceName (str): Parameter niceName.
            shortName (str): Parameter shortName.
            minimum (float or int): mininum value.
            maximum (float or int): maximum value.
            keyable (boo): If true is keyable
            readable (boo): If true is readable
            storable (boo): If true is storable
            writable (boo): If true is writable

        Returns:
            paramDef: The newly create paramenter definition.

        """
        paramDef = att.ParamDef2(scriptName, valueType, value, niceName, shortName, minimum, maximum, keyable, readable, storable, writable)
        self.paramDefs[scriptName] = paramDef
        self.values[scriptName] = value
        self.paramNames.append(scriptName)

        return paramDef

    def addFCurveParam(self, scriptName, keys, interpolation=0):
        """
        Add FCurve paramenter to the paramenter definition Dictionary.

        Args:
            scriptName (str): Attribute fullName.
            keys (list): The keyframes to define the function curve.
            interpolation (int): the curve interpolation.

        Returns:
            paramDef: The newly create paramenter definition.

        """
        paramDef = att.FCurveParamDef(scriptName, keys, interpolation)
        self.paramDefs[scriptName] = paramDef
        self.values[scriptName] = None
        self.paramNames.append(scriptName)

        return paramDef


    def addEnumParam(self, scriptName, enum, value=False):
        """
        Add FCurve paramenter to the paramenter definition Dictionary.

        Args:
            scriptName (str): Attribute fullName
            enum (list of str): The list of elements in the enumerate control.
            value (int): The default value.

        Returns:
            paramDef: The newly create paramenter definition.

        """
        paramDef = att.enumParamDef(scriptName, enum, value)
        self.paramDefs[scriptName] = paramDef
        self.values[scriptName] = value
        self.paramNames.append(scriptName)

        return paramDef

##########################################################
# RIG GUIDE
##########################################################

class RigGuide(MainGuide):
    """
    Rig guide class.

    This is the class for complete rig guide definition.

        * It contains the component guide in correct hierarchy order and the options to generate the rig.
        * Provide the methods to add more component, import/export guide.

    Attributes:
        paramNames (list): List of parameter name cause it's actually important to keep them sorted.
        paramDefs (dic): Dictionary of parameter definition.
        values (dic): Dictionary of options values.
        valid (bool): We will check a few things and make sure the guide we are loading is up to date. If parameters or object are missing a warning message will be display and the guide should be updated.
        controllers (dic): Dictionary of controllers.
        components (dic): Dictionary of component. Keys are the component fullname (ie. 'arm_L0')
        componentsIndex (list): List of component name sorted by order creation (hierarchy order)
        parents (list): List of the parent of each component, in same order as self.components
    """

    def __init__(self):

        # Parameters names, definition and values.
        self.paramNames = []
        self.paramDefs = {}
        self.values = {}
        self.valid = True

        self.controllers = {}
        self.components = {}  # Keys are the component fullname (ie. 'arm_L0')
        self.componentsIndex = []
        self.parents = []

        self.addParameters()


    def addParameters(self):
        """
        Parameters for rig options.

        Add more parameter to the parameter definition list.

        """
        # --------------------------------------------------
        # Main Tab
        self.pRigName = self.addParam("rig_name", "string", "rig")
        self.pMode = self.addEnumParam("mode", ["Final", "WIP"], 0)
        self.pStep = self.addEnumParam("step", ["All Steps", "Objects", "Properties", "Operators", "Connect", "Joints", "Finalize"], 6)
        self.pIsModel = self.addParam("ismodel", "bool", True)

        # --------------------------------------------------
        # skin
        self.pSkin = self.addParam("importSkin", "bool", False)
        self.pSkinPackPath = self.addParam("skin", "string", "")

        # --------------------------------------------------
        # Colors

        #Index color
        self.pLColorIndexfk =  self.addParam("L_color_fk", "long", 6, 0, 31)
        self.pLColorIndexik =  self.addParam("L_color_ik", "long", 18, 0, 31)
        self.pRColorIndexfk =  self.addParam("R_color_fk", "long", 23, 0, 31)
        self.pRColorIndexik =  self.addParam("R_color_ik", "long", 14, 0, 31)
        self.pCColorIndexfk =  self.addParam("C_color_fk", "long", 13, 0, 31)
        self.pCColorIndexik =  self.addParam("C_color_ik", "long", 17, 0, 31)

        #RGB colors for Maya 2015 and up
        # self.pLColorfk = self.addColorParam("L_RGB_fk", [0, 1, 0])
        # self.pLColorik = self.addColorParam("L_RGB_ik", [0, .5, 0])
        # self.pRColorfk = self.addColorParam("R_RGB_fk", [0, 0, 1])
        # self.pRColorik = self.addColorParam("R_RGB_ik", [0, 0, .6])
        # self.pCColorfk = self.addColorParam("C_RGB_fk", [1, 0, 0])
        # self.pCColorik = self.addColorParam("C_RGB_ik", [.6, 0, 0])

        # --------------------------------------------------
        # Settings
        self.pJointRig = self.addParam("joint_rig", "bool", True)
        self.pSynoptic = self.addParam("synoptic", "string", "")

        self.pDoPreCustomStep = self.addParam("doPreCustomStep", "bool", False)
        self.pDoPostCustomStep = self.addParam("doPostCustomStep", "bool", False)
        self.pPreCustomStep = self.addParam("preCustomStep", "string", "")
        self.pPostCustomStep = self.addParam("postCustomStep", "string", "")

        # --------------------------------------------------
        # Comments
        self.pComments = self.addParam("comments", "string", "")
        self.pUser       = self.addParam("user", "string", getpass.getuser())
        self.pDate        = self.addParam("date", "string", str(datetime.datetime.now()))
        self.pMayaVersion = self.addParam("maya_version", "string", str(pm.mel.eval("getApplicationVersionAsFloat")))
        self.pGearVersion = self.addParam("gear_version", "string", mgear.getVersion())


    def setFromSelection(self):
        """
        Set the guide hierarchy from selection.

        """
        selection = pm.ls(selection=True)
        if not selection:
            mgear.log("Select one or more guide root or a guide model", mgear.sev_error)
            self.valid = False
            return False

        for node in selection:
            self.setFromHierarchy(node, node.hasAttr("ismodel"))

        return True


    def setFromHierarchy(self, root, branch=True):
        """
        Set the guide from given hierarchy.

        Args:
            root (dagNode): The root of the hierarchy to parse.
            branch (bool): True to parse children components.

        """
        startTime = datetime.datetime.now()
        # Start
        mgear.log("Checking guide")

        # Get the model and the root
        self.model = root.getParent(generations=-1)
        while True:
            if root.hasAttr("comp_type") or self.model == root:
                break
            root = root.getParent()
            mgear.log( root)

        # ---------------------------------------------------
        # First check and set the options
        mgear.log("Get options")
        self.setParamDefValuesFromProperty(self.model)

        # ---------------------------------------------------
        # Get the controllers
        mgear.log("Get controllers")
        self.controllers_org = dag.findChild(self.model, "controllers_org")
        if self.controllers_org:
            for child in self.controllers_org.getChildren():
                self.controllers[child.name().split("|")[-1]] = child

        # ---------------------------------------------------
        # Components
        mgear.log("Get components")
        self.findComponentRecursive(root, branch)
        # Parenting
        if self.valid:
            for name in self.componentsIndex:
                mgear.log("Get parenting for: " + name)
                compParent = self.components[name]
                for localName, element in compParent.getObjects(self.model, False).items():
                    for name  in self.componentsIndex:
                        compChild = self.components[name]
                        compChild_parent = compChild.root.getParent()
                        if element is not None and element == compChild_parent:
                            compChild.parentComponent = compParent
                            compChild.parentLocalName = localName


            # More option values
            self.addOptionsValues()

        # End
        if not self.valid:
            mgear.log("The guide doesn't seem to be up to date. Check logged messages and update the guide.", mgear.sev_warning)

        endTime = datetime.datetime.now()
        finalTime = endTime - startTime
        mgear.log("Guide loaded from hierarchy in  [ " + str(finalTime) + " ]" )


    def addOptionsValues(self):
        """
        Gather or change some options values according to some others.

        Note:
            For the moment only gets the rig size to adapt size of object to the scale of the character

        """
        # Get rig size to adapt size of object to the scale of the character
        maximum = 1
        v = dt.Vector()
        for comp in self.components.values():
            for pos in comp.apos:
                d = vec.getDistance(v, pos)
                maximum = max(d, maximum)

        self.values["size"] = max(maximum * .05, .1)


    def findComponentRecursive(self, node, branch=True):
        """
        Finds components by recursive search.

        Args:
            node (dagNode): Object frome where start the search.
            branch (bool): If True search recursive all the children.
        """

        if node.hasAttr("comp_type"):
            comp_type = node.getAttr("comp_type")
            comp_guide = self.getComponentGuide(comp_type)

            if comp_guide:
                comp_guide.setFromHierarchy(node)
                mgear.log(comp_guide.fullName+" ("+comp_type+")")
                if not comp_guide.valid:
                    self.valid = False

                self.componentsIndex.append(comp_guide.fullName)
                self.components[comp_guide.fullName] = comp_guide

        if branch:
            for child in node.getChildren():
                self.findComponentRecursive(child)

    def getComponentGuide(self, comp_type):
        """
        Get the componet guide python object. ie. Finds the guide.py of the component.

        Args:
            comp_type (str): The component type.

        Returns:
            The component guide instance class.
        """

        # Check component type
        '''
        path = os.path.join(basepath, comp_type, "guide.py")
        if not os.path.exists(path):
            mgear.log("Can't find guide definition for : " + comp_type + ".\n"+ path, mgear.sev_error)
            return False
        '''

        # Import module and get class
        import mgear.maya.shifter as shifter
        module = shifter.importComponentGuide(comp_type)

        ComponentGuide = getattr(module, "Guide")

        return ComponentGuide()

    # =====================================================
    # DRAW

    def initialHierarchy(self):
        """
        Create the initial rig guide hierarchy (model, options...)

        """
        self.model = pm.group(n="guide", em=True, w=True)

        # Options
        self.options = self.addPropertyParamenters(self.model)

        #the basic org nulls (Maya groups)
        self.controllers_org = pm.group(n="controllers_org", em=True, p=self.model)
        self.controllers_org.attr('visibility').set(0)


    def drawNewComponent(self, parent, comp_type):
        """
        Add a new component to the guide.

        Args:
            parent (dagNode): Parent of this new component guide.
            compType (str): Type of component to add.

        """
        comp_guide = self.getComponentGuide(comp_type)

        if not comp_guide:
            mgear.log("Not component guide of type: " + comp_type + " have been found.", mgear.sev_error)
            return
        if parent is None:
            self.initialHierarchy()
            parent = self.model
        else:
            parent_root = parent
            while True:
                if parent_root.hasAttr("ismodel"):
                    break

                if parent_root.hasAttr("comp_type"):
                    parent_type = parent_root.attr("comp_type").get()
                    parent_side = parent_root.attr("comp_side").get()
                    parent_uihost = parent_root.attr("ui_host").get()

                    if parent_type in comp_guide.connectors:
                        comp_guide.setParamDefValue("connector", parent_type)

                    comp_guide.setParamDefValue("comp_side", parent_side)
                    comp_guide.setParamDefValue("ui_host", parent_uihost)


                    break

                parent_root = parent_root.getParent()

        comp_guide.drawFromUI(parent)

    def drawUpdate(self, oldRoot, parent=None):

        # Initial hierarchy
        if parent is None:
            self.initialHierarchy()
            parent = self.model
            newParentName = parent.name()

        # controls shape
        try:
            pm.delete(pm.PyNode(newParentName+"|controllers_org"))
            oldRootName = oldRoot.name().split("|")[0]+"|controllers_org"
            pm.parent(oldRootName, newParentName)
        except:
            pm.displayError("The guide don't have controllers_org")

        # Components
        for name in self.componentsIndex:
            comp_guide = self.components[name]
            oldParentName = comp_guide.root.getParent().name()

            try:
                parent = pm.PyNode(oldParentName.replace(oldParentName.split("|")[0], newParentName))
            except:
                pm.displayWarning("No parent for the guide")
                parent = self.model

            comp_guide.draw(parent)




    def update(self, sel):
        """
        Update the guide if a parameter is missing
        """

        if pm.attributeQuery("ismodel", node=sel, ex=True):
            self.model = sel
        else:
            pm.displayWarning("select the top guide node")
            return

        name = self.model.name()
        self.setFromHierarchy(self.model, True)
        if self.valid:
            pm.displayInfo("The Guide is updated")
            return

        pm.rename(self.model,  name+"_old")
        deleteLater = self.model
        self.drawUpdate(deleteLater)
        pm.rename(self.model,  name)
        pm.displayInfo("The guide %s have been updated"%name)
        pm.delete(deleteLater)

    def duplicate(self, root, symmetrize=False):
        """
        Duplicate the guide hierarchy.

        Note:
            Indeed this method is not duplicating. What it is doing is parse the compoment guide,
            and creating an new one base on the current selection.

        Warning:
            Don't use the default Maya's duplicate tool to duplicate a Shifter's guide.


        Args:
            root (dagNode): The guide root to duplicate.
            symmetrize (bool): If True, duplicate symmetrical in X axis. The guide have to be "Left" or "Right".

        """
        if not pm.attributeQuery("comp_type", node=root, ex=True):
            mgear.log("Select a component root to duplicate", mgear.sev_error)
            return

        self.setFromHierarchy(root)
        for name in self.componentsIndex:
            comp_guide = self.components[name]
            if symmetrize:
                if not comp_guide.symmetrize():
                    return

        # Draw
        if pm.attributeQuery("ismodel", node=root, ex=True):
            self.draw()

        else:

            for name in self.componentsIndex:
                comp_guide = self.components[name]

                if comp_guide.parentComponent is None:
                    parent = comp_guide.root.getParent()
                    if symmetrize:
                        parent = dag.findChild(self.model, mgear.string.convertRLName(comp_guide.root.getParent().name()))
                        if not parent:
                            parent = comp_guide.root.getParent()

                    else:
                        parent = comp_guide.root.getParent()

                else:
                    parent = dag.findChild(self.model, comp_guide.parentComponent.getName(comp_guide.parentLocalName))
                    if not parent:
                        mgear.log("Unable to find parent (%s.%s) for guide %s"%(comp_guide.parentComponent.getFullName, comp_guide.parentLocalName, comp_guide.getFullName ))
                        parent = self.model

                comp_guide.root = None # Reset the root so we force the draw to duplicate
                comp_guide.setIndex(self.model)

                comp_guide.draw(parent)

        pm.select(self.components[self.componentsIndex[0]].root)


    def updateProperties(self, root, newName, newSide, newIndex):
        """
        Update the Properties of the component.

        Args:
            root (dagNode): Root of the component.
            newName (str): New name of the component
            newSide (str): New side of the component
            newIndex (str): New index of the component
        """

        if not pm.attributeQuery("comp_type", node=root, ex=True):
            mgear.log("Select a root to edit properties", mgear.sev_error)
            return
        self.setFromHierarchy(root, False)
        name = "_".join(root.name().split("|")[-1].split("_")[0:2])
        comp_guide = self.components[name]
        comp_guide.rename(root, newName, newSide, newIndex)


##################################################################################
# HELPER SLOTS
##################################################################################

class helperSlots(object):

    def updateHostUI(self, lEdit, targetAttr):
        oType = pm.nodetypes.Transform

        oSel = pm.selected()
        if oSel:
            if isinstance(oSel[0], oType) and oSel[0].hasAttr("isGearGuide"):
                lEdit.setText(oSel[0].name())
                self.root.attr(targetAttr).set(lEdit.text())
            else:
                pm.displayWarning("The selected element is not a valid object or not from a guide")
        else:
            pm.displayWarning("Please select first the object.")

    def updateLineEdit(self, lEdit, targetAttr):
        self.root.attr(targetAttr).set(lEdit.text())


    def addItem2listWidget(self, listWidget, targetAttr=None):

        items = pm.selected()
        itemsList = [i.text() for i in listWidget.findItems("", QtCore.Qt.MatchContains)]
        # Quick clean the first empty item
        if itemsList and not itemsList[0]:
            listWidget.takeItem(0)


        for item in items:
            if item.name() not in itemsList:
                if item.hasAttr("isGearGuide"):
                    listWidget.addItem(item.name())

                else:
                    pm.displayWarning("The object: %s, is not a valid reference, Please select only guide componet roots and guide locators."%item.name())
            else:
                pm.displayWarning("The object: %s, is already in the list."%item.name())

        if targetAttr:
            self.updateListAttr(listWidget, targetAttr)

    def removeSelectedFromListWidget(self, listWidget, targetAttr=None):
        for item in listWidget.selectedItems():
            listWidget.takeItem(listWidget.row(item))
        if targetAttr:
            self.updateListAttr(listWidget, targetAttr)

    def moveFromListWidget2ListWidget(self, sourceListWidget, targetListWidget, targetAttrListWidget, targetAttr=None):
        # Quick clean the first empty item
        itemsList = [i.text() for i in targetAttrListWidget.findItems("", QtCore.Qt.MatchContains)]
        if itemsList and not itemsList[0]:
            targetAttrListWidget.takeItem(0)

        for item in sourceListWidget.selectedItems():
            targetListWidget.addItem(item.text())
            sourceListWidget.takeItem(sourceListWidget.row(item))

        if targetAttr:
            self.updateListAttr(targetAttrListWidget, targetAttr)



    def copyFromListWidget(self, sourceListWidget, targetListWidget, targetAttr=None):
        targetListWidget.clear()
        itemsList = [i.text() for i in sourceListWidget.findItems("", QtCore.Qt.MatchContains)]
        for item in itemsList:
            targetListWidget.addItem(item)
        if targetAttr:
            self.updateListAttr(sourceListWidget, targetAttr)


    def updateListAttr(self, sourceListWidget, targetAttr):
        """
        Update the string attribute with values separated by commas.

        """
        newValue = ",".join([i.text() for i in sourceListWidget.findItems("", QtCore.Qt.MatchContains)])
        self.root.attr(targetAttr).set(newValue)


    def updateComponentName(self):

        newName = self.mainSettingsTab.name_lineEdit.text()
        # remove invalid characters in the name and update
        newName = string.removeInvalidCharacter(newName)
        self.mainSettingsTab.name_lineEdit.setText(newName)
        sideSet = ["C", "L", "R"]
        sideIndex = self.mainSettingsTab.side_comboBox.currentIndex()
        newSide = sideSet[sideIndex]
        newIndex = self.mainSettingsTab.componentIndex_spinBox.value()
        guide = RigGuide()
        guide.updateProperties(self.root, newName, newSide, newIndex)
        pm.select(self.root, r=True)
        #sync index
        self.mainSettingsTab.componentIndex_spinBox.setValue(self.root.attr("comp_index").get())

    def updateConnector(self, sourceWidget, itemsList, *args):
        self.root.attr("connector").set(itemsList[sourceWidget.currentIndex()])

    def populateCheck(self, targetWidget, sourceAttr, *args):
        if self.root.attr(sourceAttr).get():
            targetWidget.setCheckState(QtCore.Qt.Checked)
        else:
            targetWidget.setCheckState(QtCore.Qt.Unchecked)

    def updateCheck(self, sourceWidget, targetAttr, *args):
        self.root.attr(targetAttr).set(sourceWidget.isChecked())

    def updateSpinBox(self, sourceWidget, targetAttr, *args):
        self.root.attr(targetAttr).set(sourceWidget.value())

    def updateSlider(self, sourceWidget, targetAttr, *args):
        self.root.attr(targetAttr).set(float(sourceWidget.value())/100)

    def updateComboBox(self, sourceWidget, targetAttr, *args):
        self.root.attr(targetAttr).set(sourceWidget.currentIndex())

    def updateControlShape(self, sourceWidget, ctlList, targetAttr, *args):
        curIndx = sourceWidget.currentIndex()
        self.root.attr(targetAttr).set(ctlList[curIndx])

    def setProfile(self):
        pm.select(self.root,  r=True)
        pm.runtime.GraphEditor()


    def close_settings(self):
        self.close()
        gqt.deleteInstances(self, MayaQDockWidget)

    def editFile(self, widgetList):
        try:
            filepath = widgetList.selectedItems()[0].text().split("|")[-1][1:]
            print filepath
            if filepath:
                if sys.platform.startswith('darwin'):
                    subprocess.call(('open', filepath))
                elif os.name == 'nt':
                    os.startfile(filepath)
                elif os.name == 'posix':
                    subprocess.call(('xdg-open', filepath))
            else:
                pm.displayWarning("Please select one item from the list")
        except:
            pm.displayError("The step can't be find or does't exists")

    @classmethod
    def runStep(self, stepPath, customStepDic):
        with pm.UndoChunk():
            try:
                pm.displayInfo("Executing custom step: %s"%stepPath)
                fileName = os.path.split(stepPath)[1].split(".")[0]
                customStep = imp.load_source(fileName, stepPath)
                if hasattr(customStep, "CustomShifterStep"):
                    cs = customStep.CustomShifterStep()
                    cs.run(customStepDic)
                    customStepDic[cs.name] = cs
                    pm.displayInfo("Custom Shifter Step Class: %s. Succeed!!"%stepPath)
                else:
                    pm.displayInfo("Custom Step simple script: %s. Succeed!!"%stepPath)

            except Exception as ex:
                template = "An exception of type {0} occured. Arguments:\n{1!r}"
                message = template.format(type(ex).__name__, ex.args)
                pm.displayError( message)
                pm.displayError(traceback.format_exc())
                cont = pm.confirmBox("Custom Step Fail", "The step:%s has failed. Continue with next step?"%stepPath + "\n\n" + message + "\n\n" + traceback.format_exc(), "Continue", "Undo this Step")
                if not cont:
                    pm.undo()


    def runManualStep(self, widgetList):
        selItems = widgetList.selectedItems()
        for item in selItems:
            self.runStep( item.text().split("|")[-1][1:], customStepDic={})


##################
# Guide Settings
##################
class guideSettingsTab(QtWidgets.QDialog, guui.Ui_Form):
    def __init__(self, parent=None):
        super(guideSettingsTab, self).__init__(parent)
        self.setupUi(self)

class customStepTab(QtWidgets.QDialog, csui.Ui_Form):
    def __init__(self, parent=None):
        super(customStepTab, self).__init__(parent)
        self.setupUi(self)

class guideSettings(MayaQWidgetDockableMixin, QtWidgets.QDialog, helperSlots):
    # valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        self.toolName = TYPE
        # Delete old instances of the componet settings window.
        gqt.deleteInstances(self, MayaQDockWidget)
        super(self.__class__, self).__init__(parent = parent)
        # the inspectSettings function set the current selection to the component root before open the settings dialog
        self.root = pm.selected()[0]

        self.guideSettingsTab = guideSettingsTab()
        self.customStepTab = customStepTab()

        self.setup_SettingWindow()
        self.create_controls()
        self.populate_controls()
        self.create_layout()
        self.create_connections()

    def setup_SettingWindow(self):
        self.mayaMainWindow = gqt.maya_main_window()

        self.setObjectName(self.toolName)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle(TYPE)
        self.resize(370, 615)

    def create_controls(self):
        """
        Create the controls for the component base

        """
        self.tabs = QtWidgets.QTabWidget()
        self.tabs.setObjectName("settings_tab")

        # Close Button
        self.close_button = QtWidgets.QPushButton("Close")



    def populate_controls(self):
        """
        Populate the controls values from the custom attributes of the component.

        """
        #populate tab
        self.tabs.insertTab(0, self.guideSettingsTab, "Guide Settings")
        self.tabs.insertTab(1, self.customStepTab, "Custom Steps")

        #populate main settings
        self.guideSettingsTab.rigName_lineEdit.setText(self.root.attr("rig_name").get())
        self.guideSettingsTab.mode_comboBox.setCurrentIndex(self.root.attr("mode").get())
        self.guideSettingsTab.step_comboBox.setCurrentIndex(self.root.attr("step").get())
        self.populateCheck(self.guideSettingsTab.importSkin_checkBox, "importSkin")
        self.guideSettingsTab.skin_lineEdit.setText(self.root.attr("skin").get())
        self.populateCheck(self.guideSettingsTab.jointRig_checkBox, "joint_rig")
        self.populateAvailableSynopticTabs()
        for item in self.root.attr("synoptic").get().split(","):
            self.guideSettingsTab.rigTabs_listWidget.addItem(item)
        self.guideSettingsTab.L_color_fk_spinBox.setValue(self.root.attr("L_color_fk").get())
        self.guideSettingsTab.L_color_ik_spinBox.setValue(self.root.attr("L_color_ik").get())
        self.guideSettingsTab.C_color_fk_spinBox.setValue(self.root.attr("C_color_fk").get())
        self.guideSettingsTab.C_color_ik_spinBox.setValue(self.root.attr("C_color_ik").get())
        self.guideSettingsTab.R_color_fk_spinBox.setValue(self.root.attr("R_color_fk").get())
        self.guideSettingsTab.R_color_ik_spinBox.setValue(self.root.attr("R_color_ik").get())

        # pupulate custom steps sttings
        self.populateCheck(self.customStepTab.preCustomStep_checkBox, "doPreCustomStep")
        for item in self.root.attr("preCustomStep").get().split(","):
            self.customStepTab.preCustomStep_listWidget.addItem(item)
            self.populateCheck(self.customStepTab.postCustomStep_checkBox, "doPostCustomStep")
        for item in self.root.attr("postCustomStep").get().split(","):
            self.customStepTab.postCustomStep_listWidget.addItem(item)


    def create_layout(self):
        """
        Create the layout for the component base settings

        """
        self.settings_layout = QtWidgets.QVBoxLayout()
        self.settings_layout.addWidget(self.tabs)
        self.settings_layout.addWidget(self.close_button)

        self.setLayout(self.settings_layout)


    def create_connections(self):
        """
        Create the slots connections to the controls functions

        """
        self.close_button.clicked.connect(self.close_settings)

        # Setting Tab
        self.guideSettingsTab.rigName_lineEdit.editingFinished.connect(partial(self.updateLineEdit, self.guideSettingsTab.rigName_lineEdit, "rig_name" ) )
        self.guideSettingsTab.mode_comboBox.currentIndexChanged.connect(partial(self.updateComboBox, self.guideSettingsTab.mode_comboBox, "mode"))
        self.guideSettingsTab.step_comboBox.currentIndexChanged.connect(partial(self.updateComboBox, self.guideSettingsTab.step_comboBox, "step"))

        self.guideSettingsTab.importSkin_checkBox.stateChanged.connect(partial(self.updateCheck, self.guideSettingsTab.importSkin_checkBox, "importSkin"))
        self.guideSettingsTab.jointRig_checkBox.stateChanged.connect(partial(self.updateCheck, self.guideSettingsTab.jointRig_checkBox, "joint_rig"))
        self.guideSettingsTab.addTab_pushButton.clicked.connect(partial(self.moveFromListWidget2ListWidget,  self.guideSettingsTab.available_listWidget, self.guideSettingsTab.rigTabs_listWidget,  self.guideSettingsTab.rigTabs_listWidget, "synoptic"))
        self.guideSettingsTab.removeTab_pushButton.clicked.connect(partial(self.moveFromListWidget2ListWidget, self.guideSettingsTab.rigTabs_listWidget, self.guideSettingsTab.available_listWidget,  self.guideSettingsTab.rigTabs_listWidget, "synoptic"))
        self.guideSettingsTab.loadSkinPath_pushButton.clicked.connect(self.skinLoad)
        self.guideSettingsTab.rigTabs_listWidget.installEventFilter(self)

        self.guideSettingsTab.L_color_fk_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.guideSettingsTab.L_color_fk_spinBox, "L_color_fk"))
        self.guideSettingsTab.L_color_ik_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.guideSettingsTab.L_color_ik_spinBox, "L_color_ik"))
        self.guideSettingsTab.C_color_fk_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.guideSettingsTab.C_color_fk_spinBox, "C_color_fk"))
        self.guideSettingsTab.C_color_ik_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.guideSettingsTab.C_color_ik_spinBox, "C_color_ik"))
        self.guideSettingsTab.R_color_fk_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.guideSettingsTab.R_color_fk_spinBox, "R_color_fk"))
        self.guideSettingsTab.R_color_ik_spinBox.valueChanged.connect(partial(self.updateSpinBox, self.guideSettingsTab.R_color_ik_spinBox, "R_color_ik"))

        # custom Step Tab
        self.customStepTab.preCustomStep_checkBox.stateChanged.connect(partial(self.updateCheck, self.customStepTab.preCustomStep_checkBox, "doPreCustomStep"))
        self.customStepTab.preCustomStepAdd_pushButton.clicked.connect(self.addCustomStep)
        self.customStepTab.preCustomStepRemove_pushButton.clicked.connect(partial(self.removeSelectedFromListWidget, self.customStepTab.preCustomStep_listWidget, "preCustomStep"))
        self.customStepTab.preCustomStep_listWidget.installEventFilter(self)
        self.customStepTab.preCustomStepRun_pushButton.clicked.connect(partial(self.runManualStep, self.customStepTab.preCustomStep_listWidget))
        self.customStepTab.preCustomStepEdit_pushButton.clicked.connect(partial(self.editFile, self.customStepTab.preCustomStep_listWidget))

        self.customStepTab.postCustomStep_checkBox.stateChanged.connect(partial(self.updateCheck, self.customStepTab.postCustomStep_checkBox, "doPostCustomStep"))
        self.customStepTab.postCustomStepAdd_pushButton.clicked.connect(partial(self.addCustomStep, False))
        self.customStepTab.postCustomStepRemove_pushButton.clicked.connect(partial(self.removeSelectedFromListWidget, self.customStepTab.postCustomStep_listWidget, "postCustomStep"))
        self.customStepTab.postCustomStep_listWidget.installEventFilter(self)
        self.customStepTab.postCustomStepRun_pushButton.clicked.connect(partial(self.runManualStep, self.customStepTab.postCustomStep_listWidget))
        self.customStepTab.postCustomStepEdit_pushButton.clicked.connect(partial(self.editFile, self.customStepTab.postCustomStep_listWidget))




    def eventFilter(self, sender, event):
        if event.type() == QtCore.QEvent.ChildRemoved:
            if sender == self.guideSettingsTab.rigTabs_listWidget:
                self.updateListAttr(sender, "synoptic")
            elif sender == self.customStepTab.preCustomStep_listWidget:
                self.updateListAttr(sender, "preCustomStep")
            elif sender == self.customStepTab.postCustomStep_listWidget:
                self.updateListAttr(sender, "postCustomStep")

    # Slots ########################################################

    def populateAvailableSynopticTabs(self):

        import mgear.maya.shifter as shifter
        defPath = os.environ.get("MGEAR_SYNOPTIC_PATH", None)
        if not defPath or not os.path.isdir(defPath):
            defPath = shifter.SYNOPTIC_PATH

        tabsDirectories = [ name for name in os.listdir(defPath) if os.path.isdir(os.path.join(defPath, name)) ]
        # Quick clean the first empty item
        if tabsDirectories and not tabsDirectories[0]:
            self.guideSettingsTab.available_listWidget.takeItem(0)

        itemsList = self.root.attr("synoptic").get().split(",")
        for tab in sorted(tabsDirectories):
            if tab not in itemsList:
                self.guideSettingsTab.available_listWidget.addItem(tab)

    def skinLoad(self, *args):
            # startDir = pm.workspace(q=True, rootDirectory=True)
            startDir = self.root.attr("skin").get()
            filePath = pm.fileDialog2(dialogStyle=2, fileMode=1, startingDirectory=startDir, okc="Apply",
                                        fileFilter='mGear skin (*%s)' % skin.FILE_EXT)
            if not filePath:
                return
            if not isinstance(filePath, basestring):
                filePath = filePath[0]

            self.root.attr("skin").set(filePath)
            self.guideSettingsTab.skin_lineEdit.setText(filePath)

    def addCustomStep(self, pre=True, *args):
        '''
        stepAttr = string attr name
        '''
        if pre:
            stepAttr = "preCustomStep"
            stepWidget = self.customStepTab.preCustomStep_listWidget
        else:
            stepAttr = "postCustomStep"
            stepWidget = self.customStepTab.postCustomStep_listWidget

        # startDir = pm.workspace(q=True, rootDirectory=True)
        startDir = self.root.attr(stepAttr).get()
        filePath = pm.fileDialog2(dialogStyle=2, fileMode=1, startingDirectory=startDir, okc="Add",
                                    fileFilter='Custom Step .py (*.py)')
        if not filePath:
            return
        if not isinstance(filePath, basestring):
            filePath = filePath[0]

        # Quick clean the first empty item
        itemsList = [i.text() for i in stepWidget.findItems("", QtCore.Qt.MatchContains)]
        if itemsList and not itemsList[0]:
            stepWidget.takeItem(0)
        print filePath

        print filePath.split("/")[-1]
        fileName = os.path.split(filePath)[1].split(".")[0]
        stepWidget.addItem(fileName +" | "+filePath)
        self.updateListAttr(stepWidget, stepAttr)










