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
import mgear.maya.attribute as att

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

        #jaw control
        t = tra.getTransformFromPos(self.guide.pos["jaw"])
        self.ctl_npo = pri.addTransform(self.root, self.getName("ctl_npo"), t)
        self.jaw_ctl = self.addCtl(self.ctl_npo, "jaw_ctl", t, self.color_fk, "circle", w=1, ro=dt.Vector([1.5708,0,0]))
        att.setKeyableAttributes(self.jaw_ctl, ["tx", "ty", "tz", "rz"])

        #mouth center
        t = tra.getTransformFromPos(self.guide.pos["rotcenter"])
        self.mouthCenter_npo = pri.addTransform(self.root, self.getName("mouthCenter_npo"), t)
        self.mouthCenter = pri.addTransform(self.mouthCenter_npo, self.getName("mouthCenter"), t)

        #jaw "UPPER"
        t = tra.getTransformFromPos(self.guide.pos["root"])
        self.jawUp_npo = pri.addTransform(self.mouthCenter, self.getName("jawUpper_npo"), t)
        self.jawUp_pos = pri.addTransform(self.jawUp_npo, self.getName("jawUpper_pos"), t)
        self.jawUp_rot = pri.addTransform(self.jawUp_pos, self.getName("jawUpper_rot"), t)

        #jaw "LOWER"
        t = tra.getTransformFromPos(self.guide.pos["root"])
        self.jawLow_npo = pri.addTransform(self.mouthCenter, self.getName("jaw_npo"), t)
        self.jawLow_pos = pri.addTransform(self.jawLow_npo, self.getName("jawLow_pos"), t)
        self.jawLow_rot = pri.addTransform(self.jawLow_pos, self.getName("jawLow_rot"), t)

        #lips
        t = tra.getTransformFromPos(self.guide.pos["lipup"])
        self.lipup_npo = pri.addTransform(self.jawUp_rot, self.getName("lipup_npo"), t)
        self.lipup_ctl = self.addCtl(self.lipup_npo, "lipup_ctl", t, self.color_fk, "square", d=.15, w=1, ro=dt.Vector([1.5708,0,0]))

        t = tra.getTransformFromPos(self.guide.pos["liplow"])
        self.liplow_npo = pri.addTransform(self.jawLow_rot, self.getName("liplow_npo"), t)
        self.liplow_ctl = self.addCtl(self.liplow_npo, "liplow_ctl", t, self.color_fk, "square", d=.15, w=1, ro=dt.Vector([1.5708,0,0]))

        #teeth
        t = tra.getTransformFromPos(self.guide.pos["lipup"])
        self.teethup_npo = pri.addTransform(self.jawUp_rot, self.getName("teethup_npo"), t)
        self.teethup_ctl = self.addCtl(self.teethup_npo, "teethup_ctl", t, self.color_ik, "square", d=.1, w=.7, ro=dt.Vector([1.5708,0,0]))

        t = tra.getTransformFromPos(self.guide.pos["liplow"])
        self.teethlow_npo = pri.addTransform(self.jawLow_rot, self.getName("teethlow_npo"), t)
        self.teethlow_ctl = self.addCtl(self.teethlow_npo, "teethlow_ctl", t, self.color_ik, "square", d=.1, w=.7, ro=dt.Vector([1.5708,0,0]))


        self.jnt_pos.append([self.jawLow_rot, "jaw", "parent_relative_jnt", False])
        self.jnt_pos.append([self.lipup_ctl, "lipup", "parent_relative_jnt", False])
        self.jnt_pos.append([self.liplow_ctl, "liplow", "jaw", False]) # relative 0 is the jaw jnt
        self.jnt_pos.append([self.teethup_ctl, "teethup", "parent_relative_jnt", False])
        self.jnt_pos.append([self.teethlow_ctl, "teethlow", "jaw", False])



    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):

        self.sideRotation_att = self.addAnimParam("siderot", "Sides Rotation", "double", 20, 0, 100)
        self.vertRotation_att = self.addAnimParam("vertrot", "Vertical Rotation", "double", 40, 0, 100)
        self.frontalTranslation_att = self.addAnimParam("fronttrans", "Frontal Translation", "double", 1, 0, 1)
        self.verticalTranslation_att = self.addAnimParam("verttrans", "Vertical Translation", "double", 0.2, 0, 1)
        self.followLips_att = self.addAnimParam("floowlips", "FollowLips", "double", 0.05, 0, 1)
        self.lipsAlignSpeed_att = self.addAnimParam("lipsAlignSpeed", "Lips Align Speed", "double", 10, 0, 100)



    # =====================================================
    # OPERATORS
    # =====================================================
    ## Apply operators, constraints, expressions to the hierarchy.\n
    # In order to keep the code clean and easier to debug,
    # we shouldn't create any new object in this method.
    # @param self
    def addOperators(self):

        # mouth center rotation
        pm.connectAttr(self.jaw_ctl+".rotateZ", self.mouthCenter+".rotateZ")

        #Node Creation ########

        # Mut Div nodes
        md_node_1 = pm.createNode("multiplyDivide")
        md_node_2 = pm.createNode("multiplyDivide")
        md_node_3 = pm.createNode("multiplyDivide")
        md_node_4 = pm.createNode("multiplyDivide")
        md_node_5 = pm.createNode("multiplyDivide")
        md_node_6 = pm.createNode("multiplyDivide")
        md_node_7 = pm.createNode("multiplyDivide")
        md_node_8 = pm.createNode("multiplyDivide")

        # Clamp node
        clamp_node = pm.createNode("clamp")

        # Condition nodes
        cond_node_1 = pm.createNode("condition")
        cond_node_2 = pm.createNode("condition")
        cond_node_3 = pm.createNode("condition")

        # Blend nodes
        blend_node_1 =  pm.createNode("blendColors")
        blend_node_2 =  pm.createNode("blendColors")

        #Node Conexions ########

        # md_node_1
        pm.connectAttr(self.jaw_ctl+".translateY", md_node_1+".input1X")
        pm.connectAttr(self.vertRotation_att, md_node_1+".input2X")

        # md_node_2
        pm.connectAttr(self.jaw_ctl+".translateX", md_node_2+".input1X")
        pm.connectAttr(self.sideRotation_att, md_node_2+".input2X")

        # md_node_3
        pm.connectAttr(self.jaw_ctl+".translateY", md_node_3+".input1X")
        pm.connectAttr(self.lipsAlignSpeed_att, md_node_3+".input2X")

        # md_node_4
        pm.connectAttr(self.jaw_ctl+".translateY", md_node_4+".input1X")
        pm.connectAttr(self.verticalTranslation_att, md_node_4+".input2X")

        # md_node_5
        pm.connectAttr(self.jaw_ctl+".translateZ", md_node_5+".input1X")
        pm.connectAttr(self.frontalTranslation_att, md_node_5+".input2X")

        # md_node_6
        pm.connectAttr( md_node_1+".outputX", md_node_6+".input1X")
        pm.setAttr( md_node_6+".input2X", -1.0)

        # md_node_7
        pm.connectAttr(md_node_5+".outputX", md_node_7+".input1X")
        pm.connectAttr(clamp_node+".outputR", md_node_7+".input2X")

        # md_node_8
        pm.connectAttr(cond_node_2+".outColorR", md_node_8+".input1X")
        pm.connectAttr(clamp_node+".outputR", md_node_8+".input2X")

        # clamp_node
        pm.connectAttr(md_node_3+".outputX", clamp_node+".inputR")
        pm.setAttr( clamp_node+".maxR", 1.0)

        # cond_node_1
        pm.connectAttr(md_node_6+".outputX", cond_node_1+".colorIfTrueR")
        pm.connectAttr(md_node_6+".outputX", cond_node_1+".firstTerm")
        pm.setAttr( cond_node_1+".operation", 4)
        pm.setAttr( cond_node_1+".colorIfFalseR", 0)

        # cond_node_2
        pm.connectAttr(md_node_2+".outputX", cond_node_2+".colorIfFalseR")
        pm.connectAttr(md_node_6+".outputX", cond_node_2+".firstTerm")
        pm.setAttr( cond_node_2+".operation", 2)

        # cond_node_3
        pm.connectAttr(md_node_4+".outputX", cond_node_3+".colorIfTrueR")
        pm.connectAttr(md_node_4+".outputX", cond_node_3+".firstTerm")
        pm.setAttr( cond_node_3+".operation", 4)
        pm.setAttr( cond_node_3+".colorIfFalseR", 0)

        # blend_node_1
        pm.connectAttr(self.followLips_att, blend_node_1+".blender")
        pm.connectAttr(md_node_6+".outputX", blend_node_1+".color1R")
        pm.connectAttr(md_node_2+".outputX", blend_node_1+".color1G")
        pm.connectAttr(cond_node_1+".outColorR", blend_node_1+".color2R")
        pm.connectAttr(md_node_8+".outputX", blend_node_1+".color2G")

        # blend_node_2
        pm.connectAttr(self.followLips_att, blend_node_2+".blender")
        pm.connectAttr(cond_node_3+".outColorR", blend_node_2+".color1R")
        pm.connectAttr(md_node_5+".outputX", blend_node_2+".color1G")
        pm.connectAttr(md_node_7+".outputX", blend_node_2+".color2G")

        # inputs to transforms

        pm.connectAttr(md_node_6+".outputX", self.jawLow_rot+".rotateX")
        pm.connectAttr(md_node_2+".outputX", self.jawLow_rot+".rotateY")

        pm.connectAttr(blend_node_1+".outputR", self.jawUp_rot+".rotateX")
        pm.connectAttr(blend_node_1+".outputG", self.jawUp_rot+".rotateY")

        pm.connectAttr(cond_node_3+".outColorR", self.jawLow_pos+".translateY")
        pm.connectAttr(md_node_5+".outputX", self.jawLow_pos+".translateZ")

        pm.connectAttr(blend_node_2+".outputR", self.jawUp_pos+".translateY")
        pm.connectAttr(blend_node_2+".outputG", self.jawUp_pos+".translateZ")




    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.root
        self.relatives["jaw"] = self.jawLow_rot

        self.jointRelatives["root"] = 0
        self.jointRelatives["jaw"] = 0
