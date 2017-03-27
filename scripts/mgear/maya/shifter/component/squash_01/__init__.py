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

import mgear.maya.primitive as pri
import mgear.maya.transform as tra
import mgear.maya.applyop as aop
import mgear.maya.attribute as att
import mgear.maya.node as nod
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

        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.normal, axis="yx", negate=self.negate)

        self.ctl_npo = pri.addTransform(self.root, self.getName("ctl_npo"), t)
        self.ctl = self.addCtl(self.ctl_npo, "base_ctl", t, self.color_ik, "square", w=1.0)

        self.ref_base = pri.addTransform(self.ctl, self.getName("ref_base"), t)

        t = tra.setMatrixPosition(t, self.guide.apos[1])
        self.ik_cns = pri.addTransform(self.ctl, self.getName("ik_cns"), t)
        self.squash_npo = pri.addTransform(self.ik_cns, self.getName("squash_npo"), t)
        self.squash_ctl = self.addCtl(self.squash_npo, "squash_ctl", t, self.color_ik, "crossarrow", w=1.0, ro=dt.Vector(1.5708,0,0))
        att.setKeyableAttributes(self.squash_ctl, ["tx", "ty", "tz"] )

        self.ref_squash = pri.addTransform(self.squash_ctl, self.getName("ref_squash"), t)

        self.div_cns = []

        div_cns = pri.addTransform(self.root, self.getName("div0_loc"))

        self.div_cns.append(div_cns)
        self.jnt_pos.append([div_cns, 0, None, False])


    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):

        # Ref
        if self.settings["ikrefarray"]:
            ref_names = self.settings["ikrefarray"].split(",")
            if len(ref_names) > 1:
                self.ikref_att = self.addAnimEnumParam("ikref", "Ik Ref", 0, self.settings["ikrefarray"].split(","))

    # =====================================================
    # OPERATORS
    # =====================================================
    ## Apply operators, constraints, expressions to the hierarchy.\n
    # In order to keep the code clean and easier to debug,
    # we shouldn't create any new object in this method.
    # @param self
    def addOperators(self):
        aop.aimCns(self.ref_base, self.squash_ctl, axis="yx", wupType=2, wupVector=[1,0,0], wupObject=self.ctl, maintainOffset=False)
        aop.aimCns(self.ref_squash, self.ctl, axis="-yx", wupType=2, wupVector=[1,0,0], wupObject=self.squash_ctl, maintainOffset=False)
        bIncrement = 1.0
        blend=0
        for i, div_cns in enumerate(self.div_cns):
            intMatrix = aop.gear_intmatrix_op(self.ref_base.attr("worldMatrix"), self.ref_squash.attr("worldMatrix"), blend)
            aop.gear_mulmatrix_op(intMatrix.attr("output"), div_cns.attr("parentInverseMatrix[0]"), div_cns)

            blend = blend+bIncrement

        d = vec.getDistance(self.guide.apos[0], self.guide.apos[1])
        dist_node = nod.createDistNode(self.squash_ctl, self.ctl)
        rootWorld_node = nod.createDecomposeMatrixNode(self.root.attr("worldMatrix"))
        div_node = nod.createDivNode(dist_node+".distance", rootWorld_node+".outputScaleX")
        div_node = nod.createDivNode(div_node+".outputX", self.ctl.scaleX)
        div_node = nod.createDivNode(div_node+".outputX", d)
        rev_node = nod.createReverseNode(div_node+".outputX")
        add_node = pm.createNode("plusMinusAverage")


        add_node.input1D[0].set(1.0)
        rev_node.outputX >> add_node.input1D[1]

        div_node.outputX >> self.ref_base.scaleY
        add_node.output1D >> self.ref_base.scaleX
        add_node.output1D >> self.ref_base.scaleZ


    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.ref_base
        self.relatives["squash"] = self.ref_squash

        for i in range(0, len(self.div_cns)-1):
            self.relatives["%s_loc"%i] = self.div_cns[i+1]
            self.jointRelatives["%s_loc"%i] = i+1
        self.relatives["%s_loc"%(len(self.div_cns)-1)] = self.div_cns[-1]
        self.jointRelatives["%s_loc"%(len(self.div_cns)-1)] = len(self.div_cns)-1

    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.connect_standardWithSimpleIkRef()
