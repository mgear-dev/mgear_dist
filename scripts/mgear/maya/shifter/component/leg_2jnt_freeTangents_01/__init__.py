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

        self.WIP = self.options["mode"]

        self.normal = self.getNormalFromPos(self.guide.apos)

        self.length0 = vec.getDistance(self.guide.apos[0], self.guide.apos[1])
        self.length1 = vec.getDistance(self.guide.apos[1], self.guide.apos[2])
        self.length2 = vec.getDistance(self.guide.apos[2], self.guide.apos[3])

        # 1 bone chain for upv ref
        self.legChainUpvRef= pri.add2DChain(self.root, self.getName("legUpvRef%s_jnt"), [self.guide.apos[0],self.guide.apos[2]], self.normal, False, self.WIP)
        self.legChainUpvRef[1].setAttr("jointOrientZ", self.legChainUpvRef[1].getAttr("jointOrientZ")*-1)



        #extra neutral pose
        t = tra.getTransformFromPos(self.guide.apos[0])

        self.root_npo = pri.addTransform(self.root, self.getName("root_npo"), t)
        self.root_ctl = self.addCtl(self.root_npo, "root_ctl", t, self.color_fk, "circle", w=self.length0/6)

        # FK Controlers -----------------------------------
        t = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.normal, "xz", self.negate)
        self.fk0_npo = pri.addTransform(self.root_ctl, self.getName("fk0_npo"), t)
        self.fk0_ctl = self.addCtl(self.fk0_npo, "fk0_ctl", t, self.color_fk, "cube", w=self.length0, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length0*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk0_ctl)

        t = tra.getTransformLookingAt(self.guide.apos[1], self.guide.apos[2], self.normal, "xz", self.negate)
        self.fk1_npo = pri.addTransform(self.fk0_ctl, self.getName("fk1_npo"), t)
        self.fk1_ctl = self.addCtl(self.fk1_npo, "fk1_ctl", t, self.color_fk, "cube", w=self.length1, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length1*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk1_ctl)

        t = tra.getTransformLookingAt(self.guide.apos[2], self.guide.apos[3], self.normal, "xz", self.negate)
        self.fk2_npo = pri.addTransform(self.fk1_ctl, self.getName("fk2_npo"), t)
        self.fk2_ctl = self.addCtl(self.fk2_npo, "fk2_ctl", t, self.color_fk, "cube", w=self.length2, h=self.size*.1, d=self.size*.1, po=dt.Vector(.5*self.length2*self.n_factor,0,0))
        att.setKeyableAttributes(self.fk2_ctl)

        self.fk_ctl = [self.fk0_ctl, self.fk1_ctl, self.fk2_ctl]

        for  x in self.fk_ctl:
            att.setInvertMirror(x, ["tx", "ty", "tz"])

        # IK Controlers -----------------------------------

        self.ik_cns = pri.addTransformFromPos(self.root_ctl, self.getName("ik_cns"), self.guide.pos["ankle"])

        self.ikcns_ctl = self.addCtl(self.ik_cns, "ikcns_ctl", tra.getTransformFromPos(self.guide.pos["ankle"]), self.color_ik, "null", w=self.size*.12)
        att.setInvertMirror(self.ikcns_ctl, ["tx"])

        m = tra.getTransformLookingAt(self.guide.pos["ankle"], self.guide.pos["eff"], self.x_axis, "zx", False)
        self.ik_ctl = self.addCtl(self.ikcns_ctl, "ik_ctl", tra.getTransformFromPos(self.guide.pos["ankle"]), self.color_ik, "cube", w=self.size*.12, h=self.size*.12, d=self.size*.12)
        att.setKeyableAttributes(self.ik_ctl)
        att.setRotOrder(self.ik_ctl, "XZY")
        att.setInvertMirror(self.ik_ctl, ["tx", "ry", "rz"])

        # upv
        v = self.guide.apos[2] - self.guide.apos[0]
        v = self.normal ^ v
        v.normalize()
        v *= self.size*.5
        v += self.guide.apos[1]

        self.upv_cns = pri.addTransformFromPos(self.root, self.getName("upv_cns"), v)

        self.upv_ctl = self.addCtl(self.upv_cns, "upv_ctl", tra.getTransform(self.upv_cns), self.color_ik, "diamond", w=self.size*.12)
        att.setInvertMirror(self.upv_ctl, ["tx"])

        # References --------------------------------------
        self.ik_ref = pri.addTransform(self.ik_ctl, self.getName("ik_ref"), tra.getTransform(self.ik_ctl))
        self.fk_ref = pri.addTransform(self.fk_ctl[2], self.getName("fk_ref"), tra.getTransform(self.ik_ctl))

        # Chain --------------------------------------------
        # The outputs of the ikfk2bone solver
        self.bone0 = pri.addLocator(self.root_ctl, self.getName("0_bone"), tra.getTransform(self.fk_ctl[0]))
        self.bone0_shp = self.bone0.getShape()
        self.bone0_shp.setAttr("localPositionX", self.n_factor*.5)
        self.bone0_shp.setAttr("localScale", .5, 0, 0)
        self.bone0.setAttr("sx", self.length0)
        self.bone0.setAttr("visibility", False)

        self.bone1 = pri.addLocator(self.root_ctl, self.getName("1_bone"), tra.getTransform(self.fk_ctl[1]))
        self.bone1_shp = self.bone1.getShape()
        self.bone1_shp.setAttr("localPositionX", self.n_factor*.5)
        self.bone1_shp.setAttr("localScale", .5, 0, 0)
        self.bone1.setAttr("sx", self.length1)
        self.bone1.setAttr("visibility", False)

        tA = tra.getTransformLookingAt(self.guide.apos[0], self.guide.apos[1], self.normal, "xz", self.negate)
        tA = tra.setMatrixPosition(tA, self.guide.apos[1])
        tB = tra.getTransformLookingAt(self.guide.apos[1], self.guide.apos[2], self.normal, "xz", self.negate)
        t = tra.getInterpolateTransformMatrix(tA, tB)
        self.ctrn_loc = pri.addTransform(self.root, self.getName("ctrn_loc"), t)
        self.eff_loc  = pri.addTransformFromPos(self.root_ctl, self.getName("eff_loc"), self.guide.apos[2])

        # tws_ref
        t = tra.getRotationFromAxis(dt.Vector(0,-1,0), self.normal, "xz", self.negate)
        t = tra.setMatrixPosition(t, self.guide.pos["ankle"])

        self.tws_ref = pri.addTransform(self.eff_loc, self.getName("tws_ref"), t)

        # Mid Controler ------------------------------------
        # self.mid_ctl = self.addCtl(self.ctrn_loc, "mid_ctl", tra.getTransform(self.ctrn_loc), self.color_ik, "sphere", w=self.size*.2)
        # att.setInvertMirror(self.mid_ctl, ["tx", "ty", "tz"])

        t = tra.getTransform(self.ctrn_loc)
        self.mid_cns = pri.addTransform(self.ctrn_loc, self.getName("mid_cns"), t)
        self.mid_ctl = self.addCtl(self.mid_cns, "mid_ctl", t, self.color_ik, "sphere", w=self.size*.2)
        att.setInvertMirror(self.mid_ctl, ["tx", "ty", "tz"])

        # Twist references ---------------------------------
        x = dt.Vector(0,-1,0)
        x = x * tra.getTransform(self.eff_loc)
        z = dt.Vector(self.normal.x,self.normal.y,self.normal.z)
        z = z * tra.getTransform(self.eff_loc)

        m = tra.getRotationFromAxis(x, z, "xz", self.negate)
        m = tra.setMatrixPosition(m, tra.getTranslation(self.ik_ctl))

        self.tws0_loc = pri.addTransform(self.root_ctl, self.getName("tws0_loc"), tra.getTransform(self.fk_ctl[0]))
        self.tws0_rot = pri.addTransform(self.tws0_loc, self.getName("tws0_rot"), tra.getTransform(self.fk_ctl[0]))

        self.tws1_loc = pri.addTransform(self.ctrn_loc, self.getName("tws1_loc"), tra.getTransform(self.ctrn_loc))
        self.tws1_rot = pri.addTransform(self.tws1_loc, self.getName("tws1_rot"), tra.getTransform(self.ctrn_loc))

        self.tws1A_npo = pri.addTransform(self.mid_ctl, self.getName("tws1A_npo"), tA)
        self.tws1A_loc = pri.addTransform(self.tws1A_npo, self.getName("tws1A_loc"), tA)
        self.tws1B_npo = pri.addTransform(self.mid_ctl, self.getName("tws1B_npo"), tB)
        self.tws1B_loc = pri.addTransform(self.tws1B_npo, self.getName("tws1B_loc"), tB)

        self.tws2_npo = pri.addTransform(self.root, self.getName("tws2_npo"), tra.getTransform(self.fk_ctl[2]))
        self.tws2_loc = pri.addTransform(self.tws2_npo, self.getName("tws2_loc"), tra.getTransform(self.fk_ctl[2]))
        self.tws2_rot = pri.addTransform(self.tws2_npo, self.getName("tws2_rot"), tra.getTransform(self.fk_ctl[2]))

        # Roll twist chain ---------------------------------
        #Arm
        self.uplegChainPos = []
        ii = 1.0/(self.settings["div0"]+1)
        i = 0.0
        for p in range(self.settings["div0"]+2):
            self.uplegChainPos.append(vec.linearlyInterpolate(self.guide.pos["root"], self.guide.pos["knee"], blend=i))
            i=i+ii

        self.uplegTwistChain= pri.add2DChain(self.root, self.getName("uplegTwist%s_jnt"), self.uplegChainPos, self.normal, False, self.WIP)

        #Forearm
        self.lowlegChainPos = []
        ii = 1.0/(self.settings["div1"]+1)
        i = 0.0
        for p in range(self.settings["div1"]+2):
            self.lowlegChainPos.append(vec.linearlyInterpolate(self.guide.pos["knee"], self.guide.pos["ankle"], blend=i))
            i=i+ii

        self.lowlegTwistChain= pri.add2DChain(self.root, self.getName("lowlegTwist%s_jnt"), self.lowlegChainPos, self.normal, False, self.WIP)
        pm.parent(self.lowlegTwistChain[0], self.mid_ctl)

        #Hand Aux chain and nonroll
        self.auxChainPos = []
        ii = .5
        i = 0.0
        for p in range(3):
            self.auxChainPos.append(vec.linearlyInterpolate(self.guide.pos["ankle"], self.guide.pos["eff"], blend=i))
            i=i+ii
        t = self.root.getMatrix(worldSpace=True)
        rotAux = 90
        rotNpo = -90
        self.aux_npo = pri.addTransform(self.root, self.getName("aux_npo"), t)
        self.auxTwistChain = pri.add2DChain(self.aux_npo, self.getName("auxTwist%s_jnt"), self.lowlegChainPos[:3], self.normal, False, self.WIP)
        #Non Roll join ref ---------------------------------
        self.uplegRollRef = pri.add2DChain(self.root, self.getName("uplegRollRef%s_jnt"), self.uplegChainPos[:2], self.normal, False,self.WIP)


        self.lowlegRollRef = pri.add2DChain(self.aux_npo, self.getName("lowlegRollRef%s_jnt"), self.lowlegChainPos[:2], self.normal, False, self.WIP)
        # Divisions ----------------------------------------
        # We have at least one division at the start, the end and one for the elbow. + 2 for knee angle control
        self.divisions = self.settings["div0"] + self.settings["div1"] + 4

        self.div_cns = []
        for i in range(self.divisions):

            div_cns = pri.addTransform(self.root_ctl, self.getName("div%s_loc" % i))

            self.div_cns.append(div_cns)

            self.jnt_pos.append([div_cns, i])

        # End reference ------------------------------------
        # To help the deformation on the ankle
        self.end_ref = pri.addTransform(self.eff_loc, self.getName("end_ref"), m)
        for a in "xyz":
            self.end_ref.attr("s%s"%a).set(1.0)
        if self.negate:
            self.end_ref.attr("ry").set(-180.0)
        self.jnt_pos.append([self.end_ref, 'end'])

        # Tangent controls
        t = tra.getInterpolateTransformMatrix(self.fk_ctl[0], self.tws1A_npo, .5)
        self.uplegTangentA_loc = pri.addTransform(self.root_ctl, self.getName("uplegTangentA_loc"), self.fk_ctl[0].getMatrix(worldSpace=True))
        self.uplegTangentA_npo = pri.addTransform(self.uplegTangentA_loc, self.getName("uplegTangentA_npo"), t)
        self.uplegTangentA_ctl = self.addCtl(self.uplegTangentA_npo, "uplegTangentA_ctl", t, self.color_ik, "circle", w=self.size*.2, ro=dt.Vector(0,0,1.570796))

        t = tra.getInterpolateTransformMatrix(self.fk_ctl[0], self.tws1A_npo, .9)
        self.uplegTangentB_npo = pri.addTransform(self.tws1A_loc, self.getName("uplegTangentB_npo"), t)
        self.uplegTangentB_ctl = self.addCtl(self.uplegTangentB_npo, "uplegTangentB_ctl", t, self.color_ik, "circle", w=self.size*.1, ro=dt.Vector(0,0,1.570796))

        tC = self.tws1B_npo.getMatrix(worldSpace=True)
        tC = tra.setMatrixPosition(tC, self.guide.apos[2])
        t = tra.getInterpolateTransformMatrix(self.tws1B_npo, tC, .1)
        self.lowlegTangentA_npo = pri.addTransform(self.tws1B_loc, self.getName("lowlegTangentA_npo"), t)
        self.lowlegTangentA_ctl = self.addCtl(self.lowlegTangentA_npo, "lowlegTangentA_ctl", t, self.color_ik, "circle", w=self.size*.1, ro=dt.Vector(0,0,1.570796))

        t = tra.getInterpolateTransformMatrix(self.tws1B_npo, tC, .5)
        self.lowlegTangentB_loc = pri.addTransform(self.root, self.getName("lowlegTangentB_loc"), tC)
        self.lowlegTangentB_npo = pri.addTransform(self.lowlegTangentB_loc, self.getName("lowlegTangentB_npo"), t)
        self.lowlegTangentB_ctl = self.addCtl(self.lowlegTangentB_npo, "lowlegTangentB_ctl", t, self.color_ik, "circle", w=self.size*.2, ro=dt.Vector(0,0,1.570796))

        t = self.mid_ctl.getMatrix(worldSpace=True)
        self.kneeTangent_npo = pri.addTransform(self.mid_ctl, self.getName("kneeTangent_npo"), t)
        self.kneeTangent_ctl = self.addCtl(self.kneeTangent_npo, "kneeTangent_ctl", t, self.color_fk, "circle", w=self.size*.25, ro=dt.Vector(0,0,1.570796))

        # match IK FK references
        self.match_fk0_off = pri.addTransform(self.root, self.getName("matchFk0_npo"), tra.getTransform(self.fk_ctl[1]))
        self.match_fk0 = pri.addTransform(self.match_fk0_off, self.getName("fk0_mth"), tra.getTransform(self.fk_ctl[0]))
        self.match_fk1_off = pri.addTransform(self.root, self.getName("matchFk1_npo"), tra.getTransform(self.fk_ctl[2]))
        self.match_fk1 = pri.addTransform(self.match_fk1_off, self.getName("fk1_mth"), tra.getTransform(self.fk_ctl[1]))
        self.match_fk2 = pri.addTransform(self.ik_ctl, self.getName("fk2_mth"), tra.getTransform(self.fk_ctl[2]))

        self.match_ik = pri.addTransform(self.fk2_ctl, self.getName("ik_mth"), tra.getTransform(self.ik_ctl))
        self.match_ikUpv = pri.addTransform(self.fk0_ctl, self.getName("upv_mth"), tra.getTransform(self.upv_ctl))


    def addAttributes(self):

        # Anim -------------------------------------------
        self.blend_att = self.addAnimParam("blend", "Fk/Ik Blend", "double", self.settings["blend"], 0, 1)
        self.roll_att = self.addAnimParam("roll", "Roll", "double", 0, -180, 180)

        self.scale_att = self.addAnimParam("ikscale", "Scale", "double", 1, .001, 99)
        self.maxstretch_att = self.addAnimParam("maxstretch", "Max Stretch", "double", 1.5, 1, 99)
        self.slide_att = self.addAnimParam("slide", "Slide", "double", .5, 0, 1)
        self.softness_att = self.addAnimParam("softness", "Softness", "double", 0, 0, 1)
        self.reverse_att = self.addAnimParam("reverse", "Reverse", "double", 0, 0, 1)
        self.roundness_att = self.addAnimParam("roundness", "Roundness", "double", 0, 0, 1)
        self.volume_att = self.addAnimParam("volume", "Volume", "double", 1, 0, 1)
        self.tangentVis_att =  self.addAnimParam("Tangent_vis", "Tangent vis", "bool", False)

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

        if self.settings["pinrefarray"]:
            ref_names = self.settings["pinrefarray" ].split(",")
            ref_names = ["Auto"] + ref_names
            if len(ref_names) > 1:
                self.pin_att = self.addAnimEnumParam("kneeref", "Knee Ref", 0, ref_names)


        # Setup ------------------------------------------
        # Eval Fcurve
        self.st_value = fcu.getFCurveValues(self.settings["st_profile"], self.divisions)
        self.sq_value = fcu.getFCurveValues(self.settings["sq_profile"], self.divisions)

        self.st_att = [ self.addSetupParam("stretch_%s"%i, "Stretch %s"%i, "double", self.st_value[i], -1, 0) for i in range(self.divisions) ]
        self.sq_att = [ self.addSetupParam("squash_%s"%i, "Squash %s"%i, "double", self.sq_value[i], 0, 1) for i in range(self.divisions) ]

        self.resample_att = self.addSetupParam("resample", "Resample", "bool", True)
        self.absolute_att = self.addSetupParam("absolute", "Absolute", "bool", False)

    def addOperators(self):

        # 1 bone chain Upv ref =====================================================================================
        self.ikHandleUpvRef = pri.addIkHandle(self.root, self.getName("ikHandleLegChainUpvRef"), self.legChainUpvRef, "ikSCsolver")
        pm.pointConstraint(self.ik_ctl, self.ikHandleUpvRef)
        pm.parentConstraint( self.legChainUpvRef[0], self.upv_cns, mo=True)

        # Visibilities -------------------------------------
        #shape.dispGeometry
        # fk
        fkvis_node = nod.createReverseNode(self.blend_att)

        for shp in self.fk0_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))
        for shp in self.fk1_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))
        for shp in self.fk2_ctl.getShapes():
            pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))

        # ik
        for shp in self.upv_ctl.getShapes():
            pm.connectAttr(self.blend_att, shp.attr("visibility"))
        for shp in self.ikcns_ctl.getShapes():
            pm.connectAttr(self.blend_att, shp.attr("visibility"))
        for shp in self.ik_ctl.getShapes():
            pm.connectAttr(self.blend_att, shp.attr("visibility"))

        # IK Solver -----------------------------------------
        out = [self.bone0, self.bone1, self.ctrn_loc, self.eff_loc]
        node = aop.gear_ikfk2bone_op(out, self.root_ctl, self.ik_ref, self.upv_ctl, self.fk_ctl[0], self.fk_ctl[1], self.fk_ref, self.length0, self.length1, self.negate)

        pm.connectAttr(self.blend_att, node+".blend")
        pm.connectAttr(self.roll_att, node+".roll")
        pm.connectAttr(self.scale_att, node+".scaleA")
        pm.connectAttr(self.scale_att, node+".scaleB")
        pm.connectAttr(self.maxstretch_att, node+".maxstretch")
        pm.connectAttr(self.slide_att, node+".slide")
        pm.connectAttr(self.softness_att, node+".softness")
        pm.connectAttr(self.reverse_att, node+".reverse")

        # Twist references ---------------------------------
        node = aop.gear_mulmatrix_op(self.eff_loc.attr("worldMatrix"), self.root.attr("worldInverseMatrix"))
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputTranslate", self.tws2_npo.attr("translate"))


        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".output", dm_node+".inputMatrix")
        pm.connectAttr(dm_node+".outputRotate", self.tws2_npo.attr("rotate"))

        #spline IK for  twist jnts
        self.ikhUpLegTwist, self.uplegTwistCrv = aop.splineIK(self.getName("uplegTwist"), self.uplegTwistChain, parent=self.root, cParent=self.bone0 )
        self.ikhLowLegTwist, self.lowlegTwistCrv = aop.splineIK(self.getName("lowlegTwist"), self.lowlegTwistChain, parent=self.root, cParent=self.bone1 )

        #references
        self.ikhUpLegRef, self.tmpCrv = aop.splineIK(self.getName("uplegRollRef"), self.uplegRollRef, parent=self.root, cParent=self.bone0 )
        self.ikhLowLegRef, self.tmpCrv = aop.splineIK(self.getName("lowlegRollRef"), self.lowlegRollRef, parent=self.root, cParent=self.eff_loc )
        self.ikhAuxTwist, self.tmpCrv = aop.splineIK(self.getName("auxTwist"), self.auxTwistChain, parent=self.root, cParent=self.eff_loc )

        #setting connexions for ikhUpLegTwist
        self.ikhUpLegTwist.attr("dTwistControlEnable").set(True)
        self.ikhUpLegTwist.attr("dWorldUpType").set(4)
        self.ikhUpLegTwist.attr("dWorldUpAxis").set(3)
        self.ikhUpLegTwist.attr("dWorldUpVectorZ").set(1.0)
        self.ikhUpLegTwist.attr("dWorldUpVectorY").set(0.0)
        self.ikhUpLegTwist.attr("dWorldUpVectorEndZ").set(1.0)
        self.ikhUpLegTwist.attr("dWorldUpVectorEndY").set(0.0)
        pm.connectAttr(self.uplegRollRef[0].attr("worldMatrix[0]"), self.ikhUpLegTwist.attr("dWorldUpMatrix"))
        pm.connectAttr(self.bone0.attr("worldMatrix[0]"), self.ikhUpLegTwist.attr("dWorldUpMatrixEnd"))

        #setting connexions for ikhAuxTwist
        self.ikhAuxTwist.attr("dTwistControlEnable").set(True)
        self.ikhAuxTwist.attr("dWorldUpType").set(4)
        self.ikhAuxTwist.attr("dWorldUpAxis").set(3)
        self.ikhAuxTwist.attr("dWorldUpVectorZ").set(1.0)
        self.ikhAuxTwist.attr("dWorldUpVectorY").set(0.0)
        self.ikhAuxTwist.attr("dWorldUpVectorEndZ").set(1.0)
        self.ikhAuxTwist.attr("dWorldUpVectorEndY").set(0.0)
        pm.connectAttr(self.lowlegRollRef[0].attr("worldMatrix[0]"), self.ikhAuxTwist.attr("dWorldUpMatrix"))
        pm.connectAttr(self.tws_ref.attr("worldMatrix[0]"), self.ikhAuxTwist.attr("dWorldUpMatrixEnd"))
        pm.connectAttr(self.auxTwistChain[1].attr("rx"), self.ikhLowLegTwist.attr("twist"))

        pm.parentConstraint(self.bone1, self.aux_npo, maintainOffset=True)

        #scale arm length for twist chain (not the squash and stretch)
        arclen_node = pm.arclen(self.uplegTwistCrv, ch=True)
        alAttrUpLeg = arclen_node.attr("arcLength")
        muldiv_nodeArm =  pm.createNode("multiplyDivide")
        pm.connectAttr(arclen_node.attr("arcLength"), muldiv_nodeArm.attr("input1X"))
        muldiv_nodeArm.attr("input2X").set(alAttrUpLeg.get())
        muldiv_nodeArm.attr("operation").set(2)
        for jnt in self.uplegTwistChain:
            pm.connectAttr(muldiv_nodeArm.attr("outputX"),jnt.attr("sx"))

        #scale forearm length for twist chain (not the squash and stretch)
        arclen_node = pm.arclen(self.lowlegTwistCrv, ch=True)
        alAttrLowLeg = arclen_node.attr("arcLength")
        muldiv_nodeLowLeg =  pm.createNode("multiplyDivide")
        pm.connectAttr(arclen_node.attr("arcLength"), muldiv_nodeLowLeg.attr("input1X"))
        muldiv_nodeLowLeg.attr("input2X").set(alAttrLowLeg.get())
        muldiv_nodeLowLeg.attr("operation").set(2)
        for jnt in self.lowlegTwistChain:
            pm.connectAttr(muldiv_nodeLowLeg.attr("outputX"),jnt.attr("sx"))

        #scale compensation for the first  twist join
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(self.root.attr("worldMatrix[0]"), dm_node.attr("inputMatrix"))
        pm.connectAttr(dm_node.attr("outputScale"), self.uplegTwistChain[0].attr("inverseScale"))
        pm.connectAttr(dm_node.attr("outputScale"), self.lowlegTwistChain[0].attr("inverseScale"))

        #tangent controls
        muldiv_node =  pm.createNode("multiplyDivide")
        muldiv_node.attr("input2X").set(-1)
        pm.connectAttr(self.tws1A_npo.attr("rz"), muldiv_node.attr("input1X"))
        muldiv_nodeBias =  pm.createNode("multiplyDivide")
        pm.connectAttr(muldiv_node.attr("outputX"), muldiv_nodeBias.attr("input1X"))
        pm.connectAttr(self.roundness_att, muldiv_nodeBias.attr("input2X"))
        pm.connectAttr(muldiv_nodeBias.attr("outputX"), self.tws1A_loc.attr("rz") )
        if self.negate:
            axis = "xz"
        else:
            axis = "-xz"
        aop.aimCns(self.tws1A_npo, self.tws0_loc, axis=axis, wupType=2, wupVector=[0,0,1], wupObject=self.mid_ctl, maintainOffset=False)

        aop.aimCns(self.lowlegTangentB_loc, self.lowlegTangentA_npo, axis=axis, wupType=2, wupVector=[0,0,1], wupObject=self.mid_ctl, maintainOffset=False)
        pm.pointConstraint(self.eff_loc, self.lowlegTangentB_loc)


        muldiv_node =  pm.createNode("multiplyDivide")
        muldiv_node.attr("input2X").set(-1)
        pm.connectAttr(self.tws1B_npo.attr("rz"), muldiv_node.attr("input1X"))
        muldiv_nodeBias =  pm.createNode("multiplyDivide")
        pm.connectAttr(muldiv_node.attr("outputX"), muldiv_nodeBias.attr("input1X"))
        pm.connectAttr(self.roundness_att, muldiv_nodeBias.attr("input2X"))
        pm.connectAttr(muldiv_nodeBias.attr("outputX"), self.tws1B_loc.attr("rz") )
        if self.negate:
            axis = "-xz"
        else:
            axis = "xz"
        aop.aimCns(self.tws1B_npo, self.tws2_loc, axis=axis, wupType=2, wupVector=[0,0,1], wupObject=self.mid_ctl, maintainOffset=False)

        aop.aimCns(self.uplegTangentA_loc, self.uplegTangentB_npo, axis=axis, wupType=2, wupVector=[0,0,1], wupObject=self.mid_ctl, maintainOffset=False)



        # Volume -------------------------------------------
        distA_node = nod.createDistNode(self.tws0_loc, self.tws1_loc)
        distB_node = nod.createDistNode(self.tws1_loc, self.tws2_loc)
        add_node = nod.createAddNode(distA_node+".distance", distB_node+".distance")
        div_node = nod.createDivNode(add_node+".output", self.root_ctl.attr("sx"))

        #comp scaling issue
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(self.root.attr("worldMatrix"), dm_node+".inputMatrix")

        div_node2 = nod.createDivNode(div_node+".outputX", dm_node+".outputScaleX")


        self.volDriver_att = div_node2+".outputX"

        # connecting tangent scaele compensation after volume to aboid duplicate some nodes ------------------------------
        distA_node = nod.createDistNode(self.tws0_loc, self.mid_ctl)
        distB_node = nod.createDistNode(self.mid_ctl, self.tws2_loc)


        div_nodeUpLeg = nod.createDivNode(distA_node+".distance",  dm_node.attr("outputScaleX"))
        div_node2 = nod.createDivNode(div_nodeUpLeg+".outputX", distA_node.attr("distance").get())
        pm.connectAttr(div_node2.attr("outputX"), self.tws1A_loc.attr("sx"))
        pm.connectAttr(div_node2.attr("outputX"), self.uplegTangentA_loc.attr("sx"))

        div_nodeLowLeg = nod.createDivNode(distB_node+".distance", dm_node.attr("outputScaleX"))
        div_node2 = nod.createDivNode(div_nodeLowLeg+".outputX", distB_node.attr("distance").get())
        pm.connectAttr(div_node2.attr("outputX"), self.tws1B_loc.attr("sx"))
        pm.connectAttr(div_node2.attr("outputX"), self.lowlegTangentB_loc.attr("sx"))

        #conection curve
        aop.gear_curvecns_op(self.uplegTwistCrv, [ self.uplegTangentA_loc, self.uplegTangentA_ctl, self.uplegTangentB_ctl,self.kneeTangent_ctl ])
        aop.gear_curvecns_op(self.lowlegTwistCrv, [ self.kneeTangent_ctl, self.lowlegTangentA_ctl, self.lowlegTangentB_ctl,self.lowlegTangentB_loc ])

        #Tangent controls vis
        pm.connectAttr( self.tangentVis_att, self.uplegTangentA_ctl.attr("visibility"))
        pm.connectAttr( self.tangentVis_att, self.uplegTangentB_ctl.attr("visibility"))
        pm.connectAttr( self.tangentVis_att, self.lowlegTangentA_ctl.attr("visibility"))
        pm.connectAttr( self.tangentVis_att, self.lowlegTangentB_ctl.attr("visibility"))
        pm.connectAttr( self.tangentVis_att, self.kneeTangent_ctl.attr("visibility"))


        # Divisions ----------------------------------------
        # at 0 or 1 the division will follow exactly the rotation of the controler.. and we wont have this nice tangent + roll
        for i, div_cns in enumerate(self.div_cns):
            if i < (self.settings["div0"]+2):
                mulmat_node = aop.gear_mulmatrix_op(self.uplegTwistChain[i]+".worldMatrix", div_cns+".parentInverseMatrix")
            else:
                mulmat_node = aop.gear_mulmatrix_op(self.lowlegTwistChain[i-(self.settings["div0"]+2)]+".worldMatrix", div_cns+".parentInverseMatrix")
            dm_node = nod.createDecomposeMatrixNode(mulmat_node+".output")
            pm.connectAttr(dm_node+".outputTranslate", div_cns+".t")
            pm.connectAttr(dm_node+".outputRotate", div_cns+".r")


            # Squash n Stretch
            node = aop.gear_squashstretch2_op(div_cns, None, pm.getAttr(self.volDriver_att), "x")
            pm.connectAttr(self.volume_att, node+".blend")
            pm.connectAttr(self.volDriver_att, node+".driver")
            pm.connectAttr(self.st_att[i], node+".stretch")
            pm.connectAttr(self.sq_att[i], node+".squash")

        # NOTE: next line fix the issue on meters. 
        # This is special case becasuse the IK solver from mGear use the scale as lenght and we have shear
        # TODO: check for a more clean and elegant solution instead of re-match the world matrix again
        tra.matchWorldTransform(self.fk_ctl[0], self.match_fk0_off)
        tra.matchWorldTransform(self.fk_ctl[1], self.match_fk1_off)
        tra.matchWorldTransform(self.fk_ctl[0], self.match_fk0)
        tra.matchWorldTransform(self.fk_ctl[1], self.match_fk1)


        # match IK/FK ref
        pm.parentConstraint(self.bone0, self.match_fk0_off, mo=True)
        pm.parentConstraint(self.bone1, self.match_fk1_off, mo=True)

        return

    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.div_cns[0]
        self.relatives["knee"] = self.div_cns[self.settings["div0"] +  2]
        self.relatives["ankle"] = self.div_cns[-1]
        self.relatives["eff"] = self.end_ref

        self.jointRelatives["root"] = 0
        self.jointRelatives["knee"] = self.settings["div0"] + 2
        self.jointRelatives["ankle"] = len(self.div_cns)
        self.jointRelatives["eff"] = len(self.div_cns)

    ## standard connection definition.
    # @param self
    def connect_standard(self):
        # self.connect_standardWithIkRef()
        self.parent.addChild(self.root)

        # Set the Ik Reference
        self.connectRef(self.settings["ikrefarray"], self.ik_cns)
        if self.settings["upvrefarray"]:
            self.connectRef("Auto,"+self.settings["upvrefarray"], self.upv_cns, True)
        if self.settings["pinrefarray"]:
            self.connectRef2("Auto,"+ self.settings["pinrefarray"], self.mid_cns, self.pin_att, [self.ctrn_loc], False)
