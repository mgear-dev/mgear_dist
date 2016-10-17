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
import pymel.core.datatypes as dt

# mgear
from mgear.maya.shifter.component import MainComponent

import mgear.maya.primitive as pri
import mgear.maya.transform as tra

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
        self.ctl_npo = pri.addTransform(self.root, self.getName("ctl_npo"), t)
        self.ctl = self.addCtl(self.ctl_npo, "ctl", t, self.color_fk, "cube", w=self.length0, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length0*self.n_factor,0,0))
        t = tra.getTransformFromPos(self.guide.apos[1])
        self.orbit_ref1 = pri.addTransform(self.ctl, self.getName("orbit_ref1"), t)
        self.orbit_ref2 = pri.addTransform(self.root, self.getName("orbit_ref2"), t)

        self.orbit_cns = pri.addTransform(self.ctl, self.getName("orbit_cns"), t)

        self.orbit_npo = pri.addTransform(self.orbit_cns, self.getName("orbit_npo"), t)
        self.orbit_ctl = self.addCtl(self.orbit_npo, "orbit_ctl", t, self.color_fk, "sphere", w=self.length0/4)

        self.jnt_pos.append([self.ctl, "shoulder"])
    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):

        # Ref
        if self.settings["refArray"]:
            ref_names = self.settings["refArray"].split(",")
            if len(ref_names) >= 1:
                self.ref_att = self.addAnimEnumParam("rotRef", "Ref", 0, self.settings["refArray"].split(","))

    # =====================================================
    # OPERATORS
    # =====================================================
    ## Apply operators, constraints, expressions to the hierarchy.\n
    # In order to keep the code clean and easier to debug,
    # we shouldn't create any new object in this method.
    # @param self
    def addOperators(self):
        return

    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.ctl
        self.relatives["tip"] = self.orbit_ctl

        self.jointRelatives["root"] = 0
        self.jointRelatives["tip"] = 0

    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.parent.addChild(self.root)
        self.connect_standardWithRotRef(self.settings["refArray"], self.orbit_cns )