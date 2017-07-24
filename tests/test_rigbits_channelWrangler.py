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


import unittest
import pymel.core as pm
import mgear.maya.rigbits.channelWrangler as cw
import mgear.maya.attribute as att


class cwTestCase(unittest.TestCase):

    def setUp(self):
        self.config = { "movePolicy":"merge",
                        "proxyPolicy":"index",
                        "map":[ ["shoulder_ik", "armUI_R0_ctl", "armUI_L0_ctl", 0],
                                ["shoulder_rotRef", "armUI_R0_ctl", "armUI_L0_ctl", 0],
                                ["shoulder_rotRef", "armUI_R1_ctl", "armUI_L0_ctl", 0]]}

        self.pcs = pm.polyCube(n="armUI_R0_ctl")
        self.pcs2 = pm.polyCube(n="armUI_R1_ctl")
        self.pct = pm.polyCube(n="armUI_L0_ctl")
        att.addAttribute(self.pcs[0], "shoulder_ik", "double", 0, minValue=0, maxValue=1 )
        ch2 = att.addAttribute(self.pcs[0], "shoulder_rotRef", "double", 0, minValue=0, maxValue=1 )
        ch3 = att.addAttribute(self.pcs2[0], "shoulder_rotRef", "double", 0, minValue=0, maxValue=1 )
        pm.connectAttr(ch2, self.pcs[0].ty)
        pm.connectAttr(ch3, self.pcs2[0].ty)


    def tearDown(self):
        return
        pm.delete(self.pcs)
        pm.delete(self.pct)

    def test_applyChannelConfig(self):
        self.assertIsNone(cw._applyChannelConfig(self.config))

    # def test_applyChannelConfigFromFile(self):
    #     filePath = ""
    #     self.assertIsNone(cw.applyChannelConfig(filePath))




if __name__=='__main__':
    unittest.main(exit=False)
