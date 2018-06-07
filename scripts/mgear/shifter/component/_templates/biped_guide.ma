//Maya ASCII 2016 scene
//Name: biped_guide.ma
//Last modified: Wed, May 30, 2018 04:46:21 PM
//Codeset: 932
requires maya "2016";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
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
	rename -uid "4C81B2A5-4E30-9214-EABF-3E974B7C8300";
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
	rename -uid "C875749F-4CDB-39B4-445E-4BBA45370BBA";
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
	rename -uid "9DA06283-4B21-B963-CB22-BE8E352A4F32";
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
createNode nurbsCurve -n "global_C0_root10Shape" -p "global_C0_root";
	rename -uid "2E73253C-493B-B2C4-A843-E39CBDF7B5A8";
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
createNode nurbsCurve -n "global_C0_root11Shape" -p "global_C0_root";
	rename -uid "F30277AF-44BB-D1EE-7CDB-5B90081AE30E";
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
createNode nurbsCurve -n "global_C0_root12Shape" -p "global_C0_root";
	rename -uid "9C1B1984-43F8-2605-49F6-FD982A559618";
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
	rename -uid "71B71878-4292-517E-AD60-34B413D01E79";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "local_C0_root" -p "global_C0_root";
	rename -uid "C8344820-41B8-DCF4-BF33-AD9035F76457";
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
	rename -uid "6967F608-4EC6-8393-EEFE-798FF31499B0";
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
createNode nurbsCurve -n "local_C0_root10Shape" -p "local_C0_root";
	rename -uid "285A1E13-4E41-C120-261D-F783C564B64E";
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
createNode nurbsCurve -n "local_C0_root11Shape" -p "local_C0_root";
	rename -uid "3E639BC0-4332-F86F-6F91-2E9A0B2AB506";
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
createNode nurbsCurve -n "local_C0_root12Shape" -p "local_C0_root";
	rename -uid "233585CB-43DF-12F4-690E-C6B2699ED60F";
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
	rename -uid "D85682A7-4FA0-65FF-B1E5-C393E9BD274A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "body_C0_root" -p "local_C0_root";
	rename -uid "3AE02B7B-4D62-6B85-B5AB-58A8D4B7C339";
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
	setAttr ".s" -type "double3" 1.8613851194869455 1.8613851194869344 1.8613851194869455 ;
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
	rename -uid "9C828B05-485E-EAC0-2967-158752EEA7BB";
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
createNode nurbsCurve -n "body_C0_root34Shape" -p "body_C0_root";
	rename -uid "158EC032-41DC-E169-76C3-40BF84F05C47";
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
createNode nurbsCurve -n "body_C0_root35Shape" -p "body_C0_root";
	rename -uid "DA536E8F-4F58-A144-3FDE-7EB06CEC282F";
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
createNode nurbsCurve -n "body_C0_root36Shape" -p "body_C0_root";
	rename -uid "B86DB672-4ABE-BE4F-752A-7FABFED4EE97";
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
	rename -uid "460F1A68-4406-F108-605C-F8B65B89DF3E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.53723433669418719 0 1.1928998604342202e-016 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53723433669418763 0.53723433669419063 0.53723433669418763 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "spine_C0_root" -p "body_C0_root";
	rename -uid "7D935151-42B0-E269-0351-EA90F3DC34CD";
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
	setAttr ".t" -type "double3" -9.7144514654701197e-017 1.7763568394002505e-015 -2.1570415377137042e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410492 0.51189149642410237 0.51189149642410159 ;
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
	rename -uid "CE237FE5-45DB-5D29-F116-0098D3B16756";
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
createNode nurbsCurve -n "spine_C0_root34Shape" -p "spine_C0_root";
	rename -uid "EE2ADDED-4F1B-5B0C-816B-1094A16DC58D";
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
createNode nurbsCurve -n "spine_C0_root35Shape" -p "spine_C0_root";
	rename -uid "9708AAD3-4D54-A725-35B1-AA843CC51C64";
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
createNode nurbsCurve -n "spine_C0_root36Shape" -p "spine_C0_root";
	rename -uid "12824164-4E8C-67AB-E704-EF94ABC63D8D";
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
	rename -uid "D1029962-4F21-7E99-F955-E5BAE7DC2F91";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3760066881565312 -1.6930901125533637e-015 1.1093356479670479e-031 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999944 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "7FA64E48-44D2-B29E-31A8-3AA1694952E4";
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
createNode nurbsCurve -n "spine_C0_eff34Shape" -p "spine_C0_eff";
	rename -uid "9CDC34AB-4972-2277-BC69-CCB054D2D152";
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
createNode nurbsCurve -n "spine_C0_eff35Shape" -p "spine_C0_eff";
	rename -uid "A38C127B-4FB2-FD85-6287-2D9566673F5E";
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
createNode nurbsCurve -n "spine_C0_eff36Shape" -p "spine_C0_eff";
	rename -uid "455C0F81-4041-FEE1-C4EB-F5839F3576D1";
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
createNode nurbsCurve -n "spine_C0_eff36_0crvShape" -p "spine_C0_eff";
	rename -uid "8E4C6DEA-4199-E7C4-D886-30AB0323FB96";
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
createNode nurbsCurve -n "spine_C0_eff36_1crvShape" -p "spine_C0_eff";
	rename -uid "FE0E1D97-4329-B597-F19B-6F83DF36F129";
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
	rename -uid "7C885E8C-4FDB-55D8-DD31-F9BFD5447460";
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
	setAttr ".t" -type "double3" 3.2578484988603389 0.60394549966678468 -1.9764781265571727 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.8877599067547628 0.88775990675476024 0.88775990675475913 ;
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
	rename -uid "006A524C-495E-2055-BF53-A98DD6B2985A";
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
createNode nurbsCurve -n "spineUI_C0_root34Shape" -p "spineUI_C0_root";
	rename -uid "7ACB0F4A-47EE-A28C-7424-619AE5449FB0";
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
createNode nurbsCurve -n "spineUI_C0_root35Shape" -p "spineUI_C0_root";
	rename -uid "CA11DC48-4E76-313E-7BCA-A89D7D7F9BC8";
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
createNode nurbsCurve -n "spineUI_C0_root36Shape" -p "spineUI_C0_root";
	rename -uid "4ED69C8E-4F83-5A70-0408-64B42F19DAD5";
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
	rename -uid "3165F0B3-4A73-4D7C-3B6F-3F8A2AA1B2AC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -3.5527136788005009e-015 1.1821982708976551 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.1821982708976524 1.1821982708976528 1.1821982708976548 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "3386E946-48D6-6CF6-28EC-2580FE050811";
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
	setAttr ".t" -type "double3" 1.7395848890977401 -0.016853043661003458 -0.11673327753265017 ;
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
	rename -uid "C10733FF-4EEE-9C06-4E83-6680430FF19E";
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
createNode nurbsCurve -n "shoulder_L0_root34Shape" -p "shoulder_L0_root";
	rename -uid "A6AAE6BC-4AE6-D74E-901F-4E9753757F44";
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
createNode nurbsCurve -n "shoulder_L0_root35Shape" -p "shoulder_L0_root";
	rename -uid "535E0270-48B4-2202-C362-2EA8E66D1CB7";
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
createNode nurbsCurve -n "shoulder_L0_root36Shape" -p "shoulder_L0_root";
	rename -uid "DECE6B41-481F-4AFB-3939-8197E1FC7F61";
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
	rename -uid "38719AF0-4F3D-B83B-957B-E99B7EE26CBE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645673 -0.91350954729966827 -1.5239746815175861 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999567 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "E46C74AB-4477-B2A7-3DC0-68B0AACDE43A";
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
createNode nurbsCurve -n "shoulder_L0_tip34Shape" -p "shoulder_L0_tip";
	rename -uid "24AD4C27-4D8A-2BD9-FAA5-579583B23B50";
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
createNode nurbsCurve -n "shoulder_L0_tip35Shape" -p "shoulder_L0_tip";
	rename -uid "2E9043A8-423A-9870-6640-37B6DF3B26C9";
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
createNode nurbsCurve -n "shoulder_L0_tip36Shape" -p "shoulder_L0_tip";
	rename -uid "B5B9EF93-41DA-F103-AAEE-078E892D85AB";
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
createNode nurbsCurve -n "shoulder_L0_tip36_0crvShape" -p "shoulder_L0_tip";
	rename -uid "E04D9D0A-4E6D-5A18-D88B-AAB503C531E5";
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
createNode nurbsCurve -n "shoulder_L0_tip36_1crvShape" -p "shoulder_L0_tip";
	rename -uid "26ADC987-4D4C-444D-86DC-F3BCF7B7C90B";
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
	rename -uid "5872AE0C-43E3-DF0B-29C0-5982E6F4E842";
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
	setAttr ".t" -type "double3" 1.5987211554602254e-014 6.6613381477509392e-016 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386919 44.411212983179851 -5.4710434405384376 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999811 0.99999999999999978 ;
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
	rename -uid "6243841F-46C0-1AA5-EA8C-A38EDA25B2D0";
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
createNode nurbsCurve -n "arm_L0_root34Shape" -p "arm_L0_root";
	rename -uid "D1A7EE88-4BAD-2249-DAE6-3A98E7FC0D02";
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
createNode nurbsCurve -n "arm_L0_root35Shape" -p "arm_L0_root";
	rename -uid "548348FB-412E-2D18-861D-13A883D5EFCF";
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
createNode nurbsCurve -n "arm_L0_root36Shape" -p "arm_L0_root";
	rename -uid "2F58E9CA-44B0-56BD-0A40-9C846FD93CC3";
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
	rename -uid "5011EE7B-40D1-1911-4364-15AC7EBA9B70";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323257 5.3290705182007514e-015 0.078976790252909934 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784277 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "7BA360A1-4D69-3AD7-9D6C-6E8E097C58C8";
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
createNode nurbsCurve -n "arm_L0_elbow34Shape" -p "arm_L0_elbow";
	rename -uid "FDC2886F-4A41-BDF5-E3CC-73A67FA58E35";
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
createNode nurbsCurve -n "arm_L0_elbow35Shape" -p "arm_L0_elbow";
	rename -uid "CB61DAAD-4CA0-26B1-081B-66A6E17566A4";
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
createNode nurbsCurve -n "arm_L0_elbow36Shape" -p "arm_L0_elbow";
	rename -uid "E4A9A014-4D07-0B9C-204E-CFB826E22CFC";
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
createNode nurbsCurve -n "arm_L0_elbow36_0crvShape" -p "arm_L0_elbow";
	rename -uid "E4164EBD-456D-A814-2369-8A81D437C933";
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
createNode nurbsCurve -n "arm_L0_elbow36_1crvShape" -p "arm_L0_elbow";
	rename -uid "0D4B5AA0-45DA-EBEA-9D98-7EB4400A9FE9";
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
	rename -uid "006FAF9D-4A70-B036-D0F4-51978940E2DF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.935154789149705 1.7763568394002505e-015 -0.11960611218230632 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000018 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "3CEE0FFD-4B98-AE16-9BEB-64812103E021";
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
createNode nurbsCurve -n "arm_L0_wrist34Shape" -p "arm_L0_wrist";
	rename -uid "904EF9D4-4ED0-78CF-856B-14901A4A5038";
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
createNode nurbsCurve -n "arm_L0_wrist35Shape" -p "arm_L0_wrist";
	rename -uid "C3086841-4F19-EB8A-08EB-44B3E1593896";
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
createNode nurbsCurve -n "arm_L0_wrist36Shape" -p "arm_L0_wrist";
	rename -uid "529DABFD-434A-DCE1-26D5-E8B1A9E23A82";
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
createNode nurbsCurve -n "arm_L0_wrist36_0crvShape" -p "arm_L0_wrist";
	rename -uid "F80BBE0D-409B-8C3B-F6B8-EA95B140D320";
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
createNode nurbsCurve -n "arm_L0_wrist36_1crvShape" -p "arm_L0_wrist";
	rename -uid "A1E60371-47B4-535E-370E-75BE418DC63F";
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
	rename -uid "8A71B6EC-4FF1-4DFD-16B8-AE8BEDEF603E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308153 1.2434497875801753e-014 9.298117831235686e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "B7069C53-4022-4A87-5A54-E08622A7924E";
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
createNode nurbsCurve -n "arm_L0_eff34Shape" -p "arm_L0_eff";
	rename -uid "9A7B89C8-42FE-6FE7-6BA7-C283D5AECB59";
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
createNode nurbsCurve -n "arm_L0_eff35Shape" -p "arm_L0_eff";
	rename -uid "54FEF28F-4CFE-F39E-FEBF-9ABB106ED341";
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
createNode nurbsCurve -n "arm_L0_eff36Shape" -p "arm_L0_eff";
	rename -uid "FD6B3840-46C4-1302-E196-A68FFD460D9C";
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
createNode nurbsCurve -n "arm_L0_eff36_0crvShape" -p "arm_L0_eff";
	rename -uid "08B51C02-4E55-99A6-8701-4AABE499837A";
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
createNode nurbsCurve -n "arm_L0_eff36_1crvShape" -p "arm_L0_eff";
	rename -uid "15712AB6-4956-1741-5A9A-3B9150EE103C";
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
	rename -uid "85A47281-4D55-ECE4-6666-06A3B5F1DC77";
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
	setAttr ".t" -type "double3" -1.2124561875008095 0.5607311476451784 -0.29276117198398871 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1.0000000000000011 ;
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
	rename -uid "AC8F7BD6-4448-953B-7B5E-2DA79A701E61";
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
createNode nurbsCurve -n "armUI_L0_root34Shape" -p "armUI_L0_root";
	rename -uid "C6A5C62E-464B-239A-F5CF-279459F2D732";
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
createNode nurbsCurve -n "armUI_L0_root35Shape" -p "armUI_L0_root";
	rename -uid "2BA44EC1-4854-F6F0-EA25-E9902A94F15A";
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
createNode nurbsCurve -n "armUI_L0_root36Shape" -p "armUI_L0_root";
	rename -uid "3179973A-42EA-F609-2EFC-C49937466059";
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
	rename -uid "00B622A6-40FD-ABBE-5BA1-D2B8B1C1A82D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.113476230858093 -0.027001577630491269 1.0430060296210657 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145882209 3.3190804973695687 45.379324150247761 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377382 1.0495082267377405 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_L0_root" -p "arm_L0_eff";
	rename -uid "8913A169-49D1-F82D-34C5-259305C1295B";
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
	setAttr ".t" -type "double3" -1.0556240028445685 -0.075350553640982199 0.35296225288850192 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008866914 93.717381466937198 86.467960127478079 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716935 0.30838721081716924 0.30838721081716952 ;
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
	rename -uid "707F1E5E-4DB1-E220-EADA-DDACBAB62B50";
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
createNode nurbsCurve -n "meta_L0_root34Shape" -p "meta_L0_root";
	rename -uid "20CC5760-4FF5-B722-9A32-758698F4A864";
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
createNode nurbsCurve -n "meta_L0_root35Shape" -p "meta_L0_root";
	rename -uid "72352451-4992-5ECC-762A-1ABA2A4DE3EE";
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
createNode nurbsCurve -n "meta_L0_root36Shape" -p "meta_L0_root";
	rename -uid "9FF85849-4BC7-EE9C-BE6C-2DAFB369C953";
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
	rename -uid "D23C3ECC-4810-B925-6B37-879F833A239E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6632084735361703 7.1054273576010019e-015 -2.6645352591003757e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "B447FB9B-4A86-1BC3-875E-088741D4AD80";
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
createNode nurbsCurve -n "meta_L0_0_loc34Shape" -p "meta_L0_0_loc";
	rename -uid "7ADBE8B6-448F-2804-E8C8-72B07D2B2A64";
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
createNode nurbsCurve -n "meta_L0_0_loc35Shape" -p "meta_L0_0_loc";
	rename -uid "86CB060B-44CA-A68E-938D-F6B3E67B676B";
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
createNode nurbsCurve -n "meta_L0_0_loc36Shape" -p "meta_L0_0_loc";
	rename -uid "FA9D3A47-4E40-9885-1085-28ADFF269C0E";
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
createNode nurbsCurve -n "meta_L0_0_loc36_0crvShape" -p "meta_L0_0_loc";
	rename -uid "22ADE836-4B5A-ED92-95A5-9B8F799FA5AD";
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
createNode nurbsCurve -n "meta_L0_0_loc36_1crvShape" -p "meta_L0_0_loc";
	rename -uid "3960E629-40D4-BED4-3610-21B89E4A4E4D";
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
	rename -uid "54687001-4DBD-3167-E6A4-8A9EBF44A328";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618406 4.2632564145606011e-014 1.2434497875801753e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "BBCEEE76-46E6-8884-5697-C49B85AA86BF";
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
createNode nurbsCurve -n "meta_L0_1_loc34Shape" -p "meta_L0_1_loc";
	rename -uid "E60E01AC-4AEC-5D19-3B0E-53BD9EAF36D2";
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
createNode nurbsCurve -n "meta_L0_1_loc35Shape" -p "meta_L0_1_loc";
	rename -uid "5ABED0ED-481F-4DAD-3745-D9965CD64C2C";
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
createNode nurbsCurve -n "meta_L0_1_loc36Shape" -p "meta_L0_1_loc";
	rename -uid "A0DA5A18-419F-4AB1-6EE3-D79A2EF6CCE7";
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
createNode nurbsCurve -n "meta_L0_1_loc36_0crvShape" -p "meta_L0_1_loc";
	rename -uid "6AF00BC0-4606-F879-AFDE-6D8C20595873";
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
createNode nurbsCurve -n "meta_L0_1_loc36_1crvShape" -p "meta_L0_1_loc";
	rename -uid "0F9A2CDD-43F6-CF49-362A-BD9BE5432E3F";
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
	rename -uid "76D77AF6-44F0-1612-6E6E-E792B712AEBF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618806 -7.1054273576010019e-015 -2.4868995751603507e-014 ;
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
	rename -uid "7A46CFC3-49A0-FC2C-F888-6E8577E6A31A";
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
createNode nurbsCurve -n "meta_L0_2_loc34Shape" -p "meta_L0_2_loc";
	rename -uid "BF5B5A1D-446D-D874-CCFA-CA85593DC4E3";
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
createNode nurbsCurve -n "meta_L0_2_loc35Shape" -p "meta_L0_2_loc";
	rename -uid "C08D6391-445D-24A7-61E1-51916E31B268";
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
createNode nurbsCurve -n "meta_L0_2_loc36Shape" -p "meta_L0_2_loc";
	rename -uid "C52750A8-453D-1D74-976C-548A4BEF2AB9";
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
createNode nurbsCurve -n "meta_L0_2_loc36_0crvShape" -p "meta_L0_2_loc";
	rename -uid "DA7CFCC7-4DB0-3ECA-F6B6-C0ACE0400AF5";
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
createNode nurbsCurve -n "meta_L0_2_loc36_1crvShape" -p "meta_L0_2_loc";
	rename -uid "7DD8C5E9-413A-DD89-F094-A7B47D5F493D";
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
	rename -uid "BC5CBF43-4F14-A89B-0534-9EBEAA48379C";
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
	setAttr ".t" -type "double3" 0.27518484001103172 -0.17360051577777114 2.4946799341790467 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878593578 -68.587073855452587 -5.8163374181190042 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661787 1.2929668245661798 ;
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
	rename -uid "4A57C114-44AA-C3F6-3E5C-12AB21D843BD";
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
createNode nurbsCurve -n "finger_L3_root34Shape" -p "finger_L3_root";
	rename -uid "B23FF330-4E99-32CB-D5D9-92916DDA12B1";
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
createNode nurbsCurve -n "finger_L3_root35Shape" -p "finger_L3_root";
	rename -uid "F63F0A1C-448F-7130-E5EE-C8A8CC1996FA";
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
createNode nurbsCurve -n "finger_L3_root36Shape" -p "finger_L3_root";
	rename -uid "27D0121B-43A0-EBF0-86A2-37B4E1E94197";
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
	rename -uid "B37FF257-4535-2319-7ECD-A7A447C13B6C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561934 1.4210854715202004e-014 -3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "36CE85C7-4802-8E72-AC3B-8584F4FC3483";
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
createNode nurbsCurve -n "finger_L3_0_loc34Shape" -p "finger_L3_0_loc";
	rename -uid "F5D94A02-42B3-7B88-D0A2-1D98DF15D401";
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
createNode nurbsCurve -n "finger_L3_0_loc35Shape" -p "finger_L3_0_loc";
	rename -uid "5266EB2C-47C2-5F7D-C2D5-40985F88E243";
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
createNode nurbsCurve -n "finger_L3_0_loc36Shape" -p "finger_L3_0_loc";
	rename -uid "2EE0CEC4-445E-7766-D063-E2B79EA1E116";
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
createNode nurbsCurve -n "finger_L3_0_loc36_0crvShape" -p "finger_L3_0_loc";
	rename -uid "1218EB22-4C41-F65C-7CC8-C2938D00BD6C";
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
createNode nurbsCurve -n "finger_L3_0_loc36_1crvShape" -p "finger_L3_0_loc";
	rename -uid "89D5FDBC-4CF0-FC1A-A598-00843DE5EE31";
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
	rename -uid "DE3F34D1-4164-A998-436F-68B7A7BDEC0A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876662 -2.1316282072803006e-014 2.6645352591003757e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999933 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "F4D57F95-41A6-7BA5-D7BE-1B8F2DEAE39D";
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
createNode nurbsCurve -n "finger_L3_1_loc34Shape" -p "finger_L3_1_loc";
	rename -uid "88F58982-4607-3076-9980-66970FD2D74E";
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
createNode nurbsCurve -n "finger_L3_1_loc35Shape" -p "finger_L3_1_loc";
	rename -uid "813760E1-459A-9690-C355-EAB116FEC87F";
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
createNode nurbsCurve -n "finger_L3_1_loc36Shape" -p "finger_L3_1_loc";
	rename -uid "B7DCC683-446A-4E83-9B8F-98806140B42B";
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
createNode nurbsCurve -n "finger_L3_1_loc36_0crvShape" -p "finger_L3_1_loc";
	rename -uid "1622B281-4CBF-A41B-7200-5CA00B33D3E4";
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
createNode nurbsCurve -n "finger_L3_1_loc36_1crvShape" -p "finger_L3_1_loc";
	rename -uid "E13836B4-4BC4-EE69-077F-EEAB6501E2D3";
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
	rename -uid "C2F4F8F3-4FE1-A321-1BAD-958BADE62CE2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193812 3.5527136788005009e-015 -2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000011 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "CD1C7622-4DF0-343E-5786-F59CAF6EADB9";
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
createNode nurbsCurve -n "finger_L3_2_loc34Shape" -p "finger_L3_2_loc";
	rename -uid "297D4BDB-4C16-8660-D155-9187F16DBB8A";
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
createNode nurbsCurve -n "finger_L3_2_loc35Shape" -p "finger_L3_2_loc";
	rename -uid "6F42310E-4582-739E-8127-588A4347FFC1";
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
createNode nurbsCurve -n "finger_L3_2_loc36Shape" -p "finger_L3_2_loc";
	rename -uid "BE2E5F04-4199-E392-6529-6AA898CD3DD5";
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
createNode nurbsCurve -n "finger_L3_2_loc36_0crvShape" -p "finger_L3_2_loc";
	rename -uid "F2ABC80B-41A6-1722-A136-D3A813E348D5";
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
createNode nurbsCurve -n "finger_L3_2_loc36_1crvShape" -p "finger_L3_2_loc";
	rename -uid "58298F15-4169-F236-E00F-E6B0079656DC";
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
	rename -uid "238D50C1-43BA-0037-5F32-6E9CB56918A2";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "4AF24269-4EAE-83F8-2E84-558226D85800";
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
createNode aimConstraint -n "finger_L3_blade_aimConstraint12" -p "finger_L3_blade";
	rename -uid "4F58F0B6-4CAD-ACBF-816D-81A5035514A7";
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
createNode pointConstraint -n "finger_L3_blade_pointConstraint12" -p "finger_L3_blade";
	rename -uid "E7FDA32F-42B4-A4D4-97F1-BD9BCC987EE9";
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
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-015 8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "83F0C7C8-4AAE-1327-CFB3-9C87D2F20BE2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754391 -29.032786855763433 1.4804327725055146 ;
	setAttr ".r" -type "double3" -7.5791665394153647 -14.30424437889981 49.348303523762077 ;
	setAttr ".s" -type "double3" 2.6320983106786136 2.632098310678602 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "42EFFA32-47A6-0A12-C02A-FE8030A90F1A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "99D6E840-4F0F-DE0B-2A33-C4A70606FC2D";
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
	rename -uid "B227044F-4F44-0834-D8C0-66A787A3A2C1";
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
	setAttr ".t" -type "double3" 0.21404201232122722 -0.17620518664706708 2.8414845756647331 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121376634 -82.086889237978838 -14.829711404954057 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.2929668245661774 1.2929668245661794 ;
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
	rename -uid "49324266-4A09-41F9-4B36-38ABCE696FD6";
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
createNode nurbsCurve -n "finger_L2_root34Shape" -p "finger_L2_root";
	rename -uid "FFA10EB1-4044-98FE-4C10-43A76821F6A4";
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
createNode nurbsCurve -n "finger_L2_root35Shape" -p "finger_L2_root";
	rename -uid "26F36773-452D-FFED-4A70-5F9401FEA15C";
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
createNode nurbsCurve -n "finger_L2_root36Shape" -p "finger_L2_root";
	rename -uid "8796784B-4913-C98B-63E1-3F9549DDCF09";
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
	rename -uid "33097AC6-4504-024A-20E2-0691CE9BD4A9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406041 -3.5527136788005009e-015 2.886579864025407e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "ABD1C2C0-4585-9397-E941-D1913B96F065";
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
createNode nurbsCurve -n "finger_L2_0_loc34Shape" -p "finger_L2_0_loc";
	rename -uid "A496EA51-4B13-15B8-62D7-A4B7E413DBA6";
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
createNode nurbsCurve -n "finger_L2_0_loc35Shape" -p "finger_L2_0_loc";
	rename -uid "A1ACE880-497D-795A-A746-16B7E09B608D";
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
createNode nurbsCurve -n "finger_L2_0_loc36Shape" -p "finger_L2_0_loc";
	rename -uid "B41E835C-4E35-F4B9-5F3C-41B1D68C1AC1";
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
createNode nurbsCurve -n "finger_L2_0_loc36_0crvShape" -p "finger_L2_0_loc";
	rename -uid "8A0106EA-4C97-7877-CD4B-46A90A47564C";
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
createNode nurbsCurve -n "finger_L2_0_loc36_1crvShape" -p "finger_L2_0_loc";
	rename -uid "F5694BA4-4263-9C6B-0A3F-CD827EEAB600";
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
	rename -uid "64B3D399-4E8B-9B3A-E958-3DA945073CBA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587175555 7.1054273576010019e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "9757FD79-4951-FDD0-67CA-C6914CD4D58C";
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
createNode nurbsCurve -n "finger_L2_1_loc34Shape" -p "finger_L2_1_loc";
	rename -uid "42994AF8-40D1-A97F-0B49-119CAF6D8FB7";
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
createNode nurbsCurve -n "finger_L2_1_loc35Shape" -p "finger_L2_1_loc";
	rename -uid "E04DFE76-4AB3-3F5B-9B07-75A36C41B10F";
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
createNode nurbsCurve -n "finger_L2_1_loc36Shape" -p "finger_L2_1_loc";
	rename -uid "493A36C1-47EB-20DA-FDEB-18944CD50828";
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
createNode nurbsCurve -n "finger_L2_1_loc36_0crvShape" -p "finger_L2_1_loc";
	rename -uid "F10E47C5-4F1C-7F9D-F389-4489FCDD4B5A";
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
createNode nurbsCurve -n "finger_L2_1_loc36_1crvShape" -p "finger_L2_1_loc";
	rename -uid "81AC2D69-4CDF-8B53-EC05-D386F2A97DAE";
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
	rename -uid "052225A3-4D6A-185D-1D44-97B39729D249";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915532 -1.0658141036401503e-014 -1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "1652FCDC-43A0-0D47-C72B-E2BBD800CDE4";
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
createNode nurbsCurve -n "finger_L2_2_loc34Shape" -p "finger_L2_2_loc";
	rename -uid "2B683EB8-40C5-4BF7-C827-E9B2C5C584BD";
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
createNode nurbsCurve -n "finger_L2_2_loc35Shape" -p "finger_L2_2_loc";
	rename -uid "BC13DBB6-45F8-71C2-546A-6EBED495D124";
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
createNode nurbsCurve -n "finger_L2_2_loc36Shape" -p "finger_L2_2_loc";
	rename -uid "D0CB661D-4F66-CF09-7AD3-79BCD70A00A6";
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
createNode nurbsCurve -n "finger_L2_2_loc36_0crvShape" -p "finger_L2_2_loc";
	rename -uid "F6ED8805-46A8-5DE1-E7C3-F7A87AA66FA8";
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
createNode nurbsCurve -n "finger_L2_2_loc36_1crvShape" -p "finger_L2_2_loc";
	rename -uid "7B7D7769-4BE3-D293-E4CD-F4A3E433DA3A";
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
	rename -uid "3EA33013-42B9-077E-7A40-8E8166549134";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.000000000000002 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "55A3B219-4B6C-EB4C-7139-869DCBA67E59";
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
createNode aimConstraint -n "finger_L2_blade_aimConstraint12" -p "finger_L2_blade";
	rename -uid "409AA37D-4F20-EAAC-9DF4-778BBF6408B6";
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
createNode pointConstraint -n "finger_L2_blade_pointConstraint12" -p "finger_L2_blade";
	rename -uid "0EDF0A70-4666-C637-AB9E-3F8C5B5B178F";
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "8C160803-4DC4-583D-F9B5-789A6C30BE80";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309277 -29.023661369441495 1.4173349723096382 ;
	setAttr ".r" -type "double3" -0.54140613099220503 -1.5904804996484601 47.737641631364042 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.632098310678602 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "12DD70AB-49FB-BDEF-F5B5-2587ADA1F879";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "6ACED6CE-4B46-1ACA-93D2-C09B9F3471EF";
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
	rename -uid "F72B26E1-49C9-7DE3-AC29-60AFF9200CB5";
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
	setAttr ".t" -type "double3" -0.0077643969605980523 -0.12358406696708357 2.9483952421545787 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870092 -79.977014017423315 -112.77222628638572 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566179 1.2929668245661803 1.2929668245661792 ;
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
	rename -uid "43153EA4-4459-DEDB-AE9C-06B6F07E04DA";
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
createNode nurbsCurve -n "finger_L1_root34Shape" -p "finger_L1_root";
	rename -uid "89138CEC-4046-DD6F-F590-0799E38F23C2";
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
createNode nurbsCurve -n "finger_L1_root35Shape" -p "finger_L1_root";
	rename -uid "D9E0ED15-4E13-7D66-F579-42855C7ABD91";
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
createNode nurbsCurve -n "finger_L1_root36Shape" -p "finger_L1_root";
	rename -uid "7A75B495-4F3D-3436-B294-77AC68C293BC";
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
	rename -uid "8B1E2181-4C33-ACB3-72ED-A6B91078C573";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998046 1.0658141036401503e-014 6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "E1CB3A19-450D-5FBC-248B-6987D414D472";
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
createNode nurbsCurve -n "finger_L1_0_loc34Shape" -p "finger_L1_0_loc";
	rename -uid "7200F256-424F-E2B2-89F9-168E4CA12DAD";
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
createNode nurbsCurve -n "finger_L1_0_loc35Shape" -p "finger_L1_0_loc";
	rename -uid "55CA13AA-4518-BD10-9BE1-ADA242B73415";
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
createNode nurbsCurve -n "finger_L1_0_loc36Shape" -p "finger_L1_0_loc";
	rename -uid "97360E36-495D-8AE9-D239-E99DD991635B";
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
createNode nurbsCurve -n "finger_L1_0_loc36_0crvShape" -p "finger_L1_0_loc";
	rename -uid "A215C251-4554-11B6-3AA9-2CA0216638B1";
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
createNode nurbsCurve -n "finger_L1_0_loc36_1crvShape" -p "finger_L1_0_loc";
	rename -uid "45F06161-4466-0FB4-96ED-9E9689BF7E3C";
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
	rename -uid "7674C3D1-4349-49A9-0B45-07AB5D822C51";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019505 0 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "4DDA796A-4BCE-C43E-579A-BAB441C1B2C8";
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
createNode nurbsCurve -n "finger_L1_1_loc34Shape" -p "finger_L1_1_loc";
	rename -uid "EE916F28-45C6-9B28-4955-CCB2A5A5A572";
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
createNode nurbsCurve -n "finger_L1_1_loc35Shape" -p "finger_L1_1_loc";
	rename -uid "EC56E9C4-481D-7D25-9908-87B915B6BD10";
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
createNode nurbsCurve -n "finger_L1_1_loc36Shape" -p "finger_L1_1_loc";
	rename -uid "9D36AB85-4375-71E1-A386-96B87346AB51";
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
createNode nurbsCurve -n "finger_L1_1_loc36_0crvShape" -p "finger_L1_1_loc";
	rename -uid "A9795C94-4C64-8BDD-0CE5-A8A6FDC98F85";
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
createNode nurbsCurve -n "finger_L1_1_loc36_1crvShape" -p "finger_L1_1_loc";
	rename -uid "C1E984A4-47FB-4774-D741-6BB4F21E7550";
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
	rename -uid "B2E9696E-40DF-B3CC-2357-56AC2DC6670D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549590294 -7.1054273576010019e-015 -1.3322676295501878e-015 ;
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
	rename -uid "74CCB2C1-48D9-62BA-D908-3F8E34A5E001";
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
createNode nurbsCurve -n "finger_L1_2_loc34Shape" -p "finger_L1_2_loc";
	rename -uid "C82C1E4F-4F49-D62A-EFCA-908E10BE4326";
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
createNode nurbsCurve -n "finger_L1_2_loc35Shape" -p "finger_L1_2_loc";
	rename -uid "2875EDD8-46FC-E376-4A08-8189FA742717";
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
createNode nurbsCurve -n "finger_L1_2_loc36Shape" -p "finger_L1_2_loc";
	rename -uid "F844F60F-4995-D045-107E-BDB976C18922";
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
createNode nurbsCurve -n "finger_L1_2_loc36_0crvShape" -p "finger_L1_2_loc";
	rename -uid "E5D900EB-450D-3AA5-85F7-96BBA0C5D172";
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
createNode nurbsCurve -n "finger_L1_2_loc36_1crvShape" -p "finger_L1_2_loc";
	rename -uid "967617AC-4DF5-2AC5-D69F-DC98D3DD0C3B";
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
	rename -uid "BE28D323-44C3-121F-B82F-CC9257113A71";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "B73BBF99-463C-B0A1-1710-5E9E5C88E2FF";
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
createNode aimConstraint -n "finger_L1_blade_aimConstraint12" -p "finger_L1_blade";
	rename -uid "3C61AA02-4281-1233-D6B4-54BAACD91F5B";
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
createNode pointConstraint -n "finger_L1_blade_pointConstraint12" -p "finger_L1_blade";
	rename -uid "F174C944-46E9-D574-B857-5191E5C38F9F";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 0 8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "8F380FE6-428C-112A-AC23-FBB08D2E000E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153216 -28.040620010901364 1.1418187531084816 ;
	setAttr ".r" -type "double3" 5.8484943948555266 9.9768879508731914 54.111347352878482 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786011 2.6320983106786091 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "92E2D9BF-4324-8145-FF53-0FB0256BA62C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "41857D9F-46D3-E9C2-A843-45AD52906522";
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
	rename -uid "C59DB191-47A8-1A33-F143-D0973F55C19B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "EFA76ADB-4252-1B9B-D1B3-AC8B5E0FE652";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.1850323264903016 0 0
		0 0.06167744216343387 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint12" -p "meta_L0_blade";
	rename -uid "4C26E756-4EFD-4C94-D018-0A98B031C7B2";
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
createNode pointConstraint -n "meta_L0_blade_pointConstraint12" -p "meta_L0_blade";
	rename -uid "E017B3F9-407E-9849-D0A9-BF9596A9D20A";
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
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 -7.1054273576010019e-015 
		3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "10514011-4203-062B-B859-A5BCFEEE4261";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400278 -38.076493243284858 11.714163621936773 ;
	setAttr ".r" -type "double3" -81.595645682431567 -44.654258545702156 89.275820115296398 ;
	setAttr ".s" -type "double3" 3.4032157947041277 3.403215794704114 3.4032157947041233 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "F47A8D1B-471A-EB9C-F109-9F8F45EBF73C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "96B6761A-4F31-B1F6-16D5-3CB8D958780B";
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
	rename -uid "CF18937A-47CE-A997-542F-C9879DCEE5DE";
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
	setAttr ".t" -type "double3" -0.1840372367976344 -0.30586006047044378 2.7614233959505619 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808449 -71.606679450097857 -133.79382708613443 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.2929668245661794 1.2929668245661805 ;
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
	rename -uid "596E3265-470F-9432-BF90-599E9DD2F623";
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
createNode nurbsCurve -n "finger_L0_root34Shape" -p "finger_L0_root";
	rename -uid "F2776DD1-4670-DDBE-3112-7688018060C5";
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
createNode nurbsCurve -n "finger_L0_root35Shape" -p "finger_L0_root";
	rename -uid "092BCD49-48BF-AFB6-2CD8-78B98032EA67";
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
createNode nurbsCurve -n "finger_L0_root36Shape" -p "finger_L0_root";
	rename -uid "6B0C8327-4EA8-4FCE-4BD8-28A3887F7794";
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
	rename -uid "EDC3C8F9-4757-EB47-526B-F2BBAFDC3683";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1 0 4.4408920985006262e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "2B7E9827-4A9C-4552-1FA9-9C9882DC6B48";
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
createNode nurbsCurve -n "finger_L0_0_loc34Shape" -p "finger_L0_0_loc";
	rename -uid "E244D345-4251-3056-6434-428358EAA524";
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
createNode nurbsCurve -n "finger_L0_0_loc35Shape" -p "finger_L0_0_loc";
	rename -uid "509DF078-4517-9F6E-E29C-E08ED85566FF";
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
createNode nurbsCurve -n "finger_L0_0_loc36Shape" -p "finger_L0_0_loc";
	rename -uid "7B731822-4E02-1919-154F-2FB199A1BC02";
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
createNode nurbsCurve -n "finger_L0_0_loc36_0crvShape" -p "finger_L0_0_loc";
	rename -uid "62E51647-4F70-6412-EF28-0D9EF65D4C5E";
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
createNode nurbsCurve -n "finger_L0_0_loc36_1crvShape" -p "finger_L0_0_loc";
	rename -uid "0CD8C229-454D-645F-5105-1B9421B88F9F";
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
	rename -uid "D201E80A-462B-F3EC-53DB-988CED89C370";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.8044200808092743 -2.8421709430404007e-014 2.2204460492503131e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "2C5F1136-45F4-959C-C3EB-71A3F0B0FBE2";
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
createNode nurbsCurve -n "finger_L0_1_loc34Shape" -p "finger_L0_1_loc";
	rename -uid "2698C006-4638-CF2E-FDC0-C599D6D28803";
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
createNode nurbsCurve -n "finger_L0_1_loc35Shape" -p "finger_L0_1_loc";
	rename -uid "089259D9-4342-97B0-B32D-2E94BA74FD0A";
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
createNode nurbsCurve -n "finger_L0_1_loc36Shape" -p "finger_L0_1_loc";
	rename -uid "8163DFA3-4739-E2B2-5706-DF8EA28EA0FA";
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
createNode nurbsCurve -n "finger_L0_1_loc36_0crvShape" -p "finger_L0_1_loc";
	rename -uid "FAFDE577-4FA4-3C58-7731-4394244F3CA9";
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
createNode nurbsCurve -n "finger_L0_1_loc36_1crvShape" -p "finger_L0_1_loc";
	rename -uid "876C1DCD-44E9-83EB-1972-D59CCFA4A19B";
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
	rename -uid "8BA7D9AE-4A34-6807-EA5D-4C95AC1664BC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392368187 2.8421709430404007e-014 -5.3290705182007514e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "A71C3AB4-4E65-CA86-5F0E-7BB0060B3E59";
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
createNode nurbsCurve -n "finger_L0_2_loc34Shape" -p "finger_L0_2_loc";
	rename -uid "27B9348C-4004-8345-5EB9-ADB52956D3C7";
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
createNode nurbsCurve -n "finger_L0_2_loc35Shape" -p "finger_L0_2_loc";
	rename -uid "E4FA1D9C-4080-96F5-42C9-08AF1BA2DFBF";
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
createNode nurbsCurve -n "finger_L0_2_loc36Shape" -p "finger_L0_2_loc";
	rename -uid "E6A9B94D-4D11-C217-9249-CFB4AAF77E96";
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
createNode nurbsCurve -n "finger_L0_2_loc36_0crvShape" -p "finger_L0_2_loc";
	rename -uid "849F6EFF-4DB5-CB26-2BD1-9894BB092547";
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
createNode nurbsCurve -n "finger_L0_2_loc36_1crvShape" -p "finger_L0_2_loc";
	rename -uid "836FC5EE-4A53-5C93-83D5-5BAA2538E116";
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
	rename -uid "E8A14109-4F92-6BF7-DE2B-E6881CDB4811";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "63B5CFED-4B40-643A-6BFA-02AFE3D354BE";
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
createNode aimConstraint -n "finger_L0_blade_aimConstraint12" -p "finger_L0_blade";
	rename -uid "CC8B4B2A-48B5-579E-E2BC-0C8E9B5C907D";
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
createNode pointConstraint -n "finger_L0_blade_pointConstraint12" -p "finger_L0_blade";
	rename -uid "480A4413-4D6A-C684-8D7E-62B74957E990";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 -4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "6A58EE7A-4CC8-ED23-03B5-FAB359174D0E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713119 -27.336008057181211 2.4648652761296894 ;
	setAttr ".r" -type "double3" 9.1654334880191293 22.111176212555289 57.120615095545304 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106785998 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "0B14E63A-4B6B-20B5-AF9A-59B8BE6236E3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "D311B451-4B97-A876-13BA-B78B59F509B5";
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
	rename -uid "07D7B0F4-4B0A-A08D-DD10-54A85283884D";
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
	setAttr ".t" -type "double3" 0.21303623709073616 -0.22489125789798692 0.13070337452154135 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848349577 -84.001563523230956 11.009204406913662 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041286 3.4032157947041144 3.4032157947041215 ;
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
	rename -uid "D7D257F9-407B-8B20-756B-1F9F7FCD6504";
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
createNode nurbsCurve -n "thumbRoll_L0_root25Shape" -p "thumbRoll_L0_root";
	rename -uid "5F1A28E7-4C3F-8069-5478-18BA4C7B7DBF";
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
createNode nurbsCurve -n "thumbRoll_L0_root26Shape" -p "thumbRoll_L0_root";
	rename -uid "99EBCDFA-44B8-C59C-BDEC-A68F75A7ACDE";
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
createNode nurbsCurve -n "thumbRoll_L0_root27Shape" -p "thumbRoll_L0_root";
	rename -uid "A0D057BC-4C2A-4A67-C2A9-21AE299E29D8";
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
	rename -uid "18F661E8-45A4-ED18-2141-82A535A78E61";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 4.2632564145606011e-014 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205701 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999756 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_L0_root" -p "thumbRoll_L0_root";
	rename -uid "9487EA90-489D-4157-FB82-BFBD37B956F5";
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
	setAttr ".t" -type "double3" -1.7763568394002505e-015 3.5527136788005009e-015 4.9960036108132044e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913069 -43.900240512232436 -37.623269198287794 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511095 0.48936434703511017 0.48936434703511167 ;
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
	rename -uid "B1BB6CCE-4DDF-9CF0-8435-BF845382CBEF";
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
createNode nurbsCurve -n "thumb_L0_root34Shape" -p "thumb_L0_root";
	rename -uid "7E9B500C-4F42-7ACB-6920-4DA46F1B8906";
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
createNode nurbsCurve -n "thumb_L0_root35Shape" -p "thumb_L0_root";
	rename -uid "B47FC2C5-466A-CC59-B915-53BF9527B9E0";
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
createNode nurbsCurve -n "thumb_L0_root36Shape" -p "thumb_L0_root";
	rename -uid "46288C67-4A9F-4752-B0C0-CEA496A33567";
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
	rename -uid "5BF7C7A1-40F3-D884-ADE5-0C9258F8C4C7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470206 0.0024095775966985755 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.238425749806054 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "0BF3197F-4611-CB00-4372-D28A1E968F36";
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
createNode nurbsCurve -n "thumb_L0_0_loc34Shape" -p "thumb_L0_0_loc";
	rename -uid "B4B7975A-45E5-1B5F-5702-9A816B2D87A6";
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
createNode nurbsCurve -n "thumb_L0_0_loc35Shape" -p "thumb_L0_0_loc";
	rename -uid "69DA34D9-457E-3797-B380-2B802EA02A50";
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
createNode nurbsCurve -n "thumb_L0_0_loc36Shape" -p "thumb_L0_0_loc";
	rename -uid "FD860DB4-4674-291B-40BB-CB898F74A77E";
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
createNode nurbsCurve -n "thumb_L0_0_loc36_0crvShape" -p "thumb_L0_0_loc";
	rename -uid "EC801548-4DFB-4098-A78D-7589058EFD10";
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
createNode nurbsCurve -n "thumb_L0_0_loc36_1crvShape" -p "thumb_L0_0_loc";
	rename -uid "5AADDD1E-4D72-047C-87B9-4085F98BB020";
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
	rename -uid "61C07EC1-4AC7-E20C-EC06-EA9C51473BBF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522321 -9.7699626167013776e-015 1.7763568394002505e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999856 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "9458E41A-4A8B-7508-F66C-B79B9FBC53FD";
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
createNode nurbsCurve -n "thumb_L0_1_loc34Shape" -p "thumb_L0_1_loc";
	rename -uid "B3C49A8F-434A-2501-7566-1B9924467ED9";
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
createNode nurbsCurve -n "thumb_L0_1_loc35Shape" -p "thumb_L0_1_loc";
	rename -uid "B4191972-4A11-C417-8C13-BEB81837EF40";
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
createNode nurbsCurve -n "thumb_L0_1_loc36Shape" -p "thumb_L0_1_loc";
	rename -uid "6CB9BEE8-43E9-58DC-F181-7C825C7387CE";
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
createNode nurbsCurve -n "thumb_L0_1_loc36_0crvShape" -p "thumb_L0_1_loc";
	rename -uid "B078961E-4228-EAD4-AC98-59B069DFF533";
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
createNode nurbsCurve -n "thumb_L0_1_loc36_1crvShape" -p "thumb_L0_1_loc";
	rename -uid "85E5946C-4732-D95A-CF4A-25AB4166AADA";
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
	rename -uid "9A77DB2D-490D-BD82-10B2-61BFF6FCA743";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510209 1.3322676295501878e-014 1.7763568394002505e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000011 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "4773E34A-46FB-0551-464E-B8BD964B29D4";
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
createNode nurbsCurve -n "thumb_L0_2_loc34Shape" -p "thumb_L0_2_loc";
	rename -uid "5EEF66A1-4FA3-0786-CE81-D3807B1A87A3";
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
createNode nurbsCurve -n "thumb_L0_2_loc35Shape" -p "thumb_L0_2_loc";
	rename -uid "A4D6ADE7-4DF2-0F6B-FBCE-B8A3F6B50F89";
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
createNode nurbsCurve -n "thumb_L0_2_loc36Shape" -p "thumb_L0_2_loc";
	rename -uid "15583C42-43CD-7395-B886-1CAC6AD11B0E";
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
createNode nurbsCurve -n "thumb_L0_2_loc36_0crvShape" -p "thumb_L0_2_loc";
	rename -uid "EC8C641E-4549-3834-8476-F489BDE13EF3";
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
createNode nurbsCurve -n "thumb_L0_2_loc36_1crvShape" -p "thumb_L0_2_loc";
	rename -uid "E5D47966-4519-0D16-404E-E6B5B5106E81";
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
	rename -uid "90986EBB-4730-0B7A-EA6E-F591EA3FD9C2";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999811 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "A79281A9-48C9-20CC-9EA3-1FA986E3D131";
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
createNode aimConstraint -n "thumb_L0_blade_aimConstraint12" -p "thumb_L0_blade";
	rename -uid "9700D0A4-40C2-614A-6A6E-A09DF5F22953";
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
	setAttr ".rsrr" -type "double3" 0 0 0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint12" -p "thumb_L0_blade";
	rename -uid "47AED37C-4A83-7A37-3414-C98B7EFC01D4";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -8.8817841970012523e-016 
		3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "2D510AA8-4722-4150-0585-7BB40A3C1700";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042876 -7.0737929587543213 17.725867635512856 ;
	setAttr ".r" -type "double3" -124.44302205362676 63.100734454449622 -77.281354162701689 ;
	setAttr ".s" -type "double3" 2.0434672163157259 2.0434672163157197 2.0434672163157264 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "4899A402-4BA1-C895-5986-60B80D1A89EE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "0584D6EF-4B63-7568-5B2E-57B95782410F";
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
	rename -uid "5F576035-4705-3823-B088-129D30508970";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200507 -11.862061807473026 1.1564412205648551 ;
	setAttr ".r" -type "double3" -2.1534408611045617 -4.195937079336705 45.43774004929832 ;
	setAttr ".s" -type "double3" 1.0495082267377438 1.0495082267377394 1.0495082267377407 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "023C818B-4ED9-26E0-43F5-BC845D845F0F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "0DD491B1-4DEE-6A0B-34D6-D28D54444BBD";
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
	rename -uid "4E6D6BDB-4411-F549-4727-7E8BCE213E37";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 89.999999999999886 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999667 0.99999999999999767 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "2A3E7770-4D72-7EE3-2A1A-55B9ADCC0585";
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
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint12" -p "shoulder_L0_blade";
	rename -uid "C6AA2F69-430A-C09F-2A70-6D8CE498EC38";
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
	setAttr ".o" -type "double3" 90 179.9999999999994 180.0000000000002 ;
	setAttr ".rsrr" -type "double3" 23.386262286472942 122.5386402183822 110.03040021520766 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint12" -p "shoulder_L0_blade";
	rename -uid "052F7ADF-4207-06BA-A609-3395C51B8049";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.4286128663675299e-017 
		-1.3877787807814457e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "15E3DBC9-4255-223D-C49D-A794C88BA6CF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509833 0.0092761897382757398 0.11673327753265013 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377365 1.049508226737736 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "AB6E87A7-4D64-CC2D-02BA-BB84C056C987";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "55B8FFFB-4254-235C-74AD-E0A54A96BB50";
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
	rename -uid "58C72EEA-4A5A-6AA0-3C5A-A8BD3AB16472";
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
	addAttr -ci true -sn "IKWorldOri" -ln "IKWorldOri" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.266742961064848 0.53748181085566238 -4.2147015411630268e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 7.062250076880252e-031 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.5983922810424368 0.59839228104243269 0.59839228104243281 ;
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
	rename -uid "3D8EF735-497A-9AE9-E219-B7914098D3AC";
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
createNode nurbsCurve -n "neck_C0_root34Shape" -p "neck_C0_root";
	rename -uid "12408A1F-48B4-A150-8403-68835155CDD8";
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
createNode nurbsCurve -n "neck_C0_root35Shape" -p "neck_C0_root";
	rename -uid "C0365C94-4DAB-1D7C-37DD-9BBCA40E92D1";
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
createNode nurbsCurve -n "neck_C0_root36Shape" -p "neck_C0_root";
	rename -uid "328D2BBA-4B3C-5788-3975-A39F551CDFAE";
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
	rename -uid "3FBBB648-4F8B-1D64-FE73-919ADB5C284F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981640997 2.467494625957773 1.5382908879615304e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999567 0.99999999999999623 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "80C05C5F-4A9E-931F-2401-1391B3EB31F7";
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
createNode nurbsCurve -n "neck_C0_neck34Shape" -p "neck_C0_neck";
	rename -uid "EDB6CAAE-4871-F44F-8884-3FA43DD4E1CA";
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
createNode nurbsCurve -n "neck_C0_neck35Shape" -p "neck_C0_neck";
	rename -uid "0418487F-48F6-E2E1-957E-EBB72F972771";
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
createNode nurbsCurve -n "neck_C0_neck36Shape" -p "neck_C0_neck";
	rename -uid "6D6D9B91-4689-33D2-CC7E-CCB9DECCAE69";
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
createNode nurbsCurve -n "neck_C0_neck36_0crvShape" -p "neck_C0_neck";
	rename -uid "7FF49B65-4EB8-2A25-91C7-44BBFB054F47";
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
createNode nurbsCurve -n "neck_C0_neck36_1crvShape" -p "neck_C0_neck";
	rename -uid "C3F4DC8E-4C4C-BB12-9928-47B450E46D29";
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
	rename -uid "4F06B8D3-484A-57C2-297A-A6BC55C4AFFE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.7755575615628914e-017 0.10000000000006182 1.2246467991476512e-017 ;
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
	rename -uid "E96EE154-42E9-2EE4-9CF8-3B8ABF18D72E";
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
createNode nurbsCurve -n "neck_C0_head34Shape" -p "neck_C0_head";
	rename -uid "E7663012-4AE7-517C-5EBC-88A3D23EA19F";
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
createNode nurbsCurve -n "neck_C0_head35Shape" -p "neck_C0_head";
	rename -uid "1A5EE4AF-430C-98FA-DE6B-97A8D102C48F";
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
createNode nurbsCurve -n "neck_C0_head36Shape" -p "neck_C0_head";
	rename -uid "9ECB9883-42BB-A184-1690-FEB35205C133";
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
createNode nurbsCurve -n "neck_C0_head36_0crvShape" -p "neck_C0_head";
	rename -uid "D7BF2677-493C-8155-35DB-EC9E0F20FF8C";
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
createNode nurbsCurve -n "neck_C0_head36_1crvShape" -p "neck_C0_head";
	rename -uid "A9EED5C9-4200-9FA8-021C-E685F4E28CE1";
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
	rename -uid "DD3E9770-4236-B0C2-E849-5390746CFB56";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1934897514720433e-015 3.0746209978281591 2.3592239273284182e-016 ;
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
	rename -uid "C0AF2F16-40BD-B0B3-265A-7EB898216EFD";
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
createNode nurbsCurve -n "neck_C0_eff34Shape" -p "neck_C0_eff";
	rename -uid "8D47F32F-4AB5-19AF-FDF7-9AAC476F76B3";
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
createNode nurbsCurve -n "neck_C0_eff35Shape" -p "neck_C0_eff";
	rename -uid "D56945D6-42F2-5076-43E5-E1B3EA0FD6B5";
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
createNode nurbsCurve -n "neck_C0_eff36Shape" -p "neck_C0_eff";
	rename -uid "504C6EC4-4120-43C0-EC91-B68A8C1BD14D";
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
createNode nurbsCurve -n "neck_C0_eff36_0crvShape" -p "neck_C0_eff";
	rename -uid "E1737A57-450E-9B50-2D7D-F7913FFBC738";
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
createNode nurbsCurve -n "neck_C0_eff36_1crvShape" -p "neck_C0_eff";
	rename -uid "3B785674-4578-9319-0E66-C8AAB7B86459";
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
	rename -uid "180248C0-460F-FD0D-C8B9-08978207BCA5";
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
	setAttr ".t" -type "double3" 1.9567680809018384e-015 1.360468176387009 7.2046004192796093e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1.0000000000000002 ;
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
	rename -uid "39F2A9E8-445A-7BEE-76FF-AD92BF3A68A6";
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
createNode nurbsCurve -n "faceUI_C0_root34Shape" -p "faceUI_C0_root";
	rename -uid "CD88FADA-4E30-15EF-DBDE-47BA37A1756F";
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
createNode nurbsCurve -n "faceUI_C0_root35Shape" -p "faceUI_C0_root";
	rename -uid "EDCE93F6-4A8C-C215-FCDA-58ADB1BCA963";
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
createNode nurbsCurve -n "faceUI_C0_root36Shape" -p "faceUI_C0_root";
	rename -uid "2D1885B6-461D-6B12-ED0A-FC97FE14D708";
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
	rename -uid "BA0B3409-4550-96FD-E07E-B8816F933710";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7538799546502086 -7.1054273576010019e-015 -3.8943958161623356e-016 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.7538799546502166 1.7538799546502193 1.75387995465021 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	rename -uid "9F72CC5A-4926-9B5B-2280-66A9C373E4AB";
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
	setAttr ".t" -type "double3" 9.0205620750793969e-016 -3.5527136788005009e-014 1.7723706024530678e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009501 0.95913545105009312 0.95913545105009046 ;
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
	rename -uid "3EB16441-4E01-7633-382A-67ABE40F73B7";
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
createNode nurbsCurve -n "mouth_C0_root34Shape" -p "mouth_C0_root";
	rename -uid "F62090F0-4005-146F-D89A-ACA7B6AD004C";
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
createNode nurbsCurve -n "mouth_C0_root35Shape" -p "mouth_C0_root";
	rename -uid "C3473F12-4EC7-752B-7522-AA9954C64060";
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
createNode nurbsCurve -n "mouth_C0_root36Shape" -p "mouth_C0_root";
	rename -uid "112073B8-43B0-BEE4-AE2F-329BB45E7462";
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
	rename -uid "DACBD8C0-4440-5977-2124-52AC76ADC426";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193498e-016 -0.62123610319591904 1.8022590188867551 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999589 0.99999999999999989 0.99999999999999656 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "A7335607-4F76-7CD5-B533-FB906F552D25";
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
createNode nurbsCurve -n "mouth_C0_rotcenter34Shape" -p "mouth_C0_rotcenter";
	rename -uid "A736B8B9-43DA-511A-C2F8-DFB4E19FAABC";
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
createNode nurbsCurve -n "mouth_C0_rotcenter35Shape" -p "mouth_C0_rotcenter";
	rename -uid "222F8D24-4CC8-063D-D189-1285B9001FD5";
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
createNode nurbsCurve -n "mouth_C0_rotcenter36Shape" -p "mouth_C0_rotcenter";
	rename -uid "58AB34B8-49F6-B098-BCB9-1295EB8C984E";
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
createNode nurbsCurve -n "mouth_C0_rotcenter36_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "A73CBBDA-42C8-69C2-33B7-03A701E289B8";
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
createNode nurbsCurve -n "mouth_C0_rotcenter36_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "0C877596-4052-A479-B69A-9AA28208CB79";
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
	rename -uid "49B0DACA-4D2E-2137-A39E-08B58C89DE3F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.9761536313416156e-017 0.12388352783447942 0.23628786867351437 ;
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
	rename -uid "5502F4EE-4BAB-4F79-5BE9-B7BA96EDC0A1";
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
createNode nurbsCurve -n "mouth_C0_lipup34Shape" -p "mouth_C0_lipup";
	rename -uid "E8835865-42BC-6A8A-430B-E0868E297A70";
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
createNode nurbsCurve -n "mouth_C0_lipup35Shape" -p "mouth_C0_lipup";
	rename -uid "AE2F5EA3-4655-1D79-3F5B-F9A1EA006195";
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
createNode nurbsCurve -n "mouth_C0_lipup36Shape" -p "mouth_C0_lipup";
	rename -uid "B314B5F7-41A5-0DED-55BC-659AEDEB2037";
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
createNode nurbsCurve -n "mouth_C0_lipup36_0crvShape" -p "mouth_C0_lipup";
	rename -uid "1EB26ECD-4FA5-52A7-F373-869A24F99751";
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
createNode nurbsCurve -n "mouth_C0_lipup36_1crvShape" -p "mouth_C0_lipup";
	rename -uid "53D1E59F-4A9F-F92E-86CA-08AEA526F671";
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
	rename -uid "B73BF229-48DF-15A8-3B0D-79A4D6BF31C1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904467e-015 -30.115037669761495 -2.1322109539326477 ;
	setAttr ".s" -type "double3" 1.8286050763007577 1.8286050763007604 1.8286050763007606 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "154F296E-4BE4-6239-7423-4AA3F9269FEB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "9755A0AF-4E13-6E0D-E691-3B8AB69DC337";
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
	rename -uid "5D104F05-43DD-5FD4-B3F6-F0A65875F061";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.8775621283846274e-017 -0.14678247393470301 0.18194531820222304 ;
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
	rename -uid "01B68C79-42D8-21B7-D6EE-B78CE764CBCF";
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
createNode nurbsCurve -n "mouth_C0_liplow34Shape" -p "mouth_C0_liplow";
	rename -uid "FD7D8763-44AC-4359-605F-3C8424F83FEE";
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
createNode nurbsCurve -n "mouth_C0_liplow35Shape" -p "mouth_C0_liplow";
	rename -uid "1E88908F-49CF-6172-6BE8-68BB2F0273B7";
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
createNode nurbsCurve -n "mouth_C0_liplow36Shape" -p "mouth_C0_liplow";
	rename -uid "03C52C65-4D76-75D5-D445-568B85DC3E0E";
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
createNode nurbsCurve -n "mouth_C0_liplow36_0crvShape" -p "mouth_C0_liplow";
	rename -uid "7AD83E92-4192-8FCB-4F7A-7EA5FA6D9FC3";
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
createNode nurbsCurve -n "mouth_C0_liplow36_1crvShape" -p "mouth_C0_liplow";
	rename -uid "F8A2C342-4BEB-EA27-33E3-1F86CAFA26B3";
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
	rename -uid "9EE57265-4388-B947-9946-689B00D03E6F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200162e-015 -29.844371667992309 -2.0778684034613559 ;
	setAttr ".s" -type "double3" 1.8286050763007577 1.8286050763007604 1.8286050763007606 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "CA64FAA4-4921-5F5A-250B-A3BDA1BC87C6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "9FE95F1F-4681-2C20-2AE9-61BE77C388EA";
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
	rename -uid "A405E179-4550-5821-5C07-D89FE44239D9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0917243463457497e-015 -1.4111110000774936 2.0692083234973251 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999589 0.99999999999999989 0.99999999999999656 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "D95A292A-488A-2EBE-A371-75BB1C85BDB2";
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
createNode nurbsCurve -n "mouth_C0_jaw34Shape" -p "mouth_C0_jaw";
	rename -uid "3B62A49B-4FC9-4D0E-47B5-BEB6541B5B6A";
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
createNode nurbsCurve -n "mouth_C0_jaw35Shape" -p "mouth_C0_jaw";
	rename -uid "3A4893E8-4B0F-007A-0160-838748F9D3B1";
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
createNode nurbsCurve -n "mouth_C0_jaw36Shape" -p "mouth_C0_jaw";
	rename -uid "DE45CFDF-482E-97EC-ADB4-A4ABAFD78C43";
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
createNode nurbsCurve -n "mouth_C0_jaw36_0crvShape" -p "mouth_C0_jaw";
	rename -uid "F300C7AB-4B1C-81E5-729C-AD8D0EE82E16";
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
createNode nurbsCurve -n "mouth_C0_jaw36_1crvShape" -p "mouth_C0_jaw";
	rename -uid "83B16F85-45E1-2DCF-C23A-F78DCD0898D9";
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
	rename -uid "7585A058-4DDB-17D6-B1DA-309B8D06C08C";
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
	setAttr ".t" -type "double3" 8.2909663197644073e-016 0.86108709817294482 -1.6295011454214561 ;
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
	rename -uid "B83606FD-48DB-2940-5192-ADA29FB8CAAC";
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
createNode nurbsCurve -n "tongue_C0_root34Shape" -p "tongue_C0_root";
	rename -uid "B8FF61B4-4947-F077-626C-BCAF231C407D";
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
createNode nurbsCurve -n "tongue_C0_root35Shape" -p "tongue_C0_root";
	rename -uid "5C01F44F-4D0C-7D8C-42D6-74869FDE7F49";
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
createNode nurbsCurve -n "tongue_C0_root36Shape" -p "tongue_C0_root";
	rename -uid "C702310F-494F-A5CF-16E7-F9AE42CFE5F8";
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
	rename -uid "F402F823-4063-934F-6143-1BAA60BECDC1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180641801e-016 -2.8421709430404007e-014 1.5794817263027459 ;
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
	rename -uid "A73A5870-4B1D-BC0D-267C-39A957C30A6F";
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
createNode nurbsCurve -n "tongue_C0_0_loc34Shape" -p "tongue_C0_0_loc";
	rename -uid "6E4722D0-4043-FB53-B108-7D9C0520D00F";
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
createNode nurbsCurve -n "tongue_C0_0_loc35Shape" -p "tongue_C0_0_loc";
	rename -uid "B06AF84E-46D8-959E-1F08-9A830DD33BDD";
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
createNode nurbsCurve -n "tongue_C0_0_loc36Shape" -p "tongue_C0_0_loc";
	rename -uid "A886EF75-4FFA-B708-82BC-2ABE21341E70";
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
createNode nurbsCurve -n "tongue_C0_0_loc36_0crvShape" -p "tongue_C0_0_loc";
	rename -uid "C5CE9341-4BA6-BCD5-3AAA-7887BC61222B";
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
createNode nurbsCurve -n "tongue_C0_0_loc36_1crvShape" -p "tongue_C0_0_loc";
	rename -uid "09473DA8-43BE-2195-1C5F-E7B73D152714";
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
	rename -uid "91FE37E2-4A61-4815-CF1A-5896CDD75709";
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
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "8C53F9BB-4BD8-B69D-A4CF-3DB64952EE59";
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
createNode nurbsCurve -n "tongue_C0_1_loc34Shape" -p "tongue_C0_1_loc";
	rename -uid "4986F7E8-45FC-AF44-951B-3EBE95465986";
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
createNode nurbsCurve -n "tongue_C0_1_loc35Shape" -p "tongue_C0_1_loc";
	rename -uid "0F43D70B-40B0-0361-680D-34B06C61519D";
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
createNode nurbsCurve -n "tongue_C0_1_loc36Shape" -p "tongue_C0_1_loc";
	rename -uid "A78B862E-4927-46CD-2B68-678EF44914B6";
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
createNode nurbsCurve -n "tongue_C0_1_loc36_0crvShape" -p "tongue_C0_1_loc";
	rename -uid "7CC02DFB-4207-40DC-322C-95BF96958E84";
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
createNode nurbsCurve -n "tongue_C0_1_loc36_1crvShape" -p "tongue_C0_1_loc";
	rename -uid "003ACF86-48A8-BC6D-BEC4-EC8143E959B3";
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
	rename -uid "7C35B2B1-4B2A-A3E3-A614-E58CBD131251";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544645201e-016 -0.31043663909051133 1.5794817263027365 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "04458EC3-4EB3-35B8-0990-57BEE76BD407";
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
createNode nurbsCurve -n "tongue_C0_2_loc34Shape" -p "tongue_C0_2_loc";
	rename -uid "5798642C-492B-90D9-AF11-46AC80B6DC65";
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
createNode nurbsCurve -n "tongue_C0_2_loc35Shape" -p "tongue_C0_2_loc";
	rename -uid "B6AE399D-4A0A-7766-C268-7AB372DD26AF";
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
createNode nurbsCurve -n "tongue_C0_2_loc36Shape" -p "tongue_C0_2_loc";
	rename -uid "8D33631A-42BF-780F-AE7E-5D9537FBDB80";
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
createNode nurbsCurve -n "tongue_C0_2_loc36_0crvShape" -p "tongue_C0_2_loc";
	rename -uid "2368297A-4D48-76D8-20F2-F3B8E5A15FFA";
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
createNode nurbsCurve -n "tongue_C0_2_loc36_1crvShape" -p "tongue_C0_2_loc";
	rename -uid "930283BD-4052-6979-547C-80B39FDBAD96";
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
	rename -uid "404A62B1-488A-2DFC-A656-0B9B1B713523";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0903429653440903e-016 -0.062087327818346694 1.5794817263027552 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999878 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "8D68E8DF-4193-AAC2-5782-6CAB98DAA456";
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
createNode nurbsCurve -n "tongue_C0_3_loc34Shape" -p "tongue_C0_3_loc";
	rename -uid "FFC114B4-441D-1DD1-BDE4-CD9EA66588EB";
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
createNode nurbsCurve -n "tongue_C0_3_loc35Shape" -p "tongue_C0_3_loc";
	rename -uid "7E7FA34F-47F8-CD4D-5F15-148CBB3D24BA";
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
createNode nurbsCurve -n "tongue_C0_3_loc36Shape" -p "tongue_C0_3_loc";
	rename -uid "709698E5-4D90-F26F-CE38-228C9DEA9297";
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
createNode nurbsCurve -n "tongue_C0_3_loc36_0crvShape" -p "tongue_C0_3_loc";
	rename -uid "BC135988-4902-4F3D-966E-E689DFD9B0C9";
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
createNode nurbsCurve -n "tongue_C0_3_loc36_1crvShape" -p "tongue_C0_3_loc";
	rename -uid "28E13A71-4AD7-E374-3EFF-B8BFCB1EDAB1";
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
	rename -uid "8A08D85C-4551-276C-5461-1E9EE186E99D";
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
	rename -uid "E2643768-4C1F-0097-F7C1-DA8C89D9D9B4";
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
createNode aimConstraint -n "tongue_C0_blade_aimConstraint12" -p "tongue_C0_blade";
	rename -uid "A727B110-4E1B-F090-06BD-5C9AEC7A0794";
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
createNode pointConstraint -n "tongue_C0_blade_pointConstraint12" -p "tongue_C0_blade";
	rename -uid "D7620C69-4DBF-C813-03E2-CDA3D1F885AB";
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
	rename -uid "A0E72872-4A29-75FC-C06B-C48EC3AE4D18";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046799e-014 -175.06339877760738 -3.1060024283289889 ;
	setAttr ".s" -type "double3" 10.648590201596397 10.648590201596416 10.648590201596406 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "CA67468B-44C2-949B-BE44-1CB697A618E2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "171BEE81-4711-327E-4A4F-DEB3B7B8C4CF";
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
	rename -uid "2C7B7AC3-4116-6EDA-344B-3D9E06845B55";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-015 -30.612390245122914 -0.093664066372369542 ;
	setAttr ".s" -type "double3" 1.8286050763007495 1.8286050763007591 1.8286050763007526 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "71B72896-479A-8EE1-DCD2-F890683C98C9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "48F405A8-414E-6C2A-1E0D-E3ABA906C89A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv12" -p "mouth_C0_root";
	rename -uid "8BBC6146-4110-68F6-69C0-0EA8CB7751F7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-015 -30.612390245122914 -0.093664066372369542 ;
	setAttr ".s" -type "double3" 1.8286050763007495 1.8286050763007591 1.8286050763007526 ;
createNode nurbsCurve -n "mouth_C0_crv12Shape" -p "mouth_C0_crv12";
	rename -uid "FBF18667-4A52-504C-ECBE-F0B197C3D39E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv12ShapeOrig" -p "mouth_C0_crv12";
	rename -uid "2E35150C-4133-50E9-FD71-CFB3C5615F9C";
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
	rename -uid "239E75FC-4523-CDBE-B669-4CA02B6D025F";
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
	setAttr ".t" -type "double3" -5.26139926662895 0.71045535901631496 -3.3130608822386173e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932599 1.6711445512932537 1.6711445512932519 ;
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
	rename -uid "613572A9-4F2C-DFB2-F37C-55BB5313A703";
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
createNode nurbsCurve -n "eyeslook_C0_root34Shape" -p "eyeslook_C0_root";
	rename -uid "A403BFEA-491E-C04F-06A6-DDB10B599188";
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
createNode nurbsCurve -n "eyeslook_C0_root35Shape" -p "eyeslook_C0_root";
	rename -uid "1D24AC80-4711-1AA9-C455-71B647CBF95A";
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
createNode nurbsCurve -n "eyeslook_C0_root36Shape" -p "eyeslook_C0_root";
	rename -uid "BFF38E95-4C0E-9F84-0D2F-D4A9BD2116A6";
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
	rename -uid "D599D391-4115-A1D2-4132-37BAFE093475";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6607527914310027e-016 1.4210854715202004e-014 1.0495082267377378 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377327 1.0495082267377394 1.0495082267377347 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "5D69F684-40F2-4E6E-A7C4-2B89151AFB6D";
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
	setAttr ".t" -type "double3" -1.4961368484464235 0.70921581084613194 -0.51425464314724312 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 0.99999999999999944 -0.99999999999999811 ;
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
	rename -uid "D384C42E-4267-9EC5-5321-12828B22D038";
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
createNode nurbsCurve -n "eye_R0_root34Shape" -p "eye_R0_root";
	rename -uid "E1C84A93-45BC-33E1-689E-45A48A7C7C3D";
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
createNode nurbsCurve -n "eye_R0_root35Shape" -p "eye_R0_root";
	rename -uid "B0C4ED65-466B-8E1B-1CC4-1AAADC516E3F";
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
createNode nurbsCurve -n "eye_R0_root36Shape" -p "eye_R0_root";
	rename -uid "E2DE882D-449D-012D-46C8-0A8C6D81664A";
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
	rename -uid "CD35A701-4CA3-14D1-A99F-F4B6A630B0B4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.5511151231257827e-016 0 3.769784225717923 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "AE993510-4422-AD66-7A77-FFAFE7694FFD";
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
createNode nurbsCurve -n "eye_R0_look34Shape" -p "eye_R0_look";
	rename -uid "2BB885C1-4E7E-A5D3-43C6-DBAF2868E5A7";
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
createNode nurbsCurve -n "eye_R0_look35Shape" -p "eye_R0_look";
	rename -uid "9C0AD231-4470-F960-0590-CB882462A5DF";
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
createNode nurbsCurve -n "eye_R0_look36Shape" -p "eye_R0_look";
	rename -uid "1D408213-47AF-5065-1E6D-BCAC2CCC9942";
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
createNode nurbsCurve -n "eye_R0_look36_0crvShape" -p "eye_R0_look";
	rename -uid "7E58A7C4-4A2A-0E17-3786-9F9AF011A8DF";
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
createNode nurbsCurve -n "eye_R0_look36_1crvShape" -p "eye_R0_look";
	rename -uid "C55B3C5A-44B9-0FFC-DAB2-78B328B913EC";
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
	rename -uid "E50F74C0-4B7D-DE5C-9126-44BE5DC4BBD9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723901 -30.07064453632362 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.7538799546502168 1.7538799546502193 -1.7538799546502111 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "0F23D2A7-4ED7-D98C-2F48-DFAC22EF2ED5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "B7552AE8-4B3A-0E56-3593-F090A6D584E1";
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
	rename -uid "1E107B59-4247-317D-D616-1A8202692FF4";
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
	setAttr ".t" -type "double3" -1.4961368484464219 0.70921581084613194 0.51425464314724101 ;
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
	rename -uid "61C7CB52-4D0F-12D0-6D99-ED95FE48691B";
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
createNode nurbsCurve -n "eye_L0_root34Shape" -p "eye_L0_root";
	rename -uid "7943FAE0-48C7-A2F6-A120-9EAFE595832F";
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
createNode nurbsCurve -n "eye_L0_root35Shape" -p "eye_L0_root";
	rename -uid "44A27D45-4BDF-CF48-5554-5EA4EDEE111D";
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
createNode nurbsCurve -n "eye_L0_root36Shape" -p "eye_L0_root";
	rename -uid "C4FA6EA7-4003-1CF3-D5F1-898C9D24B738";
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
	rename -uid "107A6407-4C69-74FD-2826-8FA8C05791F3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 -3.5527136788005009e-015 3.7697842257179142 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999578 0.99999999999999956 0.999999999999997 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "584C14FC-4D99-D8B0-2D7C-8385C0EF02D2";
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
createNode nurbsCurve -n "eye_L0_look34Shape" -p "eye_L0_look";
	rename -uid "BEDBEAC6-495B-40C7-3D9F-94A20BF90E9A";
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
createNode nurbsCurve -n "eye_L0_look35Shape" -p "eye_L0_look";
	rename -uid "56632E35-4526-A136-A21D-23AEE42B56FC";
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
createNode nurbsCurve -n "eye_L0_look36Shape" -p "eye_L0_look";
	rename -uid "32FAAABD-4319-B660-69C0-798603AD4594";
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
createNode nurbsCurve -n "eye_L0_look36_0crvShape" -p "eye_L0_look";
	rename -uid "545801E1-4436-D369-155C-6EAAC3E99B48";
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
createNode nurbsCurve -n "eye_L0_look36_1crvShape" -p "eye_L0_look";
	rename -uid "40048194-4CAB-4280-E9C0-65B9F7DE7637";
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
	rename -uid "CDBAB433-4926-899B-6B72-4BAC6D14EBD5";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724501 -30.07064453632362 -1.5859733749936711 ;
	setAttr ".s" -type "double3" 1.7538799546502135 1.7538799546502195 1.7538799546502075 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "C3016929-4E84-0B8F-25F8-8EA3BF7B2E71";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "68CDFAC8-43D6-A8BA-7429-BBB5F69D314B";
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
	rename -uid "0993C8C1-4ADB-56F8-3A84-99BD70E64B79";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211562868 -0.34322132772766167 -2.0300963192815689e-017 ;
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
	rename -uid "675BA2ED-42EC-DC97-DBC4-999264204F4B";
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
createNode nurbsCurve -n "neck_C0_tanShape24" -p "neck_C0_tan1";
	rename -uid "AE0E404C-48CC-C1A1-DBB8-8BA262BF9D09";
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
createNode nurbsCurve -n "neck_C0_tanShape25" -p "neck_C0_tan1";
	rename -uid "C681BE0D-4AB3-4870-4F0B-7BBAF40A8CA3";
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
createNode nurbsCurve -n "neck_C0_tanShape26" -p "neck_C0_tan1";
	rename -uid "86B61779-43D4-21E8-CFA8-65BB481CB98D";
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
createNode nurbsCurve -n "neck_C0_tan24_0crvShape" -p "neck_C0_tan1";
	rename -uid "380EE491-4645-0C1D-240F-6C996136F541";
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
createNode nurbsCurve -n "neck_C0_tan24_1crvShape" -p "neck_C0_tan1";
	rename -uid "26EAF5DF-487C-45AF-03BD-2FBE8E666B3D";
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
	rename -uid "E6600473-4C5F-97E3-93DE-B4BE46BEBCCF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.08983652654724919 -29.261428725477415 -4.0684386981538041e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502162 1.7538799546502186 1.7538799546502084 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "FB04DA14-40A5-63AB-A8B4-429B41A06F63";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "0AD6354D-4ECF-F2BA-C1A8-4FB1BD036078";
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
	rename -uid "768DEF50-4242-0227-6B51-9FB9AA05606C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198171381 0.45329667709497912 3.8508704761367353e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999567 0.99999999999999623 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "18B480E9-456E-5A05-F11C-69B7227416CB";
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
createNode nurbsCurve -n "neck_C0_tanShape23" -p "neck_C0_tan0";
	rename -uid "6A0F4E47-4C33-B2FC-F7E5-6399D8F96EE6";
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
createNode nurbsCurve -n "neck_C0_tanShape24" -p "neck_C0_tan0";
	rename -uid "CF14EB07-47FC-B8DC-A4D6-4D9360656DC4";
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
createNode nurbsCurve -n "neck_C0_tanShape25" -p "neck_C0_tan0";
	rename -uid "45794C49-48D8-054D-C684-DB9C6DFB0AE0";
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
createNode nurbsCurve -n "neck_C0_tan23_0crvShape" -p "neck_C0_tan0";
	rename -uid "F423DCC3-4B43-8587-5F46-F7BC1327881C";
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
createNode nurbsCurve -n "neck_C0_tan23_1crvShape" -p "neck_C0_tan0";
	rename -uid "142101DC-485A-857C-8305-589CF93DB323";
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
	rename -uid "83A72B7E-4D00-6AC0-D720-EAA9AB1923E7";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 360 -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932497 1.6711445512932441 1.6711445512932424 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "507B968E-43E8-DBEE-3D5C-969CC888100B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546209 0 0
		0 0.11967845620848737 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint12" -p "neck_C0_blade";
	rename -uid "3FF978B5-4010-5E6D-A2C2-DAA1C8407498";
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
	setAttr ".o" -type "double3" 360 0 359.99999999999972 ;
	setAttr ".rsrr" -type "double3" 540 3.3898800369025213e-029 459.58898802263559 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint12" -p "neck_C0_blade";
	rename -uid "1E36161A-44F1-D887-D8F5-E7A9E1FC7B6A";
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
	setAttr ".rst" -type "double3" 1.1102230246251565e-016 -3.5527136788005009e-015 
		7.8886090522101181e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "7A0AAFD3-43BB-FA3C-E917-ABAB6B3265E9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916114 -26.793934099519536 -3.9146096093576495e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502157 1.753879954650212 1.7538799546502009 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "5237B332-481C-2859-C191-678C4E9F6662";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "C30F4A91-4592-0476-B5B9-599DA65E576C";
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
	rename -uid "3A22A2C4-4D64-DCB5-073D-AEB8577833A2";
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
	setAttr ".t" -type "double3" 1.7395848890977401 -0.016853043661003431 0.11673327753265021 ;
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
	rename -uid "352CF432-485A-4229-7EFB-C5B96E190D73";
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
createNode nurbsCurve -n "shoulder_R0_root10Shape" -p "shoulder_R0_root";
	rename -uid "C4660926-4438-C143-3C6F-29B94093DDC1";
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
createNode nurbsCurve -n "shoulder_R0_root11Shape" -p "shoulder_R0_root";
	rename -uid "8C905C72-4EF7-197E-C904-1D96C1C759B4";
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
createNode nurbsCurve -n "shoulder_R0_root12Shape" -p "shoulder_R0_root";
	rename -uid "AFAA15F6-4E90-5701-9A3B-699E1C502D08";
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
	rename -uid "544E33E6-41E4-4A15-755A-88A5AE02B5EB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645495 -0.91350954729966927 -1.5239746815175854 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999567 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "8F49699D-48BC-151F-7E45-A297E6006490";
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
createNode nurbsCurve -n "shoulder_R0_tip10Shape" -p "shoulder_R0_tip";
	rename -uid "B7D104D2-4A41-4636-983E-F98DE509A901";
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
createNode nurbsCurve -n "shoulder_R0_tip11Shape" -p "shoulder_R0_tip";
	rename -uid "72EB2FBB-4B15-8F24-9A25-E5858CD159D9";
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
createNode nurbsCurve -n "shoulder_R0_tip12Shape" -p "shoulder_R0_tip";
	rename -uid "45CB1680-493F-F029-A351-4E80DC870029";
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
createNode nurbsCurve -n "shoulder_R0_tip12_0crvShape" -p "shoulder_R0_tip";
	rename -uid "41A8BE64-4CCE-2829-F6D0-5382E42E67DA";
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
createNode nurbsCurve -n "shoulder_R0_tip12_1crvShape" -p "shoulder_R0_tip";
	rename -uid "CE52F06D-4529-D386-BE90-C5AE94EB9BBD";
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
	rename -uid "9C4D1DB3-473E-A3E4-5295-1486AD4C840A";
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
	setAttr ".t" -type "double3" 1.9539925233402755e-014 5.5511151231257827e-016 -2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.41121298317988 -5.471043440538546 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999856 1.0000000000000009 ;
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
	rename -uid "CC5CE704-47FE-6ABC-DBE5-E3872FECF6BA";
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
createNode nurbsCurve -n "arm_R0_root10Shape" -p "arm_R0_root";
	rename -uid "F97C13AB-4B71-60E3-4413-04B20EFF9E97";
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
createNode nurbsCurve -n "arm_R0_root11Shape" -p "arm_R0_root";
	rename -uid "FB7BAED9-4FA2-59C8-7FE9-CFAFCDEFC024";
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
createNode nurbsCurve -n "arm_R0_root12Shape" -p "arm_R0_root";
	rename -uid "B3E6A535-4233-97A5-D144-AFA78F54B6FA";
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
	rename -uid "7772DB2A-4930-44C7-323A-73A3A738954F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323212 1.0658141036401503e-014 0.078976790252912155 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784324 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999997 0.99999999999999867 0.99999999999999778 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "FF742971-4D51-1E39-AFC1-DF87AA0DC944";
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
createNode nurbsCurve -n "arm_R0_elbow10Shape" -p "arm_R0_elbow";
	rename -uid "DB3AFC8D-45E1-1D45-C073-61B60F303984";
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
createNode nurbsCurve -n "arm_R0_elbow11Shape" -p "arm_R0_elbow";
	rename -uid "81090C75-4E3C-DA65-B040-F695D809E9C5";
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
createNode nurbsCurve -n "arm_R0_elbow12Shape" -p "arm_R0_elbow";
	rename -uid "BAC33065-4BD1-2AC9-711D-4BB1BC38D2A5";
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
createNode nurbsCurve -n "arm_R0_elbow12_0crvShape" -p "arm_R0_elbow";
	rename -uid "0E8E370D-4F10-37AA-DE86-6BBE82F52ED6";
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
createNode nurbsCurve -n "arm_R0_elbow12_1crvShape" -p "arm_R0_elbow";
	rename -uid "99ECF7E9-4D66-529A-57BD-A1B91E17B26E";
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
	rename -uid "6DED29C4-4403-D157-CF77-27BF0FF2424A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891497085 -3.5527136788005009e-015 -0.11960611218230643 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 1.000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "D60E279D-46C7-453E-CB63-80A4916AD704";
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
createNode nurbsCurve -n "arm_R0_wrist10Shape" -p "arm_R0_wrist";
	rename -uid "7C14FF81-47BE-5AD5-540C-F798B343652F";
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
createNode nurbsCurve -n "arm_R0_wrist11Shape" -p "arm_R0_wrist";
	rename -uid "2AB67A66-4BC2-10A0-0351-148BCA627929";
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
createNode nurbsCurve -n "arm_R0_wrist12Shape" -p "arm_R0_wrist";
	rename -uid "3D83D8B2-491A-61EE-BA29-779F766FCD1F";
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
createNode nurbsCurve -n "arm_R0_wrist12_0crvShape" -p "arm_R0_wrist";
	rename -uid "2F8610C7-42F6-8D89-36E5-CD811987365B";
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
createNode nurbsCurve -n "arm_R0_wrist12_1crvShape" -p "arm_R0_wrist";
	rename -uid "E0B35944-4FCF-EDC4-AABF-3698F89F97BC";
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
	rename -uid "6972B73D-4001-ECD8-90BA-409E8EC77901";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308188 7.1054273576010019e-015 4.7184478546569153e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "CFF064F7-4953-AB88-93C9-83A5FDF69457";
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
createNode nurbsCurve -n "arm_R0_eff10Shape" -p "arm_R0_eff";
	rename -uid "C58A7E3D-460E-6F4C-4E2F-4EADD0A9EA8B";
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
createNode nurbsCurve -n "arm_R0_eff11Shape" -p "arm_R0_eff";
	rename -uid "76377C5E-48FC-119D-A00E-20907D5E6D1C";
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
createNode nurbsCurve -n "arm_R0_eff12Shape" -p "arm_R0_eff";
	rename -uid "9FD07A4A-45F6-D84D-511D-FA9758ED49A5";
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
createNode nurbsCurve -n "arm_R0_eff12_0crvShape" -p "arm_R0_eff";
	rename -uid "4F1F2691-4B43-4A6C-7906-7CA1D090044C";
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
createNode nurbsCurve -n "arm_R0_eff12_1crvShape" -p "arm_R0_eff";
	rename -uid "8A385808-47DA-91CD-A04C-7AB99C833B2F";
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
	rename -uid "6690443D-4775-2DD6-EDA9-5B9D13AB666B";
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
	setAttr ".t" -type "double3" -1.2124561875008051 0.56073114764517662 -0.29276117198398977 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000009 1.0000000000000011 ;
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
	rename -uid "EC325521-4466-83B2-F8A6-62B1BE12EC26";
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
createNode nurbsCurve -n "armUI_R0_root10Shape" -p "armUI_R0_root";
	rename -uid "09ED70B8-4C9A-D92D-1C25-0FAF72886871";
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
createNode nurbsCurve -n "armUI_R0_root11Shape" -p "armUI_R0_root";
	rename -uid "65D2B1A1-4343-F847-8127-DC909C43799A";
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
createNode nurbsCurve -n "armUI_R0_root12Shape" -p "armUI_R0_root";
	rename -uid "14715970-49A3-1123-D945-29BE4227DA44";
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
	rename -uid "AC89C8E8-408A-29FB-AE90-BCBF30618C86";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.113476230858089 -0.027001577630489493 1.0430060296210664 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145881321 3.3190804973696628 45.379324150247683 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377429 1.049508226737738 1.0495082267377405 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_R0_root" -p "arm_R0_eff";
	rename -uid "D6E45164-4531-2376-6CCE-CB89E29F0A7A";
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
	setAttr ".t" -type "double3" -1.0556240028445694 -0.075350553640973317 0.3529622528885028 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008866544 93.717381466937226 86.46796012747771 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716952 0.30838721081716947 0.30838721081716963 ;
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
	rename -uid "8904378F-4446-1C4B-23F5-199B583E68C0";
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
createNode nurbsCurve -n "meta_R0_root10Shape" -p "meta_R0_root";
	rename -uid "7C89ADA3-4B8D-E87B-C1EF-B4B6D0AE9E1B";
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
createNode nurbsCurve -n "meta_R0_root11Shape" -p "meta_R0_root";
	rename -uid "5F1EFDE2-4742-4082-C1BC-0B94E968317B";
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
createNode nurbsCurve -n "meta_R0_root12Shape" -p "meta_R0_root";
	rename -uid "F121709E-4468-7A8E-9C44-3594A41AAEB4";
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
	rename -uid "FCC665B7-4E10-70D3-7678-B8A7A2181705";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6632084735361734 7.1054273576010019e-015 -3.1974423109204508e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999922 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "E1914917-4047-3806-20F0-F5875B2DC0CB";
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
createNode nurbsCurve -n "meta_R0_0_loc10Shape" -p "meta_R0_0_loc";
	rename -uid "4AFB60D1-4819-99EC-241D-CDA9F469CF21";
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
createNode nurbsCurve -n "meta_R0_0_loc11Shape" -p "meta_R0_0_loc";
	rename -uid "0B748AA0-4148-F9C9-20C1-E1B80A76BB52";
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
createNode nurbsCurve -n "meta_R0_0_loc12Shape" -p "meta_R0_0_loc";
	rename -uid "17D674F2-4DC2-BC0B-CE37-DEAEE663FB83";
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
createNode nurbsCurve -n "meta_R0_0_loc12_0crvShape" -p "meta_R0_0_loc";
	rename -uid "1C114045-466F-B674-913D-EA9A89772457";
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
createNode nurbsCurve -n "meta_R0_0_loc12_1crvShape" -p "meta_R0_0_loc";
	rename -uid "E093DB7D-4526-5912-1486-06A5EB4090E9";
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
	rename -uid "60B6D417-48FE-8BFD-A20E-7FAACBA4BEAE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618229 -7.1054273576010019e-015 1.4210854715202004e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "DAEC6BDC-4649-299D-249D-C4B9970211A7";
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
createNode nurbsCurve -n "meta_R0_1_loc10Shape" -p "meta_R0_1_loc";
	rename -uid "76A0C0E7-405B-9E51-6993-D28A62705B15";
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
createNode nurbsCurve -n "meta_R0_1_loc11Shape" -p "meta_R0_1_loc";
	rename -uid "D1924A28-4B52-CBAC-769C-72B98CEEF495";
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
createNode nurbsCurve -n "meta_R0_1_loc12Shape" -p "meta_R0_1_loc";
	rename -uid "86E68ABE-4131-F720-5C91-81B3BE7EF480";
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
createNode nurbsCurve -n "meta_R0_1_loc12_0crvShape" -p "meta_R0_1_loc";
	rename -uid "0F0317F9-4348-5A06-D746-C78FB1BB4F0A";
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
createNode nurbsCurve -n "meta_R0_1_loc12_1crvShape" -p "meta_R0_1_loc";
	rename -uid "E9C71BB4-48C9-2238-7C4F-71AAC55256E7";
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
	rename -uid "E43FB524-4141-865F-7622-DD92850A2EF6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618362 7.1054273576010019e-015 -3.1974423109204508e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999856 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "A3AD0CB1-42C3-68BC-5C5F-0E8538074856";
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
createNode nurbsCurve -n "meta_R0_2_loc10Shape" -p "meta_R0_2_loc";
	rename -uid "9EE8C0AF-4C25-A609-D20F-7BA9C4D6BEFE";
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
createNode nurbsCurve -n "meta_R0_2_loc11Shape" -p "meta_R0_2_loc";
	rename -uid "4EE55D34-48AF-9761-C982-6A8D3A7B5D36";
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
createNode nurbsCurve -n "meta_R0_2_loc12Shape" -p "meta_R0_2_loc";
	rename -uid "043F19F7-443F-8A19-0CFF-7E963694BE1D";
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
createNode nurbsCurve -n "meta_R0_2_loc12_0crvShape" -p "meta_R0_2_loc";
	rename -uid "900E626B-4A2E-BD89-7A20-69BC532E0CDB";
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
createNode nurbsCurve -n "meta_R0_2_loc12_1crvShape" -p "meta_R0_2_loc";
	rename -uid "89129CEF-4BBA-97CF-4281-37BB16A24417";
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
	rename -uid "2D3A8BB3-4DC7-7F2F-C326-8CAA72EADF21";
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
	setAttr ".t" -type "double3" 0.27518484001103216 -0.17360051577776403 2.494679934179068 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878601971 -68.587073855452516 -5.8163374181189971 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661792 1.292966824566181 ;
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
	rename -uid "946716FF-471B-22D7-6CD3-5B9954B5AEE8";
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
createNode nurbsCurve -n "finger_R3_root10Shape" -p "finger_R3_root";
	rename -uid "BAA1185F-4BF1-4285-ADA5-D7B6F7173313";
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
createNode nurbsCurve -n "finger_R3_root11Shape" -p "finger_R3_root";
	rename -uid "C46E5E13-4320-3E1E-B6A3-50901F1DD754";
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
createNode nurbsCurve -n "finger_R3_root12Shape" -p "finger_R3_root";
	rename -uid "7C616003-4B56-E4BF-4C7E-93845DA0C1B3";
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
	rename -uid "B0EAC756-4411-6630-CE55-22B4E3CF2303";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561312 3.1974423109204508e-014 -4.8849813083506888e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "9AB9EBB5-480D-D06B-609E-6694DE5849C0";
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
createNode nurbsCurve -n "finger_R3_0_loc10Shape" -p "finger_R3_0_loc";
	rename -uid "55EF0979-44BE-70DB-D960-8ABA5F6F956A";
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
createNode nurbsCurve -n "finger_R3_0_loc11Shape" -p "finger_R3_0_loc";
	rename -uid "EE35C295-4270-C416-1408-61B9CDEF6669";
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
createNode nurbsCurve -n "finger_R3_0_loc12Shape" -p "finger_R3_0_loc";
	rename -uid "F010B775-4D3F-77B9-74D5-E2BDD199595D";
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
createNode nurbsCurve -n "finger_R3_0_loc12_0crvShape" -p "finger_R3_0_loc";
	rename -uid "08392BB5-4F4F-9EA8-2495-56927B3F105E";
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
createNode nurbsCurve -n "finger_R3_0_loc12_1crvShape" -p "finger_R3_0_loc";
	rename -uid "D7E87D16-4B1E-70BE-E81D-929823DA3629";
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
	rename -uid "ED852653-4129-380F-7324-659A67114B61";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876839 -2.4868995751603507e-014 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999922 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "9685E903-48B1-F735-3DE8-F18CEC99E0F7";
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
createNode nurbsCurve -n "finger_R3_1_loc10Shape" -p "finger_R3_1_loc";
	rename -uid "94127601-4C64-41A3-6814-DA8EE8D2C1D8";
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
createNode nurbsCurve -n "finger_R3_1_loc11Shape" -p "finger_R3_1_loc";
	rename -uid "79BD5A38-423E-FCE8-6455-FD8DFF4093E1";
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
createNode nurbsCurve -n "finger_R3_1_loc12Shape" -p "finger_R3_1_loc";
	rename -uid "55831E49-4353-3389-6F1C-C981DFAA4028";
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
createNode nurbsCurve -n "finger_R3_1_loc12_0crvShape" -p "finger_R3_1_loc";
	rename -uid "8A6A512E-4ED0-51A2-F2EA-6BB457B52168";
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
createNode nurbsCurve -n "finger_R3_1_loc12_1crvShape" -p "finger_R3_1_loc";
	rename -uid "2EAAC419-4BA3-173B-2649-3784D82B188A";
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
	rename -uid "60D5A69E-4B89-A533-FB1D-32B2F1110CF3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193368 0 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000024 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "F5AF70DD-4037-BEFE-9C65-70BFE3B4A36E";
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
createNode nurbsCurve -n "finger_R3_2_loc10Shape" -p "finger_R3_2_loc";
	rename -uid "67F418A7-4E68-A107-DCA3-E394FC488237";
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
createNode nurbsCurve -n "finger_R3_2_loc11Shape" -p "finger_R3_2_loc";
	rename -uid "A2A389AA-4E22-C28F-FD20-C587236CEAC6";
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
createNode nurbsCurve -n "finger_R3_2_loc12Shape" -p "finger_R3_2_loc";
	rename -uid "99DA2230-4084-A1FD-5EAD-DFA5518A7145";
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
createNode nurbsCurve -n "finger_R3_2_loc12_0crvShape" -p "finger_R3_2_loc";
	rename -uid "8DB6AAB7-479D-25D3-5498-09807F6918E1";
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
createNode nurbsCurve -n "finger_R3_2_loc12_1crvShape" -p "finger_R3_2_loc";
	rename -uid "460F0089-4916-D072-ECBF-D7A34549EDC9";
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
	rename -uid "00C21D75-4A1A-2051-E089-339951852718";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000002 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "10583885-4912-E74A-91A2-B7B99A8A968D";
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
createNode aimConstraint -n "finger_R3_blade_aimConstraint4" -p "finger_R3_blade";
	rename -uid "8DA073FF-448B-360F-B252-6BB0534536C1";
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
createNode pointConstraint -n "finger_R3_blade_pointConstraint4" -p "finger_R3_blade";
	rename -uid "677A6CC4-40EF-C9CB-7E7E-5480C16D93BE";
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
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "93338D2F-4E79-E253-A78E-F78EDC5C65C9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754177 -29.032786855763412 1.4804327725059956 ;
	setAttr ".r" -type "double3" 7.5791665394160406 165.69575562110086 49.348303523762183 ;
	setAttr ".s" -type "double3" 2.6320983106786149 2.6320983106786029 -2.6320983106786051 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "130D9FF9-472F-4811-17B6-BD86209C4BBF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "CA15C3D1-4597-D8D9-DCC8-9A8D7093D63C";
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
	rename -uid "3F12BE54-4500-AB31-2370-4A8E072336FE";
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
	setAttr ".t" -type "double3" 0.214042012321221 -0.17620518664703155 2.8414845756647242 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121378332 -82.086889237978866 -14.829711404953695 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661781 1.2929668245661796 ;
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
	rename -uid "E161505F-430E-8555-A6DF-65B227BF0651";
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
createNode nurbsCurve -n "finger_R2_root10Shape" -p "finger_R2_root";
	rename -uid "FA370717-4632-7361-1740-01919181D752";
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
createNode nurbsCurve -n "finger_R2_root11Shape" -p "finger_R2_root";
	rename -uid "B4D09549-4D6C-F4A3-9F84-2EAA1EC50D15";
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
createNode nurbsCurve -n "finger_R2_root12Shape" -p "finger_R2_root";
	rename -uid "3694F6E5-4B6B-E338-296D-2FB28F9E3174";
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
	rename -uid "266F70C6-47A7-A5AD-C5FF-B08EF0536A68";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.9450138721740835 -1.4210854715202004e-014 2.6645352591003757e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000018 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "9392EE4C-4773-B17B-6552-139E15F5BF38";
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
createNode nurbsCurve -n "finger_R2_0_loc10Shape" -p "finger_R2_0_loc";
	rename -uid "DC1122D3-4536-C1AF-2AB8-EBB146BC367B";
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
createNode nurbsCurve -n "finger_R2_0_loc11Shape" -p "finger_R2_0_loc";
	rename -uid "77935CD3-4EB7-F826-45CE-83A645D58FD8";
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
createNode nurbsCurve -n "finger_R2_0_loc12Shape" -p "finger_R2_0_loc";
	rename -uid "B47535A7-4499-FD00-A2D2-C39A6085D74E";
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
createNode nurbsCurve -n "finger_R2_0_loc12_0crvShape" -p "finger_R2_0_loc";
	rename -uid "B9A7B8CF-4288-16DF-33D0-92812F94D594";
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
createNode nurbsCurve -n "finger_R2_0_loc12_1crvShape" -p "finger_R2_0_loc";
	rename -uid "F5956876-4517-F930-36CD-44909644AF71";
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
	rename -uid "F52B370A-46A5-7619-4AF3-77AC8617392E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587173868 1.7763568394002505e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 0.999999999999999 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "E745E085-4397-2766-62CF-A3B0B4C39E1C";
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
createNode nurbsCurve -n "finger_R2_1_loc10Shape" -p "finger_R2_1_loc";
	rename -uid "E271D6C6-4995-C837-FEC9-DEB190FBB6BE";
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
createNode nurbsCurve -n "finger_R2_1_loc11Shape" -p "finger_R2_1_loc";
	rename -uid "97ECBC57-4078-EB1E-B10B-49B03F3F4F1E";
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
createNode nurbsCurve -n "finger_R2_1_loc12Shape" -p "finger_R2_1_loc";
	rename -uid "754B701B-43FD-6FE7-0BB4-EFB1B7E3D07F";
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
createNode nurbsCurve -n "finger_R2_1_loc12_0crvShape" -p "finger_R2_1_loc";
	rename -uid "4DB0E0F8-46C8-29E6-9FCB-CA83D00AD67D";
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
createNode nurbsCurve -n "finger_R2_1_loc12_1crvShape" -p "finger_R2_1_loc";
	rename -uid "77D94421-481E-6990-12AA-33AE7033946C";
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
	rename -uid "4895F0A9-499F-277A-A92C-AB899CDBD635";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915976 -2.8421709430404007e-014 -1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000004 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "47EAB1BC-4834-17AE-1D77-788A129903A1";
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
createNode nurbsCurve -n "finger_R2_2_loc10Shape" -p "finger_R2_2_loc";
	rename -uid "78A2118D-4909-54FE-87CA-04A14EDC0EDB";
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
createNode nurbsCurve -n "finger_R2_2_loc11Shape" -p "finger_R2_2_loc";
	rename -uid "318A28C2-4775-88BA-ED8A-9988CD9C38BF";
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
createNode nurbsCurve -n "finger_R2_2_loc12Shape" -p "finger_R2_2_loc";
	rename -uid "1BDB0098-46A4-FE15-B554-F9AA39D18B63";
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
createNode nurbsCurve -n "finger_R2_2_loc12_0crvShape" -p "finger_R2_2_loc";
	rename -uid "C59BEA57-4390-70A7-B8B4-1897046872BF";
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
createNode nurbsCurve -n "finger_R2_2_loc12_1crvShape" -p "finger_R2_2_loc";
	rename -uid "4739D79A-419E-68B7-2841-DDBDC59DD687";
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
	rename -uid "7C6BAA69-4650-FE3D-6D74-DCA7B1356240";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000018 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "C4132FD6-4800-AC31-9679-8A80BCAD1996";
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
createNode aimConstraint -n "finger_R2_blade_aimConstraint4" -p "finger_R2_blade";
	rename -uid "9DD59BC6-4E22-E456-5FC3-17B18E8D7EA7";
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
createNode pointConstraint -n "finger_R2_blade_pointConstraint4" -p "finger_R2_blade";
	rename -uid "B487E6A0-4525-6238-ACAB-C1B5775DF634";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "0C671BD7-42DA-64CC-D134-16B680CB25A9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931308993 -29.023661369441452 1.4173349723107282 ;
	setAttr ".r" -type "double3" 0.54140613099364243 178.4095195003531 47.737641631364014 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786002 -2.632098310678606 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "3FBAB2AD-4DB0-4B22-CB0F-F983C25F3476";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "8F14D863-41BB-433A-A0CE-07AA07D95C34";
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
	rename -uid "77118768-4A2B-09AE-B41C-E0B95609909B";
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
	setAttr ".t" -type "double3" -0.0077643969606007168 -0.1235840669671262 2.9483952421545823 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870024 -79.977014017423301 -112.77222628638587 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661785 1.2929668245661796 1.2929668245661783 ;
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
	rename -uid "2545A206-4D69-7BCC-A677-55BA2ED790C2";
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
createNode nurbsCurve -n "finger_R1_root10Shape" -p "finger_R1_root";
	rename -uid "E40A2F93-466B-CC88-8732-24B316B4A09E";
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
createNode nurbsCurve -n "finger_R1_root11Shape" -p "finger_R1_root";
	rename -uid "5B9A93B6-4264-8AFB-2288-6098B1D76384";
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
createNode nurbsCurve -n "finger_R1_root12Shape" -p "finger_R1_root";
	rename -uid "2A90F99B-4407-734C-0174-1090B5A475AE";
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
	rename -uid "B231F02C-4901-2B36-57E5-84A5DB30D3FD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998757 2.4868995751603507e-014 -4.2188474935755949e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "D70290D6-4508-7236-79AB-3297DC563230";
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
createNode nurbsCurve -n "finger_R1_0_loc10Shape" -p "finger_R1_0_loc";
	rename -uid "1651D1A5-48CE-1ABE-A620-4DA8A8A2C1DA";
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
createNode nurbsCurve -n "finger_R1_0_loc11Shape" -p "finger_R1_0_loc";
	rename -uid "70F52E8D-46A0-7027-0A89-6C926B9CC38A";
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
createNode nurbsCurve -n "finger_R1_0_loc12Shape" -p "finger_R1_0_loc";
	rename -uid "343BA841-4C2B-7842-7DEC-05B710DB84CD";
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
createNode nurbsCurve -n "finger_R1_0_loc12_0crvShape" -p "finger_R1_0_loc";
	rename -uid "CB55FD41-4740-FC63-43EB-1B8F0458A9B1";
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
createNode nurbsCurve -n "finger_R1_0_loc12_1crvShape" -p "finger_R1_0_loc";
	rename -uid "E934941B-47AC-261E-F80D-B79265F6AEA6";
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
	rename -uid "999CCC56-4111-A213-B4A6-5DB44CF977C4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414018794 1.0658141036401503e-014 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "26C239C9-4872-596C-70E5-65B297B63F9E";
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
createNode nurbsCurve -n "finger_R1_1_loc10Shape" -p "finger_R1_1_loc";
	rename -uid "8A7FCD3F-4E46-DAD3-8917-F2B41E9988E2";
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
createNode nurbsCurve -n "finger_R1_1_loc11Shape" -p "finger_R1_1_loc";
	rename -uid "DEECBDAA-489D-0E29-20EE-98AFB3C4DF98";
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
createNode nurbsCurve -n "finger_R1_1_loc12Shape" -p "finger_R1_1_loc";
	rename -uid "337E05CC-4E85-1F94-AC22-D1A9B3440E30";
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
createNode nurbsCurve -n "finger_R1_1_loc12_0crvShape" -p "finger_R1_1_loc";
	rename -uid "60B6F89D-4A7F-01A4-4B3F-B787B875D6B1";
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
createNode nurbsCurve -n "finger_R1_1_loc12_1crvShape" -p "finger_R1_1_loc";
	rename -uid "59E63135-4225-AAFA-0C15-B98654C9A684";
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
	rename -uid "DD5D2C56-42F4-E8F4-B0F7-E6A60FAEA548";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549590294 -1.0658141036401503e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "11E8BB1F-4331-09F6-0E65-52873C95D3B8";
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
createNode nurbsCurve -n "finger_R1_2_loc10Shape" -p "finger_R1_2_loc";
	rename -uid "5CC7C8ED-468E-B15E-4DBA-A8A7070E4685";
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
createNode nurbsCurve -n "finger_R1_2_loc11Shape" -p "finger_R1_2_loc";
	rename -uid "D338701D-492D-000C-D9BF-32A5FE7BEE14";
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
createNode nurbsCurve -n "finger_R1_2_loc12Shape" -p "finger_R1_2_loc";
	rename -uid "737106F1-4ED1-1D54-E56D-51A14E10A4C8";
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
createNode nurbsCurve -n "finger_R1_2_loc12_0crvShape" -p "finger_R1_2_loc";
	rename -uid "DCC80D22-47C2-D3D1-2712-83AB346B30A6";
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
createNode nurbsCurve -n "finger_R1_2_loc12_1crvShape" -p "finger_R1_2_loc";
	rename -uid "725F93DE-40AA-88B1-0B45-23804C5B8FF7";
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
	rename -uid "664BCF40-42A7-FD51-2ECB-5E8B88999F5D";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "B1EE5FBA-49B8-C312-3367-82A318FA2815";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.7757800947397071 0 0
		0 0.2585933649132357 0
		0 0 0
		;
createNode aimConstraint -n "finger_R1_blade_aimConstraint4" -p "finger_R1_blade";
	rename -uid "5A7A95A1-46F2-B564-EFE4-B391DDB5F46F";
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
createNode pointConstraint -n "finger_R1_blade_pointConstraint4" -p "finger_R1_blade";
	rename -uid "7F8631DE-455C-F91E-734C-F38404DD4B0A";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 0 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "E6825D79-42F0-6A6B-40BB-A8A3F47658C7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153207 -28.040620010901378 1.1418187531081136 ;
	setAttr ".r" -type "double3" 174.15150560514405 -9.9768879508725767 -125.88865264712143 ;
	setAttr ".s" -type "double3" 2.632098310678614 2.6320983106786007 -2.6320983106786087 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "18643AFC-4514-36FA-5503-65B592255FDF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "E61E5CEE-44B2-8B35-8A15-2CA10323B9A5";
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
	rename -uid "687F1F45-4354-6436-0D87-BEBD7EB2BC57";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999922 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "1A24AB54-44D3-2830-DEF6-9B9CA2E5F02C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030171 0 0
		0 0.061677442163433904 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint4" -p "meta_R0_blade";
	rename -uid "CFB679B5-4E2F-8D00-7E35-089D7EC7F28D";
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
createNode pointConstraint -n "meta_R0_blade_pointConstraint4" -p "meta_R0_blade";
	rename -uid "9587E4A5-411B-C0AF-8E7C-25A2A99D34DA";
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
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-015 3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "8A6DC1F8-4DB5-FA72-E6AD-01BE47091E0E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058399572 -38.076493243284851 11.714163621936754 ;
	setAttr ".r" -type "double3" -98.404354317568377 44.654258545702199 -90.724179884703688 ;
	setAttr ".s" -type "double3" 3.4032157947041277 3.4032157947041113 -3.4032157947041219 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "CFCFD6C2-4ED5-F42F-FADD-A4AAEDEDC522";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "8B2E0791-465B-7E44-1E1A-A0B2C90E71F2";
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
	rename -uid "230DCDFB-483B-0EC6-F50D-DA9A0A89B3D8";
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
	setAttr ".t" -type "double3" -0.18403723679763351 -0.30586006047045089 2.7614233959505459 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808389 -71.606679450097843 -133.79382708613454 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661785 1.292966824566179 1.2929668245661816 ;
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
	rename -uid "4E422BBE-4D7B-42A1-1806-5798F881BFAF";
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
createNode nurbsCurve -n "finger_R0_root10Shape" -p "finger_R0_root";
	rename -uid "4966283A-4642-6010-3F39-239E0AC20AEF";
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
createNode nurbsCurve -n "finger_R0_root11Shape" -p "finger_R0_root";
	rename -uid "27394E40-4330-78F6-61CC-B08F3F135F84";
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
createNode nurbsCurve -n "finger_R0_root12Shape" -p "finger_R0_root";
	rename -uid "3E6DADD3-4C80-26B3-FA91-BEB8FC408DFB";
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
	rename -uid "EE966078-4226-9B58-FC8F-FD91E41644FB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000053 -3.5527136788005009e-015 5.3290705182007514e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 0.99999999999999867 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "69D9D1D7-4A95-CDE4-E146-CC9E68C1F4E6";
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
createNode nurbsCurve -n "finger_R0_0_loc10Shape" -p "finger_R0_0_loc";
	rename -uid "BC829858-4C35-48B9-FC67-E1998842C5D6";
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
createNode nurbsCurve -n "finger_R0_0_loc11Shape" -p "finger_R0_0_loc";
	rename -uid "8FE62164-49A9-7307-0B2D-0198313A9427";
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
createNode nurbsCurve -n "finger_R0_0_loc12Shape" -p "finger_R0_0_loc";
	rename -uid "B19DE4B3-4B9B-8C06-C2E3-0791F12B1BEB";
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
createNode nurbsCurve -n "finger_R0_0_loc12_0crvShape" -p "finger_R0_0_loc";
	rename -uid "CF550651-4A04-4B51-3FF2-FF929F5062E0";
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
createNode nurbsCurve -n "finger_R0_0_loc12_1crvShape" -p "finger_R0_0_loc";
	rename -uid "D2CC52A0-4F8F-E610-F9EA-99A2F0BE9F60";
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
	rename -uid "233CC206-4435-08F3-16A7-838469DE5173";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080928495 -3.5527136788005009e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000016 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "944D4D1A-4BD3-8011-23D0-EF9588D4E1F6";
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
createNode nurbsCurve -n "finger_R0_1_loc10Shape" -p "finger_R0_1_loc";
	rename -uid "862FAC73-4B82-CFE2-B834-558751AE3258";
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
createNode nurbsCurve -n "finger_R0_1_loc11Shape" -p "finger_R0_1_loc";
	rename -uid "FD7AC090-40C0-7715-908E-429246A3D28F";
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
createNode nurbsCurve -n "finger_R0_1_loc12Shape" -p "finger_R0_1_loc";
	rename -uid "B85B9AD9-4FAD-A7D0-8695-CCB92B3269FA";
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
createNode nurbsCurve -n "finger_R0_1_loc12_0crvShape" -p "finger_R0_1_loc";
	rename -uid "C0C52488-4121-7EF7-8AB2-DABAA842E113";
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
createNode nurbsCurve -n "finger_R0_1_loc12_1crvShape" -p "finger_R0_1_loc";
	rename -uid "9287E601-4834-758A-BD94-0FB0216B935B";
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
	rename -uid "67799F7E-4B0C-03AD-1480-6B873C17F07F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392367121 1.7763568394002505e-014 -3.1086244689504383e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "4642B434-4ED1-781B-5A30-6FB6BD40AE51";
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
createNode nurbsCurve -n "finger_R0_2_loc10Shape" -p "finger_R0_2_loc";
	rename -uid "10624489-40DA-7929-A125-BBA9D8083E73";
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
createNode nurbsCurve -n "finger_R0_2_loc11Shape" -p "finger_R0_2_loc";
	rename -uid "480AC96F-4D3F-40CE-967C-D4B48BB10C4F";
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
createNode nurbsCurve -n "finger_R0_2_loc12Shape" -p "finger_R0_2_loc";
	rename -uid "77D383E9-48A4-8F03-8242-C6A3DF2417DF";
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
createNode nurbsCurve -n "finger_R0_2_loc12_0crvShape" -p "finger_R0_2_loc";
	rename -uid "785781C7-4F28-D3BA-0403-B0AC128DA689";
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
createNode nurbsCurve -n "finger_R0_2_loc12_1crvShape" -p "finger_R0_2_loc";
	rename -uid "88D5245A-4494-0A02-D719-BD83F6660025";
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
	rename -uid "09B87C3C-4561-2B7C-9F75-619154A84625";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 0.99999999999999867 0.99999999999999867 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "E544EF3C-4FBB-18BB-52F6-1182E6B42293";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.7757800947397071 0 0
		0 0.2585933649132357 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint4" -p "finger_R0_blade";
	rename -uid "C7B90BC7-446C-C291-E1A0-DEBF43CA04AE";
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
createNode pointConstraint -n "finger_R0_blade_pointConstraint4" -p "finger_R0_blade";
	rename -uid "A7BFE984-490B-1DB2-08FB-5A8D9BECBA37";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 0 -4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "34C55C5C-4707-2814-C7F5-5E88510ADCB3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713113 -27.336008057181239 2.4648652761293839 ;
	setAttr ".r" -type "double3" 170.83456651198054 -22.111176212554696 -122.87938490445458 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106785985 -2.6320983106786016 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "9E20687E-4558-CC88-C94D-23A383FDEF7A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "B18DE49B-407A-9562-5AAC-ED94262DD72E";
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
	rename -uid "B1B3A25A-4CE1-8A54-21E8-E785E9903600";
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
	setAttr ".t" -type "double3" 0.21303623709073527 -0.22489125789799402 0.13070337452153602 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848351425 -84.001563523230942 11.009204406914138 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041282 3.4032157947041157 3.4032157947041233 ;
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
	rename -uid "65F52AA2-4AF9-7CBF-6855-A39F150B660A";
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
createNode nurbsCurve -n "thumbRoll_R0_root10Shape" -p "thumbRoll_R0_root";
	rename -uid "81F32CF2-4CB9-2994-58F0-9897F2C8311A";
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
createNode nurbsCurve -n "thumbRoll_R0_root11Shape" -p "thumbRoll_R0_root";
	rename -uid "BF963BFB-438B-5DB5-AED9-CABD7048DE58";
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
createNode nurbsCurve -n "thumbRoll_R0_root12Shape" -p "thumbRoll_R0_root";
	rename -uid "30BD05D5-489C-C068-CE23-03B93F277340";
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
	rename -uid "8945063E-4E85-82E4-E405-50B33E1B6E64";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 4.7961634663806763e-014 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205637 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999689 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_R0_root" -p "thumbRoll_R0_root";
	rename -uid "159F3142-43F8-DE53-CE2F-258A876C0EC7";
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
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.7763568394002505e-015 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913035 -43.900240512232692 -37.623269198287694 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511072 0.48936434703510967 0.48936434703511161 ;
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
	rename -uid "C11C93DF-4107-3311-ECDD-13B1A9B146D4";
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
createNode nurbsCurve -n "thumb_R0_root10Shape" -p "thumb_R0_root";
	rename -uid "164CDFCF-4F58-63E7-0031-948C24598029";
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
createNode nurbsCurve -n "thumb_R0_root11Shape" -p "thumb_R0_root";
	rename -uid "B34D08A5-4174-653E-8556-DEA5F505A20E";
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
createNode nurbsCurve -n "thumb_R0_root12Shape" -p "thumb_R0_root";
	rename -uid "B42AD337-4FD9-732D-0079-8C98B6335A19";
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
	rename -uid "C12EA682-4800-9116-EBD1-CC9C6FA67D42";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470384 0.0024095775966967992 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060975 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 0.99999999999999956 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "ED62B420-4DD8-5890-DC7C-18B7D7AF53DC";
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
createNode nurbsCurve -n "thumb_R0_0_loc10Shape" -p "thumb_R0_0_loc";
	rename -uid "2D11A315-4A81-55AC-360F-D9BB25FC47DF";
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
createNode nurbsCurve -n "thumb_R0_0_loc11Shape" -p "thumb_R0_0_loc";
	rename -uid "FD3BB4A3-4D6D-A48B-416B-EE8DBE9EBA6F";
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
createNode nurbsCurve -n "thumb_R0_0_loc12Shape" -p "thumb_R0_0_loc";
	rename -uid "31A3CE4C-413D-5403-7C38-58B00B090A2E";
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
createNode nurbsCurve -n "thumb_R0_0_loc12_0crvShape" -p "thumb_R0_0_loc";
	rename -uid "67833B2B-4F63-CD89-0EB3-6D83E476B98A";
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
createNode nurbsCurve -n "thumb_R0_0_loc12_1crvShape" -p "thumb_R0_0_loc";
	rename -uid "40FCBE74-47E0-AB58-33D1-FFA12DB56404";
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
	rename -uid "47890DF8-462D-125C-3237-FCAE0194C0AD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.764425801455209 -1.7763568394002505e-015 1.7763568394002505e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999911 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "277FB36F-4289-CEF2-83F6-7B8B6A6C1192";
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
createNode nurbsCurve -n "thumb_R0_1_loc10Shape" -p "thumb_R0_1_loc";
	rename -uid "D7604FA5-4D35-B865-9AB8-7486740008C0";
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
createNode nurbsCurve -n "thumb_R0_1_loc11Shape" -p "thumb_R0_1_loc";
	rename -uid "80CC113B-4F4E-E7CD-EDA6-FCB7BD00BB0E";
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
createNode nurbsCurve -n "thumb_R0_1_loc12Shape" -p "thumb_R0_1_loc";
	rename -uid "55B84CE9-451F-4FE2-D374-1D9CC74E7B37";
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
createNode nurbsCurve -n "thumb_R0_1_loc12_0crvShape" -p "thumb_R0_1_loc";
	rename -uid "4E78AEAD-449B-0EFE-76EB-1F84D2779CC6";
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
createNode nurbsCurve -n "thumb_R0_1_loc12_1crvShape" -p "thumb_R0_1_loc";
	rename -uid "BF9B33A3-4925-622F-253B-65AB230BD626";
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
	rename -uid "EC18CAC2-48F4-9FE0-C34B-F89EE539F037";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5948211491551092 8.8817841970012523e-015 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "1649865E-4D25-8B09-7763-05B64B299B14";
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
createNode nurbsCurve -n "thumb_R0_2_loc10Shape" -p "thumb_R0_2_loc";
	rename -uid "95F41132-49A2-D769-FB41-96A56B356338";
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
createNode nurbsCurve -n "thumb_R0_2_loc11Shape" -p "thumb_R0_2_loc";
	rename -uid "DA7D43F2-4740-B615-93BE-288B52DD308C";
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
createNode nurbsCurve -n "thumb_R0_2_loc12Shape" -p "thumb_R0_2_loc";
	rename -uid "E6C4EB02-4193-ACCE-62E8-CFB97A5F50A1";
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
createNode nurbsCurve -n "thumb_R0_2_loc12_0crvShape" -p "thumb_R0_2_loc";
	rename -uid "5B67F8EB-45BE-E5ED-3ADD-5B915C193F8B";
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
createNode nurbsCurve -n "thumb_R0_2_loc12_1crvShape" -p "thumb_R0_2_loc";
	rename -uid "A63964BB-4347-857F-277A-C98F97B15C29";
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
	rename -uid "902CB54D-474F-7FA7-12A4-DCBAC9EA636F";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999998 0.999999999999998 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "89165FE9-476A-4AE5-B77C-F8B915E3A929";
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
createNode aimConstraint -n "thumb_R0_blade_aimConstraint4" -p "thumb_R0_blade";
	rename -uid "DFD80645-4D1E-5D3C-AA6E-639CF37A4F2E";
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
	setAttr ".rsrr" -type "double3" 3.3116584830389795e-016 2.3654202254579887e-013 
		0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint4" -p "thumb_R0_blade";
	rename -uid "C95FEE28-4B33-3638-BDF8-18982C2F2F8E";
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
	setAttr ".rst" -type "double3" 0 8.8817841970012523e-016 0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "D9A858A6-4267-46DB-9EAE-6B96F92BD5FA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042883 -7.0737929587543373 17.72586763551281 ;
	setAttr ".r" -type "double3" -55.556977946373152 -63.100734454449608 102.71864583729817 ;
	setAttr ".s" -type "double3" 2.0434672163157259 2.0434672163157193 -2.0434672163157246 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "6E23B809-4982-D49C-E716-50B954778F91";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "B0F9AC99-4BF1-6FAF-B2CD-9A9FF0E3ED0F";
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
	rename -uid "10BD971A-4B26-9204-74E0-9BACF4574FDB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200312 -11.862061807473022 1.156441220564888 ;
	setAttr ".r" -type "double3" 2.1534408611046802 175.80406292066334 45.437740049298334 ;
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377385 -1.04950822673774 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "406DB5A8-4C4A-10AC-D231-69BAD5F19BB0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "6349FFB8-4574-6D07-2D69-2CB574CA3AE6";
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
	rename -uid "FF6E3CAA-4505-9C5F-BA93-F993E97E336E";
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
	setAttr ".s" -type "double3" 0.99999999999999956 0.999999999999997 0.99999999999999734 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "8C42B9DA-4F6E-81FC-D463-7F8FA6475924";
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
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint4" -p "shoulder_R0_blade";
	rename -uid "00877AD7-456A-71A4-AE5A-F297EE12E29D";
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
	setAttr ".o" -type "double3" 90 179.99999999999937 180.00000000000014 ;
	setAttr ".rsrr" -type "double3" 23.386262286472736 122.53864021838226 110.03040021520729 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint4" -p "shoulder_R0_blade";
	rename -uid "3389C6BF-4B51-96F2-2726-5BB56B7DA1F0";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -2.6020852139652106e-017 
		-2.7755575615628914e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "B9FB7EEC-4AF0-0106-DF3A-62B77C3A2D56";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509836 0.0092761897382757936 0.11673327753265028 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377367 -1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "9F5B340C-4817-5AA0-A296-53B4ED9BB7B7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "8B2AFA87-4F4B-F6D1-6FE3-5E9AF784CA5F";
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
	rename -uid "93737428-4381-8D11-628D-A1A5CA86E40E";
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
	rename -uid "2CFDC70C-4769-7BF0-E831-999F1C7C1955";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint12" -p "spine_C0_blade";
	rename -uid "415EA5D6-4120-7626-7067-A0A751C53B10";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint12" -p "spine_C0_blade";
	rename -uid "0B279A3D-489E-041F-EB90-04BD5EDA246C";
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
	rename -uid "B9ACCB6E-4B2D-3237-B555-D2BC6E9C81B6";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690751 0.19144303592045878 -4.2508893276606341e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.04950822673774 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "A9875B4B-4370-6EB6-3F3E-AABCE8C3828C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "CFE7E954-4CEC-D484-070D-79A6517773AF";
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
	rename -uid "7E939E74-4CB9-7C4C-79B5-F08CD173D375";
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
	setAttr ".t" -type "double3" -1.1814583394588016 1.3877787807814457e-016 -1.0212680564255745 ;
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
	rename -uid "192CE162-4919-84A0-9F84-BDA22D039CCE";
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
createNode nurbsCurve -n "leg_L0_root34Shape" -p "leg_L0_root";
	rename -uid "788E235C-4AE7-E34D-FD40-98B2B2DC798B";
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
createNode nurbsCurve -n "leg_L0_root35Shape" -p "leg_L0_root";
	rename -uid "52998089-4991-9DFC-3738-20A7D9AA149D";
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
createNode nurbsCurve -n "leg_L0_root36Shape" -p "leg_L0_root";
	rename -uid "231AFEF3-4541-4E91-14B6-FA8F4D5D48B9";
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
	rename -uid "42C5F350-4D9C-6288-C33A-DDB55A1EB880";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303978 0.38838644346805856 -2.55351295663786e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000009 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "DD44DAEE-4951-7D44-B9C6-23B088E6C368";
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
createNode nurbsCurve -n "leg_L0_knee34Shape" -p "leg_L0_knee";
	rename -uid "03CAD9F5-4B83-284D-3435-7AB7DDF035D8";
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
createNode nurbsCurve -n "leg_L0_knee35Shape" -p "leg_L0_knee";
	rename -uid "E37D1972-4344-4AC8-D88A-B3A00BE5DC9C";
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
createNode nurbsCurve -n "leg_L0_knee36Shape" -p "leg_L0_knee";
	rename -uid "636BC705-4F79-181B-0A6B-109834F228AF";
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
createNode nurbsCurve -n "leg_L0_knee36_0crvShape" -p "leg_L0_knee";
	rename -uid "0326A74B-4FD9-3F1B-386C-50A17571B70F";
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
createNode nurbsCurve -n "leg_L0_knee36_1crvShape" -p "leg_L0_knee";
	rename -uid "1783C10A-4472-7116-2757-74872D63DF89";
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
	rename -uid "2068DA3F-402D-F718-BB2B-C29AFF0CFE96";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 -4.5414075240554155 -0.74630601922779793 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999878 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "82EC66EE-485F-E4FB-30DD-8E865159BD05";
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
createNode nurbsCurve -n "leg_L0_ankle34Shape" -p "leg_L0_ankle";
	rename -uid "06BC000A-42B9-815F-014A-448B6421E4F4";
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
createNode nurbsCurve -n "leg_L0_ankle35Shape" -p "leg_L0_ankle";
	rename -uid "B01E6AB1-4ED2-8BED-17DB-71BFDA210F37";
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
createNode nurbsCurve -n "leg_L0_ankle36Shape" -p "leg_L0_ankle";
	rename -uid "2F22DE27-49D4-B1BE-3E55-27AB30587212";
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
createNode nurbsCurve -n "leg_L0_ankle36_0crvShape" -p "leg_L0_ankle";
	rename -uid "CD75044A-4890-D947-7F6A-5E87C7D38DF0";
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
createNode nurbsCurve -n "leg_L0_ankle36_1crvShape" -p "leg_L0_ankle";
	rename -uid "1D41EE57-4227-7081-AEFE-DCAE1252D045";
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
	rename -uid "5ED0A1F1-4F16-CCE0-6BE0-F287B529E108";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 2.2204460492503131e-015 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000049 0.99999999999999922 1.0000000000000036 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "8E6D980B-47B0-F769-582D-A18769213745";
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
createNode nurbsCurve -n "leg_L0_eff34Shape" -p "leg_L0_eff";
	rename -uid "510F3728-4C3E-17A6-2503-8D839C1B699E";
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
createNode nurbsCurve -n "leg_L0_eff35Shape" -p "leg_L0_eff";
	rename -uid "6D310EC8-4BD9-22B5-B146-14BA58BEB158";
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
createNode nurbsCurve -n "leg_L0_eff36Shape" -p "leg_L0_eff";
	rename -uid "1FA6BC31-4945-3A49-9190-528B289D6A04";
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
createNode nurbsCurve -n "leg_L0_eff36_0crvShape" -p "leg_L0_eff";
	rename -uid "3900B9B8-47F3-D4D3-9987-C2AAFCADB4A1";
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
createNode nurbsCurve -n "leg_L0_eff36_1crvShape" -p "leg_L0_eff";
	rename -uid "EFE765D1-4722-9F80-EFD7-3DA2F5B1B237";
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
	rename -uid "BF850821-4E98-C5B3-3A2A-A2AA7143B27F";
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
	setAttr ".t" -type "double3" 2.2204460492503131e-016 8.8817841970012523e-016 -3.3306690738754696e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426136 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518529 0.9997975226851824 0.99979752268518163 ;
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
	rename -uid "3032FE61-4A43-55DC-A0BB-E99649F5EEFC";
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
createNode nurbsCurve -n "foot_L0_root34Shape" -p "foot_L0_root";
	rename -uid "C7DC1299-4A95-DB7C-5307-FA92AE25E433";
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
createNode nurbsCurve -n "foot_L0_root35Shape" -p "foot_L0_root";
	rename -uid "8B986663-426A-7930-5C17-D59594A09D3A";
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
createNode nurbsCurve -n "foot_L0_root36Shape" -p "foot_L0_root";
	rename -uid "852C21B7-4B42-DDB4-06E6-0783103586CF";
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
	rename -uid "E17D7348-448E-7627-3BB2-ABB06F37343C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763223 -0.77423199221117289 -0.00087398468478361302 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448048 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999789 0.99999999999999922 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "A0867406-491E-E08F-6F7D-AC82A3CA7D7D";
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
createNode nurbsCurve -n "foot_L0_0_loc34Shape" -p "foot_L0_0_loc";
	rename -uid "F19016E0-4098-9E14-04DE-588F61077088";
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
createNode nurbsCurve -n "foot_L0_0_loc35Shape" -p "foot_L0_0_loc";
	rename -uid "21831F35-4DEF-CF4A-9238-73A964D6CBC2";
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
createNode nurbsCurve -n "foot_L0_0_loc36Shape" -p "foot_L0_0_loc";
	rename -uid "B1CC50B8-46FE-0153-E66B-E39DEA5E98F6";
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
createNode nurbsCurve -n "foot_L0_0_loc36_0crvShape" -p "foot_L0_0_loc";
	rename -uid "B442ECD6-4C9C-B2BB-7D7C-AEA3CD6A7298";
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
createNode nurbsCurve -n "foot_L0_0_loc36_1crvShape" -p "foot_L0_0_loc";
	rename -uid "B994B8E0-402B-B6BA-CAC7-798CBFEEE7F9";
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
	rename -uid "7D41D12A-403F-5CBF-89D4-44B2D48E6C40";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444538 0.052400542543840634 0.00053566803260807205 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.49024465344802 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000004 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "7727E94A-42F9-C62F-7D16-1189F13F8FB1";
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
createNode nurbsCurve -n "foot_L0_1_loc34Shape" -p "foot_L0_1_loc";
	rename -uid "5B2F9A31-45F8-87E0-4B5E-389526FB62DB";
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
createNode nurbsCurve -n "foot_L0_1_loc35Shape" -p "foot_L0_1_loc";
	rename -uid "E712C948-4D4D-8179-2038-C2951CC08F71";
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
createNode nurbsCurve -n "foot_L0_1_loc36Shape" -p "foot_L0_1_loc";
	rename -uid "FDBE866E-4AA4-3BFD-4AFA-E48033442BDB";
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
createNode nurbsCurve -n "foot_L0_1_loc36_0crvShape" -p "foot_L0_1_loc";
	rename -uid "75F17CFF-410A-099A-6B9D-5F89537880AF";
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
createNode nurbsCurve -n "foot_L0_1_loc36_1crvShape" -p "foot_L0_1_loc";
	rename -uid "9F828E65-4210-7BA0-E27D-6CA35C0C5818";
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
	rename -uid "D5D52D42-42ED-6AFB-818C-3DA6DBF7811E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518421 -0.34355031336095393 -0.0018389437992669677 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000011 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "92FD78FD-4335-6A67-AF00-399B7B6B6B90";
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
createNode nurbsCurve -n "foot_L0_2_loc34Shape" -p "foot_L0_2_loc";
	rename -uid "5C9BCC3D-4D32-E32A-7AE7-B8B1EC65562F";
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
createNode nurbsCurve -n "foot_L0_2_loc35Shape" -p "foot_L0_2_loc";
	rename -uid "25EAF4FE-4B6C-EE0F-2FF4-BAA3BFCE52DA";
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
createNode nurbsCurve -n "foot_L0_2_loc36Shape" -p "foot_L0_2_loc";
	rename -uid "AC3F8E8A-4088-CA64-6D04-D4888C279AE8";
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
createNode nurbsCurve -n "foot_L0_2_loc36_0crvShape" -p "foot_L0_2_loc";
	rename -uid "00047EBA-4C29-0DC3-FE12-2C957855CA74";
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
createNode nurbsCurve -n "foot_L0_2_loc36_1crvShape" -p "foot_L0_2_loc";
	rename -uid "95AE49BA-49AB-80B7-1850-5491D81C4033";
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
	rename -uid "4BEA60F9-4642-AFC5-222A-ECAB45817190";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687084 -1.2934842521415504 1.0591437062861173 ;
	setAttr ".r" -type "double3" 2.8990169397258505 84.223472754416633 2.9137877746396925 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808354 1.0497207713808345 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "F10708BB-4C31-4D78-15A0-A6AB282A9331";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "A04DE527-48B1-8A4F-5022-FA97DE3F93E6";
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
	rename -uid "4DF3854D-4487-6C4B-55DA-9BAD90A580D8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343236 -1.2883323665462254 -0.0019628851482429432 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "0A7F0A36-46A0-7291-40E0-81A4B42A19A8";
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
createNode nurbsCurve -n "foot_L0_heel34Shape" -p "foot_L0_heel";
	rename -uid "A7D43B90-4828-0C7C-F597-DCB8E0DD9FE8";
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
createNode nurbsCurve -n "foot_L0_heel35Shape" -p "foot_L0_heel";
	rename -uid "AFB8678D-4609-5EC6-5FF3-48A5AE719686";
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
createNode nurbsCurve -n "foot_L0_heel36Shape" -p "foot_L0_heel";
	rename -uid "4E2E1082-42DC-1430-7A50-A0B64F1AD828";
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
createNode nurbsCurve -n "foot_L0_heel36_0crvShape" -p "foot_L0_heel";
	rename -uid "CC2292BE-4DEB-F8CC-A548-8BBF51F88E24";
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
createNode nurbsCurve -n "foot_L0_heel36_1crvShape" -p "foot_L0_heel";
	rename -uid "8A701280-4EF6-2877-E9FB-E3BDAAA5328A";
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
	rename -uid "F564EB8E-4CF6-D004-B336-9AA4D8FF3B28";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.2852474767223827 -0.54483578923279885 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "312CAB1C-45E7-555A-5410-0CB6BC7711DB";
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
createNode nurbsCurve -n "foot_L0_outpivot34Shape" -p "foot_L0_outpivot";
	rename -uid "7FA6B752-4FB7-2AC3-7F0D-FD8821A66CEB";
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
createNode nurbsCurve -n "foot_L0_outpivot35Shape" -p "foot_L0_outpivot";
	rename -uid "9FFD543A-4831-1100-063D-E5A58FF85AD1";
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
createNode nurbsCurve -n "foot_L0_outpivot36Shape" -p "foot_L0_outpivot";
	rename -uid "E6B4293A-4E3E-7A10-9A03-77B4A914B605";
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
createNode nurbsCurve -n "foot_L0_outpivot36_0crvShape" -p "foot_L0_outpivot";
	rename -uid "C76679EB-4852-0840-3AE2-3A90F09D8BB8";
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
createNode nurbsCurve -n "foot_L0_outpivot36_1crvShape" -p "foot_L0_outpivot";
	rename -uid "833422C9-4535-C487-41AA-698F68FD8B8F";
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
	rename -uid "27AFD351-476C-5286-DEE0-859B5DA4BB8F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.290593954007349 0.65234269833768388 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "B3E36DCB-4292-B7B2-7818-989EA67B924C";
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
createNode nurbsCurve -n "foot_L0_inpivot34Shape" -p "foot_L0_inpivot";
	rename -uid "A797FE0D-422D-67D2-B8FB-4DACE4BF7C7B";
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
createNode nurbsCurve -n "foot_L0_inpivot35Shape" -p "foot_L0_inpivot";
	rename -uid "2AE7A146-4A44-CF96-2432-19B576A70990";
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
createNode nurbsCurve -n "foot_L0_inpivot36Shape" -p "foot_L0_inpivot";
	rename -uid "BD7AE321-4AFB-93C1-4622-17A08748B3C5";
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
createNode nurbsCurve -n "foot_L0_inpivot36_0crvShape" -p "foot_L0_inpivot";
	rename -uid "E2A44D86-4894-4BB4-A418-288B94CBCB4F";
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
createNode nurbsCurve -n "foot_L0_inpivot36_1crvShape" -p "foot_L0_inpivot";
	rename -uid "848F5955-410C-95EF-0670-4BB193E5BC5D";
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
	rename -uid "0C4C0497-47E8-9DA3-4916-4FAC42E33D3F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687084 -1.2934842521415504 1.0591437062861173 ;
	setAttr ".r" -type "double3" 2.8990169397258505 84.223472754416633 2.9137877746396925 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808354 1.0497207713808345 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "7961E3B0-4A40-3662-7465-CF9A9CA21892";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig" -p "foot_L0_1";
	rename -uid "9226651E-4177-296D-912B-B0AA05B81E59";
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
	rename -uid "6CDFC38A-4B28-A64B-9E4A-2E826BEC6BF7";
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
	setAttr ".t" -type "double3" 0.59908552650329328 0.51029795172993664 -1.4395512694570027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999745 ;
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
	rename -uid "E531A79E-417D-F7BD-783E-EE8609D9F355";
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
createNode nurbsCurve -n "legUI_L0_root34Shape" -p "legUI_L0_root";
	rename -uid "312BF6B5-4975-6414-00D1-55AEBCAA1D47";
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
createNode nurbsCurve -n "legUI_L0_root35Shape" -p "legUI_L0_root";
	rename -uid "42D63474-4FE2-3F0D-82B3-139BCFECB4E7";
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
createNode nurbsCurve -n "legUI_L0_root36Shape" -p "legUI_L0_root";
	rename -uid "290B1136-462A-1307-E37C-C6939E65BC98";
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
	rename -uid "423E4C49-485E-78B6-FE59-588422485235";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565061 -6.6613381477509392e-016 1.0444039858906486 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963981606 -5.7690337251489696 0.29463615418735939 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808354 1.0497207713808352 1.0497207713808374 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_L0_crv" -p "leg_L0_root";
	rename -uid "AD8C39FC-4C36-2E0B-7759-B8A0A9A77D87";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209233 0.19144303592045894 0.96902196420373599 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729844 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.049508226737738 1.0495082267377407 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "DBF071A4-4A57-256B-19DE-FF945304C502";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "D070E47C-4390-D169-2B0A-6A9196DA8BC4";
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
	rename -uid "0DCD272A-4F27-236B-E61A-E4B0F429F12F";
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
	setAttr ".t" -type "double3" -1.1814583394588016 7.2164496600635175e-016 1.0212680564255743 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -0.29314386227019557 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 0.99999999999999822 -1 ;
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
	rename -uid "50D38E52-4AB6-FD39-64BB-96B696D11124";
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
createNode nurbsCurve -n "leg_R0_root10Shape" -p "leg_R0_root";
	rename -uid "DCA9C226-4EEF-82D8-940C-6D8E4195EB01";
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
createNode nurbsCurve -n "leg_R0_root11Shape" -p "leg_R0_root";
	rename -uid "E092A27F-42A9-1227-4B28-5ABD72F2F76A";
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
createNode nurbsCurve -n "leg_R0_root12Shape" -p "leg_R0_root";
	rename -uid "FD97BD98-44CB-8206-1AE6-E58CA66B521F";
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
	rename -uid "1A60C97E-4C0B-07AA-E822-68936F39B2F7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772304049 0.38838644346805851 -3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000004 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "163C5F3A-4885-3F33-9754-24BD1749BCBE";
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
createNode nurbsCurve -n "leg_R0_knee10Shape" -p "leg_R0_knee";
	rename -uid "5E9737AA-4291-2E57-849A-6F8941D8D981";
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
createNode nurbsCurve -n "leg_R0_knee11Shape" -p "leg_R0_knee";
	rename -uid "5AD21478-4355-570D-59F9-30A95ED998FB";
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
createNode nurbsCurve -n "leg_R0_knee12Shape" -p "leg_R0_knee";
	rename -uid "A6D96E9A-4046-D78F-4415-69BD656244AB";
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
createNode nurbsCurve -n "leg_R0_knee12_0crvShape" -p "leg_R0_knee";
	rename -uid "121A2D7F-4BBB-3864-2071-ACBE77982535";
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
createNode nurbsCurve -n "leg_R0_knee12_1crvShape" -p "leg_R0_knee";
	rename -uid "23CFFFB5-4D35-B131-6D47-5999C5284C6D";
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
	rename -uid "61B7606C-4F28-CB5C-0870-1783FCE2C8DB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2212453270876722e-015 -4.5414075240554146 -0.74630601922780004 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 1.0000000000000002 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "C482EA5C-433C-2A66-F4CE-03A03A1DFAAE";
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
createNode nurbsCurve -n "leg_R0_ankle10Shape" -p "leg_R0_ankle";
	rename -uid "F8538835-450D-9441-3400-C89E7B2814CF";
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
createNode nurbsCurve -n "leg_R0_ankle11Shape" -p "leg_R0_ankle";
	rename -uid "6F90DCFA-4B30-84F5-B089-34BDFABA8AA8";
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
createNode nurbsCurve -n "leg_R0_ankle12Shape" -p "leg_R0_ankle";
	rename -uid "A6263220-404E-3C6F-EF03-5495F5687AC1";
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
createNode nurbsCurve -n "leg_R0_ankle12_0crvShape" -p "leg_R0_ankle";
	rename -uid "40D58749-4E10-3E1E-5365-318B9D9DF949";
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
createNode nurbsCurve -n "leg_R0_ankle12_1crvShape" -p "leg_R0_ankle";
	rename -uid "BB36A606-4A6E-6BB8-1CD3-AD91A1EADBAC";
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
	rename -uid "5E7F33E1-4468-8A36-1BDC-6BB661B85740";
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
	setAttr ".s" -type "double3" 1.0000000000000047 0.99999999999999878 1.0000000000000031 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "2F045ADF-437C-D0F2-DC69-7CA5BE733BDA";
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
createNode nurbsCurve -n "leg_R0_eff10Shape" -p "leg_R0_eff";
	rename -uid "064B01C3-41F2-3B4A-B667-F98BDC3EADD2";
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
createNode nurbsCurve -n "leg_R0_eff11Shape" -p "leg_R0_eff";
	rename -uid "8AF2A1F1-4A46-A7FD-8839-09A26FD712C3";
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
createNode nurbsCurve -n "leg_R0_eff12Shape" -p "leg_R0_eff";
	rename -uid "CF888BC5-491B-630E-CDDA-B18CA31BA572";
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
createNode nurbsCurve -n "leg_R0_eff12_0crvShape" -p "leg_R0_eff";
	rename -uid "E463C486-4EB3-E645-6A13-A885831A3BFF";
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
createNode nurbsCurve -n "leg_R0_eff12_1crvShape" -p "leg_R0_eff";
	rename -uid "46F6A893-4124-C819-1F20-EAA09642CA99";
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
	rename -uid "3255B971-44C2-E05F-9407-8B8A96FD6BBB";
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
	setAttr ".t" -type "double3" 5.5511151231257827e-016 1.7763568394002505e-015 -3.3306690738754696e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510425994 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518551 0.99979752268518207 0.99979752268518118 ;
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
	rename -uid "3EC752CD-4844-7D20-6E9C-97970655E422";
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
createNode nurbsCurve -n "foot_R0_root10Shape" -p "foot_R0_root";
	rename -uid "57552F53-4A8C-BCF5-005F-41BA076CE658";
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
createNode nurbsCurve -n "foot_R0_root11Shape" -p "foot_R0_root";
	rename -uid "8265488E-4BD4-25B8-B382-B384AD17B6E6";
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
createNode nurbsCurve -n "foot_R0_root12Shape" -p "foot_R0_root";
	rename -uid "47D46E1D-4A0C-52A8-2A3C-0E97E7A24027";
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
	rename -uid "FE2A71DC-447D-021A-F13C-84AD655F4700";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763214 -0.77423199221117367 -0.00087398468478117053 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.49024465344807 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 0.99999999999999911 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "167357DF-4DB6-50E2-25EC-00A537055369";
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
createNode nurbsCurve -n "foot_R0_0_loc10Shape" -p "foot_R0_0_loc";
	rename -uid "F262A972-4766-D41E-9C8A-72B79F96D3AB";
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
createNode nurbsCurve -n "foot_R0_0_loc11Shape" -p "foot_R0_0_loc";
	rename -uid "0778891E-44E1-BEA1-8FE8-BE99C2C9594E";
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
createNode nurbsCurve -n "foot_R0_0_loc12Shape" -p "foot_R0_0_loc";
	rename -uid "D52AF1FC-4549-ABC1-854D-988EC441DA16";
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
createNode nurbsCurve -n "foot_R0_0_loc12_0crvShape" -p "foot_R0_0_loc";
	rename -uid "1BEBBD39-42E9-8766-E0FD-429FB2C79A28";
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
createNode nurbsCurve -n "foot_R0_0_loc12_1crvShape" -p "foot_R0_0_loc";
	rename -uid "963BA8F3-487A-D029-0B58-FD8B0D3641F4";
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
	rename -uid "2F5666CD-47B1-8D39-666B-178BF7FCF8B4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5724162416244456 0.0524005425438413 0.00053566803260873819 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448023 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "86B9DD85-4689-9362-C618-46B551A72081";
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
createNode nurbsCurve -n "foot_R0_1_loc10Shape" -p "foot_R0_1_loc";
	rename -uid "7B81B89A-4474-E226-F58E-119C15AE7DAD";
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
createNode nurbsCurve -n "foot_R0_1_loc11Shape" -p "foot_R0_1_loc";
	rename -uid "064BEB46-4FF6-6076-9C3E-ECB18D624C17";
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
createNode nurbsCurve -n "foot_R0_1_loc12Shape" -p "foot_R0_1_loc";
	rename -uid "EA22AE17-414D-574A-48EB-9DB82BF58599";
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
createNode nurbsCurve -n "foot_R0_1_loc12_0crvShape" -p "foot_R0_1_loc";
	rename -uid "3732B8E5-4AC3-BF6B-495B-C8A5BAD4F0E3";
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
createNode nurbsCurve -n "foot_R0_1_loc12_1crvShape" -p "foot_R0_1_loc";
	rename -uid "D655F620-4A58-CF98-3B1B-D5AC5B8A8912";
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
	rename -uid "968C5DDD-4107-7019-166A-A799065A76F8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518288 -0.34355031336095421 -0.0018389437992663016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 1.0000000000000016 0.99999999999999811 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "BD1D0DC3-463C-8837-EE79-A6932DDABDEA";
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
createNode nurbsCurve -n "foot_R0_2_loc10Shape" -p "foot_R0_2_loc";
	rename -uid "FFB60174-4373-6C2E-6910-169B19D1D4A3";
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
createNode nurbsCurve -n "foot_R0_2_loc11Shape" -p "foot_R0_2_loc";
	rename -uid "52E771DC-4765-4D89-1467-7CB895D4D1E9";
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
createNode nurbsCurve -n "foot_R0_2_loc12Shape" -p "foot_R0_2_loc";
	rename -uid "66FA37ED-4742-4DA8-39B7-46B698500452";
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
createNode nurbsCurve -n "foot_R0_2_loc12_0crvShape" -p "foot_R0_2_loc";
	rename -uid "DC46FFB8-4CD4-035A-798E-5BACF6C70894";
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
createNode nurbsCurve -n "foot_R0_2_loc12_1crvShape" -p "foot_R0_2_loc";
	rename -uid "BA9A8845-4EFF-E1C3-52D9-0993007B131B";
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
	rename -uid "730341E6-43AF-0FC7-FA46-FA9B9424FCC0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248686829 -1.2934842521415502 1.0591437062861189 ;
	setAttr ".r" -type "double3" 177.1009830602743 -84.223472754416491 -177.08621222536055 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808352 -1.0497207713808345 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "6B5C2709-4207-8A8C-45E0-E8A0B3A46523";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "348B111A-429F-9E94-C23C-FAA39839627C";
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
	rename -uid "A7E3D28E-405E-2E49-E671-429A142641EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343291 -1.2883323665462256 -0.0019628851482436094 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "E7CC9BD2-4470-972F-6265-818D6BFE006A";
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
createNode nurbsCurve -n "foot_R0_heel10Shape" -p "foot_R0_heel";
	rename -uid "F0D0EE60-47C1-2126-1F29-FCB5B5F7CC33";
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
createNode nurbsCurve -n "foot_R0_heel11Shape" -p "foot_R0_heel";
	rename -uid "5268194C-4876-A800-E745-A49CABF13AEF";
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
createNode nurbsCurve -n "foot_R0_heel12Shape" -p "foot_R0_heel";
	rename -uid "AD73D8F7-4B89-1010-65CD-20AB045ECC07";
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
createNode nurbsCurve -n "foot_R0_heel12_0crvShape" -p "foot_R0_heel";
	rename -uid "C85BB374-4A3E-2B7A-2ED3-759CF1DD4A39";
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
createNode nurbsCurve -n "foot_R0_heel12_1crvShape" -p "foot_R0_heel";
	rename -uid "039A1A18-4F0D-6677-8867-209C7BAF620A";
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
	rename -uid "4D37DCB3-4F9A-AA30-C33E-7A83F4DB729C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145990997 -1.2852474767223832 -0.54483578923279707 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "B3CCE854-4F3C-A5AA-68B8-CA8D8AC38C7C";
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
createNode nurbsCurve -n "foot_R0_outpivot10Shape" -p "foot_R0_outpivot";
	rename -uid "6F9B5F7B-41AD-71DF-C4E8-EC82FCFB2662";
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
createNode nurbsCurve -n "foot_R0_outpivot11Shape" -p "foot_R0_outpivot";
	rename -uid "1144F59B-4A54-1AC7-BAF5-2D93201957E2";
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
createNode nurbsCurve -n "foot_R0_outpivot12Shape" -p "foot_R0_outpivot";
	rename -uid "4D1B0673-438D-29CB-516B-08A7C2D37AE8";
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
createNode nurbsCurve -n "foot_R0_outpivot12_0crvShape" -p "foot_R0_outpivot";
	rename -uid "8EC33A4D-4631-FD39-D2F4-2CAC19EE8F15";
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
createNode nurbsCurve -n "foot_R0_outpivot12_1crvShape" -p "foot_R0_outpivot";
	rename -uid "CDD96E4D-4D6A-0A97-AAE9-5BB96C454E73";
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
	rename -uid "09E6485B-48BD-8F11-90DE-758139C7E286";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145990979 -1.290593954007349 0.65234269833768666 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "34824890-4B32-6BBE-2995-068447D16274";
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
createNode nurbsCurve -n "foot_R0_inpivot10Shape" -p "foot_R0_inpivot";
	rename -uid "4DE2350B-49F0-2FC3-AD58-7180408370B4";
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
createNode nurbsCurve -n "foot_R0_inpivot11Shape" -p "foot_R0_inpivot";
	rename -uid "E6220A5E-40EC-5736-60BD-F498510BD61B";
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
createNode nurbsCurve -n "foot_R0_inpivot12Shape" -p "foot_R0_inpivot";
	rename -uid "6C84B2C2-46B7-4956-AED5-4297A7B3CB6C";
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
createNode nurbsCurve -n "foot_R0_inpivot12_0crvShape" -p "foot_R0_inpivot";
	rename -uid "7F4B381E-4B6C-5BD7-9397-3B9760B9AE10";
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
createNode nurbsCurve -n "foot_R0_inpivot12_1crvShape" -p "foot_R0_inpivot";
	rename -uid "F417CAC5-4B99-E19B-B1E1-2A911834F776";
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
	rename -uid "0585987A-410D-56F8-631C-B281BBCC83ED";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248686829 -1.2934842521415502 1.0591437062861189 ;
	setAttr ".r" -type "double3" 177.1009830602743 -84.223472754416491 -177.08621222536055 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808352 -1.0497207713808345 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "F53C3431-4BE1-8EC1-9F7F-E9933124F6B4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
	rename -uid "CADF4C0F-4869-C24F-D0EB-94AD466F7CC9";
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
	rename -uid "C6CEB09B-43BD-4978-2E18-A087AEE8BC33";
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
	setAttr ".t" -type "double3" 0.59908552650329627 0.51029795172993597 -1.4395512694570034 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999967 0.99999999999999711 ;
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
	rename -uid "757A3190-4870-3FBD-1824-EAAF7F516EE6";
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
createNode nurbsCurve -n "legUI_R0_root10Shape" -p "legUI_R0_root";
	rename -uid "605FD0D2-4E4C-589B-C175-17B28CCA85A8";
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
createNode nurbsCurve -n "legUI_R0_root11Shape" -p "legUI_R0_root";
	rename -uid "CB4E96F5-43E2-0D57-7827-7E986D4A4E4F";
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
createNode nurbsCurve -n "legUI_R0_root12Shape" -p "legUI_R0_root";
	rename -uid "D526C8D5-43E3-2FEE-A757-478904BDA004";
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
	rename -uid "2D1E9345-4340-834B-1E0C-ACB548E4602F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565194 -6.6613381477509392e-016 1.0444039858906491 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963955741 -5.7690337251490176 0.29463615418732658 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808352 1.0497207713808359 1.0497207713808379 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_R0_crv" -p "leg_R0_root";
	rename -uid "69DA4A7E-4E21-A98C-DCA1-1DA5DE47BF36";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209239 0.19144303592045839 0.96902196420373354 ;
	setAttr ".r" -type "double3" 90 -89.706856137729801 -179.99999999999815 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377382 -1.0495082267377407 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "8F405AC1-4CAA-41EC-3DCC-5D9CAC7383B8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "78171A04-4A8A-AABF-BC19-8AA78F1F4DBE";
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
	rename -uid "6294E593-4946-0761-E673-C9AFE7858C73";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "4F0E36E0-4E5A-F6BC-18F7-82BFC5E1D95B";
createNode displayLayer -n "defaultLayer";
	rename -uid "273B9BD5-4D88-1B5C-4F57-11BF27B01E55";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A9B2E2F6-4E69-A54B-94EF-77B6FD00DBF6";
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
createNode animCurveUU -n "spine_C0_root_st_profile";
	rename -uid "4C2276BC-4B1A-43D8-2065-CD905545AE34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "521D84BC-4688-4512-B31B-A2B248EFD0E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion182";
	rename -uid "4D16B588-4DE5-E18C-9397-05BABF1C96FE";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns515";
	rename -uid "8B4C4C53-45A9-4B87-878E-0390DE72B747";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak663";
	rename -uid "84F73BBD-453F-7F6E-2EB3-6EB497FFA223";
createNode objectSet -n "mgear_curveCns515Set";
	rename -uid "844C6332-4F99-B013-B815-C1920D3E3804";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns515GroupId";
	rename -uid "8235C8ED-479B-48FD-93D2-58872F4B7D22";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns515GroupParts";
	rename -uid "0A806324-47A8-6F05-07AD-12B7140847AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet663";
	rename -uid "6B9ECB2D-4155-40EB-0FD9-58950A2D1124";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8895";
	rename -uid "D1F23494-4A38-592B-0E6F-86AC9B4150A3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1326";
	rename -uid "28CFD5F9-4D8E-B203-E547-B7AB95B90BC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion183";
	rename -uid "8827C831-481C-5479-A362-639B6AB421FC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns516";
	rename -uid "6BD3F040-47FC-EEA2-BCBD-47B6376F0EF3";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak664";
	rename -uid "1DB94E76-48C6-9034-6AEF-648251C77659";
createNode objectSet -n "mgear_curveCns516Set";
	rename -uid "1350D75C-4B53-4805-86D7-7FBD75D37AB7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns516GroupId";
	rename -uid "16DE1383-4149-E5F3-143A-F4A6031FBA38";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns516GroupParts";
	rename -uid "692B78D6-4175-114B-2C33-5797957DD635";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet664";
	rename -uid "3CCE910C-45C7-E49D-78D5-4BAAE858B782";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8897";
	rename -uid "39A17D90-4A60-61AA-771A-309B2C58A031";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1328";
	rename -uid "20023C80-447B-503F-E7BE-5380A46395AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "A8280AC3-4399-32B0-FC35-C4A17CF797D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "6D00B48D-4436-7642-975B-A3929BA0C09C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode mgear_curveCns -n "mgear_curveCns517";
	rename -uid "1F043B4B-47C4-02C9-487E-6386B374889C";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak665";
	rename -uid "86C1CB68-43CA-61A5-F44C-D78EE706BBA7";
createNode objectSet -n "mgear_curveCns517Set";
	rename -uid "10B63649-4384-7F3F-B980-A8904D4A06E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns517GroupId";
	rename -uid "261E50AF-41CC-A8DF-DA41-49B6889E74FC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns517GroupParts";
	rename -uid "F4C7FECF-45D2-177F-F96C-FEA55FA5A7D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet665";
	rename -uid "0F78FA57-4E13-7D2F-B5F6-2EA019BAAFE1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8899";
	rename -uid "72AA6362-4E46-6F83-5259-6196E429D999";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1330";
	rename -uid "F0B4825F-4847-EE11-447A-63BAC62FEA51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion184";
	rename -uid "12479A8B-4796-B042-4770-69984A0DE1F6";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns518";
	rename -uid "415B1737-4215-A562-2352-278E1B02FF04";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak666";
	rename -uid "1652D2A6-4410-6FA7-585C-C08D8FA8F3C5";
createNode objectSet -n "mgear_curveCns518Set";
	rename -uid "5E08BF46-4589-3F59-77C9-BB9E28FBF1FB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns518GroupId";
	rename -uid "7567F4D3-487E-69D1-1E90-B391F032DF1A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns518GroupParts";
	rename -uid "AD164A23-4191-8337-00B3-389A2A5B3D9B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet666";
	rename -uid "0F081367-4F5A-AF29-DA55-CA8D93251ED8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8901";
	rename -uid "98F36BEC-4C58-CA00-8973-E1B37985C87B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1332";
	rename -uid "4BCAB283-483E-FE85-CD41-47A86F770DC7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion185";
	rename -uid "98072D4D-4780-3691-12A7-8299A0587EEB";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns519";
	rename -uid "981AF4C0-49C3-5820-2AAB-7E804A27566D";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak667";
	rename -uid "09692047-43CA-D602-4638-2D82EB29913C";
createNode objectSet -n "mgear_curveCns519Set";
	rename -uid "34479084-4166-A82E-472A-4B8A5B536488";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns519GroupId";
	rename -uid "B89D44D4-4101-F138-84CB-BFAA5C464448";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns519GroupParts";
	rename -uid "689A3437-4DA5-48DE-D929-1AA987213C73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet667";
	rename -uid "613F70AE-40D8-7EB8-D379-21B4A711EB90";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8903";
	rename -uid "1CF33DB2-4601-E08F-FAAB-4A90417D3DF3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1334";
	rename -uid "95524048-4929-111F-5E82-31BE51D1A90A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion186";
	rename -uid "A98B513C-4535-82F6-4492-A3A442747807";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns520";
	rename -uid "0044D998-4964-BB28-8EAA-51B442E2262F";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak668";
	rename -uid "846ADA6E-4D93-B7B1-A787-1FBCEC92F9FB";
createNode objectSet -n "mgear_curveCns520Set";
	rename -uid "4062C0E8-4D7F-2D72-9572-92BCA7B88A96";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns520GroupId";
	rename -uid "14A90CB2-4FB7-999A-B758-4B8AEC3C08D3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns520GroupParts";
	rename -uid "0CA69F8B-47C0-F1CC-0644-36B744570ACD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet668";
	rename -uid "16B816A5-427C-B953-A657-05A42D2BAF26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8905";
	rename -uid "F79CA92E-4255-230A-3155-B089A0350BC2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1336";
	rename -uid "AC08A770-442B-8825-3E41-819FD25EB18F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion187";
	rename -uid "03E78A8E-42C8-1AE7-D295-5D989699891D";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns521";
	rename -uid "A785EDF7-4384-2BD9-C7D0-55A1FB217678";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak669";
	rename -uid "A197E8BB-4A23-671C-2F26-5A9D7623179B";
createNode objectSet -n "mgear_curveCns521Set";
	rename -uid "0F18C65A-48FE-2C33-B59B-6E8185717B9D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns521GroupId";
	rename -uid "E790CC04-4DB0-94E8-B2C8-119808DDC068";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns521GroupParts";
	rename -uid "B3254396-4470-2EB7-DD6C-A68C55ECDC19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet669";
	rename -uid "0FB2BD24-4AB7-B1AD-E561-1E93CD47A6F8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8907";
	rename -uid "95B5F197-47E1-8BB4-4D86-CEA32686ABFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1338";
	rename -uid "D83AE8AD-4071-FB98-7C3D-0099DD47AE24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion188";
	rename -uid "D1502E71-4D77-EFAE-C352-5ABD910DE0BA";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns522";
	rename -uid "7777C1DC-4428-4260-3925-9394C0F448C9";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak670";
	rename -uid "17CE4BEC-4763-CF26-0BC5-279291096C57";
createNode objectSet -n "mgear_curveCns522Set";
	rename -uid "9C610CAD-4287-AEE4-1BEC-D196492F60B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns522GroupId";
	rename -uid "197C67F0-4C15-C743-EC40-72A5DAD53A03";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns522GroupParts";
	rename -uid "EB7AF4C8-4020-C131-43E2-368B72E27CA3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet670";
	rename -uid "E079C27B-4AEE-502A-4343-8381568145BB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8909";
	rename -uid "214E767F-4671-58F9-4803-10AA6AE43027";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1340";
	rename -uid "EE9DDE02-4978-4C1B-CED9-5FAA11192F30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion189";
	rename -uid "CA1043B9-4ECF-16D2-6566-2FA6C6CA6148";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns523";
	rename -uid "890D4252-4830-AA4F-7CC9-9F8B2FB8AB4F";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak671";
	rename -uid "A285BF56-4EF6-5CFD-97E7-1E824AB06EF2";
createNode objectSet -n "mgear_curveCns523Set";
	rename -uid "17F0C8CB-4DEE-1A12-6499-0586E4AAA02E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns523GroupId";
	rename -uid "E1662B0C-48D0-D79C-6F1A-0BACEA39F4E7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns523GroupParts";
	rename -uid "FCACBD3C-4361-A6CC-D000-A096F2DB2F00";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet671";
	rename -uid "2A9642C6-4A4B-7BAE-927E-589E1D516680";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8911";
	rename -uid "E33A6D4C-4AEE-3532-DA6B-0295264CFCF7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1342";
	rename -uid "B50EAB89-49A3-73F0-6621-5D9FB051FACF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "7C6C3E98-4D0C-FA81-2E00-91818CC2160D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "CDBB5F0D-48F3-C846-3482-48BD298DB82C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion190";
	rename -uid "52E701D3-43BF-013F-BBFB-708F6869FCD1";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns524";
	rename -uid "20F2438D-4E15-6B89-97B4-37B347E1CE87";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak672";
	rename -uid "D0CE8D18-433F-C9DF-AAFE-CABCB8A0FCAC";
createNode objectSet -n "mgear_curveCns524Set";
	rename -uid "3982705A-442C-FEC1-9FAE-7E934733DB22";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns524GroupId";
	rename -uid "0A860E8D-416A-80C1-6A8B-65BFED5AD9A1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns524GroupParts";
	rename -uid "E95FE0D9-404B-BC67-E5EA-19A1BC58BDD3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet672";
	rename -uid "AD632BFF-4337-FF80-F12F-52BEEBA38920";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8913";
	rename -uid "2AF323D4-4447-4724-D1A7-6AA75B97F69E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1344";
	rename -uid "F27239DD-4102-AA83-143C-D9896FF1E7B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns525";
	rename -uid "A9805A35-4D07-C36E-88D1-8D9926390659";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak673";
	rename -uid "9297D946-43C9-AB81-717E-71BF1897ABAE";
createNode objectSet -n "mgear_curveCns525Set";
	rename -uid "D30F12F7-4363-4B8E-F722-6DB0A89B5FFB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns525GroupId";
	rename -uid "04B0D26D-4459-BE75-C06C-FEA33127042C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns525GroupParts";
	rename -uid "4012F346-4F8A-9279-44AB-25BE52B7E3F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet673";
	rename -uid "6CF8309E-43EB-8238-6ACF-DD8D621BFDFD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8915";
	rename -uid "F9E2BDD6-43AB-DBB1-3CD9-7292FEAD6388";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1346";
	rename -uid "42EE35C4-4A26-1547-DDAF-AE9864622C59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns526";
	rename -uid "9E2D9B73-4F5B-EFAA-08C9-BE89380D7FC7";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak674";
	rename -uid "C566D2E2-4098-656A-F56C-49993AF70081";
createNode objectSet -n "mgear_curveCns526Set";
	rename -uid "79F8415C-4A7E-2F6E-DF66-16B94E694F4A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns526GroupId";
	rename -uid "11E78443-4948-60E7-F756-D78B8EF88757";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns526GroupParts";
	rename -uid "73965F97-4A08-83AD-2C70-2BA4603EF651";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet674";
	rename -uid "FB386DF4-4F13-AE5B-A74A-E598ED696792";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8917";
	rename -uid "970FCBBC-49BE-20EB-36BA-9BBA70B0D910";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1348";
	rename -uid "7EB294A8-4E34-FDD6-A60A-EDB549890F95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns527";
	rename -uid "72C8D122-499D-7006-CD0A-44ADBE36BAAB";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak675";
	rename -uid "A09EE8CE-4E37-37CA-C2A6-41B0F63A2F40";
createNode objectSet -n "mgear_curveCns527Set";
	rename -uid "FE5F412D-4E57-25B7-E25E-BDAB63C8D029";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns527GroupId";
	rename -uid "7C7EF5C7-4E3A-54BF-20AC-03A1F482DEB7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns527GroupParts";
	rename -uid "2E433C66-4C7C-406B-B172-DD915D2B382A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet675";
	rename -uid "C0AF3AA0-47CF-A066-F720-C2AA8513C7D0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8919";
	rename -uid "A4B500FE-4896-75B8-22FA-EC8CD6163C7D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1350";
	rename -uid "69238400-4481-8261-7295-1CBB9AE4435D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns528";
	rename -uid "60DF74A1-462F-566E-83DF-4483BF744988";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak676";
	rename -uid "5F329C84-4DAC-C2D9-2131-DBAA85E44464";
createNode objectSet -n "mgear_curveCns528Set";
	rename -uid "757E937F-461D-D33D-5953-6CB629AB402A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns528GroupId";
	rename -uid "0B76DA99-4132-FB14-73BC-1BB44CA45DED";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns528GroupParts";
	rename -uid "51B5106D-4C98-9313-75B9-78A1F27D6396";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet676";
	rename -uid "389115F2-43AF-3EB2-F8E5-CE8640496B7C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8921";
	rename -uid "C314698A-4B00-65BF-B6A1-13B3EE2CFFC0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1352";
	rename -uid "1A06DF1C-431C-B724-F520-35A3F6DE7750";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns529";
	rename -uid "046B8FF9-4E25-5A59-97A9-07BDB53F4CB5";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak677";
	rename -uid "396F9ECA-4A13-3B94-39D2-79ABA304EC02";
createNode objectSet -n "mgear_curveCns529Set";
	rename -uid "63A90E57-47F7-B04E-B194-919A632D62E4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns529GroupId";
	rename -uid "98AFB61C-41AF-7542-6D3F-0C956F7B42E3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns529GroupParts";
	rename -uid "827792A4-4557-6FBA-DA2C-8A8E5C784BFB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet677";
	rename -uid "C111DDED-4FAF-CF27-FD1D-E7962258D880";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8923";
	rename -uid "44732FC9-41B1-6C56-C340-82AE7169B22D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1354";
	rename -uid "6E9ABAD4-4EDB-D3C1-2B9E-43ADE04DF6D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion191";
	rename -uid "0C8A6798-493C-E839-EB58-0FB0823D8F3B";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns530";
	rename -uid "690790B4-4DB0-34CA-F2E3-6A9346935B50";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak678";
	rename -uid "F1EC1F5A-4E23-0EE8-A262-23BF43AF7DC8";
createNode objectSet -n "mgear_curveCns530Set";
	rename -uid "7B862FD3-46A5-5121-5848-0D8F491544E5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns530GroupId";
	rename -uid "AA557256-4321-8169-17E5-6DA994B3340B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns530GroupParts";
	rename -uid "06AECD38-44A4-5680-880D-039EC3262302";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet678";
	rename -uid "194F5C05-4C4F-13DC-91CE-6EBF189AF672";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8925";
	rename -uid "8D777A0E-47CA-8115-DF75-CB88B7523FEF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1356";
	rename -uid "2B0FF943-40C3-285F-535C-F8B09817E1C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns531";
	rename -uid "5E7A3202-4322-64A0-79A5-F58CC2925FD1";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak679";
	rename -uid "6255D261-4BF1-3836-7920-658C82194F70";
createNode objectSet -n "mgear_curveCns531Set";
	rename -uid "82748B4F-4BA0-D209-0C82-769884A6E92C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns531GroupId";
	rename -uid "F360A61B-487A-8D13-9B9C-5C82C00F1410";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns531GroupParts";
	rename -uid "55923AD8-42CF-9FC7-82FB-458F55691BE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet679";
	rename -uid "54853B6C-4D1C-40C1-EB7D-A5B4249D704F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8927";
	rename -uid "850AC0EC-4C8E-4A7F-0F9D-8580EE691D63";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1358";
	rename -uid "8775696D-4182-CE4A-90FA-35887BF67C34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns532";
	rename -uid "69CEBCE4-4AE4-8288-18C1-D3BD1CABD130";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak680";
	rename -uid "0971F2D9-4A06-AD28-3A24-41B9BC29DF78";
createNode objectSet -n "mgear_curveCns532Set";
	rename -uid "49581EE3-459A-F8A8-0DC5-0DB3F56BD222";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns532GroupId";
	rename -uid "E003D2F5-4FEA-AFCA-3793-FA936A86AC0B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns532GroupParts";
	rename -uid "EECAE182-4D18-C15D-8385-358955C4BBE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet680";
	rename -uid "F4C46CEE-4B95-B8C6-19C3-14922E8EBA4B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8929";
	rename -uid "BD64CB7A-47D0-7768-CFA1-BE961BF8E5C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1360";
	rename -uid "352948B5-41F9-B901-AB50-0783DA04E3F9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion192";
	rename -uid "2CA45DC2-48C9-477F-0A1F-7684B6323A19";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns533";
	rename -uid "C954A039-4998-9000-6FA8-5D9CBD701843";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak681";
	rename -uid "C558C168-4160-76B0-2FA2-E988617E8F16";
createNode objectSet -n "mgear_curveCns533Set";
	rename -uid "09BF7330-4BE7-285F-61F7-E0981475C327";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns533GroupId";
	rename -uid "A638424F-4996-12B4-C498-A39658CE4680";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns533GroupParts";
	rename -uid "2B75600A-447B-38A3-F081-709A708F8F0C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet681";
	rename -uid "E5C6BFBF-4ABE-9311-A38F-A693047184D9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8931";
	rename -uid "DD6C5D6F-4A14-2906-DA79-7F956EDB7128";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1362";
	rename -uid "93667F31-4D7C-B88D-1AF4-118FFAD51A7B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile1";
	rename -uid "92C21600-43AB-5A73-7A4E-BAA2C83F400C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile1";
	rename -uid "5E4CEB3F-46C1-FD6A-8E5F-D6B33CA28149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode mgear_curveCns -n "mgear_curveCns534";
	rename -uid "198257ED-4C1B-0BF5-BD3F-ACACBB33C110";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak682";
	rename -uid "66B7A0BD-4090-D9D1-0909-1A8D44230747";
createNode objectSet -n "mgear_curveCns534Set";
	rename -uid "9B550A8C-48F0-5BC6-534D-E7BA7ED448A8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns534GroupId";
	rename -uid "60F32B3C-4B10-B6C0-36D2-508AC8E6C0E6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns534GroupParts";
	rename -uid "F4CC2633-4B44-1F72-D005-488886266460";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet682";
	rename -uid "7551BA7C-4FC7-D43C-2D2E-9FB6CE59A71B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8933";
	rename -uid "5D5D2964-4965-26FC-B169-69A0940F1219";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1364";
	rename -uid "559A9D4A-468F-40C2-DCB1-EE93B1C86C23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion193";
	rename -uid "D9842A2C-45EA-90BB-BF28-F9BF67B05DD9";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns535";
	rename -uid "13745138-41ED-035D-7BEF-E3ABCE76FD88";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak683";
	rename -uid "F31F7794-4645-8F36-06BE-26A40F75D0D4";
createNode objectSet -n "mgear_curveCns535Set";
	rename -uid "E70371EC-4F0F-6D42-D1D5-7E97C397A2C9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns535GroupId";
	rename -uid "9E9D7B94-48EE-2CD1-B336-AEBDFA622A69";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns535GroupParts";
	rename -uid "F7873A17-48B5-C6C3-7E57-83B2672B52DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet683";
	rename -uid "BEA4D78D-428C-7947-01EE-10A100DC939C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8935";
	rename -uid "DECB0016-4BAE-3893-B900-D182F95DBEC4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1366";
	rename -uid "C36FF77B-4954-B488-BFED-5A8AA2845C74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion194";
	rename -uid "EA69787F-4A73-500E-025E-D586AFBAEDEC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns536";
	rename -uid "0248FA69-4596-2016-8B4F-28973A53AC43";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak684";
	rename -uid "C5CDD3DB-43FD-D076-3AB3-5EA7D3CB6AF3";
createNode objectSet -n "mgear_curveCns536Set";
	rename -uid "9F65AEE3-4248-04BF-E64E-40A4223BF0F2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns536GroupId";
	rename -uid "0F914E57-42D7-7F25-FEC7-8D98FF59557A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns536GroupParts";
	rename -uid "4B841503-4BB5-AB8D-825A-A49F6515BE47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet684";
	rename -uid "03055AE9-437C-1E28-5B51-54A121A4197C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8937";
	rename -uid "7B3150D8-4556-63A6-95F3-E3B0ACDD0F8B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1368";
	rename -uid "44588774-4753-F095-21B8-23AF07F91006";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion195";
	rename -uid "DE990FD5-4AC7-3133-B76F-2098D54D7FF8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns537";
	rename -uid "EADA9357-402D-5FEE-F5AC-4C8B3E3EBFC5";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak685";
	rename -uid "3229DB09-4D90-D4C5-D0CE-82B65DDF2014";
createNode objectSet -n "mgear_curveCns537Set";
	rename -uid "C1AB0384-4946-E6D9-620F-C7BB43097E62";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns537GroupId";
	rename -uid "6C1AF443-43E5-F214-CB7E-FE8F8AD14012";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns537GroupParts";
	rename -uid "8B935B45-4D98-236A-B09C-CEBBBC0E7103";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet685";
	rename -uid "E954C1FE-4B17-ED53-92BF-50B384BC3BCB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8939";
	rename -uid "7524D62E-4801-8181-0FD8-3F8AD29FBEB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1370";
	rename -uid "CEBFFA4D-4152-5292-B9E2-45B774B2F370";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion196";
	rename -uid "9398C2F9-432B-EB1A-2EC3-05ABD746A784";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns538";
	rename -uid "F4446E4F-4290-6623-2941-11AD50B35338";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak686";
	rename -uid "0E9912DE-462E-17C6-32E7-ACA8F84C2E6F";
createNode objectSet -n "mgear_curveCns538Set";
	rename -uid "9E628A4A-46D3-58DF-0187-2F9FD194F83C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns538GroupId";
	rename -uid "D63CA621-4C85-461D-B314-FE9AB22DF574";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns538GroupParts";
	rename -uid "4EEAB4E4-4BD8-D604-18DA-ABB3D3D9040A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet686";
	rename -uid "CE477E19-4178-1915-7D99-14B1277C7418";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8941";
	rename -uid "6FF541F0-4DFE-5B2B-0FA1-C790387C0CE4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1372";
	rename -uid "D79C26F5-492C-641C-871A-229465BF71CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion197";
	rename -uid "9CB99366-47C1-B65B-41E9-A5B28056254F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns539";
	rename -uid "C74945B5-465F-82A5-0585-668800A212FB";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak687";
	rename -uid "3C7F0ABA-47E7-589C-B3E8-579DF969820A";
createNode objectSet -n "mgear_curveCns539Set";
	rename -uid "D4DBD11A-4B08-0529-3B1A-B092F2EB76B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns539GroupId";
	rename -uid "471BBEAA-402A-D149-A903-45BE93CB1551";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns539GroupParts";
	rename -uid "A7DD0C92-4C1B-513E-067D-198D749167CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet687";
	rename -uid "48BD6398-4E36-5B80-F160-EDBFF8152E27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8943";
	rename -uid "6079790A-4B0B-6B3C-07ED-1497EE2FE2C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1374";
	rename -uid "668CE6E9-4B44-7770-CF19-A2B2D1B19DBD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion198";
	rename -uid "773A4BEF-4FF4-D203-DA71-818C92E3306A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns540";
	rename -uid "B1EEEDA5-4B94-2971-753B-49A846CC0BBB";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak688";
	rename -uid "AF609184-48E8-948C-D1BC-4F8546C6A66C";
createNode objectSet -n "mgear_curveCns540Set";
	rename -uid "E6B1899A-4F02-4576-C4AD-46A661DD394C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns540GroupId";
	rename -uid "968D387E-45E3-1917-7474-349FF81EDAD4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns540GroupParts";
	rename -uid "D7D0D276-4B6E-1D72-956B-4C8009B6DCDD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet688";
	rename -uid "D3D6F629-4208-71FD-55C9-FCADA88490BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8945";
	rename -uid "EE4FDA44-4405-8267-04BF-F6A38977EAE5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1376";
	rename -uid "ACA8725D-47ED-E167-C06E-FC91711760E7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "9C81FF29-4EDC-6C2E-6D14-CEA707BB84C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "5A72B96E-44D5-0B4C-60E4-C99E50E9DFE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns541";
	rename -uid "C01317C7-4BA5-AEFF-AA03-31B482A8AC4C";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak689";
	rename -uid "A24547DB-47B1-1309-3C4F-758EEABF241E";
createNode objectSet -n "mgear_curveCns541Set";
	rename -uid "5C0E18C3-4F0F-9417-7831-D9BB99C94AF8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns541GroupId";
	rename -uid "0D0C254E-450A-7086-BC3E-EA80C61F2B7B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns541GroupParts";
	rename -uid "66FBBD4D-457F-8A41-41FE-F0B1244A62C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet689";
	rename -uid "DAC19EC4-443B-12B2-FFFC-34B87D7DB894";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8947";
	rename -uid "66990B65-49F2-059D-2F35-BA880B6C9206";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1378";
	rename -uid "5F346447-4CFF-3F06-55DD-E3B58556DFC1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns542";
	rename -uid "83981612-4378-F47A-43BF-819307F10983";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak690";
	rename -uid "C101085F-4D85-FE30-9F62-0E9423A668D3";
createNode objectSet -n "mgear_curveCns542Set";
	rename -uid "48542923-4526-F39E-7845-16BF0457D2DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns542GroupId";
	rename -uid "A721093B-4848-583E-8B09-968B483BD664";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns542GroupParts";
	rename -uid "2F5487C4-45C1-4275-72E2-1ABCCEB1277D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet690";
	rename -uid "D69E5E36-475B-B303-A6E6-9AB10CDD9C17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8949";
	rename -uid "430EAEF9-49A4-4904-DB33-548082467643";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1380";
	rename -uid "B5BCC2C5-46C6-5012-D05B-EAA35E39C4BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns543";
	rename -uid "A675F9B4-4EEC-897F-2875-70A4E63B7614";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak691";
	rename -uid "8DEFB414-4274-1954-1096-439477823A78";
createNode objectSet -n "mgear_curveCns543Set";
	rename -uid "F417217E-41F5-CF79-FA9C-698438CD4B34";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns543GroupId";
	rename -uid "3633A309-4177-E986-8C2D-C094B573974D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns543GroupParts";
	rename -uid "F6A3DF3E-4814-2E85-4E34-FBA0188AFEEB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet691";
	rename -uid "D2B52FA3-451A-C2EB-D6CD-EFBCCC2F3A9E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8951";
	rename -uid "CA4457B1-43D0-12D5-F212-55BCF5092953";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1382";
	rename -uid "26928462-4B98-B1E5-22EB-329A26F8A06E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile1";
	rename -uid "8DBA2E2E-4687-885B-8DF9-B1A09C539EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile1";
	rename -uid "2722B2B1-4874-93B4-3796-40A2079EE22D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns544";
	rename -uid "44A18834-445D-83A3-9450-30BA247C1171";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak692";
	rename -uid "BBB7DA85-4F92-165E-09E5-BA9C0D48FACB";
createNode objectSet -n "mgear_curveCns544Set";
	rename -uid "E93D0E52-48A0-5FED-1B6F-E89BA9456B7F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns544GroupId";
	rename -uid "29602CF9-4702-E0FC-D9B5-4198DB6A8CAF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns544GroupParts";
	rename -uid "EE45AD5A-405A-681F-3C94-DFBCB78740F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet692";
	rename -uid "ADFF8C59-4378-BA49-DF89-E58BD506E68D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8953";
	rename -uid "7C13BD79-4868-A30B-3C61-7887716D80B1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1384";
	rename -uid "75955D22-472D-B2E9-317A-E99161D3228A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns545";
	rename -uid "C713C512-4C11-0386-4F43-50933D28BDD0";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak693";
	rename -uid "62B0AFD2-45A0-AD9A-D6B3-B3BBFECD5FB2";
createNode objectSet -n "mgear_curveCns545Set";
	rename -uid "0A29FF01-45F8-478B-6F73-D589AE039010";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns545GroupId";
	rename -uid "A368C1FA-4838-DA2C-C3D6-20BAB978165D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns545GroupParts";
	rename -uid "CA6F6C16-4BAD-368C-A209-219BE6176612";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet693";
	rename -uid "3B92DCC5-41F5-B8B1-E698-7DBE23E6DD7F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8955";
	rename -uid "E37BD6F8-4F1E-F77C-72FA-C98EA506185C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1386";
	rename -uid "09C80E38-4EB3-218A-A768-31A6793EEB22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns546";
	rename -uid "94799E1B-4738-4574-D39E-08A555E46ACC";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak694";
	rename -uid "5FA1CED9-4832-3D0A-C39E-3BBE3B54A13E";
createNode objectSet -n "mgear_curveCns546Set";
	rename -uid "24463710-4345-C8A2-DA0C-C3A76252391B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns546GroupId";
	rename -uid "8AC54D32-470E-4F7C-1522-B08CBA52ADD1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns546GroupParts";
	rename -uid "3B4A7ED1-42AF-E7D8-272A-FFA58A8F6163";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet694";
	rename -uid "2B60AB77-44ED-C45F-C42C-63B9150EB8EF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8957";
	rename -uid "C16D011F-4C31-B8B3-20F0-D4960F107741";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1388";
	rename -uid "EF6177AB-4FA8-CF38-A6B5-40836BCB6038";
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
connectAttr "spine_C0_root_st_profile.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile.o" "spine_C0_root.sq_profile";
connectAttr "arm_L0_root_st_profile.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint12.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint12.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint12.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint12.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint12.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint12.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint12.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint12.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint12.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint12.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint12.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint12.w0" "finger_L3_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint12.wum";
connectAttr "unitConversion185.o" "finger_L3_blade_aimConstraint12.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint12.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint12.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint12.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint12.w0" "finger_L3_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns519.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak667.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns519GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns519Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8903.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet667.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint12.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint12.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint12.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint12.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint12.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint12.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint12.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint12.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint12.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint12.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint12.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint12.w0" "finger_L2_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint12.wum";
connectAttr "unitConversion186.o" "finger_L2_blade_aimConstraint12.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint12.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint12.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint12.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint12.w0" "finger_L2_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns520.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak668.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns520GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns520Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8905.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet668.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint12.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint12.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint12.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint12.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint12.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint12.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint12.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint12.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint12.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint12.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint12.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint12.w0" "finger_L1_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint12.wum";
connectAttr "unitConversion187.o" "finger_L1_blade_aimConstraint12.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint12.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint12.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint12.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint12.w0" "finger_L1_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns521.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak669.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns521GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns521Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8907.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet669.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint12.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint12.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint12.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint12.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint12.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint12.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint12.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint12.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint12.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint12.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint12.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint12.w0" "meta_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion184.o" "meta_L0_blade_aimConstraint12.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint12.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint12.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint12.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint12.w0" "meta_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns518.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak666.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns518GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns518Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8901.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet666.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint12.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint12.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint12.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint12.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint12.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint12.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint12.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint12.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint12.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint12.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint12.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint12.w0" "finger_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion188.o" "finger_L0_blade_aimConstraint12.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint12.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint12.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint12.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint12.w0" "finger_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns522.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak670.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns522GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns522Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8909.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet670.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint12.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint12.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint12.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint12.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint12.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint12.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint12.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint12.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint12.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint12.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint12.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint12.w0" "thumb_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion189.o" "thumb_L0_blade_aimConstraint12.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint12.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint12.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint12.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint12.w0" "thumb_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns523.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak671.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns523GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns523Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8911.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet671.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns517.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak665.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns517GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns517Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8899.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet665.mwc" "arm_L0_crvShape.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint12.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint12.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint12.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint12.crx" "shoulder_L0_blade.rx" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint12.cry" "shoulder_L0_blade.ry" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint12.crz" "shoulder_L0_blade.rz" -l on
		;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint12.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint12.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint12.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint12.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint12.cro";
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint12.w0" "shoulder_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion183.o" "shoulder_L0_blade_aimConstraint12.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint12.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint12.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint12.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint12.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint12.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint12.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint12.w0" "shoulder_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns516.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak664.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns516GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns516Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8897.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet664.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns527.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak675.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns527GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns527Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8919.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet675.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns528.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak676.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns528GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns528Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8921.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet676.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint12.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint12.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint12.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint12.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint12.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint12.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint12.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint12.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint12.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint12.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint12.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint12.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint12.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint12.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint12.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint12.w0" "tongue_C0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint12.wum";
connectAttr "unitConversion191.o" "tongue_C0_blade_aimConstraint12.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint12.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint12.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint12.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint12.w0" "tongue_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns530.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak678.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns530GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns530Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8925.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet678.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns526.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak674.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns526GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns526Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8917.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet674.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns529.og[0]" "mouth_C0_crv12Shape.cr";
connectAttr "tweak677.pl[0].cp[0]" "mouth_C0_crv12Shape.twl";
connectAttr "mgear_curveCns529GroupId.id" "mouth_C0_crv12Shape.iog.og[0].gid";
connectAttr "mgear_curveCns529Set.mwc" "mouth_C0_crv12Shape.iog.og[0].gco";
connectAttr "groupId8923.id" "mouth_C0_crv12Shape.iog.og[1].gid";
connectAttr "tweakSet677.mwc" "mouth_C0_crv12Shape.iog.og[1].gco";
connectAttr "mgear_curveCns531.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak679.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns531GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns531Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8927.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet679.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns532.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak680.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns532GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns532Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8929.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet680.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns525.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak673.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns525GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns525Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8915.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet673.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint12.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint12.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint12.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint12.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint12.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint12.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint12.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint12.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint12.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint12.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint12.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint12.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint12.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint12.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint12.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint12.w0" "neck_C0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint12.wum";
connectAttr "unitConversion190.o" "neck_C0_blade_aimConstraint12.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint12.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint12.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint12.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint12.w0" "neck_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns524.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak672.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns524GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns524Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8913.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet672.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "arm_R0_root_st_profile1.o" "arm_R0_root.st_profile";
connectAttr "arm_R0_root_sq_profile1.o" "arm_R0_root.sq_profile";
connectAttr "finger_R3_blade_pointConstraint4.ctx" "finger_R3_blade.tx" -l on;
connectAttr "finger_R3_blade_pointConstraint4.cty" "finger_R3_blade.ty" -l on;
connectAttr "finger_R3_blade_pointConstraint4.ctz" "finger_R3_blade.tz" -l on;
connectAttr "finger_R3_blade_aimConstraint4.crx" "finger_R3_blade.rx" -l on;
connectAttr "finger_R3_blade_aimConstraint4.cry" "finger_R3_blade.ry" -l on;
connectAttr "finger_R3_blade_aimConstraint4.crz" "finger_R3_blade.rz" -l on;
connectAttr "finger_R3_blade.pim" "finger_R3_blade_aimConstraint4.cpim";
connectAttr "finger_R3_blade.t" "finger_R3_blade_aimConstraint4.ct";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_aimConstraint4.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_aimConstraint4.crt";
connectAttr "finger_R3_blade.ro" "finger_R3_blade_aimConstraint4.cro";
connectAttr "finger_R3_0_loc.t" "finger_R3_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_R3_0_loc.rp" "finger_R3_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_R3_0_loc.rpt" "finger_R3_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_R3_0_loc.pm" "finger_R3_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_R3_blade_aimConstraint4.w0" "finger_R3_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_R3_root.wm" "finger_R3_blade_aimConstraint4.wum";
connectAttr "unitConversion194.o" "finger_R3_blade_aimConstraint4.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint4.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint4.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint4.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint4.w0" "finger_R3_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns536.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak684.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns536GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns536Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8937.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet684.mwc" "finger_R3_crvShape.iog.og[1].gco";
connectAttr "finger_R2_blade_pointConstraint4.ctx" "finger_R2_blade.tx" -l on;
connectAttr "finger_R2_blade_pointConstraint4.cty" "finger_R2_blade.ty" -l on;
connectAttr "finger_R2_blade_pointConstraint4.ctz" "finger_R2_blade.tz" -l on;
connectAttr "finger_R2_blade_aimConstraint4.crx" "finger_R2_blade.rx" -l on;
connectAttr "finger_R2_blade_aimConstraint4.cry" "finger_R2_blade.ry" -l on;
connectAttr "finger_R2_blade_aimConstraint4.crz" "finger_R2_blade.rz" -l on;
connectAttr "finger_R2_blade.pim" "finger_R2_blade_aimConstraint4.cpim";
connectAttr "finger_R2_blade.t" "finger_R2_blade_aimConstraint4.ct";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_aimConstraint4.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_aimConstraint4.crt";
connectAttr "finger_R2_blade.ro" "finger_R2_blade_aimConstraint4.cro";
connectAttr "finger_R2_0_loc.t" "finger_R2_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_R2_0_loc.rp" "finger_R2_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_R2_0_loc.rpt" "finger_R2_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_R2_0_loc.pm" "finger_R2_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_R2_blade_aimConstraint4.w0" "finger_R2_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_R2_root.wm" "finger_R2_blade_aimConstraint4.wum";
connectAttr "unitConversion195.o" "finger_R2_blade_aimConstraint4.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint4.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint4.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint4.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint4.w0" "finger_R2_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns537.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak685.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns537GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns537Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8939.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet685.mwc" "finger_R2_crvShape.iog.og[1].gco";
connectAttr "finger_R1_blade_pointConstraint4.ctx" "finger_R1_blade.tx" -l on;
connectAttr "finger_R1_blade_pointConstraint4.cty" "finger_R1_blade.ty" -l on;
connectAttr "finger_R1_blade_pointConstraint4.ctz" "finger_R1_blade.tz" -l on;
connectAttr "finger_R1_blade_aimConstraint4.crx" "finger_R1_blade.rx" -l on;
connectAttr "finger_R1_blade_aimConstraint4.cry" "finger_R1_blade.ry" -l on;
connectAttr "finger_R1_blade_aimConstraint4.crz" "finger_R1_blade.rz" -l on;
connectAttr "finger_R1_blade.pim" "finger_R1_blade_aimConstraint4.cpim";
connectAttr "finger_R1_blade.t" "finger_R1_blade_aimConstraint4.ct";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_aimConstraint4.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_aimConstraint4.crt";
connectAttr "finger_R1_blade.ro" "finger_R1_blade_aimConstraint4.cro";
connectAttr "finger_R1_0_loc.t" "finger_R1_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_R1_0_loc.rp" "finger_R1_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_R1_0_loc.rpt" "finger_R1_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_R1_0_loc.pm" "finger_R1_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_R1_blade_aimConstraint4.w0" "finger_R1_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_R1_root.wm" "finger_R1_blade_aimConstraint4.wum";
connectAttr "unitConversion196.o" "finger_R1_blade_aimConstraint4.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint4.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint4.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint4.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint4.w0" "finger_R1_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns538.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak686.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns538GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns538Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8941.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet686.mwc" "finger_R1_crvShape.iog.og[1].gco";
connectAttr "meta_R0_blade_pointConstraint4.ctx" "meta_R0_blade.tx" -l on;
connectAttr "meta_R0_blade_pointConstraint4.cty" "meta_R0_blade.ty" -l on;
connectAttr "meta_R0_blade_pointConstraint4.ctz" "meta_R0_blade.tz" -l on;
connectAttr "meta_R0_blade_aimConstraint4.crx" "meta_R0_blade.rx" -l on;
connectAttr "meta_R0_blade_aimConstraint4.cry" "meta_R0_blade.ry" -l on;
connectAttr "meta_R0_blade_aimConstraint4.crz" "meta_R0_blade.rz" -l on;
connectAttr "meta_R0_blade.pim" "meta_R0_blade_aimConstraint4.cpim";
connectAttr "meta_R0_blade.t" "meta_R0_blade_aimConstraint4.ct";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_aimConstraint4.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_aimConstraint4.crt";
connectAttr "meta_R0_blade.ro" "meta_R0_blade_aimConstraint4.cro";
connectAttr "meta_R0_0_loc.t" "meta_R0_blade_aimConstraint4.tg[0].tt";
connectAttr "meta_R0_0_loc.rp" "meta_R0_blade_aimConstraint4.tg[0].trp";
connectAttr "meta_R0_0_loc.rpt" "meta_R0_blade_aimConstraint4.tg[0].trt";
connectAttr "meta_R0_0_loc.pm" "meta_R0_blade_aimConstraint4.tg[0].tpm";
connectAttr "meta_R0_blade_aimConstraint4.w0" "meta_R0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "meta_R0_root.wm" "meta_R0_blade_aimConstraint4.wum";
connectAttr "unitConversion193.o" "meta_R0_blade_aimConstraint4.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint4.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint4.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint4.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint4.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint4.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint4.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint4.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint4.w0" "meta_R0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns535.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak683.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns535GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns535Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8935.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet683.mwc" "meta_R0_crvShape.iog.og[1].gco";
connectAttr "finger_R0_blade_pointConstraint4.ctx" "finger_R0_blade.tx" -l on;
connectAttr "finger_R0_blade_pointConstraint4.cty" "finger_R0_blade.ty" -l on;
connectAttr "finger_R0_blade_pointConstraint4.ctz" "finger_R0_blade.tz" -l on;
connectAttr "finger_R0_blade_aimConstraint4.crx" "finger_R0_blade.rx" -l on;
connectAttr "finger_R0_blade_aimConstraint4.cry" "finger_R0_blade.ry" -l on;
connectAttr "finger_R0_blade_aimConstraint4.crz" "finger_R0_blade.rz" -l on;
connectAttr "finger_R0_blade.pim" "finger_R0_blade_aimConstraint4.cpim";
connectAttr "finger_R0_blade.t" "finger_R0_blade_aimConstraint4.ct";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_aimConstraint4.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_aimConstraint4.crt";
connectAttr "finger_R0_blade.ro" "finger_R0_blade_aimConstraint4.cro";
connectAttr "finger_R0_0_loc.t" "finger_R0_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_R0_0_loc.rp" "finger_R0_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_R0_0_loc.rpt" "finger_R0_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_R0_0_loc.pm" "finger_R0_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_R0_blade_aimConstraint4.w0" "finger_R0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_R0_root.wm" "finger_R0_blade_aimConstraint4.wum";
connectAttr "unitConversion197.o" "finger_R0_blade_aimConstraint4.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint4.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint4.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint4.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint4.w0" "finger_R0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns539.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak687.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns539GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns539Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8943.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet687.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "thumb_R0_blade_pointConstraint4.ctx" "thumb_R0_blade.tx" -l on;
connectAttr "thumb_R0_blade_pointConstraint4.cty" "thumb_R0_blade.ty" -l on;
connectAttr "thumb_R0_blade_pointConstraint4.ctz" "thumb_R0_blade.tz" -l on;
connectAttr "thumb_R0_blade_aimConstraint4.crx" "thumb_R0_blade.rx" -l on;
connectAttr "thumb_R0_blade_aimConstraint4.cry" "thumb_R0_blade.ry" -l on;
connectAttr "thumb_R0_blade_aimConstraint4.crz" "thumb_R0_blade.rz" -l on;
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_aimConstraint4.cpim";
connectAttr "thumb_R0_blade.t" "thumb_R0_blade_aimConstraint4.ct";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_aimConstraint4.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_aimConstraint4.crt";
connectAttr "thumb_R0_blade.ro" "thumb_R0_blade_aimConstraint4.cro";
connectAttr "thumb_R0_0_loc.t" "thumb_R0_blade_aimConstraint4.tg[0].tt";
connectAttr "thumb_R0_0_loc.rp" "thumb_R0_blade_aimConstraint4.tg[0].trp";
connectAttr "thumb_R0_0_loc.rpt" "thumb_R0_blade_aimConstraint4.tg[0].trt";
connectAttr "thumb_R0_0_loc.pm" "thumb_R0_blade_aimConstraint4.tg[0].tpm";
connectAttr "thumb_R0_blade_aimConstraint4.w0" "thumb_R0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "thumb_R0_root.wm" "thumb_R0_blade_aimConstraint4.wum";
connectAttr "unitConversion198.o" "thumb_R0_blade_aimConstraint4.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint4.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint4.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint4.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint4.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint4.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint4.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint4.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint4.w0" "thumb_R0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns540.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak688.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns540GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns540Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8945.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet688.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns534.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak682.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns534GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns534Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8933.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet682.mwc" "arm_R0_crvShape.iog.og[1].gco";
connectAttr "shoulder_R0_blade_pointConstraint4.ctx" "shoulder_R0_blade.tx" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint4.cty" "shoulder_R0_blade.ty" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint4.ctz" "shoulder_R0_blade.tz" -l on
		;
connectAttr "shoulder_R0_blade_aimConstraint4.crx" "shoulder_R0_blade.rx" -l on;
connectAttr "shoulder_R0_blade_aimConstraint4.cry" "shoulder_R0_blade.ry" -l on;
connectAttr "shoulder_R0_blade_aimConstraint4.crz" "shoulder_R0_blade.rz" -l on;
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_aimConstraint4.cpim";
connectAttr "shoulder_R0_blade.t" "shoulder_R0_blade_aimConstraint4.ct";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_aimConstraint4.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_aimConstraint4.crt";
connectAttr "shoulder_R0_blade.ro" "shoulder_R0_blade_aimConstraint4.cro";
connectAttr "shoulder_R0_tip.t" "shoulder_R0_blade_aimConstraint4.tg[0].tt";
connectAttr "shoulder_R0_tip.rp" "shoulder_R0_blade_aimConstraint4.tg[0].trp";
connectAttr "shoulder_R0_tip.rpt" "shoulder_R0_blade_aimConstraint4.tg[0].trt";
connectAttr "shoulder_R0_tip.pm" "shoulder_R0_blade_aimConstraint4.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint4.w0" "shoulder_R0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint4.wum";
connectAttr "unitConversion192.o" "shoulder_R0_blade_aimConstraint4.ox";
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_pointConstraint4.cpim";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_pointConstraint4.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_pointConstraint4.crt";
connectAttr "shoulder_R0_root.t" "shoulder_R0_blade_pointConstraint4.tg[0].tt";
connectAttr "shoulder_R0_root.rp" "shoulder_R0_blade_pointConstraint4.tg[0].trp"
		;
connectAttr "shoulder_R0_root.rpt" "shoulder_R0_blade_pointConstraint4.tg[0].trt"
		;
connectAttr "shoulder_R0_root.pm" "shoulder_R0_blade_pointConstraint4.tg[0].tpm"
		;
connectAttr "shoulder_R0_blade_pointConstraint4.w0" "shoulder_R0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns533.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak681.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns533GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns533Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8931.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet681.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint12.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint12.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint12.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint12.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint12.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint12.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint12.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint12.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint12.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint12.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint12.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint12.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint12.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint12.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint12.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint12.w0" "spine_C0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint12.wum";
connectAttr "unitConversion182.o" "spine_C0_blade_aimConstraint12.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint12.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint12.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint12.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint12.w0" "spine_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns515.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak663.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns515GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns515Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8895.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet663.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns542.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak690.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns542GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns542Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8949.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet690.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns543.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak691.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns543GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns543Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8951.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet691.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns541.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak689.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns541GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns541Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8947.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet689.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile1.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile1.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns545.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak693.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns545GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns545Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8955.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet693.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns546.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak694.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns546GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns546Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8957.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet694.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns544.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak692.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns544GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns544Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8953.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet692.mwc" "leg_R0_crvShape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion182.i";
connectAttr "mgear_curveCns515GroupParts.og" "mgear_curveCns515.ip[0].ig";
connectAttr "mgear_curveCns515GroupId.id" "mgear_curveCns515.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns515.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns515.inputs[1]";
connectAttr "groupParts1326.og" "tweak663.ip[0].ig";
connectAttr "groupId8895.id" "tweak663.ip[0].gi";
connectAttr "mgear_curveCns515GroupId.msg" "mgear_curveCns515Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns515Set.dsm" -na;
connectAttr "mgear_curveCns515.msg" "mgear_curveCns515Set.ub[0]";
connectAttr "tweak663.og[0]" "mgear_curveCns515GroupParts.ig";
connectAttr "mgear_curveCns515GroupId.id" "mgear_curveCns515GroupParts.gi";
connectAttr "groupId8895.msg" "tweakSet663.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet663.dsm" -na;
connectAttr "tweak663.msg" "tweakSet663.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts1326.ig";
connectAttr "groupId8895.id" "groupParts1326.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion183.i";
connectAttr "mgear_curveCns516GroupParts.og" "mgear_curveCns516.ip[0].ig";
connectAttr "mgear_curveCns516GroupId.id" "mgear_curveCns516.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns516.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns516.inputs[1]";
connectAttr "groupParts1328.og" "tweak664.ip[0].ig";
connectAttr "groupId8897.id" "tweak664.ip[0].gi";
connectAttr "mgear_curveCns516GroupId.msg" "mgear_curveCns516Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns516Set.dsm" -na;
connectAttr "mgear_curveCns516.msg" "mgear_curveCns516Set.ub[0]";
connectAttr "tweak664.og[0]" "mgear_curveCns516GroupParts.ig";
connectAttr "mgear_curveCns516GroupId.id" "mgear_curveCns516GroupParts.gi";
connectAttr "groupId8897.msg" "tweakSet664.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet664.dsm" -na;
connectAttr "tweak664.msg" "tweakSet664.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts1328.ig";
connectAttr "groupId8897.id" "groupParts1328.gi";
connectAttr "mgear_curveCns517GroupParts.og" "mgear_curveCns517.ip[0].ig";
connectAttr "mgear_curveCns517GroupId.id" "mgear_curveCns517.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns517.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns517.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns517.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns517.inputs[3]";
connectAttr "groupParts1330.og" "tweak665.ip[0].ig";
connectAttr "groupId8899.id" "tweak665.ip[0].gi";
connectAttr "mgear_curveCns517GroupId.msg" "mgear_curveCns517Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns517Set.dsm" -na;
connectAttr "mgear_curveCns517.msg" "mgear_curveCns517Set.ub[0]";
connectAttr "tweak665.og[0]" "mgear_curveCns517GroupParts.ig";
connectAttr "mgear_curveCns517GroupId.id" "mgear_curveCns517GroupParts.gi";
connectAttr "groupId8899.msg" "tweakSet665.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet665.dsm" -na;
connectAttr "tweak665.msg" "tweakSet665.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts1330.ig";
connectAttr "groupId8899.id" "groupParts1330.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion184.i";
connectAttr "mgear_curveCns518GroupParts.og" "mgear_curveCns518.ip[0].ig";
connectAttr "mgear_curveCns518GroupId.id" "mgear_curveCns518.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns518.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns518.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns518.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns518.inputs[3]";
connectAttr "groupParts1332.og" "tweak666.ip[0].ig";
connectAttr "groupId8901.id" "tweak666.ip[0].gi";
connectAttr "mgear_curveCns518GroupId.msg" "mgear_curveCns518Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns518Set.dsm" -na;
connectAttr "mgear_curveCns518.msg" "mgear_curveCns518Set.ub[0]";
connectAttr "tweak666.og[0]" "mgear_curveCns518GroupParts.ig";
connectAttr "mgear_curveCns518GroupId.id" "mgear_curveCns518GroupParts.gi";
connectAttr "groupId8901.msg" "tweakSet666.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet666.dsm" -na;
connectAttr "tweak666.msg" "tweakSet666.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts1332.ig";
connectAttr "groupId8901.id" "groupParts1332.gi";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion185.i";
connectAttr "mgear_curveCns519GroupParts.og" "mgear_curveCns519.ip[0].ig";
connectAttr "mgear_curveCns519GroupId.id" "mgear_curveCns519.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns519.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns519.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns519.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns519.inputs[3]";
connectAttr "groupParts1334.og" "tweak667.ip[0].ig";
connectAttr "groupId8903.id" "tweak667.ip[0].gi";
connectAttr "mgear_curveCns519GroupId.msg" "mgear_curveCns519Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns519Set.dsm" -na;
connectAttr "mgear_curveCns519.msg" "mgear_curveCns519Set.ub[0]";
connectAttr "tweak667.og[0]" "mgear_curveCns519GroupParts.ig";
connectAttr "mgear_curveCns519GroupId.id" "mgear_curveCns519GroupParts.gi";
connectAttr "groupId8903.msg" "tweakSet667.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet667.dsm" -na;
connectAttr "tweak667.msg" "tweakSet667.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts1334.ig";
connectAttr "groupId8903.id" "groupParts1334.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion186.i";
connectAttr "mgear_curveCns520GroupParts.og" "mgear_curveCns520.ip[0].ig";
connectAttr "mgear_curveCns520GroupId.id" "mgear_curveCns520.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns520.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns520.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns520.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns520.inputs[3]";
connectAttr "groupParts1336.og" "tweak668.ip[0].ig";
connectAttr "groupId8905.id" "tweak668.ip[0].gi";
connectAttr "mgear_curveCns520GroupId.msg" "mgear_curveCns520Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns520Set.dsm" -na;
connectAttr "mgear_curveCns520.msg" "mgear_curveCns520Set.ub[0]";
connectAttr "tweak668.og[0]" "mgear_curveCns520GroupParts.ig";
connectAttr "mgear_curveCns520GroupId.id" "mgear_curveCns520GroupParts.gi";
connectAttr "groupId8905.msg" "tweakSet668.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet668.dsm" -na;
connectAttr "tweak668.msg" "tweakSet668.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts1336.ig";
connectAttr "groupId8905.id" "groupParts1336.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion187.i";
connectAttr "mgear_curveCns521GroupParts.og" "mgear_curveCns521.ip[0].ig";
connectAttr "mgear_curveCns521GroupId.id" "mgear_curveCns521.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns521.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns521.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns521.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns521.inputs[3]";
connectAttr "groupParts1338.og" "tweak669.ip[0].ig";
connectAttr "groupId8907.id" "tweak669.ip[0].gi";
connectAttr "mgear_curveCns521GroupId.msg" "mgear_curveCns521Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns521Set.dsm" -na;
connectAttr "mgear_curveCns521.msg" "mgear_curveCns521Set.ub[0]";
connectAttr "tweak669.og[0]" "mgear_curveCns521GroupParts.ig";
connectAttr "mgear_curveCns521GroupId.id" "mgear_curveCns521GroupParts.gi";
connectAttr "groupId8907.msg" "tweakSet669.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet669.dsm" -na;
connectAttr "tweak669.msg" "tweakSet669.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts1338.ig";
connectAttr "groupId8907.id" "groupParts1338.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion188.i";
connectAttr "mgear_curveCns522GroupParts.og" "mgear_curveCns522.ip[0].ig";
connectAttr "mgear_curveCns522GroupId.id" "mgear_curveCns522.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns522.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns522.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns522.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns522.inputs[3]";
connectAttr "groupParts1340.og" "tweak670.ip[0].ig";
connectAttr "groupId8909.id" "tweak670.ip[0].gi";
connectAttr "mgear_curveCns522GroupId.msg" "mgear_curveCns522Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns522Set.dsm" -na;
connectAttr "mgear_curveCns522.msg" "mgear_curveCns522Set.ub[0]";
connectAttr "tweak670.og[0]" "mgear_curveCns522GroupParts.ig";
connectAttr "mgear_curveCns522GroupId.id" "mgear_curveCns522GroupParts.gi";
connectAttr "groupId8909.msg" "tweakSet670.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet670.dsm" -na;
connectAttr "tweak670.msg" "tweakSet670.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts1340.ig";
connectAttr "groupId8909.id" "groupParts1340.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion189.i";
connectAttr "mgear_curveCns523GroupParts.og" "mgear_curveCns523.ip[0].ig";
connectAttr "mgear_curveCns523GroupId.id" "mgear_curveCns523.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns523.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns523.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns523.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns523.inputs[3]";
connectAttr "groupParts1342.og" "tweak671.ip[0].ig";
connectAttr "groupId8911.id" "tweak671.ip[0].gi";
connectAttr "mgear_curveCns523GroupId.msg" "mgear_curveCns523Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns523Set.dsm" -na;
connectAttr "mgear_curveCns523.msg" "mgear_curveCns523Set.ub[0]";
connectAttr "tweak671.og[0]" "mgear_curveCns523GroupParts.ig";
connectAttr "mgear_curveCns523GroupId.id" "mgear_curveCns523GroupParts.gi";
connectAttr "groupId8911.msg" "tweakSet671.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet671.dsm" -na;
connectAttr "tweak671.msg" "tweakSet671.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts1342.ig";
connectAttr "groupId8911.id" "groupParts1342.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion190.i";
connectAttr "mgear_curveCns524GroupParts.og" "mgear_curveCns524.ip[0].ig";
connectAttr "mgear_curveCns524GroupId.id" "mgear_curveCns524.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns524.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns524.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns524.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns524.inputs[3]";
connectAttr "groupParts1344.og" "tweak672.ip[0].ig";
connectAttr "groupId8913.id" "tweak672.ip[0].gi";
connectAttr "mgear_curveCns524GroupId.msg" "mgear_curveCns524Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns524Set.dsm" -na;
connectAttr "mgear_curveCns524.msg" "mgear_curveCns524Set.ub[0]";
connectAttr "tweak672.og[0]" "mgear_curveCns524GroupParts.ig";
connectAttr "mgear_curveCns524GroupId.id" "mgear_curveCns524GroupParts.gi";
connectAttr "groupId8913.msg" "tweakSet672.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet672.dsm" -na;
connectAttr "tweak672.msg" "tweakSet672.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts1344.ig";
connectAttr "groupId8913.id" "groupParts1344.gi";
connectAttr "mgear_curveCns525GroupParts.og" "mgear_curveCns525.ip[0].ig";
connectAttr "mgear_curveCns525GroupId.id" "mgear_curveCns525.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns525.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns525.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns525.inputs[2]";
connectAttr "groupParts1346.og" "tweak673.ip[0].ig";
connectAttr "groupId8915.id" "tweak673.ip[0].gi";
connectAttr "mgear_curveCns525GroupId.msg" "mgear_curveCns525Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns525Set.dsm" -na;
connectAttr "mgear_curveCns525.msg" "mgear_curveCns525Set.ub[0]";
connectAttr "tweak673.og[0]" "mgear_curveCns525GroupParts.ig";
connectAttr "mgear_curveCns525GroupId.id" "mgear_curveCns525GroupParts.gi";
connectAttr "groupId8915.msg" "tweakSet673.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet673.dsm" -na;
connectAttr "tweak673.msg" "tweakSet673.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts1346.ig";
connectAttr "groupId8915.id" "groupParts1346.gi";
connectAttr "mgear_curveCns526GroupParts.og" "mgear_curveCns526.ip[0].ig";
connectAttr "mgear_curveCns526GroupId.id" "mgear_curveCns526.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns526.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns526.inputs[1]";
connectAttr "groupParts1348.og" "tweak674.ip[0].ig";
connectAttr "groupId8917.id" "tweak674.ip[0].gi";
connectAttr "mgear_curveCns526GroupId.msg" "mgear_curveCns526Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns526Set.dsm"
		 -na;
connectAttr "mgear_curveCns526.msg" "mgear_curveCns526Set.ub[0]";
connectAttr "tweak674.og[0]" "mgear_curveCns526GroupParts.ig";
connectAttr "mgear_curveCns526GroupId.id" "mgear_curveCns526GroupParts.gi";
connectAttr "groupId8917.msg" "tweakSet674.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet674.dsm"
		 -na;
connectAttr "tweak674.msg" "tweakSet674.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1348.ig"
		;
connectAttr "groupId8917.id" "groupParts1348.gi";
connectAttr "mgear_curveCns527GroupParts.og" "mgear_curveCns527.ip[0].ig";
connectAttr "mgear_curveCns527GroupId.id" "mgear_curveCns527.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns527.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns527.inputs[1]";
connectAttr "groupParts1350.og" "tweak675.ip[0].ig";
connectAttr "groupId8919.id" "tweak675.ip[0].gi";
connectAttr "mgear_curveCns527GroupId.msg" "mgear_curveCns527Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns527Set.dsm"
		 -na;
connectAttr "mgear_curveCns527.msg" "mgear_curveCns527Set.ub[0]";
connectAttr "tweak675.og[0]" "mgear_curveCns527GroupParts.ig";
connectAttr "mgear_curveCns527GroupId.id" "mgear_curveCns527GroupParts.gi";
connectAttr "groupId8919.msg" "tweakSet675.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet675.dsm"
		 -na;
connectAttr "tweak675.msg" "tweakSet675.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1350.ig"
		;
connectAttr "groupId8919.id" "groupParts1350.gi";
connectAttr "mgear_curveCns528GroupParts.og" "mgear_curveCns528.ip[0].ig";
connectAttr "mgear_curveCns528GroupId.id" "mgear_curveCns528.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns528.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns528.inputs[1]";
connectAttr "groupParts1352.og" "tweak676.ip[0].ig";
connectAttr "groupId8921.id" "tweak676.ip[0].gi";
connectAttr "mgear_curveCns528GroupId.msg" "mgear_curveCns528Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns528Set.dsm"
		 -na;
connectAttr "mgear_curveCns528.msg" "mgear_curveCns528Set.ub[0]";
connectAttr "tweak676.og[0]" "mgear_curveCns528GroupParts.ig";
connectAttr "mgear_curveCns528GroupId.id" "mgear_curveCns528GroupParts.gi";
connectAttr "groupId8921.msg" "tweakSet676.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet676.dsm"
		 -na;
connectAttr "tweak676.msg" "tweakSet676.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1352.ig"
		;
connectAttr "groupId8921.id" "groupParts1352.gi";
connectAttr "mgear_curveCns529GroupParts.og" "mgear_curveCns529.ip[0].ig";
connectAttr "mgear_curveCns529GroupId.id" "mgear_curveCns529.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns529.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns529.inputs[1]";
connectAttr "groupParts1354.og" "tweak677.ip[0].ig";
connectAttr "groupId8923.id" "tweak677.ip[0].gi";
connectAttr "mgear_curveCns529GroupId.msg" "mgear_curveCns529Set.gn" -na;
connectAttr "mouth_C0_crv12Shape.iog.og[0]" "mgear_curveCns529Set.dsm" -na;
connectAttr "mgear_curveCns529.msg" "mgear_curveCns529Set.ub[0]";
connectAttr "tweak677.og[0]" "mgear_curveCns529GroupParts.ig";
connectAttr "mgear_curveCns529GroupId.id" "mgear_curveCns529GroupParts.gi";
connectAttr "groupId8923.msg" "tweakSet677.gn" -na;
connectAttr "mouth_C0_crv12Shape.iog.og[1]" "tweakSet677.dsm" -na;
connectAttr "tweak677.msg" "tweakSet677.ub[0]";
connectAttr "mouth_C0_crv12ShapeOrig.ws" "groupParts1354.ig";
connectAttr "groupId8923.id" "groupParts1354.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion191.i";
connectAttr "mgear_curveCns530GroupParts.og" "mgear_curveCns530.ip[0].ig";
connectAttr "mgear_curveCns530GroupId.id" "mgear_curveCns530.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns530.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns530.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns530.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns530.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns530.inputs[4]";
connectAttr "groupParts1356.og" "tweak678.ip[0].ig";
connectAttr "groupId8925.id" "tweak678.ip[0].gi";
connectAttr "mgear_curveCns530GroupId.msg" "mgear_curveCns530Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns530Set.dsm" -na;
connectAttr "mgear_curveCns530.msg" "mgear_curveCns530Set.ub[0]";
connectAttr "tweak678.og[0]" "mgear_curveCns530GroupParts.ig";
connectAttr "mgear_curveCns530GroupId.id" "mgear_curveCns530GroupParts.gi";
connectAttr "groupId8925.msg" "tweakSet678.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet678.dsm" -na;
connectAttr "tweak678.msg" "tweakSet678.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts1356.ig";
connectAttr "groupId8925.id" "groupParts1356.gi";
connectAttr "mgear_curveCns531GroupParts.og" "mgear_curveCns531.ip[0].ig";
connectAttr "mgear_curveCns531GroupId.id" "mgear_curveCns531.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns531.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns531.inputs[1]";
connectAttr "groupParts1358.og" "tweak679.ip[0].ig";
connectAttr "groupId8927.id" "tweak679.ip[0].gi";
connectAttr "mgear_curveCns531GroupId.msg" "mgear_curveCns531Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns531Set.dsm" -na;
connectAttr "mgear_curveCns531.msg" "mgear_curveCns531Set.ub[0]";
connectAttr "tweak679.og[0]" "mgear_curveCns531GroupParts.ig";
connectAttr "mgear_curveCns531GroupId.id" "mgear_curveCns531GroupParts.gi";
connectAttr "groupId8927.msg" "tweakSet679.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet679.dsm" -na;
connectAttr "tweak679.msg" "tweakSet679.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts1358.ig";
connectAttr "groupId8927.id" "groupParts1358.gi";
connectAttr "mgear_curveCns532GroupParts.og" "mgear_curveCns532.ip[0].ig";
connectAttr "mgear_curveCns532GroupId.id" "mgear_curveCns532.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns532.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns532.inputs[1]";
connectAttr "groupParts1360.og" "tweak680.ip[0].ig";
connectAttr "groupId8929.id" "tweak680.ip[0].gi";
connectAttr "mgear_curveCns532GroupId.msg" "mgear_curveCns532Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns532Set.dsm" -na;
connectAttr "mgear_curveCns532.msg" "mgear_curveCns532Set.ub[0]";
connectAttr "tweak680.og[0]" "mgear_curveCns532GroupParts.ig";
connectAttr "mgear_curveCns532GroupId.id" "mgear_curveCns532GroupParts.gi";
connectAttr "groupId8929.msg" "tweakSet680.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet680.dsm" -na;
connectAttr "tweak680.msg" "tweakSet680.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts1360.ig";
connectAttr "groupId8929.id" "groupParts1360.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion192.i";
connectAttr "mgear_curveCns533GroupParts.og" "mgear_curveCns533.ip[0].ig";
connectAttr "mgear_curveCns533GroupId.id" "mgear_curveCns533.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns533.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns533.inputs[1]";
connectAttr "groupParts1362.og" "tweak681.ip[0].ig";
connectAttr "groupId8931.id" "tweak681.ip[0].gi";
connectAttr "mgear_curveCns533GroupId.msg" "mgear_curveCns533Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns533Set.dsm" -na;
connectAttr "mgear_curveCns533.msg" "mgear_curveCns533Set.ub[0]";
connectAttr "tweak681.og[0]" "mgear_curveCns533GroupParts.ig";
connectAttr "mgear_curveCns533GroupId.id" "mgear_curveCns533GroupParts.gi";
connectAttr "groupId8931.msg" "tweakSet681.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet681.dsm" -na;
connectAttr "tweak681.msg" "tweakSet681.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts1362.ig";
connectAttr "groupId8931.id" "groupParts1362.gi";
connectAttr "mgear_curveCns534GroupParts.og" "mgear_curveCns534.ip[0].ig";
connectAttr "mgear_curveCns534GroupId.id" "mgear_curveCns534.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns534.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns534.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns534.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns534.inputs[3]";
connectAttr "groupParts1364.og" "tweak682.ip[0].ig";
connectAttr "groupId8933.id" "tweak682.ip[0].gi";
connectAttr "mgear_curveCns534GroupId.msg" "mgear_curveCns534Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns534Set.dsm" -na;
connectAttr "mgear_curveCns534.msg" "mgear_curveCns534Set.ub[0]";
connectAttr "tweak682.og[0]" "mgear_curveCns534GroupParts.ig";
connectAttr "mgear_curveCns534GroupId.id" "mgear_curveCns534GroupParts.gi";
connectAttr "groupId8933.msg" "tweakSet682.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet682.dsm" -na;
connectAttr "tweak682.msg" "tweakSet682.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts1364.ig";
connectAttr "groupId8933.id" "groupParts1364.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion193.i";
connectAttr "mgear_curveCns535GroupParts.og" "mgear_curveCns535.ip[0].ig";
connectAttr "mgear_curveCns535GroupId.id" "mgear_curveCns535.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns535.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns535.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns535.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns535.inputs[3]";
connectAttr "groupParts1366.og" "tweak683.ip[0].ig";
connectAttr "groupId8935.id" "tweak683.ip[0].gi";
connectAttr "mgear_curveCns535GroupId.msg" "mgear_curveCns535Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns535Set.dsm" -na;
connectAttr "mgear_curveCns535.msg" "mgear_curveCns535Set.ub[0]";
connectAttr "tweak683.og[0]" "mgear_curveCns535GroupParts.ig";
connectAttr "mgear_curveCns535GroupId.id" "mgear_curveCns535GroupParts.gi";
connectAttr "groupId8935.msg" "tweakSet683.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet683.dsm" -na;
connectAttr "tweak683.msg" "tweakSet683.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts1366.ig";
connectAttr "groupId8935.id" "groupParts1366.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion194.i";
connectAttr "mgear_curveCns536GroupParts.og" "mgear_curveCns536.ip[0].ig";
connectAttr "mgear_curveCns536GroupId.id" "mgear_curveCns536.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns536.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns536.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns536.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns536.inputs[3]";
connectAttr "groupParts1368.og" "tweak684.ip[0].ig";
connectAttr "groupId8937.id" "tweak684.ip[0].gi";
connectAttr "mgear_curveCns536GroupId.msg" "mgear_curveCns536Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns536Set.dsm" -na;
connectAttr "mgear_curveCns536.msg" "mgear_curveCns536Set.ub[0]";
connectAttr "tweak684.og[0]" "mgear_curveCns536GroupParts.ig";
connectAttr "mgear_curveCns536GroupId.id" "mgear_curveCns536GroupParts.gi";
connectAttr "groupId8937.msg" "tweakSet684.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet684.dsm" -na;
connectAttr "tweak684.msg" "tweakSet684.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts1368.ig";
connectAttr "groupId8937.id" "groupParts1368.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion195.i";
connectAttr "mgear_curveCns537GroupParts.og" "mgear_curveCns537.ip[0].ig";
connectAttr "mgear_curveCns537GroupId.id" "mgear_curveCns537.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns537.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns537.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns537.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns537.inputs[3]";
connectAttr "groupParts1370.og" "tweak685.ip[0].ig";
connectAttr "groupId8939.id" "tweak685.ip[0].gi";
connectAttr "mgear_curveCns537GroupId.msg" "mgear_curveCns537Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns537Set.dsm" -na;
connectAttr "mgear_curveCns537.msg" "mgear_curveCns537Set.ub[0]";
connectAttr "tweak685.og[0]" "mgear_curveCns537GroupParts.ig";
connectAttr "mgear_curveCns537GroupId.id" "mgear_curveCns537GroupParts.gi";
connectAttr "groupId8939.msg" "tweakSet685.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet685.dsm" -na;
connectAttr "tweak685.msg" "tweakSet685.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts1370.ig";
connectAttr "groupId8939.id" "groupParts1370.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion196.i";
connectAttr "mgear_curveCns538GroupParts.og" "mgear_curveCns538.ip[0].ig";
connectAttr "mgear_curveCns538GroupId.id" "mgear_curveCns538.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns538.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns538.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns538.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns538.inputs[3]";
connectAttr "groupParts1372.og" "tweak686.ip[0].ig";
connectAttr "groupId8941.id" "tweak686.ip[0].gi";
connectAttr "mgear_curveCns538GroupId.msg" "mgear_curveCns538Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns538Set.dsm" -na;
connectAttr "mgear_curveCns538.msg" "mgear_curveCns538Set.ub[0]";
connectAttr "tweak686.og[0]" "mgear_curveCns538GroupParts.ig";
connectAttr "mgear_curveCns538GroupId.id" "mgear_curveCns538GroupParts.gi";
connectAttr "groupId8941.msg" "tweakSet686.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet686.dsm" -na;
connectAttr "tweak686.msg" "tweakSet686.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts1372.ig";
connectAttr "groupId8941.id" "groupParts1372.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion197.i";
connectAttr "mgear_curveCns539GroupParts.og" "mgear_curveCns539.ip[0].ig";
connectAttr "mgear_curveCns539GroupId.id" "mgear_curveCns539.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns539.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns539.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns539.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns539.inputs[3]";
connectAttr "groupParts1374.og" "tweak687.ip[0].ig";
connectAttr "groupId8943.id" "tweak687.ip[0].gi";
connectAttr "mgear_curveCns539GroupId.msg" "mgear_curveCns539Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns539Set.dsm" -na;
connectAttr "mgear_curveCns539.msg" "mgear_curveCns539Set.ub[0]";
connectAttr "tweak687.og[0]" "mgear_curveCns539GroupParts.ig";
connectAttr "mgear_curveCns539GroupId.id" "mgear_curveCns539GroupParts.gi";
connectAttr "groupId8943.msg" "tweakSet687.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet687.dsm" -na;
connectAttr "tweak687.msg" "tweakSet687.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts1374.ig";
connectAttr "groupId8943.id" "groupParts1374.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion198.i";
connectAttr "mgear_curveCns540GroupParts.og" "mgear_curveCns540.ip[0].ig";
connectAttr "mgear_curveCns540GroupId.id" "mgear_curveCns540.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns540.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns540.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns540.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns540.inputs[3]";
connectAttr "groupParts1376.og" "tweak688.ip[0].ig";
connectAttr "groupId8945.id" "tweak688.ip[0].gi";
connectAttr "mgear_curveCns540GroupId.msg" "mgear_curveCns540Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns540Set.dsm" -na;
connectAttr "mgear_curveCns540.msg" "mgear_curveCns540Set.ub[0]";
connectAttr "tweak688.og[0]" "mgear_curveCns540GroupParts.ig";
connectAttr "mgear_curveCns540GroupId.id" "mgear_curveCns540GroupParts.gi";
connectAttr "groupId8945.msg" "tweakSet688.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet688.dsm" -na;
connectAttr "tweak688.msg" "tweakSet688.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts1376.ig";
connectAttr "groupId8945.id" "groupParts1376.gi";
connectAttr "mgear_curveCns541GroupParts.og" "mgear_curveCns541.ip[0].ig";
connectAttr "mgear_curveCns541GroupId.id" "mgear_curveCns541.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns541.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns541.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns541.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns541.inputs[3]";
connectAttr "groupParts1378.og" "tweak689.ip[0].ig";
connectAttr "groupId8947.id" "tweak689.ip[0].gi";
connectAttr "mgear_curveCns541GroupId.msg" "mgear_curveCns541Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns541Set.dsm" -na;
connectAttr "mgear_curveCns541.msg" "mgear_curveCns541Set.ub[0]";
connectAttr "tweak689.og[0]" "mgear_curveCns541GroupParts.ig";
connectAttr "mgear_curveCns541GroupId.id" "mgear_curveCns541GroupParts.gi";
connectAttr "groupId8947.msg" "tweakSet689.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet689.dsm" -na;
connectAttr "tweak689.msg" "tweakSet689.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts1378.ig";
connectAttr "groupId8947.id" "groupParts1378.gi";
connectAttr "mgear_curveCns542GroupParts.og" "mgear_curveCns542.ip[0].ig";
connectAttr "mgear_curveCns542GroupId.id" "mgear_curveCns542.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns542.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns542.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns542.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns542.inputs[3]";
connectAttr "groupParts1380.og" "tweak690.ip[0].ig";
connectAttr "groupId8949.id" "tweak690.ip[0].gi";
connectAttr "mgear_curveCns542GroupId.msg" "mgear_curveCns542Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns542Set.dsm" -na;
connectAttr "mgear_curveCns542.msg" "mgear_curveCns542Set.ub[0]";
connectAttr "tweak690.og[0]" "mgear_curveCns542GroupParts.ig";
connectAttr "mgear_curveCns542GroupId.id" "mgear_curveCns542GroupParts.gi";
connectAttr "groupId8949.msg" "tweakSet690.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet690.dsm" -na;
connectAttr "tweak690.msg" "tweakSet690.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts1380.ig";
connectAttr "groupId8949.id" "groupParts1380.gi";
connectAttr "mgear_curveCns543GroupParts.og" "mgear_curveCns543.ip[0].ig";
connectAttr "mgear_curveCns543GroupId.id" "mgear_curveCns543.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns543.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns543.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns543.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns543.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns543.inputs[4]";
connectAttr "groupParts1382.og" "tweak691.ip[0].ig";
connectAttr "groupId8951.id" "tweak691.ip[0].gi";
connectAttr "mgear_curveCns543GroupId.msg" "mgear_curveCns543Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns543Set.dsm" -na;
connectAttr "mgear_curveCns543.msg" "mgear_curveCns543Set.ub[0]";
connectAttr "tweak691.og[0]" "mgear_curveCns543GroupParts.ig";
connectAttr "mgear_curveCns543GroupId.id" "mgear_curveCns543GroupParts.gi";
connectAttr "groupId8951.msg" "tweakSet691.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet691.dsm" -na;
connectAttr "tweak691.msg" "tweakSet691.ub[0]";
connectAttr "foot_L0_Shape1Orig.ws" "groupParts1382.ig";
connectAttr "groupId8951.id" "groupParts1382.gi";
connectAttr "mgear_curveCns544GroupParts.og" "mgear_curveCns544.ip[0].ig";
connectAttr "mgear_curveCns544GroupId.id" "mgear_curveCns544.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns544.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns544.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns544.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns544.inputs[3]";
connectAttr "groupParts1384.og" "tweak692.ip[0].ig";
connectAttr "groupId8953.id" "tweak692.ip[0].gi";
connectAttr "mgear_curveCns544GroupId.msg" "mgear_curveCns544Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns544Set.dsm" -na;
connectAttr "mgear_curveCns544.msg" "mgear_curveCns544Set.ub[0]";
connectAttr "tweak692.og[0]" "mgear_curveCns544GroupParts.ig";
connectAttr "mgear_curveCns544GroupId.id" "mgear_curveCns544GroupParts.gi";
connectAttr "groupId8953.msg" "tweakSet692.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet692.dsm" -na;
connectAttr "tweak692.msg" "tweakSet692.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts1384.ig";
connectAttr "groupId8953.id" "groupParts1384.gi";
connectAttr "mgear_curveCns545GroupParts.og" "mgear_curveCns545.ip[0].ig";
connectAttr "mgear_curveCns545GroupId.id" "mgear_curveCns545.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns545.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns545.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns545.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns545.inputs[3]";
connectAttr "groupParts1386.og" "tweak693.ip[0].ig";
connectAttr "groupId8955.id" "tweak693.ip[0].gi";
connectAttr "mgear_curveCns545GroupId.msg" "mgear_curveCns545Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns545Set.dsm" -na;
connectAttr "mgear_curveCns545.msg" "mgear_curveCns545Set.ub[0]";
connectAttr "tweak693.og[0]" "mgear_curveCns545GroupParts.ig";
connectAttr "mgear_curveCns545GroupId.id" "mgear_curveCns545GroupParts.gi";
connectAttr "groupId8955.msg" "tweakSet693.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet693.dsm" -na;
connectAttr "tweak693.msg" "tweakSet693.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts1386.ig";
connectAttr "groupId8955.id" "groupParts1386.gi";
connectAttr "mgear_curveCns546GroupParts.og" "mgear_curveCns546.ip[0].ig";
connectAttr "mgear_curveCns546GroupId.id" "mgear_curveCns546.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns546.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns546.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns546.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns546.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns546.inputs[4]";
connectAttr "groupParts1388.og" "tweak694.ip[0].ig";
connectAttr "groupId8957.id" "tweak694.ip[0].gi";
connectAttr "mgear_curveCns546GroupId.msg" "mgear_curveCns546Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns546Set.dsm" -na;
connectAttr "mgear_curveCns546.msg" "mgear_curveCns546Set.ub[0]";
connectAttr "tweak694.og[0]" "mgear_curveCns546GroupParts.ig";
connectAttr "mgear_curveCns546GroupId.id" "mgear_curveCns546GroupParts.gi";
connectAttr "groupId8957.msg" "tweakSet694.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet694.dsm" -na;
connectAttr "tweak694.msg" "tweakSet694.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts1388.ig";
connectAttr "groupId8957.id" "groupParts1388.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of biped_guide.ma
