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

import pymel.core as pm
import pymel.core.datatypes as dt

import mgear.maya.node as nod
import mgear.maya.skin as ski
import mgear.maya.icon as ico


import mgear.maya.rigbits as rigbits
import mgear.maya.rigbits.rivet as rvt
import mgear.maya.rigbits.blendShapes as bshp

def inverseTranslateParent(obj):
    """Invert the parent transformation

    Args:
        obj (dagNode): The source dagNode to inver parent transformation.
    """
    if not isinstance(obj, list):
        obj = [obj]
    for x in obj:
        nod.createMulNode([x.attr("tx"), x.attr("ty"), x.attr("tz")], [-1, -1, -1],
                          [x.getParent().attr("tx"), x.getParent().attr("ty"), x.getParent().attr("tz")])




def initCycleTweakBase(outMesh, baseMesh, rotMesh, transMesh, staticJnt=None):
    """Initialice the cycle tweak setup structure

    Args:
        outMesh (Mesh): The output mesh after the tweak deformation
        baseMesh (Mesh): The base mesh for the cycle tweak.
        rotMesh (Mesh): The mesh that will support the rotation transformations for the cycle tweak
        transMesh (Mesh): The mesh that will support the translation and scale transformations for the cycle tweak
        staticJnt (None or joint, optional): The static joint for the static vertex.
    """
    bshp.connectWithBlendshape(rotMesh, baseMesh )
    bshp.connectWithBlendshape(transMesh, rotMesh)
    bshp.connectWithBlendshape(outMesh, transMesh)

    #Init skinClusters
    pm.skinCluster(staticJnt, rotMesh, tsb=True, nw=2, n='%s_skinCluster'%rotMesh.name())
    pm.skinCluster(staticJnt, transMesh, tsb=True, nw=2, n='%s_skinCluster'%transMesh.name())

def cycleTweak(name, edgePair, mirrorAxis, baseMesh, rotMesh, transMesh, setupParent, ctlParent, jntOrg=None, grp=None,
               iconType="square", size=.025, color=13, ro=dt.Vector(1.5708,0,1.5708/2)):
    """The command to create a cycle tweak.
    A cycle tweak is a tweak that cycles to the parent position but doesn't create a cycle of dependency. This type of tweaks
    are very useful to create facial tweakers.

    Args:
        name (string): Name for the cycle tweak
        edgePair (list): List of edge pair to attach the cycle tweak
        mirrorAxis (bool): If true, will mirror the x axis behaviour.
        baseMesh (Mesh): The base mesh for the cycle tweak.
        rotMesh (Mesh): The mesh that will support the rotation transformations for the cycle tweak
        transMesh (Mesh): The mesh that will support the translation and scale transformations for the cycle tweak
        setupParent (dagNode): The parent for the setup objects
        ctlParent (dagNode): The parent for the control objects
        jntOrg (None or dagNode, optional): The parent for the joints
        grp (None or set, optional): The set to add the controls
        iconType (str, optional): The controls shape
        size (float, optional): The control size
        color (int, optional): The control color
        ro (TYPE, optional): The control shape rotation offset

    Returns:
        multi: the tweak control and the list of related joints.
    """
    # rotation sctructure
    rRivet = rvt.rivet()
    rBase = rRivet.create(baseMesh, edgePair[0], edgePair[1], setupParent, name + "_rRivet_loc")

    pos = rBase.getTranslation(space="world")

    # translation structure
    tRivetParent = pm.createNode("transform", n=name+"_tRivetBase", p=ctlParent)
    tRivetParent.setMatrix(dt.Matrix(), worldSpace=True)
    tRivet = rvt.rivet()
    tBase = tRivet.create(transMesh, edgePair[0], edgePair[1], tRivetParent, name + "_tRivet_loc")

    #create the control
    tweakBase = pm.createNode("transform", n=name+"_tweakBase", p=ctlParent)
    tweakBase.setMatrix(dt.Matrix(), worldSpace=True)
    tweakNpo = pm.createNode("transform", n=name+"_tweakNpo", p=tweakBase)
    tweakBase.setTranslation(pos, space="world")
    tweakCtl = ico.create(tweakNpo, name+"_ctl", tweakNpo.getMatrix(worldSpace=True), color, iconType, w=size, d=size, ro=ro)
    inverseTranslateParent(tweakCtl)
    pm.pointConstraint(tBase, tweakBase )

    #rot
    rotBase = pm.createNode("transform", n=name+"_rotBase", p=setupParent)
    rotBase.setMatrix(dt.Matrix(), worldSpace=True)
    rotNPO = pm.createNode("transform", n=name+"_rot_npo", p=rotBase)
    rotJointDriver = pm.createNode("transform", n=name+"_rotJointDriver", p=rotNPO)
    rotBase.setTranslation(pos, space="world")
    nod.createMulNode([rotNPO.attr("tx"), rotNPO.attr("ty"), rotNPO.attr("tz")], [-1, -1, -1],
                      [rotJointDriver.attr("tx"), rotJointDriver.attr("ty"), rotJointDriver.attr("tz")])
    pm.pointConstraint(rBase, rotNPO )
    pm.connectAttr(tweakCtl.r, rotNPO.r )
    pm.connectAttr(tweakCtl.s, rotNPO.s )

    # tra
    posNPO = pm.createNode("transform", n=name+"_pos_npo", p=setupParent)
    posJointDriver = pm.createNode("transform", n=name+"_posJointDriver", p=posNPO)
    posNPO.setTranslation(pos, space="world")
    pm.connectAttr(tweakCtl.t, posJointDriver.t )

    # mirror behaviour
    if mirrorAxis:
        tweakBase.attr("ry").set(tweakBase.attr("ry").get() + 180)
        rotBase.attr("ry").set(rotBase.attr("ry").get() + 180)
        posNPO.attr("ry").set(posNPO.attr("ry").get() + 180)

    #create joints
    rJoint =  rigbits.addJnt(rotJointDriver, jntOrg, True, grp)
    tJoint =  rigbits.addJnt(posJointDriver, jntOrg, True, grp)

    # add to rotation skin
    # TODO: add checker to see if joint is in the skincluster.
    rSK = ski.getSkinCluster(rotMesh)
    pm.skinCluster(rSK, e=True,  ai=rJoint, lw=True, wt=0)

    # add to transform skin
    # TODO: add checker to see if joint is in the skincluster.
    tSK = ski.getSkinCluster(transMesh)
    pm.skinCluster(tSK, e=True,  ai=tJoint, lw=True, wt=0)

    return tweakCtl, [rJoint, tJoint ]
