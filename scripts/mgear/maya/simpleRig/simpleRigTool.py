import datetime
import getpass

from mgear.vendor.Qt import QtCore, QtWidgets, QtGui, QtCompat

import pymel.core as pm
import maya.OpenMayaUI as OpenMayaUI

import mgear
import mgear.maya.icon as ico
from mgear.maya import dag, transform, node, attribute, applyop, utils, pyqt
from mgear import string
from . import simpleRigUI as srUI
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin


CTL_TAG_ATTR = "is_simple_rig_ctl"
RIG_ROOT = "rig_root"

# TODO: add control tags


# driven attr ===========================================

def _driven_attr(dagNode):
    # message attribute to store a list of object affected by the root or pivot
    if not dagNode.hasAttr("drivenElements"):
        dagNode.addAttr("drivenElements", attributeType='message', multi=True)
    return dagNode.attr("drivenElements")


def _add_to_driven_attr(dagNode, driven):
    # add one or more elements to the driven list
    # should check is not in anyother driven attr and remove from others
    d_attr = _driven_attr(dagNode)
    if not isinstance(driven, list):
        driven = [driven]
    for d in driven:
        if not _is_valid_ctl(d):
            _remove_from_driven_attr(d)
            ni = _get_driven_attr_next_available_index(d_attr)
            pm.connectAttr(d.message,
                           d_attr.attr("drivenElements[{}]".format(str(ni))))
        else:
            pm.displayWarning("{} is a simple rig control and can't be "
                              " driven by another control".format(d))


def _remove_from_driven_attr(driven):
    # remove one or more elements to the driven attr
    if not isinstance(driven, list):
        driven = [driven]
    for x in driven:
        for o in x.message.connections(p=True):
            if "drivenElements" in o.name():
                pm.disconnectAttr(x.message, o)


def _get_from_driven_attr(dagNode):
    # return a list of all elements in the driven attr as PyNodes
    d_attr = _driven_attr(dagNode)
    return d_attr.inputs()


def _get_driven_attr_next_available_index(d_attr):
    # get the next available index for the drivenElements attr
    ne = d_attr.getNumElements()
    if ne == d_attr.numConnectedElements():
        return ne
    else:
        for e in range(ne):
            if not d_attr.attr(d_attr.elements()[e]).listConnections():
                return e


# creators ===========================================


def _create_control(name,
                    t,
                    radio,
                    parent=None,
                    icon="circle",
                    side="C",
                    indx=0,
                    color=17,
                    driven=None):
    name = _validate_name(name)

    def _set_name(extension):
        if side:
            fullName = "{}_{}{}_{}".format(name, side, str(indx), extension)
            i = 0
            while pm.ls(fullName):
                i += 1
                fullName = "{}_{}{}_{}".format(name, side, str(i), extension)
        else:
            fullName = "{}_{}".format(name, extension)
        return fullName

    npo = pm.createNode('transform', n=_set_name("npo"))
    npo.setTransformation(t)
    if parent:
        pm.parent(npo, parent)

    ctl = ico.create(npo,
                     _set_name("ctl"),
                     t,
                     color,
                     icon=icon,
                     w=radio * 2,
                     h=radio * 2,
                     d=radio * 2)

    attribute.addAttribute(ctl, CTL_TAG_ATTR, "bool", True, keyable=False)
    attribute.addAttribute(ctl, "edit_mode", "bool", False, keyable=False)
    pm.parent(ctl, npo)
    attribute.setKeyableAttributes(ctl)

    if driven:
        if not isinstance(driven, list):
            driven = [driven]
        _add_to_driven_attr(ctl, driven)
        _update_driven(ctl)

    grp = _controllers_grp()
    grp.add(ctl)

    return ctl


# @utils.one_undo
def _create_simple_rig_root(rigName=RIG_ROOT,
                            selection=None,
                            world_ctl=True):
    # create the simple rig root
    # have the attr: is_simple_rig and is_rig
    # should not create if there is a another simple rig root
    # should have synoptic attr. (synoptic configuration in UI)
    # use World_ctl should be optional

    # check if there is another rig root in the scene
    rig_models = _get_simple_rig_root()
    if rig_models:
        pm.displayWarning("Simple rig root already exist in the "
                          "scene: {}".format(str(rig_models)))
        return

    if not selection:
        if pm.selected():
            selection = pm.selected()
        else:
            pm.displayWarning("Selection is needed to create the root")
            return

    volCenter, radio, bb = _get_branch_bbox_data(selection)

    meshList = []
    ctlList = []

    # Create base structure
    rig = pm.createNode('transform', n=rigName)
    geo = pm.createNode('transform', n="geo", p=rig)
    geo.attr("overrideEnabled").set(1)
    geo.attr("overrideDisplayType").set(2)

    attribute.addAttribute(rig, "is_rig", "bool", True, keyable=False)
    attribute.addAttribute(rig, "is_simple_rig", "bool", True, keyable=False)
    attribute.addAttribute(rig, "rig_name", "string", rigName)
    attribute.addAttribute(rig, "user", "string", getpass.getuser())
    attribute.addAttribute(rig, "date", "string", str(datetime.datetime.now()))

    attribute.addAttribute(rig,
                           "maya_version",
                           "string",
                           str(pm.mel.eval("getApplicationVersionAsFloat")))

    attribute.addAttribute(rig, "gear_version", "string", mgear.getVersion())
    attribute.addAttribute(rig, "ctl_vis", "bool", True)
    attribute.addAttribute(rig, "jnt_vis", "bool", False)

    attribute.addAttribute(rig, "quickselA", "string", "")
    attribute.addAttribute(rig, "quickselB", "string", "")
    attribute.addAttribute(rig, "quickselC", "string", "")
    attribute.addAttribute(rig, "quickselD", "string", "")
    attribute.addAttribute(rig, "quickselE", "string", "")
    attribute.addAttribute(rig, "quickselF", "string", "")
    attribute.addAttribute(rig, "synoptic", "string", "")
    attribute.addAttribute(rig, "comments", "string", "")

    rig.addAttr("rigGroups", at='message', m=1)
    rig.addAttr("rigPoses", at='message', m=1)

    t = transform.getTransformFromPos(volCenter)

    # Create sets
    meshSet = pm.sets(meshList, n="CACHE_grp")
    ctlSet = pm.sets(ctlList, n="rig_controllers_grp")
    deformersSet = pm.sets(meshList, n="rig_deformers_grp")
    compGroup = pm.sets(meshList, n="rig_componentsRoots_grp")

    rigSets = pm.sets([meshSet, ctlSet, deformersSet, compGroup],
                      n="rig_Sets_grp")

    pm.connectAttr(rigSets.attr("message"),
                   "{}.rigGroups[0]".format(RIG_ROOT))
    pm.connectAttr(meshSet.attr("message"),
                   "{}.rigGroups[1]".format(RIG_ROOT))
    pm.connectAttr(ctlSet.attr("message"),
                   "{}.rigGroups[2]".format(RIG_ROOT))
    pm.connectAttr(deformersSet.attr("message"),
                   "{}.rigGroups[3]".format(RIG_ROOT))
    pm.connectAttr(compGroup.attr("message"),
                   "{}.rigGroups[4]".format(RIG_ROOT))

    # create world ctl
    if world_ctl:
        world_ctl = _create_control("world",
                                    t,
                                    radio * 1.5,
                                    parent=rig,
                                    icon="circle",
                                    side=None,
                                    indx=0,
                                    color=13,
                                    driven=None)
        # ctlList.append(world_ctl)
    else:
        world_ctl = rig

    # create global ctl
    global_ctl = _create_control("global",
                                 t,
                                 radio * 1.1,
                                 parent=world_ctl,
                                 icon="square",
                                 side="C",
                                 indx=0,
                                 color=17,
                                 driven=None)
    # ctlList.append(global_ctl)

    # create local ctl
    local_ctl = _create_control("local",
                                t,
                                radio,
                                parent=global_ctl,
                                icon="square",
                                side="C",
                                indx=0,
                                color=17,
                                driven=selection)
    # ctlList.append(local_ctl)

    return local_ctl


# @utils.one_undo
def _create_custom_pivot(name, side, icon, yZero, selection=None, parent=None):
    # should have an options in UI and store as attr for rebuild
    #   -side
    #   -Control Shape
    #   -Place in base or place in BBOX center

    if not selection:
        if pm.selected():
            selection = pm.selected()
        else:
            pm.displayWarning("Selection is needed to create the root")
            return

    if not parent:
        if selection and _is_valid_ctl(selection[-1]):
            parent = selection[-1]
            selection = selection[:-1]
        # elif pm.ls("local_C0_ctl"):
        #     parent = pm.PyNode("local_C0_ctl")
        else:
            pm.displayWarning("The latest selected element should be a CTL. "
                              "PARENT is needed!")
            return

    volCenter, radio, bb = _get_branch_bbox_data(selection, yZero)
    t = transform.getTransformFromPos(volCenter)

    ctl = _create_control(name,
                          t,
                          radio,
                          parent,
                          icon,
                          side,
                          indx=0,
                          color=14,
                          driven=selection)

    return ctl


# Getters ===========================================

def _get_simple_rig_root():
    # get the root from the scene.
    # If there is more than one It will return none and print warning
    rig_models = [item for item in pm.ls(transforms=True)
                  if _is_valid_ctl(item)]
    if rig_models:
        return rig_models


def _get_children(dagNode):
    # get all children node
    children = dagNode.listRelatives(allDescendents=True,
                                     type="transform")
    return children


def _get_bbox_data(obj=None, yZero=True, *args):
    """Calculate the bounding box data

    Args:
        obj (None, optional): The object to calculate the bounding box
        yZero (bool, optional): If true, sets the hight to the lowest point
        *args: Maya dummy

    """
    volCenter = False

    if not obj:
        obj = pm.selected()[0]
    shapes = pm.listRelatives(obj, ad=True, s=True)
    if shapes:
        bb = pm.polyEvaluate(shapes, b=True)
        volCenter = [(axis[0] + axis[1]) / 2 for axis in bb]
        if yZero:
            volCenter[1] = bb[1][0]
        radio = max([bb[0][1] - bb[0][0], bb[2][1] - bb[2][0]]) / 1.7

    return volCenter, radio, bb


def _get_branch_bbox_data(selection=None, yZero=True, *args):

    absBB = None
    absCenter = None
    absRadio = 0.5
    bbox_elements = []

    for e in selection:
        bbox_elements.append(e)
        for c in _get_children(e):
            if c.getShapes():
                bbox_elements.append(c)

    for e in bbox_elements:
        bbCenter, bbRadio, bb = _get_bbox_data(e)
        if not absBB:
            absBB = bb
        else:
            absBB = [[min(bb[0][0], absBB[0][0]),
                      max(bb[0][1], absBB[0][1])],
                     [min(bb[1][0], absBB[1][0]),
                      max(bb[1][1], absBB[1][1])],
                     [min(bb[2][0], absBB[2][0]),
                      max(bb[2][1], absBB[2][1])]]
        # if absCenter:
        #     absCenter = [0, 0, 0]
        # else:
        absCenter = [(axis[0] + axis[1]) / 2 for axis in absBB]
        absRadio = max([absBB[0][1] - absBB[0][0],
                        absBB[2][1] - absBB[2][0]]) / 1.7

        # set the cencter in the floor
        if yZero:
            absCenter[1] = absBB[1][0]

    return absCenter, absRadio, absBB


# Build and IO ===========================================

def _collect_configuration_from_rig():
    # TODO: collects the simple rig configuration in a dictionary
    return


def _collect_configuration_from_model():
    # TODO: using suffix keyword from a given model collect the configuration.
    return


def _build_rig_from_configuration():
    # TODO: build the rig from a configuration
    # can be from scene configuration or from imported
    return


def export_configuration():
    # TODO: export configuration to json
    return


def import_configuration():
    # TODO: import configuration
    return


# Convert to SHIFTER  ===========================================

def convert_to_shifter_guide():
    # TODO: convert from configuration
    # convert the configuration to a shifter guide.
    # extractig the ctl shapes
    return


def convert_to_shifter_rig():
    # TODO: will create the guide and build the rig
    # skinning automatic base on driven attr
    return


# Edit ===========================================

def _remove_element_from_ctl(ctl, dagNode):

    # Check the ctl is reset
    if not _is_in_npo(ctl):
        pm.displayWarning("{}: have SRT values. Reset, before edit "
                          "elements".format(ctl))
        return

    # get affected by pivot
    driven = _get_from_driven_attr(ctl)

    # if dagNode is not in affected by pivot disconnect
    if dagNode in driven:
        _disconnect_driven(dagNode)
        _remove_from_driven_attr(dagNode)
        _update_driven(ctl)
    else:
        pm.displayWarning(
            "{} is is not connected to the ctl {}".format(dagNode,
                                                          ctl))

    # TODO: print warning if it was not connected
    return


def _add_element_to_ctl(ctl, dagNode):
    # encusre the element is not yet in pivot
    driven = _get_from_driven_attr(ctl)
    # Check the ctl is reset
    if not _is_in_npo(ctl):
        pm.displayWarning("{}: have SRT values. Reset, before edit "
                          "elements".format(ctl))
        return
    # if dagNode is not in affected by pivot disconnect
    if dagNode not in driven:
        # move\add the selected elements to new pivot.
        _add_to_driven_attr(ctl, dagNode)
        _update_driven(ctl)


def _delete_pivot(dagNode):
    # should move all dependent elements and children pivots to his parent
    # element or move to the root if there is not parent pivot

    if _is_valid_ctl(dagNode):
        # get children pivots
        # Check the ctl is reset
        if not _is_in_npo(dagNode):
            pm.displayWarning("{}: have SRT values. Reset, before edit "
                              "elements".format(dagNode))
            return
        children = dagNode.listRelatives(type="transform")
        if children:
            pm.parent(children, dagNode.getParent(2))

        # clean connections
        for d in _get_from_driven_attr(dagNode):
            _disconnect_driven(d)

        # delete pivot
        pm.delete(dagNode.getParent())
        pm.select(clear=True)


def _parent_pivot(pivot, parent):
    # reparent pivot to another pivot or root
    # should avoid to parent under world_ctl or local_C0_ctl

    # check it parent is valid pivot
    if _is_valid_ctl(parent):
        if _is_valid_ctl(pivot):
            # Check the ctl is reset
            if not _is_in_npo(pivot):
                pm.displayWarning("{}: have SRT values. Reset, before edit "
                                  "elements".format(pivot))
            npo = pivot.getParent()
            pm.parent(npo, parent)
            pm.select(clear=True)
        else:
            pm.displayWarning("The selected Pivot: {} is not a "
                              "valid simple rig ctl.".format(parent.name()))
    else:
        pm.displayWarning("The selected parent: {} is not a "
                          "valid simple rig ctl.".format(parent.name()))


def _edit_pivot_position(ctl):
    # TODO: set the pivot in editable mode
    # check that is in neutral pose
    if not _is_in_npo(ctl):
        pm.displayWarning("The control: {} should be in reset"
                          " position".format(ctl.name()))
        return
    if not ctl.attr("edit_mode").get():
        # move childs to parent
        children = ctl.listRelatives(type="transform")
        if children:
            pm.parent(children, ctl.getParent())
        # disconnect the driven elements
        driven = _get_from_driven_attr(ctl)
        ctl.attr("edit_mode").set(True)
        for d in driven:
            # first try to disconnect
            _disconnect_driven(d)
    else:
        pm.displayWarning("The control: {} Is already in"
                          " Edit pivot Mode".format(ctl.name()))
        return


def _consolidate_pivot_position(ctl):
    # TODO: consolidate the pivot position after editing

    if ctl.attr("edit_mode").get():
        # unparent the  children
        rig = pm.PyNode(RIG_ROOT)
        npo = ctl.getParent()
        children = npo.listRelatives(type="transform")
        pm.parent(children, rig)
        # set the npo to his position
        transform.matchWorldTransform(ctl, npo)
        # reparent childrens
        pm.parent(children, npo)
        # re-connect/update driven elements
        _update_driven(ctl)
        ctl.attr("edit_mode").set(False)
    else:
        pm.displayWarning("The control: {} Is NOT in"
                          " Edit pivot Mode".format(ctl.name()))


@utils.one_undo
def _delete_rig():
    # TODO: delete the rig and clean all connections on the geometry
    # add a confirmation message
    return


# utils ===========================================

def _validate_name(name):
    # check and correct bad formating
    return string.removeInvalidCharacter(name)


def _is_valid_ctl(dagNode):
    # check if the dagNode is a simple rig ctl
    return dagNode.hasAttr(CTL_TAG_ATTR)


def _is_in_npo(dagNode):
    # check if the SRT is reset
    trAxis = ["tx", "ty", "tz", "rx", "ry", "rz"]
    sAxis = ["sx", "sy", "sz"]
    npo_status = True
    for axis in trAxis:
        val = dagNode.attr(axis).get()
        if val != 0.0:
            npo_status = False
            pm.displayWarning("{}.{} is not neutral! Value is {}, "
                              "but should be {}".format(dagNode.name(),
                                                        axis,
                                                        str(val),
                                                        "0.0"))
    for axis in sAxis:
        val = dagNode.attr(axis).get()
        if val != 1.0:
            npo_status = False
            pm.displayWarning("{}.{} is not neutral! Value is {}, "
                              "but should be {}".format(dagNode.name(),
                                                        axis,
                                                        str(val),
                                                        "1.0"))
    return npo_status


def _controllers_grp():
    node = pm.PyNode(RIG_ROOT)
    sets = node.listConnections(type="objectSet")

    controllersGrp = False
    for oSet in sets:
        if "controllers_grp" in oSet.name().lower():
            controllersGrp = oSet

    return controllersGrp

# Connect ===========================================


def _connect_driven(driver, driven):
    # Connect the driven element with multiply matrix
    # before connect check if the driven is valid.
    # I.E. only elements not under geoRoot.
    if _is_valid_ctl(driven):
        pm.displayWarning("{} can't not be driven or connected to a ctl, "
                          "because is a simple rig control".format(driven))
        return

    # Check the ctl is reset
        if not _is_in_npo(driver):
            pm.displayWarning("{}: have SRT values. Reset, before connect "
                              "elements".format(driver))
    # connect message of the matrix mul nodes to the driven.
    # So later is easy to delete
    mOperatorNodes = "mOperatorNodes"
    if not driven.hasAttr(mOperatorNodes):
        driven.addAttr(mOperatorNodes, attributeType='message', multi=True)
        # print driven.attr(mOperatorNodes)
    mOp_attr = driven.attr(mOperatorNodes)
    m = driven.worldMatrix.get()

    im = driver.worldMatrix.get().inverse()
    mul_node0 = applyop.gear_mulmatrix_op(im,
                                          driver.worldMatrix)
    mul_node1 = applyop.gear_mulmatrix_op(m,
                                          mul_node0.output)
    mul_node2 = applyop.gear_mulmatrix_op(mul_node1.output,
                                          driven.parentInverseMatrix)
    dm_node = node.createDecomposeMatrixNode(mul_node2.output)

    pm.connectAttr(dm_node.outputTranslate, driven.t)
    pm.connectAttr(dm_node.outputRotate, driven.r)
    pm.connectAttr(dm_node.outputScale, driven.s)
    pm.connectAttr(dm_node.outputShear, driven.shear)

    pm.connectAttr(mul_node0.message,
                   mOp_attr.attr("{}[0]".format(mOperatorNodes)))
    pm.connectAttr(mul_node1.message,
                   mOp_attr.attr("{}[1]".format(mOperatorNodes)))
    pm.connectAttr(mul_node2.message,
                   mOp_attr.attr("{}[2]".format(mOperatorNodes)))
    pm.connectAttr(dm_node.message,
                   mOp_attr.attr("{}[3]".format(mOperatorNodes)))


def _disconnect_driven(driven):
    # delete the matrix mult nodes
    mOperatorNodes = "mOperatorNodes"
    if driven.hasAttr(mOperatorNodes):
        pm.delete(driven.attr(mOperatorNodes).inputs())


@utils.one_undo
def _update_driven(driver):
    # update the driven connections using the driver drivenElements attr
    driven = _get_from_driven_attr(driver)
    for d in driven:
        # first try to disconnect
        _disconnect_driven(d)
        # Connect
        _connect_driven(driver, d)


####################################
# Simple Rig dialog
####################################

class simpleRigUI(QtWidgets.QMainWindow, srUI.Ui_MainWindow):

    def __init__(self, parent=None):
        super(simpleRigUI, self).__init__(parent)
        self.setupUi(self)


class simpleRigTool(MayaQWidgetDockableMixin, QtWidgets.QDialog):

    valueChanged = QtCore.Signal(int)

    def __init__(self, parent=None):
        self.toolName = "SimpleRigTool"
        super(simpleRigTool, self).__init__(parent)
        self.srUIInst = simpleRigUI()

        self.setup_simpleRigWindow()
        self.create_layout()
        self.create_connections()

        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, True)

    def setup_simpleRigWindow(self):

        self.setObjectName(self.toolName)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setWindowTitle("Simple Rig")
        self.resize(280, 260)

    def create_layout(self):

        self.sr_layout = QtWidgets.QVBoxLayout()
        self.sr_layout.addWidget(self.srUIInst)

        self.setLayout(self.sr_layout)

    def create_connections(self):
        self.srUIInst.createRoot_pushButton.clicked.connect(self.create_root)
        self.srUIInst.createCtl_pushButton.clicked.connect(self.create_ctl)
        self.srUIInst.selectAffected_pushButton.clicked.connect(
            self.select_affected)
        self.srUIInst.reParentPivot_pushButton.clicked.connect(
            self.parent_pivot)
        self.srUIInst.add_pushButton.clicked.connect(self.add_to_ctl)
        self.srUIInst.remove_pushButton.clicked.connect(self.remove_from_ctl)
        self.srUIInst.editPivot_pushButton.clicked.connect(self.edit_pivot)
        self.srUIInst.setPivot_pushButton.clicked.connect(self.set_pivot)

        # Menus
        self.srUIInst.deletePivot_action.triggered.connect(self.delete_pivot)

    # Slots
    def create_root(self):
        _create_simple_rig_root()

    def create_ctl(self):
        name = self.srUIInst.createCtl_lineEdit.text()
        if name:
            sideIdx = self.srUIInst.side_comboBox.currentIndex()
            side = ["C", "L", "R"][sideIdx]
            iconIdx = self.srUIInst.shape_comboBox.currentIndex()
            icon = ["circle", "cube"][iconIdx]
            position = self.srUIInst.position_comboBox.currentIndex()
            _create_custom_pivot(name, side, icon, yZero=position)
        else:
            pm.displayWarning("Name is not valid")

    @utils.one_undo
    def select_affected(self):
        oSel = pm.selected()
        if oSel:
            ctl = oSel[0]
            pm.select(_get_from_driven_attr(ctl))

    @utils.one_undo
    def parent_pivot(self):
        oSel = pm.selected()
        if oSel and len(oSel) >= 2:
            for c in oSel[:-1]:
                _parent_pivot(c, oSel[-1])

    @utils.one_undo
    def add_to_ctl(self):
        oSel = pm.selected()
        if oSel and len(oSel) >= 2:
            for e in oSel[:-1]:
                _add_element_to_ctl(oSel[-1], e)

    @utils.one_undo
    def remove_from_ctl(self):
        oSel = pm.selected()
        if oSel and len(oSel) >= 2:
            for e in oSel[:-1]:
                _remove_element_from_ctl(oSel[-1], e)

    @utils.one_undo
    def delete_pivot(self):
        for d in pm.selected():
            _delete_pivot(d)

    @utils.one_undo
    def edit_pivot(self):
        oSel = pm.selected()
        if oSel and len(oSel) == 1:
            _edit_pivot_position(oSel[0])

    @utils.one_undo
    def set_pivot(self):
        oSel = pm.selected()
        if oSel and len(oSel) == 1:
            _consolidate_pivot_position(oSel[0])


def open(*args):
    pyqt.showDialog(simpleRigTool)
####################################


if __name__ == "__main__":

    open()
