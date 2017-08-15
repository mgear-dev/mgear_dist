Release Log
===========


2.1.1
-----
**New Features**
	* mGear solvers: New vertex position node.  This node gets the vertex position in worldspace.
	* Rigbits: New rigging commont library with toos and functions to help the rigging system. This library is meant to be use with custom steps or other rigging tools.
	* Shifter: Components: New  Components from Miles Cheng "arm_ms_2jnt_01", "shoulder_ms_2jnt_01" and "leg_ms_2jnt_01"
	* Shifter: Components: New enviroment variable: MGEAR_SHIFTER_COMPONENT_PATH (only project components)
	* Shifter: Custom Step: New enviroment variable: MGEAR_SHIFTER_CUSTOMSTEP_PATH to stablish relative paths for the custom steps data.

**Improvements**
	* Improved error logging for custom steps and Synoptic.
	* Shifter: Clean up jnt_org empty groups after rig build.
	* Shifter: Components: Updated neck with optiona tangent controls.
	* Shifter: Components: Arm have a new option to separate the IK controls in rotation and translation control
	* Shifter: Components: Control extraction name buffer to avoid name clashing for ctl extraction on guides
	* Shifter: Components: Pin elbow/knee
	* Shifter: Components: Spine updated: Autobend optional control and optional mid tangent control
	* Shifter: Components: Arms mid ctl and upv with optinal mirror behaviour.
	* Shifter: Custom step using class implementation
	* Shifter: Track information (rig Asset, components used version and mGear version)
	* Synoptic: General visual and structure improvement. Big Thanks to Yamahigashi-san.
	* Synoptic: IK/FK animation transfer

**Bug Fix**
	* Bad layout on setting windows with HDPI displays.
	* Shifter: Components: General clean up and bug fixing (Please check github commint for more info).
	* Issue #9  leg_3jnt: Flip offset rz double connection
	* Issue #13  Chain_01 IK refs not being connected

2.0
---
**New Features**
	* Custom enviroment variables for synoptic: MGEAR_SYNOPTIC_PATH
	* cvWrap deformer included.
	* Gimmick joints basic tools
	* Mocap HumanIK mapping tool for standard Shifter biped
	* New Component settings view.
	* New Documentation
	* New licensing under MIT license terms.
	* Pre and Post custom Steps.
	* Shifter: Modular rigging sytem rebranded.
	* Shifter: Quadrupeds template and new leg component for 3 bones legs.
	* Shifter: Single Hierarchy Joint connexion
	* Shifter: Update Guides Command.
	* Synoptic view Updated.

**Inprovements**
	* Component guides will snap to parent position at creation time.
	* Duplicate symmetry can find partial chain names. Is not needed to duplicate from the top root of the branch.
	* Groups and dag pose connected to rig base node. This will avoid lost elements if we export selection.
	* Guide Blades have new attr to control the  roll offset
	* mGear version and other useful information in guide root.
	* Newly created guide components automatic update of the side and uiHost from the parent attributes.
	* Shifter componets full review and functions unified.





