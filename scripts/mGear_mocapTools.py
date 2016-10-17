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

import os

# Maya
import pymel.core as pm

#mGear
import mgear.maya.transform as tra
import mgear.maya.shifter.component as comp
import mgear.maya.attribute as att

skelFK = [u'mGear_Mocap_interface_Hips', u'mGear_Mocap_interface_LeftUpLeg', u'mGear_Mocap_interface_LeftLeg', u'mGear_Mocap_interface_LeftFoot', u'mGear_Mocap_interface_LeftToeBase', u'mGear_Mocap_interface_RightUpLeg', u'mGear_Mocap_interface_RightLeg', u'mGear_Mocap_interface_RightFoot', u'mGear_Mocap_interface_RightToeBase', u'mGear_Mocap_interface_Spine', u'mGear_Mocap_interface_Spine1', u'mGear_Mocap_interface_Spine2', u'mGear_Mocap_interface_LeftShoulder', u'mGear_Mocap_interface_LeftArm', u'mGear_Mocap_interface_LeftForeArm', u'mGear_Mocap_interface_LeftHand', u'mGear_Mocap_interface_LeftHandThumb1', u'mGear_Mocap_interface_LeftHandThumb2', u'mGear_Mocap_interface_LeftHandThumb3',  u'mGear_Mocap_interface_LeftHandIndex1', u'mGear_Mocap_interface_LeftHandIndex2', u'mGear_Mocap_interface_LeftHandIndex3',  u'mGear_Mocap_interface_LeftHandMiddle1', u'mGear_Mocap_interface_LeftHandMiddle2', u'mGear_Mocap_interface_LeftHandMiddle3',  u'mGear_Mocap_interface_LeftHandRing1', u'mGear_Mocap_interface_LeftHandRing2', u'mGear_Mocap_interface_LeftHandRing3',  u'mGear_Mocap_interface_LeftHandPinky1', u'mGear_Mocap_interface_LeftHandPinky2', u'mGear_Mocap_interface_LeftHandPinky3',  u'mGear_Mocap_interface_RightShoulder', u'mGear_Mocap_interface_RightArm', u'mGear_Mocap_interface_RightForeArm', u'mGear_Mocap_interface_RightHand', u'mGear_Mocap_interface_RightHandThumb1', u'mGear_Mocap_interface_RightHandThumb2', u'mGear_Mocap_interface_RightHandThumb3',  u'mGear_Mocap_interface_RightHandIndex1', u'mGear_Mocap_interface_RightHandIndex2', u'mGear_Mocap_interface_RightHandIndex3',  u'mGear_Mocap_interface_RightHandMiddle1', u'mGear_Mocap_interface_RightHandMiddle2', u'mGear_Mocap_interface_RightHandMiddle3',  u'mGear_Mocap_interface_RightHandRing1', u'mGear_Mocap_interface_RightHandRing2', u'mGear_Mocap_interface_RightHandRing3',  u'mGear_Mocap_interface_RightHandPinky1', u'mGear_Mocap_interface_RightHandPinky2', u'mGear_Mocap_interface_RightHandPinky3',  u'mGear_Mocap_interface_Neck', u'mGear_Mocap_interface_Neck1', u'mGear_Mocap_interface_Head']
gearFK = [u'body_C0_ctl', u'leg_L0_fk0_ctl', u'leg_L0_fk1_ctl', u'leg_L0_fk2_ctl', u'foot_L1_fk0_ctl', u'leg_R0_fk0_ctl', u'leg_R0_fk1_ctl', u'leg_R0_fk2_ctl', u'foot_R1_fk0_ctl', u'spine_C0_fk0_ctl', u'spine_C0_fk1_ctl', u'spine_C0_fk2_ctl', u'shoulder_L0_ctl', u'arm_L0_fk0_ctl', u'arm_L0_fk1_ctl', u'arm_L0_fk2_ctl', u'thumb_L0_fk0_ctl', u'thumb_L0_fk1_ctl', u'thumb_L0_fk2_ctl', u'finger_L0_fk0_ctl', u'finger_L0_fk1_ctl', u'finger_L0_fk2_ctl', u'finger_L1_fk0_ctl', u'finger_L1_fk1_ctl', u'finger_L1_fk2_ctl', u'finger_L2_fk0_ctl', u'finger_L2_fk1_ctl', u'finger_L2_fk2_ctl', u'finger_L3_fk0_ctl', u'finger_L3_fk1_ctl', u'finger_L3_fk2_ctl', u'shoulder_R0_ctl', u'arm_R0_fk0_ctl', u'arm_R0_fk1_ctl', u'arm_R0_fk2_ctl', u'thumb_R0_fk0_ctl', u'thumb_R0_fk1_ctl', u'thumb_R0_fk2_ctl', u'finger_R0_fk0_ctl', u'finger_R0_fk1_ctl', u'finger_R0_fk2_ctl', u'finger_R1_fk0_ctl', u'finger_R1_fk1_ctl', u'finger_R1_fk2_ctl', u'finger_R2_fk0_ctl', u'finger_R2_fk1_ctl', u'finger_R2_fk2_ctl', u'finger_R3_fk0_ctl', u'finger_R3_fk1_ctl', u'finger_R3_fk2_ctl', u'neck_C0_fk0_ctl', u'neck_C0_fk1_ctl', u'neck_C0_head_ctl']
skelIK = [u'mGear_Mocap_interface_LeftFoot', u'mGear_Mocap_interface_RightFoot', u'mGear_Mocap_interface_LeftUpLeg', u'mGear_Mocap_interface_RightUpLeg', u'mGear_Mocap_interface_LeftHand', u'mGear_Mocap_interface_LeftForeArm', u'mGear_Mocap_interface_RightHand', u'mGear_Mocap_interface_RightForeArm']
gearIK = [u'leg_L0_ik_ctl', u'leg_R0_ik_ctl', u'leg_L0_upv_ctl', u'leg_R0_upv_ctl', u'arm_L0_ik_ctl', u'arm_L0_upv_ctl', u'arm_R0_ik_ctl', u'arm_R0_upv_ctl']
alignFK = [u'arm_L0_fk2_ctl',u'arm_L0_ikcns_ctl', u'arm_L0_fk1_ctl', u'arm_R0_fk2_ctl',u'arm_R0_ikcns_ctl', u'arm_R0_fk1_ctl']
alignIK = [u'arm_L0_ikcns_ctl',u'arm_L0_ik_ctl', u'arm_L0_upv_ctl', u'arm_R0_ikcns_ctl',u'arm_R0_ik_ctl', u'arm_R0_upv_ctl']

def importSkeletonBiped(*args):

    path = os.path.dirname(comp.__file__)
    pm.importFile(os.path.join(path, "_templates", "MOCAP_interface_01.ma"))

def characterizeBiped(*args):

    try:
        gCtl = pm.PyNode('global_C0_ctl')
        mocapAttach = att.addAttribute(gCtl, "mocapAttach", "float", 1.0, minValue=0.0, maxValue=1.0)

    except:
        pm.displayWarning("global_C0_ctl: Is not in the scene")



    # Align skeleton
    for a, b in zip(skelFK, gearFK):
        try:
            oA = pm.PyNode(a)
        except:
            pm.displayWarning(a + ": Is not in the scene")
        try:
            oB = pm.PyNode(b)
        except:
            pm.displayWarning(b + ": Is not in the scene")
        tra.matchWorldTransform(oB, oA)
        for axis in "xyz":
            oA.attr("r"+axis).set(0.0)

    #constrain FK controls
    for a, b in zip(skelFK, gearFK):
        oA = pm.PyNode(a)
        oB = pm.PyNode(b)
        cns = pm.parentConstraint(oA, oB, mo=True)

        pb_node = pm.createNode("pairBlend")

        pm.connectAttr(cns+".constraintRotateX", pb_node+".inRotateX2")
        pm.connectAttr(cns+".constraintRotateY", pb_node+".inRotateY2")
        pm.connectAttr(cns+".constraintRotateZ", pb_node+".inRotateZ2")
        pm.connectAttr( pb_node+".outRotateX", oB+".rotateX", f=True)
        pm.connectAttr( pb_node+".outRotateY", oB+".rotateY", f=True)
        pm.connectAttr( pb_node+".outRotateZ", oB+".rotateZ", f=True)
        pm.setKeyframe( oB, at="rotateX")
        pm.setKeyframe( oB, at="rotateY")
        pm.setKeyframe( oB, at="rotateZ")

        pm.connectAttr(cns+".constraintTranslateX", pb_node+".inTranslateX2")
        pm.connectAttr(cns+".constraintTranslateY", pb_node+".inTranslateY2")
        pm.connectAttr(cns+".constraintTranslateZ", pb_node+".inTranslateZ2")
        pm.connectAttr( pb_node+".outTranslateX", oB+".translateX", f=True)
        pm.connectAttr( pb_node+".outTranslateY", oB+".translateY", f=True)
        pm.connectAttr( pb_node+".outTranslateZ", oB+".translateZ", f=True)
        pm.setKeyframe( oB, at="translateX")
        pm.setKeyframe( oB, at="translateY")
        pm.setKeyframe( oB, at="translateZ")

        pm.connectAttr(mocapAttach, pb_node.attr("weight"))

    #align IK controls with FK controls
    for a, b in zip(alignIK, alignFK):
        oA = pm.PyNode(a)
        oB = pm.PyNode(b)
        tra.matchWorldTransform(oB, oA)
        if a in [u'arm_L0_upv_ctl', u'arm_R0_upv_ctl']:
            oA.attr("tz").set(-3)
            for axis in "xyz":
                oA.attr("r"+axis).set(0.0)
        if a == u'arm_L0_ikcns_ctl':
            oA.attr("rx").set((oA.attr("rx").get()+90))
        if a == u'arm_R0_ikcns_ctl':
            oA.attr("rx").set((oA.attr("rx").get()-90))

    # constrain IK controls
    for a, b in zip(skelIK, gearIK):
        oA = pm.PyNode(a)
        oB = pm.PyNode(b)
        print b
        cns = pm.parentConstraint(oA, oB, mo=True)

        pb_node = pm.createNode("pairBlend")

        pm.connectAttr(cns+".constraintRotateX", pb_node+".inRotateX2")
        pm.connectAttr(cns+".constraintRotateY", pb_node+".inRotateY2")
        pm.connectAttr(cns+".constraintRotateZ", pb_node+".inRotateZ2")
        pm.connectAttr( pb_node+".outRotateX", oB+".rotateX", f=True)
        pm.connectAttr( pb_node+".outRotateY", oB+".rotateY", f=True)
        pm.connectAttr( pb_node+".outRotateZ", oB+".rotateZ", f=True)
        pm.setKeyframe( oB, at="rotateX")
        pm.setKeyframe( oB, at="rotateY")
        pm.setKeyframe( oB, at="rotateZ")

        pm.connectAttr(cns+".constraintTranslateX", pb_node+".inTranslateX2")
        pm.connectAttr(cns+".constraintTranslateY", pb_node+".inTranslateY2")
        pm.connectAttr(cns+".constraintTranslateZ", pb_node+".inTranslateZ2")
        pm.connectAttr( pb_node+".outTranslateX", oB+".translateX", f=True)
        pm.connectAttr( pb_node+".outTranslateY", oB+".translateY", f=True)
        pm.connectAttr( pb_node+".outTranslateZ", oB+".translateZ", f=True)
        pm.setKeyframe( oB, at="translateX")
        pm.setKeyframe( oB, at="translateY")
        pm.setKeyframe( oB, at="translateZ")

        pm.connectAttr(mocapAttach, pb_node.attr("weight"))

def bakeMocap(*args):
    start = pm.playbackOptions(q=True, min=True)
    end = pm.playbackOptions(q=True, max=True)

    if pm.selected() and pm.selected()[0].name()[-3:] =="ctl":
        controls = gearFK + gearIK
        if len(pm.selected()[0].name().split(":"))==2:
            for i, x in enumerate(controls):
                controls[i] = pm.selected()[0].name().split(":")[0] + ":" + x
        # we are using a custom bake system, because bakeResults is super slow with pairblend nodes
        for x in range(int(start), int(end+1)):
            pm.currentTime(x)
            pm.setKeyframe(controls)
    else:
        pm.displayWarning("Please select on control of the rig to determine wich character will be baked")