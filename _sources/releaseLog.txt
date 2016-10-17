Release Log
===========


2.0
---
**New Features**
	* New licensing under MIT license terms.
	* New Documentation 
	* New Component settings view.
	* Shifter: Modular rigging sytem rebranded.
		* Single Hierarchy Joint connexion
		* Update Guides Command.
	* Mocap HumanIK mapping tool for standard Shifter biped
	* Gimmick joints basic tools
	* Enviroment variables
		* Synoptic variable: MGEAR_SYNOPTIC_PATH
		* Component variable: MGEAR_SHIFTER_COMPONENT_PATH
	* Pre and Post script execution.

**Inprovements**
	* Groups and dag pose connected to rig base node. This will avoid lost elements if we export selection.
	* Component guides will snap to parent position at creation time.
	* Newly created guide components automatic update of the side and uiHost from the parent attributes.
	* Guide Blades have new attr to control the  roll offset
	* Duplicate symmetry can find partial chain names. Is not needed to duplicate from the top root of the branch.
	* mGear version and other useful information in guide root.



**Components Improvements**
	* Chain_01
		* Scaling 
	* Control_01
		* uniScale: Option to set uniform scale or independet axis scale

