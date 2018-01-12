//Maya ASCII 2016R2 scene
//Name: biped_guide.ma
//Last modified: Fri, Jan 12, 2018 04:57:46 PM
//Codeset: 932
requires maya "2016R2";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2 SP2";
fileInfo "cutIdentifier" "201608220310-1001477-2";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "CDB4F2CD-4A87-919A-618B-ABB1AAE486A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6626284205093835 22.514101659238161 30.544200273238797 ;
	setAttr ".r" -type "double3" -25.538352729602977 7.0000000000003766 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3EB3D15B-420E-E67B-D514-CBAA09281E5C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 37.265978198906765;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "398FD8F7-44A7-0FE7-4D51-8D9604E1A062";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F9784B1D-4E51-60E6-EB23-7987F165A200";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A355D6C2-4104-0BDF-F161-D19C893E8612";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A0BC09A5-45D5-0301-867B-C8B45C4E95DA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "2E6BFB0C-499E-A3F2-81E2-DE90269F73B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4CD47DBF-4312-E04D-FD24-85A8C98136CD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "guide";
	rename -uid "0871EC76-4DC0-C0CF-C108-74BA8A09B588";
	addAttr -ci true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "mode" -ln "mode" -min 0 -max 1 -en "Final:WIP" -at "enum";
	addAttr -ci true -k true -sn "step" -ln "step" -min 0 -max 6 -en "All Steps:Objects:Properties:Operators:Connect:Joints:Finalize" 
		-at "enum";
	addAttr -ci true -sn "ismodel" -ln "ismodel" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "classicChannelNames" -ln "classicChannelNames" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "proxyChannels" -ln "proxyChannels" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "worldCtl" -ln "worldCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "importSkin" -ln "importSkin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "skin" -ln "skin" -dt "string";
	addAttr -ci true -sn "L_color_fk" -ln "L_color_fk" -dv 6 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "L_color_ik" -ln "L_color_ik" -dv 18 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_fk" -ln "R_color_fk" -dv 23 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_ik" -ln "R_color_ik" -dv 14 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_fk" -ln "C_color_fk" -dv 13 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_ik" -ln "C_color_ik" -dv 17 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "joint_rig" -ln "joint_rig" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "synoptic" -ln "synoptic" -dt "string";
	addAttr -ci true -sn "doPreCustomStep" -ln "doPreCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "doPostCustomStep" -ln "doPostCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preCustomStep" -ln "preCustomStep" -dt "string";
	addAttr -ci true -sn "postCustomStep" -ln "postCustomStep" -dt "string";
	addAttr -ci true -sn "comments" -ln "comments" -dt "string";
	addAttr -ci true -sn "user" -ln "user" -dt "string";
	addAttr -ci true -sn "date" -ln "date" -dt "string";
	addAttr -ci true -sn "maya_version" -ln "maya_version" -dt "string";
	addAttr -ci true -sn "gear_version" -ln "gear_version" -dt "string";
	setAttr ".rig_name" -type "string" "rig";
	setAttr -k on ".step" 6;
	setAttr ".skin" -type "string" "";
	setAttr ".synoptic" -type "string" "biped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-08-29 18:34:07.211000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.2.4";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "CBA0507F-4A78-63DE-6611-2B8361988EE4";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "global_C0_root" -p "guide";
	rename -uid "9D4911A0-452C-9E2E-2D1E-38A8675D17CD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 8 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "global";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "global_C0_rootShape" -p "global_C0_root";
	rename -uid "188EEA43-4AD1-E5E8-C919-DAA7992C4684";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "global_C0_root7Shape" -p "global_C0_root";
	rename -uid "A3A76CF9-4B1A-1D87-28C1-DB89DC19C428";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "global_C0_root8Shape" -p "global_C0_root";
	rename -uid "11FE0ADF-40D3-F84D-DBFA-209628F5759D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "global_C0_root9Shape" -p "global_C0_root";
	rename -uid "901F13B5-4E31-5541-DA7D-288B40518C8E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "global_C0_sizeRef" -p "global_C0_root";
	rename -uid "01C7FE2F-437A-37C3-1B81-96A13F540042";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "local_C0_root" -p "global_C0_root";
	rename -uid "F198CDF9-40E6-E95C-ACAD-CA941A8A81CF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 6 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "local";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "local_C0_rootShape" -p "local_C0_root";
	rename -uid "A44B1164-4267-B4F7-DA64-F38BB1C1F418";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "local_C0_root7Shape" -p "local_C0_root";
	rename -uid "BCE20DE2-4389-0743-26E8-ACB096AEF7F4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "local_C0_root8Shape" -p "local_C0_root";
	rename -uid "8297A5E6-4893-17D4-0D19-5596FE7D5A51";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "local_C0_root9Shape" -p "local_C0_root";
	rename -uid "0DB1DE4E-4E16-1C4C-D115-50B5E865A087";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "local_C0_sizeRef" -p "local_C0_root";
	rename -uid "7BFCAEFB-4D03-B2C7-4C99-479E15736A80";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "body_C0_root" -p "local_C0_root";
	rename -uid "9BEB7064-415F-6EBB-14C9-8291BF55CAF4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -dv 2 -min 0 -max 
		5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 3 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 10.853210488970383 0.18241213460091918 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.8613851194869451 1.8613851194869344 1.8613851194869451 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "body";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	rename -uid "C3A6400E-4030-E417-C962-448A652C0A8E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "body_C0_root31Shape" -p "body_C0_root";
	rename -uid "43E5BD1D-498A-A36D-7EDC-68A3958EB552";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "body_C0_root32Shape" -p "body_C0_root";
	rename -uid "A100D0E9-4ED1-FAA0-AB2C-79A66A0BEFB7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "body_C0_root33Shape" -p "body_C0_root";
	rename -uid "7859E8C0-4337-66AF-2F16-1DA77F130254";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "body_C0_sizeRef" -p "body_C0_root";
	rename -uid "AECBB473-4C28-1466-3173-B29E9B74067E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.53723433669418741 0 1.1928998604342204e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53723433669418763 0.53723433669419063 0.53723433669418763 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "spine_C0_root" -p "body_C0_root";
	rename -uid "2EDF8639-4DC7-5470-5CA7-2CB0A9640DC9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "position" -ln "position" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "maxsquash" -ln "maxsquash" -dv 0.5 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "softness" -ln "softness" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lock_ori" -ln "lock_ori" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "division" -ln "division" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "autoBend" -ln "autoBend" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "centralTangent" -ln "centralTangent" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.9388939039072284e-017 1.7763568394002505e-015 -2.1570415377137042e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410492 0.51189149642410248 0.5118914964241017 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "spine_ik_01";
	setAttr ".comp_name" -type "string" "spine";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "12FC82BA-4E2E-A360-3592-9CADBF655819";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_root31Shape" -p "spine_C0_root";
	rename -uid "BB8E7A94-453A-7BAD-CBAD-2BBB959AD8A0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_root32Shape" -p "spine_C0_root";
	rename -uid "F7DE9629-42BA-6DD7-D040-C0B933A2A148";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_root33Shape" -p "spine_C0_root";
	rename -uid "6B37F31E-4A8E-C301-8D82-3A80FD8B20DA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "spine_C0_eff" -p "spine_C0_root";
	rename -uid "539E345D-4033-1C17-D405-74933FA58AB4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3760066881565312 -1.6653345369377348e-015 1.1709654061874394e-031 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999944 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "0FD92020-42F2-CD74-F0C2-648D662ECAAF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_eff31Shape" -p "spine_C0_eff";
	rename -uid "DCED4411-48D9-9FFD-17BD-C2BA2E52F99F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_eff32Shape" -p "spine_C0_eff";
	rename -uid "219A08C5-43B7-A80C-D6E4-A0AFAF08D415";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_eff33Shape" -p "spine_C0_eff";
	rename -uid "D6CBE94A-4D03-D4CD-E656-3E97B80B0364";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "spine_C0_eff33_0crvShape" -p "spine_C0_eff";
	rename -uid "3B509E99-4BAA-404D-BEFD-8F95DF8B5B16";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "spine_C0_eff33_1crvShape" -p "spine_C0_eff";
	rename -uid "C22FE13B-4FFC-3E9D-5EE6-94A588464A48";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "spineUI_C0_root" -p "spine_C0_eff";
	rename -uid "5967BD7E-4711-3A14-BAEB-49A396F191A7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2578484988603371 0.60394549966678479 -1.9764781265571729 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.8877599067547628 0.88775990675476024 0.88775990675475924 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "spineUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
	rename -uid "04B5B31C-4438-1C7E-5921-F4852BBA786B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spineUI_C0_root31Shape" -p "spineUI_C0_root";
	rename -uid "2DD73905-418B-A0EE-084C-8797D1A27C9F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spineUI_C0_root32Shape" -p "spineUI_C0_root";
	rename -uid "A57D3FF0-44E0-E52B-3DC7-5DA6DCB25443";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spineUI_C0_root33Shape" -p "spineUI_C0_root";
	rename -uid "9659BBF1-4C42-03C2-ABE9-099DE1D99E19";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "spineUI_C0_sizeRef" -p "spineUI_C0_root";
	rename -uid "A6242FD9-42E5-D974-128D-22B16D062C6F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 -3.5527136788005009e-015 1.1821982708976553 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.1821982708976522 1.1821982708976528 1.1821982708976548 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "C66CFA3B-45B7-478D-81CC-3E8FBB42D6AC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "refArray" -ln "refArray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7395848890977383 -0.016853043661003458 -0.11673327753265017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 1.0000000000000031 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "shoulder_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".refArray" -type "string" "shoulder_L0_root,local_C0_root,body_C0_root,spine_C0_eff,global_C0_root";
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "E4F21D1C-4739-345F-A58E-48B2B547FF0B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_root31Shape" -p "shoulder_L0_root";
	rename -uid "0DADF1B7-407D-822B-F8E4-4AB6D5FB484C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_root32Shape" -p "shoulder_L0_root";
	rename -uid "CA6560A6-4652-9E28-878C-538C7B445B77";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_root33Shape" -p "shoulder_L0_root";
	rename -uid "4F21790B-4B70-A7C6-3D03-2085F6EEFCD1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "shoulder_L0_tip" -p "shoulder_L0_root";
	rename -uid "4E8DF963-4E55-09E6-EBA9-36AA016BCC1F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645495 -0.91350954729966838 -1.5239746815175859 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 0.99999999999999578 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "6DE46A9B-40A1-03FB-8460-3284A6FCFACD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip31Shape" -p "shoulder_L0_tip";
	rename -uid "A7723D63-475F-A59E-17BB-3CAE2E4AFCCA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_tip32Shape" -p "shoulder_L0_tip";
	rename -uid "D9266B4A-4718-C036-433C-D3A93BC0F61E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_tip33Shape" -p "shoulder_L0_tip";
	rename -uid "831A1960-4227-FD9C-DEC3-D697D0A6D68C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip33_0crvShape" -p "shoulder_L0_tip";
	rename -uid "2BF99035-44B9-6881-C102-A18B8E359A9F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip33_1crvShape" -p "shoulder_L0_tip";
	rename -uid "DE3B75D2-44BA-C662-1369-D4A0BF70D970";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "arm_L0_root" -p "shoulder_L0_tip";
	rename -uid "52D9520E-4AD3-5E03-DE82-99AA3EBB0F6F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorIK" -ln "mirrorIK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-014 6.6613381477509392e-016 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.411212983179873 -5.4710434405384385 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999822 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "shoulder_01";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "AC44AFF4-4762-5071-031D-BA92954A4950";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_root31Shape" -p "arm_L0_root";
	rename -uid "C2828D3E-40B8-BE44-1A4F-61BB23CA69AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_root32Shape" -p "arm_L0_root";
	rename -uid "97A99B09-4881-2A6E-08EF-3F8B1E8F2D3B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_root33Shape" -p "arm_L0_root";
	rename -uid "2573CD6E-4BD2-7BAA-837C-18B14686BC5F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "arm_L0_elbow" -p "arm_L0_root";
	rename -uid "14EE96A6-43A0-E738-B205-1DBCBB7BC5EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323292 3.5527136788005009e-015 0.07897679025290949 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784265 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "304F6633-4EDE-2649-CFE5-889447CBCC74";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow31Shape" -p "arm_L0_elbow";
	rename -uid "245D98EB-4AE8-E3BF-3F62-82B62170B8DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_elbow32Shape" -p "arm_L0_elbow";
	rename -uid "AB99B037-44D2-5E06-4DB7-858BC896C438";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_elbow33Shape" -p "arm_L0_elbow";
	rename -uid "AB6304FB-4BCD-19D2-07E5-E1856E64F19F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow33_0crvShape" -p "arm_L0_elbow";
	rename -uid "AE6FD908-4761-F15A-2D7B-E8A0BD8D2D27";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow33_1crvShape" -p "arm_L0_elbow";
	rename -uid "889FD144-4BD1-05E0-EBE4-6F961E2553EB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "arm_L0_wrist" -p "arm_L0_elbow";
	rename -uid "518E6E2F-4D7C-FEB7-1C7C-829A4DB9CD5E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891497014 1.7763568394002505e-015 -0.11960611218230568 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000013 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "8739BC91-4F16-0D22-EABD-BFA960DFEB62";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist31Shape" -p "arm_L0_wrist";
	rename -uid "8049F2CB-47CB-3E99-22A9-458F8DDA7C01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_wrist32Shape" -p "arm_L0_wrist";
	rename -uid "58F41929-4382-8417-EFBF-35B6B5283ECB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_wrist33Shape" -p "arm_L0_wrist";
	rename -uid "E5496A54-479C-6FA0-7C85-47B334EBFF2A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist33_0crvShape" -p "arm_L0_wrist";
	rename -uid "DFAF0237-43B2-7DF1-8754-519BF2298638";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist33_1crvShape" -p "arm_L0_wrist";
	rename -uid "3B866622-4446-11E6-091B-07845EDE9E69";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "arm_L0_eff" -p "arm_L0_wrist";
	rename -uid "11B8451A-411E-13FE-A3B8-47BFB216D1D6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308122 1.2434497875801753e-014 8.0491169285323849e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "CBE7209F-41A9-C0E9-8F22-C697CCDFA6EC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_eff31Shape" -p "arm_L0_eff";
	rename -uid "AEBC8C3C-4F13-F158-231F-A5A9F7FE2262";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_eff32Shape" -p "arm_L0_eff";
	rename -uid "0440AF1B-42BF-F8A2-6F9E-79AE80A6C1BE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_eff33Shape" -p "arm_L0_eff";
	rename -uid "3766F2CE-4FF7-E5C1-0BB2-85AE1D38794A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_eff33_0crvShape" -p "arm_L0_eff";
	rename -uid "E7FD8A80-48EE-F810-FA4F-06BB9366A3C5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_eff33_1crvShape" -p "arm_L0_eff";
	rename -uid "2C7BBB7E-4075-0F63-F2C2-0583DEC60F79";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "armUI_L0_root" -p "arm_L0_eff";
	rename -uid "37376FB6-4028-F26F-BDE0-909168E14E71";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2124561875008055 0.5607311476451784 -0.29276117198398899 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "armUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "armUI_L0_rootShape" -p "armUI_L0_root";
	rename -uid "BB6CC820-4F28-2114-074B-E097777EC330";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_L0_root31Shape" -p "armUI_L0_root";
	rename -uid "97A3D47B-44FD-9E66-047F-B08A75218B4B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_L0_root32Shape" -p "armUI_L0_root";
	rename -uid "CC04D6B6-4227-2CA7-E304-3CB856A7A63E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_L0_root33Shape" -p "armUI_L0_root";
	rename -uid "09C1D425-401F-019B-F14B-309B5F0C3FA1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "armUI_L0_sizeRef" -p "armUI_L0_root";
	rename -uid "284BB8FA-400C-A2D9-A79F-E1B609E88E62";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085808989 -0.027001577630493045 1.0430060296210659 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145882031 3.3190804973695873 45.37932415024774 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377431 1.049508226737738 1.0495082267377402 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "meta_L0_root" -p "arm_L0_eff";
	rename -uid "2357FA2D-4C70-C665-4115-0895F8188393";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "intScale" -ln "intScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intRotation" -ln "intRotation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intTranslation" -ln "intTranslation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0556240028445663 -0.075350553640980422 0.35296225288850214 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008866942 93.717381466937226 86.467960127478307 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716924 0.30838721081716924 0.30838721081716947 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "meta_01";
	setAttr ".comp_name" -type "string" "meta";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "meta_L0_rootShape" -p "meta_L0_root";
	rename -uid "E64D9234-4B2A-6269-4EB9-8FBDCBB8EF7F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_root31Shape" -p "meta_L0_root";
	rename -uid "EBD024FB-4B1A-16F2-BAFE-4592279F2165";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_root32Shape" -p "meta_L0_root";
	rename -uid "0DBEC004-44CD-01D7-EA96-46A52FB06EC5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_root33Shape" -p "meta_L0_root";
	rename -uid "9C910CD2-4651-9A80-F33F-15A4F6CD620A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "meta_L0_0_loc" -p "meta_L0_root";
	rename -uid "BDA670AE-4D5F-7DC0-91EE-06AF773882AA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617074 1.4210854715202004e-014 -3.3750779948604759e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "D4F3F3AC-4D3B-1C70-6177-4BAF9DD7151D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc31Shape" -p "meta_L0_0_loc";
	rename -uid "4EB468B2-45E9-3263-5996-35B0C724E20C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_0_loc32Shape" -p "meta_L0_0_loc";
	rename -uid "DFDF1BBD-4A9C-BBFF-C9D3-DAA742F3BBC3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_0_loc33Shape" -p "meta_L0_0_loc";
	rename -uid "532B5EED-4A4E-EAE7-BB3A-C1AE79DAD4AD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc33_0crvShape" -p "meta_L0_0_loc";
	rename -uid "69380BBA-4A6E-B081-0B7C-DAB83DA4E5FB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc33_1crvShape" -p "meta_L0_0_loc";
	rename -uid "15D068F8-4AA9-66A1-5160-EF88633C633F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "meta_L0_1_loc" -p "meta_L0_0_loc";
	rename -uid "7BE32068-48B0-17A9-088A-C3A13B9DFE3F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618451 2.8421709430404007e-014 8.8817841970012523e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000013 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "1EE8AC3C-42B9-72FC-E15F-428B81A90B56";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc31Shape" -p "meta_L0_1_loc";
	rename -uid "15667072-43EC-AA6B-1873-E2A06666F18F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_1_loc32Shape" -p "meta_L0_1_loc";
	rename -uid "8ED3E804-4688-0698-3C7C-E695ACE3E3B1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_1_loc33Shape" -p "meta_L0_1_loc";
	rename -uid "91021583-42B4-750E-CD71-83A338357867";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc33_0crvShape" -p "meta_L0_1_loc";
	rename -uid "1D2D45BD-462B-0302-BECB-E78DEB9C1E5B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc33_1crvShape" -p "meta_L0_1_loc";
	rename -uid "0EFE7D0E-45ED-4A46-4A83-ED8A3F720CE7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "meta_L0_2_loc" -p "meta_L0_1_loc";
	rename -uid "CD662AF8-468C-3CAF-F774-32879ED587BE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618584 -7.1054273576010019e-015 -1.9539925233402755e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999878 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "82926C70-491D-02AE-07AC-C1AEFF9428F6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc31Shape" -p "meta_L0_2_loc";
	rename -uid "88DB167B-4A33-B480-6B61-1AA4C425E712";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_2_loc32Shape" -p "meta_L0_2_loc";
	rename -uid "66647E28-4C11-3103-75B0-0386B73FCD41";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_2_loc33Shape" -p "meta_L0_2_loc";
	rename -uid "19CCC6F6-4326-8026-FD72-B6BED3E4EBC0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc33_0crvShape" -p "meta_L0_2_loc";
	rename -uid "A2C92909-49CD-A9C5-F6A1-1CBD019A9D35";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc33_1crvShape" -p "meta_L0_2_loc";
	rename -uid "4622B332-48CE-EB7F-918B-F3801D378B23";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_root" -p "meta_L0_2_loc";
	rename -uid "BA1A7AC8-4CD9-25A3-A66C-C189956A7FD3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 3 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.27518484001103305 -0.17360051577777824 2.4946799341790467 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878592663 -68.58707385545253 -5.81633741811953 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661783 1.2929668245661801 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L3_rootShape" -p "finger_L3_root";
	rename -uid "1E88131F-41EE-5BAC-1C0B-9CA20B4F1CF7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_root31Shape" -p "finger_L3_root";
	rename -uid "CCEDF0AF-4518-41E4-BC3D-628E9E9ECBF9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_root32Shape" -p "finger_L3_root";
	rename -uid "DCD8C697-4F10-DCA4-C6F0-E4A38D6F390C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_root33Shape" -p "finger_L3_root";
	rename -uid "3AB15FC6-4AE6-0F68-FB3E-249B94F56616";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L3_0_loc" -p "finger_L3_root";
	rename -uid "F0F86D5B-4A6D-20A0-39BD-8D8979B729C5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561667 1.4210854715202004e-014 -5.5511151231257827e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "B25EFCC3-4126-19E2-C6DB-DEBF2A954D06";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc31Shape" -p "finger_L3_0_loc";
	rename -uid "F365566B-4867-7045-D702-FDA03D1CB84A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_0_loc32Shape" -p "finger_L3_0_loc";
	rename -uid "2D41B584-4468-D066-CD49-5D964BCD76BF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_0_loc33Shape" -p "finger_L3_0_loc";
	rename -uid "92B34D46-4F44-8761-E370-8DA429E9AE62";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc33_0crvShape" -p "finger_L3_0_loc";
	rename -uid "9915B3D1-47A2-F27F-CABC-6B8D8D519AE0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc33_1crvShape" -p "finger_L3_0_loc";
	rename -uid "2D8B1262-47F0-D2FB-114F-698DDC895CDC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_1_loc" -p "finger_L3_0_loc";
	rename -uid "3A6C1902-460A-4A64-AB32-CCA4AAD5630D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876573 -2.1316282072803006e-014 1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999933 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "277F3441-4CFA-223C-B46B-D2A8155FEC9A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc31Shape" -p "finger_L3_1_loc";
	rename -uid "C7BD6D67-43A0-4584-1144-13B9D9CE4B12";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_1_loc32Shape" -p "finger_L3_1_loc";
	rename -uid "54FC3A4E-42C1-60FB-530F-D69BE0A6AEDD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_1_loc33Shape" -p "finger_L3_1_loc";
	rename -uid "5A17A92B-47CA-0800-C9FB-66844728EE82";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc33_0crvShape" -p "finger_L3_1_loc";
	rename -uid "1289246D-4338-AE74-8664-2EB01F2344E5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc33_1crvShape" -p "finger_L3_1_loc";
	rename -uid "785B31D5-4AB9-BF99-F071-A1B89D00559D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_2_loc" -p "finger_L3_1_loc";
	rename -uid "110373C1-46EE-F169-CBEE-52A825F18689";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193812 1.0658141036401503e-014 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000013 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "609AF41D-47C2-7952-8AC3-BA85B6310C1E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc31Shape" -p "finger_L3_2_loc";
	rename -uid "B7DDD0D2-4627-1B82-C57C-CF9696BD5866";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_2_loc32Shape" -p "finger_L3_2_loc";
	rename -uid "C56512AB-431A-74A1-4D93-639978582BA3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_2_loc33Shape" -p "finger_L3_2_loc";
	rename -uid "F8181B53-4AE0-F949-F954-DA8FC477ADA2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc33_0crvShape" -p "finger_L3_2_loc";
	rename -uid "9EE8E7BF-487F-3899-EAEC-7CB8AA621EB7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc33_1crvShape" -p "finger_L3_2_loc";
	rename -uid "3AA4770C-4E0A-23ED-9277-3884E6B618E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_blade" -p "finger_L3_root";
	rename -uid "C618512A-43CB-D67A-D2DA-E1914D53B24B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "761415F7-427A-3FBE-C99D-25ADFAD0A527";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970855 0 0
		0 0.2585933649132362 0
		0 0 0
		;
createNode aimConstraint -n "finger_L3_blade_aimConstraint11" -p "finger_L3_blade";
	rename -uid "87967F36-45A9-D7BF-2945-E0815254F20B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L3_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L3_blade_pointConstraint11" -p "finger_L3_blade";
	rename -uid "30358570-461D-2E75-C87B-3EA7AD7AD936";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L3_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-015 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "52906E01-44E7-443A-D7EA-E58292AB1526";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754426 -29.032786855763451 1.4804327725051827 ;
	setAttr ".r" -type "double3" -7.5791665394149224 -14.304244378900297 49.348303523761984 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.632098310678602 2.6320983106786069 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "3F8A2D1D-404F-44E0-A36D-39A4ED781B25";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "E2B419E6-4AFC-B968-6793-12ABF9CD52A5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_L2_root" -p "meta_L0_1_loc";
	rename -uid "B7B02D79-4681-A08E-5D69-9AB328B6CBB9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 2 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21404201232122588 -0.17620518664707419 2.8414845756647367 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121376453 -82.086889237978767 -14.829711404955479 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.2929668245661774 1.2929668245661798 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L2_rootShape" -p "finger_L2_root";
	rename -uid "C9AC43AB-42ED-E449-90A2-4BB55ED89B4F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_root31Shape" -p "finger_L2_root";
	rename -uid "5AC61529-4893-9CCC-7053-51B3B1CD669F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_root32Shape" -p "finger_L2_root";
	rename -uid "9AF343F9-4DB1-293C-BC38-4AB86054910C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_root33Shape" -p "finger_L2_root";
	rename -uid "6B08F7D4-412A-4966-C51C-A18FD36158B5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L2_0_loc" -p "finger_L2_root";
	rename -uid "5A643CE0-4EBD-8E75-A741-97A038CF903E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406396 -3.5527136788005009e-015 2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000018 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "A664D1CE-4D5F-B6C2-00A8-C99D6EEAEE64";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc31Shape" -p "finger_L2_0_loc";
	rename -uid "39D2FA1F-41A1-174F-6E2A-31844E7619F5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_0_loc32Shape" -p "finger_L2_0_loc";
	rename -uid "D9484084-42DC-B175-230C-A984CA36C57F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_0_loc33Shape" -p "finger_L2_0_loc";
	rename -uid "71DF80F6-46E1-9D76-CBFD-81AB28D0F0F1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc33_0crvShape" -p "finger_L2_0_loc";
	rename -uid "8AEB8A83-461E-6A16-CA40-C5B117A08187";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc33_1crvShape" -p "finger_L2_0_loc";
	rename -uid "86480508-4EFD-C9A9-AC5B-CE8E0F59BE48";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L2_1_loc" -p "finger_L2_0_loc";
	rename -uid "33962BC0-4B4A-018F-9A35-7D9D019D4C4E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587175467 1.4210854715202004e-014 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "1D60C2C1-4502-91ED-9F43-998B4ABBD3A0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc31Shape" -p "finger_L2_1_loc";
	rename -uid "E5F2C49C-43E7-3830-2D76-C8A5DC995DD9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_1_loc32Shape" -p "finger_L2_1_loc";
	rename -uid "B364ED51-4A97-3E62-0AC4-EF80604D88CD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_1_loc33Shape" -p "finger_L2_1_loc";
	rename -uid "F6114564-403C-CBAA-80D8-809926A85461";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc33_0crvShape" -p "finger_L2_1_loc";
	rename -uid "5FACF31D-476A-6C61-5C55-8E90347650D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc33_1crvShape" -p "finger_L2_1_loc";
	rename -uid "2115544A-4859-F4BC-7E79-4DAA52F2DA9D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L2_2_loc" -p "finger_L2_1_loc";
	rename -uid "D205BAA0-4101-5EF4-2ABF-1FB6B27EF974";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915532 -1.7763568394002505e-014 -1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "8D730582-48AB-D9C5-FDA3-49A5F8BA163D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc31Shape" -p "finger_L2_2_loc";
	rename -uid "779CBE06-4FC1-3823-E339-62933ABEEB4A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_2_loc32Shape" -p "finger_L2_2_loc";
	rename -uid "AB15E6BB-41A7-940B-D315-3E8DADB650B9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_2_loc33Shape" -p "finger_L2_2_loc";
	rename -uid "46498B0A-4BE9-32FE-1C57-628BEA790F1F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc33_0crvShape" -p "finger_L2_2_loc";
	rename -uid "69C84E52-4DB8-9833-E31D-D4BDA85DFC39";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc33_1crvShape" -p "finger_L2_2_loc";
	rename -uid "63BE9BD8-4A03-E408-5147-6883D8F067F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L2_blade" -p "finger_L2_root";
	rename -uid "3E2AACD4-435A-8F29-758D-C38424614FA2";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000018 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "029B8352-44C6-8631-6FBD-0CBCE87B26A2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970722 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_L2_blade_aimConstraint11" -p "finger_L2_blade";
	rename -uid "32EBFF8D-4D3D-620D-6D7B-E0BFF66DEC79";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L2_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L2_blade_pointConstraint11" -p "finger_L2_blade";
	rename -uid "4275F554-4BD6-55C7-FE57-AFAC59A8220F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L2_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 7.1054273576010019e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "DB3117E8-4F9C-260F-9663-FD9ECD2C09CF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309348 -29.023661369441523 1.4173349723088171 ;
	setAttr ".r" -type "double3" -0.54140613099111801 -1.5904804996496629 47.737641631364006 ;
	setAttr ".s" -type "double3" 2.632098310678614 2.6320983106786016 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "166C2EE3-49B4-FBC1-9995-B1977D0A0CAC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "2A38C164-4D61-87E7-0A0E-B487BED1F7CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_L1_root" -p "meta_L0_0_loc";
	rename -uid "0746D965-4254-83D8-DDBE-6BA09DD56BBC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 1 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.00776439696059672 -0.12358406696710489 2.9483952421545769 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870111 -79.977014017423144 -112.77222628638529 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661792 1.2929668245661805 1.2929668245661796 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L1_rootShape" -p "finger_L1_root";
	rename -uid "48B4BBC0-4DD2-9190-724C-BDBCE9CC9854";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_root31Shape" -p "finger_L1_root";
	rename -uid "D67DA2C2-40B7-D130-10F0-EE9C9F4C918E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_root32Shape" -p "finger_L1_root";
	rename -uid "5CA7D809-481D-60D1-0A93-AE88655BEEE2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_root33Shape" -p "finger_L1_root";
	rename -uid "DF8FACB0-48F3-534B-6012-658D273BC137";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L1_0_loc" -p "finger_L1_root";
	rename -uid "FEA2D7AF-4599-6494-DDAA-29A2CF2AA87D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998401 7.1054273576010019e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "147BDEC1-4A8B-3FC3-2D94-EBAE66547301";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc31Shape" -p "finger_L1_0_loc";
	rename -uid "3041F247-4106-5F42-64E1-00B76FF0CD12";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_0_loc32Shape" -p "finger_L1_0_loc";
	rename -uid "E2DEA184-4013-6426-25A3-628F4223B72F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_0_loc33Shape" -p "finger_L1_0_loc";
	rename -uid "68102934-4EC5-7CDC-BD9B-4EBAF95F0E04";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc33_0crvShape" -p "finger_L1_0_loc";
	rename -uid "A43F874A-4E90-2E16-2E5C-E2B6E4D86A0B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc33_1crvShape" -p "finger_L1_0_loc";
	rename -uid "956D6649-4858-7B76-165C-BFAF24FFFD93";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L1_1_loc" -p "finger_L1_0_loc";
	rename -uid "CA15AE23-4D02-C449-7C47-EEA4A4625501";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019683 1.4210854715202004e-014 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "C3421841-46EC-4082-23C3-4DA064919FA8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc31Shape" -p "finger_L1_1_loc";
	rename -uid "F5ABEC54-45DF-D9C9-7C25-32AC5EB175D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_1_loc32Shape" -p "finger_L1_1_loc";
	rename -uid "09D92D4D-4835-2845-A83F-5D8F899081CA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_1_loc33Shape" -p "finger_L1_1_loc";
	rename -uid "24F00466-42E8-CCD7-B667-86BF6C926691";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc33_0crvShape" -p "finger_L1_1_loc";
	rename -uid "E268F013-4438-AA38-1F40-4F9A36B0B8DE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc33_1crvShape" -p "finger_L1_1_loc";
	rename -uid "C04FBBB8-4018-35A2-9D4B-FB9E9E7FBF56";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L1_2_loc" -p "finger_L1_1_loc";
	rename -uid "FECF8FB5-473E-C537-842C-A980C0C05555";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549589761 -1.7763568394002505e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "D95C1439-4451-8148-3AED-EBABD0760F82";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc31Shape" -p "finger_L1_2_loc";
	rename -uid "187E1DF3-4025-8B59-B44E-1C999C75F052";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_2_loc32Shape" -p "finger_L1_2_loc";
	rename -uid "38F83FCC-4348-624C-FC0E-6EBBC6091FE0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_2_loc33Shape" -p "finger_L1_2_loc";
	rename -uid "D6F84089-4F6D-94BE-A185-D7B19F6F763D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc33_0crvShape" -p "finger_L1_2_loc";
	rename -uid "295D36DD-471D-5FA1-C71F-938245A014AF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc33_1crvShape" -p "finger_L1_2_loc";
	rename -uid "4A119113-4A1B-D87D-10E9-27B325257B6D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L1_blade" -p "finger_L1_root";
	rename -uid "14D82CD5-4F83-7A87-5B78-2C9CCB21B9DB";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999944 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "B34F9BAF-4035-C9DA-DA2F-FAB8F8B43BDB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970744 0 0
		0 0.25859336491323581 0
		0 0 0
		;
createNode aimConstraint -n "finger_L1_blade_aimConstraint11" -p "finger_L1_blade";
	rename -uid "80AA8EE7-4956-B430-F614-D19FD85E27DE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L1_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L1_blade_pointConstraint11" -p "finger_L1_blade";
	rename -uid "87377ED2-4006-4A60-BEF5-458C2FD9D1EA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L1_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 7.1054273576010019e-015 
		4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "976CE154-48F1-EB4B-B3E8-5E9D68A6CAEF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153207 -28.040620010901357 1.1418187531087756 ;
	setAttr ".r" -type "double3" 5.8484943948551678 9.9768879508736745 54.111347352878411 ;
	setAttr ".s" -type "double3" 2.6320983106786122 2.6320983106786016 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "D7BF746E-4E8B-C0BC-19B2-3989D004896A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "75C76075-4AFC-7F6B-F4D4-3CB7CA92AB20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "meta_L0_blade" -p "meta_L0_root";
	rename -uid "99E67007-45EC-60A5-2396-D983683E5AD6";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999856 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "361DC893-4F43-862A-E16D-5ABF9C352D13";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030155 0 0
		0 0.061677442163433849 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint11" -p "meta_L0_blade";
	rename -uid "3C3A230A-4E59-24C8-44C5-F3B713E61C5F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "meta_L0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "meta_L0_blade_pointConstraint11" -p "meta_L0_blade";
	rename -uid "9F33658C-49AA-CBEE-166B-D28FA9391978";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "meta_L0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -7.1054273576010019e-015 
		-1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "A43C578E-453C-6C14-2756-079C89AA26B8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400305 -38.076493243284901 11.714163621936637 ;
	setAttr ".r" -type "double3" -81.595645682431581 -44.654258545702362 89.275820115296398 ;
	setAttr ".s" -type "double3" 3.403215794704129 3.4032157947041131 3.4032157947041233 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "8C16DDE4-4608-C0C5-AC83-FE80D81E9B57";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "94E71BCD-4C7C-A590-38DC-6098CAE2FB93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_L0_root" -p "meta_L0_root";
	rename -uid "508F0C4F-46CB-CE3D-B564-F996EE256568";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.18403723679763262 -0.305860060470458 2.7614233959505565 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808457 -71.606679450097715 -133.79382708613392 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566179 1.2929668245661801 1.292966824566181 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L0_rootShape" -p "finger_L0_root";
	rename -uid "E8D88BFC-4117-AE29-9832-149706B23A7F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_root31Shape" -p "finger_L0_root";
	rename -uid "AE506D47-4FC6-4B3D-08A0-E387B4691758";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_root32Shape" -p "finger_L0_root";
	rename -uid "AC6E0348-4089-45B8-10B6-87975B08717B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_root33Shape" -p "finger_L0_root";
	rename -uid "B553EB9B-4871-B838-D6D2-FB998321AAF0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L0_0_loc" -p "finger_L0_root";
	rename -uid "03E67912-4367-2DF1-A716-6D80A078A6F3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1 0 4.8849813083506888e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "98466C7B-42CF-49D4-15D4-6AA2C98D9BE4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc31Shape" -p "finger_L0_0_loc";
	rename -uid "AF4780FF-4B66-A948-0852-55A9923C6086";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_0_loc32Shape" -p "finger_L0_0_loc";
	rename -uid "90621899-4C22-CA94-E51C-D5A3F20A4AE3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_0_loc33Shape" -p "finger_L0_0_loc";
	rename -uid "A0AAA199-46A5-357C-9D88-7388BD35CC5D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc33_0crvShape" -p "finger_L0_0_loc";
	rename -uid "36C3AA66-42AF-3A25-32C0-1F855A0C9B7A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc33_1crvShape" -p "finger_L0_0_loc";
	rename -uid "14A4AA72-4AB9-E09E-C5E6-C7A71AD7FDED";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L0_1_loc" -p "finger_L0_0_loc";
	rename -uid "7A1D39EB-4E76-572D-39B0-B3ACCE39F93B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927963 -2.4868995751603507e-014 2.2204460492503131e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "12D4C68D-4847-FD85-7D6A-08B02BD1E133";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc31Shape" -p "finger_L0_1_loc";
	rename -uid "3E0943A5-4D9F-85EC-A3F0-4F864D76EBCD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_1_loc32Shape" -p "finger_L0_1_loc";
	rename -uid "7EC8FFEC-477B-526C-611E-8086A0E7A52B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_1_loc33Shape" -p "finger_L0_1_loc";
	rename -uid "692EBBFF-4D32-5347-15AE-32B2F33CBB37";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc33_0crvShape" -p "finger_L0_1_loc";
	rename -uid "E51BD6EA-43ED-10B1-C08B-29A7D08A2DF8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc33_1crvShape" -p "finger_L0_1_loc";
	rename -uid "B0AADD47-4654-3744-B1F1-7A9386AF3EF4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L0_2_loc" -p "finger_L0_1_loc";
	rename -uid "87CC60CF-4D3B-379B-AF02-2A986F7D43D2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392368009 3.1974423109204508e-014 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "A384E8EA-4FBE-647E-49D7-E4BE78DF2657";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc31Shape" -p "finger_L0_2_loc";
	rename -uid "C326C691-49AD-4019-BB04-6AAF9E0D7BCC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_2_loc32Shape" -p "finger_L0_2_loc";
	rename -uid "6A5D8B67-4131-BB01-187B-A2964ADC702D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_2_loc33Shape" -p "finger_L0_2_loc";
	rename -uid "35B13494-4FED-F608-E6C3-D3A74CDC99B9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc33_0crvShape" -p "finger_L0_2_loc";
	rename -uid "8F911736-4715-B1D0-1CEC-A78DE0B05159";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc33_1crvShape" -p "finger_L0_2_loc";
	rename -uid "9D14433D-4EBE-75A7-D919-0A9BE371668F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_L0_blade" -p "finger_L0_root";
	rename -uid "24DB3C54-4B0F-52BF-72B1-F395F3823720";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "BF5BA793-4840-EFF8-B038-94BF3B2E9418";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970733 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_L0_blade_aimConstraint11" -p "finger_L0_blade";
	rename -uid "09FCE44E-41EC-230B-6220-418F9D289E3B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L0_blade_pointConstraint11" -p "finger_L0_blade";
	rename -uid "064729D7-4E3E-F5B7-D43E-4CA2A488FEB9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "F4311581-4937-97CB-9064-40982DF6B98E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713128 -27.336008057181171 2.4648652761299781 ;
	setAttr ".r" -type "double3" 9.1654334880187651 22.11117621255578 57.120615095545162 ;
	setAttr ".s" -type "double3" 2.6320983106786113 2.6320983106785998 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "D932DC82-48FD-802B-BA16-6E82B3B98F38";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "99F2847D-4107-8B0D-2796-AB81E14CA6BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "thumbRoll_L0_root" -p "meta_L0_root";
	rename -uid "D2CC59A2-4614-C6E5-81DF-78B032E3713A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.7 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.2130362370907366 -0.22489125789798692 0.13070337452153424 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848328279 -84.001563523230985 11.00920440691163 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.403215794704129 3.4032157947041157 3.4032157947041219 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "thumbRoll";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "sphere";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumbRoll_L0_rootShape" -p "thumbRoll_L0_root";
	rename -uid "A31885DF-4F3E-64C6-944A-E09A93E25FDE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root22Shape" -p "thumbRoll_L0_root";
	rename -uid "DC1F6750-484F-30A4-BCB8-89B911ADDFE8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root23Shape" -p "thumbRoll_L0_root";
	rename -uid "44F704E5-4006-51E7-75D4-DDAE7E1D6304";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_L0_root24Shape" -p "thumbRoll_L0_root";
	rename -uid "E6A5E7B4-4204-341A-7130-9F8E15F2FF16";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumbRoll_L0_sizeRef" -p "thumbRoll_L0_root";
	rename -uid "5F39F89D-477B-F083-5D93-F4AC04A29F02";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-015 3.907985046680551e-014 1.0000000000000007 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.43082921220573 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999745 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "thumb_L0_root" -p "thumbRoll_L0_root";
	rename -uid "8C55047B-4902-A8C7-017B-DD91273C1EC5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 0 7.7715611723760958e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913056 -43.900240512232465 -37.623269198287723 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511095 0.48936434703511023 0.48936434703511167 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "thumb";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumb_L0_rootShape" -p "thumb_L0_root";
	rename -uid "04B2CA82-4529-DE5C-D699-188ECE869074";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_root31Shape" -p "thumb_L0_root";
	rename -uid "658EAF44-4B90-D902-5CB5-ABA0FEDBE622";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_root32Shape" -p "thumb_L0_root";
	rename -uid "FE3C3595-46AA-9FFA-4261-0086823B1455";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_root33Shape" -p "thumb_L0_root";
	rename -uid "3AF7B119-4BA6-E422-1933-F3B63EB93D21";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumb_L0_0_loc" -p "thumb_L0_root";
	rename -uid "96225A20-44B5-455B-BDA4-FDBBC073A95D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469851 0.0024095775966994637 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060638 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "C0384591-4F94-D1C7-C5E8-04B11C9664EC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc31Shape" -p "thumb_L0_0_loc";
	rename -uid "F6CD9840-4551-D6C3-7B59-2CA8AD46F80B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc32Shape" -p "thumb_L0_0_loc";
	rename -uid "ED51E6D4-459A-2D33-C955-F8B94A0E45FD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_0_loc33Shape" -p "thumb_L0_0_loc";
	rename -uid "69859963-4B7F-2C1C-FCA5-14BD25372207";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc33_0crvShape" -p "thumb_L0_0_loc";
	rename -uid "945937D2-47BA-4F5C-C907-5D9EDD9C4AAB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc33_1crvShape" -p "thumb_L0_0_loc";
	rename -uid "3D04730C-4E90-5ABD-C2ED-DD877C5F45D5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "thumb_L0_1_loc" -p "thumb_L0_0_loc";
	rename -uid "72977435-4D16-484A-0DAE-FCA38FB6A6AA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522321 -5.3290705182007514e-015 2.1316282072803006e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999878 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "4ACEDF26-473E-8630-F996-6C94976793C0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc31Shape" -p "thumb_L0_1_loc";
	rename -uid "5D059F67-4507-2345-4DD8-CA9573BE3B47";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc32Shape" -p "thumb_L0_1_loc";
	rename -uid "8391241A-44C4-4986-8B6D-9F96B85CC145";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_1_loc33Shape" -p "thumb_L0_1_loc";
	rename -uid "BA8CD890-4514-E0CD-E7A4-55AA33CAF602";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc33_0crvShape" -p "thumb_L0_1_loc";
	rename -uid "02201CAE-4DD9-ABAC-5D4B-F58D9D1FE690";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc33_1crvShape" -p "thumb_L0_1_loc";
	rename -uid "048AC1FA-4704-DE14-B526-D18B74A7648F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "thumb_L0_2_loc" -p "thumb_L0_1_loc";
	rename -uid "1990E5A8-470A-2664-DE38-5C823BC6AEF1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510564 7.1054273576010019e-015 1.4210854715202004e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000009 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "DA713C9D-4716-BFA5-678C-F681DF7072DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc31Shape" -p "thumb_L0_2_loc";
	rename -uid "38337D99-49FF-9285-B401-5ABC879AD4D7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc32Shape" -p "thumb_L0_2_loc";
	rename -uid "90A84F7F-45FA-628C-1C00-55B3E13B367A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_2_loc33Shape" -p "thumb_L0_2_loc";
	rename -uid "AD7E9764-4D55-359F-DEC5-A2AC397DAF42";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc33_0crvShape" -p "thumb_L0_2_loc";
	rename -uid "44D17E59-4ED8-21E3-CDDC-F98DD2763CE3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc33_1crvShape" -p "thumb_L0_2_loc";
	rename -uid "830DC80E-4494-A5E2-9B9A-C299514C9E78";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "thumb_L0_blade" -p "thumb_L0_root";
	rename -uid "3BC1981F-46B0-39DA-7FBD-C3A7D0DE9D81";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999811 0.99999999999999822 0.99999999999999944 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "50ABAC08-473F-94A7-D8C5-E0886177FC09";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106656 0 0
		0 0.097872869407022181 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint11" -p "thumb_L0_blade";
	rename -uid "DF0643E4-4B30-4AB5-E3EB-3891A9968C3E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "thumb_L0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 6.62331696607796e-016 4.7308404509159785e-013 0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint11" -p "thumb_L0_blade";
	rename -uid "5B0E864B-4BF1-05D9-8F7F-A0B0D957110B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_L0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 2.6645352591003757e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "C3AC88A8-406C-D9C4-58B8-C5A2916B4E3D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042872 -7.0737929587543356 17.725867635512831 ;
	setAttr ".r" -type "double3" -124.44302205362678 63.100734454449658 -77.281354162701774 ;
	setAttr ".s" -type "double3" 2.0434672163157255 2.0434672163157193 2.0434672163157255 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "039773D7-45FB-7155-2CE2-62AD47349D2C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "D6F72F5A-41D0-8240-DEF7-0BAC2E506BB6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "arm_L0_crv" -p "arm_L0_root";
	rename -uid "76988828-46D7-D4A1-2E02-BE98D85DD339";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200436 -11.862061807473028 1.156441220564858 ;
	setAttr ".r" -type "double3" -2.153440861104571 -4.1959370793366819 45.437740049298284 ;
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377391 1.0495082267377405 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "FAAA15AC-4AEC-F19B-AFFD-ECB81E79FC2E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "7A27683C-48BB-FFFB-A1A3-6E9DB81D0CE5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_L0_blade" -p "shoulder_L0_root";
	rename -uid "CD09C65F-4501-DCB4-35CE-DD9602A2C2AE";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 90.000000000000114 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999667 0.99999999999999756 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "34044CBE-4BBB-B767-ADE2-218202AD235C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000131 0 0
		0 0.20000000000000043 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint11" -p "shoulder_L0_blade";
	rename -uid "62546DEF-4351-B37B-A116-02B81E8D5462";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_L0_tipW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 90 179.9999999999996 180.0000000000002 ;
	setAttr ".rsrr" -type "double3" 23.386262286473066 122.53864021838226 110.03040021520762 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint11" -p "shoulder_L0_blade";
	rename -uid "F9AC3456-4900-B14F-44FD-11B4ECE0154E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_L0_rootW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -3.8163916471489756e-017 
		-1.3877787807814457e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "0197B470-4057-EB4C-EA68-13964EBC988E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509831 0.0092761897382756427 0.11673327753265014 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377367 1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "A98D8BC4-41B1-29D2-6A17-5DAC0CB88823";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "2CF5CA4D-451B-0946-F1F7-189D87CF9FAB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "neck_C0_root" -p "spine_C0_eff";
	rename -uid "0B1AA213-451D-C7D6-D4AB-F1AB2A073F56";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "headrefarray" -ln "headrefarray" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "maxsquash" -ln "maxsquash" -dv 0.5 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "softness" -ln "softness" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "division" -ln "division" -dv 3 -min 3 -at "long";
	addAttr -ci true -sn "tangentControls" -ln "tangentControls" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "chickenStyleIK" -ln "chickenStyleIK" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2667429610648462 0.53748181085566249 -4.2147015411630268e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 7.062250076880252e-031 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.59839228104243669 0.59839228104243269 0.59839228104243269 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "neck_ik_01";
	setAttr ".comp_name" -type "string" "neck";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".headrefarray" -type "string" "spine_C0_eff,body_C0_root,local_C0_root,global_C0_root";
	setAttr ".ikrefarray" -type "string" "spine_C0_eff,body_C0_root,local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
	rename -uid "3B533B2E-47BC-A8EE-3374-FA828B7245F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_root31Shape" -p "neck_C0_root";
	rename -uid "C80B6F35-4327-5BD2-CEEA-D385656C5550";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_root32Shape" -p "neck_C0_root";
	rename -uid "D3A926D8-400B-6ABE-D314-1A9F8E1CC897";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_root33Shape" -p "neck_C0_root";
	rename -uid "B7541206-4E08-8070-E53A-D9A1CEC71CBD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "neck_C0_neck" -p "neck_C0_root";
	rename -uid "E6FD13BC-4FE4-573A-B97E-5A85C51BAA15";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.6681173398164103 2.4674946259577837 1.5382908879615304e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999567 0.99999999999999623 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "B25BB3F5-4C95-18B4-3836-EBB572B99800";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_neck31Shape" -p "neck_C0_neck";
	rename -uid "5C222BA3-4EB2-A570-9596-9EA91E75D2C0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_neck32Shape" -p "neck_C0_neck";
	rename -uid "8F44CE49-482E-E444-C260-D0853DFB6A27";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_neck33Shape" -p "neck_C0_neck";
	rename -uid "C981C1D7-4292-D8EA-53A1-0A8975EFE1BE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_neck33_0crvShape" -p "neck_C0_neck";
	rename -uid "5235E2C1-451C-BAF0-1F60-ED8AF161B1D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_neck33_1crvShape" -p "neck_C0_neck";
	rename -uid "02DF959F-4F99-A9F4-ECD3-07B51A93DF11";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_head" -p "neck_C0_neck";
	rename -uid "E6EA8B8B-42B2-2BAA-C718-02B554FB11B9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.7755575615628914e-017 0.10000000000005471 1.2246467991476512e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "F9C3404A-43EB-A0B3-20CF-709B5EAF9136";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_head31Shape" -p "neck_C0_head";
	rename -uid "92BA9778-4D86-4677-32CD-DDB75B2846C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_head32Shape" -p "neck_C0_head";
	rename -uid "B52B25EA-4FCA-DB8F-AA04-3BA8F4367F46";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_head33Shape" -p "neck_C0_head";
	rename -uid "3FAACC50-48E5-D979-0A47-FAB1421B213A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_head33_0crvShape" -p "neck_C0_head";
	rename -uid "25D3FCB8-4285-509A-ED4C-55A214577E47";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_head33_1crvShape" -p "neck_C0_head";
	rename -uid "04B3ADA1-48CE-100B-E9AD-9F8247DEE2D6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_eff" -p "neck_C0_head";
	rename -uid "D8BA7570-4229-F256-882F-FFACA20F984F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1796119636642288e-015 3.0746209978281591 2.3592239273284182e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "FFA41276-4543-9825-56C8-42A83DB09E43";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_eff31Shape" -p "neck_C0_eff";
	rename -uid "3AB9F608-41B7-C201-D2C8-5D80C04AF640";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_eff32Shape" -p "neck_C0_eff";
	rename -uid "684AFCF2-4769-CCF7-BC2E-968112413E48";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_eff33Shape" -p "neck_C0_eff";
	rename -uid "B662D664-4FAE-B2B2-9DFF-2B8432468FA6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_eff33_0crvShape" -p "neck_C0_eff";
	rename -uid "9A2A44CE-4066-1FE3-49F7-828F5D0C0D5B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_eff33_1crvShape" -p "neck_C0_eff";
	rename -uid "566F3BB2-4694-5B6F-81EB-BF9428B4F10C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "faceUI_C0_root" -p "neck_C0_eff";
	rename -uid "212BEAB0-4489-F126-D2CB-BC81F32A6C74";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9706458687096529e-015 1.3604681763870019 7.2046004192796172e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "faceUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "faceUI_C0_rootShape" -p "faceUI_C0_root";
	rename -uid "6261FA0E-4ACF-0418-6215-6BA016DDCCE6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "faceUI_C0_root31Shape" -p "faceUI_C0_root";
	rename -uid "5D8DE793-4A87-50E3-70A9-67BD732390AA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "faceUI_C0_root32Shape" -p "faceUI_C0_root";
	rename -uid "A198FC0E-4A0E-C881-6DC0-398100DF2134";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "faceUI_C0_root33Shape" -p "faceUI_C0_root";
	rename -uid "09747B44-494E-DF54-FA19-AB80D1881155";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "faceUI_C0_sizeRef" -p "faceUI_C0_root";
	rename -uid "0E954D92-4DAC-7964-F19D-8D8BBBFF189D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7538799546502086 0 -3.8943958161623592e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.7538799546502164 1.7538799546502193 1.7538799546502095 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	rename -uid "5DC98B26-4F21-FBAB-952E-1EA0BBBF07B3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -2.8421709430404007e-014 1.7723706024531467e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009501 0.95913545105009312 0.95913545105009035 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
	rename -uid "36A9377A-498E-F4E3-53E0-F9954F617B0E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_root31Shape" -p "mouth_C0_root";
	rename -uid "5A508684-4138-ACF8-D19C-45B7BB946E63";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_root32Shape" -p "mouth_C0_root";
	rename -uid "8026B23E-424E-051E-0CCE-BF8B5AD44D41";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_root33Shape" -p "mouth_C0_root";
	rename -uid "79A587DD-498C-CE74-DEE9-77BF59BC6779";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "mouth_C0_rotcenter" -p "mouth_C0_root";
	rename -uid "5AB00A92-4AE4-689B-94E3-45A6C5CF99CC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193458e-016 -0.6212361031959297 1.8022590188867553 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999623 0.99999999999999989 0.99999999999999667 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "BD9039AC-44AF-325F-4C47-5BA5B0DB8A59";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter31Shape" -p "mouth_C0_rotcenter";
	rename -uid "AA05E8A4-495B-5CC4-7E1A-F486E6DBDC7A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter32Shape" -p "mouth_C0_rotcenter";
	rename -uid "D9C514EE-4982-EA5D-5281-E598E7052813";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_rotcenter33Shape" -p "mouth_C0_rotcenter";
	rename -uid "70771B18-49ED-3165-232B-FF917D43F088";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter33_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "B8D021F4-46FC-293A-6810-A38B5DAB6F17";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter33_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "94C90E88-460C-9A2F-82DE-A18716563CC5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "mouth_C0_lipup" -p "mouth_C0_rotcenter";
	rename -uid "8F32D0EA-42F3-FB13-04D4-3DB8F878F6EB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.976153631341655e-017 0.12388352783448298 0.23628786867351481 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "ED893BE0-4CCD-4248-27E6-3F931B616CAD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup31Shape" -p "mouth_C0_lipup";
	rename -uid "0CD11123-4C7C-FF98-C95F-10AB549F4D58";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_lipup32Shape" -p "mouth_C0_lipup";
	rename -uid "0AE6E73F-4E9A-79F1-9119-2CA3372BC783";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_lipup33Shape" -p "mouth_C0_lipup";
	rename -uid "226BF6F8-438F-0969-6BB2-C2B65D7AAAA1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup33_0crvShape" -p "mouth_C0_lipup";
	rename -uid "B7C7A486-4369-EBB3-6688-E8B2D7DB3798";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup33_1crvShape" -p "mouth_C0_lipup";
	rename -uid "5BE90A6F-4D06-9186-61A4-F4BDEEADDB69";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_lipup";
	rename -uid "3E74E14B-4044-D00B-78EC-30948A4D0E4D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904475e-015 -30.115037669761495 -2.1322109539326477 ;
	setAttr ".s" -type "double3" 1.8286050763007577 1.8286050763007604 1.8286050763007606 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "640CA52C-4547-7A97-4D2D-3596249847DA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "259D221F-4250-4997-11A7-1686BC192BFB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_liplow" -p "mouth_C0_rotcenter";
	rename -uid "130A7B5A-4567-6FB3-211A-7AACBD43EB8C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.8775621283847457e-017 -0.14678247393469945 0.18194531820222348 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "CFCBFA9A-47FB-413E-6BED-868F4F78717B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow31Shape" -p "mouth_C0_liplow";
	rename -uid "4AD58E0E-41D5-E56D-BD6F-5DAF6F7864AA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_liplow32Shape" -p "mouth_C0_liplow";
	rename -uid "7413836A-4B15-BDCD-7009-27B27ED71006";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_liplow33Shape" -p "mouth_C0_liplow";
	rename -uid "2D109AE6-4B54-39AD-9725-52B69220C90A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow33_0crvShape" -p "mouth_C0_liplow";
	rename -uid "642D8200-4837-2B12-D898-7BB54B5B1891";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow33_1crvShape" -p "mouth_C0_liplow";
	rename -uid "3EE2E9E9-4A96-E7A5-2E3C-D18B7CA455A6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_liplow";
	rename -uid "2039F7C4-47D1-DAB0-156E-1196A4AD46A1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200162e-015 -29.844371667992309 -2.0778684034613564 ;
	setAttr ".s" -type "double3" 1.8286050763007577 1.8286050763007604 1.8286050763007606 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "58150DD5-45BF-833C-3B3D-4A83EDF37E31";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "1F90EEAE-4E42-A481-4425-F39A05B7D31F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_jaw" -p "mouth_C0_root";
	rename -uid "3DCFFFA9-4B61-874A-9B7E-CCA13CA250C0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0917243463457497e-015 -1.4111110000775007 2.0692083234973255 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999623 0.99999999999999989 0.99999999999999667 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "39577BAE-40DE-6D9C-1FAA-A1A4F74460C0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw31Shape" -p "mouth_C0_jaw";
	rename -uid "1FAB9757-4795-60A6-2A77-98ABA4F3999F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_jaw32Shape" -p "mouth_C0_jaw";
	rename -uid "5032044B-43AA-99CA-15E0-AE9D7AAF377E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_jaw33Shape" -p "mouth_C0_jaw";
	rename -uid "1CF062A6-4BB6-0DAE-E7BE-02A17BBF09D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw33_0crvShape" -p "mouth_C0_jaw";
	rename -uid "B5794938-44D9-B5AF-22F2-DA9055A4878A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw33_1crvShape" -p "mouth_C0_jaw";
	rename -uid "2514A198-4C96-1E0E-742E-3B898463A4C6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_root" -p "mouth_C0_jaw";
	rename -uid "8F19CE80-4AC1-72CA-733C-978845F5E806";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.2909663197643954e-016 0.86108709817294482 -1.6295011454214561 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700599 0.17172273903700588 0.17172273903700599 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "tongue";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "tongue_C0_rootShape" -p "tongue_C0_root";
	rename -uid "A4C746CA-41B9-F7E0-4138-2D8DB429BE5D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_root31Shape" -p "tongue_C0_root";
	rename -uid "4DA6523B-45CD-E099-034A-4894D0EA073B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_root32Shape" -p "tongue_C0_root";
	rename -uid "44EDD6B4-4F70-5D5A-5C32-8CA8B5F3650F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_root33Shape" -p "tongue_C0_root";
	rename -uid "FFC8296F-4C04-2760-9740-11878C8BC52B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "tongue_C0_0_loc" -p "tongue_C0_root";
	rename -uid "E86C6FA3-4821-A178-605C-8A900DC06E9E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180641485e-016 -2.8421709430404007e-014 1.5794817263027459 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000018 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "8AE5190C-438D-2523-A792-70A41BB0CC6F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc31Shape" -p "tongue_C0_0_loc";
	rename -uid "89F06DB1-4051-44D7-C877-F6B853DA001C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc32Shape" -p "tongue_C0_0_loc";
	rename -uid "B22C53D3-444F-2B3E-4542-5E9FC971834E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_0_loc33Shape" -p "tongue_C0_0_loc";
	rename -uid "FDD04CEE-451C-4EB1-CF74-F98385D6A62A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc33_0crvShape" -p "tongue_C0_0_loc";
	rename -uid "2586D533-4CDF-1A01-DFD6-F69083EB3440";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc33_1crvShape" -p "tongue_C0_0_loc";
	rename -uid "66A044CE-48CD-9328-61A1-51BFE32F80C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_1_loc" -p "tongue_C0_0_loc";
	rename -uid "C654120B-443A-F385-714D-6EB036BE9A0F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.2170680441440669e-016 -0.16556620751518381 1.5794817263027463 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999922 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "3396D01A-4389-00E8-6B33-C785B871A6CC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc31Shape" -p "tongue_C0_1_loc";
	rename -uid "F758CA74-4513-1E21-FD19-1CA7563B5682";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc32Shape" -p "tongue_C0_1_loc";
	rename -uid "BFB0754E-4004-DFC3-5C47-41BE31A7DC6B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_1_loc33Shape" -p "tongue_C0_1_loc";
	rename -uid "1261BD77-4111-B830-BA33-E2B8705A7108";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc33_0crvShape" -p "tongue_C0_1_loc";
	rename -uid "4E43B0CD-4198-AEAD-B07E-4185D075BC29";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc33_1crvShape" -p "tongue_C0_1_loc";
	rename -uid "05781308-496A-7CA2-200E-60880A1D4A9F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_2_loc" -p "tongue_C0_1_loc";
	rename -uid "69D52584-4E8F-9089-3189-8FB64D7C9437";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544644885e-016 -0.31043663909053976 1.5794817263027383 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "C19DD693-4271-072B-7EB0-F398D7B9563A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc31Shape" -p "tongue_C0_2_loc";
	rename -uid "5F1E0F13-408D-0FF9-E83E-278F75A5307B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc32Shape" -p "tongue_C0_2_loc";
	rename -uid "3B7AA3F5-469F-9D7F-1FF1-319283C82605";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_2_loc33Shape" -p "tongue_C0_2_loc";
	rename -uid "D7ECAFE7-4E1D-3805-3CC5-98ABE4CA3919";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc33_0crvShape" -p "tongue_C0_2_loc";
	rename -uid "FC651E09-4570-D1C1-23B7-169209BC0529";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc33_1crvShape" -p "tongue_C0_2_loc";
	rename -uid "A3991374-4204-6868-9FB0-A7A17962D24B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_3_loc" -p "tongue_C0_2_loc";
	rename -uid "31B9ADA5-4674-A319-6014-2C8DA2593A58";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0903429653441534e-016 -0.06208732781828985 1.5794817263027543 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999911 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "4AD6E183-4CEA-8A5C-D57F-FABE4FD5FBA0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc31Shape" -p "tongue_C0_3_loc";
	rename -uid "ECB64706-4CE6-D51C-1BC3-C19579090478";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc32Shape" -p "tongue_C0_3_loc";
	rename -uid "3E9AA8DF-43BD-BF02-A5D0-7682D61C7F0A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_3_loc33Shape" -p "tongue_C0_3_loc";
	rename -uid "5CE8E9DB-4560-70B2-FC91-FBBA303ABB8A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc33_0crvShape" -p "tongue_C0_3_loc";
	rename -uid "FCC17A60-4C55-B841-91CD-EE80EE108E15";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc33_1crvShape" -p "tongue_C0_3_loc";
	rename -uid "D79AA952-4EB4-0E82-24B1-3C96193602F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_blade" -p "tongue_C0_root";
	rename -uid "8C45ADA0-4609-A7C3-C282-FC899B567004";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 1.0000000000000018 1.0000000000000013 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "A352CA79-46DA-E796-497F-E598CA4D554C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.1030336434222036 0 0
		0 0.034344547807401198 0
		0 0 0
		;
createNode aimConstraint -n "tongue_C0_blade_aimConstraint11" -p "tongue_C0_blade";
	rename -uid "35B68B34-4ED6-33E4-5256-5BADE06EB502";
	addAttr -dcb 0 -ci true -sn "w0" -ln "tongue_C0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -1.0309989471807226e-012 -89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint11" -p "tongue_C0_blade";
	rename -uid "CCC89062-48DA-A2A8-5109-309B13A71B5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tongue_C0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "F1C9C946-495C-5194-34F5-12BFE30C7F9B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046796e-014 -175.06339877760738 -3.1060024283289889 ;
	setAttr ".s" -type "double3" 10.648590201596397 10.648590201596416 10.648590201596406 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "264E6A5A-4475-5EF3-BDE6-EA93AA59A539";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "5164C26D-4A46-6BB5-8510-C8B4570D0B18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_root";
	rename -uid "1FC7305B-4139-803B-874E-77858C6974B3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-015 -30.612390245122917 -0.09366406637236957 ;
	setAttr ".s" -type "double3" 1.8286050763007498 1.8286050763007591 1.8286050763007529 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "7F78581F-42BD-A137-D832-D6B38F72608C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "A1F57B68-4DAF-EB20-C50F-AE8795A921DF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv11" -p "mouth_C0_root";
	rename -uid "4B7F8EA9-4BD8-5022-AAE5-56B8C783FD52";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-015 -30.612390245122917 -0.09366406637236957 ;
	setAttr ".s" -type "double3" 1.8286050763007498 1.8286050763007591 1.8286050763007529 ;
createNode nurbsCurve -n "mouth_C0_crv11Shape" -p "mouth_C0_crv11";
	rename -uid "01AE22C0-49D0-0116-67FB-E199FE1E1A47";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv11ShapeOrig" -p "mouth_C0_crv11";
	rename -uid "E46BE23C-42E7-982A-F955-CCB7AD6F8EF3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eyeslook_C0_root" -p "neck_C0_head";
	rename -uid "3F190284-4419-665A-E5F7-6CA0A02037E8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.2613992666289517 0.71045535901632206 -3.3130608822386173e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932597 1.6711445512932537 1.6711445512932519 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "eyeslook";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "neck_C0_head,local_C0_root,body_C0_root,spine_C0_eff";
createNode nurbsCurve -n "eyeslook_C0_rootShape" -p "eyeslook_C0_root";
	rename -uid "7BC025B1-4345-320A-D101-0DB19B31ABEB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eyeslook_C0_root31Shape" -p "eyeslook_C0_root";
	rename -uid "0825E696-41AB-D27B-71BA-719559C31812";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eyeslook_C0_root32Shape" -p "eyeslook_C0_root";
	rename -uid "6F831D6E-4E8D-1EDA-A271-E7A14115E383";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eyeslook_C0_root33Shape" -p "eyeslook_C0_root";
	rename -uid "909C2E59-4D63-E2AF-08B4-61863B34525B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "eyeslook_C0_sizeRef" -p "eyeslook_C0_root";
	rename -uid "30F4E79B-43C7-C7F1-02B7-1388F2250FF4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6607527914310057e-016 7.1054273576010019e-015 1.0495082267377365 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377329 1.0495082267377394 1.0495082267377349 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "FB0B3847-4DEB-27E5-426B-72B24D97A2C5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -k true -sn "upVectorDirection" -ln "upVectorDirection" -min 0 
		-max 2 -en "X:Y:Z" -at "enum";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4961368484464237 0.70921581084613905 -0.51425464314724323 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999789 0.99999999999999944 -0.99999999999999833 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyeslook_C0_root";
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
	rename -uid "35CBF58E-417E-1AC5-6ECF-8693D2E778F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_root31Shape" -p "eye_R0_root";
	rename -uid "BCC7901C-4D73-768E-1C73-48B4727B1225";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_root32Shape" -p "eye_R0_root";
	rename -uid "80C33A3F-4D93-6539-5394-CE81807D808C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_root33Shape" -p "eye_R0_root";
	rename -uid "438854A2-4370-FD23-6C57-06AFAF5FC8C0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "eye_R0_look" -p "eye_R0_root";
	rename -uid "0B68D7D1-4187-273C-49BF-A7B702EA9F0F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.5511151231257827e-016 -3.5527136788005009e-015 3.769784225717923 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999989 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "CA60FC74-4FEA-C77B-3756-DD87A733F7F6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_look31Shape" -p "eye_R0_look";
	rename -uid "9AA7A31D-443A-9E29-90D4-2F894DFD0253";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_look32Shape" -p "eye_R0_look";
	rename -uid "5E19BB91-4564-84AE-1EB8-16B7F711A149";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_look33Shape" -p "eye_R0_look";
	rename -uid "94D8227C-4481-F799-B2F1-FC981AB90940";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_R0_look33_0crvShape" -p "eye_R0_look";
	rename -uid "FFEEF212-43BB-B417-2D6D-CC85CDBE622F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_R0_look33_1crvShape" -p "eye_R0_look";
	rename -uid "A969205D-4E52-E620-3FF6-1B91457BA6BF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "eye_R0_crv" -p "eye_R0_root";
	rename -uid "E1B22BD8-4101-EC8C-A596-F18D9D4D356B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723912 -30.070644536323627 -1.5859733749936762 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.7538799546502173 1.7538799546502195 -1.7538799546502111 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "8F098AB5-4216-0E06-AB8B-DFB0F38E918B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "82EF3F82-40A1-49D9-0080-CBA637B774B7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eye_L0_root" -p "neck_C0_head";
	rename -uid "28D2D38C-44EA-E3C9-D7FE-268533C3F16F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -k true -sn "upVectorDirection" -ln "upVectorDirection" -min 0 
		-max 2 -en "X:Y:Z" -at "enum";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4961368484464224 0.70921581084613905 0.51425464314724112 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyeslook_C0_root";
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
	rename -uid "ED76B6CE-486A-76F5-6A50-BB8A750F0722";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_root31Shape" -p "eye_L0_root";
	rename -uid "9D2DF9F6-4953-838F-6A4A-ADB60B8F4951";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_root32Shape" -p "eye_L0_root";
	rename -uid "EB65B9C4-4728-59FB-B019-E5ACE27C7B7D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_root33Shape" -p "eye_L0_root";
	rename -uid "4D4CD5B8-43BA-87E7-7BB3-2996B35BE939";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "eye_L0_look" -p "eye_L0_root";
	rename -uid "3C5B41F1-41E6-E075-483F-1BB31621A40C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -1.0658141036401503e-014 3.7697842257179142 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999589 0.99999999999999933 0.999999999999997 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "A4B87AF1-4AF4-2DDE-B480-7CB13CD84884";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_look31Shape" -p "eye_L0_look";
	rename -uid "89DE22FB-4CD3-7ECE-1648-E99831717EBD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_look32Shape" -p "eye_L0_look";
	rename -uid "3F20B4C7-42D0-4B87-065D-5798676A1B15";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_look33Shape" -p "eye_L0_look";
	rename -uid "4B33016D-48CD-B7BE-017E-91A20B6A58C7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_L0_look33_0crvShape" -p "eye_L0_look";
	rename -uid "FD9E4360-4F68-AC73-E3F3-E5BB92C3B6CD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_L0_look33_1crvShape" -p "eye_L0_look";
	rename -uid "1D96464C-4D01-4F66-E767-A9BA0ABD3267";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "eye_L0_crv" -p "eye_L0_root";
	rename -uid "E51933AA-484D-4440-F5B6-6EABF3687BEF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724489 -30.07064453632362 -1.5859733749936711 ;
	setAttr ".s" -type "double3" 1.7538799546502135 1.7538799546502191 1.7538799546502075 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "C5794C4A-4EEE-FE4E-AD97-36A890FD8A6E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "6E33FE14-44B8-5977-22CF-5FA791D62FF0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "neck_C0_tan1" -p "neck_C0_neck";
	rename -uid "AA710E2B-49B3-2BB5-EB0F-B68FA8D5F22A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211562896 -0.34322132772766523 -2.0300963192814111e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "95E80E4E-4796-7D72-56DF-F0A3EAE90490";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape22" -p "neck_C0_tan1";
	rename -uid "C13E7967-44B0-ADBA-DB84-05BB6717332A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape23" -p "neck_C0_tan1";
	rename -uid "17473C47-4B09-E9AE-9B81-9E843F32B6B0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape24" -p "neck_C0_tan1";
	rename -uid "70CC7CC2-4813-2805-28AC-37B1D3417EC5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan22_0crvShape" -p "neck_C0_tan1";
	rename -uid "1A45F48E-43F2-BF2B-5A23-FAA032E8A7C7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan22_1crvShape" -p "neck_C0_tan1";
	rename -uid "64B3A4F7-4D6F-A3D5-6C73-0E849884FDB5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_head_crv" -p "neck_C0_neck";
	rename -uid "1625F30A-424B-DE5F-13B8-CAA437C18AE7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547249204 -29.261428725477419 -4.0684386981538041e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502164 1.7538799546502186 1.7538799546502086 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "D68B6335-4271-E28D-1AEE-1498F51F2988";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "10AA3DAF-481B-E318-DE5A-3F89D7374EAC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 2 0 no 3
		3 0 1 2
		3
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "neck_C0_tan0" -p "neck_C0_root";
	rename -uid "7F13948C-4AEB-5A02-9A56-4ABEDE1A1802";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198171603 0.45329667709498622 3.8508704761368141e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999567 0.99999999999999623 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "9F8D1BF1-4924-E65B-F617-1CA8C00A7FA8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape21" -p "neck_C0_tan0";
	rename -uid "FCAD7544-4419-02A5-B5B8-439DBC03C9AC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape22" -p "neck_C0_tan0";
	rename -uid "B52BE749-4CF5-FDF0-EB32-A7A10FF67B17";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape23" -p "neck_C0_tan0";
	rename -uid "CF2A5FA4-4AA5-486E-67C2-B692C9395536";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan21_0crvShape" -p "neck_C0_tan0";
	rename -uid "E0D5836A-4B7A-7D76-8020-48AF17065675";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan21_1crvShape" -p "neck_C0_tan0";
	rename -uid "D46C996E-4BE8-2B6D-0125-EFA35997EBD2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_blade" -p "neck_C0_root";
	rename -uid "87CA6101-4D36-2769-F385-5F8F3FCF7F00";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 359.99999999999994 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932497 1.6711445512932444 1.6711445512932424 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "1A766937-4538-7765-36A1-EFAB43E82654";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546198 0 0
		0 0.11967845620848733 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint11" -p "neck_C0_blade";
	rename -uid "2302129F-4900-AC94-4619-CDB036E96044";
	addAttr -dcb 0 -ci true -sn "w0" -ln "neck_C0_tan0W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 360 0 359.99999999999955 ;
	setAttr ".rsrr" -type "double3" 539.99999914622629 7.0616997411558623e-021 459.58898802263582 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint11" -p "neck_C0_blade";
	rename -uid "CAE3A4A3-4876-9785-4F31-158294977948";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck_C0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1102230246251565e-016 3.5527136788005009e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "24BE2F59-4553-4EAF-CAA7-0A8BA494EC91";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916136 -26.793934099519525 -3.9146096093576495e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502157 1.753879954650212 1.7538799546502011 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "4F5330AA-4580-F8D0-0C4F-ED84BF9DDF44";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "016333EF-4EC9-55A6-FCA9-4A89D95F65BB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_R0_root" -p "spine_C0_eff";
	rename -uid "8565BBC4-407D-4E8C-5BC6-0C95C6CE2B41";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "refArray" -ln "refArray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7395848890977383 -0.016853043661003431 0.11673327753265021 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 1.0000000000000031 -0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "shoulder_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".refArray" -type "string" "shoulder_R0_root,local_C0_root,body_C0_root,spine_C0_eff,global_C0_root";
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "AE0C97BA-45A0-26C4-0ECE-1DB65A8B07F8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_root7Shape" -p "shoulder_R0_root";
	rename -uid "B63AB47F-48A7-216B-FF14-85973F67668F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_root8Shape" -p "shoulder_R0_root";
	rename -uid "9C89E2CD-4BDC-193E-F2FE-17997C7B06B6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_root9Shape" -p "shoulder_R0_root";
	rename -uid "0A23A134-4B3B-23F4-5507-1CAB697513B4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "shoulder_R0_tip" -p "shoulder_R0_root";
	rename -uid "DDAF33D3-4368-B05D-2272-5381163DFB32";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645317 -0.91350954729966938 -1.5239746815175854 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 0.99999999999999567 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "F6F067C4-49C9-E295-BFCE-98BC3B072815";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip7Shape" -p "shoulder_R0_tip";
	rename -uid "F41D5756-4389-4BAB-87B8-C9BEFF1A287F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_tip8Shape" -p "shoulder_R0_tip";
	rename -uid "A75986E8-48C4-F7A2-5E53-A390F41C7AB3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_tip9Shape" -p "shoulder_R0_tip";
	rename -uid "38F0AD20-4E3C-B489-5976-618062BA9507";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip9_0crvShape" -p "shoulder_R0_tip";
	rename -uid "EF81925B-4301-1E2B-83A2-EF9B406202BA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip9_1crvShape" -p "shoulder_R0_tip";
	rename -uid "745231B0-420C-2EFD-9683-07A16B3C126D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "arm_R0_root" -p "shoulder_R0_tip";
	rename -uid "524C3825-4449-D9A0-CA77-0399649D461E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorIK" -ln "mirrorIK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-014 4.4408920985006262e-016 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.41121298317988 -5.4710434405385193 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999856 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "shoulder_01";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "A4B8F796-4547-D987-B72D-0194AF644C59";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_root7Shape" -p "arm_R0_root";
	rename -uid "1107479D-4357-2D79-B1C1-ADA3AE20B5B4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_root8Shape" -p "arm_R0_root";
	rename -uid "0111FCBA-44D0-2943-4B91-0DA2C6B7779C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_root9Shape" -p "arm_R0_root";
	rename -uid "770B3705-4E4E-2EE2-A891-6A96415B2799";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "arm_R0_elbow" -p "arm_R0_root";
	rename -uid "E73D609B-4E13-D965-9787-5199E5C47D22";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323248 7.1054273576010019e-015 0.078976790252911488 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784308 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 0.99999999999999811 0.99999999999999811 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "48920C19-4A32-668F-7D31-FC9D2C79CEFF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow7Shape" -p "arm_R0_elbow";
	rename -uid "118F74B9-41B3-6DDD-C490-58869582AD5F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_elbow8Shape" -p "arm_R0_elbow";
	rename -uid "3E5BA451-4E2F-56DC-9D56-148BBFDA721E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_elbow9Shape" -p "arm_R0_elbow";
	rename -uid "3755DF30-4368-C505-173E-F0AD5F6CB4B5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow9_0crvShape" -p "arm_R0_elbow";
	rename -uid "E65D8659-41FA-A17D-59CD-6A947ED1257D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow9_1crvShape" -p "arm_R0_elbow";
	rename -uid "D608C22A-457A-92CB-FB6D-069F606A8F07";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "arm_R0_wrist" -p "arm_R0_elbow";
	rename -uid "64F691DA-4E95-1243-AE9B-2FBB5F358963";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891497036 0 -0.1196061121823066 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000024 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "0998B299-43A5-2446-E0A0-1B9367D4DB0B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist7Shape" -p "arm_R0_wrist";
	rename -uid "0623534E-4393-CE17-6C5E-73A13D7E0150";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_wrist8Shape" -p "arm_R0_wrist";
	rename -uid "8CC64B83-49D2-0D8B-82DD-CE9DDECB9898";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_wrist9Shape" -p "arm_R0_wrist";
	rename -uid "315901F6-492E-2BE5-2284-7B92EF5A1916";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist9_0crvShape" -p "arm_R0_wrist";
	rename -uid "C6F7403E-4D22-57A1-F81B-AF99EF1F22DE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist9_1crvShape" -p "arm_R0_wrist";
	rename -uid "1314C0D9-43F7-4FE7-8D6E-7DAFC1003BCE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "arm_R0_eff" -p "arm_R0_wrist";
	rename -uid "5991042D-4505-4263-9DAB-E09D166E3126";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308184 5.3290705182007514e-015 7.6327832942979512e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "9679775B-482E-94A1-79C4-42BD4CADCBD1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_eff7Shape" -p "arm_R0_eff";
	rename -uid "0EB4F433-46BF-2F7A-8B93-4FBC3404B925";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_eff8Shape" -p "arm_R0_eff";
	rename -uid "08CEA1B1-429D-508E-27C3-2A9BA757E544";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_eff9Shape" -p "arm_R0_eff";
	rename -uid "07A4DC6E-4B81-1AD1-0597-E29CF1C01D42";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_eff9_0crvShape" -p "arm_R0_eff";
	rename -uid "65A36588-42B5-79BD-D7E8-1493BC6A46DD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_eff9_1crvShape" -p "arm_R0_eff";
	rename -uid "BF1314B0-4D2C-4451-F878-98A6BA41E028";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "armUI_R0_root" -p "arm_R0_eff";
	rename -uid "09631B4B-40A7-0C08-79FF-FB9F3564089A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.212456187500806 0.5607311476451784 -0.29276117198398965 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "armUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "armUI_R0_rootShape" -p "armUI_R0_root";
	rename -uid "D2D2DFBF-43DD-20DF-D5C8-61BAAE7663C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_R0_root7Shape" -p "armUI_R0_root";
	rename -uid "77264497-40AC-2415-89AE-A1BB75312D99";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_R0_root8Shape" -p "armUI_R0_root";
	rename -uid "AEA0BCE4-424F-3A70-B2BC-A4BA1A1A3A70";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_R0_root9Shape" -p "armUI_R0_root";
	rename -uid "1B242B1D-42A7-F3BD-277A-079912E4018F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "armUI_R0_sizeRef" -p "armUI_R0_root";
	rename -uid "64D1279D-4C51-274F-A7D5-658F11B4C10E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085809078 -0.027001577630491269 1.0430060296210661 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145881498 3.3190804973696424 45.37932415024769 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377378 1.04950822673774 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "meta_R0_root" -p "arm_R0_eff";
	rename -uid "C4F0A405-4A83-77D2-0338-F79E38725DE9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "intScale" -ln "intScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intRotation" -ln "intRotation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intTranslation" -ln "intTranslation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0556240028445694 -0.075350553640973317 0.35296225288850258 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008866758 93.717381466937226 86.467960127477923 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716941 0.30838721081716952 0.30838721081716958 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "meta_01";
	setAttr ".comp_name" -type "string" "meta";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "meta_R0_rootShape" -p "meta_R0_root";
	rename -uid "D82673DA-417A-C224-D1CF-94AB05910125";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_root7Shape" -p "meta_R0_root";
	rename -uid "671BE3A4-4C9D-0FD3-9ED4-81B652D9BB7E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_root8Shape" -p "meta_R0_root";
	rename -uid "1DB7CDF5-4AB9-D475-826D-B2B16F4022E1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_root9Shape" -p "meta_R0_root";
	rename -uid "509D401C-4FBC-BB16-5614-72B859A6B29A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "meta_R0_0_loc" -p "meta_R0_root";
	rename -uid "5196A539-4C79-1EF3-9984-FEA6172A4923";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6632084735361734 7.1054273576010019e-015 -2.8421709430404007e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999922 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "7BF9C9F7-473E-9663-AD56-34932BA96279";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc7Shape" -p "meta_R0_0_loc";
	rename -uid "8750669E-44E1-EAA9-A9FA-279798E09C8F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_0_loc8Shape" -p "meta_R0_0_loc";
	rename -uid "E3431EA2-4A98-7503-D78A-8CA1DACBBC81";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_0_loc9Shape" -p "meta_R0_0_loc";
	rename -uid "E7829790-449B-7B1B-4724-7F824F2B31A8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc9_0crvShape" -p "meta_R0_0_loc";
	rename -uid "526D9A0A-493C-EEFC-9DA6-0F982B2F3B48";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc9_1crvShape" -p "meta_R0_0_loc";
	rename -uid "53FFC2AF-4607-6505-F302-AC9FF26C3C06";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "meta_R0_1_loc" -p "meta_R0_0_loc";
	rename -uid "F00A048C-465B-6E1C-10A3-3398502AD83C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618317 -7.1054273576010019e-015 1.2434497875801753e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "89675554-4268-ECD4-CF7E-F49E7F3636C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc7Shape" -p "meta_R0_1_loc";
	rename -uid "1312A548-4EA2-E416-2F5C-DBB14B10919A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_1_loc8Shape" -p "meta_R0_1_loc";
	rename -uid "6214CF38-49A2-C14B-6C68-2E934C2A83B0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_1_loc9Shape" -p "meta_R0_1_loc";
	rename -uid "B521FF60-4AFD-3DD8-B423-4C854338B2A3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc9_0crvShape" -p "meta_R0_1_loc";
	rename -uid "D5EE13D3-46A5-5137-C0E2-03BAF851E952";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc9_1crvShape" -p "meta_R0_1_loc";
	rename -uid "9C6BFFB9-464F-1FB3-53AA-A0A64F2F603A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "meta_R0_2_loc" -p "meta_R0_1_loc";
	rename -uid "1100C226-440A-77B8-0039-BFA896E58FF0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618229 1.4210854715202004e-014 -2.8421709430404007e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "ED87C9FA-4B34-41A9-7689-D495F97B67EF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc7Shape" -p "meta_R0_2_loc";
	rename -uid "975DDB62-468C-C58B-5299-6C8D2F17C9DD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_2_loc8Shape" -p "meta_R0_2_loc";
	rename -uid "44E91F69-449D-20CC-D9D4-A6952B83E5AA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_2_loc9Shape" -p "meta_R0_2_loc";
	rename -uid "834E22EE-4E39-8D3F-7F50-37AA8FC56277";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc9_0crvShape" -p "meta_R0_2_loc";
	rename -uid "0138EF34-44BD-2711-472D-22928A00424C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc9_1crvShape" -p "meta_R0_2_loc";
	rename -uid "7D0BF27E-4F8E-2C22-B0E3-63A0E4EB8710";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_root" -p "meta_R0_2_loc";
	rename -uid "D46F5AFE-4AEF-A72F-D9C0-63888A9DF49E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 3 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.27518484001103305 -0.17360051577777114 2.4946799341790626 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878594999 -68.587073855452516 -5.8163374181190628 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661787 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R3_rootShape" -p "finger_R3_root";
	rename -uid "6864EC29-4CEF-CED6-932F-84A26B8BECE0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_root7Shape" -p "finger_R3_root";
	rename -uid "6398E65A-49ED-4899-4688-54879814D950";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_root8Shape" -p "finger_R3_root";
	rename -uid "8D9C1F2B-411F-A850-CBF5-A68984A64096";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_root9Shape" -p "finger_R3_root";
	rename -uid "C202A455-4E5F-33BA-0441-1486549BF44A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R3_0_loc" -p "finger_R3_root";
	rename -uid "26968F20-490A-8DD8-030C-009CF4849E29";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561223 3.1974423109204508e-014 -4.6629367034256575e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "A4340881-4119-A245-CCD1-40987ED37732";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc7Shape" -p "finger_R3_0_loc";
	rename -uid "8FB6FBAD-43D1-332C-712E-08AFFEA8924E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_0_loc8Shape" -p "finger_R3_0_loc";
	rename -uid "CFF898F7-43C5-FC8E-0BE1-1490DD1F2AFA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_0_loc9Shape" -p "finger_R3_0_loc";
	rename -uid "F66CAF05-4A85-75A5-A6C2-B8B7355B9130";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc9_0crvShape" -p "finger_R3_0_loc";
	rename -uid "1804E990-4D29-1ECA-2CE9-CE8870D468EC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc9_1crvShape" -p "finger_R3_0_loc";
	rename -uid "3D73D58A-4F5D-415E-C0F6-F786B5298BF4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_1_loc" -p "finger_R3_0_loc";
	rename -uid "CFCD841C-451D-0259-D73A-6181C379A31E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876928 -2.1316282072803006e-014 -1.1102230246251565e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999922 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "6875DF1A-4575-1385-F289-3186B7C937A7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc7Shape" -p "finger_R3_1_loc";
	rename -uid "AB97D459-449E-2A1B-CF38-7A973A6EEDBB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_1_loc8Shape" -p "finger_R3_1_loc";
	rename -uid "AB635AD5-4D76-B9A6-208B-B6917578683B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_1_loc9Shape" -p "finger_R3_1_loc";
	rename -uid "0DCBC1CB-44F2-89C4-CB37-F283119D5E79";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc9_0crvShape" -p "finger_R3_1_loc";
	rename -uid "65CBCC66-4BAC-D30E-8916-CEA25BF7257E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc9_1crvShape" -p "finger_R3_1_loc";
	rename -uid "E4A91ED6-432A-644F-21B7-0A840D744419";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_2_loc" -p "finger_R3_1_loc";
	rename -uid "7E175DD2-4C19-BD3D-E8FA-67BE8743AA12";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193368 3.5527136788005009e-015 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000024 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "1B3958AB-4D4C-2974-7E6D-AAB0F942A436";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc7Shape" -p "finger_R3_2_loc";
	rename -uid "FAD7CB3C-47E7-69DB-4211-F98F2C0E1D0C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_2_loc8Shape" -p "finger_R3_2_loc";
	rename -uid "E2786877-4CB7-E83F-BF40-C388F7DE0EBD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_2_loc9Shape" -p "finger_R3_2_loc";
	rename -uid "9E135E2C-4DA1-917A-82AE-169C33FF9DAE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc9_0crvShape" -p "finger_R3_2_loc";
	rename -uid "B1A07260-48BF-65CC-F486-ED90BBA5C559";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc9_1crvShape" -p "finger_R3_2_loc";
	rename -uid "58141D9F-4101-8505-C575-1E98A3FB6DCD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_blade" -p "finger_R3_root";
	rename -uid "F9EB30A0-4757-0C82-B05B-4CB4AE856591";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "DAAB0499-4851-87F1-0A25-4EA2DF3C0598";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970788 0 0
		0 0.25859336491323598 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint3" -p "finger_R3_blade";
	rename -uid "ABBC7565-42AC-9661-2E72-60A4B87F750F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R3_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R3_blade_pointConstraint3" -p "finger_R3_blade";
	rename -uid "9EC391CD-497F-1587-05FB-6B90EEC3105C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R3_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-015 -1.1102230246251565e-015 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "6E3561D8-47F6-0FCF-1D45-B99A7F921299";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.156093864675432 -29.03278685576343 1.4804327725055983 ;
	setAttr ".r" -type "double3" 7.5791665394155316 165.69575562110026 49.348303523762084 ;
	setAttr ".s" -type "double3" 2.6320983106786153 2.6320983106786029 -2.6320983106786064 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "DD9D8D18-4775-CD10-1E47-50A60BF3F254";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "03480B3E-4787-C7AE-1B44-508E4CDC7ED4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_R2_root" -p "meta_R0_1_loc";
	rename -uid "FFF6FCDD-48F9-CCFE-7E4F-E4A0474510E1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 2 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21404201232122055 -0.17620518664702445 2.8414845756647296 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121376581 -82.086889237978824 -14.829711404953912 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661783 1.2929668245661796 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R2_rootShape" -p "finger_R2_root";
	rename -uid "8E0477E3-4716-3317-C475-F1B19D27BB1B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_root7Shape" -p "finger_R2_root";
	rename -uid "6BE586C4-4F13-9A22-47D0-15B211E7DE5B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_root8Shape" -p "finger_R2_root";
	rename -uid "B3E17EF3-4151-7015-3E51-39A278B1D923";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_root9Shape" -p "finger_R2_root";
	rename -uid "92893110-4D4C-F5D5-A470-41BBF2D9BC27";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R2_0_loc" -p "finger_R2_root";
	rename -uid "D40E182E-4DA2-576B-900F-5D9BA84772FF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217408261 -1.7763568394002505e-014 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "7AE69E69-4303-B2E2-CC80-35B99007678A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc7Shape" -p "finger_R2_0_loc";
	rename -uid "A76961FD-46A6-BDAA-A07F-D7BF5085FCA7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_0_loc8Shape" -p "finger_R2_0_loc";
	rename -uid "17DB2D85-4A5E-B78B-BC0E-4CBFA9DC2F31";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_0_loc9Shape" -p "finger_R2_0_loc";
	rename -uid "7485DAA5-48F3-53ED-2A68-B7BCE09E8741";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc9_0crvShape" -p "finger_R2_0_loc";
	rename -uid "A7CBDE2B-4A66-0713-454E-85AD6B685C0D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc9_1crvShape" -p "finger_R2_0_loc";
	rename -uid "BB27CB0A-4A57-C486-2D33-0B8AAA28904F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R2_1_loc" -p "finger_R2_0_loc";
	rename -uid "52D6B138-46D3-E776-C5FA-D28EB266F638";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587174134 1.7763568394002505e-014 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999922 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "EA974089-43CA-11AF-707C-13906B20F064";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc7Shape" -p "finger_R2_1_loc";
	rename -uid "E381EA81-4177-336E-3A05-59B5863725BD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_1_loc8Shape" -p "finger_R2_1_loc";
	rename -uid "1DF1711D-4B7D-7D4A-8304-BB9814A77E90";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_1_loc9Shape" -p "finger_R2_1_loc";
	rename -uid "A9D31F97-4B41-BB2C-BBF8-7CBC36000F0C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc9_0crvShape" -p "finger_R2_1_loc";
	rename -uid "BBA05FB0-4510-ECC7-6A4C-32B14355B79F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc9_1crvShape" -p "finger_R2_1_loc";
	rename -uid "B2D823CA-4902-2E57-ED93-53B095702F9C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R2_2_loc" -p "finger_R2_1_loc";
	rename -uid "60088E84-4212-BDE3-3A23-0D9B58344B90";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915976 -2.8421709430404007e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "1F13FA60-4F2F-5A1D-904F-4C941AC9AC0B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc7Shape" -p "finger_R2_2_loc";
	rename -uid "1DC4ECF3-48B9-481A-6221-11B2D9D00F17";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_2_loc8Shape" -p "finger_R2_2_loc";
	rename -uid "08D4B6C7-43E3-8626-D837-449424FEAA0B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_2_loc9Shape" -p "finger_R2_2_loc";
	rename -uid "4E69004F-43E0-F3C7-3ADF-8392C632EC53";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc9_0crvShape" -p "finger_R2_2_loc";
	rename -uid "C1924BC0-40F1-8135-3FF4-47BFE4D8EAFF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc9_1crvShape" -p "finger_R2_2_loc";
	rename -uid "FBC4BDED-40B9-4FE0-5039-C68FBD919DA6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R2_blade" -p "finger_R2_root";
	rename -uid "82FACB21-48A0-7DAF-396F-ACB7122C6FE3";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "D8298408-470A-F232-407D-C78B55DC284B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970788 0 0
		0 0.25859336491323598 0
		0 0 0
		;
createNode aimConstraint -n "finger_R2_blade_aimConstraint3" -p "finger_R2_blade";
	rename -uid "5FEBFA2A-4169-6ABB-5799-2CA7757EE054";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R2_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R2_blade_pointConstraint3" -p "finger_R2_blade";
	rename -uid "9942FE3A-4862-6FB4-B456-6E8564820083";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R2_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-015 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "00F997DB-45BC-28A0-4D7A-1F8411763A2D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309206 -29.023661369441491 1.417334972309725 ;
	setAttr ".r" -type "double3" 0.54140613099234469 178.40951950035162 47.737641631363964 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786007 -2.6320983106786069 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "AE64CCD6-46CA-FF6F-57C1-1DBEA612EE90";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "AF87611F-4139-84E8-6339-BC8C9F9BAEB6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_R1_root" -p "meta_R0_0_loc";
	rename -uid "DB6D2DF8-4441-68E5-BB55-7BB090FD3A57";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 1 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.0077643969605998286 -0.1235840669671262 2.9483952421545805 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870095 -79.977014017423301 -112.77222628638589 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566179 1.2929668245661794 1.292966824566179 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R1_rootShape" -p "finger_R1_root";
	rename -uid "6B018B93-4131-332C-430F-1E9D9598A663";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_root7Shape" -p "finger_R1_root";
	rename -uid "D0F34D05-48EB-75B7-CD33-4C945CD8727C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_root8Shape" -p "finger_R1_root";
	rename -uid "3C0CE589-4AC2-3C75-06D5-B0A6B1DB60A8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_root9Shape" -p "finger_R1_root";
	rename -uid "066F4F77-4A59-5C94-BB3B-31A91A5E9951";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R1_0_loc" -p "finger_R1_root";
	rename -uid "35A3DFB6-4951-69C4-3358-2EBEB42D6FEC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998401 2.4868995751603507e-014 -3.3306690738754696e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "15A24552-4213-9FB6-059A-568CBDC89678";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc7Shape" -p "finger_R1_0_loc";
	rename -uid "56FB1A19-4787-C9BE-4982-6E98F9413653";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_0_loc8Shape" -p "finger_R1_0_loc";
	rename -uid "76C50C97-4476-FF17-E882-D29C8FAC5B56";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_0_loc9Shape" -p "finger_R1_0_loc";
	rename -uid "DC820A42-4B41-AF0B-153C-CBA3C591683D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc9_0crvShape" -p "finger_R1_0_loc";
	rename -uid "2F61CB4C-496C-5D60-3516-918282005EDB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc9_1crvShape" -p "finger_R1_0_loc";
	rename -uid "27E4E589-4421-5F19-EE67-9EB93E2B2290";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R1_1_loc" -p "finger_R1_0_loc";
	rename -uid "F07DCF1F-4702-4FAD-E9FF-DDB169704EBF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.9641252841401915 7.1054273576010019e-015 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999922 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "87834B90-4329-138B-E44A-47872F58FAB2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc7Shape" -p "finger_R1_1_loc";
	rename -uid "019E3081-4E4E-12E0-F183-059D0291090C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_1_loc8Shape" -p "finger_R1_1_loc";
	rename -uid "E5BDD937-4825-C4FC-7548-5E8EFD20F7B6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_1_loc9Shape" -p "finger_R1_1_loc";
	rename -uid "CE06D03C-41B0-1B98-36E5-369052416BAB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc9_0crvShape" -p "finger_R1_1_loc";
	rename -uid "3374C350-4545-F58E-05CE-DAACF4A01DCB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc9_1crvShape" -p "finger_R1_1_loc";
	rename -uid "3B1E5E11-4786-1EB9-04EC-8B92CF813601";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R1_2_loc" -p "finger_R1_1_loc";
	rename -uid "A75E7A3F-495F-029B-EBE1-7DB17EB457E5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549590294 -1.0658141036401503e-014 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "7E373749-4D48-E708-ED00-03B8966779BC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc7Shape" -p "finger_R1_2_loc";
	rename -uid "EF8AB26E-4AA3-DD5B-7731-34870758A42E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_2_loc8Shape" -p "finger_R1_2_loc";
	rename -uid "32A8E7EB-4790-CB3F-1AA6-FD82E48D1D08";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_2_loc9Shape" -p "finger_R1_2_loc";
	rename -uid "5C07717F-448E-C2BE-1A73-609A17FA2F07";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc9_0crvShape" -p "finger_R1_2_loc";
	rename -uid "3C12E9B7-4677-4CE9-5B6B-2DB740378F5F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc9_1crvShape" -p "finger_R1_2_loc";
	rename -uid "52DA565C-4330-BDD9-9201-34B8C734D89A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R1_blade" -p "finger_R1_root";
	rename -uid "5C86E1FB-468A-6E75-C55E-4BA838DD7F0F";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "FE798143-46C6-7B5A-01DE-B3AA3EFAE359";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970733 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_R1_blade_aimConstraint3" -p "finger_R1_blade";
	rename -uid "5F051AD7-4A24-1462-7B3D-93A3D33A8326";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R1_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R1_blade_pointConstraint3" -p "finger_R1_blade";
	rename -uid "6918D9FE-4CDA-3628-DC5F-36A27065D4C9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R1_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "9883DA32-4442-098A-2524-D39D32BB4FC9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153212 -28.040620010901367 1.1418187531084356 ;
	setAttr ".r" -type "double3" 174.15150560514442 -9.9768879508731168 -125.88865264712153 ;
	setAttr ".s" -type "double3" 2.6320983106786136 2.632098310678602 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "ED24EA24-4AA7-0C81-DB69-8FB7FDEC2B03";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "5932516C-4F4E-A46D-CFB2-039DDC3A1F5B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "meta_R0_blade" -p "meta_R0_root";
	rename -uid "FACD6727-41FC-8824-99ED-5CA201BD6A9E";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999922 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "472E2AEE-4CCB-214B-841A-3CAE394120F8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030163 0 0
		0 0.061677442163433877 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint3" -p "meta_R0_blade";
	rename -uid "C24A06C3-481C-6EAC-DA72-468919C7F087";
	addAttr -dcb 0 -ci true -sn "w0" -ln "meta_R0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "meta_R0_blade_pointConstraint3" -p "meta_R0_blade";
	rename -uid "EA589FF9-4BB6-E943-343B-5E8D6F267B70";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "meta_R0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 7.1054273576010019e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "0EBAEAE0-405D-FAA9-D565-4399E982EB7E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.807006605839975 -38.076493243284844 11.714163621936764 ;
	setAttr ".r" -type "double3" -98.404354317568391 44.654258545702191 -90.724179884703645 ;
	setAttr ".s" -type "double3" 3.4032157947041273 3.4032157947041117 -3.4032157947041219 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "121F6D72-4818-E22E-4A87-53BF6A52B36C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "61F252C0-4609-7499-C183-E182DB405F98";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_R0_root" -p "meta_R0_root";
	rename -uid "F857D06B-45BD-AAAF-828B-C3ADF24D975E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.18403723679763395 -0.30586006047045089 2.7614233959505476 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808452 -71.606679450097857 -133.79382708613454 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661783 1.2929668245661787 1.2929668245661812 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R0_rootShape" -p "finger_R0_root";
	rename -uid "008988F8-4A79-16E8-6D30-B6B5A8AF750E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_root7Shape" -p "finger_R0_root";
	rename -uid "25C3317F-458A-A7F7-D74F-E4880C545E0C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_root8Shape" -p "finger_R0_root";
	rename -uid "BDC6E758-45E3-AAA4-9251-55A22579FF06";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_root9Shape" -p "finger_R0_root";
	rename -uid "DE44FE7E-4964-DF2D-9DBF-12B21C7ADD3F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R0_0_loc" -p "finger_R0_root";
	rename -uid "A4CF3AB2-4117-F6EF-652B-BDA859145547";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000089 -3.5527136788005009e-015 3.1086244689504383e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999867 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "546669DF-45DF-50AD-1A69-5F845927E272";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc7Shape" -p "finger_R0_0_loc";
	rename -uid "2B24C4DD-46FB-4929-3D15-2398139E2F65";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_0_loc8Shape" -p "finger_R0_0_loc";
	rename -uid "657CDF05-40C8-C765-5176-06AD320A2F1D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_0_loc9Shape" -p "finger_R0_0_loc";
	rename -uid "A35A2F36-4C07-DCD5-926E-3AB216413901";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc9_0crvShape" -p "finger_R0_0_loc";
	rename -uid "6F34F243-4E68-6B29-354A-C997A4D46D5F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc9_1crvShape" -p "finger_R0_0_loc";
	rename -uid "7E07BF4F-4D16-EDAD-D681-C3A61AA9ABF0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R0_1_loc" -p "finger_R0_0_loc";
	rename -uid "ED5D9CA8-4D09-48F2-06EA-C9928FCAA1FE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080928495 -7.1054273576010019e-015 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000013 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "4AF7507C-44F7-5100-F3E5-468C46BFEDDD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc7Shape" -p "finger_R0_1_loc";
	rename -uid "362B6B78-4F73-3960-A1A4-B996CA62E1FD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_1_loc8Shape" -p "finger_R0_1_loc";
	rename -uid "DA686A88-490C-192E-A0E8-41A92E085E39";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_1_loc9Shape" -p "finger_R0_1_loc";
	rename -uid "F078F689-4459-D9AF-7FBA-A69223006B65";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc9_0crvShape" -p "finger_R0_1_loc";
	rename -uid "B6AF9C86-470C-7C69-E0C1-EDB843576850";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc9_1crvShape" -p "finger_R0_1_loc";
	rename -uid "83DFC74A-4F4F-D9A8-C788-F5903705244C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R0_2_loc" -p "finger_R0_1_loc";
	rename -uid "78A97DDE-410A-1FF4-7A1F-0086F0433D0D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392367477 2.1316282072803006e-014 -3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "5F6A091F-47A6-27AC-7FE1-AAB88F087756";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc7Shape" -p "finger_R0_2_loc";
	rename -uid "7128C757-4428-BDFF-AC7C-5196B33427E4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_2_loc8Shape" -p "finger_R0_2_loc";
	rename -uid "C78B6240-4E0E-9687-D119-859D310B9835";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_2_loc9Shape" -p "finger_R0_2_loc";
	rename -uid "8C4C2D69-4A63-D2CB-5BEE-98A27A3953FC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc9_0crvShape" -p "finger_R0_2_loc";
	rename -uid "EB67A809-43E7-7F17-E778-16A11295F489";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc9_1crvShape" -p "finger_R0_2_loc";
	rename -uid "DA767331-41A9-F862-7250-48924B0B934F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "finger_R0_blade" -p "finger_R0_root";
	rename -uid "55653C9C-4FD7-119C-FC96-B2A5624E50A4";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999867 0.99999999999999922 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "74216C71-40CB-5F1B-15A9-84BE5008432A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970699 0 0
		0 0.25859336491323565 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint3" -p "finger_R0_blade";
	rename -uid "0D6F0FED-4404-D94A-5BC6-3894A3DC2DBF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R0_blade_pointConstraint3" -p "finger_R0_blade";
	rename -uid "CA0C4AF5-45C8-7A41-F037-759AB8FDB66F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 -4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "08B39510-4469-E689-A7B8-53A0F27EE460";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713119 -27.336008057181207 2.4648652761296743 ;
	setAttr ".r" -type "double3" 170.83456651198088 -22.111176212555222 -122.87938490445474 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106785993 -2.6320983106786033 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "D75030AB-4D56-E317-D4BA-A9AAA73C71B2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "98FF8F21-44B2-59E1-B6AD-1E911D6B715D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "thumbRoll_R0_root" -p "meta_R0_root";
	rename -uid "E2E5ECBE-4C0D-B605-98FA-3CA4A1131D29";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.7 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21303623709073438 -0.22489125789799402 0.13070337452153602 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848351149 -84.001563523230956 11.009204406913954 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041273 3.4032157947041153 3.4032157947041233 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "thumbRoll";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "sphere";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumbRoll_R0_rootShape" -p "thumbRoll_R0_root";
	rename -uid "6A81DF93-405C-896A-2740-B4B9A4592EFF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root7Shape" -p "thumbRoll_R0_root";
	rename -uid "F257FCF8-4E60-6105-3BDA-EBB7914DC237";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root8Shape" -p "thumbRoll_R0_root";
	rename -uid "7E5B81DC-4770-F24C-1D5D-4CB9111F4E90";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_R0_root9Shape" -p "thumbRoll_R0_root";
	rename -uid "83D197D7-4322-0885-FA49-5EA3C8AA2C47";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumbRoll_R0_sizeRef" -p "thumbRoll_R0_root";
	rename -uid "80DBBDC1-4273-72C5-4A05-38A342CC091A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 4.4408920985006262e-014 0.99999999999999933 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205637 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999711 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "thumb_R0_root" -p "thumbRoll_R0_root";
	rename -uid "65BA3918-4FF1-39C2-7285-AB9DCAC9B35D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 0 3.3306690738754696e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913053 -43.900240512232585 -37.623269198287765 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511072 0.48936434703510973 0.4893643470351115 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "thumb";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumb_R0_rootShape" -p "thumb_R0_root";
	rename -uid "9D5A4E69-4203-1D95-E872-F5A75AF84DF3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_root7Shape" -p "thumb_R0_root";
	rename -uid "C8B85C1A-474E-11DC-BD4E-37899E5E1250";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_root8Shape" -p "thumb_R0_root";
	rename -uid "08E70004-4512-639A-2F5B-67ABE33DCCD2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_root9Shape" -p "thumb_R0_root";
	rename -uid "E26B01BE-4F69-1815-043F-ECBD70532579";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumb_R0_0_loc" -p "thumb_R0_root";
	rename -uid "DE5AD609-46FD-3359-D2B9-8CA02E11910C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470384 0.002409577596695911 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060718 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "416E65B8-487C-9952-DB3D-05A97FF700EC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc7Shape" -p "thumb_R0_0_loc";
	rename -uid "9664A40E-4493-D36B-758C-B29CD908A68F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc8Shape" -p "thumb_R0_0_loc";
	rename -uid "FFD32F03-4B90-1909-BAA3-5795A0711374";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_0_loc9Shape" -p "thumb_R0_0_loc";
	rename -uid "3DC59F85-43DC-0C6C-D248-FC8D64DBD50E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc9_0crvShape" -p "thumb_R0_0_loc";
	rename -uid "8327FF90-4F90-40B0-1F3E-85B86AC71DAF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc9_1crvShape" -p "thumb_R0_0_loc";
	rename -uid "64B27D36-4B7E-890B-C923-3DBEE6C70105";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "thumb_R0_1_loc" -p "thumb_R0_0_loc";
	rename -uid "45B9A34A-447F-9E26-503D-0E9523004761";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145520722 0 2.1316282072803006e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.999999999999999 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "1485D44D-46DA-85ED-650B-3B87920BF454";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc7Shape" -p "thumb_R0_1_loc";
	rename -uid "771028FC-4B3F-3AF7-731B-3DB580EF13C8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc8Shape" -p "thumb_R0_1_loc";
	rename -uid "F04B8809-45C6-7296-A4EF-689E7F05BA9C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_1_loc9Shape" -p "thumb_R0_1_loc";
	rename -uid "B9A1331E-44EE-4BB4-BC9E-4FA513489B95";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc9_0crvShape" -p "thumb_R0_1_loc";
	rename -uid "BB9377C1-4F14-ABB9-3D11-539F3EDB0D18";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc9_1crvShape" -p "thumb_R0_1_loc";
	rename -uid "605363F4-4D95-7BC7-2CEF-BE8FD27E7FB1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "thumb_R0_2_loc" -p "thumb_R0_1_loc";
	rename -uid "D3446BD5-48D7-C745-960B-30B273D5507A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5948211491551092 7.1054273576010019e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "335749E8-4872-4913-743C-959052C47D0A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc7Shape" -p "thumb_R0_2_loc";
	rename -uid "90AD0A4D-487E-1154-05E2-8BBCD6B2A582";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc8Shape" -p "thumb_R0_2_loc";
	rename -uid "70812AA6-40B3-E940-A57B-FF8824972503";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_2_loc9Shape" -p "thumb_R0_2_loc";
	rename -uid "043C9F8B-4517-E48B-70B6-F1B03C9076F0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc9_0crvShape" -p "thumb_R0_2_loc";
	rename -uid "79E4AA0C-4F35-A598-0861-4EBBDDAE5F38";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc9_1crvShape" -p "thumb_R0_2_loc";
	rename -uid "7AF39000-47F0-6955-8BAB-BEACD3323DA6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "thumb_R0_blade" -p "thumb_R0_root";
	rename -uid "5E31FD44-47A4-A19F-C28B-49973D843E8C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 0.99999999999999822 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "6D44A2DB-4F21-7BDB-F7A2-019807AF87CA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106645 0 0
		0 0.097872869407022153 0
		0 0 0
		;
createNode aimConstraint -n "thumb_R0_blade_aimConstraint3" -p "thumb_R0_blade";
	rename -uid "9D969360-4584-325B-C6BE-D9969CBEDF48";
	addAttr -dcb 0 -ci true -sn "w0" -ln "thumb_R0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 6.6233169660730779e-016 4.7308404509124908e-013 
		0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint3" -p "thumb_R0_blade";
	rename -uid "C42D4626-4C4A-EBB2-F535-E5868BFD9104";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_R0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 -3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "9A427114-4DB4-98EE-80EF-9DAA29AFD271";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042883 -7.0737929587543293 17.725867635512824 ;
	setAttr ".r" -type "double3" -55.556977946373117 -63.100734454449608 102.71864583729821 ;
	setAttr ".s" -type "double3" 2.0434672163157264 2.0434672163157201 -2.043467216315725 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "0696F75B-4561-C98C-00FE-C4B8885C1FEA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "121BB4A6-4559-91EE-8213-23BE0E891366";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "arm_R0_crv" -p "arm_R0_root";
	rename -uid "941C25F6-463C-F828-222C-0A97EF02B4D2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200365 -11.862061807473022 1.1564412205648793 ;
	setAttr ".r" -type "double3" 2.1534408611046545 175.80406292066334 45.437740049298235 ;
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377385 -1.04950822673774 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "D736B4CE-4DF9-D16F-400B-33B14AEFF631";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "25E10873-49C1-6F87-1D01-8B9373C04C60";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_R0_blade" -p "shoulder_R0_root";
	rename -uid "6E822679-45AD-13C1-024C-6A8C3AD864FC";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 90.000000000000028 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999689 0.99999999999999722 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "EE6F2083-4F9B-FC0C-BC64-FA9C3E18EF97";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000131 0 0
		0 0.20000000000000043 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint3" -p "shoulder_R0_blade";
	rename -uid "DA53DD40-4234-2BF3-5273-96A805C52315";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_R0_tipW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 90 179.99999999999952 180.00000000000017 ;
	setAttr ".rsrr" -type "double3" 23.386262286472991 122.53864021838231 110.03040021520756 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint3" -p "shoulder_R0_blade";
	rename -uid "B0CA5C65-486F-CF09-1332-BB8573873129";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_R0_rootW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.9490299091605721e-017 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "7D961767-48D7-2D76-0AD8-F6A84C80D9BD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509833 0.0092761897382757069 0.1167332775326503 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377367 -1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "853A9609-4555-5306-9A02-56B97641DB8D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "6699B1FD-4C7C-8ED4-CDC4-0480AC92D9C6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "spine_C0_blade" -p "spine_C0_root";
	rename -uid "2ECB274F-42E8-15C7-4CFE-1BB167CB60C5";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999967 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "48414409-428C-90E4-F158-E98CBF9BA9FC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.30713489785446296 0 0
		0 0.10237829928482099 0
		0 0 0
		;
createNode aimConstraint -n "spine_C0_blade_aimConstraint11" -p "spine_C0_blade";
	rename -uid "3AF4E2D6-4088-A068-7443-5BB4A10C7455";
	addAttr -dcb 0 -ci true -sn "w0" -ln "spine_C0_effW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint11" -p "spine_C0_blade";
	rename -uid "2CA43EFB-40FB-3D70-0BD6-E3B2D6A6F8A9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_C0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 2.7755575615628914e-017 -6.1629758220391547e-033 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "2A73871C-49AF-0BF2-E848-10AB38D921EB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690751 0.19144303592045883 -4.2508893276606341e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.04950822673774 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "179650D0-489A-372D-5117-C4ADDF6AE05C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "C62BE531-4F2E-B65E-6275-4F9B6BA9AD3F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "leg_L0_root" -p "spine_C0_root";
	rename -uid "0B0A7797-4282-A274-6DC6-FB9640156A4F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588016 1.9428902930940239e-016 -1.0212680564255745 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0.2931438622701828 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999833 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "legUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "leg_L0_rootShape" -p "leg_L0_root";
	rename -uid "7BF29861-473E-B6D0-0024-B1958968E211";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_root31Shape" -p "leg_L0_root";
	rename -uid "8CFAF0F5-4178-682B-87E7-E5A558CF3D54";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_root32Shape" -p "leg_L0_root";
	rename -uid "04D05262-4948-B8CD-301D-F2B23C9952E0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_root33Shape" -p "leg_L0_root";
	rename -uid "1AC72C31-47BD-01BD-57FC-EAA6FDACF54F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "leg_L0_knee" -p "leg_L0_root";
	rename -uid "37B14F4D-4235-BDED-FCFF-B7A1DF1A2F01";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303996 0.38838644346805862 -2.55351295663786e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000004 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "77452200-439D-52A9-F597-459BA9302EBA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_knee31Shape" -p "leg_L0_knee";
	rename -uid "395C8123-40D6-43D1-6FBB-58979E9074B1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_knee32Shape" -p "leg_L0_knee";
	rename -uid "EE077428-4EC2-C030-C816-11AACFBC71C9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_knee33Shape" -p "leg_L0_knee";
	rename -uid "42FE924D-49A2-4DA9-EF58-598EAB2DDB85";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_knee33_0crvShape" -p "leg_L0_knee";
	rename -uid "810F569A-4BB5-776B-5E17-BFA63C7C86EC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_knee33_1crvShape" -p "leg_L0_knee";
	rename -uid "901EE283-4EDB-E534-4EDC-6289DF1D7B43";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "leg_L0_ankle" -p "leg_L0_knee";
	rename -uid "9283310A-4291-C8EF-A6A2-12BBFA7D64C6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 -4.5414075240554173 -0.74630601922779805 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999922 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "104BBB8D-4F69-E346-5538-46AA098E9C62";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle31Shape" -p "leg_L0_ankle";
	rename -uid "473C27AE-4687-2427-D7BE-57A3A53BC490";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_ankle32Shape" -p "leg_L0_ankle";
	rename -uid "2059DE56-43C8-D31D-0143-738072649CBE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_ankle33Shape" -p "leg_L0_ankle";
	rename -uid "6E1E1157-48D0-FEE2-BE69-EFA1A25ECBAA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle33_0crvShape" -p "leg_L0_ankle";
	rename -uid "4578C276-4018-5CB2-FE10-7CA891C890E7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle33_1crvShape" -p "leg_L0_ankle";
	rename -uid "5486FF6C-4618-B31F-E855-C484B35478EF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "leg_L0_eff" -p "leg_L0_ankle";
	rename -uid "ECA31022-41CF-9FC3-C2CF-3693A7CC9242";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.3306690738754696e-016 4.2188474935755949e-015 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000044 0.99999999999999922 1.0000000000000033 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "8626C919-4BE8-EF6F-ED91-3682574BC780";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_eff31Shape" -p "leg_L0_eff";
	rename -uid "13D0EFD7-46EB-8AB4-B416-438CBA7A0AF6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_eff32Shape" -p "leg_L0_eff";
	rename -uid "7E2A61E1-49A8-EDA0-6A9A-9CBB36165366";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_eff33Shape" -p "leg_L0_eff";
	rename -uid "8DAAAE67-4B91-5B8D-5F8F-5984EB78A6EE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_eff33_0crvShape" -p "leg_L0_eff";
	rename -uid "4513DB12-4B9D-AA78-DC7F-D689AD2343C4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_eff33_1crvShape" -p "leg_L0_eff";
	rename -uid "1ECFEBEE-4033-4CA9-FD57-B088DA71DD01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_root" -p "leg_L0_ankle";
	rename -uid "040FD052-4366-92F0-9183-C78A7EC2E8CD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-016 2.886579864025407e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426136 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518496 0.99979752268518252 0.99979752268518152 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "foot";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_2jnt_01";
	setAttr ".ui_host" -type "string" "legUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "foot_L0_rootShape" -p "foot_L0_root";
	rename -uid "7DD6C776-4FB7-D62F-83A3-F0B4A2779770";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_root31Shape" -p "foot_L0_root";
	rename -uid "71D353D6-47A9-A195-E202-C2AFDBD5720E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_root32Shape" -p "foot_L0_root";
	rename -uid "537D70AB-48BB-D90E-985F-DB8EEB84E9EB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_root33Shape" -p "foot_L0_root";
	rename -uid "8F083CAC-412D-2D86-FA63-B7863D95C82E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "foot_L0_0_loc" -p "foot_L0_root";
	rename -uid "0CDD993B-48A0-3961-01EF-12B199194D36";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763225 -0.77423199221117311 -0.00087398468478383506 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448052 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999811 0.99999999999999944 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "75BAE641-4A0F-B1B3-F5DE-8CBC88433CF8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc31Shape" -p "foot_L0_0_loc";
	rename -uid "59C881E1-4154-1D87-5D3D-A9B94AD12DCA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_0_loc32Shape" -p "foot_L0_0_loc";
	rename -uid "E8684EB4-4C98-B539-BB42-419B26DB7046";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_0_loc33Shape" -p "foot_L0_0_loc";
	rename -uid "7797471D-4B85-7855-5DE5-88BBC1120249";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc33_0crvShape" -p "foot_L0_0_loc";
	rename -uid "5685D1C3-4C4E-B835-9CA8-FBA1B67C0A3A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc33_1crvShape" -p "foot_L0_0_loc";
	rename -uid "F77F4636-4ACB-9821-508C-03A28BC7076F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_1_loc" -p "foot_L0_0_loc";
	rename -uid "2E07AFE7-48F5-DA9D-A01D-34A24B491E92";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444493 0.052400542543840634 0.00053566803260807205 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448027 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "2F8D2EA4-4FB5-347C-8729-C9A64E553FDC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc31Shape" -p "foot_L0_1_loc";
	rename -uid "FD891EBC-4073-828F-3B23-BCB2A429930C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_1_loc32Shape" -p "foot_L0_1_loc";
	rename -uid "F090BA3F-4C05-EF63-464C-15BDFCF3D35C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_1_loc33Shape" -p "foot_L0_1_loc";
	rename -uid "E0928B5D-4A83-2A74-1D4F-BAB8E37380AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc33_0crvShape" -p "foot_L0_1_loc";
	rename -uid "15FBEE99-4260-7600-0574-3894BE6E84DE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc33_1crvShape" -p "foot_L0_1_loc";
	rename -uid "3D62398F-47B5-991A-0080-7E91AB55DF87";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_2_loc" -p "foot_L0_1_loc";
	rename -uid "A1484427-47CB-4F91-7E81-80ADB64FA655";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518443 -0.34355031336095387 -0.0018389437992671898 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000011 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "36E13246-41A6-76E4-668C-D7A9BEE92108";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc31Shape" -p "foot_L0_2_loc";
	rename -uid "25D66E15-4860-692C-0E64-45BC73060CD0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_2_loc32Shape" -p "foot_L0_2_loc";
	rename -uid "3D957B7C-4951-7B5A-5829-A2B18438EA68";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_2_loc33Shape" -p "foot_L0_2_loc";
	rename -uid "3EAC65F1-4261-8B72-6BDB-3FA6EAAFCE92";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc33_0crvShape" -p "foot_L0_2_loc";
	rename -uid "99B5B023-49B8-FF3E-1E3C-13A25CCBE010";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc33_1crvShape" -p "foot_L0_2_loc";
	rename -uid "E4AE5C64-4D22-BB3C-89BF-08A0EC41ECAB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_crv" -p "foot_L0_root";
	rename -uid "55390279-4A4C-7E89-D296-B3968179DBB0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415504 1.0591437062861173 ;
	setAttr ".r" -type "double3" 2.8990169397258541 84.223472754416633 2.9137877746396947 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808354 1.0497207713808347 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "7CD1CC0B-44E9-A979-9FBB-548D9526933A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "18E9DCC4-4BE3-4437-2DF9-6EA7E86F1EF5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "foot_L0_heel" -p "foot_L0_root";
	rename -uid "EBB037FE-4832-2F81-4886-A48B52A1DE04";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343258 -1.2883323665462256 -0.0019628851482431653 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "277D7D81-4A7E-33E9-02FD-43B1E2785766";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_heel31Shape" -p "foot_L0_heel";
	rename -uid "BED6A816-45AE-BB47-25EF-5F928EEBCBCE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_heel32Shape" -p "foot_L0_heel";
	rename -uid "FD172939-4FA5-48DC-9E3B-BC83EAC2132E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_heel33Shape" -p "foot_L0_heel";
	rename -uid "06EB7468-4557-6270-38BC-2581BC79D990";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_heel33_0crvShape" -p "foot_L0_heel";
	rename -uid "BE8DB7ED-49FA-889D-C2B3-6CAC95394C90";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_heel33_1crvShape" -p "foot_L0_heel";
	rename -uid "EE33A5F9-4650-E5D4-E1B2-3CB019E12D25";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_outpivot" -p "foot_L0_root";
	rename -uid "FD2E815C-4DD9-EEBF-90F0-E3BD83B1A5C3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991004 -1.2852474767223827 -0.54483578923279907 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "4A5A1649-4F93-51F8-0A5E-58AC740457FE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot31Shape" -p "foot_L0_outpivot";
	rename -uid "15991E9E-4680-035F-2A31-2E8BD0CBEFC4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_outpivot32Shape" -p "foot_L0_outpivot";
	rename -uid "3094E532-453E-8734-BE95-2385F660B873";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_outpivot33Shape" -p "foot_L0_outpivot";
	rename -uid "13ACF6B0-4E5B-A6A7-5435-159BD3600DD7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot33_0crvShape" -p "foot_L0_outpivot";
	rename -uid "D279A91F-4F15-6764-DEED-A8A51DCCBCEF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot33_1crvShape" -p "foot_L0_outpivot";
	rename -uid "8420572E-465A-7D60-7072-9796A473DF3A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_inpivot" -p "foot_L0_root";
	rename -uid "6E710140-47F4-30E2-5F05-4CAB646DA172";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991006 -1.290593954007349 0.65234269833768388 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "62CF00A4-4042-26E4-C96D-77970F6BEEA3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot31Shape" -p "foot_L0_inpivot";
	rename -uid "3A34AF69-4924-C522-BD10-B19667D88E79";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_inpivot32Shape" -p "foot_L0_inpivot";
	rename -uid "18BD6FD0-4CEB-D5B3-C97F-BA90023234D0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_inpivot33Shape" -p "foot_L0_inpivot";
	rename -uid "3EBBE85C-4BA9-BEBE-9BA3-37B4B93303C4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot33_0crvShape" -p "foot_L0_inpivot";
	rename -uid "266788DA-4697-3353-5AC6-0AAE1BA89035";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot33_1crvShape" -p "foot_L0_inpivot";
	rename -uid "68644AFF-4091-FAAC-3D21-22942FE7B050";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_1" -p "foot_L0_root";
	rename -uid "5646B212-4B09-4E49-5AD8-DBABAA892957";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415504 1.0591437062861173 ;
	setAttr ".r" -type "double3" 2.8990169397258541 84.223472754416633 2.9137877746396947 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808354 1.0497207713808347 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "1F62FCE4-4CF9-3AEE-963E-E58E2C93F0FD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig" -p "foot_L0_1";
	rename -uid "E86A23E1-4D0F-52F9-4417-A781946FF849";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "legUI_L0_root" -p "foot_L0_root";
	rename -uid "68A4A6A6-43A7-1475-B861-18BBADC63CA7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5990855265032935 0.51029795172993664 -1.4395512694570036 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1 0.99999999999999756 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "legUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "legUI_L0_rootShape" -p "legUI_L0_root";
	rename -uid "5ACB2A00-4858-A971-91C7-D0A90E10F0D4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_L0_root31Shape" -p "legUI_L0_root";
	rename -uid "4C0A650E-4606-1EA7-819E-6F869F4D4CDD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_L0_root32Shape" -p "legUI_L0_root";
	rename -uid "674ACAAA-4C91-F22E-418E-3188C168C43B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_L0_root33Shape" -p "legUI_L0_root";
	rename -uid "2AB844EB-4A73-27DD-7A89-208E74B9D0DC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "legUI_L0_sizeRef" -p "legUI_L0_root";
	rename -uid "5FAA6699-4D35-D98C-F860-E2B687159971";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565061 -4.4408920985006262e-016 1.0444039858906484 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.02961666796398163 -5.7690337251489705 0.29463615418735944 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808354 1.0497207713808354 1.0497207713808374 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "leg_L0_crv" -p "leg_L0_root";
	rename -uid "59AE6781-4FE1-10A1-7093-34B92EED9C26";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209233 0.19144303592045897 0.96902196420373599 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729844 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.049508226737738 1.0495082267377407 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "D0482476-4FFD-E129-51F4-8CABA5D9CFF8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "F0F69E75-48F4-BF3A-A987-A89D05E60837";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "leg_R0_root" -p "spine_C0_root";
	rename -uid "F420B81F-4EF2-7934-1324-85998A6A1B65";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588016 7.7715611723760958e-016 1.0212680564255743 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -0.29314386227019557 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999822 -1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "legUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "leg_R0_rootShape" -p "leg_R0_root";
	rename -uid "057487E9-4F69-2B65-23CE-3297C6011FF3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_root7Shape" -p "leg_R0_root";
	rename -uid "F3C422E8-4CE8-BBAB-F2C3-43A9E3F64524";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_root8Shape" -p "leg_R0_root";
	rename -uid "57D3DBF6-4861-0516-13AC-42BC4371BD8A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_root9Shape" -p "leg_R0_root";
	rename -uid "20FA16D6-4A74-4FA2-A7D4-59B2DF42DA21";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "leg_R0_knee" -p "leg_R0_root";
	rename -uid "CA1AA5E1-4737-22AE-9E20-B6815DF8B892";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772304031 0.38838644346805856 -3.8857805861880479e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "8F46D381-4060-45E3-72BC-28BE39594FE6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_knee7Shape" -p "leg_R0_knee";
	rename -uid "06643B52-4B0F-28C5-0362-2C9A164F29DA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_knee8Shape" -p "leg_R0_knee";
	rename -uid "5F0C21E6-4D84-0B28-FC6D-51BB0150DEB7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_knee9Shape" -p "leg_R0_knee";
	rename -uid "1F095693-48D7-469B-DCF6-E494092285D6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_knee9_0crvShape" -p "leg_R0_knee";
	rename -uid "851D32D6-4A14-899B-10BC-C8BBBE71D2C6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_knee9_1crvShape" -p "leg_R0_knee";
	rename -uid "730BA799-47F2-3AE5-5DCC-6EAC608823FF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "leg_R0_ankle" -p "leg_R0_knee";
	rename -uid "4422BDA2-44D2-E174-E447-928C6E9D8ED5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -4.5414075240554155 -0.74630601922780004 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "6A814431-481B-D571-629D-65B1D59A81AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle7Shape" -p "leg_R0_ankle";
	rename -uid "289A7BD0-4CBF-22BA-36AC-299CB135BD7B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_ankle8Shape" -p "leg_R0_ankle";
	rename -uid "5F2670EA-4A43-A2BE-350C-378A10C3EA6A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_ankle9Shape" -p "leg_R0_ankle";
	rename -uid "FAD9511E-4EBF-5B59-380B-A6A304D6132A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle9_0crvShape" -p "leg_R0_ankle";
	rename -uid "24943902-4C8D-F08F-ED63-9BB4497C4E49";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle9_1crvShape" -p "leg_R0_ankle";
	rename -uid "63C3A262-414D-A536-0EF2-419704E49DCF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "leg_R0_eff" -p "leg_R0_ankle";
	rename -uid "FC6129A0-4F87-12B1-15DB-C3B3E9E40457";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5543122344752192e-015 2.4424906541753444e-015 2.1377206638691337 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000044 0.99999999999999889 1.0000000000000031 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "E03EDE31-4D50-AE24-E3CB-0A92AC6A09AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_eff7Shape" -p "leg_R0_eff";
	rename -uid "8AA4149F-4AFA-055C-DCC9-FF85A9E10D24";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_eff8Shape" -p "leg_R0_eff";
	rename -uid "A7DC284B-40EC-134B-FA11-DB83E2664B88";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_eff9Shape" -p "leg_R0_eff";
	rename -uid "E27AEE61-41EA-CB99-F411-70AF2187E872";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_eff9_0crvShape" -p "leg_R0_eff";
	rename -uid "EA1BE9F3-497A-F052-0F97-D3B763F3429E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_eff9_1crvShape" -p "leg_R0_eff";
	rename -uid "AC032BC7-40FA-8C73-435B-968818BBB6F4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_root" -p "leg_R0_ankle";
	rename -uid "8961F169-4A96-10E3-59A9-A79894D08372";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.5511151231257827e-016 1.7763568394002505e-015 -1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510425994 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518518 0.99979752268518218 0.99979752268518129 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "foot";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_2jnt_01";
	setAttr ".ui_host" -type "string" "legUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "foot_R0_rootShape" -p "foot_R0_root";
	rename -uid "C92C635F-4513-829C-EDC4-D581BA424B42";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_root7Shape" -p "foot_R0_root";
	rename -uid "227A2E22-47B6-0310-AAEE-8ABEBD57E2E8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_root8Shape" -p "foot_R0_root";
	rename -uid "45B666A5-4247-0A85-3454-4CB19987F2D6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_root9Shape" -p "foot_R0_root";
	rename -uid "6CE22D69-48BC-F411-3FE8-B5A3DC58ED11";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "foot_R0_0_loc" -p "foot_R0_root";
	rename -uid "C7DDAC02-4F20-FBD0-F28E-A899C8D32EBD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763219 -0.77423199221117378 -0.00087398468478117053 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448066 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999998 0.99999999999999922 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "7470A28B-4FD1-C305-E1F7-CB9C87025BF5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc7Shape" -p "foot_R0_0_loc";
	rename -uid "B9279374-40A6-CBE8-4A51-9EA4292EA0A5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_0_loc8Shape" -p "foot_R0_0_loc";
	rename -uid "9E9F3725-412D-EE16-5524-5EA951179EBE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_0_loc9Shape" -p "foot_R0_0_loc";
	rename -uid "96E4E3FB-4B27-6C75-D771-FBAFA4A2DE95";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc9_0crvShape" -p "foot_R0_0_loc";
	rename -uid "D4BD9124-4E3F-8805-1E33-85A474B1370D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc9_1crvShape" -p "foot_R0_0_loc";
	rename -uid "8EC01982-431D-2385-5A2A-5CBE37FF0000";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_1_loc" -p "foot_R0_0_loc";
	rename -uid "01CF1E55-499B-60C4-88AB-5BBE7ACA9307";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444549 0.0524005425438413 0.00053566803260851614 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.49024465344802 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "9A8AD853-4658-C9C7-F742-B3BAC1D1CFD4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc7Shape" -p "foot_R0_1_loc";
	rename -uid "2CEE8B77-46C8-AA26-0851-65ACB63320D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_1_loc8Shape" -p "foot_R0_1_loc";
	rename -uid "74FF3243-4B1B-97F0-71DD-81A82D52F0E2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_1_loc9Shape" -p "foot_R0_1_loc";
	rename -uid "FBEBD947-4C0F-273B-0A67-8D869D777C65";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc9_0crvShape" -p "foot_R0_1_loc";
	rename -uid "7C394D73-4181-F992-CF3F-D689F7CFA2A0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc9_1crvShape" -p "foot_R0_1_loc";
	rename -uid "44360D64-466B-DF64-156A-1BB0141F37D7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_2_loc" -p "foot_R0_1_loc";
	rename -uid "E257AD18-4BAF-4DCF-268E-5FB511138EB5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.3499948265451831 -0.34355031336095421 -0.0018389437992660795 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999929 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000013 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "89041D48-48D1-C4CF-33DF-B3B0373E0096";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc7Shape" -p "foot_R0_2_loc";
	rename -uid "64A19798-4730-B325-EF81-6C9487D43C36";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_2_loc8Shape" -p "foot_R0_2_loc";
	rename -uid "9D962999-4EEA-8537-796A-15BAA86C14A2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_2_loc9Shape" -p "foot_R0_2_loc";
	rename -uid "240A00E4-446D-2371-9449-EF8D1320E416";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc9_0crvShape" -p "foot_R0_2_loc";
	rename -uid "8095F8CE-4D5C-11C1-D61C-7CB52A167050";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc9_1crvShape" -p "foot_R0_2_loc";
	rename -uid "46B054CD-4466-8AB8-EBCA-2B9D3305282C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_crv" -p "foot_R0_root";
	rename -uid "DFA7757A-4A82-5E6A-5051-63AB7E139668";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248686829 -1.2934842521415502 1.0591437062861191 ;
	setAttr ".r" -type "double3" 177.10098306027422 -84.223472754416491 -177.08621222536055 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 -1.0497207713808347 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "9AABB035-46D0-E993-DABD-6CAACC118B25";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "591DDBCD-41A1-C5D8-77A3-CA9DCD5BBE2B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "foot_R0_heel" -p "foot_R0_root";
	rename -uid "0079C5BD-47CE-03BA-3C40-458806E1FFF1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343313 -1.2883323665462256 -0.0019628851482436094 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999978 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "B725F998-443D-E94F-68C0-F0AE16BACB8D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_heel7Shape" -p "foot_R0_heel";
	rename -uid "4BBDC700-43C3-1816-8823-29A6264D3596";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_heel8Shape" -p "foot_R0_heel";
	rename -uid "92338567-4E68-4783-4FE3-D186B4346E81";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_heel9Shape" -p "foot_R0_heel";
	rename -uid "30BCA799-43EF-5DFB-A0F0-A7B3A7FFF1E5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_heel9_0crvShape" -p "foot_R0_heel";
	rename -uid "68A43F61-4838-FF74-AE9F-69900794A531";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_heel9_1crvShape" -p "foot_R0_heel";
	rename -uid "0EEFD93A-45B3-3DAF-283C-E3A44EF5C7F8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_outpivot" -p "foot_R0_root";
	rename -uid "4D665955-4FFD-17A8-DD24-62B9A74F485F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.2852474767223832 -0.54483578923279707 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999978 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "66C1D85C-4F78-51C1-172B-7E829CB81612";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot7Shape" -p "foot_R0_outpivot";
	rename -uid "CD0A9BD9-4C28-A587-6A85-90820194F6FD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_outpivot8Shape" -p "foot_R0_outpivot";
	rename -uid "F78DB629-41D8-8C45-B1FA-14BA3B2F1E26";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_outpivot9Shape" -p "foot_R0_outpivot";
	rename -uid "56E8D776-4D09-91FE-F385-83B979493453";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot9_0crvShape" -p "foot_R0_outpivot";
	rename -uid "C56844F4-4C4C-CD6C-F7C0-14BC877B393F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot9_1crvShape" -p "foot_R0_outpivot";
	rename -uid "B506E291-4408-F730-DEEE-78977EC5FC9A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_inpivot" -p "foot_R0_root";
	rename -uid "A66A81F7-4D5F-01F7-74FD-16B5D5951F02";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145990984 -1.290593954007349 0.65234269833768677 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999978 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "4192310B-4160-FBC8-05F6-FC82B942F65D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot7Shape" -p "foot_R0_inpivot";
	rename -uid "B5BD00A6-4BB5-45B5-BBC6-0CA0B83B7E38";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_inpivot8Shape" -p "foot_R0_inpivot";
	rename -uid "9D413D08-4210-54B4-FA96-2B975D6846C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_inpivot9Shape" -p "foot_R0_inpivot";
	rename -uid "4648BE86-4FAD-F63F-21DA-9CB54FF5A2C7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot9_0crvShape" -p "foot_R0_inpivot";
	rename -uid "41D4A372-47FC-B3C5-36B6-189400AC695C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		0 -0.13849999999906565 -5.0873890682090472e-007
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-007
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0 0.13849999999906565 5.0873890682090472e-007
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-007
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot9_1crvShape" -p "foot_R0_inpivot";
	rename -uid "836089E7-4A31-C3B4-D8AF-88955B0BDCB3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		11
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		-3.5813749748453416e-007 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-006 -2.2424428183441165e-011 0.13849999998505041
		-2.5069624828497061e-006 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-006 0.13849999999159085 0
		3.5813749748453416e-007 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-006 2.2424428183441165e-011 -0.13849999998505041
		2.5069624828497061e-006 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-006 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_1" -p "foot_R0_root";
	rename -uid "1230D5E8-4D7F-636C-CF0F-518E67EEB1C8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248686829 -1.2934842521415502 1.0591437062861191 ;
	setAttr ".r" -type "double3" 177.10098306027422 -84.223472754416491 -177.08621222536055 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 -1.0497207713808347 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "85D36024-4AE8-F252-E1E4-06A93113A76A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
	rename -uid "B95A1974-46F0-6C74-1121-179E863B1732";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "legUI_R0_root" -p "foot_R0_root";
	rename -uid "F3E7F6CE-4D56-A226-37EC-17A94728B257";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59908552650329638 0.51029795172993597 -1.4395512694570036 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999929 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999978 0.99999999999999745 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "legUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "legUI_R0_rootShape" -p "legUI_R0_root";
	rename -uid "A39DA320-4130-0809-6CF0-76BE8B11A115";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_R0_root7Shape" -p "legUI_R0_root";
	rename -uid "856F74E4-48DA-5AA7-352B-97B58FDDA3CC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_R0_root8Shape" -p "legUI_R0_root";
	rename -uid "AC28B6BB-428F-4841-82B1-FE934336982C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_R0_root9Shape" -p "legUI_R0_root";
	rename -uid "ABB4A38F-4A7B-25E0-8863-818430C602DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "legUI_R0_sizeRef" -p "legUI_R0_root";
	rename -uid "ADA277B0-4F49-E0F6-E496-B99ADDA157A1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565105 -4.4408920985006262e-016 1.0444039858906489 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963955547 -5.7690337251490034 0.29463615418732658 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808354 1.0497207713808359 1.0497207713808379 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "leg_R0_crv" -p "leg_R0_root";
	rename -uid "530A715A-45F1-8B61-EA31-E798637A7407";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209235 0.19144303592045836 0.96902196420373354 ;
	setAttr ".r" -type "double3" 90 -89.706856137729801 -179.99999999999815 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377378 -1.0495082267377407 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "DAB4BFC2-4E23-8BDC-77A6-FCB74181C578";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "09502D86-4F8F-A2F0-F04C-5BA5EECC48CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8C37A36F-458B-F3BA-012C-7794C682B9B2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6A75A68A-462C-8DF2-DE84-14A534F12870";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4DCFACF8-47C7-2AE6-DFD9-D0BD5763C376";
createNode displayLayerManager -n "layerManager";
	rename -uid "226CC5A1-4DB3-2CF8-CB81-57B242599417";
createNode displayLayer -n "defaultLayer";
	rename -uid "273B9BD5-4D88-1B5C-4F57-11BF27B01E55";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "609ABABE-4856-883D-EBF6-28B023D0B85A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2AA7D889-4DAD-320F-7FA9-0D8BACEC1D23";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "66D2A573-4BF1-BF2F-78B6-99BFF7141625";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1300\n                -height 763\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1300\n            -height 763\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n"
		+ "                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"left3\\\" -ps 1 80 78 -ps 2 20 100 -ps 3 80 22 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1300\\n    -height 763\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1300\\n    -height 763\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Script Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"scriptEditorPanel\\\" -l (localizedPanelLabel(\\\"Script Editor\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Script Editor\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5177B696-438F-B220-2A7B-56A61BA1BD0C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveUU -n "spine_C0_root_st_profile1";
	rename -uid "EDB4779D-41C8-355A-0742-43A5BBE28568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	rename -uid "F9350587-4A2D-5FAA-C7A1-DBA29F73748A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion165";
	rename -uid "0C7C71D6-4D82-439B-D5F8-A085B8157DF7";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns483";
	rename -uid "D5BE3E45-4855-4173-32AA-66BE006B36D6";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak631";
	rename -uid "D39F4A9E-440F-3B33-5FAB-43A7B286E750";
createNode objectSet -n "mgear_curveCns483Set";
	rename -uid "A5656F05-4017-642F-7752-3DA19F511FB6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns483GroupId";
	rename -uid "1385B5A0-428F-1104-570B-F88C348B8D22";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns483GroupParts";
	rename -uid "5A48B99A-4CC7-2A17-023F-F394F5DAE016";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet631";
	rename -uid "2090F3E4-439D-A67D-613E-5DAD925C2E37";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8831";
	rename -uid "550E9042-4D6A-2EFD-7265-E1B0CD8B5E1B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1262";
	rename -uid "4FB0274E-4B40-8144-C83B-F28A07C6D231";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion166";
	rename -uid "66A28625-4BF5-DF8A-DC69-50AD6D691B8E";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns484";
	rename -uid "A083F171-40A2-9561-992F-EF9924FEE471";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak632";
	rename -uid "406745BB-4B8A-D614-155D-22B4118A528F";
createNode objectSet -n "mgear_curveCns484Set";
	rename -uid "9AF2A120-482D-68E2-6AA5-50A92D82727D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns484GroupId";
	rename -uid "0DE50C85-42D0-B1D0-55B7-EAB720BC670E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns484GroupParts";
	rename -uid "F07A25BC-4E5C-7ED3-23DE-1897D976058E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet632";
	rename -uid "CEA32966-4C0A-41F8-B0A5-42BC4F47256D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8833";
	rename -uid "30FC5A14-46F0-BE55-9C80-4D97B61440A3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1264";
	rename -uid "E9F31067-4D93-3B03-9B2A-379DD53CE512";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_L0_root_st_profile1";
	rename -uid "B844E107-4C3E-CEED-1534-C9AEDBB502ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile1";
	rename -uid "FDC12BE4-43D6-52A7-02EF-CC986DA6C03E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode mgear_curveCns -n "mgear_curveCns485";
	rename -uid "A0DD3D8F-4480-DDE2-C6A6-09A718EC6736";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak633";
	rename -uid "EA33CCB4-477C-8731-9250-59B7D8575637";
createNode objectSet -n "mgear_curveCns485Set";
	rename -uid "6DF39E13-4BD2-7844-F965-F280C9577547";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns485GroupId";
	rename -uid "B97CD61C-4FF7-6042-3A29-349337422DFF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns485GroupParts";
	rename -uid "6EF5D8E6-4EEA-16CE-9F8D-8980868089B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet633";
	rename -uid "2680C331-4E9E-80D5-81BC-E0B3002A51A7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8835";
	rename -uid "FB9EBB33-4FD0-10F6-B9FE-0E97D5FA54CA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1266";
	rename -uid "8EA2849A-41DC-0D3B-9291-A0A127A5A8E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion167";
	rename -uid "17FE090A-41E3-2880-6773-5A85972D02E3";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns486";
	rename -uid "61791D56-4487-A56B-823A-B3B41C5EBE90";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak634";
	rename -uid "25D73289-4E02-B516-CE7E-97B435448115";
createNode objectSet -n "mgear_curveCns486Set";
	rename -uid "8BAE1281-42DA-232A-C56F-8AAB44837D84";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns486GroupId";
	rename -uid "998BF7AE-42CD-A35F-3BCE-E89D7FF684CE";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns486GroupParts";
	rename -uid "001D3114-47F1-710F-1D2C-C5B3691F7855";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet634";
	rename -uid "0E8B0AE4-4776-55B5-BAA0-B8AD76B9D215";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8837";
	rename -uid "2D6809B8-463B-7920-AF8F-71B3B31560EA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1268";
	rename -uid "1CA03EDC-4054-F9C1-B7AD-4289F38F665C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion168";
	rename -uid "E0A4D731-4E14-F65F-93C1-04B2B6831747";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns487";
	rename -uid "381CDC87-4191-3A13-8EDB-A0A7169B130E";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak635";
	rename -uid "07BBCBB5-4D9D-6BC2-5C1E-BBA8A21BE055";
createNode objectSet -n "mgear_curveCns487Set";
	rename -uid "52E04FAA-4AEC-C04F-F2EF-F68DB4DDDFDD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns487GroupId";
	rename -uid "7120FE7A-4C31-AF96-3328-4B9B252D858B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns487GroupParts";
	rename -uid "4F3908A9-424C-F3EB-7646-4A8C05C5A74D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet635";
	rename -uid "98BCAD4A-44AD-5CEA-4BC1-948A255299EB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8839";
	rename -uid "5C4D1D3D-429C-B060-0390-8C8C769B8377";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1270";
	rename -uid "A0019170-4CDE-CEB5-E0A1-6DADC5CC4300";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion169";
	rename -uid "DD63454C-4816-5212-6E49-68B45D2D422E";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns488";
	rename -uid "D965C77C-469C-9176-8ACB-0BBFEBBCEAF8";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak636";
	rename -uid "1D469381-4748-822A-46F0-1D8193C44C59";
createNode objectSet -n "mgear_curveCns488Set";
	rename -uid "E2654F14-44DC-7A58-1F27-C089836BBE22";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns488GroupId";
	rename -uid "BEC59E2E-43FB-8945-63CA-BFA0F3527EE1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns488GroupParts";
	rename -uid "B095B367-43EA-C8B6-7006-0FAF7B1DCBB3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet636";
	rename -uid "32AEC9C3-43B9-21DB-963C-E2BD975E33A7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8841";
	rename -uid "2E7F8699-487D-D9C9-6179-93A4D1D51E23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1272";
	rename -uid "53D7A625-474D-0C5B-20B5-1EAD5FAD1FFB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion170";
	rename -uid "1AD6256C-4AA8-8ACC-5822-AF99D30763A9";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns489";
	rename -uid "4A316A36-46A8-2DBE-5876-7E9A2971E0EB";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak637";
	rename -uid "7F80AD8A-402F-5FEF-E157-AE9D4FECC065";
createNode objectSet -n "mgear_curveCns489Set";
	rename -uid "064FF105-49C3-A2BA-B113-7D917365D690";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns489GroupId";
	rename -uid "0BD707C4-4B4C-5640-854A-D68AB0983A57";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns489GroupParts";
	rename -uid "3E9B07EF-4AA1-E5CB-DC23-24A99E36A481";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet637";
	rename -uid "236FF4DF-4BC1-89F3-C329-52BD6838606A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8843";
	rename -uid "563B2EB0-45E2-24FC-9139-788F1C2417F4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1274";
	rename -uid "472F4854-4699-3901-06CA-079467123465";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion171";
	rename -uid "C258AE4C-4A9F-C8C2-C090-4CAE2449295F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns490";
	rename -uid "F854F01B-496B-09EC-BC8C-96A90922BA55";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak638";
	rename -uid "1B93E292-48CF-1881-22AD-D7B83F7890F2";
createNode objectSet -n "mgear_curveCns490Set";
	rename -uid "498F793A-40B8-7982-26DA-B08845E2E01D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns490GroupId";
	rename -uid "DB2F5437-4958-F6B4-4F40-47B8DAB3357D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns490GroupParts";
	rename -uid "428621EB-4491-FF10-2386-7E8896470D06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet638";
	rename -uid "D3789F92-4A55-5D64-B07F-309046E26F82";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8845";
	rename -uid "2E51B024-42E6-2257-148D-939C018F7C72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1276";
	rename -uid "D7317BAB-445A-FC1E-68DA-86AFE7C68918";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion172";
	rename -uid "361E0A6B-474D-D80B-4C95-CB931DAA6DDE";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns491";
	rename -uid "12CE845E-4A22-0323-E4D6-1DA0C2D13D46";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak639";
	rename -uid "32FDF6D9-44EE-DFD5-7F8F-21A3A3F4EABA";
createNode objectSet -n "mgear_curveCns491Set";
	rename -uid "4D3E70BA-4CFD-E800-22DC-70BBEF289AB5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns491GroupId";
	rename -uid "A84C3FB7-412C-05AF-B721-10B44F0C0010";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns491GroupParts";
	rename -uid "5036C51E-4FA5-0C8B-876A-51AEDA99083A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet639";
	rename -uid "DDAF5862-46D8-A62B-233C-25BD2A69FD9C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8847";
	rename -uid "88958F84-4AC7-0A46-7CC0-7D8ED2CCDBF1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1278";
	rename -uid "FB78D9B7-43CC-EC2A-F1E4-0A8F70B77011";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile1";
	rename -uid "D5515A3F-4DCB-5E17-1CB0-68BED2D2C5CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	rename -uid "AE11F39D-4144-EE44-B92F-E8A3AE75859F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion173";
	rename -uid "F20DB176-4E51-13BB-6924-0D9F15F8FE81";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns492";
	rename -uid "E594BB66-44C6-1B91-894C-288746D38327";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak640";
	rename -uid "3B9FA201-4F54-12EC-1439-A9BC161A6433";
createNode objectSet -n "mgear_curveCns492Set";
	rename -uid "F5EF221C-4484-6080-1194-5D8C252F8606";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns492GroupId";
	rename -uid "A517F608-48B0-33A5-2A59-88A3AC8CD509";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns492GroupParts";
	rename -uid "30B07429-46C9-7404-1401-75BE8FF359C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet640";
	rename -uid "FAE3870C-4274-6570-9FA8-678507D92ED4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8849";
	rename -uid "CD547E83-4DF7-6F77-8CF6-7994709D6D24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1280";
	rename -uid "F00B5156-4DEE-6A96-6DBE-169CC55B6BED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns493";
	rename -uid "583F2FA5-470C-4729-C3B0-27AC7C73F49E";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak641";
	rename -uid "285E854E-435B-9801-1133-00B5B65AE314";
createNode objectSet -n "mgear_curveCns493Set";
	rename -uid "728F2966-4BFB-B016-367F-6C806A72AEA2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns493GroupId";
	rename -uid "A321A38F-401D-BDDA-CDEE-C789985742D9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns493GroupParts";
	rename -uid "F3B155DD-417A-871E-7664-0E83B01AACBC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet641";
	rename -uid "F5EE762A-42A2-9DBB-FB50-DB88E7484B6C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8851";
	rename -uid "A92EA999-447A-20A2-9F2F-D8956445D4C3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1282";
	rename -uid "33AFEA2D-4002-0D24-226A-58A2405C4AD9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns494";
	rename -uid "47608A5F-4B18-7A9C-6589-5D829DBB59EC";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak642";
	rename -uid "5AB6B8DD-4B24-397B-1E6F-BC811F44435D";
createNode objectSet -n "mgear_curveCns494Set";
	rename -uid "38D52ED9-46D3-E245-5979-678B808ABE09";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns494GroupId";
	rename -uid "7E5EB4FD-46E1-8EB8-A001-11920B5AF95F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns494GroupParts";
	rename -uid "CDDF2E80-481A-E387-D561-31A8298CD51B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet642";
	rename -uid "643F7336-4D46-09EA-8C8D-0BBAC970EBA3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8853";
	rename -uid "1330FD8F-4BB9-126B-D03E-E79BA3790A11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1284";
	rename -uid "0273434B-453B-90E7-E44F-2AB38CB288C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns495";
	rename -uid "7173FD0D-4470-F1A0-875E-F1846ED1066A";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak643";
	rename -uid "A540DB20-4B11-3827-FD72-A28AE91FA3B4";
createNode objectSet -n "mgear_curveCns495Set";
	rename -uid "6605908A-4F86-C99E-5343-1E9829DA73D6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns495GroupId";
	rename -uid "C0E19622-432A-C10B-E895-93A42D6DBFE3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns495GroupParts";
	rename -uid "BC2C8FEB-466E-8719-D622-F0B769343240";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet643";
	rename -uid "A841ACC0-4063-A078-9AA0-089E215BA00A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8855";
	rename -uid "69999C54-4B89-9631-C5BE-EB90EB813A0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1286";
	rename -uid "0842F14E-49BF-B689-440E-2881BFA46851";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns496";
	rename -uid "850C1529-40DC-B19A-283C-6AA0DAC6B506";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak644";
	rename -uid "0321B511-4C4E-3C9F-EAC6-2DA75DB7B333";
createNode objectSet -n "mgear_curveCns496Set";
	rename -uid "4B23C55B-4895-F5B3-D001-DB81B3116095";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns496GroupId";
	rename -uid "E37DE211-4D93-945D-66DF-5EB7C75C902D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns496GroupParts";
	rename -uid "4F4C4E04-4616-A973-3F53-3CAA39D2A6D9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet644";
	rename -uid "2BE51883-47DF-746A-BF4E-BDAFEE7940A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8857";
	rename -uid "1EBA5280-4BE9-0AD2-0DF7-7994C920C5A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1288";
	rename -uid "6B981FA3-4CAB-8F19-7FB8-ACB93C36EA23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns497";
	rename -uid "E138503A-44F3-0348-6DB1-22B496F333B4";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak645";
	rename -uid "7685EA18-476B-8682-B0E5-6F8BD9614368";
createNode objectSet -n "mgear_curveCns497Set";
	rename -uid "31402043-47FF-76C3-7389-DAAB42E06150";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns497GroupId";
	rename -uid "0B20630A-4F3E-E4A7-A9C3-A6A49101DB89";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns497GroupParts";
	rename -uid "AADDCAB1-4A0A-39AB-707D-2CA638771C6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet645";
	rename -uid "1C50809C-43E0-B8D1-4339-44AB1AFFB2EE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8859";
	rename -uid "93F986B7-4929-FE92-99D8-3EAB42D51CDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1290";
	rename -uid "A226B2D8-40B3-29E0-89F6-BEA4A2B8572F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion174";
	rename -uid "A475FCCD-4032-A117-D92D-1792EDD838C1";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns498";
	rename -uid "3E5152CF-48F3-8F86-5353-79ADC48A2A0D";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak646";
	rename -uid "C1EE750C-4E03-75CA-B6F3-D3AEEE87CED5";
createNode objectSet -n "mgear_curveCns498Set";
	rename -uid "6018164D-4D34-D5EB-CBB2-429699778A38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns498GroupId";
	rename -uid "EB3019DD-4C7F-D8CD-9993-6F81CBBB697B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns498GroupParts";
	rename -uid "C484D849-495E-96DA-8FE2-468B3570461B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet646";
	rename -uid "1C9AA615-4700-1260-1F65-1BBA3A26C907";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8861";
	rename -uid "9C86678A-4C63-ECF0-FAF3-79B81164B233";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1292";
	rename -uid "6F3707C0-45D9-F220-E0D9-4EA4D9B8F8ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns499";
	rename -uid "015DE0A5-472D-CA93-461F-9E94E7C4A084";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak647";
	rename -uid "C1B1416A-4BC4-5B7E-774E-9187B3AC4C22";
createNode objectSet -n "mgear_curveCns499Set";
	rename -uid "76A33F75-4AAE-FB5C-40AD-A6B7A7009D93";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns499GroupId";
	rename -uid "0A9F6FB9-46A6-76B8-90BC-A5A84DB71C97";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns499GroupParts";
	rename -uid "12CB82C2-4C5D-733E-3D29-E1BE544B90A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet647";
	rename -uid "68141837-4211-4D4A-E082-118C8259E8F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8863";
	rename -uid "351BF05B-4156-64D0-16F9-E9BE8F291FAA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1294";
	rename -uid "75374AA3-497C-645F-3C3D-4589C97E91A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns500";
	rename -uid "6A831F56-4D19-538A-EF97-9390AAE39EE6";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak648";
	rename -uid "71510A0E-4E6A-951C-EA67-4F9737190368";
createNode objectSet -n "mgear_curveCns500Set";
	rename -uid "B44B649D-4E47-F000-4A70-06AED10FE85C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns500GroupId";
	rename -uid "62019C83-487C-4A7F-D136-0BAA0DC7101A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns500GroupParts";
	rename -uid "025E141F-4FF9-8325-FC12-7A998B17F1E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet648";
	rename -uid "23C4E1F1-4A73-3840-CC1E-0DA1B38AA6DA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8865";
	rename -uid "3127668C-4229-E384-38EC-AE93FAD8E09A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1296";
	rename -uid "59029FE8-492E-382F-EF70-478A7128143C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion175";
	rename -uid "2CABF986-4C40-3A11-267F-3D9015A237ED";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns501";
	rename -uid "982C1B0F-44A5-BC42-0789-CF883AEF736A";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak649";
	rename -uid "7B129407-466E-D4A7-FEE1-C69D1F20C274";
createNode objectSet -n "mgear_curveCns501Set";
	rename -uid "C7E292BE-450A-F2CD-6BEA-8FA6550390A0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns501GroupId";
	rename -uid "76497FF9-4A0E-C8BA-E2AC-99BF2458EE8B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns501GroupParts";
	rename -uid "9F75CFD1-487A-2843-793B-608AD27E1BAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet649";
	rename -uid "0595CC10-40A6-5301-0ACE-7392B9103E29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8867";
	rename -uid "EBB316DA-44F9-8C43-1CAF-2B9AFA7F2B73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1298";
	rename -uid "B13F8113-4521-D60F-FCD6-1889E9C2D1AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	rename -uid "A9A6B555-4300-E5B1-7497-31B372A7BB6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	rename -uid "F18C4579-425B-9A79-7541-FCB0A167FAE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode mgear_curveCns -n "mgear_curveCns502";
	rename -uid "CFE42BED-4B77-6BE9-602E-4B8F2697F549";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak650";
	rename -uid "847C36F0-42BD-1DEC-D992-44938B08786A";
createNode objectSet -n "mgear_curveCns502Set";
	rename -uid "B8556128-4300-BE1A-9E6C-459486C9CE1F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns502GroupId";
	rename -uid "3BEE2A61-434E-8EF7-817A-75AAC238933B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns502GroupParts";
	rename -uid "6206EFF9-4E0F-1526-9DA4-6B85173F6B50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet650";
	rename -uid "D3EE3D53-40AC-D1EE-1799-4EAC402C5B06";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8869";
	rename -uid "35F5AB3F-49AF-FDF5-8461-6490AED2B721";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1300";
	rename -uid "BDA25884-477B-C219-7505-8499DE972DA4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion176";
	rename -uid "148BF1AF-4805-CF84-39F5-15BD91A57C05";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns503";
	rename -uid "69A2D5C0-4475-D227-6406-4CAC51240467";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak651";
	rename -uid "38DA724A-4382-B782-21BD-D9BFB01DA3C4";
createNode objectSet -n "mgear_curveCns503Set";
	rename -uid "BB3D6FD2-4A77-7ED9-604A-AD85613A109F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns503GroupId";
	rename -uid "E0C3E869-40D3-53E7-5F91-BB9CAF0556A6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns503GroupParts";
	rename -uid "B14C1A9A-474E-4A82-75D0-9EA023328CB1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet651";
	rename -uid "5166AF4F-41AD-B6A8-A793-1B9901E9E67C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8871";
	rename -uid "87243469-4141-D64C-24AA-7298C08BA0A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1302";
	rename -uid "EFD7DC55-442A-9FB3-C7CE-1FB1CC39C6FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion177";
	rename -uid "9D0FEBE1-4D7A-826B-B207-0A8D4C8DBBBD";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns504";
	rename -uid "2C5D11E4-4FBC-296C-411B-99924C1E7706";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak652";
	rename -uid "45657651-4D20-ACD4-C804-D6A2210C8B2E";
createNode objectSet -n "mgear_curveCns504Set";
	rename -uid "1E2D1546-457F-55A1-1F40-BC9804B8F5FD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns504GroupId";
	rename -uid "4B42D51F-414D-60FA-329B-F7B46A2934A1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns504GroupParts";
	rename -uid "28210726-403D-AFC5-0D92-EBAE9CA5CE2C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet652";
	rename -uid "8E6B6390-499F-0ED5-F976-278868F59727";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8873";
	rename -uid "7043FFAC-41E6-1B2D-9D07-79AEF5454208";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1304";
	rename -uid "FABE92A8-4A98-803F-C473-EEAE829D3CAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion178";
	rename -uid "079ED1DB-4A10-E8F1-6462-379CCFEC4A0F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns505";
	rename -uid "DEC06518-47B2-2A8B-DBFF-4183C1CA335F";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak653";
	rename -uid "96642C13-4E45-68E4-7D25-2FB5653765BA";
createNode objectSet -n "mgear_curveCns505Set";
	rename -uid "662F397D-4CD1-44DF-A97D-63BB84588DA2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns505GroupId";
	rename -uid "0C5FE0D8-44C3-5411-6893-85A227A12FAF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns505GroupParts";
	rename -uid "3C903E7A-4D2B-4381-5E52-CA96469BFD1F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet653";
	rename -uid "7C9783AD-4276-0CD9-0D1A-F3AD118FF49A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8875";
	rename -uid "E4A1A815-40C6-DB21-8542-CF84FE1ADD1A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1306";
	rename -uid "164A4D7D-4F90-AFE2-000A-DEAEE6B18860";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion179";
	rename -uid "87B06FC4-4DBD-BE60-0058-A186BEFD5D7A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns506";
	rename -uid "C3E2DF57-4A42-1310-5B04-6C8E4DF849D0";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak654";
	rename -uid "3AC0AE3F-4EAE-A5B1-50E1-B0B7E03F3D2E";
createNode objectSet -n "mgear_curveCns506Set";
	rename -uid "FA956B1D-4959-47BF-07AB-A2AF13BD050D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns506GroupId";
	rename -uid "5CD2FB54-4F76-4BD3-A4BD-6AB572CFD343";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns506GroupParts";
	rename -uid "A8989C1F-4908-85A7-B9A0-928FE8235FF4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet654";
	rename -uid "4A99E591-4A11-906B-F7A7-B5987A807036";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8877";
	rename -uid "CEC4CF83-4284-FE8B-45EC-339505924D6C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1308";
	rename -uid "398B02B3-4A6B-DDD4-5EA3-EBB098D5F304";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion180";
	rename -uid "AFF6CEB6-44AB-10E0-7CDD-51BA8112BB25";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns507";
	rename -uid "09207660-4C1B-7CBD-68C6-CDBC54FFCC36";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak655";
	rename -uid "15488BB1-4540-4920-C3DA-ED9666766D07";
createNode objectSet -n "mgear_curveCns507Set";
	rename -uid "6952C248-42D6-A522-6E65-64B13685EBAF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns507GroupId";
	rename -uid "5C38E491-4C16-8744-3D85-4585FB2E0526";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns507GroupParts";
	rename -uid "DCE4BAAD-4AD5-7134-B635-13AFA73E508A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet655";
	rename -uid "A3036AF2-4944-E7FF-9653-8D9F27F5469F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8879";
	rename -uid "132EACC9-4CD7-83A3-7975-EFAE9934B6B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1310";
	rename -uid "B726A208-46C9-1DCE-012B-D0B2773858AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion181";
	rename -uid "05AFC684-45A6-2D38-E035-19B1A1CA6EB4";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns508";
	rename -uid "011C5539-4AD9-F19F-402C-F49D8017A037";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak656";
	rename -uid "3D2857BB-49E3-CCA1-6894-08A28AB76FB5";
createNode objectSet -n "mgear_curveCns508Set";
	rename -uid "93D4D93B-4C9D-C182-0B23-4A98F7FC2186";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns508GroupId";
	rename -uid "6C8F40E9-4637-6067-416E-BD97180DA3C9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns508GroupParts";
	rename -uid "D44D4793-4596-3D61-3BA6-F988CB8A1C7B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet656";
	rename -uid "59F7A249-4056-097E-5C33-E28088EDEBBA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8881";
	rename -uid "9AF2DD28-4706-FC67-C881-C3BAF1E7EFB7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1312";
	rename -uid "01B804F1-4475-C9C8-8379-408D5DAD44C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile1";
	rename -uid "667CBAEC-491C-536E-30A5-439DCBD52880";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile1";
	rename -uid "8999C70F-4FF2-0B42-01FA-8D9556FAA9AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns509";
	rename -uid "A0F208DA-4261-B4A1-F911-168E01A31B8B";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak657";
	rename -uid "9A6AACC4-4BC1-70BB-82CA-62B5A785D25D";
createNode objectSet -n "mgear_curveCns509Set";
	rename -uid "D2F8A0F8-437B-5DAA-E81D-BC8B89B62E27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns509GroupId";
	rename -uid "703628DB-4C71-0398-DFBD-5C8202D60DAD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns509GroupParts";
	rename -uid "8DFCD29E-4DE4-BE30-2125-6582D0C288D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet657";
	rename -uid "D6939386-483C-86D3-8245-5BBF7883CBAF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8883";
	rename -uid "121905DE-44A6-64D9-6CC6-A8B94021DE68";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1314";
	rename -uid "966DD0A3-4B3D-323C-FEB6-3580E636DE26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns510";
	rename -uid "954D8A33-4F73-F8E7-710E-08B7FE8CFACA";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak658";
	rename -uid "8C4414ED-447E-6F05-CA2A-3D9C0C34BDF3";
createNode objectSet -n "mgear_curveCns510Set";
	rename -uid "E83599FB-44ED-C0CC-0860-46BED94F541E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns510GroupId";
	rename -uid "18E1A14B-4C64-C35D-63C0-098ED4FA5504";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns510GroupParts";
	rename -uid "C873EB30-48AB-7AC0-3061-D6B1ADAB7B82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet658";
	rename -uid "323824B8-41DE-A909-4E56-698F8C70746A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8885";
	rename -uid "D2C85E57-4568-471B-A47D-F88452981E69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1316";
	rename -uid "9A53E61B-49B9-7186-A841-7B922452666E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns511";
	rename -uid "FB21FC3F-455B-B267-CBC7-A29A41060E5B";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak659";
	rename -uid "2EAEE93C-481A-A319-6464-AEAFA3241B60";
createNode objectSet -n "mgear_curveCns511Set";
	rename -uid "4A559C29-4EBB-8971-E312-24ACF57CC2FB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns511GroupId";
	rename -uid "785F5C2E-43B5-2F59-1426-EC876D1768B8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns511GroupParts";
	rename -uid "71A82B9E-4350-97B1-03BE-4CA9DAFCE72A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet659";
	rename -uid "1B5DE459-40CF-C1F8-859C-8F98B0A62CD9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8887";
	rename -uid "4665A4BE-4DA7-4F5E-F32B-9F85844444A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1318";
	rename -uid "322B39D0-4BE8-BED0-189B-E08C297ACB93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile";
	rename -uid "871C6302-4F12-46C6-0B1F-67A9A6DF2713";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile";
	rename -uid "12FDB7E7-4D61-3025-73B3-49AD993D9D15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns512";
	rename -uid "7AFBB28F-403A-68F2-3703-0EB3E4CC8EFE";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak660";
	rename -uid "A6FFBC8D-4658-9AD3-FD7F-1088E58DD4E0";
createNode objectSet -n "mgear_curveCns512Set";
	rename -uid "C8D07047-40EF-8472-81F1-558454FECB41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns512GroupId";
	rename -uid "364A4F21-447A-4186-B1DB-4C8026838BE0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns512GroupParts";
	rename -uid "D885A642-4CB2-B173-701D-12A85D8D9F54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet660";
	rename -uid "2BD78F68-4CD6-23F4-5850-C39CB48FA140";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8889";
	rename -uid "9567F485-4C2F-2B5D-EF93-48808366134D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1320";
	rename -uid "9F515F1B-4788-9DA5-CA0E-4AA235FDF879";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns513";
	rename -uid "53D9A1B9-46F5-607F-0F12-F7B2AB4DC47C";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak661";
	rename -uid "F7CC959D-401F-99D9-1D1F-528AD9B00C85";
createNode objectSet -n "mgear_curveCns513Set";
	rename -uid "4245F4DE-4FB6-73CD-97A9-FC9526131B8C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns513GroupId";
	rename -uid "B1C9E333-41A0-6807-DD80-43B81A2A2CE1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns513GroupParts";
	rename -uid "6D903D89-470D-5491-AD85-558072BE9800";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet661";
	rename -uid "795535CC-4706-CD90-35BF-91A532C527C7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8891";
	rename -uid "EBD8F8E0-46B7-25BA-FC1A-89851F1A3A62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1322";
	rename -uid "014C67B1-4081-0900-CFFD-079DE921E130";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns514";
	rename -uid "4B208BDD-4B21-7A50-4BF0-11A350BE4305";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak662";
	rename -uid "465FE004-48C1-0167-D405-3A8BB0D74DEC";
createNode objectSet -n "mgear_curveCns514Set";
	rename -uid "E973064E-4B9D-4214-50A4-3CA93B82EEFB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns514GroupId";
	rename -uid "77A356D3-49A9-1554-DBDB-168F4BEB1631";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns514GroupParts";
	rename -uid "9BF07396-4F52-AAD7-014B-DCA94D65BD30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet662";
	rename -uid "710E544C-4FFC-D4AE-9C89-1098D0194514";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8893";
	rename -uid "33010F6A-43A0-9543-79B0-16A7078687D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1324";
	rename -uid "0FE57757-41E0-5172-62A3-FD89937A50FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "spine_C0_root_st_profile1.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile1.o" "spine_C0_root.sq_profile";
connectAttr "arm_L0_root_st_profile1.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile1.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint11.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint11.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint11.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint11.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint11.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint11.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint11.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint11.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint11.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint11.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint11.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint11.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint11.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint11.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint11.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint11.w0" "finger_L3_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint11.wum";
connectAttr "unitConversion168.o" "finger_L3_blade_aimConstraint11.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint11.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint11.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint11.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint11.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint11.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint11.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint11.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint11.w0" "finger_L3_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns487.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak635.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns487GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns487Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8839.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet635.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint11.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint11.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint11.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint11.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint11.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint11.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint11.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint11.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint11.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint11.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint11.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint11.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint11.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint11.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint11.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint11.w0" "finger_L2_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint11.wum";
connectAttr "unitConversion169.o" "finger_L2_blade_aimConstraint11.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint11.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint11.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint11.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint11.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint11.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint11.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint11.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint11.w0" "finger_L2_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns488.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak636.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns488GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns488Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8841.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet636.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint11.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint11.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint11.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint11.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint11.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint11.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint11.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint11.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint11.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint11.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint11.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint11.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint11.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint11.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint11.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint11.w0" "finger_L1_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint11.wum";
connectAttr "unitConversion170.o" "finger_L1_blade_aimConstraint11.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint11.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint11.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint11.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint11.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint11.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint11.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint11.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint11.w0" "finger_L1_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns489.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak637.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns489GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns489Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8843.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet637.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint11.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint11.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint11.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint11.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint11.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint11.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint11.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint11.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint11.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint11.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint11.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint11.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint11.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint11.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint11.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint11.w0" "meta_L0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint11.wum";
connectAttr "unitConversion167.o" "meta_L0_blade_aimConstraint11.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint11.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint11.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint11.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint11.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint11.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint11.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint11.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint11.w0" "meta_L0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns486.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak634.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns486GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns486Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8837.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet634.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint11.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint11.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint11.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint11.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint11.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint11.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint11.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint11.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint11.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint11.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint11.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint11.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint11.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint11.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint11.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint11.w0" "finger_L0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint11.wum";
connectAttr "unitConversion171.o" "finger_L0_blade_aimConstraint11.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint11.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint11.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint11.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint11.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint11.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint11.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint11.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint11.w0" "finger_L0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns490.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak638.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns490GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns490Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8845.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet638.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint11.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint11.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint11.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint11.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint11.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint11.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint11.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint11.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint11.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint11.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint11.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint11.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint11.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint11.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint11.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint11.w0" "thumb_L0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint11.wum";
connectAttr "unitConversion172.o" "thumb_L0_blade_aimConstraint11.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint11.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint11.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint11.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint11.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint11.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint11.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint11.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint11.w0" "thumb_L0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns491.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak639.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns491GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns491Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8847.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet639.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns485.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak633.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns485GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns485Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8835.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet633.mwc" "arm_L0_crvShape.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint11.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint11.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint11.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint11.crx" "shoulder_L0_blade.rx" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint11.cry" "shoulder_L0_blade.ry" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint11.crz" "shoulder_L0_blade.rz" -l on
		;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint11.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint11.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint11.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint11.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint11.cro";
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint11.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint11.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint11.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint11.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint11.w0" "shoulder_L0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint11.wum";
connectAttr "unitConversion166.o" "shoulder_L0_blade_aimConstraint11.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint11.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint11.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint11.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint11.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint11.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint11.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint11.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint11.w0" "shoulder_L0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns484.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak632.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns484GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns484Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8833.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet632.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns495.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak643.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns495GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns495Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8855.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet643.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns496.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak644.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns496GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns496Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8857.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet644.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint11.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint11.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint11.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint11.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint11.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint11.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint11.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint11.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint11.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint11.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint11.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint11.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint11.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint11.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint11.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint11.w0" "tongue_C0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint11.wum";
connectAttr "unitConversion174.o" "tongue_C0_blade_aimConstraint11.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint11.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint11.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint11.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint11.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint11.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint11.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint11.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint11.w0" "tongue_C0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns498.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak646.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns498GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns498Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8861.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet646.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns494.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak642.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns494GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns494Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8853.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet642.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns497.og[0]" "mouth_C0_crv11Shape.cr";
connectAttr "tweak645.pl[0].cp[0]" "mouth_C0_crv11Shape.twl";
connectAttr "mgear_curveCns497GroupId.id" "mouth_C0_crv11Shape.iog.og[0].gid";
connectAttr "mgear_curveCns497Set.mwc" "mouth_C0_crv11Shape.iog.og[0].gco";
connectAttr "groupId8859.id" "mouth_C0_crv11Shape.iog.og[1].gid";
connectAttr "tweakSet645.mwc" "mouth_C0_crv11Shape.iog.og[1].gco";
connectAttr "mgear_curveCns499.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak647.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns499GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns499Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8863.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet647.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns500.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak648.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns500GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns500Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8865.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet648.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns493.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak641.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns493GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns493Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8851.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet641.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint11.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint11.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint11.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint11.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint11.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint11.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint11.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint11.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint11.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint11.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint11.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint11.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint11.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint11.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint11.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint11.w0" "neck_C0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint11.wum";
connectAttr "unitConversion173.o" "neck_C0_blade_aimConstraint11.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint11.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint11.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint11.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint11.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint11.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint11.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint11.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint11.w0" "neck_C0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns492.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak640.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns492GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns492Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8849.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet640.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "arm_R0_root_st_profile.o" "arm_R0_root.st_profile";
connectAttr "arm_R0_root_sq_profile.o" "arm_R0_root.sq_profile";
connectAttr "finger_R3_blade_pointConstraint3.ctx" "finger_R3_blade.tx" -l on;
connectAttr "finger_R3_blade_pointConstraint3.cty" "finger_R3_blade.ty" -l on;
connectAttr "finger_R3_blade_pointConstraint3.ctz" "finger_R3_blade.tz" -l on;
connectAttr "finger_R3_blade_aimConstraint3.crx" "finger_R3_blade.rx" -l on;
connectAttr "finger_R3_blade_aimConstraint3.cry" "finger_R3_blade.ry" -l on;
connectAttr "finger_R3_blade_aimConstraint3.crz" "finger_R3_blade.rz" -l on;
connectAttr "finger_R3_blade.pim" "finger_R3_blade_aimConstraint3.cpim";
connectAttr "finger_R3_blade.t" "finger_R3_blade_aimConstraint3.ct";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_aimConstraint3.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_aimConstraint3.crt";
connectAttr "finger_R3_blade.ro" "finger_R3_blade_aimConstraint3.cro";
connectAttr "finger_R3_0_loc.t" "finger_R3_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_R3_0_loc.rp" "finger_R3_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_R3_0_loc.rpt" "finger_R3_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_R3_0_loc.pm" "finger_R3_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_R3_blade_aimConstraint3.w0" "finger_R3_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_R3_root.wm" "finger_R3_blade_aimConstraint3.wum";
connectAttr "unitConversion177.o" "finger_R3_blade_aimConstraint3.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint3.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint3.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint3.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint3.w0" "finger_R3_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns504.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak652.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns504GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns504Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8873.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet652.mwc" "finger_R3_crvShape.iog.og[1].gco";
connectAttr "finger_R2_blade_pointConstraint3.ctx" "finger_R2_blade.tx" -l on;
connectAttr "finger_R2_blade_pointConstraint3.cty" "finger_R2_blade.ty" -l on;
connectAttr "finger_R2_blade_pointConstraint3.ctz" "finger_R2_blade.tz" -l on;
connectAttr "finger_R2_blade_aimConstraint3.crx" "finger_R2_blade.rx" -l on;
connectAttr "finger_R2_blade_aimConstraint3.cry" "finger_R2_blade.ry" -l on;
connectAttr "finger_R2_blade_aimConstraint3.crz" "finger_R2_blade.rz" -l on;
connectAttr "finger_R2_blade.pim" "finger_R2_blade_aimConstraint3.cpim";
connectAttr "finger_R2_blade.t" "finger_R2_blade_aimConstraint3.ct";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_aimConstraint3.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_aimConstraint3.crt";
connectAttr "finger_R2_blade.ro" "finger_R2_blade_aimConstraint3.cro";
connectAttr "finger_R2_0_loc.t" "finger_R2_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_R2_0_loc.rp" "finger_R2_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_R2_0_loc.rpt" "finger_R2_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_R2_0_loc.pm" "finger_R2_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_R2_blade_aimConstraint3.w0" "finger_R2_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_R2_root.wm" "finger_R2_blade_aimConstraint3.wum";
connectAttr "unitConversion178.o" "finger_R2_blade_aimConstraint3.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint3.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint3.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint3.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint3.w0" "finger_R2_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns505.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak653.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns505GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns505Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8875.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet653.mwc" "finger_R2_crvShape.iog.og[1].gco";
connectAttr "finger_R1_blade_pointConstraint3.ctx" "finger_R1_blade.tx" -l on;
connectAttr "finger_R1_blade_pointConstraint3.cty" "finger_R1_blade.ty" -l on;
connectAttr "finger_R1_blade_pointConstraint3.ctz" "finger_R1_blade.tz" -l on;
connectAttr "finger_R1_blade_aimConstraint3.crx" "finger_R1_blade.rx" -l on;
connectAttr "finger_R1_blade_aimConstraint3.cry" "finger_R1_blade.ry" -l on;
connectAttr "finger_R1_blade_aimConstraint3.crz" "finger_R1_blade.rz" -l on;
connectAttr "finger_R1_blade.pim" "finger_R1_blade_aimConstraint3.cpim";
connectAttr "finger_R1_blade.t" "finger_R1_blade_aimConstraint3.ct";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_aimConstraint3.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_aimConstraint3.crt";
connectAttr "finger_R1_blade.ro" "finger_R1_blade_aimConstraint3.cro";
connectAttr "finger_R1_0_loc.t" "finger_R1_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_R1_0_loc.rp" "finger_R1_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_R1_0_loc.rpt" "finger_R1_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_R1_0_loc.pm" "finger_R1_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_R1_blade_aimConstraint3.w0" "finger_R1_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_R1_root.wm" "finger_R1_blade_aimConstraint3.wum";
connectAttr "unitConversion179.o" "finger_R1_blade_aimConstraint3.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint3.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint3.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint3.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint3.w0" "finger_R1_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns506.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak654.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns506GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns506Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8877.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet654.mwc" "finger_R1_crvShape.iog.og[1].gco";
connectAttr "meta_R0_blade_pointConstraint3.ctx" "meta_R0_blade.tx" -l on;
connectAttr "meta_R0_blade_pointConstraint3.cty" "meta_R0_blade.ty" -l on;
connectAttr "meta_R0_blade_pointConstraint3.ctz" "meta_R0_blade.tz" -l on;
connectAttr "meta_R0_blade_aimConstraint3.crx" "meta_R0_blade.rx" -l on;
connectAttr "meta_R0_blade_aimConstraint3.cry" "meta_R0_blade.ry" -l on;
connectAttr "meta_R0_blade_aimConstraint3.crz" "meta_R0_blade.rz" -l on;
connectAttr "meta_R0_blade.pim" "meta_R0_blade_aimConstraint3.cpim";
connectAttr "meta_R0_blade.t" "meta_R0_blade_aimConstraint3.ct";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_aimConstraint3.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_aimConstraint3.crt";
connectAttr "meta_R0_blade.ro" "meta_R0_blade_aimConstraint3.cro";
connectAttr "meta_R0_0_loc.t" "meta_R0_blade_aimConstraint3.tg[0].tt";
connectAttr "meta_R0_0_loc.rp" "meta_R0_blade_aimConstraint3.tg[0].trp";
connectAttr "meta_R0_0_loc.rpt" "meta_R0_blade_aimConstraint3.tg[0].trt";
connectAttr "meta_R0_0_loc.pm" "meta_R0_blade_aimConstraint3.tg[0].tpm";
connectAttr "meta_R0_blade_aimConstraint3.w0" "meta_R0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "meta_R0_root.wm" "meta_R0_blade_aimConstraint3.wum";
connectAttr "unitConversion176.o" "meta_R0_blade_aimConstraint3.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint3.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint3.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint3.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint3.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint3.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint3.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint3.w0" "meta_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns503.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak651.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns503GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns503Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8871.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet651.mwc" "meta_R0_crvShape.iog.og[1].gco";
connectAttr "finger_R0_blade_pointConstraint3.ctx" "finger_R0_blade.tx" -l on;
connectAttr "finger_R0_blade_pointConstraint3.cty" "finger_R0_blade.ty" -l on;
connectAttr "finger_R0_blade_pointConstraint3.ctz" "finger_R0_blade.tz" -l on;
connectAttr "finger_R0_blade_aimConstraint3.crx" "finger_R0_blade.rx" -l on;
connectAttr "finger_R0_blade_aimConstraint3.cry" "finger_R0_blade.ry" -l on;
connectAttr "finger_R0_blade_aimConstraint3.crz" "finger_R0_blade.rz" -l on;
connectAttr "finger_R0_blade.pim" "finger_R0_blade_aimConstraint3.cpim";
connectAttr "finger_R0_blade.t" "finger_R0_blade_aimConstraint3.ct";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_aimConstraint3.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_aimConstraint3.crt";
connectAttr "finger_R0_blade.ro" "finger_R0_blade_aimConstraint3.cro";
connectAttr "finger_R0_0_loc.t" "finger_R0_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_R0_0_loc.rp" "finger_R0_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_R0_0_loc.rpt" "finger_R0_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_R0_0_loc.pm" "finger_R0_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_R0_blade_aimConstraint3.w0" "finger_R0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_R0_root.wm" "finger_R0_blade_aimConstraint3.wum";
connectAttr "unitConversion180.o" "finger_R0_blade_aimConstraint3.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint3.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint3.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint3.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint3.w0" "finger_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns507.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak655.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns507GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns507Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8879.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet655.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "thumb_R0_blade_pointConstraint3.ctx" "thumb_R0_blade.tx" -l on;
connectAttr "thumb_R0_blade_pointConstraint3.cty" "thumb_R0_blade.ty" -l on;
connectAttr "thumb_R0_blade_pointConstraint3.ctz" "thumb_R0_blade.tz" -l on;
connectAttr "thumb_R0_blade_aimConstraint3.crx" "thumb_R0_blade.rx" -l on;
connectAttr "thumb_R0_blade_aimConstraint3.cry" "thumb_R0_blade.ry" -l on;
connectAttr "thumb_R0_blade_aimConstraint3.crz" "thumb_R0_blade.rz" -l on;
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_aimConstraint3.cpim";
connectAttr "thumb_R0_blade.t" "thumb_R0_blade_aimConstraint3.ct";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_aimConstraint3.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_aimConstraint3.crt";
connectAttr "thumb_R0_blade.ro" "thumb_R0_blade_aimConstraint3.cro";
connectAttr "thumb_R0_0_loc.t" "thumb_R0_blade_aimConstraint3.tg[0].tt";
connectAttr "thumb_R0_0_loc.rp" "thumb_R0_blade_aimConstraint3.tg[0].trp";
connectAttr "thumb_R0_0_loc.rpt" "thumb_R0_blade_aimConstraint3.tg[0].trt";
connectAttr "thumb_R0_0_loc.pm" "thumb_R0_blade_aimConstraint3.tg[0].tpm";
connectAttr "thumb_R0_blade_aimConstraint3.w0" "thumb_R0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "thumb_R0_root.wm" "thumb_R0_blade_aimConstraint3.wum";
connectAttr "unitConversion181.o" "thumb_R0_blade_aimConstraint3.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint3.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint3.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint3.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint3.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint3.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint3.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint3.w0" "thumb_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns508.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak656.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns508GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns508Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8881.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet656.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns502.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak650.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns502GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns502Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8869.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet650.mwc" "arm_R0_crvShape.iog.og[1].gco";
connectAttr "shoulder_R0_blade_pointConstraint3.ctx" "shoulder_R0_blade.tx" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint3.cty" "shoulder_R0_blade.ty" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint3.ctz" "shoulder_R0_blade.tz" -l on
		;
connectAttr "shoulder_R0_blade_aimConstraint3.crx" "shoulder_R0_blade.rx" -l on;
connectAttr "shoulder_R0_blade_aimConstraint3.cry" "shoulder_R0_blade.ry" -l on;
connectAttr "shoulder_R0_blade_aimConstraint3.crz" "shoulder_R0_blade.rz" -l on;
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_aimConstraint3.cpim";
connectAttr "shoulder_R0_blade.t" "shoulder_R0_blade_aimConstraint3.ct";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_aimConstraint3.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_aimConstraint3.crt";
connectAttr "shoulder_R0_blade.ro" "shoulder_R0_blade_aimConstraint3.cro";
connectAttr "shoulder_R0_tip.t" "shoulder_R0_blade_aimConstraint3.tg[0].tt";
connectAttr "shoulder_R0_tip.rp" "shoulder_R0_blade_aimConstraint3.tg[0].trp";
connectAttr "shoulder_R0_tip.rpt" "shoulder_R0_blade_aimConstraint3.tg[0].trt";
connectAttr "shoulder_R0_tip.pm" "shoulder_R0_blade_aimConstraint3.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint3.w0" "shoulder_R0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint3.wum";
connectAttr "unitConversion175.o" "shoulder_R0_blade_aimConstraint3.ox";
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_pointConstraint3.cpim";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_pointConstraint3.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_pointConstraint3.crt";
connectAttr "shoulder_R0_root.t" "shoulder_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "shoulder_R0_root.rp" "shoulder_R0_blade_pointConstraint3.tg[0].trp"
		;
connectAttr "shoulder_R0_root.rpt" "shoulder_R0_blade_pointConstraint3.tg[0].trt"
		;
connectAttr "shoulder_R0_root.pm" "shoulder_R0_blade_pointConstraint3.tg[0].tpm"
		;
connectAttr "shoulder_R0_blade_pointConstraint3.w0" "shoulder_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns501.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak649.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns501GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns501Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8867.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet649.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint11.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint11.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint11.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint11.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint11.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint11.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint11.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint11.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint11.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint11.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint11.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint11.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint11.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint11.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint11.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint11.w0" "spine_C0_blade_aimConstraint11.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint11.wum";
connectAttr "unitConversion165.o" "spine_C0_blade_aimConstraint11.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint11.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint11.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint11.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint11.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint11.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint11.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint11.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint11.w0" "spine_C0_blade_pointConstraint11.tg[0].tw"
		;
connectAttr "mgear_curveCns483.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak631.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns483GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns483Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8831.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet631.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile1.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile1.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns510.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak658.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns510GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns510Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8885.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet658.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns511.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak659.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns511GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns511Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8887.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet659.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns509.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak657.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns509GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns509Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8883.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet657.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns513.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak661.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns513GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns513Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8891.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet661.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns514.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak662.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns514GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns514Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8893.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet662.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns512.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak660.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns512GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns512Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8889.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet660.mwc" "leg_R0_crvShape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion165.i";
connectAttr "mgear_curveCns483GroupParts.og" "mgear_curveCns483.ip[0].ig";
connectAttr "mgear_curveCns483GroupId.id" "mgear_curveCns483.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns483.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns483.inputs[1]";
connectAttr "groupParts1262.og" "tweak631.ip[0].ig";
connectAttr "groupId8831.id" "tweak631.ip[0].gi";
connectAttr "mgear_curveCns483GroupId.msg" "mgear_curveCns483Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns483Set.dsm" -na;
connectAttr "mgear_curveCns483.msg" "mgear_curveCns483Set.ub[0]";
connectAttr "tweak631.og[0]" "mgear_curveCns483GroupParts.ig";
connectAttr "mgear_curveCns483GroupId.id" "mgear_curveCns483GroupParts.gi";
connectAttr "groupId8831.msg" "tweakSet631.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet631.dsm" -na;
connectAttr "tweak631.msg" "tweakSet631.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts1262.ig";
connectAttr "groupId8831.id" "groupParts1262.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion166.i";
connectAttr "mgear_curveCns484GroupParts.og" "mgear_curveCns484.ip[0].ig";
connectAttr "mgear_curveCns484GroupId.id" "mgear_curveCns484.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns484.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns484.inputs[1]";
connectAttr "groupParts1264.og" "tweak632.ip[0].ig";
connectAttr "groupId8833.id" "tweak632.ip[0].gi";
connectAttr "mgear_curveCns484GroupId.msg" "mgear_curveCns484Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns484Set.dsm" -na;
connectAttr "mgear_curveCns484.msg" "mgear_curveCns484Set.ub[0]";
connectAttr "tweak632.og[0]" "mgear_curveCns484GroupParts.ig";
connectAttr "mgear_curveCns484GroupId.id" "mgear_curveCns484GroupParts.gi";
connectAttr "groupId8833.msg" "tweakSet632.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet632.dsm" -na;
connectAttr "tweak632.msg" "tweakSet632.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts1264.ig";
connectAttr "groupId8833.id" "groupParts1264.gi";
connectAttr "mgear_curveCns485GroupParts.og" "mgear_curveCns485.ip[0].ig";
connectAttr "mgear_curveCns485GroupId.id" "mgear_curveCns485.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns485.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns485.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns485.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns485.inputs[3]";
connectAttr "groupParts1266.og" "tweak633.ip[0].ig";
connectAttr "groupId8835.id" "tweak633.ip[0].gi";
connectAttr "mgear_curveCns485GroupId.msg" "mgear_curveCns485Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns485Set.dsm" -na;
connectAttr "mgear_curveCns485.msg" "mgear_curveCns485Set.ub[0]";
connectAttr "tweak633.og[0]" "mgear_curveCns485GroupParts.ig";
connectAttr "mgear_curveCns485GroupId.id" "mgear_curveCns485GroupParts.gi";
connectAttr "groupId8835.msg" "tweakSet633.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet633.dsm" -na;
connectAttr "tweak633.msg" "tweakSet633.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts1266.ig";
connectAttr "groupId8835.id" "groupParts1266.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion167.i";
connectAttr "mgear_curveCns486GroupParts.og" "mgear_curveCns486.ip[0].ig";
connectAttr "mgear_curveCns486GroupId.id" "mgear_curveCns486.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns486.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns486.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns486.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns486.inputs[3]";
connectAttr "groupParts1268.og" "tweak634.ip[0].ig";
connectAttr "groupId8837.id" "tweak634.ip[0].gi";
connectAttr "mgear_curveCns486GroupId.msg" "mgear_curveCns486Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns486Set.dsm" -na;
connectAttr "mgear_curveCns486.msg" "mgear_curveCns486Set.ub[0]";
connectAttr "tweak634.og[0]" "mgear_curveCns486GroupParts.ig";
connectAttr "mgear_curveCns486GroupId.id" "mgear_curveCns486GroupParts.gi";
connectAttr "groupId8837.msg" "tweakSet634.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet634.dsm" -na;
connectAttr "tweak634.msg" "tweakSet634.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts1268.ig";
connectAttr "groupId8837.id" "groupParts1268.gi";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion168.i";
connectAttr "mgear_curveCns487GroupParts.og" "mgear_curveCns487.ip[0].ig";
connectAttr "mgear_curveCns487GroupId.id" "mgear_curveCns487.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns487.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns487.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns487.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns487.inputs[3]";
connectAttr "groupParts1270.og" "tweak635.ip[0].ig";
connectAttr "groupId8839.id" "tweak635.ip[0].gi";
connectAttr "mgear_curveCns487GroupId.msg" "mgear_curveCns487Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns487Set.dsm" -na;
connectAttr "mgear_curveCns487.msg" "mgear_curveCns487Set.ub[0]";
connectAttr "tweak635.og[0]" "mgear_curveCns487GroupParts.ig";
connectAttr "mgear_curveCns487GroupId.id" "mgear_curveCns487GroupParts.gi";
connectAttr "groupId8839.msg" "tweakSet635.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet635.dsm" -na;
connectAttr "tweak635.msg" "tweakSet635.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts1270.ig";
connectAttr "groupId8839.id" "groupParts1270.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion169.i";
connectAttr "mgear_curveCns488GroupParts.og" "mgear_curveCns488.ip[0].ig";
connectAttr "mgear_curveCns488GroupId.id" "mgear_curveCns488.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns488.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns488.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns488.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns488.inputs[3]";
connectAttr "groupParts1272.og" "tweak636.ip[0].ig";
connectAttr "groupId8841.id" "tweak636.ip[0].gi";
connectAttr "mgear_curveCns488GroupId.msg" "mgear_curveCns488Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns488Set.dsm" -na;
connectAttr "mgear_curveCns488.msg" "mgear_curveCns488Set.ub[0]";
connectAttr "tweak636.og[0]" "mgear_curveCns488GroupParts.ig";
connectAttr "mgear_curveCns488GroupId.id" "mgear_curveCns488GroupParts.gi";
connectAttr "groupId8841.msg" "tweakSet636.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet636.dsm" -na;
connectAttr "tweak636.msg" "tweakSet636.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts1272.ig";
connectAttr "groupId8841.id" "groupParts1272.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion170.i";
connectAttr "mgear_curveCns489GroupParts.og" "mgear_curveCns489.ip[0].ig";
connectAttr "mgear_curveCns489GroupId.id" "mgear_curveCns489.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns489.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns489.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns489.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns489.inputs[3]";
connectAttr "groupParts1274.og" "tweak637.ip[0].ig";
connectAttr "groupId8843.id" "tweak637.ip[0].gi";
connectAttr "mgear_curveCns489GroupId.msg" "mgear_curveCns489Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns489Set.dsm" -na;
connectAttr "mgear_curveCns489.msg" "mgear_curveCns489Set.ub[0]";
connectAttr "tweak637.og[0]" "mgear_curveCns489GroupParts.ig";
connectAttr "mgear_curveCns489GroupId.id" "mgear_curveCns489GroupParts.gi";
connectAttr "groupId8843.msg" "tweakSet637.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet637.dsm" -na;
connectAttr "tweak637.msg" "tweakSet637.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts1274.ig";
connectAttr "groupId8843.id" "groupParts1274.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion171.i";
connectAttr "mgear_curveCns490GroupParts.og" "mgear_curveCns490.ip[0].ig";
connectAttr "mgear_curveCns490GroupId.id" "mgear_curveCns490.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns490.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns490.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns490.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns490.inputs[3]";
connectAttr "groupParts1276.og" "tweak638.ip[0].ig";
connectAttr "groupId8845.id" "tweak638.ip[0].gi";
connectAttr "mgear_curveCns490GroupId.msg" "mgear_curveCns490Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns490Set.dsm" -na;
connectAttr "mgear_curveCns490.msg" "mgear_curveCns490Set.ub[0]";
connectAttr "tweak638.og[0]" "mgear_curveCns490GroupParts.ig";
connectAttr "mgear_curveCns490GroupId.id" "mgear_curveCns490GroupParts.gi";
connectAttr "groupId8845.msg" "tweakSet638.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet638.dsm" -na;
connectAttr "tweak638.msg" "tweakSet638.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts1276.ig";
connectAttr "groupId8845.id" "groupParts1276.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion172.i";
connectAttr "mgear_curveCns491GroupParts.og" "mgear_curveCns491.ip[0].ig";
connectAttr "mgear_curveCns491GroupId.id" "mgear_curveCns491.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns491.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns491.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns491.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns491.inputs[3]";
connectAttr "groupParts1278.og" "tweak639.ip[0].ig";
connectAttr "groupId8847.id" "tweak639.ip[0].gi";
connectAttr "mgear_curveCns491GroupId.msg" "mgear_curveCns491Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns491Set.dsm" -na;
connectAttr "mgear_curveCns491.msg" "mgear_curveCns491Set.ub[0]";
connectAttr "tweak639.og[0]" "mgear_curveCns491GroupParts.ig";
connectAttr "mgear_curveCns491GroupId.id" "mgear_curveCns491GroupParts.gi";
connectAttr "groupId8847.msg" "tweakSet639.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet639.dsm" -na;
connectAttr "tweak639.msg" "tweakSet639.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts1278.ig";
connectAttr "groupId8847.id" "groupParts1278.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion173.i";
connectAttr "mgear_curveCns492GroupParts.og" "mgear_curveCns492.ip[0].ig";
connectAttr "mgear_curveCns492GroupId.id" "mgear_curveCns492.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns492.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns492.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns492.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns492.inputs[3]";
connectAttr "groupParts1280.og" "tweak640.ip[0].ig";
connectAttr "groupId8849.id" "tweak640.ip[0].gi";
connectAttr "mgear_curveCns492GroupId.msg" "mgear_curveCns492Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns492Set.dsm" -na;
connectAttr "mgear_curveCns492.msg" "mgear_curveCns492Set.ub[0]";
connectAttr "tweak640.og[0]" "mgear_curveCns492GroupParts.ig";
connectAttr "mgear_curveCns492GroupId.id" "mgear_curveCns492GroupParts.gi";
connectAttr "groupId8849.msg" "tweakSet640.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet640.dsm" -na;
connectAttr "tweak640.msg" "tweakSet640.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts1280.ig";
connectAttr "groupId8849.id" "groupParts1280.gi";
connectAttr "mgear_curveCns493GroupParts.og" "mgear_curveCns493.ip[0].ig";
connectAttr "mgear_curveCns493GroupId.id" "mgear_curveCns493.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns493.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns493.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns493.inputs[2]";
connectAttr "groupParts1282.og" "tweak641.ip[0].ig";
connectAttr "groupId8851.id" "tweak641.ip[0].gi";
connectAttr "mgear_curveCns493GroupId.msg" "mgear_curveCns493Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns493Set.dsm" -na;
connectAttr "mgear_curveCns493.msg" "mgear_curveCns493Set.ub[0]";
connectAttr "tweak641.og[0]" "mgear_curveCns493GroupParts.ig";
connectAttr "mgear_curveCns493GroupId.id" "mgear_curveCns493GroupParts.gi";
connectAttr "groupId8851.msg" "tweakSet641.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet641.dsm" -na;
connectAttr "tweak641.msg" "tweakSet641.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts1282.ig";
connectAttr "groupId8851.id" "groupParts1282.gi";
connectAttr "mgear_curveCns494GroupParts.og" "mgear_curveCns494.ip[0].ig";
connectAttr "mgear_curveCns494GroupId.id" "mgear_curveCns494.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns494.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns494.inputs[1]";
connectAttr "groupParts1284.og" "tweak642.ip[0].ig";
connectAttr "groupId8853.id" "tweak642.ip[0].gi";
connectAttr "mgear_curveCns494GroupId.msg" "mgear_curveCns494Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns494Set.dsm"
		 -na;
connectAttr "mgear_curveCns494.msg" "mgear_curveCns494Set.ub[0]";
connectAttr "tweak642.og[0]" "mgear_curveCns494GroupParts.ig";
connectAttr "mgear_curveCns494GroupId.id" "mgear_curveCns494GroupParts.gi";
connectAttr "groupId8853.msg" "tweakSet642.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet642.dsm"
		 -na;
connectAttr "tweak642.msg" "tweakSet642.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1284.ig"
		;
connectAttr "groupId8853.id" "groupParts1284.gi";
connectAttr "mgear_curveCns495GroupParts.og" "mgear_curveCns495.ip[0].ig";
connectAttr "mgear_curveCns495GroupId.id" "mgear_curveCns495.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns495.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns495.inputs[1]";
connectAttr "groupParts1286.og" "tweak643.ip[0].ig";
connectAttr "groupId8855.id" "tweak643.ip[0].gi";
connectAttr "mgear_curveCns495GroupId.msg" "mgear_curveCns495Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns495Set.dsm"
		 -na;
connectAttr "mgear_curveCns495.msg" "mgear_curveCns495Set.ub[0]";
connectAttr "tweak643.og[0]" "mgear_curveCns495GroupParts.ig";
connectAttr "mgear_curveCns495GroupId.id" "mgear_curveCns495GroupParts.gi";
connectAttr "groupId8855.msg" "tweakSet643.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet643.dsm"
		 -na;
connectAttr "tweak643.msg" "tweakSet643.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1286.ig"
		;
connectAttr "groupId8855.id" "groupParts1286.gi";
connectAttr "mgear_curveCns496GroupParts.og" "mgear_curveCns496.ip[0].ig";
connectAttr "mgear_curveCns496GroupId.id" "mgear_curveCns496.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns496.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns496.inputs[1]";
connectAttr "groupParts1288.og" "tweak644.ip[0].ig";
connectAttr "groupId8857.id" "tweak644.ip[0].gi";
connectAttr "mgear_curveCns496GroupId.msg" "mgear_curveCns496Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns496Set.dsm"
		 -na;
connectAttr "mgear_curveCns496.msg" "mgear_curveCns496Set.ub[0]";
connectAttr "tweak644.og[0]" "mgear_curveCns496GroupParts.ig";
connectAttr "mgear_curveCns496GroupId.id" "mgear_curveCns496GroupParts.gi";
connectAttr "groupId8857.msg" "tweakSet644.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet644.dsm"
		 -na;
connectAttr "tweak644.msg" "tweakSet644.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1288.ig"
		;
connectAttr "groupId8857.id" "groupParts1288.gi";
connectAttr "mgear_curveCns497GroupParts.og" "mgear_curveCns497.ip[0].ig";
connectAttr "mgear_curveCns497GroupId.id" "mgear_curveCns497.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns497.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns497.inputs[1]";
connectAttr "groupParts1290.og" "tweak645.ip[0].ig";
connectAttr "groupId8859.id" "tweak645.ip[0].gi";
connectAttr "mgear_curveCns497GroupId.msg" "mgear_curveCns497Set.gn" -na;
connectAttr "mouth_C0_crv11Shape.iog.og[0]" "mgear_curveCns497Set.dsm" -na;
connectAttr "mgear_curveCns497.msg" "mgear_curveCns497Set.ub[0]";
connectAttr "tweak645.og[0]" "mgear_curveCns497GroupParts.ig";
connectAttr "mgear_curveCns497GroupId.id" "mgear_curveCns497GroupParts.gi";
connectAttr "groupId8859.msg" "tweakSet645.gn" -na;
connectAttr "mouth_C0_crv11Shape.iog.og[1]" "tweakSet645.dsm" -na;
connectAttr "tweak645.msg" "tweakSet645.ub[0]";
connectAttr "mouth_C0_crv11ShapeOrig.ws" "groupParts1290.ig";
connectAttr "groupId8859.id" "groupParts1290.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion174.i";
connectAttr "mgear_curveCns498GroupParts.og" "mgear_curveCns498.ip[0].ig";
connectAttr "mgear_curveCns498GroupId.id" "mgear_curveCns498.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns498.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns498.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns498.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns498.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns498.inputs[4]";
connectAttr "groupParts1292.og" "tweak646.ip[0].ig";
connectAttr "groupId8861.id" "tweak646.ip[0].gi";
connectAttr "mgear_curveCns498GroupId.msg" "mgear_curveCns498Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns498Set.dsm" -na;
connectAttr "mgear_curveCns498.msg" "mgear_curveCns498Set.ub[0]";
connectAttr "tweak646.og[0]" "mgear_curveCns498GroupParts.ig";
connectAttr "mgear_curveCns498GroupId.id" "mgear_curveCns498GroupParts.gi";
connectAttr "groupId8861.msg" "tweakSet646.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet646.dsm" -na;
connectAttr "tweak646.msg" "tweakSet646.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts1292.ig";
connectAttr "groupId8861.id" "groupParts1292.gi";
connectAttr "mgear_curveCns499GroupParts.og" "mgear_curveCns499.ip[0].ig";
connectAttr "mgear_curveCns499GroupId.id" "mgear_curveCns499.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns499.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns499.inputs[1]";
connectAttr "groupParts1294.og" "tweak647.ip[0].ig";
connectAttr "groupId8863.id" "tweak647.ip[0].gi";
connectAttr "mgear_curveCns499GroupId.msg" "mgear_curveCns499Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns499Set.dsm" -na;
connectAttr "mgear_curveCns499.msg" "mgear_curveCns499Set.ub[0]";
connectAttr "tweak647.og[0]" "mgear_curveCns499GroupParts.ig";
connectAttr "mgear_curveCns499GroupId.id" "mgear_curveCns499GroupParts.gi";
connectAttr "groupId8863.msg" "tweakSet647.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet647.dsm" -na;
connectAttr "tweak647.msg" "tweakSet647.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts1294.ig";
connectAttr "groupId8863.id" "groupParts1294.gi";
connectAttr "mgear_curveCns500GroupParts.og" "mgear_curveCns500.ip[0].ig";
connectAttr "mgear_curveCns500GroupId.id" "mgear_curveCns500.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns500.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns500.inputs[1]";
connectAttr "groupParts1296.og" "tweak648.ip[0].ig";
connectAttr "groupId8865.id" "tweak648.ip[0].gi";
connectAttr "mgear_curveCns500GroupId.msg" "mgear_curveCns500Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns500Set.dsm" -na;
connectAttr "mgear_curveCns500.msg" "mgear_curveCns500Set.ub[0]";
connectAttr "tweak648.og[0]" "mgear_curveCns500GroupParts.ig";
connectAttr "mgear_curveCns500GroupId.id" "mgear_curveCns500GroupParts.gi";
connectAttr "groupId8865.msg" "tweakSet648.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet648.dsm" -na;
connectAttr "tweak648.msg" "tweakSet648.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts1296.ig";
connectAttr "groupId8865.id" "groupParts1296.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion175.i";
connectAttr "mgear_curveCns501GroupParts.og" "mgear_curveCns501.ip[0].ig";
connectAttr "mgear_curveCns501GroupId.id" "mgear_curveCns501.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns501.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns501.inputs[1]";
connectAttr "groupParts1298.og" "tweak649.ip[0].ig";
connectAttr "groupId8867.id" "tweak649.ip[0].gi";
connectAttr "mgear_curveCns501GroupId.msg" "mgear_curveCns501Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns501Set.dsm" -na;
connectAttr "mgear_curveCns501.msg" "mgear_curveCns501Set.ub[0]";
connectAttr "tweak649.og[0]" "mgear_curveCns501GroupParts.ig";
connectAttr "mgear_curveCns501GroupId.id" "mgear_curveCns501GroupParts.gi";
connectAttr "groupId8867.msg" "tweakSet649.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet649.dsm" -na;
connectAttr "tweak649.msg" "tweakSet649.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts1298.ig";
connectAttr "groupId8867.id" "groupParts1298.gi";
connectAttr "mgear_curveCns502GroupParts.og" "mgear_curveCns502.ip[0].ig";
connectAttr "mgear_curveCns502GroupId.id" "mgear_curveCns502.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns502.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns502.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns502.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns502.inputs[3]";
connectAttr "groupParts1300.og" "tweak650.ip[0].ig";
connectAttr "groupId8869.id" "tweak650.ip[0].gi";
connectAttr "mgear_curveCns502GroupId.msg" "mgear_curveCns502Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns502Set.dsm" -na;
connectAttr "mgear_curveCns502.msg" "mgear_curveCns502Set.ub[0]";
connectAttr "tweak650.og[0]" "mgear_curveCns502GroupParts.ig";
connectAttr "mgear_curveCns502GroupId.id" "mgear_curveCns502GroupParts.gi";
connectAttr "groupId8869.msg" "tweakSet650.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet650.dsm" -na;
connectAttr "tweak650.msg" "tweakSet650.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts1300.ig";
connectAttr "groupId8869.id" "groupParts1300.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion176.i";
connectAttr "mgear_curveCns503GroupParts.og" "mgear_curveCns503.ip[0].ig";
connectAttr "mgear_curveCns503GroupId.id" "mgear_curveCns503.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns503.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns503.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns503.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns503.inputs[3]";
connectAttr "groupParts1302.og" "tweak651.ip[0].ig";
connectAttr "groupId8871.id" "tweak651.ip[0].gi";
connectAttr "mgear_curveCns503GroupId.msg" "mgear_curveCns503Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns503Set.dsm" -na;
connectAttr "mgear_curveCns503.msg" "mgear_curveCns503Set.ub[0]";
connectAttr "tweak651.og[0]" "mgear_curveCns503GroupParts.ig";
connectAttr "mgear_curveCns503GroupId.id" "mgear_curveCns503GroupParts.gi";
connectAttr "groupId8871.msg" "tweakSet651.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet651.dsm" -na;
connectAttr "tweak651.msg" "tweakSet651.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts1302.ig";
connectAttr "groupId8871.id" "groupParts1302.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion177.i";
connectAttr "mgear_curveCns504GroupParts.og" "mgear_curveCns504.ip[0].ig";
connectAttr "mgear_curveCns504GroupId.id" "mgear_curveCns504.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns504.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns504.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns504.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns504.inputs[3]";
connectAttr "groupParts1304.og" "tweak652.ip[0].ig";
connectAttr "groupId8873.id" "tweak652.ip[0].gi";
connectAttr "mgear_curveCns504GroupId.msg" "mgear_curveCns504Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns504Set.dsm" -na;
connectAttr "mgear_curveCns504.msg" "mgear_curveCns504Set.ub[0]";
connectAttr "tweak652.og[0]" "mgear_curveCns504GroupParts.ig";
connectAttr "mgear_curveCns504GroupId.id" "mgear_curveCns504GroupParts.gi";
connectAttr "groupId8873.msg" "tweakSet652.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet652.dsm" -na;
connectAttr "tweak652.msg" "tweakSet652.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts1304.ig";
connectAttr "groupId8873.id" "groupParts1304.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion178.i";
connectAttr "mgear_curveCns505GroupParts.og" "mgear_curveCns505.ip[0].ig";
connectAttr "mgear_curveCns505GroupId.id" "mgear_curveCns505.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns505.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns505.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns505.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns505.inputs[3]";
connectAttr "groupParts1306.og" "tweak653.ip[0].ig";
connectAttr "groupId8875.id" "tweak653.ip[0].gi";
connectAttr "mgear_curveCns505GroupId.msg" "mgear_curveCns505Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns505Set.dsm" -na;
connectAttr "mgear_curveCns505.msg" "mgear_curveCns505Set.ub[0]";
connectAttr "tweak653.og[0]" "mgear_curveCns505GroupParts.ig";
connectAttr "mgear_curveCns505GroupId.id" "mgear_curveCns505GroupParts.gi";
connectAttr "groupId8875.msg" "tweakSet653.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet653.dsm" -na;
connectAttr "tweak653.msg" "tweakSet653.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts1306.ig";
connectAttr "groupId8875.id" "groupParts1306.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion179.i";
connectAttr "mgear_curveCns506GroupParts.og" "mgear_curveCns506.ip[0].ig";
connectAttr "mgear_curveCns506GroupId.id" "mgear_curveCns506.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns506.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns506.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns506.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns506.inputs[3]";
connectAttr "groupParts1308.og" "tweak654.ip[0].ig";
connectAttr "groupId8877.id" "tweak654.ip[0].gi";
connectAttr "mgear_curveCns506GroupId.msg" "mgear_curveCns506Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns506Set.dsm" -na;
connectAttr "mgear_curveCns506.msg" "mgear_curveCns506Set.ub[0]";
connectAttr "tweak654.og[0]" "mgear_curveCns506GroupParts.ig";
connectAttr "mgear_curveCns506GroupId.id" "mgear_curveCns506GroupParts.gi";
connectAttr "groupId8877.msg" "tweakSet654.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet654.dsm" -na;
connectAttr "tweak654.msg" "tweakSet654.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts1308.ig";
connectAttr "groupId8877.id" "groupParts1308.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion180.i";
connectAttr "mgear_curveCns507GroupParts.og" "mgear_curveCns507.ip[0].ig";
connectAttr "mgear_curveCns507GroupId.id" "mgear_curveCns507.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns507.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns507.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns507.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns507.inputs[3]";
connectAttr "groupParts1310.og" "tweak655.ip[0].ig";
connectAttr "groupId8879.id" "tweak655.ip[0].gi";
connectAttr "mgear_curveCns507GroupId.msg" "mgear_curveCns507Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns507Set.dsm" -na;
connectAttr "mgear_curveCns507.msg" "mgear_curveCns507Set.ub[0]";
connectAttr "tweak655.og[0]" "mgear_curveCns507GroupParts.ig";
connectAttr "mgear_curveCns507GroupId.id" "mgear_curveCns507GroupParts.gi";
connectAttr "groupId8879.msg" "tweakSet655.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet655.dsm" -na;
connectAttr "tweak655.msg" "tweakSet655.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts1310.ig";
connectAttr "groupId8879.id" "groupParts1310.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion181.i";
connectAttr "mgear_curveCns508GroupParts.og" "mgear_curveCns508.ip[0].ig";
connectAttr "mgear_curveCns508GroupId.id" "mgear_curveCns508.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns508.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns508.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns508.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns508.inputs[3]";
connectAttr "groupParts1312.og" "tweak656.ip[0].ig";
connectAttr "groupId8881.id" "tweak656.ip[0].gi";
connectAttr "mgear_curveCns508GroupId.msg" "mgear_curveCns508Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns508Set.dsm" -na;
connectAttr "mgear_curveCns508.msg" "mgear_curveCns508Set.ub[0]";
connectAttr "tweak656.og[0]" "mgear_curveCns508GroupParts.ig";
connectAttr "mgear_curveCns508GroupId.id" "mgear_curveCns508GroupParts.gi";
connectAttr "groupId8881.msg" "tweakSet656.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet656.dsm" -na;
connectAttr "tweak656.msg" "tweakSet656.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts1312.ig";
connectAttr "groupId8881.id" "groupParts1312.gi";
connectAttr "mgear_curveCns509GroupParts.og" "mgear_curveCns509.ip[0].ig";
connectAttr "mgear_curveCns509GroupId.id" "mgear_curveCns509.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns509.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns509.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns509.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns509.inputs[3]";
connectAttr "groupParts1314.og" "tweak657.ip[0].ig";
connectAttr "groupId8883.id" "tweak657.ip[0].gi";
connectAttr "mgear_curveCns509GroupId.msg" "mgear_curveCns509Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns509Set.dsm" -na;
connectAttr "mgear_curveCns509.msg" "mgear_curveCns509Set.ub[0]";
connectAttr "tweak657.og[0]" "mgear_curveCns509GroupParts.ig";
connectAttr "mgear_curveCns509GroupId.id" "mgear_curveCns509GroupParts.gi";
connectAttr "groupId8883.msg" "tweakSet657.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet657.dsm" -na;
connectAttr "tweak657.msg" "tweakSet657.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts1314.ig";
connectAttr "groupId8883.id" "groupParts1314.gi";
connectAttr "mgear_curveCns510GroupParts.og" "mgear_curveCns510.ip[0].ig";
connectAttr "mgear_curveCns510GroupId.id" "mgear_curveCns510.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns510.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns510.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns510.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns510.inputs[3]";
connectAttr "groupParts1316.og" "tweak658.ip[0].ig";
connectAttr "groupId8885.id" "tweak658.ip[0].gi";
connectAttr "mgear_curveCns510GroupId.msg" "mgear_curveCns510Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns510Set.dsm" -na;
connectAttr "mgear_curveCns510.msg" "mgear_curveCns510Set.ub[0]";
connectAttr "tweak658.og[0]" "mgear_curveCns510GroupParts.ig";
connectAttr "mgear_curveCns510GroupId.id" "mgear_curveCns510GroupParts.gi";
connectAttr "groupId8885.msg" "tweakSet658.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet658.dsm" -na;
connectAttr "tweak658.msg" "tweakSet658.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts1316.ig";
connectAttr "groupId8885.id" "groupParts1316.gi";
connectAttr "mgear_curveCns511GroupParts.og" "mgear_curveCns511.ip[0].ig";
connectAttr "mgear_curveCns511GroupId.id" "mgear_curveCns511.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns511.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns511.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns511.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns511.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns511.inputs[4]";
connectAttr "groupParts1318.og" "tweak659.ip[0].ig";
connectAttr "groupId8887.id" "tweak659.ip[0].gi";
connectAttr "mgear_curveCns511GroupId.msg" "mgear_curveCns511Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns511Set.dsm" -na;
connectAttr "mgear_curveCns511.msg" "mgear_curveCns511Set.ub[0]";
connectAttr "tweak659.og[0]" "mgear_curveCns511GroupParts.ig";
connectAttr "mgear_curveCns511GroupId.id" "mgear_curveCns511GroupParts.gi";
connectAttr "groupId8887.msg" "tweakSet659.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet659.dsm" -na;
connectAttr "tweak659.msg" "tweakSet659.ub[0]";
connectAttr "foot_L0_Shape1Orig.ws" "groupParts1318.ig";
connectAttr "groupId8887.id" "groupParts1318.gi";
connectAttr "mgear_curveCns512GroupParts.og" "mgear_curveCns512.ip[0].ig";
connectAttr "mgear_curveCns512GroupId.id" "mgear_curveCns512.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns512.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns512.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns512.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns512.inputs[3]";
connectAttr "groupParts1320.og" "tweak660.ip[0].ig";
connectAttr "groupId8889.id" "tweak660.ip[0].gi";
connectAttr "mgear_curveCns512GroupId.msg" "mgear_curveCns512Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns512Set.dsm" -na;
connectAttr "mgear_curveCns512.msg" "mgear_curveCns512Set.ub[0]";
connectAttr "tweak660.og[0]" "mgear_curveCns512GroupParts.ig";
connectAttr "mgear_curveCns512GroupId.id" "mgear_curveCns512GroupParts.gi";
connectAttr "groupId8889.msg" "tweakSet660.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet660.dsm" -na;
connectAttr "tweak660.msg" "tweakSet660.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts1320.ig";
connectAttr "groupId8889.id" "groupParts1320.gi";
connectAttr "mgear_curveCns513GroupParts.og" "mgear_curveCns513.ip[0].ig";
connectAttr "mgear_curveCns513GroupId.id" "mgear_curveCns513.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns513.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns513.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns513.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns513.inputs[3]";
connectAttr "groupParts1322.og" "tweak661.ip[0].ig";
connectAttr "groupId8891.id" "tweak661.ip[0].gi";
connectAttr "mgear_curveCns513GroupId.msg" "mgear_curveCns513Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns513Set.dsm" -na;
connectAttr "mgear_curveCns513.msg" "mgear_curveCns513Set.ub[0]";
connectAttr "tweak661.og[0]" "mgear_curveCns513GroupParts.ig";
connectAttr "mgear_curveCns513GroupId.id" "mgear_curveCns513GroupParts.gi";
connectAttr "groupId8891.msg" "tweakSet661.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet661.dsm" -na;
connectAttr "tweak661.msg" "tweakSet661.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts1322.ig";
connectAttr "groupId8891.id" "groupParts1322.gi";
connectAttr "mgear_curveCns514GroupParts.og" "mgear_curveCns514.ip[0].ig";
connectAttr "mgear_curveCns514GroupId.id" "mgear_curveCns514.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns514.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns514.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns514.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns514.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns514.inputs[4]";
connectAttr "groupParts1324.og" "tweak662.ip[0].ig";
connectAttr "groupId8893.id" "tweak662.ip[0].gi";
connectAttr "mgear_curveCns514GroupId.msg" "mgear_curveCns514Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns514Set.dsm" -na;
connectAttr "mgear_curveCns514.msg" "mgear_curveCns514Set.ub[0]";
connectAttr "tweak662.og[0]" "mgear_curveCns514GroupParts.ig";
connectAttr "mgear_curveCns514GroupId.id" "mgear_curveCns514GroupParts.gi";
connectAttr "groupId8893.msg" "tweakSet662.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet662.dsm" -na;
connectAttr "tweak662.msg" "tweakSet662.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts1324.ig";
connectAttr "groupId8893.id" "groupParts1324.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of biped_guide.ma
