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
import mgear.maya.vector as vec
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

        # blades computation
        self.normal = self.guide.blades["blade"].z
        self.binormal = self.guide.blades["blade"].x


        self.fk_npo = []
        self.fk_ctl = []
        self.spring_cns = []
        self.spring_aim = []
        self.spring_lvl = []
        self.spring_ref = []
        self.spring_npo = []
        self.spring_target = []
        parent = self.root
        for i, t in enumerate(tra.getChainTransform(self.guide.apos, self.normal, self.negate)):
            dist = vec.getDistance(self.guide.apos[i], self.guide.apos[i+1])

            fk_npo = pri.addTransform(parent, self.getName("fk%s_npo"%i), t)
            spring_aim = pri.addTransform(fk_npo, self.getName("spring%s_aim"%i), t)
            spring_cns = pri.addTransform(fk_npo, self.getName("spring%s_cns"%i), t)
            fk_ctl = self.addCtl(spring_cns, "fk%s_ctl"%i, t, self.color_fk, "cube", w=dist, h=self.size*.1, d=self.size*.1, po=dt.Vector(dist*.5*self.n_factor,0,0))


            t = tra.getTransformFromPos(self.guide.apos[i+1])
            spring_npo = pri.addTransform(parent, self.getName("spring%s_npo"%i), t)
            spring_target = pri.addTransform(spring_npo, self.getName("spring%s"%i), t)


            parent = fk_ctl

            self.spring_cns.append(spring_cns)
            self.spring_aim.append(spring_aim)

            self.addToGroup(spring_cns, "PLOT")

            self.fk_npo.append(fk_npo)
            self.fk_ctl.append(fk_ctl)

            self.spring_target.append(spring_target)


        # Chain of deformers -------------------------------
        self.loc = []
        parent = self.root
        for i, t in enumerate(tra.getChainTransform(self.guide.apos, self.normal, self.negate)):
            loc = pri.addTransform(parent, self.getName("%s_loc"%i), t)

            self.loc.append(loc)
            self.jnt_pos.append([loc, i])
            parent = loc

    # =====================================================
    # PROPERTY
    # =====================================================
    ## Add parameters to the anim and setup properties to control the component.
    # @param self
    def addAttributes(self):

        # Anim -------------------------------------------
        self.aDamping = []
        self.aStiffness = []
        self.aSpring_intensity = self.addAnimParam("spring_intensity", "Spring chain intensity", "double", 0, 0, 1)
        for i, tar in enumerate(self.spring_target):
            aDamping = self.addAnimParam( "damping_%s"%i, "damping_%s"%i, "double", 0.5, 0, 1)
            self.aDamping.append(aDamping)

        for i, tar in enumerate(self.spring_target):
            aStiffness = self.addAnimParam( "stiffness_%s"%i, "stiffness_%s"%i, "double", 0.5, 0, 1)
            self.aStiffness.append(aStiffness)



    # =====================================================
    # OPERATORS
    # =====================================================
    ## Apply operators, constraints, expressions to the hierarchy.\n
    # In order to keep the code clean and easier to debug,
    # we shouldn't create any new object in this method.
    # @param self
    def addOperators(self):

        # Chain of deformers -------------------------------
        for i, loc in enumerate(self.loc):
            pm.parentConstraint(self.fk_ctl[i], loc, maintainOffset=False)

        # spring operators
        #settings aim contraints
        for i, tranCns in enumerate(self.spring_aim):
            if self.negate:
                aimAxis = "-xy"
            else:
                aimAxis = "xy"
            aop.aimCns(tranCns, self.spring_target[i], aimAxis, 2, [0,1,0], self.fk_npo[i], False)
            aop.oriCns(tranCns, self.spring_cns[i])

            springOP = aop.gear_spring_op(self.spring_target[i])

            pm.connectAttr(self.aSpring_intensity, springOP+".intensity")
            pm.connectAttr(self.aDamping[i], springOP+".damping")
            pm.connectAttr(self.aStiffness[i], springOP+".stiffness")



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
