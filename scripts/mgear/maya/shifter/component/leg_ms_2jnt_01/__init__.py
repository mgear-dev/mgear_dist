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

# ms 2jnt feature -----------------------
# //done//FK isolation
# //done//FK roll ctl
# //done//Independent IK-FK foot ctl
# //done//IK auto up vector(default off)
# //done//T pose centric FK ctl
# //done//knee thickness + seperate upper/lower limb roundness ctl
# //done//knee scl and foot scl(ik/fk) add to jt scl
# //done//addition limb jt layer ctl(optional)
# To Do List -------------------------------


# upper sleeve lower sleeve ctl(optional)
# custom Upper limb 4 pt bezier node with input for rot interpolation


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


        self.normal = self.getNormalFromPos(self.guide.apos)
        self.binormal = self.getBiNormalFromPos(self.guide.apos)

        self.length0 = vec.getDistance(self.guide.apos[0], self.guide.apos[1])
        self.length1 = vec.getDistance(self.guide.apos[1], self.guide.apos[2])
        self.length2 = vec.getDistance(self.guide.apos[2], self.guide.apos[3])

        # FK Controlers -----------------------------------
        # *ms* set npo @ Tpose, to make the fk rotation work best with rot order"yzx"

        self.fk_cns = pri.addTransformFromPos(self.root, self.getName("fk_cns"), self.guide.apos[0])

        tpv = self.guide.apos[0] + ((self.guide.apos[1] - self.guide.apos[0])*[0,1,0])
        t = tra.getTransformLookingAt(self.guide.apos[0], tpv, self.normal, "xz", self.negate)
        # *ms* add FK isolation
        self.fk0_npo = pri.addTransform(self.fk_cns, self.getName("fk0_npo"), t)

        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.normal, "xz", self.negate)
        self.fk0_ctl = self.addCtl(self.fk0_npo, "fk0_ctl", t, self.color_fk, "cube", w=self.length0*.7, h=self.size*.1, d=self.size*.1, po=dt.Vector(.35*self.length0*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk0_ctl)
        # *ms* add fk roll control Simage style
        self.fk0_roll_ctl = self.addCtl(self.fk0_ctl, "fk0_roll_ctl", t, self.color_fk, "cube", w=self.length0*.3, h=self.size*.1, d=self.size*.1, po=dt.Vector(.85*self.length0*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk0_roll_ctl)
        self.fk0_mtx = pri.addTransform(self.root, self.getName("fk0_mtx"), t)
        t = tra.setMatrixPosition(t, self.guide.apos[1])
        self.fk1_ref = pri.addTransform(self.fk0_roll_ctl, self.getName("fk1_ref"), t)
        self.fk1_loc = pri.addTransform(self.root, self.getName("fk1_loc"), t)
        t = tra.getTransformLookingAt(self.guide.apos[1], self.guide.apos[2], self.normal, "xz", self.negate)

        self.fk1_npo = pri.addTransform(self.fk1_loc, self.getName("fk1_npo"), t)
        self.fk1_ctl = self.addCtl(self.fk1_npo, "fk1_ctl", t, self.color_fk, "cube", w=self.length1*.7, h=self.size*.1, d=self.size*.1, po=dt.Vector(.35*self.length1*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk1_ctl)
        self.fk1_mtx = pri.addTransform(self.fk1_ctl, self.getName("fk1_mtx"), t)
        self.fk1_roll_ctl = self.addCtl(self.fk1_ctl, "fk1_roll_ctl", t, self.color_fk, "cube", w=self.length1*.3, h=self.size*.1, d=self.size*.1, po=dt.Vector(.85*self.length1*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk1_roll_ctl)


        # t = tra.getTransformFromPos(self.guide.pos["ankle"])
        # *ms* buffer object to feed into ikfk solver for foot seperation
        t= tra.getTransformLookingAt(self.guide.apos[2], self.guide.apos[3], self.normal, "z-x", negate=False)

        self.fk2_mtx = pri.addTransform(self.fk1_roll_ctl, self.getName("fk2_mtx"), t)


        # fk2_loc is need to take the effector position + bone1 rotation
        # fk2_npo should get offset rotation from fk2_mtx
        t= tra.getTransformLookingAt(self.guide.apos[2], self.guide.apos[1], self.normal, "-xz", self.negate)
        self.fk2_loc = pri.addTransform(self.root, self.getName("fk2_loc"), t)
        t = tra.getTransformLookingAt(self.guide.apos[2], self.guide.apos[3], self.normal, "xz", self.negate)

        self.fk2_npo = pri.addTransform(self.fk2_loc, self.getName("fk2_npo"), t)
        self.fk2_ctl = self.addCtl(self.fk2_npo, "fk2_ctl", t, self.color_fk, "cube", w=self.length2, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length2*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk2_ctl)

        self.fk_ctl = [self.fk0_roll_ctl, self.fk1_ctl, self.fk2_ctl]
        self.fk_ctls = [self.fk0_ctl,self.fk0_roll_ctl, self.fk1_ctl, self.fk1_roll_ctl, self.fk2_ctl]
        for  x in self.fk_ctls:
            att.setInvertMirror(x, ["tx", "ty", "tz"])

        # att.setInvertMirror(self.fk0_ctl, ["tx", "ty", "tz"])


        # IK Controlers -----------------------------------

        self.ik_cns = pri.addTransformFromPos(self.root, self.getName("ik_cns"), self.guide.pos["ankle"])

        self.ikcns_ctl = self.addCtl(self.ik_cns, "ikcns_ctl", tra.getTransformFromPos(self.guide.pos["ankle"]), self.color_ik, "null", w=self.size*.12)
        att.setInvertMirror(self.ikcns_ctl, ["tx"])

        m = tra.getTransformFromPos(self.guide.pos["ankle"])
        self.ik_ctl = self.addCtl(self.ikcns_ctl, "ik_ctl", m, self.color_ik, "cube", w=self.size*.12, h=self.size*.12, d=self.size*.12)
        att.setKeyableAttributes(self.ik_ctl)
        # att.setRotOrder(self.ik_ctl, "XZY")
        att.setInvertMirror(self.ik_ctl, ["tx", "ry", "rz"])

        # upv
        v = self.guide.apos[2] - self.guide.apos[0]
        v = self.normal ^ v
        v.normalize()
        v *= self.size*.5
        v += self.guide.apos[1]
        # *ms* auto up vector ------------------------------
        self.upv_cns = pri.addTransformFromPos(self.root, self.getName("upv_cns"), self.guide.apos[0])
        self.upv_auv = pri.addTransformFromPos(self.root, self.getName("upv_auv"), self.guide.apos[0])
        self.upv_mtx = pri.addTransformFromPos(self.upv_cns, self.getName("upv_mtx"), self.guide.apos[0])

        self.upv_npo = pri.addTransformFromPos(self.upv_mtx, self.getName("upv_npo"), v)
        self.upv_ctl = self.addCtl(self.upv_npo, "upv_ctl", tra.getTransform(self.upv_npo), self.color_ik, "diamond", w=self.size*.12)
        att.setKeyableAttributes(self.upv_ctl, self.t_params)
        att.setInvertMirror(self.upv_ctl, ["tx"])

        # References --------------------------------------
        # Calculate  again the transfor for the IK ref. This way align with FK
        self.ik_ref = pri.addTransform(self.ik_ctl, self.getName("ik_ref"), tra.getTransform(self.ik_ctl))
        self.fk_ref = pri.addTransform(self.fk_ctl[2], self.getName("fk_ref"), tra.getTransform(self.ik_ctl))

        # auto up vector foot solver
        self.upv1_auv = pri.addTransform(self.ik_ref, self.getName("upv1_auv"), tra.getTransform(self.ik_ctl))
        self.upv2_auv = pri.addTransform(self.upv1_auv, self.getName("upv2_auv"), tra.getTransform(self.ik_ctl))
        self.upv2_auv.setAttr("tz",1)

        # Chain --------------------------------------------
        # take outputs of the ikfk2bone solver
        self.bone0 = pri.addLocator(self.root, self.getName("0_bone"), tra.getTransform(self.fk_ctl[0]))
        self.bone0_shp = self.bone0.getShape()
        self.bone0_shp.setAttr("localPositionX", self.n_factor*.5)
        self.bone0_shp.setAttr("localScale", .5, 0, 0)
        self.bone0.setAttr("sx", self.length0)
        self.bone0.setAttr("visibility", False)

        self.bone1 = pri.addLocator(self.root, self.getName("1_bone"), tra.getTransform(self.fk_ctl[1]))
        self.bone1_shp = self.bone1.getShape()
        self.bone1_shp.setAttr("localPositionX", self.n_factor*.5)
        self.bone1_shp.setAttr("localScale", .5, 0, 0)
        self.bone1.setAttr("sx", self.length1)
        self.bone1.setAttr("visibility", False)

        self.ctrn_loc = pri.addTransformFromPos(self.root, self.getName("ctrn_loc"), self.guide.apos[1])
        # eff npo --- take the effector output of gear ik solver
        self.eff_npo  = pri.addTransformFromPos(self.root, self.getName("eff_npo"), self.guide.apos[2])
        # eff loc --- take the fk ik blend result
        self.eff_loc  = pri.addTransformFromPos(self.eff_npo, self.getName("eff_loc"), self.guide.apos[2])
    # tws_ref
        t = tra.getRotationFromAxis(dt.Vector(0,-1,0), self.normal, "xz", self.negate)
        t = tra.setMatrixPosition(t, self.guide.pos["ankle"])
        self.tws_ref = pri.addTransform(self.eff_loc, self.getName("tws_ref"), t)

        # Mid Controler ------------------------------------
        self.mid_ctl = self.addCtl(self.ctrn_loc, "mid_ctl", tra.getTransform(self.ctrn_loc), self.color_ik, "sphere", w=self.size*.2)
        att.setInvertMirror(self.mid_ctl, ["tx", "ty", "tz"])
        # *ms* add knee thickness



        #Roll join ref

        self.tws0_npo = pri.addTransform(self.root, self.getName("tws0_npo"), tra.getTransform(self.fk_ctl[0]))
        self.tws0_loc = pri.addTransform(self.tws0_npo, self.getName("tws0_loc"), tra.getTransform(self.fk_ctl[0]))
        self.tws0_rot = pri.addTransform(self.tws0_loc, self.getName("tws0_rot"), tra.getTransform(self.fk_ctl[0]))

        self.tws1_npo = pri.addTransform(self.ctrn_loc, self.getName("tws1_npo"), tra.getTransform(self.ctrn_loc))
        self.tws1_loc = pri.addTransform(self.tws1_npo, self.getName("tws1_loc"), tra.getTransform(self.ctrn_loc))
        self.tws1_rot = pri.addTransform(self.tws1_loc, self.getName("tws1_rot"), tra.getTransform(self.ctrn_loc))

        self.tws2_loc = pri.addTransform(self.tws1_npo, self.getName("tws2_loc"), tra.getTransform(self.ctrn_loc))
        self.tws2_rot = pri.addTransform(self.tws2_loc, self.getName("tws2_rot"), tra.getTransform(self.ctrn_loc))

        # self.tws3_npo = pri.addTransform(self.root, self.getName("tws3_npo"), tra.getTransform(self.fk_ctl[2]))
        # self.tws3_loc = pri.addTransform(self.tws3_npo, self.getName("tws3_loc"), tra.getTransform(self.fk_ctl[2]))
        # self.tws3_rot = pri.addTransform(self.tws3_loc, self.getName("tws3_rot"), tra.getTransform(self.fk_ctl[2]))
        t = t = tra.getTransformLookingAt(self.guide.apos[2], self.guide.apos[1], self.normal, "-xz", self.negate)
        self.tws3_npo = pri.addTransform(self.root, self.getName("tws3_npo"), t)
        self.tws3_loc = pri.addTransform(self.tws3_npo, self.getName("tws3_loc"), t)
        self.tws3_rot = pri.addTransform(self.tws3_loc, self.getName("tws3_rot"), t)


        # Divisions ----------------------------------------
        # We have at least one division at the start, the end and one for the knee. + 2 for knee angle control
        # separate up and dn limb
        self.divisions = self.settings["div0"] + self.settings["div1"] + 3 + 2
        self.divisions0 = self.settings["div0"] +2
        self.divisions1 = self.settings["div1"] +2

        self.div_cns = []
        self.div_cnsUp = []
        self.div_cnsDn = []
        self.div_ctls = []
        self.div_org = pri.addTransform(self.root, self.getName("div_org"), tra.getTransform(self.root))

        for i in range(self.divisions0):

            div_cns = pri.addTransform(self.div_org, self.getName("div%s_loc" % i))
            if self.negate:
                div_ctl = self.addCtl(div_cns, self.getName("div%s_clt" % i), tra.getTransform(div_cns), self.color_fk, "square",d=self.size*.05,w=self.size*.1,po=dt.Vector(0,self.size*-0.05,0),ro=dt.Vector(0,0,dt.radians(90)))
            else:
                div_ctl = self.addCtl(div_cns, self.getName("div%s_clt" % i), tra.getTransform(div_cns), self.color_fk, "square",d=self.size*.05,w=self.size*.1,po=dt.Vector(0,self.size*0.05,0),ro=dt.Vector(0,0,dt.radians(90)))
            self.div_cns.append(div_cns)
            self.div_cnsUp.append(div_cns)
            self.jnt_pos.append([div_ctl,i])
            self.div_ctls.append(div_ctl)
        # mid division
        d = self.divisions0
        self.div_mid = pri.addTransform(self.div_org, self.getName("div%s_loc" % d), tra.getTransform(self.mid_ctl))
        if self.negate:
            self.div_mid_ctl = self.addCtl(self.div_mid, self.getName("div%s_ctl" % d), tra.getTransform(self.div_mid), self.color_fk, "square",d=self.size*.05, w=self.size*.1,po=dt.Vector(0,self.size*-0.05,0), ro=dt.Vector(0,0,dt.radians(90)))
        else:
            self.div_mid_ctl = self.addCtl(self.div_mid, self.getName("div%s_ctl" % d), tra.getTransform(self.div_mid), self.color_fk, "square",d=self.size*.05, w=self.size*.1,po=dt.Vector(0,self.size*0.05,0), ro=dt.Vector(0,0,dt.radians(90)))
        self.div_cns.append(self.div_mid)
        self.jnt_pos.append([self.div_mid_ctl,self.divisions0])
        self.div_ctls.append(self.div_mid_ctl)
        # down division
        for i in range(self.divisions1):

            dd = i +self.divisions1+1
            div_cns = pri.addTransform(self.div_org, self.getName("div%s_loc" % dd))
            if self.negate:
                div_ctl = self.addCtl(div_cns, self.getName("div%s_clt" % dd), tra.getTransform(div_cns), self.color_fk, "square",d=self.size*.05, w=self.size*.1,po=dt.Vector(0,self.size*-0.05,0),ro=dt.Vector(0,0,dt.radians(90)))
            else:
                div_ctl = self.addCtl(div_cns, self.getName("div%s_clt" % dd), tra.getTransform(div_cns), self.color_fk, "square",d=self.size*.05, w=self.size*.1,po=dt.Vector(0,self.size*0.05,0),ro=dt.Vector(0,0,dt.radians(90)))
            self.div_cns.append(div_cns)
            self.div_cnsDn.append(div_cns)
            self.jnt_pos.append([div_ctl,i+self.divisions0+1])
            self.div_ctls.append(div_ctl)

        # End reference ------------------------------------
        # To help the deformation on the ankle
        self.jnt_pos.append([self.eff_loc, 'end'])

        #match IK FK references

        self.match_fk0 = pri.addTransform(self.root, self.getName("fk0_mth"), tra.getTransform(self.fk_ctl[0]))
        self.match_fk1 = pri.addTransform(self.root, self.getName("fk1_mth"), tra.getTransform(self.fk_ctl[1]))
        self.match_fk2 = pri.addTransform(self.ik_ref, self.getName("fk2_mth"), tra.getTransform(self.fk_ctl[2]))

        self.match_ik = pri.addTransform(self.fk2_ctl, self.getName("ik_mth"), tra.getTransform(self.ik_ctl))
        self.match_ikUpv = pri.addTransform(self.fk0_roll_ctl, self.getName("upv_mth"), tra.getTransform(self.upv_ctl))

    def addAttributes(self):

        # Anim -------------------------------------------
        self.blend_att = self.addAnimParam("blend", "Fk/Ik Leg", "double", self.settings["blend"], 0, 1)
        self.blend2_att = self.addAnimParam("blend_foot", "Fk/Ik Foot", "double", self.settings["blend"], 0, 1)
        self.auv_att = self.addAnimParam("auv", "Auto Upvector", "double", 0, 0, 1)
        self.roll_att = self.addAnimParam("roll", "Roll", "double", 0, -180, 180)

        self.scale_att = self.addAnimParam("ikscale", "Scale", "double", 1, .001, 99)
        self.maxstretch_att = self.addAnimParam("maxstretch", "Max Stretch", "double", self.settings["maxstretch"], 1, 99)
        self.slide_att = self.addAnimParam("slide", "Slide", "double", .5, 0, 1)
        self.softness_att = self.addAnimParam("softness", "Softness", "double", 0, 0, 1)
        self.reverse_att = self.addAnimParam("reverse", "Reverse", "double", 0, 0, 1)
        self.roundness0_att = self.addAnimParam("roundness_up", "Roundness Up", "double", 0, 0, self.size)
        self.roundness1_att = self.addAnimParam("roundness_dn", "Roundness Dn", "double", 0, 0, self.size)
        self.volume_att = self.addAnimParam("volume", "Volume", "double", 1, 0, 1)
        self.knee_thickness_att = self.addAnimParam("kneethickness", "Knee Thickness", "double", self.settings["knee"], 0, 5)
        self.jntctl_vis_att = self.addAnimParam("jntct_vis", "Joint Ctl Vis", "bool", 0,1,1)

        # Ref
        if self.settings["fkrefarray"]:
            ref_names = self.settings["fkrefarray"].split(",")
            if len(ref_names) > 1:
                self.ref_att = self.addAnimEnumParam("fkref", "Fk Ref", 0, self.settings["fkrefarray"].split(","))

        if self.settings["ikrefarray"]:
            ref_names = self.settings["ikrefarray"].split(",")
            if len(ref_names) > 1:
                self.ikref_att = self.addAnimEnumParam("ikref", "Ik Ref", 0, self.settings["ikrefarray"].split(","))

        if self.settings["upvrefarray"]:
            ref_names = self.settings["upvrefarray"].split(",")
            if len(ref_names) > 1:
                self.upvref_att = self.addAnimEnumParam("upvref", "UpV Ref", 0, self.settings["upvrefarray"].split(","))

        # Setup ------------------------------------------
        # Eval Fcurve
        self.st_value = fcu.getFCurveValues(self.settings["st_profile"], self.divisions)
        self.sq_value = fcu.getFCurveValues(self.settings["sq_profile"], self.divisions)

        self.st_att = [ self.addSetupParam("stretch_%s"%i, "Stretch %s"%i, "double", self.st_value[i], -1, 0) for i in range(self.divisions) ]
        self.sq_att = [ self.addSetupParam("squash_%s"%i, "Squash %s"%i, "double", self.sq_value[i], 0, 1) for i in range(self.divisions) ]

        self.resample_att = self.addSetupParam("resample", "Resample", "bool", True)
        self.absolute_att = self.addSetupParam("absolute", "Absolute", "bool", False)

    def addOperators(self):

        # Visibilities -------------------------------------
        # fk
        fkvis_node = nod.createReverseNode(self.blend_att)

        for shp in self.fk0_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))
        for shp in self.fk0_roll_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))
        for shp in self.fk1_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))
        for shp in self.fk1_roll_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))

        fkvis2_node = nod.createReverseNode(self.blend2_att)
        for shp in self.fk2_ctl.getShapes():
            pm.connectAttr(fkvis2_node+".outputX", shp.attr("visibility"))

        # ik
        for shp in self.upv_ctl.getShapes():
            pm.connectAttr(self.blend_att, shp.attr("visibility"))
        for shp in self.ikcns_ctl.getShapes():
            pm.connectAttr(self.blend_att, shp.attr("visibility"))
        for shp in self.ik_ctl.getShapes():
            pm.connectAttr(self.blend_att, shp.attr("visibility"))

        # jnt ctl
        for ctl in (self.div_ctls):
            for shp in ctl.getShapes():
                pm.connectAttr(self.jntctl_vis_att, shp.attr("visibility"))
        # Controls ROT order -----------------------------------

        att.setRotOrder(self.ik_ctl, "XZY")


        # IK Solver -----------------------------------------
        out = [self.bone0, self.bone1, self.ctrn_loc, self.eff_npo]

        #self.fk_ctl = [self.fk0_roll_ctl, self.fk1_ctl, self.fk2_mtx]
        node = aop.gear_ikfk2bone_op(out, self.root, self.ik_ref, self.upv_ctl, self.fk0_mtx, self.fk1_mtx, self.fk2_mtx, self.length0, self.length1, self.negate)

        pm.connectAttr(self.blend_att, node+".blend")
        pm.connectAttr(self.roll_att, node+".roll")
        pm.connectAttr(self.scale_att, node+".scaleA")
        pm.connectAttr(self.scale_att, node+".scaleB")
        pm.connectAttr(self.maxstretch_att, node+".maxstretch")
        pm.connectAttr(self.slide_att, node+".slide")
        pm.connectAttr(self.softness_att, node+".softness")
        pm.connectAttr(self.reverse_att, node+".reverse")
        # update issue on effector scale interpolation, disconnect for stability
        pm.disconnectAttr(self.eff_npo.scale)
        # auto upvector -------------------------------------


        # leg aim
        node = aop.aimCns(self.upv_auv, self.ik_ctl, axis="-yz", wupType=1, wupVector=[0,1,0], wupObject=self.upv2_auv, maintainOffset=False)


        # foot aim
        node = aop.aimCns(self.upv1_auv, self.root, axis="yz", wupType=4, wupVector=[0,1,0], wupObject=self.root, maintainOffset=False)


        # auto upvector connection
        node = aop.gear_mulmatrix_op(self.upv_auv.attr("worldMatrix"), self.upv_mtx.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pb_node = pm.createNode("pairBlend")
        pb_node.attr("rotInterpolation").set (1)
        pm.connectAttr(dm_node+".outputTranslate", pb_node+".inTranslate2")
        pm.connectAttr(dm_node+".outputRotate", pb_node+".inRotate2")
        pm.connectAttr(pb_node+".outRotate", self.upv_mtx.attr("rotate"))
        pm.connectAttr(pb_node+".outTranslate", self.upv_mtx.attr("translate"))
        pm.connectAttr(self.auv_att, pb_node+".weight")

        # fk0 mtx parent constraint
        node = aop.gear_mulmatrix_op(self.fk0_roll_ctl.attr("worldMatrix"), self.fk0_mtx.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputTranslate", self.fk0_mtx.attr("translate"))
        pm.connectAttr(dm_node+".outputRotate", self.fk0_mtx.attr("rotate"))
        # fk1 loc to fk1 ref parent constraint
        node = aop.gear_mulmatrix_op(self.fk1_ref.attr("worldMatrix"), self.fk1_loc.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputTranslate", self.fk1_loc.attr("translate"))
        pm.connectAttr(dm_node+".outputRotate", self.fk1_loc.attr("rotate"))
        # fk1 mtx orient cns to fk1 roll
        pm.connectAttr(self.fk1_roll_ctl.attr("rotate"), self.fk1_mtx.attr("rotate"))
        # fk2_loc position constraint to effector------------------------
        node = aop.gear_mulmatrix_op(self.eff_npo.attr("worldMatrix"), self.fk2_loc.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputTranslate", self.fk2_loc.attr("translate"))
        # fk2_loc rotation constraint to bone1 ------------------------

        node = aop.gear_mulmatrix_op(self.bone1.attr("worldMatrix"), self.fk2_loc.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputRotate", self.fk2_loc.attr("rotate"))


        # foot ikfk blending from fk ref to ik ref (serious bugfix)--------------------------------
        node = aop.gear_mulmatrix_op(self.fk_ref.attr("worldMatrix"), self.eff_loc.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pb_node = pm.createNode("pairBlend")
        pb_node.attr("rotInterpolation").set (1)
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputRotate", pb_node+".inRotate1")
        pm.connectAttr(self.blend2_att, pb_node+".weight")
        pm.connectAttr(pb_node+".outRotate", self.eff_loc.attr("rotate"))
        node = aop.gear_mulmatrix_op(self.ik_ref.attr("worldMatrix"), self.eff_loc.attr("parentInverseMatrix"))
        dm_node1 = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node1+".inputMatrix")
        pm.connectAttr(dm_node1+".outputRotate", pb_node+".inRotate2")
        # use blendcolors to blend scale
        bc_node = pm.createNode("blendColors")
        pm.connectAttr(self.blend_att, bc_node+".blender")
        pm.connectAttr(dm_node+".outputScale", bc_node+".color2")
        pm.connectAttr(dm_node1+".outputScale", bc_node+".color1")
        pm.connectAttr(bc_node+".output", self.eff_loc.attr("scale"))

        # Twist references ---------------------------------
        pm.connectAttr(self.mid_ctl.attr("translate"), self.tws1_npo.attr("translate"))
        pm.connectAttr(self.mid_ctl.attr("rotate"), self.tws1_npo.attr("rotate"))
        pm.connectAttr(self.mid_ctl.attr("scale"), self.tws1_npo.attr("scale"))


        node = aop.gear_mulmatrix_op(self.eff_loc.attr("worldMatrix"), self.tws3_npo.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputTranslate", self.tws3_npo.attr("translate"))
        node = aop.gear_mulmatrix_op(self.bone1.attr("worldMatrix"), self.tws3_npo.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputRotate", self.tws3_npo.attr("rotate"))

        node = aop.gear_mulmatrix_op(self.tws_ref.attr("worldMatrix"), self.tws3_rot.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputRotate", self.tws3_rot.attr("rotate"))


        # knee thickness connection
        if self.negate:
            node = nod.createMulNode([self.knee_thickness_att,self.knee_thickness_att], [0.5,-0.5,0], [self.tws1_loc+".translateX",self.tws2_loc+".translateX"])
        else:
            node = nod.createMulNode([self.knee_thickness_att,self.knee_thickness_att], [-0.5,0.5,0], [self.tws1_loc+".translateX",self.tws2_loc+".translateX"])

        # connect both tws1 and tws2  (mid tws)
        self.tws0_rot.setAttr("sx", .001)
        self.tws3_rot.setAttr("sx", .001)

        add_node = nod.createAddNode(self.roundness0_att, .001)
        pm.connectAttr(add_node+".output", self.tws1_rot.attr("sx"))

        add_node = nod.createAddNode(self.roundness1_att, .001)
        pm.connectAttr(add_node+".output", self.tws2_rot.attr("sx"))

        #Roll Shoulder--use aimconstraint withour uovwctor to solve the stable twist

        if self.negate:
            node = aop.aimCns(self.tws0_loc, self.mid_ctl, axis="-xy", wupType=4, wupVector=[0,1,0], wupObject=self.tws0_npo, maintainOffset=False)
        else:
            node = aop.aimCns(self.tws0_loc, self.mid_ctl, axis="xy", wupType=4, wupVector=[0,1,0], wupObject=self.tws0_npo, maintainOffset=False)


        # Volume -------------------------------------------
        distA_node = nod.createDistNode(self.tws0_loc, self.tws1_npo)
        distB_node = nod.createDistNode(self.tws1_npo, self.tws3_loc)
        add_node = nod.createAddNode(distA_node+".distance", distB_node+".distance")
        div_node = nod.createDivNode(add_node+".output", self.root.attr("sx"))

        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(self.root.attr("worldMatrix"), dm_node+".inputMatrix")

        div_node2 = nod.createDivNode(div_node+".outputX", dm_node+".outputScaleX")
        self.volDriver_att = div_node2+".outputX"

        # Divisions ----------------------------------------
        # div mid constraint to mid ctl
        node = aop.gear_mulmatrix_op(self.mid_ctl.attr("worldMatrix"), self.div_mid.attr("parentInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputTranslate", self.div_mid.attr("translate"))
        pm.connectAttr(dm_node+".outputRotate", self.div_mid.attr("rotate"))

        # at 0 or 1 the division will follow exactly the rotation of the controler.. and we wont have this nice tangent + roll
        scl_1_perc = []
        scl_2_perc = []

        for i, div_cnsUp in enumerate(self.div_cnsUp):

            if i < (self.settings["div0"]+1):
                perc = i/ (self.settings["div0"]+1.0)
            elif i < (self.settings["div0"] + 2):
                perc = .95

            perc = max(.001, min(.99, perc))

            # Roll
            if self.negate:
                node = aop.gear_rollsplinekine_op(div_cnsUp, [self.tws1_rot, self.tws0_rot], 1-perc, 20)

            else:
                node = aop.gear_rollsplinekine_op(div_cnsUp, [self.tws0_rot, self.tws1_rot], perc, 20)
            pm.connectAttr(self.resample_att, node+".resample")
            pm.connectAttr(self.absolute_att, node+".absolute")

            scl_1_perc.append(perc/2)
            scl_2_perc.append(perc)
        scl_1_perc.append(0.5)
        scl_2_perc.append(1)
        for i, div_cnsDn in enumerate(self.div_cnsDn):

            if i == (0):
                perc = .05
            elif i < (self.settings["div1"]+1):
                perc = i/ (self.settings["div1"]+1.0)
            elif i < (self.settings["div1"] + 2):
                perc = .95

            perc = max(.001, min(.990, perc))

            # Roll
            if self.negate:
                node = aop.gear_rollsplinekine_op(div_cnsDn, [self.tws3_rot, self.tws2_rot], 1-perc, 20)

            else:
                node = aop.gear_rollsplinekine_op(div_cnsDn, [self.tws2_rot, self.tws3_rot], perc, 20)
            pm.connectAttr(self.resample_att, node+".resample")
            pm.connectAttr(self.absolute_att, node+".absolute")

            scl_1_perc.append(perc/2+0.5)
            scl_2_perc.append(1-perc)
        # Squash n Stretch
        for i, div_cns in enumerate(self.div_cns):
            node = aop.gear_squashstretch2_op(div_cns, None, pm.getAttr(self.volDriver_att), "x")
            pm.connectAttr(self.volume_att, node+".blend")
            pm.connectAttr(self.volDriver_att, node+".driver")
            pm.connectAttr(self.st_att[i], node+".stretch")
            pm.connectAttr(self.sq_att[i], node+".squash")
            # get the first mult_node after sq op
            mult_node = pm.listHistory(node, future=True )[1]
            # linear blend effector scale
            bc_node = pm.createNode("blendColors")
            bc_node.setAttr("color2R", 1)
            bc_node.setAttr("color2G", 1)
            bc_node.setAttr("blender", scl_1_perc[i])
            pm.connectAttr(self.eff_loc.attr("scale"), bc_node+".color1")
            # linear blend mid scale
            bc_node2 = pm.createNode("blendColors")
            bc_node2.setAttr("color2R", 1)
            bc_node2.setAttr("color2G", 1)
            bc_node2.setAttr("blender", scl_2_perc[i])
            pm.connectAttr(self.mid_ctl.attr("scale"), bc_node2+".color1")
            # mid_ctl scale * effector scale
            mult_node2 = pm.createNode("multiplyDivide")
            pm.connectAttr(bc_node2+".output", mult_node2+".input1")
            pm.connectAttr(bc_node+".output", mult_node2+".input2")
            # plug to sq scale
            pm.connectAttr(mult_node2+".output", mult_node+".input2")

        # match IK/FK ref
        pm.connectAttr(self.bone0.attr("rotate"), self.match_fk0.attr("rotate"))
        pm.connectAttr(self.bone0.attr("translate"), self.match_fk0.attr("translate"))
        pm.connectAttr(self.bone1.attr("rotate"), self.match_fk1.attr("rotate"))
        pm.connectAttr(self.bone1.attr("translate"), self.match_fk1.attr("translate"))

        return

    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    # TODO: replace bone0 and control objects by loc connections
    def setRelation(self):
        self.relatives["root"] = self.div_cns[0]
        self.relatives["knee"] = self.div_cns[self.settings["div0"] + 2]
        self.relatives["ankle"] = self.div_cns[-1]
        self.relatives["eff"] = self.eff_loc

        self.jointRelatives["root"] = 0
        self.jointRelatives["knee"] = self.settings["div0"] + 2
        self.jointRelatives["ankle"] = len(self.div_cns)
        self.jointRelatives["eff"] = len(self.div_cns)
    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.connect_standardWithIkRef()
        # fk isolation connection
        self.connect_standardWithRotRef(self.settings["fkrefarray"], self.fk_cns)
