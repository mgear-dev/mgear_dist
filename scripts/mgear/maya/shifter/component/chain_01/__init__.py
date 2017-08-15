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

        self.isFk = self.settings["mode"] != 1
        self.isIk = self.settings["mode"] != 0
        self.isFkIk = self.settings["mode"] == 2

        self.WIP = self.options["mode"]


        # FK controllers ------------------------------------
        if self.isFk:
            self.fk_npo = []
            self.fk_ctl = []
            self.fk_ref = []
            self.fk_off = []
            t = self.guide.tra["root"]
            self.ik_cns = pri.addTransform(self.root, self.getName("ik_cns"), t)
            parent = self.ik_cns
            tOld = False
            fk_ctl = None
            for i, t in enumerate(tra.getChainTransform(self.guide.apos, self.normal, self.negate)):
                dist = vec.getDistance(self.guide.apos[i], self.guide.apos[i+1])
                if self.settings["neutralpose"] or not tOld:
                    tnpo = t
                else:
                    tnpo = tra.setMatrixPosition(tOld, tra.getPositionFromMatrix(t))
                if i:
                    tref = tra.setMatrixPosition(tOld, tra.getPositionFromMatrix(t))
                    fk_ref = pri.addTransform(fk_ctl, self.getName("fk%s_ref"%i), tref)
                    self.fk_ref.append(fk_ref)
                else:
                    tref = t
                fk_off = pri.addTransform(parent, self.getName("fk%s_off"%i), tref)
                fk_npo = pri.addTransform(fk_off, self.getName("fk%s_npo"%i), tnpo)
                fk_ctl = self.addCtl(fk_npo, "fk%s_ctl"%i, t, self.color_fk, "cube", w=dist, h=self.size*.1, d=self.size*.1, po=dt.Vector(dist*.5*self.n_factor,0,0))
                self.fk_off.append(fk_off)
                self.fk_npo.append(fk_npo)
                self.fk_ctl.append(fk_ctl)
                tOld = t

        # IK controllers ------------------------------------
        if self.isIk:

            normal = vec.getTransposedVector(self.normal, [self.guide.apos[0], self.guide.apos[1]], [self.guide.apos[-2], self.guide.apos[-1]])
            t = tra.getTransformLookingAt(self.guide.apos[-2], self.guide.apos[-1], normal, "xy", self.negate)
            t = tra.setMatrixPosition(t, self.guide.apos[-1])

            self.ik_cns = pri.addTransform(self.root, self.getName("ik_cns"), t)
            self.ikcns_ctl = self.addCtl(self.ik_cns, "ikcns_ctl", t, self.color_ik, "null", w=self.size)
            self.ik_ctl = self.addCtl(self.ikcns_ctl, "ik_ctl", t, self.color_ik, "cube", w=self.size*.3, h=self.size*.3, d=self.size*.3)
            att.setKeyableAttributes(self.ik_ctl, self.t_params)

            v = self.guide.apos[-1] - self.guide.apos[0]
            v = v ^ self.normal
            v.normalize()
            v *= self.size
            v += self.guide.apos[1]
            self.upv_cns = pri.addTransformFromPos(self.root, self.getName("upv_cns"), v)

            self.upv_ctl = self.addCtl(self.upv_cns, "upv_ctl", tra.getTransform(self.upv_cns), self.color_ik, "diamond", w=self.size*.1)
            att.setKeyableAttributes(self.upv_ctl, self.t_params)

            # Chain
            self.chain = pri.add2DChain(self.root, self.getName("chain"), self.guide.apos, self.normal, self.negate)
            self.chain[0].attr("visibility").set(self.WIP)

        # Chain of deformers -------------------------------
        self.loc = []
        parent = self.root
        for i, t in enumerate(tra.getChainTransform(self.guide.apos, self.normal, self.negate)):
            loc = pri.addTransform(parent, self.getName("%s_loc"%i), t)

            self.loc.append(loc)
            self.jnt_pos.append([loc, i, None, False])

    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):

        # Anim -------------------------------------------
        if self.isFkIk:
            self.blend_att = self.addAnimParam("blend", "Fk/Ik Blend", "double", self.settings["blend"], 0, 1)

        if self.isIk:
            self.roll_att = self.addAnimParam("roll", "Roll", "double", 0, -180, 180)

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


        # Visibilities -------------------------------------
        if self.isFkIk:
            # fk
            fkvis_node = nod.createReverseNode(self.blend_att)

            for fk_ctl in self.fk_ctl:
                for shp in fk_ctl.getShapes():
                    pm.connectAttr(fkvis_node+".outputX", shp.attr("visibility"))

            # ik
            for shp in self.upv_ctl.getShapes():
                pm.connectAttr(self.blend_att, shp.attr("visibility"))
            for shp in self.ikcns_ctl.getShapes():
                pm.connectAttr(self.blend_att, shp.attr("visibility"))
            for shp in self.ik_ctl.getShapes():
                pm.connectAttr(self.blend_att, shp.attr("visibility"))

        # FK Chain -----------------------------------------
        if self.isFk:
            for off, ref in zip(self.fk_off[1:], self.fk_ref):
                aop.gear_mulmatrix_op(ref.worldMatrix, off.parentInverseMatrix, off, "rt")
        # IK Chain -----------------------------------------
        if self.isIk:
            self.ikh = pri.addIkHandle(self.root, self.getName("ikh"), self.chain)
            self.ikh.attr("visibility").set(False)

            #Constraint and up vector
            pm.pointConstraint(self.ik_ctl, self.ikh, maintainOffset=False)
            pm.poleVectorConstraint(self.upv_ctl, self.ikh)

            # TwistTest
            if [round(elem, 4) for elem in tra.getTranslation(self.chain[1])] != [round(elem, 4) for elem in  self.guide.apos[1]]:
                add_nodeTwist = nod.createAddNode(180.0, self.roll_att)
                pm.connectAttr(add_nodeTwist+".output", self.ikh.attr("twist"))
            else:
                pm.connectAttr(self.roll_att, self.ikh.attr("twist"))

        # Chain of deformers -------------------------------
        for i, loc in enumerate(self.loc):

            if self.settings["mode"] == 0: # fk only
                pm.parentConstraint(self.fk_ctl[i], loc, maintainOffset=False)
                pm.connectAttr(self.fk_ctl[i]+".scale",  loc+".scale")

            elif self.settings["mode"] == 1: # ik only
                pm.parentConstraint( self.chain[i], loc, maintainOffset=False)

            elif self.settings["mode"] == 2: # fk/ik

                rev_node = nod.createReverseNode(self.blend_att)

                # orientation
                cns = pm.parentConstraint(self.fk_ctl[i], self.chain[i], loc, maintainOffset=False)
                cns.interpType.set(0)
                weight_att = pm.parentConstraint(cns, query=True, weightAliasList=True)
                pm.connectAttr(rev_node+".outputX", weight_att[0])
                pm.connectAttr(self.blend_att, weight_att[1])

                #scaling
                blend_node = pm.createNode("blendColors")
                pm.connectAttr(self.chain[i].attr("scale"), blend_node+".color1")
                pm.connectAttr(self.fk_ctl[i].attr("scale"), blend_node+".color2")
                pm.connectAttr(self.blend_att, blend_node+".blender")
                pm.connectAttr(blend_node+".output",  loc+".scale")

    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation between object from guide to rig.\n
    # @param self
    def setRelation(self):

        self.relatives["root"] = self.loc[0]
        self.jointRelatives["root"] = 0
        for i in range(0, len(self.loc)-1):
            self.relatives["%s_loc"%i] = self.loc[i+1]
            self.jointRelatives["%s_loc"%i] = i+1
        self.relatives["%s_loc"%(len(self.loc)-1)] = self.loc[-1]
        self.jointRelatives["%s_loc"%(len(self.loc)-1)] = len(self.loc)-1


    # @param self
    def addConnection(self):
        self.connections["standard"] = self.connect_standard
        self.connections["orientation"] = self.connect_orientation
        self.connections["parent"] = self.connect_parent

    def connect_orientation(self):
        self.connect_orientCns()

    ## standard connection definition.
    def connect_standard(self):
        self.connect_standardWithSimpleIkRef()

    # @param self
    def connect_parent(self):
        self.connect_standardWithSimpleIkRef()
