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

import mgear.maya.rigbits as rigbits


def createGhostCtl(ctl, parent=None):
    if  isinstance(ctl, basestring):
        ctl = pm.PyNode(ctl)
    if parent:
        if  isinstance(parent, basestring):
            parent = pm.PyNode(parent)

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
        oTra.setTransformation(newCtl.getMatrix())
        pm.parent(newCtl, oTra)

    rigbits.connectLocalTransform(newCtl, ctl)

    return newCtl


def createDoritoGhostCtl(ctl, parent=None):
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