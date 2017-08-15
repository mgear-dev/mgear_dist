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
import mgear.maya.node as nod

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

        self.normal = self.guide.blades["blade"].z
        self.binormal = self.guide.blades["blade"].x

        # Chain of deformers -------------------------------
        self.locList = []
        self.npoList = []
        parent = self.root

        self.jointList = []
        for i, t in enumerate(tra.getChainTransform2(self.guide.apos, self.normal, self.negate)):
            lvl = pri.addTransform(parent, self.getName("%s_lvl"%i), t)
            npo = pri.addTransform(lvl, self.getName("%s_npo"%i), t)
            loc = pri.addTransform(npo, self.getName("%s_loc"%i), t)
            self.jnt_pos.append([loc, i])

            self.locList.append(loc)
            self.npoList.append(npo)
            if i == len(self.guide.apos) -1:
                ctl_npo = pri.addTransform(self.root, self.getName("ctl_npo"), t)
                self.meta_ctl = self.addCtl(ctl_npo, "ctl", t, self.color_fk, "cube", w=self.size*.5, h=self.size*.5, d=self.size*.5, tp=self.parentCtlTag)


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
        inc = 1.0 / (len(self.guide.apos)-1)
        val = 0.0
        for i, l in enumerate(self.locList):
            blendNode = nod.createPairBlend( self.npoList[i], self.meta_ctl, blender=val)
            if self.settings["intRotation"]:
                pm.connectAttr(blendNode.attr("outRotate"), l.attr("rotate"))
            if self.settings["intTranslation"]:
                pm.connectAttr(blendNode.attr("outTranslate"), l.attr("translate"))
            if self.settings["intScale"]:
                scaleA = [self.meta_ctl.attr("sx"),self.meta_ctl.attr("sy"), self.meta_ctl.attr("sz")]
                scaleB = [self.npoList[i].attr("sx"),self.npoList[i].attr("sy"), self.npoList[i].attr("sz")]
                scaleBlend = nod.createBlendNode(scaleA, scaleB, val)
                pm.connectAttr(scaleBlend.attr("output"), l.attr("scale"))
            val += inc




    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):

        self.relatives["root"] = self.locList[0]
        self.jointRelatives["root"] = 0
        self.controlRelatives["root"] = self.meta_ctl
        for i in range(len(self.locList)-1):
            self.relatives["%s_loc"%i] = self.locList[i+1]
            self.controlRelatives["%s_loc"%i] = self.meta_ctl
            self.jointRelatives["%s_loc"%i] = i+1
