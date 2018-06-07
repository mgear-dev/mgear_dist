"""Rigbits tweaks rig module"""

import pymel.core as pm
from pymel.core import datatypes

from mgear.core import skin, primitive, icon, transform, attribute
from mgear.rigbits import rivet, blendShapes


def resetJntLocalSRT(jnt):
    """Reset the local SRT and jointOrient of a joint

    Args:
        jnt (joint): The joint to reset the local SRT
    """
    for axis in "XYZ":
        pm.setAttr(jnt + ".jointOrient" + axis, 0)
        pm.setAttr(jnt + ".rotate" + axis, 0)
        pm.setAttr(jnt + ".translate" + axis, 0)


def doritosMagic(mesh, joint, jointBase, parent=None):
    # magic of doritos connection
    skinCluster = skin.getSkinCluster(mesh)
    if not skinCluster:
        if pm.objExists('static_jnt') is not True:
            static_jnt = primitive.addJoint(
                parent, "static_jnt", m=datatypes.Matrix(), vis=True)
        static_jnt = pm.PyNode("static_jnt")

        # apply initial skincluster
        skinCluster = pm.skinCluster(
            static_jnt, mesh, tsb=True, nw=2, n='%s_skinCluster' % mesh.name())
    try:
        # we try to add the joint to the skin cluster. Will fail if is already
        # in the skin cluster
        pm.skinCluster(skinCluster, e=True, ai=joint, lw=True, wt=0)
    except Exception:
        pm.displayInfo("The Joint: %s  is already in the %s." % (
            joint.name(), skinCluster.name()))
        pass
    cn = joint.listConnections(p=True, type="skinCluster")
    for x in cn:
        if x.type() == "matrix":
            if x.name().split(".")[0] == skinCluster.name():
                # We force to avoid errors in case the joint is already
                # connected
                pm.connectAttr(
                    jointBase + ".worldInverseMatrix[0]",
                    skinCluster + ".bindPreMatrix[" + str(x.index()) + "]",
                    f=True)


def createJntTweak(mesh, parentJnt, ctlParent):
    """Create a joint tweak

    Args:
        mesh (mesh): The object to deform with the tweak
        parentJnt (dagNode): The parent for the new joint
        ctlParent (dagNode): The parent for the control.
    """
    if not isinstance(mesh, list):
        mesh = [mesh]

    name = "_".join(parentJnt.name().split("_")[:3])

    # create joints
    jointBase = primitive.addJoint(parentJnt,
                                   name + "_tweak_jnt_lvl",
                                   parentJnt.getMatrix(worldSpace=True))
    resetJntLocalSRT(jointBase)
    joint = primitive.addJoint(jointBase,
                               name + "_tweak_jnt",
                               parentJnt.getMatrix(worldSpace=True))
    resetJntLocalSRT(joint)

    # hidding joint base by changing the draw mode
    # pm.setAttr(jointBase+".drawStyle", 2)

    try:
        defSet = pm.PyNode("rig_deformers_grp")
    except TypeError:
        pm.sets(n="rig_deformers_grp")
        defSet = pm.PyNode("rig_deformers_grp")
    pm.sets(defSet, add=joint)

    controlType = "circle"
    iconBase = icon.create(ctlParent,
                           name + "_base_tweak_ctl",
                           ctlParent.getMatrix(worldSpace=True),
                           13,
                           controlType,
                           w=.8,
                           ro=datatypes.Vector(0, 0, 1.5708))
    o_icon = icon.create(iconBase, name + "_tweak_ctl",
                         ctlParent.getMatrix(worldSpace=True),
                         17,
                         controlType,
                         w=.5,
                         ro=datatypes.Vector(0, 0, 1.5708))

    for t in [".translate", ".scale", ".rotate"]:
        pm.connectAttr(iconBase + t, jointBase + t)
        pm.connectAttr(o_icon + t, joint + t)

    # magic of doritos connection
    for m in mesh:
        doritosMagic(m, joint, jointBase)


def createRivetTweak(mesh,
                     edgePair,
                     name,
                     parent=None,
                     ctlParent=None,
                     color=[0, 0, 0],
                     size=.04,
                     defSet=None):
    """Create a tweak joint attached to the mesh using a rivet

    Args:
        mesh (mesh): The object to add the tweak
        edgePair (pari list): The edge pairt to create the rivet
        name (str): The name for the tweak
        parent (None or dagNode, optional): The parent for the tweak
        ctlParent (None or dagNode, optional): The parent for the tweak control
        color (list, optional): The color for the control
    """
    blendShape = blendShapes.getBlendShape(mesh)

    inputMesh = blendShape.listConnections(sh=True, t="shape", d=False)[0]

    oRivet = rivet.rivet()
    base = oRivet.create(inputMesh, edgePair[0], edgePair[1], parent)
    # get side
    if base.getTranslation(space='world')[0] < -0.01:
        side = "R"
    elif base.getTranslation(space='world')[0] > 0.01:
        side = "L"
    else:
        side = "C"

    nameSide = name + "_tweak_" + side
    pm.rename(base, nameSide)

    # Joints NPO
    npo = pm.PyNode(pm.createNode("transform",
                                  n=nameSide + "_npo",
                                  p=ctlParent,
                                  ss=True))
    pm.pointConstraint(base, npo)

    # set proper orientation
    pos = base.getTranslation(space="world")
    temp = pm.spaceLocator()
    pm.parent(temp, base)
    temp.attr("ty").set(0)
    temp.attr("tz").set(0)
    temp.attr("tx").set(1)
    lookat = temp.getTranslation(space="world")

    up = datatypes.Vector(0, 1, 0)

    t = transform.getTransformLookingAt(pos,
                                        lookat,
                                        up,
                                        axis="xy",
                                        negate=False)
    npo.setMatrix(t, worldSpace=True)
    pm.delete(temp)

    # create joints
    jointBase = primitive.addJoint(npo, nameSide + "_jnt_lvl")
    joint = primitive.addJoint(jointBase, nameSide + "_jnt")

    # hidding joint base by changing the draw mode
    pm.setAttr(jointBase + ".drawStyle", 2)
    if not defSet:
        try:
            defSet = pm.PyNode("rig_deformers_grp")
        except TypeError:
            pm.sets(n="rig_deformers_grp")
            defSet = pm.PyNode("rig_deformers_grp")
    pm.sets(defSet, add=joint)

    controlType = "sphere"
    o_icon = icon.create(jointBase, nameSide + "_ctl",
                         datatypes.Matrix(),
                         color,
                         controlType,
                         w=size)
    for t in [".translate", ".scale", ".rotate"]:
        pm.connectAttr(o_icon + t, joint + t)

    # create the attributes to handlde mirror and symetrical pose
    attribute.addAttribute(
        o_icon, "invTx", "bool", 0, keyable=False, niceName="Invert Mirror TX")
    attribute.addAttribute(
        o_icon, "invTy", "bool", 0, keyable=False, niceName="Invert Mirror TY")
    attribute.addAttribute(
        o_icon, "invTz", "bool", 0, keyable=False, niceName="Invert Mirror TZ")
    attribute.addAttribute(
        o_icon, "invRx", "bool", 0, keyable=False, niceName="Invert Mirror RX")
    attribute.addAttribute(
        o_icon, "invRy", "bool", 0, keyable=False, niceName="Invert Mirror RY")
    attribute.addAttribute(
        o_icon, "invRz", "bool", 0, keyable=False, niceName="Invert Mirror RZ")
    attribute.addAttribute(
        o_icon, "invSx", "bool", 0, keyable=False, niceName="Invert Mirror SX")
    attribute.addAttribute(
        o_icon, "invSy", "bool", 0, keyable=False, niceName="Invert Mirror SY")
    attribute.addAttribute(
        o_icon, "invSz", "bool", 0, keyable=False, niceName="Invert Mirror SZ")

    # magic of doritos connection
    doritosMagic(mesh, joint, jointBase)

    # reset axis and inver behaviour
    for axis in "XYZ":
        pm.setAttr(jointBase + ".jointOrient" + axis, 0)
        pm.setAttr(npo + ".translate" + axis, 0)
        pm.setAttr(jointBase + ".translate" + axis, 0)

    p = o_icon.getParent().getParent()
    pp = p.getParent()
    pm.parent(p, w=True)
    for axis in "xyz":
        p.attr("r" + axis).set(0)
    if side == "R":
        p.attr("ry").set(180)
        p.attr("sz").set(-1)
    pm.parent(p, pp)

    return o_icon


def createRivetTweakFromList(mesh,
                             edgeIndexPairList,
                             name, parent=None,
                             ctlParent=None,
                             color=[0, 0, 0]):
    """Create multiple rivet tweaks from a list of edge pairs

    Args:
        mesh (mesh): The object to add the tweak
        edgeIndexPairList (list of list): The edge pair list of list
        name (str): The name for the tweak
        parent (None or dagNode, optional): The parent for the tweak
        ctlParent (None or dagNode, optional): The parent for the tweak control
        color (list, optional): The color for the control
    """
    ctlList = []
    for i, pair in enumerate(edgeIndexPairList):
        ctl = createRivetTweak(mesh,
                               [pair[0], pair[1]],
                               name + str(i).zfill(3),
                               parent,
                               ctlParent,
                               color)
        ctlList.append(ctl)
    return ctlList


def createRivetTweakLayer(layerMesh,
                          bst,
                          edgeList,
                          tweakName,
                          parent=None,
                          ctlParent=None):
    """Create a rivet tweak layer

    Args:
        layerMesh (mesh): The tweak layer mesh
        bst (mesh): The mesh blendshape target
        edgeList (list): List of edges
        tweakName (string): The name for the tweak
        parent (None or dagNode, optional): The parent for the tweak
        ctlParent (None or dagNode, optional): the parent for the tweak control
    """
    # Apply blendshape from blendshapes layer mesh
    blendShapes.connectWithBlendshape(layerMesh, bst)

    # create static joint
    if pm.objExists('static_jnt') is not True:
        static_jnt = primitive.addJoint(parent,
                                        "static_jnt",
                                        m=datatypes.Matrix(),
                                        vis=True)
    static_jnt = pm.PyNode("static_jnt")

    # apply initial skincluster
    pm.skinCluster(static_jnt,
                   layerMesh,
                   tsb=True,
                   nw=2,
                   n='%s_skinCluster' % layerMesh.name())

    # create doritos
    createRivetTweak(layerMesh, edgeList, tweakName, parent, ctlParent)
