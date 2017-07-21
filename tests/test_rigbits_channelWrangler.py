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


class cwTestCase(unittest.TestCase):

    def setUp(self):

        self.testName = self.shortDescription()
        if (self.testName == "move channel"):
            pm.displayInfo("Running: {}".format(self.testName))
            self.pcs = pm.polyCube(n="pCube_source")
            self.pct = pm.polyCube(n="pCube_target")
            self.chanName = "bla"
            pm.addAttr( self.pcs[0], ln=self.chanName, type="double", min=0, max=1)
        else:
            pm.displayWarning("UNKNOWN TEST ROUTINE: {}".format(self.testName))


    def tearDown(self):
        if (self.testName == "move channel"):
            pm.delete(self.pcs)
            pm.delete(self.pct)


    def test_moveChannel(self):
        """move channel
        """
        self.assertIsNone(cw.moveChannel(self.chanName,  self.pcs[0],  self.pct[0]))

    def test_proxyChannel(self):
        print "lol"

if __name__=='__main__':
    unittest.main(exit=False)
