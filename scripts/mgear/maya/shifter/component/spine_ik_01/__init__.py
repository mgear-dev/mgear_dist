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
import mgear.maya.curve as cur
import mgear.maya.fcurve as fcu

#############################################
# COMPONENT
#############################################
class Component(MainComponent):

    def addObjects(self):

        # Auto bend with position controls  ------------------------------------
        if self.settings["autoBend"]:
            self.autoBendChain= pri.add2DChain(self.root, self.getName("autoBend%s_jnt"), [self.guide.apos[0],self.guide.apos[1]], self.guide.blades["blade"].z*-1, False, True)
            for j in self.autoBendChain:
                j.drawStyle.set(2)

        # Ik Controlers ------------------------------------
        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.guide.blades["blade"].z*-1, "yx", self.negate)
        self.ik0_npo = pri.addTransform(self.root, self.getName("ik0_npo"), t)
        self.ik0_ctl = self.addCtl(self.ik0_npo, "ik0_ctl", t, self.color_ik, "compas", w=self.size, tp=self.parentCtlTag)
        att.setKeyableAttributes(self.ik0_ctl, self.tr_params)
        att.setRotOrder(self.ik0_ctl, "ZXY")
        att.setInvertMirror(self.ik0_ctl, ["tx", "ry", "rz"])

        t = tra.setMatrixPosition(t, self.guide.apos[1])
        if self.settings["autoBend"]:
            self.autoBend_npo = pri.addTransform(self.root, self.getName("spinePosition_npo"), t)
            self.autoBend_ctl = self.addCtl(self.autoBend_npo, "spinePosition_ctl", t, self.color_ik, "square", w=self.size, tp=self.parentCtlTag)
            att.setKeyableAttributes(self.autoBend_ctl, ["tx", "ty", "tz", "ry"])
            att.setInvertMirror(self.autoBend_ctl, ["tx", "ry"])

            self.ik1_npo = pri.addTransform(self.autoBendChain[0], self.getName("ik1_npo"), t)
            self.ik1autoRot_lvl = pri.addTransform(self.ik1_npo, self.getName("ik1autoRot_lvl"), t)
            self.ik1_ctl = self.addCtl(self.ik1autoRot_lvl, "ik1_ctl", t, self.color_ik, "compas", w=self.size, tp=self.autoBend_ctl)
        else:
            t = tra.setMatrixPosition(t, self.guide.apos[1])
            self.ik1_npo = pri.addTransform(self.root, self.getName("ik1_npo"), t)
            self.ik1_ctl = self.addCtl(self.ik1_npo, "ik1_ctl", t, self.color_ik, "compas", w=self.size, tp=self.ik0_ctl)

        att.setKeyableAttributes(self.ik1_ctl, self.tr_params)
        att.setRotOrder(self.ik1_ctl, "ZXY")
        att.setInvertMirror(self.ik1_ctl, ["tx", "ry", "rz"])

        # Tangent controllers -------------------------------
        if self.settings["centralTangent"]:
            t = tra.setMatrixPosition(t, vec.linearlyInterpolate(self.guide.apos[0], self.guide.apos[1], .33))
            self.tan0_npo = pri.addTransform(self.ik0_ctl, self.getName("tan0_npo"), t)
            self.tan0_off = pri.addTransform(self.tan0_npo, self.getName("tan0_off"), t)
            self.tan0_ctl = self.addCtl(self.tan0_off, "tan0_ctl", t, self.color_ik, "sphere", w=self.size*.1, tp=self.ik0_ctl)
            att.setKeyableAttributes(self.tan0_ctl, self.t_params)

            t = tra.setMatrixPosition(t, vec.linearlyInterpolate(self.guide.apos[0], self.guide.apos[1], .66))
            self.tan1_npo = pri.addTransform(self.ik1_ctl, self.getName("tan1_npo"), t)
            self.tan1_off = pri.addTransform(self.tan1_npo, self.getName("tan1_off"), t)
            self.tan1_ctl = self.addCtl(self.tan1_off, "tan1_ctl", t, self.color_ik, "sphere", w=self.size*.1, tp=self.ik0_ctl)
            att.setKeyableAttributes(self.tan1_ctl, self.t_params)

            # Tangent mid control
            t = tra.setMatrixPosition(t, vec.linearlyInterpolate(self.guide.apos[0], self.guide.apos[1], .5))
            self.tan_npo = pri.addTransform(self.tan0_npo, self.getName("tan_npo"), t)
            self.tan_ctl = self.addCtl(self.tan_npo, "tan_ctl", t, self.color_fk, "sphere", w=self.size*.2, tp=self.ik1_ctl)
            att.setKeyableAttributes(self.tan_ctl, self.t_params)
            att.setInvertMirror(self.tan_ctl, ["tx"])

        else:
            t = tra.setMatrixPosition(t, vec.linearlyInterpolate(self.guide.apos[0], self.guide.apos[1], .33))
            self.tan0_npo = pri.addTransform(self.ik0_ctl, self.getName("tan0_npo"), t)
            self.tan0_ctl = self.addCtl(self.tan0_npo, "tan0_ctl", t, self.color_ik, "sphere", w=self.size*.2, tp=self.ik0_ctl)
            att.setKeyableAttributes(self.tan0_ctl, self.t_params)

            t = tra.setMatrixPosition(t, vec.linearlyInterpolate(self.guide.apos[0], self.guide.apos[1], .66))
            self.tan1_npo = pri.addTransform(self.ik1_ctl, self.getName("tan1_npo"), t)
            self.tan1_ctl = self.addCtl(self.tan1_npo, "tan1_ctl", t, self.color_ik, "sphere", w=self.size*.2, tp=self.ik1_ctl)
            att.setKeyableAttributes(self.tan1_ctl, self.t_params)

        att.setInvertMirror(self.tan0_ctl, ["tx"])
        att.setInvertMirror(self.tan1_ctl, ["tx"])

        # Curves -------------------------------------------
        self.mst_crv = cur.addCnsCurve(self.root, self.getName("mst_crv"), [self.ik0_ctl, self.tan0_ctl, self.tan1_ctl, self.ik1_ctl], 3)
        self.slv_crv = cur.addCurve(self.root, self.getName("slv_crv"), [dt.Vector()]*10, False, 3)
        self.mst_crv.setAttr("visibility", False)
        self.slv_crv.setAttr("visibility", False)

        # Division -----------------------------------------
        # The user only define how many intermediate division he wants.
        # First and last divisions are an obligation.
        parentdiv = self.root
        parentctl = self.root
        self.div_cns = []
        self.fk_ctl = []
        self.fk_npo = []
        self.scl_transforms = []
        self.twister = []
        self.ref_twist = []

        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.guide.blades["blade"].z*-1, "yx", self.negate)
        parent_twistRef = pri.addTransform(self.root, self.getName("reference"), tra.getTransform(self.root))

        self.jointList = []
        self.preiviousCtlTag = self.parentCtlTag
        for i in range(self.settings["division"]):

            # References
            div_cns = pri.addTransform(parentdiv, self.getName("%s_cns"%i))
            pm.setAttr(div_cns+".inheritsTransform", False)
            self.div_cns.append(div_cns)
            parentdiv = div_cns

            # Controlers (First and last one are fake)
            # if i in [0]:
            # TODO: add option setting to add or not the first and last controller for the fk
            # if i in [0, self.settings["division"] - 1] and False:
            if i in [0, self.settings["division"] - 1]:
                fk_ctl = pri.addTransform(parentctl, self.getName("%s_loc"%i), tra.getTransform(parentctl))
                fk_npo = fk_ctl
                if i in [ self.settings["division"] - 1]:
                    self.fk_ctl.append(fk_ctl)
            else:
                fk_npo = pri.addTransform(parentctl, self.getName("fk%s_npo"%(i-1)), tra.getTransform(parentctl))
                fk_ctl = self.addCtl(fk_npo, "fk%s_ctl"%(i-1), tra.getTransform(parentctl), self.color_fk, "cube", w=self.size, h=self.size*.05, d=self.size, tp=self.preiviousCtlTag)
                att.setKeyableAttributes(self.fk_ctl)
                att.setRotOrder(fk_ctl, "ZXY")
                self.fk_ctl.append(fk_ctl)
                self.preiviousCtlTag = fk_ctl

            # setAttr(fk_npo+".inheritsTransform", False)
            self.fk_npo.append(fk_npo)
            parentctl = fk_ctl
            scl_ref = pri.addTransform(parentctl, self.getName("%s_scl_ref"%i), tra.getTransform(parentctl))
            self.scl_transforms.append(scl_ref)

            # Deformers (Shadow)
            self.jnt_pos.append([scl_ref, i])

            #Twist references (This objects will replace the spinlookup slerp solver behavior)
            t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.guide.blades["blade"].z*-1, "yx", self.negate)
            twister = pri.addTransform(parent_twistRef, self.getName("%s_rot_ref"%i), t)
            ref_twist = pri.addTransform(parent_twistRef, self.getName("%s_pos_ref"%i), t)
            ref_twist.setTranslation(dt.Vector(1.0,0,0), space="preTransform")

            self.twister.append(twister)
            self.ref_twist.append(ref_twist)

            #TODO: update this part with the optiona FK controls update
            for  x in self.fk_ctl[:-1]:
                att.setInvertMirror(x, ["tx", "rz", "ry"])

        # Connections (Hooks) ------------------------------
        self.cnx0 = pri.addTransform(self.root, self.getName("0_cnx"))
        self.cnx1 = pri.addTransform(self.root, self.getName("1_cnx"))

    def addAttributes(self):

        # Anim -------------------------------------------
        self.position_att = self.addAnimParam("position", "Position", "double", self.settings["position"], 0, 1)
        self.maxstretch_att = self.addAnimParam("maxstretch", "Max Stretch", "double", self.settings["maxstretch"], 1)
        self.maxsquash_att = self.addAnimParam("maxsquash", "Max Squash", "double", self.settings["maxsquash"], 0, 1)
        self.softness_att = self.addAnimParam("softness", "Softness", "double", self.settings["softness"], 0, 1)

        self.lock_ori0_att = self.addAnimParam("lock_ori0", "Lock Ori 0", "double", self.settings["lock_ori"], 0, 1)
        self.lock_ori1_att = self.addAnimParam("lock_ori1", "Lock Ori 1", "double", self.settings["lock_ori"], 0, 1)

        self.tan0_att = self.addAnimParam("tan0", "Tangent 0", "double", 1, 0)
        self.tan1_att = self.addAnimParam("tan1", "Tangent 1", "double", 1, 0)

        # Volume
        self.volume_att = self.addAnimParam("volume", "Volume", "double", 1, 0, 1)

        if self.settings["autoBend"]:
            self.sideBend_att = self.addAnimParam("sideBend", "Side Bend", "double", .5, 0, 2)
            self.frontBend_att = self.addAnimParam("frontBend", "Front Bend", "double", .5, 0, 2)

        # Setup ------------------------------------------
        # Eval Fcurve
        self.st_value = fcu.getFCurveValues(self.settings["st_profile"], self.settings["division"])
        self.sq_value = fcu.getFCurveValues(self.settings["sq_profile"], self.settings["division"])

        self.st_att = [ self.addSetupParam("stretch_%s"%i, "Stretch %s"%i, "double", self.st_value[i], -1, 0) for i in range(self.settings["division"]) ]
        self.sq_att = [ self.addSetupParam("squash_%s"%i, "Squash %s"%i, "double", self.sq_value[i], 0, 1) for i in range(self.settings["division"]) ]

    def addOperators(self):

        # Auto bend ----------------------------
        if self.settings["autoBend"]:
            mul_node = nod.createMulNode([self.autoBendChain[0].ry, self.autoBendChain[0].rz ], [self.sideBend_att, self.frontBend_att])
            mul_node.outputX >> self.ik1autoRot_lvl.rz
            mul_node.outputY >> self.ik1autoRot_lvl.rx

            self.ikHandleAutoBend = pri.addIkHandle(self.autoBend_ctl, self.getName("ikHandleAutoBend"), self.autoBendChain, "ikSCsolver")


        # Tangent position ---------------------------------
        # common part
        d = vec.getDistance(self.guide.apos[0], self.guide.apos[1])
        dist_node = nod.createDistNode(self.ik0_ctl, self.ik1_ctl)
        rootWorld_node = nod.createDecomposeMatrixNode(self.root.attr("worldMatrix"))
        div_node = nod.createDivNode(dist_node+".distance", rootWorld_node+".outputScaleX")
        div_node = nod.createDivNode(div_node+".outputX", d)

        # tan0
        mul_node = nod.createMulNode(self.tan0_att, self.tan0_npo.getAttr("ty"))
        res_node = nod.createMulNode(mul_node+".outputX", div_node+".outputX")
        pm.connectAttr( res_node+".outputX", self.tan0_npo.attr("ty"))

        # tan1
        mul_node = nod.createMulNode(self.tan1_att, self.tan1_npo.getAttr("ty"))
        res_node = nod.createMulNode(mul_node+".outputX", div_node+".outputX")
        pm.connectAttr( res_node+".outputX", self.tan1_npo.attr("ty"))

        # Tangent Mid --------------------------------------
        if self.settings["centralTangent"]:
            tanIntMat = aop.gear_intmatrix_op(self.tan0_npo.attr("worldMatrix"), self.tan1_npo.attr("worldMatrix"), .5)
            aop.gear_mulmatrix_op(tanIntMat.attr("output"), self.tan_npo.attr("parentInverseMatrix[0]"), self.tan_npo)
            pm.connectAttr(self.tan_ctl.attr("translate"), self.tan0_off.attr("translate"))
            pm.connectAttr(self.tan_ctl.attr("translate"), self.tan1_off.attr("translate"))


        # Curves -------------------------------------------
        op = aop.gear_curveslide2_op(self.slv_crv, self.mst_crv, 0, 1.5, .5, .5)

        pm.connectAttr(self.position_att, op+".position")
        pm.connectAttr(self.maxstretch_att, op+".maxstretch")
        pm.connectAttr(self.maxsquash_att, op+".maxsquash")
        pm.connectAttr(self.softness_att, op+".softness")

        # Volume driver ------------------------------------
        crv_node = nod.createCurveInfoNode(self.slv_crv)

        # Division -----------------------------------------
        for i in range(self.settings["division"]):

            # References
            u = i / (self.settings["division"] - 1.0)

            cns = aop.pathCns(self.div_cns[i], self.slv_crv, False, u, True)
            cns.setAttr("frontAxis", 1)# front axis is 'Y'
            cns.setAttr("upAxis", 0)# front axis is 'X'

            # Roll
            intMatrix = aop.gear_intmatrix_op(self.ik0_ctl+".worldMatrix", self.ik1_ctl+".worldMatrix", u)
            dm_node = nod.createDecomposeMatrixNode(intMatrix+".output")
            pm.connectAttr(dm_node+".outputRotate", self.twister[i].attr("rotate"))


            pm.parentConstraint(self.twister[i], self.ref_twist[i], maintainOffset=True)


            pm.connectAttr(self.ref_twist[i]+".translate", cns+".worldUpVector")

            #compensate scale reference
            div_node = nod.createDivNode([1,1,1], [rootWorld_node+".outputScaleX", rootWorld_node+".outputScaleY", rootWorld_node+".outputScaleZ"])


            # Squash n Stretch
            op = aop.gear_squashstretch2_op(self.scl_transforms[i], self.root, pm.arclen(self.slv_crv), "y", div_node+".output" )
            pm.connectAttr(self.volume_att, op+".blend")
            pm.connectAttr(crv_node+".arcLength", op+".driver")
            pm.connectAttr(self.st_att[i], op+".stretch")
            pm.connectAttr(self.sq_att[i], op+".squash")

            # Controlers
            if i == 0:
                mulmat_node = aop.gear_mulmatrix_op(self.div_cns[i].attr("worldMatrix"),
                                                    self.root.attr("worldInverseMatrix"))
                dm_node = nod.createDecomposeMatrixNode(mulmat_node+".output")
                pm.connectAttr(dm_node+".outputTranslate", self.fk_npo[i].attr("t"))

            else:
                mulmat_node = aop.gear_mulmatrix_op(self.div_cns[i].attr("worldMatrix"),
                                                    self.div_cns[i - 1].attr("worldInverseMatrix"))
                dm_node = nod.createDecomposeMatrixNode(mulmat_node+".output")
                mul_node = nod.createMulNode(div_node+".output", dm_node+".outputTranslate")
                pm.connectAttr(mul_node+".output", self.fk_npo[i].attr("t"))

            pm.connectAttr(dm_node+".outputRotate", self.fk_npo[i].attr("r"))



            # Orientation Lock
            if i == 0 :
                dm_node = nod.createDecomposeMatrixNode(self.ik0_ctl+".worldMatrix")
                blend_node = nod.createBlendNode([dm_node+".outputRotate%s"%s for s in "XYZ"], [cns+".rotate%s"%s for s in "XYZ"], self.lock_ori0_att)
                self.div_cns[i].attr("rotate").disconnect()
                pm.connectAttr(blend_node+".output", self.div_cns[i]+".rotate")
            elif i == self.settings["division"] - 1 :
                dm_node = nod.createDecomposeMatrixNode(self.ik1_ctl+".worldMatrix")
                blend_node = nod.createBlendNode([dm_node+".outputRotate%s"%s for s in "XYZ"], [cns+".rotate%s"%s for s in "XYZ"], self.lock_ori1_att)
                self.div_cns[i].attr("rotate").disconnect()
                pm.connectAttr(blend_node+".output", self.div_cns[i]+".rotate")

        # Connections (Hooks) ------------------------------

        pm.parentConstraint(self.scl_transforms[0], self.cnx0)
        pm.scaleConstraint(self.scl_transforms[0], self.cnx0)
        pm.parentConstraint(self.scl_transforms[-1], self.cnx1)
        pm.scaleConstraint(self.scl_transforms[-1], self.cnx1)

    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.cnx0
        self.relatives["eff"] = self.cnx1

        self.controlRelatives["root"] = self.fk_ctl[0]
        self.controlRelatives["eff"] = self.fk_ctl[-2]

        self.jointRelatives["root"] = 0
        self.jointRelatives["eff"] = -1
