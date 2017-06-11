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

# mgear
from mgear.maya.shifter.component import MainComponent

import mgear.maya.primitive as pri
import mgear.maya.transform as tra
import mgear.maya.applyop as aop

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

        t = tra.getTransformFromPos(self.guide.pos["root"])
        self.eyeOver_npo = pri.addTransform(self.root, self.getName("eyeOver_npo"), t)
        self.eyeOver_ctl = self.addCtl(self.eyeOver_npo, "Over_ctl", t, self.color_fk, "sphere", w=1)
        self.eye_npo = pri.addTransform(self.root, self.getName("eye_npo"), t)
        self.eyeFK_ctl = self.addCtl(self.eye_npo, "fk_ctl", t, self.color_fk, "arrow", w=1)
        # sq st controls
        # self.sqUp_ctl = self.addCtl(self.root, "squashUp_ctl", t, self.color_ik, "arrow", w=.1)
        # self.sqLow_ctl = self.addCtl(self.root, "squashDown_ctl", t, self.color_ik, "arrow", w=.1)

        # look at
        t = tra.getTransformFromPos(self.guide.pos["look"])
        self.ik_cns = pri.addTransform(self.root, self.getName("ik_cns"), t)
        self.eyeIK_npo = pri.addTransform(self.ik_cns, self.getName("ik_npo"), t)
        self.eyeIK_ctl = self.addCtl(self.eyeIK_npo, "ik_ctl", t, self.color_fk, "circle", w=.5)

        self.jnt_pos.append([self.eyeFK_ctl, "eye", "parent_relative_jnt"])
        self.jnt_pos.append([self.eyeOver_ctl, "eyeOver", "parent_relative_jnt", False])

        #Envelopes for lattice
        # self.jnt_pos.append([self.sqUp_ctl, "LatticeSqUp", "parent_relative_jnt"])
        # self.jnt_pos.append([self.sqLow_ctl, "LatticeSqLow", "parent_relative_jnt"])


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

        upvDir = self.settings["upVectorDirection"]
        if upvDir == 0:
            upvVec = [1,0,0]
        elif upvDir == 1:
            upvVec = [0,1,0]
        else:
            upvVec = [0,0,1]

        cns = aop.aimCns(self.eye_npo, self.eyeIK_ctl, "zy", 2, upvVec, self.root, False)

        pm.scaleConstraint(self.eyeOver_ctl, self.eye_npo, maintainOffset=False)
        pm.pointConstraint(self.eyeOver_ctl, self.eye_npo, maintainOffset=False)


    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation between object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.eyeFK_ctl
        self.relatives["look"] = self.eyeOver_ctl

        self.jointRelatives["root"] = 0
        self.jointRelatives["look"] = 1


    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.connect_standardWithSimpleIkRef()