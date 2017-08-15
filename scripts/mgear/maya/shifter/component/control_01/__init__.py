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
# mgear
from mgear.maya.shifter.component import MainComponent

import mgear.maya.primitive as pri
import mgear.maya.transform as tra
import mgear.maya.attribute as att


#############################################
# COMPONENT
#############################################
class Component(MainComponent):

    def addObjects(self):

        if self.settings["neutralRotation"]:
            t = tra.getTransformFromPos(self.guide.pos["root"])
        else:
            t = self.guide.tra["root"]
            t = tra.setMatrixScale(t)
        self.ik_cns = pri.addTransform(self.root, self.getName("ik_cns"), t)

        self.ctl = self.addCtl(self.ik_cns, "ctl", t, self.color_ik, self.settings["icon"], w=self.settings["ctlSize"], h=self.settings["ctlSize"], d=self.settings["ctlSize"])

        params = [ s for s in ["tx", "ty", "tz", "ro", "rx", "ry", "rz", "sx", "sy", "sz"] if self.settings["k_"+s] ]
        att.setKeyableAttributes(self.ctl, params)

        if self.settings["joint"]:
            self.jnt_pos.append([self.ctl, 0, None, self.settings["uniScale"]])

        if self.settings["k_ro"]:
            rotOderList = ["XYZ", "YZX", "ZXY", "XZY", "YXZ", "ZYX"]
            att.setRotOrder(self.ctl, rotOderList[self.settings["default_rotorder"]])

    def addAttributes(self):
        # Ref
        if self.settings["ikrefarray"]:
            ref_names = self.settings["ikrefarray"].split(",")
            if len(ref_names) > 1:
                self.ikref_att = self.addAnimEnumParam("ikref", "Ik Ref", 0, self.settings["ikrefarray"].split(","))


    def addOperators(self):
        return

    # =====================================================
    # CONNECTOR
    # =====================================================
    ## Set the relation beetween object from guide to rig.\n
    # @param self
    def setRelation(self):
        self.relatives["root"] = self.ctl
        if self.settings["joint"]:
            self.jointRelatives["root"] = 0


    # @param self
    def addConnection(self):
        self.connections["standard"] = self.connect_standard
        self.connections["orientation"] = self.connect_orientation


    ## standard connection definition.
    # @param self
    def connect_standard(self):
        self.connect_standardWithSimpleIkRef()

    def connect_orientation(self):
        self.connect_orientCns()
