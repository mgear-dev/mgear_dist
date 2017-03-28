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

        ctlSize = vec.getDistance(self.guide.apos[0], self.guide.apos[1])/3.0

        t_root = self.guide.tra["root"]
        t_root = tra.setMatrixScale(t_root)

        self.ik_cns = pri.addTransform(self.root, self.getName("ik_cns"), t_root)

        t = tra.setMatrixPosition(t_root, self.guide.pos["top"])

        self.top_npo = pri.addTransform(self.ik_cns, self.getName("top_npo"), t)
        self.top_ctl = self.addCtl(self.top_npo, "top_ctl", t, self.color_ik, "arrow", w=ctlSize,  ro=dt.Vector(1.5708,1.5708,0))
        att.setKeyableAttributes(self.top_ctl, ["ty"] )

        t = tra.setMatrixPosition(t_root, self.guide.pos["bottom"])
        self.bottom_npo = pri.addTransform(self.top_npo, self.getName("bottom_npo"), t)
        self.bottom_npo.rz.set(180)
        self.bottom_ctl = self.addCtl(self.bottom_npo, "bottom_ctl", t, self.color_ik, "arrow", w=ctlSize,  ro=dt.Vector(1.5708,1.5708,0))
        self.bottom_ctl.rz.set(0)
        att.setKeyableAttributes(self.bottom_ctl, ["ty"] )
        self.bottom_pivot = pri.addTransform(self.bottom_npo, self.getName("bottom_pivot"), tra.getTransform(self.top_ctl))

        t = tra.setMatrixPosition(t_root, self.guide.pos["ext"])
        self.ext_npo = pri.addTransform(self.bottom_pivot, self.getName("ext_npo"), t)
        self.ext_npo.rz.set(-90)
        self.ext_ctl = self.addCtl(self.ext_npo, "ext_ctl", t, self.color_ik, "arrow", w=ctlSize,  ro=dt.Vector(1.5708,1.5708,0))
        self.ext_ctl.rz.set(0)
        att.setKeyableAttributes(self.ext_ctl, ["ty"] )

        t = tra.setMatrixPosition(t_root, self.guide.pos["int"])
        self.int_npo = pri.addTransform(self.ext_npo, self.getName("int_npo"), t)
        self.int_npo.rz.set(180)
        self.int_ctl = self.addCtl(self.int_npo, "int_ctl", t, self.color_ik, "arrow", w=ctlSize,  ro=dt.Vector(1.5708,1.5708,0))
        self.int_ctl.rz.set(0)
        att.setKeyableAttributes(self.int_ctl, ["ty"] )
        self.int_pivot = pri.addTransform(self.int_npo, self.getName("int_pivot"), tra.getTransform(self.ext_ctl))

        self.anchor = pri.addTransform(self.int_pivot, self.getName("int_npo"), tra.getTransform(self.ik_cns))


        if self.settings["joint"]:
            self.jnt_pos.append([self.anchor, 0, None, False])


    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):

        self.volume_att = self.addAnimParam("volume", "Volume", "double", 1, 0, 1)

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
        pairs = [   [self.top_ctl, self.bottom_npo, 1, 2],
                    [self.bottom_ctl, self.bottom_pivot, 2, 1],
                    [self.ext_ctl, self.int_npo, 3, 4],
                    [self.int_ctl, self.int_pivot, 4, 3]]

        for pair in pairs:
            d = vec.getDistance(self.guide.apos[pair[2]], self.guide.apos[pair[3]])
            print d
            sum_node = nod.createPlusMinusAverage1D([d, pair[0].ty])
            mul_node = nod.createMulNode(pair[0].ty, self.volume_att)
            sum2_node = nod.createPlusMinusAverage1D([d, mul_node.outputX])
            mul2_node = nod.createDivNode([sum2_node.output1D, sum_node.output1D, sum2_node.output1D], [d, d, d])
            sum3D_node = pm.createNode("plusMinusAverage")
            sum3D_node.attr("operation").set(2)
            sum3D_node.input3D[0].input3Dx.set(2)
            sum3D_node.input3D[0].input3Dz.set(2)
            mul2_node.outputX >> sum3D_node.input3D[1].input3Dx
            mul2_node.outputZ >> sum3D_node.input3D[1].input3Dz
            sum3D_node.output3D.output3Dx >> pair[1].sx
            mul2_node.outputY >> pair[1].sy
            sum3D_node.output3D.output3Dx >> pair[1].sz




    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.anchor
        self.relatives["top"] = self.anchor
        self.relatives["bottom"] = self.anchor
        self.relatives["int"] = self.anchor
        self.relatives["ext"] = self.anchor
        if self.settings["joint"]:
            self.jointRelatives["root"] = 0
            self.jointRelatives["top"] = 0
            self.jointRelatives["bottom"] = 0
            self.jointRelatives["int"] = 0
            self.jointRelatives["ext"] = 0

    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.connect_standardWithSimpleIkRef()
