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
from pymel import util as pmu


import mgear
import mgear.maya.icon as ic
import mgear.maya.applyop as aop
import mgear.maya.node as nod
import mgear.maya.transform as tra
import mgear.maya.primitive as pri
import mgear.maya.meshNavigation as mnav
import mgear.string


def addNPO(*args):
    """
    Add a transform node as a parent and in the same pose of each of the selected objects.
    This way neutralize the local transfromation values.
    NPO stands for "neutral position" terminology from the all mighty Softimage ;)
    """
    oSel = pm.selected()
    for obj in oSel:
        oParent = obj.getParent()
        oTra = pm.createNode("transform", n= obj.name() + "_npo", p=oParent, ss=True)
        oTra.setTransformation(obj.getMatrix())
        pm.parent(obj, oTra)


def selectDeformers(*args):
    """
    Select the deformers from the object skinCluster.
    """
    oSel = pm.selected()[0]
    oColl = pm.skinCluster(oSel, query=True, influence=True)
    pm.select(oColl)


#Icon creator
def createCTL(type = "square", child=False, *args):
    """
    Create a control for each selected object. The newly create control can be parent or child of the object.

    Args:
        type (str): The shape of the control.
        child (bool): if True, the control will be created as a child of the object.
    """
    iconList =[]
    if child:
        if len(pm.selected()) > 0:
            for x in pm.selected():
                oChilds = [item for item in x.listRelatives(ad=True, type="transform")  if item.longName().split("|")[-2] == x.name()]

                icon = ic.create(None, x.name() + "_ctl",None, [1, 0, 0], type)
                iconList.append(icon)
                icon.setTransformation(x.getMatrix(worldSpace=True))
                pm.parent(icon, x)
                for child in oChilds:

                    pm.parent(child, icon)
        else:

           icon = ic.create(None, type + "_ctl", pm.datatypes.Matrix(), [1, 0, 0], type)
           iconList.append(icon)
    else:
        if len(pm.selected()) > 0:
            for x in pm.selected():
                oParent = x.getParent()
                icon = ic.create(oParent, x.name() + "_ctl", x.getMatrix(), [1, 0, 0], type)
                iconList.append(icon)
                icon.setTransformation(x.getMatrix())
                pm.parent(x, icon)
        else:

           icon = ic.create(None, type + "_ctl", pm.datatypes.Matrix(), [1, 0, 0], type)
           iconList.append(icon)

    try:
        defSet = pm.PyNode("rig_controlers_grp")
        for ico in iconList:
            pm.sets(defSet, add=ico)
    except:
        print "not rig_controlers_grp found"
        pass


def addJnt(obj=False, parent=False, noReplace=False, *args):

    """

    Create one joint for each selected object.

    Args:
        obj:
        parent:
        noReplace:
        *args:

    Returns:

    """
    if not obj:
        oSel = pm.selected()
    else:
        oSel = [obj]

    for obj in oSel:
        if not parent:
            try:
                oParent = pm.PyNode("jnt_org")
            except:
                oParent = obj
        else:
            oParent = parent
        if noReplace:
            jntName = "_".join(obj.name().split("_"))+"_jnt"
        else:
            jntName = "_".join(obj.name().split("_")[:-1])+"_jnt"
        jnt = pm.createNode("joint", n=jntName)

        try:
            defSet = pm.PyNode("rig_deformers_grp")
            pm.sets(defSet, add=jnt)
        except:
            pm.sets(n="rig_deformers_grp")
            defSet = pm.PyNode("rig_deformers_grp")
            pm.sets(defSet, add=jnt)

        oParent.addChild(jnt)

        jnt.setAttr("jointOrient", 0, 0, 0)
        try:
            mulmat_node = nod.createMultMatrixNode(obj + ".worldMatrix", jnt + ".parentInverseMatrix")
            dm_node = nod.createDecomposeMatrixNode(mulmat_node+".matrixSum")
            pm.connectAttr(dm_node+".outputTranslate", jnt+".t")
            pm.connectAttr(dm_node+".outputRotate", jnt+".r")
            pm.connectAttr(dm_node+".outputScale", jnt+".s")
        except:
            for axis in ["tx", "ty", "tz", "rx", "ry", "rz"]:
                jnt.attr(axis).set(0.0)

    return jnt


def duplicateSym(*args):
    """
    Duplicate one dag hierarchy to/from X/-X renaming "L" to "R"
    """
    oSelection = pm.selected()
    if oSelection:
        oSel = oSelection[0]
        oTarget = pm.duplicate()[0]

        t = oSel.getTransformation()
        t = tra.getSymmetricalTransform(t)
        oTarget.setTransformation(t)

        #Quick rename
        pm.select(oTarget, hi=True)

        for x in pm.selected():
            x.rename(mgear.string.convertRLName(x.name().split("|")[-1]))
        oTarget.rename(mgear.string.convertRLName(oSel.name()))
    else:
        pm.displayWarning("Select something before duplicate symmetry.")


def matchWorldXform(*args):
    """
    Align 2 selected objects in world space.
    """
    if len(pm.selected()) <2:
        mgear.log( "2 objects or more must be selected. Source and Targets transform", mgear.sev_warning)
    else:
        source = pm.selected()[0]
        for target in pm.selected()[1:]:
            tra.matchWorldTransform(source, target)

def alignToPointsLoop(points=None, loc=None, name=None, *args):
    """
    Create space locator align to the plain define by at less 3 vertex
    """

    if not points:
        oSel = pm.selected(fl=True)

        if not oSel  or len(oSel) < 3  or str(type(oSel[0])) != "<class 'pymel.core.general.MeshVertex'>":
            pm.displayWarning("We need to select a points loop, with at less 3 or more points")
            return
        else:
            points = oSel
    if not loc:
        if not name:
            name = "axisCenterRef"
        loc = pm.spaceLocator(n=name)

    oLen = len(points)
    wPos = [0,0,0]
    for x in points:
        pos = x.getPosition(space="world")
        wPos[0] += pos[0]
        wPos[1] += pos[1]
        wPos[2] += pos[2]

    centerPosition = dt.Vector([wPos[0]/oLen, wPos[1]/oLen, wPos[2]/oLen ])


    lookat = dt.Vector(points[0].getPosition(space="world"))

    # NORMAL
    a =  lookat - centerPosition
    a.normalize()

    nextV = dt.Vector(points[1].getPosition(space="world"))
    b =  nextV - centerPosition
    b.normalize()
    normal = pmu.cross(b, a)
    normal.normalize()

    trans = tra.getTransformLookingAt(centerPosition,lookat, normal, axis="xy", negate=False)

    loc.setTransformation(trans)


def connectLocalTransform(objects=None, s=True, r=True, t=True, *args):
    """
    Connect scale, rotatio and translation.
    """
    if objects or len(pm.selected()) >= 2:
        if objects:
            source = objects[0]
            targets = objects[1:]

        else :
            source = pm.selected()[0]
            targets = pm.selected()[1:]
        for target in targets:
            if t:
                pm.connectAttr(source + ".translate", target + ".translate")
            if s:
                pm.connectAttr(source + ".scale", target + ".scale")
            if r:
                pm.connectAttr(source + ".rotate", target + ".rotate")
    else:
        pm.displayWarning("Please at less select 2 objects. Source + target/s")

def connectUserDefinedChannels(source, targets):
    """
    Connects the user defined channels between 2 objects with the same channels. Usually a copy of the same object.
    """
    udc = source.listAttr(ud=True)
    if not isinstance(targets, list):
        targets = [targets]
    for c in udc:
        for t in targets:
            try:
                pm.connectAttr(c, t.attr(c.name().split(".")[-1]))
            except:
                pm.displayWarning("%s don't have contrapart channel on %s"%(c, t))

def replaceShape(*args):
    """
    Replace the shape of one object by another.
    """
    oSel =  pm.selected()

    if len(oSel) !=2:
        print "2 objects must be selected"
    else:
        source = oSel[0]
        source2 = pm.duplicate(source)[0]
        targets = oSel[1:]
        for target in targets:
            shape = target.getShape()
            pm.delete(shape)
            pm.parent(source2.getShape(), target, r=True, s=True)

            pm.rename( target.getShape(), target.name() + "Shape" )

            pm.delete(source2)


def matchPosfromBBox(*args):
    """
    Match the position of one object, using the boundig box center of another object.
    """
    source = pm.selected()[0]
    target = pm.selected()[1]

    center = mnav.bboxCenter(source, radius=False)

    target.setTranslation(center, space="world")


#######################################
# Gimmicks
#######################################

def spaceJump(ref=None, space=None, *args):
    """
    This function create a local reference space from another space in the hierarchy
    """

    if not ref and not space:
        if len(pm.selected())==2:
            ref = pm.selected()[0]
            space = pm.selected()[1]
        else:
            pm.displayWarning("Please select 2 objects. Reference Space  and Jump Space")
            return

    refLocal = pri.addTransform(ref, ref.name()+"_SPACE_"+space.name(), space.getMatrix(worldSpace=True))
    spaceLocal = pri.addTransform(space, ref.name()+"_JUMP_"+space.name(), space.getMatrix(worldSpace=True))

    aop.gear_mulmatrix_op(refLocal.attr("worldMatrix"), spaceLocal.attr("parentInverseMatrix[0]"), spaceLocal)

    pm.displayInfo("Jump Space for local space: " + space.name() + "created")
    return spaceLocal


def createInterpolateTransform(*args):
    """
    Create space locator and apply gear_intmatrix_op, to interpolate the his pose between 2 selected objects.
    """

    if len(pm.selected()) ==2:
        refA = pm.selected()[0]
        refB = pm.selected()[1]
        intMatrix = aop.gear_intmatrix_op(refA.attr("worldMatrix"), refB.attr("worldMatrix"), .5)
        intTrans = pri.addTransform(refA, refA.name()+"_INTER_"+refB.name(), dt.Matrix())
        aop.gear_mulmatrix_op(intMatrix.attr("output"), intTrans.attr("parentInverseMatrix[0]"), intTrans)
        pm.displayInfo("Interpolated Transform: " + intTrans.name() + "created")
    else:
        pm.displayWarning("Please select 2 objects. ")



def addBlendedJoint(oSel=None, compScale=True, *args):

    if not oSel:
        oSel = pm.selected()
    elif not isinstance(oSel, list):
        oSel = [oSel]

    for x in oSel:
        if isinstance(x, pm.nodetypes.Joint):
            parent = x.getParent()
            jnt = pm.createNode('joint', n='blend_'+x.name(), p=x)
            jnt.attr('radius').set(1.5)
            pm.parent(jnt, parent)
            node = pm.createNode("pairBlend")
            node.attr("rotInterpolation").set(1)
            pm.setAttr(node+".weight", .5)
            pm.connectAttr(x+".translate", node+".inTranslate1")
            pm.connectAttr(x+".translate", node+".inTranslate2")
            pm.connectAttr(x+".rotate", node+".inRotate1")

            pm.connectAttr(node+".outRotateX", jnt+".rotateX")
            pm.connectAttr(node+".outRotateY", jnt+".rotateY")
            pm.connectAttr(node+".outRotateZ", jnt+".rotateZ")

            pm.connectAttr(node+".outTranslateX", jnt+".translateX")
            pm.connectAttr(node+".outTranslateY", jnt+".translateY")
            pm.connectAttr(node+".outTranslateZ", jnt+".translateZ")

            pm.connectAttr(x+".scale", jnt+".scale")

            jnt.attr("overrideEnabled").set(1)
            jnt.attr("overrideColor").set(17)

            jnt.attr("segmentScaleCompensate").set(compScale)

            try:
                defSet = pm.PyNode("rig_deformers_grp")

            except:
                pm.sets(n="rig_deformers_grp")
                defSet = pm.PyNode("rig_deformers_grp")

            pm.sets(defSet, add=jnt)
        else:
            pm.displayWarning("Blended Joint can't be added to: %s. Because is not ot type Joint"%x.name())

def addSupportJoint(oSel=None, *args):
    if not oSel:
        oSel = pm.selected()
    elif not isinstance(oSel, list):
        oSel = [oSel]

    for x in oSel:
        if x.name().split("_")[0] == "blend":
            children = [item for item in pm.selected()[0].listRelatives(ad=True, type="joint")]
            i = len(children)
            name = x.name().replace("blend", "blendSupport_%s"%str(i))
            jnt = pm.createNode('joint', n=name, p=x)
            jnt.attr('radius').set(1.5)
            jnt.attr("overrideEnabled").set(1)
            jnt.attr("overrideColor").set(17)
            try:
                defSet = pm.PyNode("rig_deformers_grp")

            except:
                pm.sets(n="rig_deformers_grp")
                defSet = pm.PyNode("rig_deformers_grp")

            pm.sets(defSet, add=jnt)

        else:
            pm.displayWarning("Support Joint can't be added to: %s. Because is not blend joint"%x.name())


