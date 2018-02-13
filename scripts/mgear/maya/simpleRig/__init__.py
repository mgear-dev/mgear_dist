import datetime
import getpass

from mgear.vendor.Qt import QtWidgets, QtCompat

import pymel.core as pm
import maya.OpenMayaUI as OpenMayaUI

import mgear
import mgear.maya.icon as ico
from mgear.maya import dag, transform, node, attribute
from mgear import string

# driven attr ===========================================


def _create_driven_attr():
    # string attribute to store a list of object affected by the root or pivot
    return


def _add_to_driven_attr():
    # add one or more elements to the driven list
    # should check is not in anyother driven attr and remove from others
    return


def _remove_from_driven_attr():
    # remove one or more elements to the driven attr
    return


def _get_from_driven_attr():
    # return a list of all elements in the driven attr as PyNodes
    return


# creators ===========================================

def _create_control_icon(name, t, icon="circle", side="C", world_ctl=True):
    # create control icon
    return


def _create_simple_rig_root(rigName="rig"):
    # create the simple rig root
    # have the attr: is_simple_rig and is_rig
    # should not create if there is a another simple rig root
    # should have synoptic attr. (synoptic configuration in UI)
    # use World_ctl should be optional

    # TODO: check if there is another rig root in the scene

    meshList = []
    ctlList = []

    # Create base structure
    rig = pm.createNode('transform', n=rigName)
    geo = pm.createNode('transform', n="geo", p=rig)
    geo.attr("overrideEnabled").set(1)
    geo.attr("overrideDisplayType").set(2)

    attribute.addAttribute(rig, "is_rig", "bool", True)
    attribute.addAttribute(rig, "is_simple_rig", "bool", True)
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

    rig.addAttr("rigGroups", at='message', m=1)
    rig.addAttr("rigPoses", at='message', m=1)

    # Create sets
    meshSet = pm.sets(meshList, n="CACHE_grp")
    ctlSet = pm.sets(ctlList, n="rig_controllers_grp")
    deformersSet = pm.sets(meshList, n="rig_deformers_grp")
    compGroup = pm.sets(meshList, n="rig_componentsRoots_grp")

    rigSets = pm.sets([meshSet, ctlSet, deformersSet, compGroup],
                      n="rig_Sets_grp")

    pm.connectAttr(rigSets.attr("message"), "rig.rigGroups[0]")
    pm.connectAttr(meshSet.attr("message"), "rig.rigGroups[1]")
    pm.connectAttr(ctlSet.attr("message"), "rig.rigGroups[2]")
    pm.connectAttr(deformersSet.attr("message"), "rig.rigGroups[3]")
    pm.connectAttr(compGroup.attr("message"), "rig.rigGroups[4]")

    # create world ctl

    # create global ctl

    # create local ctl


def _create_custom_pivot():
    # should have an options in UI and store as attr for rebuild
    #   -side
    #   -Control Shape
    #   -Place in base or place in BBOX center

    return


# Getters ===========================================

def _get_simple_rig_root():
    # get the root from the scene.
    # If there is more than one It will take the first
    return


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


# Build and IO ===========================================

def _collect_configuration_from_rig():
    # collects the simple rig configuration in a dictionary
    return


def _collect_configuration_from_model():
    # using suffix keyword from a given model collect the configuration.
    return


def _build_rig_from_configuration():
    # build the rig from a configuration
    # can be from scene configuration or from imported
    return


def export_configuration():
    # export configuration to json
    return


def import_configuration():
    # import configuration
    return


# Convert to SHIFTER  ===========================================

def _convert_to_shifter_guide():
    # convert from configuration
    # convert the configuration to a shifter guide.
    # extractig the ctl shapes
    return


def convert_to_shifter_rig():
    # will create the guide and build the rig
    # skinning automatic bas on driven attr
    return


# Edit ===========================================

def _move_element_to_pivot():
    # move the selected elements to new pivot.
    # should rebuild the pivot to adjust the size of the control
    return


def _delete_pivot():
    # should move all dependent elements and children pivots to his parent
    # element or move to the root if there is not parent pivot
    return


def _parent_pivot():
    # reparent pivot to another pivot or root
    # should avoid to parent under world_ctl or local_C0_ctl
    return


def _edit_pivot_position():
    # set the pivot in editable mode
    return


def _consolidate_pivot_position():
    # consolidate the pivot position after editing
    return


# Connect ===========================================

def _connect_driven():
    # Connect the driven element with multiply matrix
    return
