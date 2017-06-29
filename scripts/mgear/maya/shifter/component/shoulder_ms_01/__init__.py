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
# Maya
import pymel.core as pm
import pymel.core.datatypes as dt

# mgear
from mgear.maya.shifter.component import MainComponent
import mgear.maya.attribute as att
import mgear.maya.primitive as pri
import mgear.maya.transform as tra
import mgear.maya.applyop as aop
import mgear.maya.vector as vec

##########################################################
# COMPONENT
##########################################################
## The main component class.
class Component(MainComponent):

    # =====================================================
    # OBJECTS
    # =====================================================
    ## Add all the objects needed to create the component.
    # @param self
    def addObjects(self):

        self.normal = self.guide.blades["blade"].z*-1
        self.binormal = self.guide.blades["blade"].x

        self.length0 = vec.getDistance(self.guide.apos[0], self.guide.apos[1])

        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.normal, axis="xy", negate=self.negate)
        self.npo = pri.addTransform(self.root, self.getName("npo"), t)
        self.ctl = self.addCtl(self.npo, "ctl", t, self.color_fk, "cube", w=self.length0, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length0*self.n_factor,0,0), tp=self.parentCtlTag)
        self.mtx = pri.addTransform(self.npo, self.getName("mtx"), t)

        t1 = tra.setMatrixPosition(t,self.guide.apos[1])
        t2 = tra.getInterpolateTransformMatrix(t, t1, blend=0.98 )
        self.loc = pri.addTransform(self.mtx, self.getName("loc"), t2)

        self.end = pri.addTransform(self.ctl, self.getName("end"), t1)

        self.jnt_pos.append([self.mtx, "root"])
        self.jnt_pos.append([self.loc, 'end'])

        att.setKeyableAttributes(self.ctl)
        att.setInvertMirror(self.ctl, ["tx","ty", "tz"])

    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):
        return


    # =====================================================
    # OPERATORS
    # =====================================================
    ## Apply operators, constraints, expressions to the hierarchy.\n
    # In order to keep the code clean and easier to debug,
    # we shouldn't create any new object in this method.
    # @param self
    def addOperators(self):
        if self.negate:
            node = aop.aimCns(self.mtx, self.end, axis="-xy", wupType=4, wupVector=[0,1,0], wupObject=self.mtx, maintainOffset=False)
        else:
            node = aop.aimCns(self.mtx, self.end, axis="xy", wupType=4, wupVector=[0,1,0], wupObject=self.mtx, maintainOffset=False)
        # position constrint loc to ref
        node = aop.gear_mulmatrix_op(self.end.attr("worldMatrix"), self.loc.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pb_node = pm.createNode("pairBlend")
        # move back a little bit to avoid overlapping with limb jts
        pm.setAttr(pb_node+".weight", 0.98)
        pm.connectAttr(dm_node+".outputTranslate", pb_node+".inTranslate2")
        pm.connectAttr(pb_node+".outTranslate", self.loc.attr("translate"))
        return


    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.root
        self.relatives["tip"] = self.loc

        self.controlRelatives["root"] = self.ctl
        self.controlRelatives["tip"] = self.ctl


        self.jointRelatives["root"] = 0
        self.jointRelatives["tip"] = 1

    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.parent.addChild(self.root)
