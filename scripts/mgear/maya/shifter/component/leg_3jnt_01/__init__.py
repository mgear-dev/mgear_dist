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


#############################################
# GLOBAL
#############################################
# Maya
import pymel.core as pm
import pymel.core.datatypes as dt

# mgear
from mgear.maya.shifter.component import MainComponent

import mgear.maya.primitive as pri
import mgear.maya.transform as tra
import mgear.maya.attribute as att
import mgear.maya.node as nod
import mgear.maya.vector as vec
import mgear.maya.applyop as aop
import mgear.maya.fcurve as fcu

#############################################
# COMPONENT
#############################################
class Component(MainComponent):

    def addObjects(self):

        self.setup = pri.addTransformFromPos(self.setupWS,  self.getName("WS"))
        att.lockAttribute(self.setup)

        self.WIP = self.options["mode"]

        self.normal = self.getNormalFromPos(self.guide.apos)

        self.length0 = vec.getDistance(self.guide.apos[0], self.guide.apos[1])
        self.length1 = vec.getDistance(self.guide.apos[1], self.guide.apos[2])
        self.length2 = vec.getDistance(self.guide.apos[2], self.guide.apos[3])
        self.length3 = vec.getDistance(self.guide.apos[3], self.guide.apos[4])

        # 3bones chain
        self.chain3bones = pri.add2DChain(self.setup, self.getName("chain3bones%s_jnt"), self.guide.apos[0:4], self.normal, False, self.WIP)

        # 2bones chain
        self.chain2bones = pri.add2DChain(self.setup, self.getName("chain2bones%s_jnt"), self.guide.apos[0:3], self.normal, False, self.WIP)

        # Leg chain
        self.legBones = pri.add2DChain(self.root, self.getName("legBones%s_jnt"), self.guide.apos[0:4], self.normal, False, self.WIP)

        # Leg chain FK ref
        self.legBonesFK = pri.add2DChain(self.root, self.getName("legFK%s_jnt"), self.guide.apos[0:4], self.normal, False, self.WIP)

        # Leg chain IK ref
        self.legBonesIK = pri.add2DChain(self.root, self.getName("legIK%s_jnt"), self.guide.apos[0:4], self.normal, False, self.WIP)

        # 1 bone chain for upv ref
        self.legChainUpvRef= pri.add2DChain(self.root, self.getName("legUpvRef%s_jnt"), [self.guide.apos[0],self.guide.apos[3]], self.normal, False, self.WIP)

        # mid joints
        self.mid1_jnt =  pri.addJoint(self.legBones[0], self.getName("mid1_jnt"),self.legBones[1].getMatrix(worldSpace=True), self.WIP )
        self.mid1_jnt.attr("radius").set(3)
        self.mid1_jnt.setAttr("jointOrient", 0, 0, 0)
        self.mid2_jnt =  pri.addJoint(self.legBones[1], self.getName("mid2_jnt"),self.legBones[2].getMatrix(worldSpace=True), self.WIP )
        self.mid2_jnt.attr("radius").set(3)
        self.mid2_jnt.setAttr("jointOrient", 0, 0, 0)

        # base Controlers -----------------------------------
        t = tra.getTransformFromPos(self.guide.apos[0])
        self.root_npo = pri.addTransform(self.root, self.getName("root_npo"), t)
        self.root_ctl = self.addCtl(self.root_npo, "root_ctl", t, self.color_fk, "circle", w=self.length0/6, tp=self.parentCtlTag)
        att.lockAttribute(self.root_ctl, ["sx", "sy", "sz", "v"])

        # FK Controlers -----------------------------------
        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.normal, "xz", self.negate)
        self.fk0_npo = pri.addTransform(self.root_ctl, self.getName("fk0_npo"), t)
        self.fk0_ctl = self.addCtl(self.fk0_npo, "fk0_ctl", t, self.color_fk, "cube", w=self.length0, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length0*self.n_factor,0,0), tp=self.root_ctl)
        att.setKeyableAttributes(self.fk0_ctl)

        t = tra.getTransformLookingAt(self.guide.apos[1], self.guide.apos[2], self.normal, "xz", self.negate)
        self.fk1_npo = pri.addTransform(self.fk0_ctl, self.getName("fk1_npo"), t)
        self.fk1_ctl = self.addCtl(self.fk1_npo, "fk1_ctl", t, self.color_fk, "cube", w=self.length1, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length1*self.n_factor,0,0), tp=self.fk0_ctl)
        att.setKeyableAttributes(self.fk1_ctl)

        t = tra.getTransformLookingAt(self.guide.apos[2], self.guide.apos[3], self.normal, "xz", self.negate)
        self.fk2_npo = pri.addTransform(self.fk1_ctl, self.getName("fk2_npo"), t)
        self.fk2_ctl = self.addCtl(self.fk2_npo, "fk2_ctl", t, self.color_fk, "cube", w=self.length2, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length2*self.n_factor,0,0), tp=self.fk1_ctl)
        att.setKeyableAttributes(self.fk2_ctl)

        t = tra.getTransformLookingAt(self.guide.apos[3], self.guide.apos[4], self.normal, "xz", self.negate)
        self.fk3_npo = pri.addTransform(self.fk2_ctl, self.getName("fk3_npo"), t)
        self.fk3_ctl = self.addCtl(self.fk3_npo, "fk3_ctl", t, self.color_fk, "cube", w=self.length3, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length3*self.n_factor,0,0), tp=self.fk2_ctl)
        att.setKeyableAttributes(self.fk3_ctl)


        self.fk_ctl = [self.fk0_ctl, self.fk1_ctl, self.fk2_ctl, self.fk3_ctl]

        for  x in self.fk_ctl:
            att.setInvertMirror(x, ["tx", "ty", "tz"])

        # Mid Controlers ------------------------------------
        self.knee_lvl = pri.addTransform(self.root, self.getName("knee_lvl"), tra.getTransform(self.mid1_jnt))
        self.knee_ctl = self.addCtl(self.knee_lvl, "knee_ctl", tra.getTransform(self.mid1_jnt), self.color_ik, "sphere", w=self.size*.2, tp=self.root_ctl)
        att.setInvertMirror(self.knee_ctl, ["tx", "ty", "tz"])
        att.lockAttribute(self.knee_ctl, ["sx", "sy", "sz", "v"])
        self.ankle_lvl = pri.addTransform(self.root, self.getName("ankle_lvl"), tra.getTransform(self.mid2_jnt))
        self.ankle_ctl = self.addCtl(self.ankle_lvl, "ankle_ctl", tra.getTransform(self.mid2_jnt), self.color_ik, "sphere", w=self.size*.2, tp=self.knee_ctl)
        att.setInvertMirror(self.ankle_ctl, ["tx", "ty", "tz"])
        att.lockAttribute(self.ankle_ctl, ["sx", "sy", "sz", "v"])

        # IK controls --------------------------------------------------------

        #foot IK

        if self.settings["ikOri"]:
            t = tra.getTransformLookingAt(self.guide.pos["foot"], self.guide.pos["eff"], self.x_axis, "zx", False)
        else:
            t = tra.getTransformLookingAt(self.guide.apos[3], self.guide.apos[4], self.normal, "z-x", False)

        self.ik_cns = pri.addTransform(self.root_ctl, self.getName("ik_cns"), t)
        self.ikcns_ctl = self.addCtl(self.ik_cns, "ikcns_ctl", t, self.color_ik, "null", w=self.size*.12, tp=self.ankle_ctl)
        att.setInvertMirror(self.ikcns_ctl, ["tx"])
        att.lockAttribute(self.ikcns_ctl, ["sx", "sy", "sz", "v"])

        self.ik_ctl = self.addCtl(self.ikcns_ctl, "ik_ctl", t, self.color_ik, "cube", w=self.size*.12, h=self.size*.12, d=self.size*.12, tp=self.ikcns_ctl)
        att.setKeyableAttributes(self.ik_ctl)
        att.setRotOrder(self.ik_ctl, "XZY")
        att.setInvertMirror(self.ik_ctl, ["tx", "ry", "rz"])
        att.lockAttribute(self.ik_ctl, ["sx", "sy", "sz", "v"])

        # 2 bones ik layer
        self.ik2b_ikCtl_ref = pri.addTransform(self.ik_ctl, self.getName("ik2B_A_ref"), t)
        self.ik2b_bone_ref = pri.addTransform(self.chain3bones[3], self.getName("ik2B_B_ref"), t)
        self.ik2b_blend = pri.addTransform(self.ik_ctl, self.getName("ik2B_blend"), t)

        self.roll_ctl = self.addCtl(self.ik2b_blend, "roll_ctl", t, self.color_ik, "crossarrow", w=self.length2*.5*self.n_factor, tp=self.ik_ctl)
        self.ik2b_ik_npo = pri.addTransform(self.roll_ctl, self.getName("ik2B_ik_npo"), tra.getTransform(self.chain3bones[-1]))
        self.ik2b_ik_ref = pri.addTransformFromPos(self.ik2b_ik_npo, self.getName("ik2B_ik_ref"), self.guide.pos["ankle"])
        att.lockAttribute(self.roll_ctl, ["tx", "ty", "tz", "sx", "sy", "sz", "v"])

        # upv
        v = self.guide.apos[2] - self.guide.apos[0]
        v = self.normal ^ v
        v.normalize()
        v *= self.size*.5
        v += self.guide.apos[1]

        self.upv_lvl = pri.addTransformFromPos(self.root, self.getName("upv_lvl"), v)
        self.upv_cns = pri.addTransformFromPos(self.upv_lvl, self.getName("upv_cns"), v)

        self.upv_ctl = self.addCtl(self.upv_cns, "upv_ctl", tra.getTransform(self.upv_cns), self.color_ik, "diamond", w=self.size*.12, tp=self.ik_ctl)
        att.setInvertMirror(self.upv_ctl, ["tx"])
        att.setKeyableAttributes(self.upv_ctl, ["tx", "ty", "tz"])

        # Soft IK objects 3 bones chain --------------------------------------------------------------------------------------------
        t = tra.getTransformLookingAt(self.guide.pos["root"], self.guide.pos["foot"], self.x_axis, "zx", False)
        self.aim_tra = pri.addTransform(self.root_ctl, self.getName("aimSoftIK"), t)

        t = tra.getTransformFromPos(self.guide.pos["foot"])
        self.wristSoftIK = pri.addTransform(self.aim_tra, self.getName("wristSoftIK"), t)

        self.softblendLoc = pri.addTransform(self.root, self.getName("softblendLoc"), t)

        # Soft IK objects 2 Bones chain --------------------------------------------------------------------------------------------
        t = tra.getTransformLookingAt(self.guide.pos["root"], self.guide.pos["ankle"], self.x_axis, "zx", False)
        self.aim_tra2 = pri.addTransform(self.root_ctl, self.getName("aimSoftIK2"), t)

        t = tra.getTransformFromPos(self.guide.pos["ankle"])
        self.ankleSoftIK = pri.addTransform(self.aim_tra2, self.getName("ankleSoftIK"), t)

        self.softblendLoc2 = pri.addTransform(self.root, self.getName("softblendLoc2"), t)

        # References --------------------------------------
        self.ik_ref = pri.addTransform(self.ik_ctl, self.getName("ik_ref"), tra.getTransform(self.ik_ctl))
        self.fk_ref = pri.addTransform(self.fk_ctl[3], self.getName("fk_ref"), tra.getTransform(self.ik_ctl))


        # twist references --------------------------------------
        self.rollRef = pri.add2DChain(self.root, self.getName("rollChain"), self.guide.apos[:2], self.normal, False, self.WIP)

        self.tws0_loc = pri.addTransform(self.rollRef[0], self.getName("tws0_loc"), tra.getTransform(self.legBones[0]))
        self.tws0_rot = pri.addTransform(self.tws0_loc, self.getName("tws0_rot"), tra.getTransform(self.legBones[0]))
        self.tws0_rot.setAttr("sx", .001)

        self.tws1_loc = pri.addTransform(self.mid1_jnt, self.getName("tws1_loc"), tra.getTransform(self.mid1_jnt))
        self.tws1_rot = pri.addTransform(self.tws1_loc, self.getName("tws1_rot"), tra.getTransform(self.mid1_jnt))
        self.tws1_rot.setAttr("sx", .001)

        self.tws2_loc = pri.addTransform(self.mid2_jnt, self.getName("tws2_loc"), tra.getTransform(self.mid2_jnt))
        self.tws2_rot = pri.addTransform(self.tws2_loc, self.getName("tws2_rot"), tra.getTransform(self.mid2_jnt))
        self.tws2_rot.setAttr("sx", .001)

        self.tws3_loc = pri.addTransform(self.legBones[3], self.getName("tws3_loc"), tra.getTransform(self.legBones[3]))
        self.tws3_rot = pri.addTransform(self.tws3_loc, self.getName("tws3_rot"), tra.getTransform(self.legBones[3]))
        self.tws3_rot.setAttr("sx", .001)

        # Divisions ----------------------------------------
        # We have at least one division at the start, the end and one for the knee and one ankle
        self.divisions = self.settings["div0"] + self.settings["div1"] + self.settings["div2"] + 4

        self.div_cns = []
        for i in range(self.divisions):
            div_cns = pri.addTransform(self.root_ctl, self.getName("div%s_loc" % i))
            self.div_cns.append(div_cns)
            self.jnt_pos.append([div_cns, i])

        # End reference ------------------------------------
        # To help the deformation on the foot
        self.end_ref = pri.addTransform(self.tws3_rot, self.getName("end_ref"), tra.getTransform(self.legBones[3]))
        self.jnt_pos.append([self.end_ref, 'end'])


    def addAttributes(self):

        self.blend_att = self.addAnimParam("blend", "Fk/Ik Blend", "double", self.settings["blend"], 0, 1)
        self.fullIK_attr = self.addAnimParam("fullIK", "Full 3 bones IK", "double", self.settings["full3BonesIK"],0,1)
        self.soft_attr = self.addAnimParam("softIKRange", "Soft IK Range", "double", 0.0001, 0.0001,100)
        self.softSpeed_attr = self.addAnimParam("softIKSpeed", "Soft IK Speed", "double", 2.5,1.001,10)
        self.stretch_attr = self.addAnimParam("stretch", "Stretch", "double", 0,0,1)
        self.volume_att = self.addAnimParam("volume", "Volume", "double", 1, 0, 1)
        self.roll_att = self.addAnimParam("roll", "Roll", "double", 0, -180, 180)

        self.roundnessKnee_att = self.addAnimParam("roundnessKnee", "Roundness Knee", "double", 0, 0, self.size)
        self.roundnessAnkle_att = self.addAnimParam("roundnessAnkle", "Roundness Ankle", "double", 0, 0, self.size)

        self.boneALenghtMult_attr = self.addAnimParam("boneALenMult", "Bone A Mult", "double", 1)
        self.boneBLenghtMult_attr = self.addAnimParam("boneBLenMult", "Bone B Mult", "double", 1)
        self.boneCLenghtMult_attr = self.addAnimParam("boneCLenMult", "Bone C Mult", "double", 1)
        self.boneALenght_attr = self.addAnimParam("boneALen", "Bone A Length", "double", self.length0, keyable=False)
        self.boneBLenght_attr = self.addAnimParam("boneBLen", "Bone B Length", "double", self.length1, keyable=False)
        self.boneCLenght_attr = self.addAnimParam("boneCLen", "Bone C Length", "double", self.length2, keyable=False)

        # Ref
        if self.settings["ikrefarray"]:
            ref_names = self.settings["ikrefarray"].split(",")
            if len(ref_names) > 1:
                self.ikref_att = self.addAnimEnumParam("ikref", "Ik Ref", 0, self.settings["ikrefarray"].split(","))

        if self.settings["upvrefarray"]:
            ref_names = self.settings["upvrefarray"].split(",")
            ref_names = ["Auto"] + ref_names
            if len(ref_names) > 1:
                self.upvref_att = self.addAnimEnumParam("upvref", "UpV Ref", 0, ref_names)

        # Setup ------------------------------------------
        # Eval Fcurve
        self.st_value = fcu.getFCurveValues(self.settings["st_profile"], self.divisions)
        self.sq_value = fcu.getFCurveValues(self.settings["sq_profile"], self.divisions)

        self.st_att = [ self.addSetupParam("stretch_%s"%i, "Stretch %s"%i, "double", self.st_value[i], -1, 0) for i in range(self.divisions) ]
        self.sq_att = [ self.addSetupParam("squash_%s"%i, "Squash %s"%i, "double", self.sq_value[i], 0, 1) for i in range(self.divisions) ]

        self.resample_att = self.addSetupParam("resample", "Resample", "bool", True)
        self.absolute_att = self.addSetupParam("absolute", "Absolute", "bool", False)

        defValu = self.chain3bones[1].attr("jointOrientZ").get() /2
        self.kneeFlipOffset_att = self.addSetupParam("kneeFlipOffset", "Knee Flip Offset", "double", defValu, -180, 180)
        defValu = self.chain3bones[2].attr("jointOrientZ").get()/2
        self.ankleFlipOffset_att = self.addSetupParam("ankleFlipOffset", "Ankle Flip Offset", "double", defValu, -180, 180)


    def addOperators(self):

        if self.settings["ikSolver"]:
            self.ikSolver = "ikRPsolver"
        else:
            pm.mel.eval("ikSpringSolver;")
            self.ikSolver = "ikSpringSolver"

        # 1 bone chain Upv ref =====================================================================================
        self.ikHandleUpvRef = pri.addIkHandle(self.root, self.getName("ikHandleLegChainUpvRef"), self.legChainUpvRef, "ikSCsolver")
        pm.pointConstraint(self.ik_ctl, self.ikHandleUpvRef)
        pm.parentConstraint( self.legChainUpvRef[0], self.upv_cns, mo=True)

        # mid joints =====================================================================================
        for xjnt, midJ in zip(self.legBones[1:3], [self.mid1_jnt, self.mid2_jnt]):
            nod.createPairBlend(None, xjnt, .5, 1, midJ)
            pm.connectAttr(xjnt+".translate", midJ+".translate", f=True)

        pm.parentConstraint(self.mid1_jnt, self.knee_lvl)
        pm.parentConstraint(self.mid2_jnt, self.ankle_lvl)

        #joint length multiply
        multJnt1_node = nod.createMulNode(self.boneALenght_attr, self.boneALenghtMult_attr)
        multJnt2_node = nod.createMulNode(self.boneBLenght_attr, self.boneBLenghtMult_attr)
        multJnt3_node = nod.createMulNode(self.boneCLenght_attr, self.boneCLenghtMult_attr)

        # # IK 3 bones ======================================================================================================

        self.ikHandle = pri.addIkHandle(self.softblendLoc, self.getName("ik3BonesHandle"), self.chain3bones, self.ikSolver, self.upv_ctl)

        # TwistTest
        if [round(elem, 4) for elem in tra.getTranslation(self.chain3bones[1])] != [round(elem, 4) for elem in  self.guide.apos[1]]:
            add_nodeTwist = nod.createAddNode(180.0, self.roll_att)
            pm.connectAttr(add_nodeTwist+".output", self.ikHandle.attr("twist"))
        else:
            pm.connectAttr(self.roll_att, self.ikHandle.attr("twist"))

        # stable spring solver doble rotation
        pm.pointConstraint(self.root_ctl, self.chain3bones[0])

        # softIK 3 bones operators
        aop.aimCns(self.aim_tra, self.ik_ref, axis="zx", wupType=4, wupVector=[1,0,0], wupObject=self.root_ctl, maintainOffset=False)

        plusTotalLength_node = nod.createPlusMinusAverage1D([multJnt1_node.attr("outputX"), multJnt2_node.attr("outputX"), multJnt3_node.attr("outputX")])
        subtract1_node = nod.createPlusMinusAverage1D([plusTotalLength_node.attr("output1D"), self.soft_attr],2)

        distance1_node = nod.createDistNode(self.ik_ref, self.aim_tra)
        div1_node = nod.createDivNode(1.0, self.rig.global_ctl+".sx")
        mult1_node = nod.createMulNode(distance1_node+".distance", div1_node+".outputX")
        subtract2_node = nod.createPlusMinusAverage1D([mult1_node.attr("outputX"), subtract1_node.attr("output1D")],2)
        div2_node = nod.createDivNode(subtract2_node+".output1D", self.soft_attr)
        mult2_node = nod.createMulNode(-1, div2_node+".outputX")
        power_node = nod.createPowNode( self.softSpeed_attr, mult2_node+".outputX")
        mult3_node = nod.createMulNode(self.soft_attr, power_node+".outputX")
        subtract3_node = nod.createPlusMinusAverage1D([plusTotalLength_node.attr("output1D"), mult3_node.attr("outputX")],2)

        cond1_node = nod.createConditionNode(self.soft_attr, 0, 2,subtract3_node+".output1D", plusTotalLength_node+".output1D")
        cond2_node = nod.createConditionNode(mult1_node+".outputX", subtract1_node+".output1D", 2,cond1_node+".outColorR", mult1_node+".outputX")

        pm.connectAttr(cond2_node+".outColorR", self.wristSoftIK+".tz")

        #soft blend
        pc_node = pm.pointConstraint( self.wristSoftIK, self.ik_ref, self.softblendLoc)
        nod.createReverseNode(self.stretch_attr, pc_node+".target[0].targetWeight")
        pm.connectAttr(self.stretch_attr, pc_node+".target[1].targetWeight", f=True)

        #Stretch
        distance2_node = nod.createDistNode(self.softblendLoc, self.wristSoftIK)
        mult4_node = nod.createMulNode(distance2_node+".distance", div1_node+".outputX")

        #bones
        for i, mulNode in enumerate([multJnt1_node, multJnt2_node, multJnt3_node]):
            div3_node = nod.createDivNode(mulNode+".outputX", plusTotalLength_node+".output1D")
            mult5_node = nod.createMulNode(mult4_node+".outputX", div3_node+".outputX")
            mult6_node = nod.createMulNode(self.stretch_attr, mult5_node+".outputX")
            nod.createPlusMinusAverage1D([mulNode.attr("outputX"), mult6_node.attr("outputX")],1, self.chain3bones[i+1]+".tx")



        # IK 2 bones ======================================================================================================

        self.ikHandle2 = pri.addIkHandle(self.softblendLoc2, self.getName("ik2BonesHandle"), self.chain2bones, self.ikSolver, self.upv_ctl)
        pm.connectAttr(self.roll_att, self.ikHandle2.attr("twist"))

        # stable spring solver doble rotation
        pm.pointConstraint(self.root_ctl, self.chain2bones[0])

        parentc_node = pm.parentConstraint( self.ik2b_ikCtl_ref, self.ik2b_bone_ref, self.ik2b_blend)
        nod.createReverseNode(self.fullIK_attr,  parentc_node+".target[0].targetWeight")
        pm.connectAttr(self.fullIK_attr, parentc_node+".target[1].targetWeight", f=True)

        # softIK 2 bones operators
        aop.aimCns(self.aim_tra2, self.ik2b_ik_ref, axis="zx", wupType=4, wupVector=[1,0,0], wupObject=self.root_ctl, maintainOffset=False)

        plusTotalLength_node = nod.createPlusMinusAverage1D([multJnt1_node.attr("outputX"), multJnt2_node.attr("outputX")])
        subtract1_node = nod.createPlusMinusAverage1D([plusTotalLength_node.attr("output1D"), self.soft_attr], 2)
        distance1_node = nod.createDistNode(self.ik2b_ik_ref, self.aim_tra2)
        div1_node = nod.createDivNode(1, self.rig.global_ctl+".sx")

        mult1_node = nod.createMulNode(distance1_node+".distance", div1_node+".outputX")
        subtract2_node = nod.createPlusMinusAverage1D([mult1_node.attr("outputX"), subtract1_node.attr("output1D")], 2)
        div2_node =  nod.createDivNode(subtract2_node+".output1D", self.soft_attr)
        mult2_node = nod.createMulNode(-1, div2_node+".outputX")
        power_node = nod.createPowNode(self.softSpeed_attr, mult2_node+".outputX")
        mult3_node = nod.createMulNode(self.soft_attr, power_node+".outputX" )
        subtract3_node = nod.createPlusMinusAverage1D([plusTotalLength_node.attr("output1D"),mult3_node.attr("outputX")], 2)

        cond1_node = nod.createConditionNode(self.soft_attr, 0, 2,subtract3_node+".output1D", plusTotalLength_node+".output1D")
        cond2_node = nod.createConditionNode(mult1_node+".outputX", subtract1_node+".output1D", 2,cond1_node+".outColorR", mult1_node+".outputX")

        pm.connectAttr(cond2_node+".outColorR", self.ankleSoftIK+".tz")

        #soft blend
        pc_node = pm.pointConstraint( self.ankleSoftIK, self.ik2b_ik_ref, self.softblendLoc2)
        nod.createReverseNode(self.stretch_attr, pc_node+".target[0].targetWeight")
        pm.connectAttr(self.stretch_attr, pc_node+".target[1].targetWeight", f=True)

        #Stretch
        distance2_node = nod.createDistNode(self.softblendLoc2, self.ankleSoftIK)
        mult4_node = nod.createMulNode(distance2_node+".distance", div1_node+".outputX")


        for i, mulNode in enumerate([multJnt1_node, multJnt2_node]):
            div3_node = nod.createDivNode(mulNode+".outputX", plusTotalLength_node+".output1D")
            mult5_node = nod.createMulNode(mult4_node+".outputX", div3_node+".outputX")
            mult6_node = nod.createMulNode(self.stretch_attr, mult5_node+".outputX")
            nod.createPlusMinusAverage1D([mulNode.attr("outputX"), mult6_node.attr("outputX")],1, self.chain2bones[i+1]+".tx")



        ###  IK/FK connections

        for i, x in enumerate(self.fk_ctl):
            pm.parentConstraint( x, self.legBonesFK[i], mo=True)

        for i, x in enumerate([self.chain2bones[0],self.chain2bones[1]] ):
            pm.parentConstraint( x, self.legBonesIK[i], mo=True)

        pm.pointConstraint(self.ik2b_ik_ref, self.legBonesIK[2])
        aop.aimCns(self.legBonesIK[2], self.roll_ctl, axis="xy", wupType=4, wupVector=[0,1,0], wupObject=self.legBonesIK[1], maintainOffset=False)
        pm.connectAttr( self.chain3bones[-1].attr("tx"), self.legBonesIK[-1].attr("tx"))
        # foot twist roll
        pm.orientConstraint(self.ik_ref, self.legBonesIK[-1], mo=True)

        nod.createMulNode(-1, self.chain3bones[-1].attr("tx"), self.ik2b_ik_ref.attr("tx"))

        for i, x in enumerate(self.legBones):
            nod.createPairBlend(self.legBonesFK[i], self.legBonesIK[i], self.blend_att, 1, x)


        # Twist references ----------------------------------------

        self.ikhArmRef, self.tmpCrv = aop.splineIK(self.getName("legRollRef"), self.rollRef, parent=self.root, cParent=self.legBones[0] )

        initRound = .001
        multVal = 1

        multTangent_node = nod.createMulNode(self.roundnessKnee_att, multVal)
        add_node = nod.createAddNode(multTangent_node+".outputX", initRound)
        pm.connectAttr(add_node+".output", self.tws1_rot.attr("sx"))
        for x in ["translate"]:
            pm.connectAttr(self.knee_ctl.attr(x), self.tws1_loc.attr(x))
        for x in "xy":
            pm.connectAttr(self.knee_ctl.attr("r"+x), self.tws1_loc.attr("r"+x))

        multTangent_node = nod.createMulNode(self.roundnessAnkle_att, multVal)
        add_node = nod.createAddNode(multTangent_node+".outputX", initRound)
        pm.connectAttr(add_node+".output", self.tws2_rot.attr("sx"))
        for x in ["translate"]:
            pm.connectAttr(self.ankle_ctl.attr(x), self.tws2_loc.attr(x))
        for x in "xy":
            pm.connectAttr(self.ankle_ctl.attr("r"+x), self.tws2_loc.attr("r"+x))


        # Volume -------------------------------------------
        distA_node = nod.createDistNode(self.tws0_loc, self.tws1_loc)
        distB_node = nod.createDistNode(self.tws1_loc, self.tws2_loc)
        distC_node = nod.createDistNode(self.tws2_loc, self.tws3_loc)
        add_node = nod.createAddNode(distA_node+".distance", distB_node+".distance")
        add_node2 = nod.createAddNode(distC_node+".distance", add_node+".output")
        div_node = nod.createDivNode(add_node2+".output", self.root_ctl.attr("sx"))

        #comp scaling
        dm_node = nod.createDecomposeMatrixNode(self.root.attr("worldMatrix"))

        div_node2 = nod.createDivNode(div_node+".outputX", dm_node+".outputScaleX")


        self.volDriver_att = div_node2+".outputX"

        # Flip Offset ----------------------------------------
        pm.connectAttr(self.ankleFlipOffset_att, self.tws2_loc.attr("rz"))
        pm.connectAttr(self.kneeFlipOffset_att, self.tws1_loc.attr("rz"))
        # Divisions ----------------------------------------
        # at 0 or 1 the division will follow exactly the rotation of the controler.. and we wont have this nice tangent + roll
        for i, div_cns in enumerate(self.div_cns):
            subdiv = False
            if i == len(self.div_cns)-1 or i == 0:
                subdiv = 45
            else:
                subdiv = 45

            if i < (self.settings["div0"]+1):
                perc = i*.333 / (self.settings["div0"]+1.0)

            elif i < (self.settings["div0"] + self.settings["div1"]+2):
                perc = i*.333 / (self.settings["div0"]+1.0)
            else:
                perc = .5 + (i-self.settings["div0"]-3.0)*.5 / (self.settings["div1"]+1.0)

            if i < (self.settings["div0"]+2):
                perc = i*.333 / (self.settings["div0"]+1.0)

            elif i < (self.settings["div0"] + self.settings["div1"]+3):
                perc = .333 + (i-self.settings["div0"]-1)*.333 / (self.settings["div1"]+1.0)
            else:
                perc = .666 + (i-self.settings["div1"]-self.settings["div0"]-2.0)*.333 / (self.settings["div2"]+1.0)

            # we neet to offset the ankle and knee point to force the bone orientation to the nex bone span
            if perc == .333:
                perc = .3338
            elif perc == .666:
                perc = .6669

            perc = max(.001, min(.999, perc))

            # Roll
            node = aop.gear_rollsplinekine_op(div_cns, [self.tws0_rot, self.tws1_rot, self.tws2_rot, self.tws3_rot], perc, subdiv)

            pm.connectAttr(self.resample_att, node+".resample")
            pm.connectAttr(self.absolute_att, node+".absolute")

            # Squash n Stretch
            node = aop.gear_squashstretch2_op(div_cns, None, pm.getAttr(self.volDriver_att), "x")
            pm.connectAttr(self.volume_att, node+".blend")
            pm.connectAttr(self.volDriver_att, node+".driver")
            pm.connectAttr(self.st_att[i], node+".stretch")
            pm.connectAttr(self.sq_att[i], node+".squash")


        # Visibilities -------------------------------------
        # fk
        fkvis_node = nod.createReverseNode(self.blend_att)
        for ctrl in self.fk_ctl:
            for shp in ctrl.getShapes():
                pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))
        # ik
        for ctrl in [self.ik_ctl, self.roll_ctl]:
            for shp in ctrl.getShapes():
                pm.connectAttr(self.blend_att, shp.attr("visibility"))

        # setup leg node scale compensate
        pm.connectAttr(self.rig.global_ctl+".scale", self.setup+".scale")


        return
    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    def setRelation(self):
        self.relatives["root"] = self.legBones[0]
        self.relatives["knee"] = self.legBones[1]
        self.relatives["ankle"] = self.legBones[2]
        self.relatives["foot"] = self.legBones[3]
        self.relatives["eff"] = self.legBones[3]

        self.controlRelatives["root"] = self.fk0_ctl
        self.controlRelatives["knee"] = self.fk1_ctl
        self.controlRelatives["ankle"] = self.fk2_ctl
        self.controlRelatives["foot"] = self.ik_ctl
        self.controlRelatives["eff"] = self.fk3_ctl

        self.jointRelatives["root"] = 0
        self.jointRelatives["knee"] = self.settings["div0"] + 2
        self.jointRelatives["ankle"] = len(self.div_cns)-1
        self.jointRelatives["foot"] = len(self.div_cns)
        self.jointRelatives["eff"] =len(self.div_cns)

    ## standard connection definition.
    def connect_standard(self):
        self.parent.addChild(self.root)

        # Set the Ik Reference
        self.connectRef(self.settings["ikrefarray"], self.ik_cns)
        if self.settings["upvrefarray"]:
            self.connectRef("Auto,"+self.settings["upvrefarray"], self.upv_cns, True)
