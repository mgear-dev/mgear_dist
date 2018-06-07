from maya import cmds
import pymel.core as pm

import mgear.core.attribute as att

from nose.tools import (
    assert_false,
    assert_is_none,
    with_setup,
)


def source_nodes():
    cmds.file(new=True, force=True)

    source1, _ = pm.polyCube(name="source1")
    source2, _ = pm.polyCube(name="source2")
    target, _ = pm.polyCube(name="target")

    ch1 = att.addAttribute(source1,
                           "chanName",
                           "double",
                           0,
                           minValue=0,
                           maxValue=1)
    ch2 = att.addAttribute(source2,
                           "chanName",
                           "double",
                           0,
                           minValue=0,
                           maxValue=1)

    pm.connectAttr(ch1, source1.ty)
    pm.connectAttr(ch2, source2.ty)


@with_setup(source_nodes)
def test_move_channel():
    """chanName.moveChannel works"""

    for source in ("source1", "source2"):
        assert_false(
            att.moveChannel("chanName", source, "target")
        )


@with_setup(source_nodes)
def test_moveChannel_index():
    """move_channel_index"""
    for source in ("source1", "source2"):
        assert_is_none(
            att.moveChannel("chanName", source, "source1", "index")
        )


@with_setup(source_nodes)
def test_moveChannel_fullName():
    """move_channel_fullName"""
    for source in ("source1", "source2"):
        assert_is_none(
            att.moveChannel("chanName", source, "source1", "fullName")
        )
