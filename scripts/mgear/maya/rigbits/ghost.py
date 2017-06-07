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

#maya
import pymel.core as pm

#mgear
import mgear.maya.primitive as pri
import mgear.maya.node as nod

#rigbits
import mgear.maya.rigbits as rigbits


def createGhostCtl(ctl, parent=None, connect=True):
    """
    Create a duplicate of the control and rename the original with _ghost. Later connect the local transforms and the
    Channels.
    This is useful to connect local rig controls with the final rig control.

    Args:
        ctl (dagNode): Original Control to duplicate
        parent (dagNode): Parent for the new created control

    Returns:
       pyNode: The new created control

    """
    if  isinstance(ctl, basestring):
        ctl = pm.PyNode(ctl)
    if parent:
        if  isinstance(parent, basestring):
            parent = pm.PyNode(parent)
    grps = ctl.listConnections(t="objectSet")
    for grp in grps:
        grp.remove(ctl)
    oName = ctl.name()
    pm.rename(ctl, oName + "_ghost")
    newCtl =   pm.duplicate(ctl, po=True)[0]
    pm.rename(newCtl, oName)
    source2 = pm.duplicate(ctl)[0]
    for shape in  source2.getShapes():
        pm.parent(shape, newCtl, r=True, s=True)
        pm.rename( shape, newCtl.name() + "Shape" )
        pm.parent(shape, newCtl, r=True, s=True)
    pm.delete(source2)
    if parent:
        pm.parent(newCtl, parent)
        oTra = pm.createNode("transform", n= newCtl.name() + "_npo", p=parent, ss=True)
        oTra.setMatrix(ctl.getParent().getMatrix(worldSpace=True), worldSpace=True)
        pm.parent(newCtl, oTra)
    if connect:
        rigbits.connectLocalTransform([newCtl, ctl])
        rigbits.connectUserDefinedChannels(newCtl, ctl)
    for grp in grps:
        grp.add(newCtl)
    return newCtl


def createDoritoGhostCtl(ctl, parent=None):
    """
    Create a duplicate of the dorito/tweak and rename the original with _ghost. Later connect the local transforms and the
    Channels.
    This is useful to connect local rig controls with the final rig control.

    Args:
        ctl (dagNode): Original Control to duplicate
        parent (dagNode): Parent for the new created control

    """
    if  isinstance(ctl, basestring):
        ctl = pm.PyNode(ctl)
    if parent:
        if  isinstance(parent, basestring):
            parent = pm.PyNode(parent)
    doritoCtl = createGhostCtl(ctl, parent)
    doritoParent = doritoCtl.getParent()
    ghostBaseParent = ctl.getParent(2)
    oTra = pm.createNode("transform", n= ghostBaseParent.name() + "_npo", p=ghostBaseParent.getParent(), ss=True)
    oTra.setTransformation(ghostBaseParent.getMatrix())
    pm.parent(ghostBaseParent, oTra)
    oTra = pm.createNode("transform", n= doritoParent.name() + "_npo", p=doritoParent.getParent(), ss=True)
    oTra.setTransformation(doritoParent.getMatrix())
    pm.parent(doritoParent, oTra)

    rigbits.connectLocalTransform(ghostBaseParent, doritoParent)
    rigbits.connectUseDefinedChannels(ghostBaseParent, doritoParent)


def ghostSlider(ghostControls, surface, sliderParent):

    if  not isinstance(ghostControls, list):
        ghostControls = [ghostControls]

    #Seleccionamos los controles Ghost que queremos mover sobre el surface

    surfaceShape = surface.getShape()

    for ctlGhost in ghostControls:
        ctl = pm.listConnections(ctlGhost, t="transform")[-1]
        t = ctl.getMatrix(worldSpace=True)

        gDriver = pri.addTransform(ctlGhost.getParent(), ctl.name()+"_slideDriver", t)

        try:
            pm.connectAttr(ctl + ".translate", gDriver + ".translate")
            pm.disconnectAttr(ctl + ".translate", ctlGhost + ".translate")
        except:
            pass

        try:
            pm.connectAttr(ctl + ".scale", gDriver + ".scale")
            pm.disconnectAttr(ctl + ".scale", ctlGhost + ".scale")
        except:
            pass

        try:
            pm.connectAttr(ctl + ".rotate", gDriver + ".rotate")
            pm.disconnectAttr(ctl + ".rotate", ctlGhost + ".rotate")
        except:
            pass


        oParent = ctlGhost.getParent()
        npoName = "_".join(ctlGhost.name().split("_")[:-1]) +  "_npo"
        oTra = pm.PyNode(pm.createNode("transform", n=npoName, p=oParent, ss=True))
        oTra.setTransformation(ctlGhost.getMatrix())
        pm.parent(ctlGhost, oTra)

        slider = pri.addTransform(sliderParent, ctl.name()+"_slideDriven", t)

        #connexion

        dm_node = nod.createDecomposeMatrixNode(gDriver.attr("worldMatrix[0]"))
        cps_node = pm.createNode("closestPointOnSurface")
        dm_node.attr("outputTranslate") >> cps_node.attr("inPosition")
        surfaceShape.attr("worldSpace[0]") >> cps_node.attr("inputSurface")
        cps_node.attr("position") >> slider.attr("translate")

        pm.normalConstraint(surfaceShape, slider, aimVector=[0,0,1] , upVector=[0,1,0], worldUpType="objectrotation", worldUpVector=[0,1,0], worldUpObject=gDriver)

        pm.parent(ctlGhost.getParent(), slider)
