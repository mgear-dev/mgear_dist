import pymel.core as pm
from maya import cmds
from nose.tools import (
    assert_is_none,
    with_setup,
)

from mgear.core import attribute
from scripts.mgear.rigbits import channelWrangler

self = type("self", (object,), {})
self.config = {
    "movePolicy": "merge",
    "proxyPolicy": "index",
    "map": [
        ["shoulder_ik", "armUI_R0_ctl", "armUI_L0_ctl", 0],
        ["shoulder_rotRef", "armUI_R0_ctl", "armUI_L0_ctl", 0],
        ["shoulder_rotRef", "armUI_R1_ctl", "armUI_L0_ctl", 0]
    ]
}


def source_nodes():
    cmds.file(new=True, force=True)

    pcs = pm.polyCube(name="armUI_R0_ctl")
    pcs2 = pm.polyCube(name="armUI_R1_ctl")
    attribute.addAttribute(pcs[0],
                           "shoulder_ik",
                           "double",
                           0,
                           minValue=0,
                           maxValue=1)
    ch2 = attribute.addAttribute(pcs[0],
                                 "shoulder_rotRef",
                                 "double",
                                 0,
                                 minValue=0,
                                 maxValue=1)
    ch3 = attribute.addAttribute(pcs2[0],
                                 "shoulder_rotRef",
                                 "double",
                                 0,
                                 minValue=0,
                                 maxValue=1)
    pm.connectAttr(ch2, pcs[0].ty)
    pm.connectAttr(ch3, pcs2[0].ty)


@with_setup(source_nodes)
def test_applyChannelConfig():
    assert_is_none(channelWrangler._applyChannelConfig(self.config))
