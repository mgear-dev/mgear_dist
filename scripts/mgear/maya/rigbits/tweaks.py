
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



import mgear.maya.skin as ski
import mgear.maya.primitive as pri
import mgear.maya.icon as ico
import mgear.maya.transform as tra

import mgear.maya.rigbits.blendShapes as bsp
import mgear.maya.rigbits.rivet as rvt


def resetJntLocalSRT(jnt):
    for axis in "XYZ":
        pm.setAttr(jnt+".jointOrient"+axis, 0)
        pm.setAttr(jnt+".rotate"+axis, 0)
        pm.setAttr(jnt+".translate"+axis, 0)

def doritosMagic(mesh, joint, jointBase, parent=None):
    #magic of doritos connection
    skinCluster = ski.getSkinCluster(mesh)
    if not skinCluster:
        if pm.objExists('static_jnt') is not True:
            static_jnt = pri.addJoint(parent, "static_jnt", m=dt.Matrix(), vis=True)
        static_jnt = pm.PyNode("static_jnt")

        #apply initial skincluster
        skinCluster = pm.skinCluster(static_jnt, mesh, tsb=True, nw=2, n='%s_skinCluster'%mesh.name())
    try:
        # we try to add the joint to the skin cluster. Will fail if is already in the skin cluster
        pm.skinCluster(skinCluster, e=True,  ai=joint, lw=True, wt=0)
    except:
        pm.displayInfo("The Joint: %s  is already in the %s."%(joint.name(),skinCluster.name()) )
        pass
    cn = joint.listConnections(p=True, type="skinCluster")
    for x in cn:
        if x.type()=="matrix":
            if x.name().split(".")[0] == skinCluster.name():
                # We force to avoid errors in case the joint is already connected
                pm.connectAttr(jointBase + ".worldInverseMatrix[0]", skinCluster + ".bindPreMatrix["+str(x.index())+"]", f=True)



def createJntTweak(mesh, parentJnt, ctlParent):

    if not isinstance(mesh, list):
        mesh = [mesh]

    name = "_".join(parentJnt.name().split("_")[:3])

    # create joints
    jointBase = pri.addJoint(parentJnt, name +"_tweak_jnt_lvl", parentJnt.getMatrix(worldSpace=True))
    resetJntLocalSRT(jointBase)
    joint = pri.addJoint(jointBase, name +"_tweak_jnt", parentJnt.getMatrix(worldSpace=True))
    resetJntLocalSRT(joint)

    #hidding joint base by changing the draw mode
    # pm.setAttr(jointBase+".drawStyle", 2)

    try:
        defSet = pm.PyNode("rig_deformers_grp")
    except:
        pm.sets(n="rig_deformers_grp")
        defSet = pm.PyNode("rig_deformers_grp")
    pm.sets(defSet, add=joint)

    controlType = "circle"
    iconBase = ico.create(ctlParent, name + "_base_tweak_ctl", ctlParent.getMatrix(worldSpace=True), 13, controlType, w=.8, ro=dt.Vector(0,0,1.5708))
    icon = ico.create(iconBase, name + "_tweak_ctl", ctlParent.getMatrix(worldSpace=True), 17, controlType, w=.5, ro=dt.Vector(0,0,1.5708))
    for t in [".translate", ".scale", ".rotate"]:
        pm.connectAttr(iconBase + t, jointBase + t)
        pm.connectAttr(icon + t, joint + t)


    #magic of doritos connection
    for m in mesh:
        doritosMagic(m, joint, jointBase)


def createRivetTweak(mesh, edgePair, name, parent=None, ctlParent=None):

    blendShape = bsp.getBlendShape(mesh)


    inputMesh = blendShape.listConnections(sh=True, t="shape", d=False)[0]

    oRivet = rvt.rivet()
    base = oRivet.create(inputMesh, edgePair[0], edgePair[1], parent)


    name = name + "_tweak"
    pm.rename(base, name)

    #connection ctlParent


    #Joints NPO
    npo = pm.PyNode(pm.createNode("transform", n=name+"_npo", p=ctlParent, ss=True))
    pm.pointConstraint(base, npo)

    # set proper orientation
    pos = base.getTranslation(space="world")
    temp = pm.spaceLocator()
    pm.parent(temp, base)
    temp.attr("ty").set(0)
    temp.attr("tz").set(0)
    temp.attr("tx").set(1)
    lookat = temp.getTranslation(space="world")

    up = dt.Vector(0,1,0)

    t = tra.getTransformLookingAt(pos, lookat, up, axis="xy", negate=False)
    npo.setMatrix(t, worldSpace=True)
    pm.delete(temp)

    # create joints
    jointBase = pri.addJoint(npo, name +"_jnt_lvl")
    joint = pri.addJoint(jointBase, name +"_jnt")

    #hidding joint base by changing the draw mode
    pm.setAttr(jointBase+".drawStyle", 2)

    try:
        defSet = pm.PyNode("rig_deformers_grp")
    except:
        pm.sets(n="rig_deformers_grp")
        defSet = pm.PyNode("rig_deformers_grp")
    pm.sets(defSet, add=joint)

    controlType = "sphere"
    icon = ico.create(jointBase, name + "_ctl", pm.datatypes.Matrix(), [1, 0, 0], controlType, w=.04)
    for t in [".translate", ".scale", ".rotate"]:
        pm.connectAttr(icon + t, joint + t)


    #magic of doritos connection
    doritosMagic(mesh, joint, jointBase)

    # reset axis and inver behaviour
    for axis in "XYZ":
        pm.setAttr(jointBase+".jointOrient"+axis, 0)
        pm.setAttr(npo+".translate"+axis, 0)
        pm.setAttr(jointBase+".translate"+axis, 0)

    p = icon.getParent().getParent()
    pp = p.getParent()
    pm.parent(p, w=True)
    for axis in "xyz":
        p.attr("r"+axis).set(0)
    pm.parent(p, pp)




def createRivetTweakFromList(mesh, edgeIndexPairList, name, parent=None, ctlParent=None):

    for i, pair in enumerate(edgeIndexPairList):
        createRivetTweak(mesh, [pair[0], pair[1]], name + str(i).zfill(3), parent, ctlParent)



def createRivetTweakLayer(layerMesh, bst, edgeList, tweakName, parent=None, ctlParent=None):

    #Apply blendshape from blendshapes layer mesh
    bsp.connectWithBlendshape(layerMesh, bst)

    #create static joint
    if pm.objExists('static_jnt') is not True:
        static_jnt = pri.addJoint(parent, "static_jnt", m=dt.Matrix(), vis=True)
    static_jnt = pm.PyNode("static_jnt")

    #apply initial skincluster
    pm.skinCluster(static_jnt, layerMesh, tsb=True, nw=2, n='%s_skinCluster'%layerMesh.name())

    #create doritos
    createRivetTweak(layerMesh, edgeList, tweakName, parent, ctlParent)
