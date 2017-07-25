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
import mgear.maya.attribute as att

# Test suite for mgear.maya.attribute module.

class attribute_moveChannel_TestCase(unittest.TestCase):
    """Test for moveChannel function on attribute module
    """
    def setUp(self):
        self.testName = self.shortDescription()
        if (self.testName in [  "move_channel", "move_channel_index", "move_channel_fullName",
                                "move_channel_merge", "proxy_channel"]):
            pm.displayInfo("Running: {}".format(self.testName))
            self.pcs = pm.polyCube(n="pCube_source")
            self.pcs2 = pm.polyCube(n="pCube_source2")
            self.pct = pm.polyCube(n="pCube_target")
            self.chanName = "bla_{}".format(self.testName)
            ch1 = att.addAttribute(self.pcs[0], self.chanName, "double", 0, minValue=0, maxValue=1 )
            ch2 = att.addAttribute(self.pcs2[0], self.chanName, "double", 0, minValue=0, maxValue=1 )
            pm.connectAttr(ch1, self.pcs[0].ty)
            pm.connectAttr(ch2, self.pcs2[0].ty)
        else:
            pm.displayWarning("UNKNOWN TEST ROUTINE: {}".format(self.testName))


    def tearDown(self):
        if (self.testName in ["move_channel", "move_channel_index", "move_channel_fullName", "move_channel_merge", "proxy_channel"]):
            pm.delete(self.pcs)
            pm.delete(self.pcs2)
            pm.delete(self.pct)


    def test_moveChannel(self):
        """move_channel
        """
        for s in [self.pcs[0], self.pcs2[0]]:
            self.assertFalse(att.moveChannel(self.chanName,  s,  self.pct[0]))

    def test_moveChannel_index(self):
        """move_channel_index
        """
        for s in [self.pcs[0], self.pcs2[0]]:
            self.assertIsNone(att.moveChannel(self.chanName,  s,  self.pct[0], "index"))

    def test_moveChannel_fullName(self):
        """move_channel_fullName
        """
        for s in [self.pcs[0], self.pcs2[0]]:
            self.assertIsNone(att.moveChannel(self.chanName,  s,  self.pct[0], "fullName"))

    def test_moveChannel_merge(self):
        """move_channel_merge
        """
        for s in [self.pcs[0], self.pcs2[0]]:
            self.assertIsNone(att.moveChannel(self.chanName,  s,  self.pct[0], "merge"))




class attribute_addProxyAttribute_TestCase(unittest.TestCase):


    def setUp(self):
        self.testName = self.shortDescription()
        if (self.testName in ["proxy_channel", "proxy_channel_index", "proxy_channel_fullName"]):
            pm.displayInfo("Running: {}".format(self.testName))
            self.pcs = pm.polyCube(n="pCube_source")
            self.pcs2 = pm.polyCube(n="pCube_source2")
            self.pct = pm.polyCube(n="pCube_target")
            self.chanName = "bla_{}".format(self.testName)
            ch1 = att.addAttribute(self.pcs[0], self.chanName, "double", 0, minValue=0, maxValue=1 )
            ch2 = att.addAttribute(self.pcs2[0], self.chanName, "double", 0, minValue=0, maxValue=1 )
            pm.connectAttr(ch1, self.pcs[0].ty)
            pm.connectAttr(ch2, self.pcs2[0].ty)
        else:
            pm.displayWarning("UNKNOWN TEST ROUTINE: {}".format(self.testName))

    def tearDown(self):
        if (self.testName in ["proxy_channel", "proxy_channel_index", "proxy_channel_fullName"]):
            pm.delete(self.pcs)
            pm.delete(self.pcs2)
            pm.delete(self.pct)

    def test_addProxyAttribute(self):
        """proxy_channel
        """
        source = pm.PyNode("{}.{}".format(self.pcs[0], self.chanName))
        source2 = pm.PyNode("{}.{}".format(self.pcs2[0], self.chanName))
        self.assertIsNone(att.addProxyAttribute(source,  self.pct[0]))
        self.assertIsNone(att.addProxyAttribute(source2,  self.pct[0]))

    def test_addProxyAttribute_index(self):
        """proxy_channel_index
        """
        source = pm.PyNode("{}.{}".format(self.pcs[0], self.chanName))
        source2 = pm.PyNode("{}.{}".format(self.pcs2[0], self.chanName))
        self.assertIsNone(att.addProxyAttribute(source,  self.pct[0], "index"))
        self.assertIsNone(att.addProxyAttribute(source2,  self.pct[0], "index"))

    def test_addProxyAttribute_fullName(self):
        """proxy_channel_fullName
        """
        source = pm.PyNode("{}.{}".format(self.pcs[0], self.chanName))
        source2 = pm.PyNode("{}.{}".format(self.pcs2[0], self.chanName))
        self.assertIsNone(att.addProxyAttribute(source,  self.pct[0], "fullName"))
        self.assertIsNone(att.addProxyAttribute(source2,  self.pct[0], "fullName"))




if __name__=='__main__':
    unittest.main(exit=False)
