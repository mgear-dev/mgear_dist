Release Log
===========

2.3.0
-----
**Enhancements**
	* mGear: Attribute: addAttribute not setting default attribute value. [#84]
	* mGear: Attribute: update with lock and unlock attribute functions [#83]
	* mGear: PEP8 Style Refactor [#100]
	* mGear: Refactor all exception handling [#88]
	* mGear: Vendoring QT [#89]
	* Shifter: Build command review and log popup window [#73]
	* Shifter: Change Global_C0_ctl to World_ctl [#66]
	* Shifter: Control_01: Add option to have mirror behaviour [#68]
	* Shifter: Improve rig build speed [#65]
	* Shifter: Leg_2jnts_freeTangents_01:no ikFoot in upvref attribute [#62]
	* Shifter: Reload components in custom path [#78]
	* Shifter: Update guide structure in pre custom step [#101]
	* Simple Rig: Update functionality revision  [#71]
	* Synoptic: spring bake util [#61]

**Bug Fix**
	* Rigbits: createCTL function issue [#59]
	* Rigbits: export skin pack error with crvs [#56]
	* Rigbits: skin: There is a case in exportSkin function breaks the existing file [#58]
	* Shifter: 3 joint leg: soft Ik range min in graph editor [#82]
	* Shifter: arm_2jnt_freeTangents_01 no attribute 'rollRef' [#63]
	* Shifter: Arms auto upvector and shoulder space jump [#85]
	* Shifter: Chain_spring_01: pop if manipulate FK ctl after Bake [#75]
	* Shifter: Connect Ctl_vis [#103]
	* Shifter: Control_01: rotation axis is missing Y lock [#74]
	* Shifter: Japanese Ascii [#79]
	* Shifter: Spring chain: lock control parent and bake spring bug [#67]
	* Shifter: Synoptic: IK/FK Match with arm_ms_2jnt_01 [#80]

**Known Issues**
	* Shifter: Undo Build from selection crash maya [#74]

2.2.4
-----
**Enhancements**
	* Shifter: Global scale and size of controllers. [#50]

2.2.3
-----
**Enhancements**
	* Shifter: Custom Steps: Added Stop Build and Try again option if step fail.[#43]

**Bug Fix**
	* Synoptic: Match IK/FK with split ctl for trans and rot [#54]

2.2.2
-----
**Enhancements**
	* Shifter: Components: Legs: Mirror axis behavior on upv and mid ctl [#47]
	* Shifter: Componets: Arms: IK ctl mirror behaviour [#48]
	* Shifter: arm roll new reference connector [#53]

**Bug Fix**
	* Shifter: component UI min division hang. Check all components [#42]
	* Shifter: quadruped rig not being created in 2018 [ #44]
	* Shifter: Close settings Exception on Maya 2018: Note: This is a workaround. The issue comes from Maya 2018 [#49]

2.2.1
-----
**Bug Fix**
	* Shifter: Component: Hydraulic: Fix bad reference connector
	* Docs: Text error fix
	* Shifter: Text error fix

2.2.0
-----
**New Features**
	* Maya 2018 compatible
	* Simple autorig This a new rigging sytem for basic props.
	* Channel Wrangler: Channel manager with export import options.

**Enhancements**
	* Synoptic: key/select all for custom widgets
	* Skin IO: IO skin for curves & nurbs
	* Skin IO: Now can export with Skin Packs. Every object will be in a separated file.
	* Shifter: custom Sets: Now is possible to add custom sets to shifter components
	* Shifter: Now all the controls are Tag as a control (> Maya 2016.5)
	* Shifter: Custom Rig controls navigation
	* Shifter: Custom steps IO to JSON file.
	* Shifter: Componente: Chain_01: Non uniform scaling for FK controls
	* Shifter: Now the controls have unchecked historical interest from ctl shapes for cleaner channel box
	* Rigbits: Now replace shape support multiple shapes
	* mGear: Menu updated with about info and useful links
	* mGear: Added support for RGB color on icons/Controls

**Bug Fix**
	* Shifter: component: freetangent arm and leg: Fixed joint offset in the extremes
	* General: Fixed bad parenting for PySide dialogs.


2.1.1
-----
**New Features**
	* mGear solvers: New vertex position node.  This node gets the vertex position in worldspace.
	* Rigbits: New rigging commont library with toos and functions to help the rigging system. This library is meant to be use with custom steps or other rigging tools.
	* Shifter: Components: New  Components from Miles Cheng "arm_ms_2jnt_01", "shoulder_ms_2jnt_01" and "leg_ms_2jnt_01"
	* Shifter: Components: New enviroment variable: MGEAR_SHIFTER_COMPONENT_PATH (only project components)
	* Shifter: Custom Step: New enviroment variable: MGEAR_SHIFTER_CUSTOMSTEP_PATH to stablish relative paths for the custom steps data.
	* Shifter: New Channel naming options

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
	* Shifter: Updated biped guide
	* Shifter: Updated Quadruped guide

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





