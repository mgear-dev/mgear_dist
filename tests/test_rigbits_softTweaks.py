import unittest

import pymel.core as pm
import pymel.core.datatypes as dt

import anima_rig.softTweaks as stwk


class softTweak_TestCase(unittest.TestCase):

    # setup
    def setUp(self):

        self.testName = self.shortDescription()
        self.softTweakName = "testSoftTweak"

        if self.testName == "Create soft tweak controls":
            pm.displayInfo("Running: {}".format(self.testName))
            self.baseCtl = None
            self.tweakCtl = None

        elif self.testName in ["Create softMod", "Create soft tweak"]:
            pm.displayInfo("Running: {}".format(self.testName))
            self.baseCtl = None
            self.tweakCtl = None
            self.pcs = pm.polyCube(n="pCubeTest")[0]
            pm.delete(self.pcs, ch=True)

        else:
            pm.displayWarning("UNKNOWN TEST ROUTINE: {}".format(self.testName))

    def tearDown(self):
        if self.testName in ["Create soft tweak controls",
                             "Create softMod",
                             "Create soft tweak"]:
            pm.delete(self.baseCtl.getParent())
        if self.testName in ["Create softMod", "Create soft tweak"]:
            pm.delete(self.pcs)

    # Tests
    def test__createSoftTweakControls(self):
        """Create soft tweak controls
        """
        self.baseCtl, self.tweakCtl = stwk._createSoftTweakControls(
            self.softTweakName,
            parent=None,
            t=dt.Matrix(),
            grp="facialTweaks")

    def test__createSoftModTweak(self):
        """Create softMod
        """
        self.baseCtl, self.tweakCtl = stwk._createSoftTweakControls(
            self.softTweakName,
            parent=None,
            t=dt.Matrix(),
            grp=None)

        softModNode = stwk._createSoftModTweak(self.baseCtl, self.tweakCtl,
                                               self.softTweakName, self.pcs)
        self.assertIsInstance(softModNode, pm.nodetypes.SoftMod)

    def test_createSoftTweak(self):
        """Create soft tweak
        """
        softModNode, self.baseCtl, self.tweakCtl = stwk.createSoftTweak(
            self.softTweakName,
            self.pcs)
        self.assertIsInstance(softModNode, pm.nodetypes.SoftMod)


if __name__ == '__main__':
    unittest.main(exit=False)
