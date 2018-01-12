//Maya ASCII 2016R2 scene
//Name: quadruped.ma
//Last modified: Fri, Jan 12, 2018 04:58:34 PM
//Codeset: 932
requires maya "2016R2";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2 SP2";
fileInfo "cutIdentifier" "201608220310-1001477-2";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "6F6D51A8-412B-335E-00CF-37AF07174608";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.393497340196264 4.7951230051471763 6.3934973401962445 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DB01A37C-402E-FE3C-AED8-B2B423E678B4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.234589445243257;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CE1051E7-406B-1C9A-FBD0-4B9A57293A4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BB93CD62-469E-69F3-108B-E08EC9DEC48A";
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
	rename -uid "19B7E283-4BF5-67A5-5A34-889F4F94222B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FBE5ED9B-4103-602C-107A-F2BDDBEAA276";
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
	rename -uid "3FF600CD-41A1-5926-0545-6F89E84E794B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F67540FE-417E-719B-DBB5-8FB23E5C080A";
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
	rename -uid "2B7EB151-492F-5340-7DD1-16A01B14DECC";
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
	setAttr ".synoptic" -type "string" "quadruped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "mc";
	setAttr ".date" -type "string" "2016-10-08 23:01:34.843000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.2.4";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "CBDC45CE-4F83-DF55-84F8-268B4BD1DAFC";
	setAttr ".v" no;
createNode transform -n "global_C0_root" -p "guide";
	rename -uid "46D4ACE2-4452-4C3F-A67D-BCB874AE84B5";
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
	setAttr ".comp_name" -type "string" "global";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "global_C0_rootShape" -p "global_C0_root";
	rename -uid "657F39D4-4432-A50C-DE59-BC805A66A02B";
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
	rename -uid "80D12394-4A54-B19F-8AD6-D98281A60977";
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
	rename -uid "07F36143-48DC-F35F-7AED-0A9AEF943EC3";
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
	rename -uid "6A3CDE08-424E-6503-511D-B399C7FF85BD";
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
	rename -uid "C080BD23-48E6-034A-6DA2-B4AC4160A368";
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
	rename -uid "DD99C66E-4214-3681-148C-7892C5C2AF21";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 5 -at "double";
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
	rename -uid "B4F85BE8-42FA-A536-5942-BAB004354579";
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
createNode nurbsCurve -n "local_C0_root25Shape" -p "local_C0_root";
	rename -uid "43DDF703-4098-53BE-5ED2-F0B30E96265B";
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
createNode nurbsCurve -n "local_C0_root26Shape" -p "local_C0_root";
	rename -uid "04B3C59E-43C3-C307-9F7B-E483EE5FA64F";
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
createNode nurbsCurve -n "local_C0_root27Shape" -p "local_C0_root";
	rename -uid "E0FD04DC-46FA-C3EA-ADE3-FEB8E27E5E1E";
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
	rename -uid "CAEE4A1D-4071-EFF3-49D6-1996CC368481";
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
	rename -uid "6FC1603C-4B3E-BFA2-03AD-BCAFCE3D2D80";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 2.4202715014858764 -1.2332282831689589 ;
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
	setAttr ".comp_name" -type "string" "body";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	rename -uid "E84A0E80-4FA2-EA70-E164-B8A3428D22AC";
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
createNode nurbsCurve -n "body_C0_root25Shape" -p "body_C0_root";
	rename -uid "52670298-4CF4-6CBD-B420-30B4B50B902C";
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
createNode nurbsCurve -n "body_C0_root26Shape" -p "body_C0_root";
	rename -uid "8BF37FD8-47A4-6C6E-E760-4981DAC78ABE";
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
createNode nurbsCurve -n "body_C0_root27Shape" -p "body_C0_root";
	rename -uid "F97F3500-492D-B2BE-EFC5-2EBF4F030618";
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
	rename -uid "3B205459-40FB-37CE-DD7F-A69E024ACBF9";
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
createNode transform -n "spine_C0_root" -p "body_C0_root";
	rename -uid "9C44A490-4B3F-0D58-4557-869F520409C8";
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
	addAttr -ci true -sn "autoBend" -ln "autoBend" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "centralTangent" -ln "centralTangent" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000028 0 -90.000000000000028 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.47386816646636853 0.47386816646636853 0.47386816646636853 ;
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
	rename -uid "5F807534-4DB0-A170-1B3B-B59629DF6A1F";
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
createNode nurbsCurve -n "spine_C0_root25Shape" -p "spine_C0_root";
	rename -uid "B8401B62-4F30-1535-8C9E-ACB355D1F56E";
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
createNode nurbsCurve -n "spine_C0_root26Shape" -p "spine_C0_root";
	rename -uid "EF36B3D6-4F17-E186-A939-8DBAEA35FDE1";
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
createNode nurbsCurve -n "spine_C0_root27Shape" -p "spine_C0_root";
	rename -uid "D62F4883-46DB-ADF3-F96E-639452EDE5A0";
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
	rename -uid "017992F5-4D0B-44ED-09BB-BD8847EF6A5C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6115768831256645 -2.9361299538902138e-015 ;
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
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "09122B40-4047-975C-8FA8-7185BBC3BC1E";
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
createNode nurbsCurve -n "spine_C0_eff25Shape" -p "spine_C0_eff";
	rename -uid "0718BF77-4D08-E159-25CF-84BBF4DF0F8F";
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
createNode nurbsCurve -n "spine_C0_eff26Shape" -p "spine_C0_eff";
	rename -uid "B8940C79-49C4-9A13-2468-D1B9EC064573";
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
createNode nurbsCurve -n "spine_C0_eff27Shape" -p "spine_C0_eff";
	rename -uid "D89D67D9-490D-582A-022C-6093B99FAD4A";
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
createNode nurbsCurve -n "spine_C0_eff27_0crvShape" -p "spine_C0_eff";
	rename -uid "F852735C-4D23-5D51-AC0F-25BA6AAB3ACF";
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
createNode nurbsCurve -n "spine_C0_eff27_1crvShape" -p "spine_C0_eff";
	rename -uid "8E04A5E0-49CD-FF29-D42A-378B0669F56D";
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
createNode transform -n "neck_C0_root" -p "spine_C0_eff";
	rename -uid "E4E1AC3F-43E2-D6DE-DC6C-A092966D3936";
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
	addAttr -ci true -sn "division" -ln "division" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "tangentControls" -ln "tangentControls" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "chickenStyleIK" -ln "chickenStyleIK" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.11164111249562403 0.36062523614417152 -1.1057116273629463e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 19.035763767138231 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.8823807987775909 0.8823807987775909 0.88238079877759079 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "neck_ik_01";
	setAttr ".comp_name" -type "string" "neck";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".headrefarray" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
	rename -uid "767F3892-4A31-BF0B-8E3C-ED9413FC9CA2";
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
createNode nurbsCurve -n "neck_C0_root25Shape" -p "neck_C0_root";
	rename -uid "D82E988E-4CBF-9AC3-4C22-029C9ADDF925";
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
createNode nurbsCurve -n "neck_C0_root26Shape" -p "neck_C0_root";
	rename -uid "959AAE63-4665-3177-745B-63BC5113E581";
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
createNode nurbsCurve -n "neck_C0_root27Shape" -p "neck_C0_root";
	rename -uid "2709FD59-4C96-6304-6943-AB9D785D027C";
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
	rename -uid "3E33FB26-4D08-F3DD-ADE5-DDA6D7CD9829";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.24124837670655674 3.6642870257638149 -8.7131531609605683e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "A092DCB3-4FC0-C3AE-E69E-31A5D2AC8EDA";
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
createNode nurbsCurve -n "neck_C0_neck25Shape" -p "neck_C0_neck";
	rename -uid "8164F415-4ADE-0FC1-3870-548D5198419B";
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
createNode nurbsCurve -n "neck_C0_neck26Shape" -p "neck_C0_neck";
	rename -uid "EB6FF265-4199-76AD-BFB8-68B697764F37";
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
createNode nurbsCurve -n "neck_C0_neck27Shape" -p "neck_C0_neck";
	rename -uid "9A647FCD-4FDC-E732-A449-EEBD74065098";
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
createNode nurbsCurve -n "neck_C0_neck27_0crvShape" -p "neck_C0_neck";
	rename -uid "C7345B5D-43A5-C62C-5683-FEA33C7D2050";
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
createNode nurbsCurve -n "neck_C0_neck27_1crvShape" -p "neck_C0_neck";
	rename -uid "B9F82D4B-4FFB-72AF-9C80-89BB4AC1BD61";
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
	rename -uid "DA22FF10-43B2-7EDC-961F-86BA8C46287C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -5.3290705182007514e-015 6.3601910483444077e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 71.002460425706204 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999878 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "37B9D7F3-4E91-7DA5-CAD6-409FBDF4E5A0";
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
createNode nurbsCurve -n "neck_C0_head25Shape" -p "neck_C0_head";
	rename -uid "B800AAA3-41EF-F255-1AA1-1AB1F6CDA9CD";
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
createNode nurbsCurve -n "neck_C0_head26Shape" -p "neck_C0_head";
	rename -uid "147F4A42-478A-A0CD-CB02-11879559C3CB";
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
createNode nurbsCurve -n "neck_C0_head27Shape" -p "neck_C0_head";
	rename -uid "D9628FA7-486C-C78F-F54F-F9BCC75D2A3A";
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
createNode nurbsCurve -n "neck_C0_head27_0crvShape" -p "neck_C0_head";
	rename -uid "5A682BFD-4E05-A887-3003-C191AA1F69DE";
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
createNode nurbsCurve -n "neck_C0_head27_1crvShape" -p "neck_C0_head";
	rename -uid "AC1C5061-4153-69BB-1E65-A59AEACC3811";
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
	rename -uid "E9B06260-4EAA-BFA4-3E21-72B4A6DA92F1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.028362147187277031 2.6770463465994681 4.541882106202e-015 ;
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
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "4CB8DC45-426A-9B69-46B8-82A56B26F2E8";
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
createNode nurbsCurve -n "neck_C0_eff25Shape" -p "neck_C0_eff";
	rename -uid "45BFB955-4B0A-D4B2-6535-A99CC90F1A71";
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
createNode nurbsCurve -n "neck_C0_eff26Shape" -p "neck_C0_eff";
	rename -uid "F8660FEC-435A-272F-8772-7D8C03507C73";
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
createNode nurbsCurve -n "neck_C0_eff27Shape" -p "neck_C0_eff";
	rename -uid "25083764-45C7-8666-350F-06A11A67012B";
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
createNode nurbsCurve -n "neck_C0_eff27_0crvShape" -p "neck_C0_eff";
	rename -uid "9DEFA131-4875-627D-6A36-A8B4BE401523";
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
createNode nurbsCurve -n "neck_C0_eff27_1crvShape" -p "neck_C0_eff";
	rename -uid "4768DB79-45A0-7E38-D90D-CAB044574E4C";
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
createNode transform -n "spineUI_C0_root" -p "neck_C0_eff";
	rename -uid "CB778178-4704-928B-E560-0C9D2EF05537";
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
	setAttr ".t" -type "double3" -3.299221101781681 -0.74362823191861516 -4.3347348183670711 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413606 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427574 2.3915882794427556 2.3915882794427592 ;
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
	rename -uid "DBB87C0F-4A40-596A-5A8E-BCB03281494B";
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
createNode nurbsCurve -n "spineUI_C0_root25Shape" -p "spineUI_C0_root";
	rename -uid "3A8282C9-446B-86AD-DA91-7E9453EA03C9";
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
createNode nurbsCurve -n "spineUI_C0_root26Shape" -p "spineUI_C0_root";
	rename -uid "C5190EA8-49A0-7C41-FD94-07920B7DE011";
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
createNode nurbsCurve -n "spineUI_C0_root27Shape" -p "spineUI_C0_root";
	rename -uid "8568DD7A-4831-49B4-6B1A-F2AF5B69B1D0";
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
	rename -uid "C0BD018A-482A-068A-A092-9A9A3B8941EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-015 -4.4408920985006262e-016 0.99999999999999911 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "headUI_C0_root" -p "neck_C0_eff";
	rename -uid "35E50AEA-4C30-D288-7A10-40B8AB32AE80";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.5 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-015 2.9303186274198723 6.116572385793379e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "headUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "headUI_C0_rootShape" -p "headUI_C0_root";
	rename -uid "CB107883-41C5-8DFC-F6E2-519F68450EB4";
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
createNode nurbsCurve -n "headUI_C0_root16Shape" -p "headUI_C0_root";
	rename -uid "B4465D77-4D4D-2788-A19C-00922E6EBB62";
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
createNode nurbsCurve -n "headUI_C0_root17Shape" -p "headUI_C0_root";
	rename -uid "7517637D-41FB-BCF7-D5E1-7F9FEB72F428";
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
createNode nurbsCurve -n "headUI_C0_root18Shape" -p "headUI_C0_root";
	rename -uid "5972ED70-47C3-8A29-0329-4BB202F47DB4";
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
createNode transform -n "headUI_C0_sizeRef" -p "headUI_C0_root";
	rename -uid "B87048C0-498F-E9FA-4C70-65821E414D2D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3915877472269287 -0.0015955193487808828 -1.0620785493044065e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413613 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427556 2.3915882794427552 2.3915882794427556 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	rename -uid "1F0922CD-4234-FC33-E158-0D87E47193D8";
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
	setAttr ".t" -type "double3" 0.69584514547310228 0.71792767893743736 1.4003887623375046e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413619 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53738203342942958 0.53738203342942947 0.53738203342943014 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
	rename -uid "06FEF9E6-4074-8AC1-1E9D-19A047A96D25";
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
createNode nurbsCurve -n "mouth_C0_root25Shape" -p "mouth_C0_root";
	rename -uid "F181C790-41D6-1064-ED04-81945C6AC1E1";
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
createNode nurbsCurve -n "mouth_C0_root26Shape" -p "mouth_C0_root";
	rename -uid "BB3DEBB7-4184-9CCB-63E1-CBB901796E2A";
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
createNode nurbsCurve -n "mouth_C0_root27Shape" -p "mouth_C0_root";
	rename -uid "72D7738A-4AAE-6F96-AFFC-A0A4B7773BB4";
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
	rename -uid "3B28352E-4BFF-3F10-8118-B29F9472A9C2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.4709879829724519e-029 0 2.8421709430404007e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999833 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "ED300E4C-4405-7F5B-490F-E090CC02227C";
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
createNode nurbsCurve -n "mouth_C0_rotcenter25Shape" -p "mouth_C0_rotcenter";
	rename -uid "DF9CACE8-4096-D7AB-29C7-C4B875F10C3B";
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
createNode nurbsCurve -n "mouth_C0_rotcenter26Shape" -p "mouth_C0_rotcenter";
	rename -uid "DE685782-48A5-6466-5C27-1BA4A131D55B";
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
createNode nurbsCurve -n "mouth_C0_rotcenter27Shape" -p "mouth_C0_rotcenter";
	rename -uid "11FD1179-4263-F51A-6BCA-4986C0E4B1C6";
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
createNode nurbsCurve -n "mouth_C0_rotcenter27_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "95BEBDE2-475E-4999-2028-DD92F0CE5CBC";
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
createNode nurbsCurve -n "mouth_C0_rotcenter27_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "3B5C2622-4C19-4683-1422-328A862EB375";
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
	rename -uid "E8C8719A-468A-54F3-978F-BD96C5691D9D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2971167579553827e-015 -0.83057537847144225 2.6485854255406949 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "46F83F8F-40FE-FFA2-3154-AE80BE72C744";
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
createNode nurbsCurve -n "mouth_C0_lipup25Shape" -p "mouth_C0_lipup";
	rename -uid "4D5DD4AB-40E1-A81E-DD8F-F3B11C2BDACD";
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
createNode nurbsCurve -n "mouth_C0_lipup26Shape" -p "mouth_C0_lipup";
	rename -uid "11D5E140-4C3A-EF24-E09E-D98B03AE0F2F";
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
createNode nurbsCurve -n "mouth_C0_lipup27Shape" -p "mouth_C0_lipup";
	rename -uid "6D556C4B-4549-D32A-7850-33A22CC7470F";
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
createNode nurbsCurve -n "mouth_C0_lipup27_0crvShape" -p "mouth_C0_lipup";
	rename -uid "539850B4-472D-E89E-15CE-BFADBB2BE422";
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
createNode nurbsCurve -n "mouth_C0_lipup27_1crvShape" -p "mouth_C0_lipup";
	rename -uid "203EF3F0-4EBA-11F8-3CB0-A4B2568EB6A7";
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
	rename -uid "0BBAC2FD-4E8B-AA32-289C-5389B1CF8302";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3722175990868872e-014 -14.161367226604181 -19.457469484456155 ;
	setAttr ".s" -type "double3" 4.4504433171691247 4.4504433171691273 4.4504433171691247 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "C1F0E1D7-44F2-DB64-8088-8E912B8DAE2D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "D339B1AC-463D-E2A8-3007-AFA1D53C68AD";
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
	rename -uid "BA4FC76D-4464-B937-44DB-F28D853E3A66";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7198567879251454e-015 -1.1237321151316095 2.456560648346553 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "4A7380E8-4E6A-B6FD-437B-DA8360863021";
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
createNode nurbsCurve -n "mouth_C0_liplow25Shape" -p "mouth_C0_liplow";
	rename -uid "605CD1AE-43C2-AEAA-2457-0090F7977F86";
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
createNode nurbsCurve -n "mouth_C0_liplow26Shape" -p "mouth_C0_liplow";
	rename -uid "5E017B50-4F76-A229-AE73-3E800842EFE5";
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
createNode nurbsCurve -n "mouth_C0_liplow27Shape" -p "mouth_C0_liplow";
	rename -uid "169281AD-42D6-2264-066F-F59D42AA8E33";
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
createNode nurbsCurve -n "mouth_C0_liplow27_0crvShape" -p "mouth_C0_liplow";
	rename -uid "0940D40B-4B53-F720-EAB2-92A5C996B795";
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
createNode nurbsCurve -n "mouth_C0_liplow27_1crvShape" -p "mouth_C0_liplow";
	rename -uid "3199E7F2-47DA-753B-98F3-50AA874E8C0F";
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
	rename -uid "1FD27715-40F9-2F52-BF85-F08599949CBE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.314491602083863e-014 -13.868210489944014 -19.265444707262006 ;
	setAttr ".s" -type "double3" 4.4504433171691247 4.4504433171691273 4.4504433171691247 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "39E63EC2-4331-2C4F-105A-EDB26E354FBA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "FC0188C1-4267-680D-269E-21B2FC2F4271";
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
	rename -uid "EBCB5105-496D-356A-42FF-059DA145A8C9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.3132158019282496e-029 -1.9431960625636897 2.0069895663162676 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999833 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "182B4F15-45F9-5819-01BD-00B366F2E62E";
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
createNode nurbsCurve -n "mouth_C0_jaw25Shape" -p "mouth_C0_jaw";
	rename -uid "B3237B83-4FA3-694C-55DA-CCA6A610DBD0";
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
createNode nurbsCurve -n "mouth_C0_jaw26Shape" -p "mouth_C0_jaw";
	rename -uid "6BC286BA-4A58-31E0-560C-4EA297BE23C8";
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
createNode nurbsCurve -n "mouth_C0_jaw27Shape" -p "mouth_C0_jaw";
	rename -uid "93863C78-41A8-9246-4C12-5CA7BEA01B6D";
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
createNode nurbsCurve -n "mouth_C0_jaw27_0crvShape" -p "mouth_C0_jaw";
	rename -uid "12D483FA-48CA-4884-D219-FCAE95D49BD1";
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
createNode nurbsCurve -n "mouth_C0_jaw27_1crvShape" -p "mouth_C0_jaw";
	rename -uid "D5C04ED8-4251-F930-7DB7-9F9ABDE425E7";
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
createNode transform -n "mouth_C0_crv" -p "mouth_C0_root";
	rename -uid "B6FAEDF4-463F-C244-218D-93AD64B5A674";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4250592329134387e-015 -14.991942605075591 -16.808884058915393 ;
	setAttr ".s" -type "double3" 4.4504433171691185 4.4504433171691185 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "E442AB80-4EC4-8917-DCAE-F49A674FC554";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "4533D552-43E2-4C81-08D7-03B04BDF3349";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv9" -p "mouth_C0_root";
	rename -uid "B4218DA1-4B84-326D-B403-71A670E2D1C1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4250592329134387e-015 -14.991942605075591 -16.808884058915393 ;
	setAttr ".s" -type "double3" 4.4504433171691185 4.4504433171691185 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crv9Shape" -p "mouth_C0_crv9";
	rename -uid "A2A0959E-4D24-14B7-92ED-D4B4A1184C25";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv9ShapeOrig" -p "mouth_C0_crv9";
	rename -uid "3CE15F66-4843-4DE9-261C-7B9003E8B6C9";
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
	rename -uid "44E1DCFD-47B6-F69D-7C10-6298647941EA";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.9771436298332041 1.0221998062961486 -1.7545700686211252e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413619 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.391588279442757 2.3915882794427556 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "eyeslook";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "neck_C0_eff,COG_C0_root,local_C0_root";
createNode nurbsCurve -n "eyeslook_C0_rootShape" -p "eyeslook_C0_root";
	rename -uid "F330F304-418A-F253-993D-5EB4E719BD56";
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
createNode nurbsCurve -n "eyeslook_C0_root25Shape" -p "eyeslook_C0_root";
	rename -uid "F8B4FA0A-4292-B08B-FF45-FCA9FA441F77";
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
createNode nurbsCurve -n "eyeslook_C0_root26Shape" -p "eyeslook_C0_root";
	rename -uid "1145B399-4D02-088E-9803-D39B6BB84289";
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
createNode nurbsCurve -n "eyeslook_C0_root27Shape" -p "eyeslook_C0_root";
	rename -uid "6564C6A5-489B-83B9-0AB9-7EB7A5633DB5";
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
	rename -uid "68C537E7-4767-85C1-F55B-98B5E6F226E4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251558e-015 8.8817841970012523e-016 1.0000000000000044 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "eye_L0_root" -p "neck_C0_head";
	rename -uid "4F4D9B47-4DCB-0CE9-2AE5-938CE083EA96";
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
	setAttr ".t" -type "double3" 0.25733245506885538 1.026789360778233 -0.4210773006138262 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 75.993552494737415 179.9617758071555 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427517 2.391588279442761 2.3915882794427521 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyesAim_C0_root";
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
	rename -uid "09EB46C0-43F5-69A1-D0CA-F38A702E4F38";
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
createNode nurbsCurve -n "eye_L0_root25Shape" -p "eye_L0_root";
	rename -uid "0E6EADD5-46F7-2F25-A82B-748767C6127F";
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
createNode nurbsCurve -n "eye_L0_root26Shape" -p "eye_L0_root";
	rename -uid "67681DD1-4A8D-F50A-011A-8EAB6EA5EDCB";
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
createNode nurbsCurve -n "eye_L0_root27Shape" -p "eye_L0_root";
	rename -uid "4588C03F-4F3A-0437-953E-B1B39EAEFC08";
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
	rename -uid "7131C71C-4224-1884-E9A3-459BB0D49FE2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.7715611723760958e-016 1.0658141036401503e-014 2.0321341905376498 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999811 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "BFEB7FE4-42F2-6C54-F91D-E5A52D17926D";
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
createNode nurbsCurve -n "eye_L0_look25Shape" -p "eye_L0_look";
	rename -uid "A87BA743-4266-83DA-7118-CEAA025CECE8";
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
createNode nurbsCurve -n "eye_L0_look26Shape" -p "eye_L0_look";
	rename -uid "89018AE7-4C64-15F7-6E0A-8CB72A099617";
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
createNode nurbsCurve -n "eye_L0_look27Shape" -p "eye_L0_look";
	rename -uid "C5585B03-4B9C-BF45-DE59-08B3D4877484";
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
createNode nurbsCurve -n "eye_L0_look27_0crvShape" -p "eye_L0_look";
	rename -uid "6BA3344D-4FBB-57F1-3D73-54A1705D8898";
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
createNode nurbsCurve -n "eye_L0_look27_1crvShape" -p "eye_L0_look";
	rename -uid "8AD6F86A-4B6B-A5B3-9687-A5A185CFC01D";
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
	rename -uid "44252F2B-4BE6-87CF-A37B-0CBE992DC147";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753488 -3.4976629291575767 -3.5292331821335647 ;
	setAttr ".r" -type "double3" 0 -14.006447505262567 0 ;
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999822 1.0000000000000022 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "EEAC2670-40BF-1B5C-E565-219D01E8F2EC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "393CC41B-45B5-F831-C740-31A5A4261522";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "297AC16D-4D61-A0D3-746A-0180398835B6";
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
	setAttr ".t" -type "double3" 0.25733245506885893 1.0267893607782277 0.42107730061382792 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 -75.993552494737443 179.9617758071557 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427539 2.391588279442761 -2.3915882794427539 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyesAim_C0_root";
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
	rename -uid "E2A12518-4598-EA7F-68E7-CD844CEE0D23";
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
createNode nurbsCurve -n "eye_R0_root16Shape" -p "eye_R0_root";
	rename -uid "D3EC8800-4BE7-A9AD-202B-FE8716E54F22";
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
createNode nurbsCurve -n "eye_R0_root17Shape" -p "eye_R0_root";
	rename -uid "C2E87089-409A-8B3B-93B1-E3A0E270B0EB";
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
createNode nurbsCurve -n "eye_R0_root18Shape" -p "eye_R0_root";
	rename -uid "FA1A4470-40A1-D919-E29F-9C90EC76BCD2";
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
	rename -uid "11DECE8F-40E9-B321-452A-EEB368F610D9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.3306690738754696e-016 7.5495165674510645e-015 2.0321341905376422 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999767 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "04A2BC79-4822-450F-BEEE-C8966F56A6CE";
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
createNode nurbsCurve -n "eye_R0_look16Shape" -p "eye_R0_look";
	rename -uid "20DFBBD1-47DB-14B4-BE6E-1DB6031B186E";
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
createNode nurbsCurve -n "eye_R0_look17Shape" -p "eye_R0_look";
	rename -uid "6163A17D-4B9E-21AC-AEBB-E5BDA177DD3D";
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
createNode nurbsCurve -n "eye_R0_look18Shape" -p "eye_R0_look";
	rename -uid "BA59AABD-4495-FBDF-0F4E-02B1295FF9F5";
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
createNode nurbsCurve -n "eye_R0_look18_0crvShape" -p "eye_R0_look";
	rename -uid "F4C9FD4F-4F02-959B-7FFB-F9BFB2C0BC3A";
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
createNode nurbsCurve -n "eye_R0_look18_1crvShape" -p "eye_R0_look";
	rename -uid "34D462C1-4EC4-812F-9D0C-CFBC3D6992BE";
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
	rename -uid "6FDCCF59-488B-66AE-8D4C-13ACD56DE23E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753488 -3.4976629291575745 -3.5292331821335634 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999811 -1.0000000000000013 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "53EEAAB7-48B6-04A9-D5F0-EEB1B90F0243";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "9C2E2702-4480-9029-0F4B-B1B0E7289E6A";
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
	rename -uid "3E2C7295-4E6D-BC0F-D829-BDB67F5AD28F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.094534318000986772 -0.76996010281298766 1.5833033991300633e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "CC9F8A64-45C9-FDCE-D342-938415359515";
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
createNode nurbsCurve -n "neck_C0_tanShape18" -p "neck_C0_tan1";
	rename -uid "6FDECC3E-4D1C-4946-711F-8490D3B2714B";
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
createNode nurbsCurve -n "neck_C0_tanShape19" -p "neck_C0_tan1";
	rename -uid "AD086729-404E-698B-DC7C-E08D252642E6";
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
createNode nurbsCurve -n "neck_C0_tanShape20" -p "neck_C0_tan1";
	rename -uid "3B07D791-44A0-36F9-B910-C9AEA2627C2E";
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
createNode nurbsCurve -n "neck_C0_tan18_0crvShape" -p "neck_C0_tan1";
	rename -uid "94EE36B0-403F-215B-2947-7AB84BE23AD5";
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
createNode nurbsCurve -n "neck_C0_tan18_1crvShape" -p "neck_C0_tan1";
	rename -uid "DD81C927-47CA-8915-9AA0-2A90E3C0E428";
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
	rename -uid "1E0D97C8-4993-0128-1084-B8AB77AD67EB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550695 -10.274847894363646 4.4383048488342994e-016 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999943 0 ;
	setAttr ".s" -type "double3" 2.3915882794427548 2.3915882794427539 2.3915882794427561 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "1169F16D-4763-DE21-0EA0-61B4CE08EE8D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "D3C3CA03-44BF-1299-CCDA-DABC63D6E614";
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
	rename -uid "DF21CA54-4A25-F1A3-895F-89BA19DA417F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.016734587625120145 0.81123959492320008 -2.1361002026221483e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "C4AEC611-4429-C122-08F0-3C9F5CCBFCEB";
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
createNode nurbsCurve -n "neck_C0_tanShape17" -p "neck_C0_tan0";
	rename -uid "27384442-4DDC-0F0C-8D29-728B71FBB84D";
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
createNode nurbsCurve -n "neck_C0_tanShape18" -p "neck_C0_tan0";
	rename -uid "235D9DE6-4428-84A6-3C63-1B9013F3FA19";
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
createNode nurbsCurve -n "neck_C0_tanShape19" -p "neck_C0_tan0";
	rename -uid "F7C83A37-4DFE-2E99-BAF7-A0921AF20BEE";
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
createNode nurbsCurve -n "neck_C0_tan17_0crvShape" -p "neck_C0_tan0";
	rename -uid "F9861B7B-4794-8621-E70D-97968C9E915E";
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
createNode nurbsCurve -n "neck_C0_tan17_1crvShape" -p "neck_C0_tan0";
	rename -uid "43007C15-45D6-9718-317E-949768C28B09";
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
	rename -uid "5A73791D-47C2-6C72-BAAB-1FAE7F2D3DF1";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000011 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "948D5562-4B9D-75A4-A6CE-0EA2DCF8CA87";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.52942847926655456 0 0
		0 0.1764761597555182 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint9" -p "neck_C0_blade";
	rename -uid "343EA874-4C1F-784C-0388-9293021EC360";
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
	setAttr ".o" -type "double3" 0 0 359.99999999999983 ;
	setAttr ".rsrr" -type "double3" -180 -1.9774300215264711e-029 451.18175355423028 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint9" -p "neck_C0_blade";
	rename -uid "A7D0C8A5-4B07-5C48-D8A7-0B952A985376";
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
	setAttr ".rst" -type "double3" -1.3322676295501878e-015 8.8817841970012523e-016 
		-2.9582283945787943e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "A1EBB29D-41D7-8C3C-B815-2B9C940448A7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.976162134148518 -6.6105608685998307 -4.2748483121262694e-016 ;
	setAttr ".r" -type "double3" -70.964236232861779 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "E1B41227-4E1C-CE4A-61F9-04A2FB0D97AE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "AABA8F38-4D93-D9DF-790C-B6AD0E3A5650";
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
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "52E8D137-41A6-D0EC-5911-6795AA3E0AA1";
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
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 -0.20082401790608248 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.1102915763618224 2.1102915763618237 2.1102915763618237 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "DAC83479-4C45-0BB8-5ACD-378B997850D8";
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
createNode nurbsCurve -n "shoulder_L0_root25Shape" -p "shoulder_L0_root";
	rename -uid "48B01C6A-4E31-0A20-7657-12A5CCE66383";
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
createNode nurbsCurve -n "shoulder_L0_root26Shape" -p "shoulder_L0_root";
	rename -uid "DFFEC7E6-428A-5313-38D9-AC97AF980E02";
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
createNode nurbsCurve -n "shoulder_L0_root27Shape" -p "shoulder_L0_root";
	rename -uid "5D8C583D-4A40-531B-B21B-39BD08A8BA80";
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
createNode transform -n "shoulder_L0_0_loc" -p "shoulder_L0_root";
	rename -uid "E2BA2CCB-4122-1D9D-DA1C-80BABECCCD24";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724661 -0.2088261637065485 0.20663608494886754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_0_locShape" -p "shoulder_L0_0_loc";
	rename -uid "BCAF8EC2-4DFB-BB88-0B44-54983A3F1C35";
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
createNode nurbsCurve -n "shoulder_L0_0_loc25Shape" -p "shoulder_L0_0_loc";
	rename -uid "9B056742-4C13-87CA-5F6A-B0A900E8C1F8";
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
createNode nurbsCurve -n "shoulder_L0_0_loc26Shape" -p "shoulder_L0_0_loc";
	rename -uid "604EE2A4-4CD8-2F14-C3C9-5696CDE88ABF";
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
createNode nurbsCurve -n "shoulder_L0_0_loc27Shape" -p "shoulder_L0_0_loc";
	rename -uid "8DB3889B-4412-901D-2877-B69BBCAE502E";
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
createNode nurbsCurve -n "shoulder_L0_0_loc27_0crvShape" -p "shoulder_L0_0_loc";
	rename -uid "3EE9E4AC-45B6-A985-2C00-7787D5F37647";
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
createNode nurbsCurve -n "shoulder_L0_0_loc27_1crvShape" -p "shoulder_L0_0_loc";
	rename -uid "ADDA5CF1-49F2-1A8E-4201-379608C546A3";
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
createNode transform -n "legFront_L0_root" -p "shoulder_L0_0_loc";
	rename -uid "43C25233-49C0-4CA4-35A0-AD95D72F4D68";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-015 -4.4408920985006262e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950331 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr -k on ".ikSolver" 1;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "legFront_L0_rootShape" -p "legFront_L0_root";
	rename -uid "F233060F-476C-C0AE-40EC-12B481C8F57F";
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
createNode nurbsCurve -n "legFront_L0_root25Shape" -p "legFront_L0_root";
	rename -uid "EA3CD4BA-4F64-ADC4-CF8B-2CA61290AC41";
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
createNode nurbsCurve -n "legFront_L0_root26Shape" -p "legFront_L0_root";
	rename -uid "8B57952B-4B58-8A72-4F89-E3A9653091C3";
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
createNode nurbsCurve -n "legFront_L0_root27Shape" -p "legFront_L0_root";
	rename -uid "5A663F06-4979-1191-A996-E0837BD671EF";
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
createNode transform -n "legFront_L0_knee" -p "legFront_L0_root";
	rename -uid "7226AFE0-435C-3D2B-D9DA-66A4FFA80AB7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -2.1240863021370493 -0.48633856256837493 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999856 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
	rename -uid "466CD111-419F-6673-AE9F-4FB95C91F8B9";
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
createNode nurbsCurve -n "legFront_L0_knee25Shape" -p "legFront_L0_knee";
	rename -uid "6735CD7C-43CB-C9B0-7CA2-5CAC2EAD098C";
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
createNode nurbsCurve -n "legFront_L0_knee26Shape" -p "legFront_L0_knee";
	rename -uid "50A9CA5A-4AF0-D2FF-A4C2-D8B062182E3E";
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
createNode nurbsCurve -n "legFront_L0_knee27Shape" -p "legFront_L0_knee";
	rename -uid "1B46B395-4350-16AE-1DEC-2DB2EED9E474";
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
createNode nurbsCurve -n "legFront_L0_knee27_0crvShape" -p "legFront_L0_knee";
	rename -uid "5158C566-407A-DB75-124B-96A373EC58FE";
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
createNode nurbsCurve -n "legFront_L0_knee27_1crvShape" -p "legFront_L0_knee";
	rename -uid "C5259D87-4965-1D31-08E9-67B6636AED12";
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
createNode transform -n "legFront_L0_ankle" -p "legFront_L0_knee";
	rename -uid "1EF84297-49CB-CBB7-10F4-3582758EA886";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.2172489379008766e-015 -2.3651516407059168 0.073902270404611059 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_ankleShape" -p "legFront_L0_ankle";
	rename -uid "A1C647CD-4782-BA83-9504-01963C1267DF";
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
createNode nurbsCurve -n "legFront_L0_ankle25Shape" -p "legFront_L0_ankle";
	rename -uid "11EB9A62-4B69-F8D1-366A-C285D3E58E1C";
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
createNode nurbsCurve -n "legFront_L0_ankle26Shape" -p "legFront_L0_ankle";
	rename -uid "108E2982-4513-3364-CAE5-4DA82D44CD65";
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
createNode nurbsCurve -n "legFront_L0_ankle27Shape" -p "legFront_L0_ankle";
	rename -uid "9E5A4B71-4055-5AB7-6951-0895403CF037";
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
createNode nurbsCurve -n "legFront_L0_ankle27_0crvShape" -p "legFront_L0_ankle";
	rename -uid "5A33C1B2-4DA9-6446-FB2A-5E97D2326CA8";
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
createNode nurbsCurve -n "legFront_L0_ankle27_1crvShape" -p "legFront_L0_ankle";
	rename -uid "7CA61C0F-46A5-EE0D-F2D7-F1A922E68D7A";
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
createNode transform -n "legFront_L0_foot" -p "legFront_L0_ankle";
	rename -uid "2C75A6F1-4C60-EAAB-ECCC-199CF9BE5AD3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -1.1294425054275521 0.023148533894217671 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_footShape" -p "legFront_L0_foot";
	rename -uid "708AF0B0-4210-EF28-4145-32809593679B";
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
createNode nurbsCurve -n "legFront_L0_foot25Shape" -p "legFront_L0_foot";
	rename -uid "E002A037-4480-4143-E3FB-12BDB8EE5836";
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
createNode nurbsCurve -n "legFront_L0_foot26Shape" -p "legFront_L0_foot";
	rename -uid "515DB9FF-46D7-DDEB-BE6F-59B563C6C35F";
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
createNode nurbsCurve -n "legFront_L0_foot27Shape" -p "legFront_L0_foot";
	rename -uid "C20BE22D-4DD7-E534-8931-858408B6DF07";
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
createNode nurbsCurve -n "legFront_L0_foot27_0crvShape" -p "legFront_L0_foot";
	rename -uid "C23C50B9-4335-3636-8F88-5F8BA940E8DF";
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
createNode nurbsCurve -n "legFront_L0_foot27_1crvShape" -p "legFront_L0_foot";
	rename -uid "5E5E0386-4F50-E9A0-1CBC-E6AB14F0AFAB";
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
createNode transform -n "legFront_L0_eff" -p "legFront_L0_foot";
	rename -uid "3EE20FAC-469F-1D45-69CD-5C83B3851D79";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 1.2212453270876722e-015 0.59657797851921135 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_effShape" -p "legFront_L0_eff";
	rename -uid "741B5B4C-4474-C69E-ED09-2EBF57850C1A";
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
createNode nurbsCurve -n "legFront_L0_eff25Shape" -p "legFront_L0_eff";
	rename -uid "91550A95-467C-7F35-E20E-5BBC2FD5847D";
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
createNode nurbsCurve -n "legFront_L0_eff26Shape" -p "legFront_L0_eff";
	rename -uid "562CC722-4D22-A0E3-1FC0-40B2FCF36FAF";
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
createNode nurbsCurve -n "legFront_L0_eff27Shape" -p "legFront_L0_eff";
	rename -uid "6D9C75EF-4322-4E30-56E3-36A864006289";
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
createNode nurbsCurve -n "legFront_L0_eff27_0crvShape" -p "legFront_L0_eff";
	rename -uid "2F3827DD-49F4-B7D2-3644-FD81F484BE51";
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
createNode nurbsCurve -n "legFront_L0_eff27_1crvShape" -p "legFront_L0_eff";
	rename -uid "21D85A27-450D-E3A3-C6B4-87AB469B7263";
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
createNode transform -n "footFront_L0_root" -p "legFront_L0_foot";
	rename -uid "AF3E73E9-4F45-DEDD-B9D8-94A3D949713F";
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
	setAttr ".t" -type "double3" 3.1086244689504383e-015 1.0269562977782698e-015 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514093 0.31499517602514104 0.31499517602514093 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "footFront_L0_rootShape" -p "footFront_L0_root";
	rename -uid "A1A86463-4559-73DA-6A1F-7CB1D3B5F032";
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
createNode nurbsCurve -n "footFront_L0_root25Shape" -p "footFront_L0_root";
	rename -uid "1B69C9A0-4C17-17F2-FCAA-439D768F6264";
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
createNode nurbsCurve -n "footFront_L0_root26Shape" -p "footFront_L0_root";
	rename -uid "6128F47F-4AF9-1841-A05A-6090EEECFA95";
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
createNode nurbsCurve -n "footFront_L0_root27Shape" -p "footFront_L0_root";
	rename -uid "272225B5-4114-C5E2-CB51-E1AFC57A03EE";
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
createNode transform -n "footFront_L0_0_loc" -p "footFront_L0_root";
	rename -uid "F20446FF-4C8B-D779-E1A8-3195763F7773";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.2172489379008766e-015 1.4432899320127035e-015 0.75996190873518188 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
	rename -uid "684699C5-48D1-C0D5-8E71-B483A91B6FC4";
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
createNode nurbsCurve -n "footFront_L0_0_loc25Shape" -p "footFront_L0_0_loc";
	rename -uid "499D34CA-4041-2CA5-F7F1-C3B90A8DF4D3";
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
createNode nurbsCurve -n "footFront_L0_0_loc26Shape" -p "footFront_L0_0_loc";
	rename -uid "2081E3F2-4C97-B317-420E-7DA8EFF19FBB";
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
createNode nurbsCurve -n "footFront_L0_0_loc27Shape" -p "footFront_L0_0_loc";
	rename -uid "70EC73FB-473E-1E2D-6B35-44A5BC8623C8";
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
createNode nurbsCurve -n "footFront_L0_0_loc27_0crvShape" -p "footFront_L0_0_loc";
	rename -uid "360438C2-45D8-6894-A6AF-DF8EC09E12D8";
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
createNode nurbsCurve -n "footFront_L0_0_loc27_1crvShape" -p "footFront_L0_0_loc";
	rename -uid "20D66D23-4077-8064-A938-4AB8BF6A0FAE";
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
createNode transform -n "footFront_L0_1_loc" -p "footFront_L0_0_loc";
	rename -uid "6FC7D80A-472D-AA26-09FC-1B9D66395A9E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -0.31771180755405143 0.73937999249394437 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_1_locShape" -p "footFront_L0_1_loc";
	rename -uid "D0EE7AF1-489F-DD51-FF1C-478873271F7C";
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
createNode nurbsCurve -n "footFront_L0_1_loc25Shape" -p "footFront_L0_1_loc";
	rename -uid "168E0189-4617-EECE-EDF1-EB9027447C26";
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
createNode nurbsCurve -n "footFront_L0_1_loc26Shape" -p "footFront_L0_1_loc";
	rename -uid "231FA8A6-4529-95FA-5517-46995B717F99";
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
createNode nurbsCurve -n "footFront_L0_1_loc27Shape" -p "footFront_L0_1_loc";
	rename -uid "C7AD99E8-4D56-27E8-2B35-3E89867D95DC";
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
createNode nurbsCurve -n "footFront_L0_1_loc27_0crvShape" -p "footFront_L0_1_loc";
	rename -uid "9D43BBC9-4C13-A824-E534-AEB90084DD35";
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
createNode nurbsCurve -n "footFront_L0_1_loc27_1crvShape" -p "footFront_L0_1_loc";
	rename -uid "D7FC3733-4B48-BEA2-A7C8-37AE50949998";
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
createNode transform -n "footFront_L0_crv" -p "footFront_L0_root";
	rename -uid "428C75CA-4E5D-62D0-4016-EAA8357285BB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373577 -0.60300743522685696 -16.239037496288891 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 7.9431701648148056 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	rename -uid "81AA3ED2-48D4-315C-8F66-38A453174420";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
	rename -uid "74604C82-4637-D6FC-CA21-328B678B4BCC";
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
createNode transform -n "footFront_L0_heel" -p "footFront_L0_root";
	rename -uid "36EA9D8B-4E16-6AED-0E37-17B99DA56C44";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-014 -0.31771180755405021 -0.067899908672075071 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
	rename -uid "B49B990E-4FB9-57EB-FCCD-FFA5B50DD1E7";
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
createNode nurbsCurve -n "footFront_L0_heel25Shape" -p "footFront_L0_heel";
	rename -uid "A35BA488-4054-FDCC-E40A-C69CFB879B22";
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
createNode nurbsCurve -n "footFront_L0_heel26Shape" -p "footFront_L0_heel";
	rename -uid "7373E7BD-4A39-4348-86CA-D48D3D660B8C";
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
createNode nurbsCurve -n "footFront_L0_heel27Shape" -p "footFront_L0_heel";
	rename -uid "85BCFCDB-4E15-EF0D-06A8-D4A81D73F5AD";
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
createNode nurbsCurve -n "footFront_L0_heel27_0crvShape" -p "footFront_L0_heel";
	rename -uid "4D8DED1F-4627-B97A-F465-A68D8E281E98";
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
createNode nurbsCurve -n "footFront_L0_heel27_1crvShape" -p "footFront_L0_heel";
	rename -uid "39D2CA20-4F98-7529-AD8E-BD9E0FE38B40";
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
createNode transform -n "footFront_L0_outpivot" -p "footFront_L0_root";
	rename -uid "C1252460-4FD6-0DAF-D286-85B0BEEB0976";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120619 -0.31771180755404832 0.69157185350467287 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
	rename -uid "F7043DAC-4262-CBCD-E6E5-79A6E8EB3BE1";
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
createNode nurbsCurve -n "footFront_L0_outpivot25Shape" -p "footFront_L0_outpivot";
	rename -uid "747FE754-4FD7-0332-9A37-6F81FE53AFE3";
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
createNode nurbsCurve -n "footFront_L0_outpivot26Shape" -p "footFront_L0_outpivot";
	rename -uid "D8F12F69-43A1-D74B-DCBE-CF888272ACE0";
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
createNode nurbsCurve -n "footFront_L0_outpivot27Shape" -p "footFront_L0_outpivot";
	rename -uid "5C841A3A-494B-301A-9CB8-DBAB7961EB18";
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
createNode nurbsCurve -n "footFront_L0_outpivot27_0crvShape" -p "footFront_L0_outpivot";
	rename -uid "CEAA498C-498E-DF90-41F0-42B9971CE964";
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
createNode nurbsCurve -n "footFront_L0_outpivot27_1crvShape" -p "footFront_L0_outpivot";
	rename -uid "2CCD65E6-487B-89ED-C18E-BF9812421768";
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
createNode transform -n "footFront_L0_inpivot" -p "footFront_L0_root";
	rename -uid "69E0821F-44EC-351C-2552-509A5389F822";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722895 -0.31771180755405065 0.86340011285665241 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
	rename -uid "66F858E4-436B-F972-E936-489E6A493050";
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
createNode nurbsCurve -n "footFront_L0_inpivot25Shape" -p "footFront_L0_inpivot";
	rename -uid "DE45432A-4932-597F-3D19-5897E540D333";
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
createNode nurbsCurve -n "footFront_L0_inpivot26Shape" -p "footFront_L0_inpivot";
	rename -uid "CE1D18F7-4D40-C447-FD36-5790C08E2BBE";
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
createNode nurbsCurve -n "footFront_L0_inpivot27Shape" -p "footFront_L0_inpivot";
	rename -uid "49AA21E1-4C92-5C35-2998-5285480C9663";
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
createNode nurbsCurve -n "footFront_L0_inpivot27_0crvShape" -p "footFront_L0_inpivot";
	rename -uid "095A3A00-4A7E-7841-F4D6-D8A876783E5A";
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
createNode nurbsCurve -n "footFront_L0_inpivot27_1crvShape" -p "footFront_L0_inpivot";
	rename -uid "FAEEFBBF-4B21-7340-F5AB-B9A552451265";
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
createNode transform -n "footFront_L0_1" -p "footFront_L0_root";
	rename -uid "BE7E35AA-4FD6-872D-3172-FD93370A7E8C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373577 -0.60300743522685696 -16.239037496288891 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 7.9431701648148056 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	rename -uid "04124273-4F49-5EB9-5199-6DBC3C2A7472";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig" -p "footFront_L0_1";
	rename -uid "426520D7-412F-9D07-2694-76BAB908800A";
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
createNode transform -n "frontLegUI_L0_root" -p "footFront_L0_root";
	rename -uid "8DA8A4D9-425D-0DC5-D792-A2A4C9F6C950";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.5 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 10.017876024668169 5.4248605945583241 2.5678955088138125 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148101 7.9431701648148092 7.9431701648148128 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "frontLegUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "frontLegUI_L0_rootShape" -p "frontLegUI_L0_root";
	rename -uid "A235ADC1-4390-D052-47CC-F1949744EF28";
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
createNode nurbsCurve -n "frontLegUI_L0_root25Shape" -p "frontLegUI_L0_root";
	rename -uid "20F4E5FC-42B5-D945-F315-8589A4FA70DE";
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
createNode nurbsCurve -n "frontLegUI_L0_root26Shape" -p "frontLegUI_L0_root";
	rename -uid "2C673D77-4BB2-80FE-33DC-CE8A180D4FE3";
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
createNode nurbsCurve -n "frontLegUI_L0_root27Shape" -p "frontLegUI_L0_root";
	rename -uid "812C4335-4289-945E-9FD9-8D83E12D4D19";
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
createNode transform -n "frontLegUI_L0_sizeRef" -p "frontLegUI_L0_root";
	rename -uid "825214CC-438C-2636-0E08-2C8F138707E4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 4.4408920985006262e-016 0.99999999999999822 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "legFront_L0_crv1" -p "legFront_L0_root";
	rename -uid "9073C10D-4C1D-BF6D-365C-ED9379C7B20F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011667 -5.8086248814742643 -5.5045062328919343 ;
	setAttr ".s" -type "double3" 2.5020602842634885 2.5020602842634854 2.5020602842634885 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	rename -uid "3FCC4AD4-4503-58E2-F0FD-3DAA47032BC8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig" -p "legFront_L0_crv1";
	rename -uid "0E7ADDA1-47FB-886B-2E97-CBAC7266DC0F";
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
createNode transform -n "shoulder_L0_blade" -p "shoulder_L0_root";
	rename -uid "F206A26E-4CDF-427F-E8ED-998870A9F36B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999889 0.99999999999999889 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "60809867-4163-F2C4-8BE9-CFBFAF709165";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		1.2661749458170934 0 0
		0 0.42205831527236448 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint9" -p "shoulder_L0_blade";
	rename -uid "E4B0A85E-4AF1-15CC-BA4C-B088A1C926E9";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_L0_0_locW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 3.359975138206762 -13.536129435773111 -14.081236533000135 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint9" -p "shoulder_L0_blade";
	rename -uid "417564E1-4107-651B-5CE9-66AFA121E24A";
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
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "71EFADBC-488A-137E-C8A8-3F97981D3C06";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147562348 -2.5303629060493171 -1.9933533667490368 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "210A1FA3-4D99-4F7F-0134-26884DA647D4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "4D8BEBA2-490F-E1EA-D3AC-DB8B0EA4B299";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_R0_root" -p "spine_C0_eff";
	rename -uid "CAE3D817-4419-9AE3-B7D4-53924DE60A80";
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
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 0.20082401790608292 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 -89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.1102915763618224 2.1102915763618237 -2.1102915763618237 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "265400D8-40F2-C88B-C008-93A957FFCC54";
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
	rename -uid "F72EA3F5-4BE1-14DF-FE19-F4AE69021222";
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
	rename -uid "F5DA1639-4F1A-9DE9-AF92-4F8B5ABBE78F";
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
	rename -uid "13E277A3-45B5-DDC0-B7E6-438F8EA22303";
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
createNode transform -n "shoulder_R0_0_loc" -p "shoulder_R0_root";
	rename -uid "83D70091-44DC-470B-296B-D19276148146";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724639 -0.2088261637065516 0.2066360849488682 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_0_locShape" -p "shoulder_R0_0_loc";
	rename -uid "DCF4E6C3-4B65-431E-74AD-228D5A373BCE";
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
createNode nurbsCurve -n "shoulder_R0_0_loc7Shape" -p "shoulder_R0_0_loc";
	rename -uid "9049A998-42A2-9918-D865-15AA0CDF5933";
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
createNode nurbsCurve -n "shoulder_R0_0_loc8Shape" -p "shoulder_R0_0_loc";
	rename -uid "509AFD68-4C1E-63A4-99D7-2C92F8DBF838";
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
createNode nurbsCurve -n "shoulder_R0_0_loc9Shape" -p "shoulder_R0_0_loc";
	rename -uid "D7B74AC2-4D1A-820D-725F-ABBA3B409C97";
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
createNode nurbsCurve -n "shoulder_R0_0_loc9_0crvShape" -p "shoulder_R0_0_loc";
	rename -uid "53FD7F95-4535-DF3D-5065-44B8ECFC2CF1";
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
createNode nurbsCurve -n "shoulder_R0_0_loc9_1crvShape" -p "shoulder_R0_0_loc";
	rename -uid "19427C9F-42C3-982F-D9E3-FD8080EA9A02";
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
createNode transform -n "legFront_R0_root" -p "shoulder_R0_0_loc";
	rename -uid "C23568E7-48C5-04C6-7710-9F8D6BF15AE1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2212453270876722e-015 -2.2204460492503131e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950326 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr -k on ".ikSolver" 1;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "legFront_R0_rootShape" -p "legFront_R0_root";
	rename -uid "5D556A47-4349-5D47-3465-EFAAFF41067F";
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
createNode nurbsCurve -n "legFront_R0_root7Shape" -p "legFront_R0_root";
	rename -uid "88D20A26-44D0-6B22-51F9-678BB4A83DCB";
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
createNode nurbsCurve -n "legFront_R0_root8Shape" -p "legFront_R0_root";
	rename -uid "106CC30E-4143-ADED-19D0-3F98A8612DB0";
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
createNode nurbsCurve -n "legFront_R0_root9Shape" -p "legFront_R0_root";
	rename -uid "5E7A991E-4205-8C00-238D-D88A6839D9C1";
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
createNode transform -n "legFront_R0_knee" -p "legFront_R0_root";
	rename -uid "2478DF12-4AF1-FEA1-2C6F-B5B7BC2A0EEC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.1240863021370457 -0.48633856256837316 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_kneeShape" -p "legFront_R0_knee";
	rename -uid "03EB069C-4F5B-D618-0C4E-7386A5EEA6AB";
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
createNode nurbsCurve -n "legFront_R0_knee7Shape" -p "legFront_R0_knee";
	rename -uid "E7EE2F5B-47EB-4146-60A0-5D8B21AA7D76";
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
createNode nurbsCurve -n "legFront_R0_knee8Shape" -p "legFront_R0_knee";
	rename -uid "970A59CC-4781-11DE-2888-DAAEE61EE9BF";
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
createNode nurbsCurve -n "legFront_R0_knee9Shape" -p "legFront_R0_knee";
	rename -uid "E2C88F95-4C20-A55B-CD2C-4187783EC487";
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
createNode nurbsCurve -n "legFront_R0_knee9_0crvShape" -p "legFront_R0_knee";
	rename -uid "88B6A214-4FEE-AF66-1D17-8DB91196391C";
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
createNode nurbsCurve -n "legFront_R0_knee9_1crvShape" -p "legFront_R0_knee";
	rename -uid "86D15ACC-4B26-0B6A-211C-C8BF9E7ABCC0";
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
createNode transform -n "legFront_R0_ankle" -p "legFront_R0_knee";
	rename -uid "4EDA3FCC-4E74-E39C-FEB5-B380656F2196";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.3651516407059203 0.073902270404607506 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_ankleShape" -p "legFront_R0_ankle";
	rename -uid "9D0E0CE2-4A9E-0F14-2BD5-B58B5599285D";
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
createNode nurbsCurve -n "legFront_R0_ankle7Shape" -p "legFront_R0_ankle";
	rename -uid "EC7F67BE-418A-0711-8CB1-5BA03C9C5560";
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
createNode nurbsCurve -n "legFront_R0_ankle8Shape" -p "legFront_R0_ankle";
	rename -uid "49B7221B-4EF6-901C-7A06-E79147AA58DE";
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
createNode nurbsCurve -n "legFront_R0_ankle9Shape" -p "legFront_R0_ankle";
	rename -uid "0185F9C0-4284-18B0-6D28-55A14BF68719";
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
createNode nurbsCurve -n "legFront_R0_ankle9_0crvShape" -p "legFront_R0_ankle";
	rename -uid "01F395D2-4B56-BDBD-816A-BD84F10281D3";
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
createNode nurbsCurve -n "legFront_R0_ankle9_1crvShape" -p "legFront_R0_ankle";
	rename -uid "A73A0C72-4DD1-E27D-BE58-4EA340A4EA81";
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
createNode transform -n "legFront_R0_foot" -p "legFront_R0_ankle";
	rename -uid "03F16336-4C5E-594F-E598-56A216126557";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-015 -1.129442505427549 0.023148533894220336 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
	rename -uid "262C0087-40FC-EA16-9ADD-728D6F6AF6B2";
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
createNode nurbsCurve -n "legFront_R0_foot7Shape" -p "legFront_R0_foot";
	rename -uid "4C432AB2-48C0-B361-688F-ED973D4C4498";
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
createNode nurbsCurve -n "legFront_R0_foot8Shape" -p "legFront_R0_foot";
	rename -uid "6872C875-4583-E6F4-8892-5FA5731E4517";
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
createNode nurbsCurve -n "legFront_R0_foot9Shape" -p "legFront_R0_foot";
	rename -uid "3C018E96-4D21-7469-B3B3-C88FB457A236";
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
createNode nurbsCurve -n "legFront_R0_foot9_0crvShape" -p "legFront_R0_foot";
	rename -uid "C2E53597-48FE-24E8-ED7A-B5ACD3082366";
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
createNode nurbsCurve -n "legFront_R0_foot9_1crvShape" -p "legFront_R0_foot";
	rename -uid "1FDB04A6-47DA-898C-956A-BDBC46C2B5B5";
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
createNode transform -n "legFront_R0_eff" -p "legFront_R0_foot";
	rename -uid "1E7A7291-401A-ED9E-017C-31A634824D90";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 8.6042284408449632e-016 0.59657797851920957 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999911 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_effShape" -p "legFront_R0_eff";
	rename -uid "156F4535-4A42-D942-9EE5-B098FA4E60B2";
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
createNode nurbsCurve -n "legFront_R0_eff7Shape" -p "legFront_R0_eff";
	rename -uid "B54E4946-4B2D-FCA1-A6A6-738A22D95C66";
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
createNode nurbsCurve -n "legFront_R0_eff8Shape" -p "legFront_R0_eff";
	rename -uid "E98A7A93-4E3A-E154-916A-D0AEA4D0ECB0";
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
createNode nurbsCurve -n "legFront_R0_eff9Shape" -p "legFront_R0_eff";
	rename -uid "06A3CF6A-4779-9BD5-2282-43AD2A06CC82";
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
createNode nurbsCurve -n "legFront_R0_eff9_0crvShape" -p "legFront_R0_eff";
	rename -uid "2864CCF3-49E5-BF05-F0C6-22A3F93F970C";
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
createNode nurbsCurve -n "legFront_R0_eff9_1crvShape" -p "legFront_R0_eff";
	rename -uid "50B1DC5F-4818-4726-7B3B-C5AF9EB5CB83";
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
createNode transform -n "footFront_R0_root" -p "legFront_R0_foot";
	rename -uid "AF975041-402A-5CF0-D859-37A1A85F4A13";
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
	setAttr ".t" -type "double3" 3.5527136788005009e-015 9.1593399531575415e-016 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514099 0.31499517602514093 0.31499517602514077 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "footFront_R0_rootShape" -p "footFront_R0_root";
	rename -uid "5331A439-4457-3DC3-DA0A-42A84BD98BEF";
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
createNode nurbsCurve -n "footFront_R0_root7Shape" -p "footFront_R0_root";
	rename -uid "AD215689-417D-14D8-ECBB-FCA609D89E07";
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
createNode nurbsCurve -n "footFront_R0_root8Shape" -p "footFront_R0_root";
	rename -uid "07057489-410A-8A67-1C5F-4BA5E25AA807";
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
createNode nurbsCurve -n "footFront_R0_root9Shape" -p "footFront_R0_root";
	rename -uid "83BBB4B7-4CA7-37F9-A273-55AD9A40353E";
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
createNode transform -n "footFront_R0_0_loc" -p "footFront_R0_root";
	rename -uid "737941AA-4EBF-C3CB-024B-A18B09EDCE12";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.2172489379008766e-015 5.5511151231257827e-016 0.75996190873518188 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_0_locShape" -p "footFront_R0_0_loc";
	rename -uid "4376F715-48F4-563B-6B8B-7E9329974707";
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
createNode nurbsCurve -n "footFront_R0_0_loc7Shape" -p "footFront_R0_0_loc";
	rename -uid "BA3B21C8-46CA-720A-CBD9-4C8D623A35E3";
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
createNode nurbsCurve -n "footFront_R0_0_loc8Shape" -p "footFront_R0_0_loc";
	rename -uid "66A630BA-4B86-8773-8DE3-B08A6D74F0E2";
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
createNode nurbsCurve -n "footFront_R0_0_loc9Shape" -p "footFront_R0_0_loc";
	rename -uid "8F964B08-47B0-8A1A-FE34-489B4BAA1EE9";
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
createNode nurbsCurve -n "footFront_R0_0_loc9_0crvShape" -p "footFront_R0_0_loc";
	rename -uid "E6AA47BB-4BE0-923E-8F77-5BA9AC796F2B";
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
createNode nurbsCurve -n "footFront_R0_0_loc9_1crvShape" -p "footFront_R0_0_loc";
	rename -uid "B3FEEFD1-401C-1D3A-3643-9C9F341DDCF8";
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
createNode transform -n "footFront_R0_1_loc" -p "footFront_R0_0_loc";
	rename -uid "46481E52-4F62-25D4-51B4-48A117FFF0AA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -0.31771180755405098 0.73937999249394082 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_1_locShape" -p "footFront_R0_1_loc";
	rename -uid "6BEE13A3-4E96-483E-3908-C0837008AAA2";
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
createNode nurbsCurve -n "footFront_R0_1_loc7Shape" -p "footFront_R0_1_loc";
	rename -uid "C3F7C0B0-4F41-DDFB-8DBF-DF9950480957";
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
createNode nurbsCurve -n "footFront_R0_1_loc8Shape" -p "footFront_R0_1_loc";
	rename -uid "FBD16F2C-4CBB-B41C-C538-729C91751161";
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
createNode nurbsCurve -n "footFront_R0_1_loc9Shape" -p "footFront_R0_1_loc";
	rename -uid "C333B9AF-403F-CCE2-C62A-DAB1CBBE57D9";
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
createNode nurbsCurve -n "footFront_R0_1_loc9_0crvShape" -p "footFront_R0_1_loc";
	rename -uid "55EE45E9-433A-B1A7-D070-1CB6845D50EF";
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
createNode nurbsCurve -n "footFront_R0_1_loc9_1crvShape" -p "footFront_R0_1_loc";
	rename -uid "8CB8D3CF-4F8B-5571-528B-73AB04AE8054";
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
createNode transform -n "footFront_R0_crv" -p "footFront_R0_root";
	rename -uid "0B59D293-418A-CC67-3887-C0B20997DB38";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373444 -0.60300743522684541 -16.239037496288905 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148074 -7.9431701648148083 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	rename -uid "A25A5041-4859-C07E-143D-61829B9489B5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
	rename -uid "1E050FC1-420E-F078-CE25-9A9F1CAA40F2";
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
createNode transform -n "footFront_R0_heel" -p "footFront_R0_root";
	rename -uid "6529B6DB-443F-DA53-912F-4CBA909CEF9F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-014 -0.31771180755405082 -0.067899908672078624 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_heelShape" -p "footFront_R0_heel";
	rename -uid "35308D23-4F6B-51D3-8FF4-5283994BDDBE";
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
createNode nurbsCurve -n "footFront_R0_heel7Shape" -p "footFront_R0_heel";
	rename -uid "EE7CDEDF-4DA8-31C7-64C4-06802C6CDE29";
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
createNode nurbsCurve -n "footFront_R0_heel8Shape" -p "footFront_R0_heel";
	rename -uid "B1A074C6-4BF3-C9AF-85F8-D7AAE221341C";
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
createNode nurbsCurve -n "footFront_R0_heel9Shape" -p "footFront_R0_heel";
	rename -uid "C064CCA5-4F20-6E72-5E30-669A2936AC1B";
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
createNode nurbsCurve -n "footFront_R0_heel9_0crvShape" -p "footFront_R0_heel";
	rename -uid "06D96150-478C-6A13-815C-8DA0207440C8";
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
createNode nurbsCurve -n "footFront_R0_heel9_1crvShape" -p "footFront_R0_heel";
	rename -uid "73A2FB17-43AA-D689-C49C-099766A3F9F5";
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
createNode transform -n "footFront_R0_outpivot" -p "footFront_R0_root";
	rename -uid "E4A0652A-4902-5CD2-CE17-20A267B83A96";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120628 -0.31771180755405037 0.69157185350467287 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_outpivotShape" -p "footFront_R0_outpivot";
	rename -uid "6550B9A3-4255-68E8-2987-2AA3F223FE6F";
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
createNode nurbsCurve -n "footFront_R0_outpivot7Shape" -p "footFront_R0_outpivot";
	rename -uid "629AA175-4BDB-A2A2-087F-0BB605CCA945";
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
createNode nurbsCurve -n "footFront_R0_outpivot8Shape" -p "footFront_R0_outpivot";
	rename -uid "201BC693-480B-460E-3E6E-4AA971A975B1";
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
createNode nurbsCurve -n "footFront_R0_outpivot9Shape" -p "footFront_R0_outpivot";
	rename -uid "923537CB-446B-97FE-F097-7D9C03A84E55";
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
createNode nurbsCurve -n "footFront_R0_outpivot9_0crvShape" -p "footFront_R0_outpivot";
	rename -uid "B50056BE-4738-A90D-42ED-789DAED75ECF";
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
createNode nurbsCurve -n "footFront_R0_outpivot9_1crvShape" -p "footFront_R0_outpivot";
	rename -uid "4D36A9FB-4B39-6BA1-D1F9-E3932FD86F14";
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
createNode transform -n "footFront_R0_inpivot" -p "footFront_R0_root";
	rename -uid "F4022417-4E51-B46F-9A9A-F6AA7C855090";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722922 -0.3177118075540506 0.86340011285664531 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_inpivotShape" -p "footFront_R0_inpivot";
	rename -uid "FDB86A77-43AA-DDF7-B463-2EB9BC6F671D";
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
createNode nurbsCurve -n "footFront_R0_inpivot7Shape" -p "footFront_R0_inpivot";
	rename -uid "B0DD89EB-401D-00F7-DB34-F19E50FEA07C";
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
createNode nurbsCurve -n "footFront_R0_inpivot8Shape" -p "footFront_R0_inpivot";
	rename -uid "4B0E1885-4CE1-8FCB-CE3D-0AA5626B78DC";
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
createNode nurbsCurve -n "footFront_R0_inpivot9Shape" -p "footFront_R0_inpivot";
	rename -uid "CC3488CF-4BB2-4A24-4DA5-FF81F8977207";
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
createNode nurbsCurve -n "footFront_R0_inpivot9_0crvShape" -p "footFront_R0_inpivot";
	rename -uid "1E06F2D6-4942-0A88-D55A-1E82F36386B6";
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
createNode nurbsCurve -n "footFront_R0_inpivot9_1crvShape" -p "footFront_R0_inpivot";
	rename -uid "3D5A68DA-4FB0-F851-AFF6-D2B712FEE0C0";
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
createNode transform -n "footFront_R0_1" -p "footFront_R0_root";
	rename -uid "6161F926-4E7A-C117-A721-098111794281";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373444 -0.60300743522684541 -16.239037496288905 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148074 -7.9431701648148083 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	rename -uid "4BBE09DB-45E6-4A61-5A0B-949939BD30CA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig" -p "footFront_R0_1";
	rename -uid "8E019C62-4ED3-AAE4-5CD1-BAB97E836C45";
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
createNode transform -n "frontLegUI_R0_root" -p "footFront_R0_root";
	rename -uid "6BF15ED3-4C14-258C-5B03-AFB3F60F59A3";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.5 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 10.017876024668183 5.4248605945583135 2.5678955088138089 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148101 7.943170164814811 7.9431701648148136 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "frontLegUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "frontLegUI_R0_rootShape" -p "frontLegUI_R0_root";
	rename -uid "B124473F-4582-3EFC-A9CB-A6BC547C365F";
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
createNode nurbsCurve -n "frontLegUI_R0_root7Shape" -p "frontLegUI_R0_root";
	rename -uid "D30C6F36-4068-A176-C14E-009FC2300A56";
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
createNode nurbsCurve -n "frontLegUI_R0_root8Shape" -p "frontLegUI_R0_root";
	rename -uid "D500E08B-4F60-0ED4-DFEB-1CB7E81C6E8B";
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
createNode nurbsCurve -n "frontLegUI_R0_root9Shape" -p "frontLegUI_R0_root";
	rename -uid "C7C6F10C-4DB3-2695-ADED-E0BF1B18BB05";
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
createNode transform -n "frontLegUI_R0_sizeRef" -p "frontLegUI_R0_root";
	rename -uid "49C4D160-4111-19B6-6CCD-0997D8A8D07E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-015 3.3306690738754696e-016 1.0000000000000004 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "legFront_R0_crv1" -p "legFront_R0_root";
	rename -uid "84E3456B-4E48-3682-C5DC-C099D06094ED";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011698 -5.8086248814742625 -5.504506232891937 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634867 -2.5020602842634885 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	rename -uid "ADBA40B1-4838-4696-B76F-BC8DC84BA700";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig" -p "legFront_R0_crv1";
	rename -uid "F2458FDA-4192-7624-49DC-5FAD0A770696";
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
createNode transform -n "shoulder_R0_blade" -p "shoulder_R0_root";
	rename -uid "8243BB35-4C40-B574-55A1-5696797D8C2E";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999845 0.99999999999999867 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "E02F1169-43C9-D46C-64C9-05ADEE41DFC8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		1.2661749458170934 0 0
		0 0.42205831527236448 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint3" -p "shoulder_R0_blade";
	rename -uid "2B46DF35-4A94-F081-2EFD-E88B69EBF506";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_R0_0_locW0" -dv 1 -at "double";
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
	setAttr ".rsrr" -type "double3" 3.3599751382067922 -13.536129435773148 -14.081236533000343 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint3" -p "shoulder_R0_blade";
	rename -uid "6DF9BEC8-4DA3-76C1-464B-0BB32DAC4489";
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
	setAttr ".rst" -type "double3" 0 -4.4408920985006262e-016 0 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "6637025B-4DA2-A5E8-5AF5-7AB823C4A084";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147563694 -2.5303629060493167 -1.9933533667490371 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "0543DC18-4244-05EC-D642-40B346145D6D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "C02D1F3B-47A4-8EE2-6B8C-0EADBE108F3B";
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
	rename -uid "47822BB3-4E11-3A98-C9C7-2F92E89BB4AB";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000018 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "2D7BEA89-400D-A24C-1C3C-C6BBAA4D803A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.28432089987982112 0 0
		0 0.094773633293273707 0
		0 0 0
		;
createNode aimConstraint -n "spine_C0_blade_aimConstraint9" -p "spine_C0_blade";
	rename -uid "D3B5A8A2-40B4-1AC0-9B3D-E6B6B61726A2";
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
	setAttr ".rsrr" -type "double3" 2.5444437451708115e-014 2.5444437451708118e-014 
		89.999999999999986 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint9" -p "spine_C0_blade";
	rename -uid "52DC362D-48F9-29C2-4819-81A0BBD6FAF4";
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
	setAttr ".rst" -type "double3" 0 -4.4408920985006262e-016 3.944304526105059e-031 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "9895D095-48F1-646B-82B5-87AB37B4AAFB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "81954DE4-461A-9874-468D-4880964BDEF2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "CEAB0F73-4019-09AD-939D-8D8BDD2CEF36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "legBack_L0_root" -p "spine_C0_root";
	rename -uid "EAC222E3-4BC7-4CFD-1C8B-DAA801659598";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21090213141047975 -0.097927178047045871 -2.6808811877076879 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.4927195488403597 1.4927195488403604 1.4927195488403604 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "backLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "legBack_L0_rootShape" -p "legBack_L0_root";
	rename -uid "625A7653-4315-CC30-FE72-75A2561B9DF1";
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
createNode nurbsCurve -n "legBack_L0_root25Shape" -p "legBack_L0_root";
	rename -uid "A80BE10C-4C13-FEFC-DFE9-4FBD3E59997C";
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
createNode nurbsCurve -n "legBack_L0_root26Shape" -p "legBack_L0_root";
	rename -uid "3C51BE60-471A-A6DA-B009-5296830797B6";
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
createNode nurbsCurve -n "legBack_L0_root27Shape" -p "legBack_L0_root";
	rename -uid "DE5C4F5B-49ED-65E1-BA7C-6EBDAE544BFA";
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
createNode transform -n "legBack_L0_knee" -p "legBack_L0_root";
	rename -uid "BDF1CA68-47AA-822E-5406-4D87EAB0E676";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.1070259132757201e-015 -1.1559508743798506 0.33714517700502222 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_kneeShape" -p "legBack_L0_knee";
	rename -uid "40802C58-4155-A6B9-A7AE-9ABD81234E54";
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
createNode nurbsCurve -n "legBack_L0_knee25Shape" -p "legBack_L0_knee";
	rename -uid "E1F47506-44D7-5261-6A0C-B89BA8DA18CB";
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
createNode nurbsCurve -n "legBack_L0_knee26Shape" -p "legBack_L0_knee";
	rename -uid "912086A9-41E8-2179-09FC-DF9B919455A8";
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
createNode nurbsCurve -n "legBack_L0_knee27Shape" -p "legBack_L0_knee";
	rename -uid "1E4642C5-485D-FC56-560B-399EAAF76786";
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
createNode nurbsCurve -n "legBack_L0_knee27_0crvShape" -p "legBack_L0_knee";
	rename -uid "2009401E-4A7D-7918-FC88-1C88D766F595";
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
createNode nurbsCurve -n "legBack_L0_knee27_1crvShape" -p "legBack_L0_knee";
	rename -uid "03DA0BA3-4247-FD56-5AA5-71B19F21A936";
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
createNode transform -n "legBack_L0_ankle" -p "legBack_L0_knee";
	rename -uid "5887742B-465B-F583-805D-BE85F836C01E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -1.4950431842245462 -0.57333193410462391 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000007 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_ankleShape" -p "legBack_L0_ankle";
	rename -uid "95AF3FA8-4DB5-D182-46E8-CFA147727872";
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
createNode nurbsCurve -n "legBack_L0_ankle25Shape" -p "legBack_L0_ankle";
	rename -uid "8024BF13-48EA-2D11-577C-6CB49E2CC45E";
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
createNode nurbsCurve -n "legBack_L0_ankle26Shape" -p "legBack_L0_ankle";
	rename -uid "BC1343F6-4131-3A33-5EB3-D2B34FDE59C3";
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
createNode nurbsCurve -n "legBack_L0_ankle27Shape" -p "legBack_L0_ankle";
	rename -uid "45965F5C-4B6E-D859-C889-79B967BEE8F1";
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
createNode nurbsCurve -n "legBack_L0_ankle27_0crvShape" -p "legBack_L0_ankle";
	rename -uid "17AAF0C9-4D60-9F6D-1DB6-24A6707F4BF5";
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
createNode nurbsCurve -n "legBack_L0_ankle27_1crvShape" -p "legBack_L0_ankle";
	rename -uid "ECA0B780-4AC1-5993-7DFB-7ABE26CE5B08";
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
createNode transform -n "legBack_L0_foot" -p "legBack_L0_ankle";
	rename -uid "2E148C06-4144-048F-0EE6-C68D4F23C53C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -0.54805580751979222 0.15050522089872964 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_footShape" -p "legBack_L0_foot";
	rename -uid "1649CDCD-4728-20FD-12B7-5BBF5252DCF7";
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
createNode nurbsCurve -n "legBack_L0_foot25Shape" -p "legBack_L0_foot";
	rename -uid "E2B67975-4CC6-E2D0-F5BC-50A416D21BBD";
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
createNode nurbsCurve -n "legBack_L0_foot26Shape" -p "legBack_L0_foot";
	rename -uid "AEEB2A8B-43E1-7420-12E2-A799894DC681";
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
createNode nurbsCurve -n "legBack_L0_foot27Shape" -p "legBack_L0_foot";
	rename -uid "B36EEE10-43AB-1637-558D-50B9CFFD3C3F";
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
createNode nurbsCurve -n "legBack_L0_foot27_0crvShape" -p "legBack_L0_foot";
	rename -uid "F5F42DFD-4F33-0561-84F3-929D63141C08";
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
createNode nurbsCurve -n "legBack_L0_foot27_1crvShape" -p "legBack_L0_foot";
	rename -uid "F37787B4-4ECF-1D33-A005-B6A1CEA0047C";
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
createNode transform -n "legBack_L0_eff" -p "legBack_L0_foot";
	rename -uid "DA12E2BB-45B9-6BD7-9A4E-F7972DC7B28A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.3306690738754696e-015 7.7715611723760958e-016 0.28135643819707412 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999889 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_effShape" -p "legBack_L0_eff";
	rename -uid "6BF9C88C-42E6-C4FE-734C-89ACA070E9C0";
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
createNode nurbsCurve -n "legBack_L0_eff25Shape" -p "legBack_L0_eff";
	rename -uid "203FA7EF-4CB7-CF38-BB50-EB9432290A41";
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
createNode nurbsCurve -n "legBack_L0_eff26Shape" -p "legBack_L0_eff";
	rename -uid "9F2C5235-490E-5BA0-0F8A-4D9E97A50A9F";
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
createNode nurbsCurve -n "legBack_L0_eff27Shape" -p "legBack_L0_eff";
	rename -uid "2C26FFAD-43CE-C268-9A8F-9DB6695F083D";
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
createNode nurbsCurve -n "legBack_L0_eff27_0crvShape" -p "legBack_L0_eff";
	rename -uid "E8027F8D-4BD9-0492-EBDB-29866F5F17D5";
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
createNode nurbsCurve -n "legBack_L0_eff27_1crvShape" -p "legBack_L0_eff";
	rename -uid "990BFBCA-4286-FE77-013C-3FA64E05BFDF";
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
createNode transform -n "footBack_L0_root" -p "legBack_L0_foot";
	rename -uid "ACF50BC5-47D3-1E9A-5526-09B2D7E456F4";
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
	setAttr ".t" -type "double3" 1.9984014443252818e-015 8.3266726846886741e-016 -1.1102230246251565e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398101 0.16356254765398084 0.16356254765398079 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "footBack_L0_rootShape" -p "footBack_L0_root";
	rename -uid "2983D1EF-47C9-DD57-FFB6-7894A7E92307";
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
createNode nurbsCurve -n "footBack_L0_root25Shape" -p "footBack_L0_root";
	rename -uid "1983A6CC-4409-BD61-648B-998B455B28AA";
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
createNode nurbsCurve -n "footBack_L0_root26Shape" -p "footBack_L0_root";
	rename -uid "AE1CC7CB-4E14-9E1B-5CD8-718CC352BB94";
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
createNode nurbsCurve -n "footBack_L0_root27Shape" -p "footBack_L0_root";
	rename -uid "C7ADAE4C-4D77-D960-0FBF-3594D0329C96";
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
createNode transform -n "footBack_L0_0_loc" -p "footBack_L0_root";
	rename -uid "10CCB999-4F3F-D2E2-5435-D0BB09464057";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-014 2.2204460492503131e-016 0.54565565303280472 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_0_locShape" -p "footBack_L0_0_loc";
	rename -uid "D6A57197-406C-D71C-B384-80B6C4EEBEBF";
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
createNode nurbsCurve -n "footBack_L0_0_loc25Shape" -p "footBack_L0_0_loc";
	rename -uid "4F22C45B-4F39-E61B-A46B-62831DADD556";
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
createNode nurbsCurve -n "footBack_L0_0_loc26Shape" -p "footBack_L0_0_loc";
	rename -uid "940B20E1-4184-2656-3789-6A8DD9E8A0D5";
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
createNode nurbsCurve -n "footBack_L0_0_loc27Shape" -p "footBack_L0_0_loc";
	rename -uid "1C823D4F-419D-8751-DABB-93A13DD73CC5";
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
createNode nurbsCurve -n "footBack_L0_0_loc27_0crvShape" -p "footBack_L0_0_loc";
	rename -uid "808668EF-46C6-6994-1B3F-998B810BA76A";
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
createNode nurbsCurve -n "footBack_L0_0_loc27_1crvShape" -p "footBack_L0_0_loc";
	rename -uid "CC921664-49CD-F38F-715B-94BC6A13B476";
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
createNode transform -n "footBack_L0_1_loc" -p "footBack_L0_0_loc";
	rename -uid "5B06078C-48F9-0A72-317D-4AB100A6B999";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -0.34547277013915567 0.77046072389793352 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999911 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
	rename -uid "1FBE040F-4B6F-25E4-51F5-BCA361736A76";
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
createNode nurbsCurve -n "footBack_L0_1_loc25Shape" -p "footBack_L0_1_loc";
	rename -uid "9F945220-454D-CDFB-CA37-DD9E9DAA4203";
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
createNode nurbsCurve -n "footBack_L0_1_loc26Shape" -p "footBack_L0_1_loc";
	rename -uid "722B5E47-46D7-E2B7-D22F-A68272510C46";
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
createNode nurbsCurve -n "footBack_L0_1_loc27Shape" -p "footBack_L0_1_loc";
	rename -uid "BECB9057-4468-7C23-3F2B-39BCC96FF34E";
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
createNode nurbsCurve -n "footBack_L0_1_loc27_0crvShape" -p "footBack_L0_1_loc";
	rename -uid "77804A91-47BB-7FCC-98BB-FBA7B0D045B7";
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
createNode nurbsCurve -n "footBack_L0_1_loc27_1crvShape" -p "footBack_L0_1_loc";
	rename -uid "2174C288-4895-139C-9DD6-1CB63401655C";
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
createNode transform -n "footBack_L0_crv" -p "footBack_L0_root";
	rename -uid "3C79A46E-43D2-14FD-7D43-2FB66CA2F4E7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358609 11.584116504196633 ;
	setAttr ".s" -type "double3" 8.6433157474725739 8.6433157474725739 8.6433157474725775 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	rename -uid "AF624035-40F7-9B89-A2D0-C390ECA42924";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
	rename -uid "C8A0F1FB-42F4-2A61-930E-0BB53A77E2AF";
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
createNode transform -n "footBack_L0_heel" -p "footBack_L0_root";
	rename -uid "F7358936-4FCF-3B53-B1A6-0589E6381742";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.1316282072803006e-014 -0.34547277013915656 -0.37260003933977615 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_heelShape" -p "footBack_L0_heel";
	rename -uid "0544079D-41D1-07F3-AA9C-4A95F7F8DCD4";
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
createNode nurbsCurve -n "footBack_L0_heel25Shape" -p "footBack_L0_heel";
	rename -uid "2729E633-48AD-2134-0CFB-1F8A40CBA90F";
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
createNode nurbsCurve -n "footBack_L0_heel26Shape" -p "footBack_L0_heel";
	rename -uid "B140D8AD-41BF-EBF2-ADBB-4A9F4E4B4C7E";
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
createNode nurbsCurve -n "footBack_L0_heel27Shape" -p "footBack_L0_heel";
	rename -uid "D5B11761-4DA4-0717-E6B4-1E8B71364074";
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
createNode nurbsCurve -n "footBack_L0_heel27_0crvShape" -p "footBack_L0_heel";
	rename -uid "4253D52C-48BE-B0DF-C765-54BD5FA856A3";
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
createNode nurbsCurve -n "footBack_L0_heel27_1crvShape" -p "footBack_L0_heel";
	rename -uid "DDF5445F-47BC-949F-D338-EDB982745A15";
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
createNode transform -n "footBack_L0_outpivot" -p "footBack_L0_root";
	rename -uid "FB649CE9-4005-94EB-05C9-39BE02C22DA3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139708 -0.34547277013915539 0.11497296198779772 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_outpivotShape" -p "footBack_L0_outpivot";
	rename -uid "CF87899B-41C1-6BD9-44C0-DFBEAD2CEBC0";
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
createNode nurbsCurve -n "footBack_L0_outpivot25Shape" -p "footBack_L0_outpivot";
	rename -uid "1C32466D-49D7-E413-2F0B-2BA6D43BF795";
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
createNode nurbsCurve -n "footBack_L0_outpivot26Shape" -p "footBack_L0_outpivot";
	rename -uid "222BE681-43CF-3AF7-71A4-F3810B354062";
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
createNode nurbsCurve -n "footBack_L0_outpivot27Shape" -p "footBack_L0_outpivot";
	rename -uid "D1A850F2-4164-3AC6-FFFB-B08D6B1FB396";
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
createNode nurbsCurve -n "footBack_L0_outpivot27_0crvShape" -p "footBack_L0_outpivot";
	rename -uid "3915D394-4488-A7E3-9F0F-0B883A05BB77";
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
createNode nurbsCurve -n "footBack_L0_outpivot27_1crvShape" -p "footBack_L0_outpivot";
	rename -uid "118F9377-4A71-81EF-C2ED-1BAEE7A3CCD9";
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
createNode transform -n "footBack_L0_inpivot" -p "footBack_L0_root";
	rename -uid "0DE1035D-4E6A-53AC-5D0E-C6A204841F4C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.168214682621576 -0.34547277013915734 0.21228136011732879 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_inpivotShape" -p "footBack_L0_inpivot";
	rename -uid "5E7F0DE6-42AC-43B3-9636-519A307120E7";
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
createNode nurbsCurve -n "footBack_L0_inpivot25Shape" -p "footBack_L0_inpivot";
	rename -uid "7A53AB00-4ED9-422A-2D0E-1A827753372B";
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
createNode nurbsCurve -n "footBack_L0_inpivot26Shape" -p "footBack_L0_inpivot";
	rename -uid "2AB416A1-4673-8F38-82B7-02AEA91DADA1";
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
createNode nurbsCurve -n "footBack_L0_inpivot27Shape" -p "footBack_L0_inpivot";
	rename -uid "BFE348EF-4CD7-AB4E-C066-3DB11A515A4C";
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
createNode nurbsCurve -n "footBack_L0_inpivot27_0crvShape" -p "footBack_L0_inpivot";
	rename -uid "C7CC2B23-4D32-9356-F0FC-00B3BE8A934A";
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
createNode nurbsCurve -n "footBack_L0_inpivot27_1crvShape" -p "footBack_L0_inpivot";
	rename -uid "9C2C8E62-495A-B43B-BB2A-1F95E83D60BC";
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
createNode transform -n "footBack_L0_1" -p "footBack_L0_root";
	rename -uid "CBDE56E5-41ED-6340-F7AF-409D49E5E4CD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358609 11.584116504196633 ;
	setAttr ".s" -type "double3" 8.6433157474725739 8.6433157474725739 8.6433157474725775 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	rename -uid "94D237E3-4075-D8DD-6044-CAB6D0562237";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig" -p "footBack_L0_1";
	rename -uid "00E3CD0C-4D9E-8885-ED40-0EBE55866849";
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
createNode transform -n "backLegUI_L0_root" -p "footBack_L0_root";
	rename -uid "2607A649-401A-8746-8C77-B380455154DF";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.5 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.9148715870389665 6.0337539388988635 -0.9201692139029678 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 8.6433157474725721 8.643315747472581 8.643315747472581 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "backLegUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "backLegUI_L0_rootShape" -p "backLegUI_L0_root";
	rename -uid "DB2D019A-4EDF-D390-05E2-5D8A8D57C5AE";
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
createNode nurbsCurve -n "backLegUI_L0_root25Shape" -p "backLegUI_L0_root";
	rename -uid "E495FF64-460C-D0D4-F273-059DB75DCA66";
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
createNode nurbsCurve -n "backLegUI_L0_root26Shape" -p "backLegUI_L0_root";
	rename -uid "FC023832-44D6-0D82-790F-5F821D89E687";
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
createNode nurbsCurve -n "backLegUI_L0_root27Shape" -p "backLegUI_L0_root";
	rename -uid "ED4B115D-459A-6CD1-1F56-B7A3D0121537";
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
createNode transform -n "backLegUI_L0_sizeRef" -p "backLegUI_L0_root";
	rename -uid "F30ADD9F-46B7-DE23-F3D7-37A939101709";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 2.2204460492503131e-016 1.0000000000000002 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999911 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "legBack_L0_crv1" -p "legBack_L0_root";
	rename -uid "5B5F6644-40BD-EDCF-5B5D-76838B037379";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807502 -3.2803056907023973 1.8090460715460559 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.4137227438343878 1.4137227438343878 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	rename -uid "F8B3EA77-4AAD-6C5E-646B-5598F29F09CE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig" -p "legBack_L0_crv1";
	rename -uid "EC0A8706-4C6C-5CE0-0910-EA83ACAD89BB";
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
createNode transform -n "legBack_R0_root" -p "spine_C0_root";
	rename -uid "F8533F44-4EF2-CE1F-B5B6-59A325A63839";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21090213141048153 -0.09792717804704365 2.6808811877076875 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 -89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.4927195488403597 1.4927195488403604 -1.4927195488403604 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "backLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "legBack_R0_rootShape" -p "legBack_R0_root";
	rename -uid "BE0B6077-4C5A-03A5-F341-6F84DD1F87AE";
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
createNode nurbsCurve -n "legBack_R0_root7Shape" -p "legBack_R0_root";
	rename -uid "BFD30F8F-4738-DCB0-6808-30BCAC441203";
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
createNode nurbsCurve -n "legBack_R0_root8Shape" -p "legBack_R0_root";
	rename -uid "3A5C8424-4A6B-FE48-F011-FBA585AB98A5";
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
createNode nurbsCurve -n "legBack_R0_root9Shape" -p "legBack_R0_root";
	rename -uid "B36AC5D6-4AB3-EC5F-A3A8-3C828EF7D31D";
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
createNode transform -n "legBack_R0_knee" -p "legBack_R0_root";
	rename -uid "EC30E6FD-4940-38A8-946E-DF90D1F6D965";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.886579864025407e-015 -1.1559508743798506 0.33714517700502156 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000011 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
	rename -uid "4B866A3A-4ADE-7C40-C51A-72AA54EBD09A";
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
createNode nurbsCurve -n "legBack_R0_knee7Shape" -p "legBack_R0_knee";
	rename -uid "223E3222-474B-277F-FE98-91972F348A86";
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
createNode nurbsCurve -n "legBack_R0_knee8Shape" -p "legBack_R0_knee";
	rename -uid "97080FF7-41A2-1C38-1B0D-8CBEA768FA60";
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
createNode nurbsCurve -n "legBack_R0_knee9Shape" -p "legBack_R0_knee";
	rename -uid "0DFC24F0-406B-C7F0-FC1A-B59EDC13D5E2";
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
createNode nurbsCurve -n "legBack_R0_knee9_0crvShape" -p "legBack_R0_knee";
	rename -uid "A02352B7-4706-D5B4-A6EA-29BAD8DC1A5C";
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
createNode nurbsCurve -n "legBack_R0_knee9_1crvShape" -p "legBack_R0_knee";
	rename -uid "BD0F541C-4112-C5FF-FE17-2D8AE066E3BD";
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
createNode transform -n "legBack_R0_ankle" -p "legBack_R0_knee";
	rename -uid "06DA9AF0-49F7-5294-EF6B-BC8E2F5A78C6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.4950431842245449 -0.57333193410462302 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999889 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_ankleShape" -p "legBack_R0_ankle";
	rename -uid "B0494F29-405F-CE3F-F48B-89BBDE00CC1B";
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
createNode nurbsCurve -n "legBack_R0_ankle7Shape" -p "legBack_R0_ankle";
	rename -uid "5036FC0F-47EA-042B-05BD-DBA2CD6CF995";
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
createNode nurbsCurve -n "legBack_R0_ankle8Shape" -p "legBack_R0_ankle";
	rename -uid "E2A95C99-464E-CAD2-9F35-2D9ED56C26FE";
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
createNode nurbsCurve -n "legBack_R0_ankle9Shape" -p "legBack_R0_ankle";
	rename -uid "1FA297C3-489A-A857-A603-BBBF111E09DC";
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
createNode nurbsCurve -n "legBack_R0_ankle9_0crvShape" -p "legBack_R0_ankle";
	rename -uid "4576F648-4FD1-A378-375C-61ACC926546A";
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
createNode nurbsCurve -n "legBack_R0_ankle9_1crvShape" -p "legBack_R0_ankle";
	rename -uid "0AA24F53-4BBF-4FEE-2827-349D71FEFE9F";
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
createNode transform -n "legBack_R0_foot" -p "legBack_R0_ankle";
	rename -uid "B1E01398-4ABE-D32A-E58B-4B9FCC441E7D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 -0.5480558075197931 0.15050522089872898 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000013 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_footShape" -p "legBack_R0_foot";
	rename -uid "67DE05D2-4EA2-948B-29F6-859344C0172E";
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
createNode nurbsCurve -n "legBack_R0_foot7Shape" -p "legBack_R0_foot";
	rename -uid "E284A064-45AD-30F4-C4B4-AD8FFB3B4DAB";
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
createNode nurbsCurve -n "legBack_R0_foot8Shape" -p "legBack_R0_foot";
	rename -uid "49F12E7D-48BD-BDBC-4204-36961D851507";
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
createNode nurbsCurve -n "legBack_R0_foot9Shape" -p "legBack_R0_foot";
	rename -uid "06BF51A9-4CB6-F09D-719B-5AA582F93FBE";
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
createNode nurbsCurve -n "legBack_R0_foot9_0crvShape" -p "legBack_R0_foot";
	rename -uid "018FA8D0-4E44-A10E-E11E-98AF13D06DE5";
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
createNode nurbsCurve -n "legBack_R0_foot9_1crvShape" -p "legBack_R0_foot";
	rename -uid "B3F0A4AA-47FC-CB17-CF3E-D5B600422978";
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
createNode transform -n "legBack_R0_eff" -p "legBack_R0_foot";
	rename -uid "354A3C64-4167-7CA8-C895-BB83B145CC3D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 6.2450045135165055e-016 0.28135643819707479 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_effShape" -p "legBack_R0_eff";
	rename -uid "794508C8-4182-AF4A-7DDB-B2A8944C6BAE";
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
createNode nurbsCurve -n "legBack_R0_eff7Shape" -p "legBack_R0_eff";
	rename -uid "D71F8E2D-4FC4-038B-A8DD-B38934F84E40";
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
createNode nurbsCurve -n "legBack_R0_eff8Shape" -p "legBack_R0_eff";
	rename -uid "E3CA007A-48AC-9BF1-EBCD-67BA24315881";
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
createNode nurbsCurve -n "legBack_R0_eff9Shape" -p "legBack_R0_eff";
	rename -uid "81E13890-4A0D-A99F-0586-7590CFC632EB";
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
createNode nurbsCurve -n "legBack_R0_eff9_0crvShape" -p "legBack_R0_eff";
	rename -uid "716F5BF3-4988-DBDB-C1B6-E9BFDAD28058";
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
createNode nurbsCurve -n "legBack_R0_eff9_1crvShape" -p "legBack_R0_eff";
	rename -uid "B5FD2DD4-469C-CF95-6424-85AD9342885A";
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
createNode transform -n "footBack_R0_root" -p "legBack_R0_foot";
	rename -uid "46F855CC-4D50-6C1B-1641-FF8C05B91759";
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
	setAttr ".t" -type "double3" 4.4408920985006262e-016 7.2164496600635175e-016 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.1635625476539809 0.16356254765398084 0.16356254765398079 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "footBack_R0_rootShape" -p "footBack_R0_root";
	rename -uid "6B829F33-4BF2-4413-5193-8BA8739F5DA9";
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
createNode nurbsCurve -n "footBack_R0_root7Shape" -p "footBack_R0_root";
	rename -uid "DDA22B59-46AF-9833-41F8-64B82EFF680B";
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
createNode nurbsCurve -n "footBack_R0_root8Shape" -p "footBack_R0_root";
	rename -uid "4CB8B9B4-450B-A726-8317-ADB58CF1603F";
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
createNode nurbsCurve -n "footBack_R0_root9Shape" -p "footBack_R0_root";
	rename -uid "E0046603-4E03-06C8-24AE-1FA04D9FD497";
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
createNode transform -n "footBack_R0_0_loc" -p "footBack_R0_root";
	rename -uid "284C4BE1-4ABE-642C-B005-479EA3E402D9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-014 5.5511151231257827e-017 0.54565565303279762 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_0_locShape" -p "footBack_R0_0_loc";
	rename -uid "13DDFE23-43A4-DC46-4426-B888FF715C92";
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
createNode nurbsCurve -n "footBack_R0_0_loc7Shape" -p "footBack_R0_0_loc";
	rename -uid "89D5DD43-4002-9B6D-F05D-9DBFC933AE21";
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
createNode nurbsCurve -n "footBack_R0_0_loc8Shape" -p "footBack_R0_0_loc";
	rename -uid "DCFC56B4-41E0-A38D-59FE-10A68FDEA5A8";
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
createNode nurbsCurve -n "footBack_R0_0_loc9Shape" -p "footBack_R0_0_loc";
	rename -uid "DC8C32C5-4941-1CCB-BC9C-E6BEA0AD27C6";
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
createNode nurbsCurve -n "footBack_R0_0_loc9_0crvShape" -p "footBack_R0_0_loc";
	rename -uid "4FA58E60-4B12-946E-18FD-3FBDA7889ECA";
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
createNode nurbsCurve -n "footBack_R0_0_loc9_1crvShape" -p "footBack_R0_0_loc";
	rename -uid "E36C14B8-4D6D-44B7-EF15-2B865CBAE8A1";
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
createNode transform -n "footBack_R0_1_loc" -p "footBack_R0_0_loc";
	rename -uid "EC12987A-475E-BF07-373E-DE978518706A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -0.345472770139156 0.7704607238979353 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999978 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_1_locShape" -p "footBack_R0_1_loc";
	rename -uid "8EB4204A-4DBC-44CC-DCB8-6990EEEBC1B0";
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
createNode nurbsCurve -n "footBack_R0_1_loc7Shape" -p "footBack_R0_1_loc";
	rename -uid "AA02598D-45DB-1BB1-3633-BB86C0CC9A3D";
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
createNode nurbsCurve -n "footBack_R0_1_loc8Shape" -p "footBack_R0_1_loc";
	rename -uid "CD3E50AE-419E-078F-4127-CE8AAE43E2DA";
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
createNode nurbsCurve -n "footBack_R0_1_loc9Shape" -p "footBack_R0_1_loc";
	rename -uid "AED0594E-4E39-E213-1043-B38A941A6DF9";
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
createNode nurbsCurve -n "footBack_R0_1_loc9_0crvShape" -p "footBack_R0_1_loc";
	rename -uid "8ECD0AB8-4144-BCC3-973C-238ED7288D84";
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
createNode nurbsCurve -n "footBack_R0_1_loc9_1crvShape" -p "footBack_R0_1_loc";
	rename -uid "843FAF68-4314-DFF1-A5D2-019B59AAF694";
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
createNode transform -n "footBack_R0_crv" -p "footBack_R0_root";
	rename -uid "F74CECC2-4E31-2DBC-9B65-AEA7385F5643";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718956 -0.49678747209357821 11.584116504196619 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.643315747472581 8.6433157474725739 -8.643315747472581 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	rename -uid "EBFD8F97-4C43-0C38-3B2B-BA9143DFED91";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
	rename -uid "A1161880-4A45-3380-ACE7-BEBE63AF216F";
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
createNode transform -n "footBack_R0_heel" -p "footBack_R0_root";
	rename -uid "7DFDB045-4061-EEF5-4A8D-0E857761C60D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4210854715202004e-014 -0.34547277013915639 -0.3726000393397868 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_heelShape" -p "footBack_R0_heel";
	rename -uid "FD603FD2-4D83-2A16-18A5-6791D872CE30";
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
createNode nurbsCurve -n "footBack_R0_heel7Shape" -p "footBack_R0_heel";
	rename -uid "5185B1FC-4514-C222-B1B8-6A8F78226501";
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
createNode nurbsCurve -n "footBack_R0_heel8Shape" -p "footBack_R0_heel";
	rename -uid "BFC7B1C4-4199-082C-0C9C-A2AA91C05B33";
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
createNode nurbsCurve -n "footBack_R0_heel9Shape" -p "footBack_R0_heel";
	rename -uid "FDFED6A2-4690-C6EB-6A38-7E97A54FAAF1";
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
createNode nurbsCurve -n "footBack_R0_heel9_0crvShape" -p "footBack_R0_heel";
	rename -uid "EFB71F7F-4CA3-2195-0FD0-978E74A89123";
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
createNode nurbsCurve -n "footBack_R0_heel9_1crvShape" -p "footBack_R0_heel";
	rename -uid "03E81757-4983-3D42-9E30-C39D9C1CBDBE";
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
createNode transform -n "footBack_R0_outpivot" -p "footBack_R0_root";
	rename -uid "0A41FC92-4292-89D2-29BD-2793A8383EFF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139779 -0.34547277013915645 0.11497296198778884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_outpivotShape" -p "footBack_R0_outpivot";
	rename -uid "6B175D00-4649-9B93-4D07-4C9C731D6476";
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
createNode nurbsCurve -n "footBack_R0_outpivot7Shape" -p "footBack_R0_outpivot";
	rename -uid "7A432480-43D4-B225-0AC9-33BFCD1981A5";
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
createNode nurbsCurve -n "footBack_R0_outpivot8Shape" -p "footBack_R0_outpivot";
	rename -uid "829A9206-451B-38A1-33FD-0689A797C8C9";
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
createNode nurbsCurve -n "footBack_R0_outpivot9Shape" -p "footBack_R0_outpivot";
	rename -uid "B1EB1B8F-4C75-B100-470F-F1B70922A7E7";
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
createNode nurbsCurve -n "footBack_R0_outpivot9_0crvShape" -p "footBack_R0_outpivot";
	rename -uid "792915C5-4416-3336-317A-E9884E465862";
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
createNode nurbsCurve -n "footBack_R0_outpivot9_1crvShape" -p "footBack_R0_outpivot";
	rename -uid "FA5878BA-4C0C-B641-4746-48A33579C725";
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
createNode transform -n "footBack_R0_inpivot" -p "footBack_R0_root";
	rename -uid "8BDE41E1-476C-820D-51EA-51928DAF5836";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215671 -0.34547277013915623 0.21228136011731635 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_inpivotShape" -p "footBack_R0_inpivot";
	rename -uid "56085C6D-42DD-F1C1-4AD0-43856A6A75E3";
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
createNode nurbsCurve -n "footBack_R0_inpivot7Shape" -p "footBack_R0_inpivot";
	rename -uid "A815B0E8-4489-AF5A-EE65-C89AEE19CC56";
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
createNode nurbsCurve -n "footBack_R0_inpivot8Shape" -p "footBack_R0_inpivot";
	rename -uid "8EBF281F-4302-4E1D-0ECE-97995CF69D6A";
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
createNode nurbsCurve -n "footBack_R0_inpivot9Shape" -p "footBack_R0_inpivot";
	rename -uid "C84D4CDA-4980-1AB7-332B-D3ABE0EB1EEF";
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
createNode nurbsCurve -n "footBack_R0_inpivot9_0crvShape" -p "footBack_R0_inpivot";
	rename -uid "D7AD173E-4EE1-6794-BB32-FB8B896A4E6A";
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
createNode nurbsCurve -n "footBack_R0_inpivot9_1crvShape" -p "footBack_R0_inpivot";
	rename -uid "0F50F30A-476B-2235-0ADE-0AAB68B117D3";
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
createNode transform -n "footBack_R0_1" -p "footBack_R0_root";
	rename -uid "0CE8DEB5-4A5A-F597-11BF-7C9648F3BDE3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718956 -0.49678747209357821 11.584116504196619 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.643315747472581 8.6433157474725739 -8.643315747472581 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	rename -uid "9704D36C-40F6-83D6-054A-9C99C9AAAAE8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig" -p "footBack_R0_1";
	rename -uid "8B15430F-407F-E18F-87B3-8DBF2F153D53";
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
createNode transform -n "backLegUI_R0_root" -p "footBack_R0_root";
	rename -uid "8CA5138E-4872-FE7F-8DB5-0785DE85CC2F";
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
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.5 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.9148715870389843 6.0337539388988546 -0.92016921390296602 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 8.6433157474725775 8.6433157474725792 8.6433157474725846 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "backLegUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "backLegUI_R0_rootShape" -p "backLegUI_R0_root";
	rename -uid "B9F2D175-4B5B-FAEA-ECA7-44A444E6C83C";
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
createNode nurbsCurve -n "backLegUI_R0_root7Shape" -p "backLegUI_R0_root";
	rename -uid "F5F7E724-41C6-EDCC-041C-65B9F65CC361";
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
createNode nurbsCurve -n "backLegUI_R0_root8Shape" -p "backLegUI_R0_root";
	rename -uid "2358FC50-4D3D-404D-0F55-BE89C6FEF484";
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
createNode nurbsCurve -n "backLegUI_R0_root9Shape" -p "backLegUI_R0_root";
	rename -uid "9AAF1FDD-444F-C68C-6838-BC80CF5C0373";
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
createNode transform -n "backLegUI_R0_sizeRef" -p "backLegUI_R0_root";
	rename -uid "7F08F9B5-48A7-8A98-D850-568B74E87164";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 1.1102230246251565e-016 0.99999999999999956 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999933 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode transform -n "legBack_R0_crv1" -p "legBack_R0_root";
	rename -uid "E1191C7E-48F1-A8B8-9C8C-CCB38802A52C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807555 -3.2803056907023964 1.8090460715460541 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.413722743834388 -1.4137227438343878 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	rename -uid "6987409B-47B5-A054-1CA8-26A295B94063";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig" -p "legBack_R0_crv1";
	rename -uid "CAA47E44-4349-9FBA-DE92-E7A122D934CA";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "25BCD2BC-4150-75B4-88E7-6F9C6F03AB87";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CA42A945-4C37-68DA-321E-469FA258DF93";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EDE1B5BF-4F64-36FF-2A44-1CAC8787FBCF";
createNode displayLayerManager -n "layerManager";
	rename -uid "9E784619-4706-3C9B-05CB-8CB2D133D931";
createNode displayLayer -n "defaultLayer";
	rename -uid "160727EA-4568-0465-2638-FBA688FB6A44";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2237F886-4A7F-A0E8-387D-1DA150B4C1BB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "148C8E50-48C3-2544-0ED2-E59E92D8DE71";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1F8008E2-497C-466B-5D53-D49D1586B774";
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
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
	rename -uid "3E12F2DC-41AF-B7A5-408C-939B47AC531D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveUU -n "spine_C0_root_st_profile";
	rename -uid "1DD9B484-4298-2E96-D1CB-C89D03F39F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "AC7B88AA-417E-11FE-9B0C-619B9BEA69B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion36";
	rename -uid "D47121B5-49E7-909C-CB61-49AF1833F7F7";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns206";
	rename -uid "DF687399-4A43-C5E9-93D7-F0A4A6AFAB34";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak206";
	rename -uid "C4DAA5ED-4802-6484-1AB2-5884C22DED09";
createNode objectSet -n "mgear_curveCns206Set";
	rename -uid "A5C7C433-4564-2C16-06BD-0CA0DFEFCA6E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns206GroupId";
	rename -uid "7E1EE32D-492E-5C0C-0BE7-4881019DDFF4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns206GroupParts";
	rename -uid "B667C337-49E5-8E22-B20C-2CBAFE477810";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet206";
	rename -uid "986D90E4-4861-1A2E-47E1-A487924F0605";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId412";
	rename -uid "ABE7563F-4B0B-054B-15BF-D58CEDB1E002";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts412";
	rename -uid "72FB5649-443E-043E-B2BD-D9A3A9C26423";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "5652BBB6-4172-1448-DA02-C9AD3D16BA5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "5CDD97ED-4430-7991-70C1-7FB531B2FA77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion37";
	rename -uid "9DAE1178-44A4-AA57-716C-3D8C60F84D34";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns207";
	rename -uid "7777934B-4A84-0820-04BF-898F88C6A805";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak207";
	rename -uid "7B016732-4C29-CAD0-A228-7582BE7D992C";
createNode objectSet -n "mgear_curveCns207Set";
	rename -uid "5BC0A4B1-48DA-1F4A-2758-989BA4960635";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns207GroupId";
	rename -uid "0F063011-44E4-92C9-7734-8EA5082ADE1E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns207GroupParts";
	rename -uid "B6E68EA9-4324-A2C2-D492-8D950E20EF26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet207";
	rename -uid "9DBAA14F-4056-CE47-3089-94A0A617E8A6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId414";
	rename -uid "AF5A81F1-41EC-2118-4DF1-53AD69DFE7BF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts414";
	rename -uid "EFB2A405-41DA-6F4D-6A7B-6796D3599FB4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns208";
	rename -uid "BF09C3FE-4027-AC51-3D2B-98B8FDCED05C";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak208";
	rename -uid "EC0E9163-4671-2BC1-76FD-2DA161E492D7";
createNode objectSet -n "mgear_curveCns208Set";
	rename -uid "BA3A265E-4CD9-8769-C290-AFBEEC1FBA38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns208GroupId";
	rename -uid "8BE919D0-4A73-31DD-8CA4-A5925B52D181";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns208GroupParts";
	rename -uid "F3D3114C-4702-5B30-7227-2C8A954E00E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet208";
	rename -uid "DEB7AF5A-4639-2CFE-5412-34B49F66E11D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId416";
	rename -uid "2030954F-4F73-0DA6-03ED-E1AD8C819AFF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts416";
	rename -uid "41A0C269-4A24-FCA8-EBA6-31821759396F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns209";
	rename -uid "F7520216-4CE4-3D1D-62FA-518A417EC22A";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak209";
	rename -uid "B7C7C217-41CE-B5C3-3C65-469D18B15520";
createNode objectSet -n "mgear_curveCns209Set";
	rename -uid "D416090C-44D8-A38F-98FF-8380C0298222";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns209GroupId";
	rename -uid "E5E54120-4EB0-834E-395B-FC8B065FB865";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns209GroupParts";
	rename -uid "E1CFC9E5-4114-92C0-B72A-38A0CF63C30E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet209";
	rename -uid "A365AD1B-4613-4FE2-7399-EFB0300B7665";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId418";
	rename -uid "ABE16565-4C1C-83B0-8C7F-DB94751D9316";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts418";
	rename -uid "A4481020-4103-540B-6F9C-75BA0F7E6F9F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns210";
	rename -uid "6CAA355B-4BFF-5FF7-FF50-C5A1B3AF09F0";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak210";
	rename -uid "FD2D572B-4208-EEC1-6E1D-4D9C60D53947";
createNode objectSet -n "mgear_curveCns210Set";
	rename -uid "4784870A-4D29-EDA3-FFC2-4FBEDCA406BF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns210GroupId";
	rename -uid "D57F02B6-4D30-B734-B5C7-4D880C85F9BA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns210GroupParts";
	rename -uid "A8C0A827-4C55-AE83-E2F4-279966567E8C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet210";
	rename -uid "FA36C8BD-455E-ECC6-F752-9F836DD10E7A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId420";
	rename -uid "0066B498-4F5E-11F2-A84F-0785D732EDAA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts420";
	rename -uid "A4D3C3B1-4229-0DD0-694B-B6BCCBED68BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns211";
	rename -uid "FEDCA304-4B46-A3BD-8286-4D81493D4EEB";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak211";
	rename -uid "CB8AA241-4DB1-7F32-1490-F4BF2CCA095D";
createNode objectSet -n "mgear_curveCns211Set";
	rename -uid "4B935C8A-4F85-73A5-6437-1F95B2312C10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns211GroupId";
	rename -uid "49D1D007-42E1-3B0D-2829-F4B73FB8C021";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns211GroupParts";
	rename -uid "B8FECEA4-40D6-AD4F-BA0D-5AA1CB514834";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet211";
	rename -uid "5A42DB24-4507-265C-720B-12A1BF6F9F19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId422";
	rename -uid "E4DD8F83-4BA7-426F-2800-99A0DA7B238F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts422";
	rename -uid "9A765481-4245-0277-7ACB-50AA6F6EEFF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns212";
	rename -uid "B97E01BB-4463-4EB7-2025-A1AE329285EE";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak212";
	rename -uid "AE005C36-4A1A-33D7-B3C1-129F8C9F5B31";
createNode objectSet -n "mgear_curveCns212Set";
	rename -uid "501CD608-44B9-C275-5B89-47B8F3D98266";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns212GroupId";
	rename -uid "0AEBDE00-47CE-C71D-3B11-E0A697D8FE3E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns212GroupParts";
	rename -uid "1DA53C65-4EAC-2990-24E7-F5AF5C5A4A7C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet212";
	rename -uid "C1AA33CF-4DC5-F481-D8E5-C7A341A2603B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId424";
	rename -uid "7DA89162-46E1-7545-2870-46B109B54CC2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts424";
	rename -uid "1FD01760-4218-29C1-2397-CF9F8AF51B71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns213";
	rename -uid "8277A4BF-4B32-0DF2-E58C-4DB79452F8F6";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak213";
	rename -uid "AA9A50F5-42F2-FAB5-B376-E2A7BBC5A6D6";
createNode objectSet -n "mgear_curveCns213Set";
	rename -uid "DDA14DF4-40A7-558F-DC20-E591A8228E8C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns213GroupId";
	rename -uid "F5E835D2-478D-D34A-3996-DBAFF1BDD97A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns213GroupParts";
	rename -uid "F0104CAF-463F-0A79-5057-5AA8F710B484";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet213";
	rename -uid "86B037B5-4EA4-F8B3-7313-93929394912E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId426";
	rename -uid "3D649232-4D18-1A60-5856-1C8A1962116B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts426";
	rename -uid "017168E4-413A-BB74-3C55-4787FEEBA2F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns214";
	rename -uid "591DCE24-4791-133E-163E-209066037CA1";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak214";
	rename -uid "A0422415-48D3-540A-1B43-A89711A9CC10";
createNode objectSet -n "mgear_curveCns214Set";
	rename -uid "E070F94A-4DE0-E193-8F85-1B92A7486835";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns214GroupId";
	rename -uid "4BFA89AE-4C4B-E322-3080-BAB0C4682C8A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns214GroupParts";
	rename -uid "0757D82F-43AB-87CF-046E-6E8431DBD59A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet214";
	rename -uid "D400DFEE-4E73-F571-2919-F98E63DF50E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId428";
	rename -uid "68639C9B-4185-B754-3685-ACAE28AFA90F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts428";
	rename -uid "7CA011B3-4ED5-3D5D-DCD9-4C87CB52A810";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion38";
	rename -uid "931BDB5F-4387-66A2-EA39-98B935B8FECB";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns215";
	rename -uid "278ECAEF-4707-BB98-FF40-4BBFDFEDC3E8";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak215";
	rename -uid "9B36A69E-4106-BABF-D18B-0B9AB8D08708";
createNode objectSet -n "mgear_curveCns215Set";
	rename -uid "402F74BA-46C6-D94C-5125-F597DA379DC7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns215GroupId";
	rename -uid "0BA6F3EC-4627-D60A-4453-039DE947065D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns215GroupParts";
	rename -uid "5C928C3C-4EB2-7806-6D68-70B03B4E5F75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet215";
	rename -uid "BE7A4BF4-4269-11BB-1CB2-FC8D6D075F91";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId430";
	rename -uid "F39F6637-4464-F9AF-AE09-6BB35AD2DC74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts430";
	rename -uid "9A72AC72-4B52-793F-2C91-098EA8D4CEB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile";
	rename -uid "1099BCAF-42C5-C8FE-AFE8-E4BD627FAEC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile";
	rename -uid "C47C24AE-4D9F-7E37-47AB-718A44235DD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns216";
	rename -uid "3B3594A7-44C9-3DAF-34EF-F7B720DF588A";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak216";
	rename -uid "912FD42E-4607-454A-3EB9-BAB9BE3BA29A";
createNode objectSet -n "mgear_curveCns216Set";
	rename -uid "BB2B9787-4F6F-A006-F41C-2494BEBB7409";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns216GroupId";
	rename -uid "9EA430FB-4B37-B63C-67F6-92B4198C4AD1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns216GroupParts";
	rename -uid "C7686F0A-40F9-F9A2-156E-2399A9D77729";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet216";
	rename -uid "B3FB9A6D-4C77-7988-92C1-959B07E6BDED";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId432";
	rename -uid "74FB0872-40D7-D18A-9D3B-8AA21A4986E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts432";
	rename -uid "11CE9C34-43CB-6111-1BAD-4FBE240F1FC2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns217";
	rename -uid "E8A38356-427F-BE95-CD4C-0BBDF92777DE";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak217";
	rename -uid "C0503C21-4E3C-3FA0-821D-8385F58A554D";
createNode objectSet -n "mgear_curveCns217Set";
	rename -uid "74C76916-461B-9D30-54AA-B894FF362770";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns217GroupId";
	rename -uid "978E8828-4BA9-EE40-1BFC-1ABB72F4120A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns217GroupParts";
	rename -uid "0304B009-4F1A-5935-0FBD-E387E72B5A5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet217";
	rename -uid "87C45A66-4759-7575-02A3-08ABCD6CCE5C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId434";
	rename -uid "A3F3CFC9-45B3-BBE4-CE47-D5AB4BE62F8D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts434";
	rename -uid "4197A01C-463A-C006-3A3F-8AA2D1530DEC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns218";
	rename -uid "9459C757-45CC-7B26-C602-CBABD881ACD0";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak218";
	rename -uid "F924CB75-459F-C12C-4FB6-C8BBE2C3DBBB";
createNode objectSet -n "mgear_curveCns218Set";
	rename -uid "57E0F9DF-4ABC-9381-67E1-D7BDB3AC796F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns218GroupId";
	rename -uid "75817AC4-48CC-C26F-CC6C-6DB2757F63A7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns218GroupParts";
	rename -uid "263E2F66-4A09-E872-C7AF-AC850F027021";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet218";
	rename -uid "DA8EC788-40D8-9772-AE40-4990A159797C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId436";
	rename -uid "1076CB56-4B79-176C-4920-8EB853AE143E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts436";
	rename -uid "2C7FD225-4FE1-18C8-18F8-699727F4E969";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion39";
	rename -uid "8BFA3065-4A80-3CFF-2243-ED8DA4AD1968";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns219";
	rename -uid "D8695A06-4026-6ED8-0B31-64957D6688B6";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak219";
	rename -uid "AC4B2F1B-48C8-C03A-9384-819737091167";
createNode objectSet -n "mgear_curveCns219Set";
	rename -uid "E1E23017-45DF-3D31-FC92-F989376D0D10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns219GroupId";
	rename -uid "FCF51403-4E44-0896-D353-91A16B6AD693";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns219GroupParts";
	rename -uid "254CAAAF-471C-4E66-ADB5-E293518A5C68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet219";
	rename -uid "C1FE0626-43F4-30A9-4CC8-69915DA8B2B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId438";
	rename -uid "EF64B96B-4C31-0998-AB72-56A890C5F80D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts438";
	rename -uid "0A70DBE2-48EE-A80F-0DA6-4AB3F6496521";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile";
	rename -uid "5C8B7057-43B5-3FE0-1E92-BF927BD39450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile";
	rename -uid "7831245E-47EA-948B-B717-4489BA508D64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns220";
	rename -uid "CA089739-4FD7-FE8E-2AD9-638CC46D8855";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak220";
	rename -uid "E574B706-42B2-C2FB-85A1-C897E795046A";
createNode objectSet -n "mgear_curveCns220Set";
	rename -uid "8D3289F2-4A22-6EA2-6844-04808D9B5CB8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns220GroupId";
	rename -uid "2127628C-4254-D342-BEBF-EB8F2166E576";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns220GroupParts";
	rename -uid "8090616D-4DBC-A93B-524B-4EB01F142987";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet220";
	rename -uid "F95D90EB-41CD-3DAF-2E3E-24B859B3E538";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId440";
	rename -uid "BC4F6DFE-4995-EEE9-88E3-35BF7C40F054";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts440";
	rename -uid "AF7C0E4C-4CD0-C5BF-6295-59BED75C8A6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns221";
	rename -uid "52477FB8-4E7E-904E-FC80-3D8C6480CAD5";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak221";
	rename -uid "5AFEACB9-45E8-F3D9-8216-888EAD838E3D";
createNode objectSet -n "mgear_curveCns221Set";
	rename -uid "2AD75346-4F20-8A82-AF4F-608E63CBBD54";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns221GroupId";
	rename -uid "0CAE28CA-4F1F-5EB8-37CD-9AA78F75609B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns221GroupParts";
	rename -uid "D5B15BCF-4D66-1715-462B-D5ACCECC2C79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet221";
	rename -uid "E0794FC9-4C48-8F94-234B-ADA9B5B61441";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId442";
	rename -uid "0A75421A-4D70-3B97-3666-BEA70DA9E445";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts442";
	rename -uid "D7B65A05-4BA2-4E1D-EA04-99866B99ECA4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns222";
	rename -uid "21677C5F-4439-4C8E-6C67-8696759CB85F";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak222";
	rename -uid "39E6606B-4E18-892F-79FD-A6B5EA15F075";
createNode objectSet -n "mgear_curveCns222Set";
	rename -uid "0684FD83-49BB-5327-DE8F-C5B019D38308";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns222GroupId";
	rename -uid "8113CE0B-4493-C1AA-3E56-F8993D318C0E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns222GroupParts";
	rename -uid "44D0F75C-42E7-6616-61FA-EDAB7E750B75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet222";
	rename -uid "ADA5E831-4F4D-6C3B-D662-9182799361B0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId444";
	rename -uid "6841ED20-4250-BA2A-C5A6-B7922CAF930D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts444";
	rename -uid "BF4641E6-4BC5-636A-0B68-1285EC6F6B0C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile";
	rename -uid "1FE74CD9-4650-8384-0FD1-59B484EED60C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile";
	rename -uid "33CC7EE6-4058-388A-6126-CB80191273FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns223";
	rename -uid "0F57E00E-4927-647A-9126-EB8E260026F4";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak223";
	rename -uid "D1B5CD0B-4F5D-6BDE-2F68-E9B8CC14A975";
createNode objectSet -n "mgear_curveCns223Set";
	rename -uid "FF83EA0B-4E6E-D110-5307-22804F572A63";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns223GroupId";
	rename -uid "60431F98-46AF-4F7B-B42A-7CA34616CE20";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns223GroupParts";
	rename -uid "9A8E4D1B-42DA-ED5A-690B-1A82330B6190";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet223";
	rename -uid "2850E1AA-4540-1FF6-4BAC-C38AFF48E83E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId446";
	rename -uid "79851DCB-4DD9-82D6-279A-C8AF2A8BA4A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts446";
	rename -uid "6AAC4622-4823-1510-B507-B18D1F8F2E6E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns224";
	rename -uid "512175BA-42D9-8169-7671-0A91B547BC9A";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak224";
	rename -uid "9FE8E72E-4C5A-7F64-65EC-4FA98DECCD72";
createNode objectSet -n "mgear_curveCns224Set";
	rename -uid "5A2EE83D-43A6-F073-E59B-05B7030A19FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns224GroupId";
	rename -uid "37E45EDE-4F76-409B-9103-EFAEE87C57C0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns224GroupParts";
	rename -uid "6ED7DB9D-44F9-7541-0FBE-41A34707F05C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet224";
	rename -uid "7F23724D-4846-4C4C-1629-EBBDB84A748E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId448";
	rename -uid "A1BFF6F2-4148-C8AB-D498-00884621CBD8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts448";
	rename -uid "82F50BFA-43F9-824A-83E1-058646C496E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns225";
	rename -uid "93ECBE3C-449E-6EAF-44A3-C6AD845600E2";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak225";
	rename -uid "06471DD9-4BA7-84FF-93F9-5F986757EF22";
createNode objectSet -n "mgear_curveCns225Set";
	rename -uid "6C2E943C-4043-AA20-484D-43ACB691785F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns225GroupId";
	rename -uid "6414FF06-4265-A23E-C675-C492461ADB59";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns225GroupParts";
	rename -uid "29037699-4EC8-793F-58BF-EBA0FD33E521";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet225";
	rename -uid "A03D662C-4AD7-1677-40C1-2B87C71389A4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId450";
	rename -uid "A4E71AB9-4AFF-0F46-E49B-1C991F69D655";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts450";
	rename -uid "932729D2-4FD1-37B6-9AAF-D5962C669C9E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile";
	rename -uid "AF3A5E96-4EAC-7479-7A4B-F29D0C9F4694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile";
	rename -uid "85545168-4F1A-93CA-8EA7-8BAEBF98F31C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns226";
	rename -uid "E16C3C29-46D6-BC4B-1189-2D8256931101";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak226";
	rename -uid "6FB4EA1C-4334-7634-6E1C-61902D38584E";
createNode objectSet -n "mgear_curveCns226Set";
	rename -uid "96EA4F91-479D-EABE-255F-06BD5FB3AD65";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns226GroupId";
	rename -uid "BEB9A75D-429C-2AEF-6A62-92A25D80D9E9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns226GroupParts";
	rename -uid "1AB47ABF-4FF0-410B-7ED6-42B4FEDB83E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet226";
	rename -uid "E77D7F06-496E-D28C-7161-8F9483EBF7FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId452";
	rename -uid "5D86A719-47E9-A8DF-CA12-FC8E3EEF0EA6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts452";
	rename -uid "2A96EBCD-4C33-4D37-53A6-A3A85289CEE4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns227";
	rename -uid "3564B134-46AD-14DB-718E-5E8D9138BFC9";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak227";
	rename -uid "9B4FA324-4584-9431-C2A4-319263EBA402";
createNode objectSet -n "mgear_curveCns227Set";
	rename -uid "2B00B2CC-432B-A5F9-445D-B58E8FE7F159";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns227GroupId";
	rename -uid "CCF3FC0C-402B-FAA5-9109-02BE545C7166";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns227GroupParts";
	rename -uid "EC94226F-4677-09C1-95C8-67A0239EBCF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet227";
	rename -uid "F73CBD0D-40E0-AFC4-7D74-6B86DD3829C3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId454";
	rename -uid "0CABF43A-44B2-57AA-22FD-B4955F504FC3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts454";
	rename -uid "5A37B76C-4C32-0804-378E-6C9D89E3DC67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns228";
	rename -uid "20131A24-4DEE-7649-0EA6-EBA36903079B";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak228";
	rename -uid "D34B657C-4C73-4E34-9618-06AF8FA4801C";
createNode objectSet -n "mgear_curveCns228Set";
	rename -uid "E7F8BB94-46F9-030E-B6D9-A1A4C7CC45A6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns228GroupId";
	rename -uid "F179F4E2-4769-D12C-002A-31B84B85D3B8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns228GroupParts";
	rename -uid "BE0194CF-4598-7521-8B1F-038D1C23BAB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet228";
	rename -uid "444B5864-40E2-7FAD-BC3D-29B88F06C19E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId456";
	rename -uid "510FBB7F-499F-B64A-554C-D6A5B2D2BBF1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts456";
	rename -uid "6FC821CF-4909-2905-D95D-5A8B19B62771";
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
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns210.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak210.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns210GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns210Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId420.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet210.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns211.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak211.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns211GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns211Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId422.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet211.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns209.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak209.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns209GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns209Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId418.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet209.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns212.og[0]" "mouth_C0_crv9Shape.cr";
connectAttr "tweak212.pl[0].cp[0]" "mouth_C0_crv9Shape.twl";
connectAttr "mgear_curveCns212GroupId.id" "mouth_C0_crv9Shape.iog.og[0].gid";
connectAttr "mgear_curveCns212Set.mwc" "mouth_C0_crv9Shape.iog.og[0].gco";
connectAttr "groupId424.id" "mouth_C0_crv9Shape.iog.og[1].gid";
connectAttr "tweakSet212.mwc" "mouth_C0_crv9Shape.iog.og[1].gco";
connectAttr "mgear_curveCns213.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak213.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns213GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns213Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId426.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet213.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns214.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak214.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns214GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns214Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId428.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet214.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns208.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak208.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns208GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns208Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId416.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet208.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint9.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint9.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint9.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint9.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint9.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint9.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint9.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint9.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint9.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint9.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint9.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint9.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint9.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint9.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint9.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint9.w0" "neck_C0_blade_aimConstraint9.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint9.wum";
connectAttr "unitConversion37.o" "neck_C0_blade_aimConstraint9.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint9.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint9.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint9.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint9.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint9.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint9.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint9.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint9.w0" "neck_C0_blade_pointConstraint9.tg[0].tw"
		;
connectAttr "mgear_curveCns207.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak207.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns207GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns207Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId414.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet207.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "legFront_L0_root_st_profile.o" "legFront_L0_root.st_profile";
connectAttr "legFront_L0_root_sq_profile.o" "legFront_L0_root.sq_profile";
connectAttr "mgear_curveCns217.og[0]" "footFront_L0_crvShape.cr";
connectAttr "tweak217.pl[0].cp[0]" "footFront_L0_crvShape.twl";
connectAttr "mgear_curveCns217GroupId.id" "footFront_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns217Set.mwc" "footFront_L0_crvShape.iog.og[0].gco";
connectAttr "groupId434.id" "footFront_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet217.mwc" "footFront_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns218.og[0]" "footFront_L0_Shape1.cr";
connectAttr "tweak218.pl[0].cp[0]" "footFront_L0_Shape1.twl";
connectAttr "mgear_curveCns218GroupId.id" "footFront_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns218Set.mwc" "footFront_L0_Shape1.iog.og[0].gco";
connectAttr "groupId436.id" "footFront_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet218.mwc" "footFront_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns216.og[0]" "legFront_L0_crvShape1.cr";
connectAttr "tweak216.pl[0].cp[0]" "legFront_L0_crvShape1.twl";
connectAttr "mgear_curveCns216GroupId.id" "legFront_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns216Set.mwc" "legFront_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId432.id" "legFront_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet216.mwc" "legFront_L0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint9.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint9.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint9.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint9.crx" "shoulder_L0_blade.rx" -l on;
connectAttr "shoulder_L0_blade_aimConstraint9.cry" "shoulder_L0_blade.ry" -l on;
connectAttr "shoulder_L0_blade_aimConstraint9.crz" "shoulder_L0_blade.rz" -l on;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint9.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint9.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint9.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint9.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint9.cro";
connectAttr "shoulder_L0_0_loc.t" "shoulder_L0_blade_aimConstraint9.tg[0].tt";
connectAttr "shoulder_L0_0_loc.rp" "shoulder_L0_blade_aimConstraint9.tg[0].trp";
connectAttr "shoulder_L0_0_loc.rpt" "shoulder_L0_blade_aimConstraint9.tg[0].trt"
		;
connectAttr "shoulder_L0_0_loc.pm" "shoulder_L0_blade_aimConstraint9.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint9.w0" "shoulder_L0_blade_aimConstraint9.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint9.wum";
connectAttr "unitConversion38.o" "shoulder_L0_blade_aimConstraint9.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint9.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint9.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint9.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint9.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint9.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint9.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint9.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint9.w0" "shoulder_L0_blade_pointConstraint9.tg[0].tw"
		;
connectAttr "mgear_curveCns215.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak215.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns215GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns215Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId430.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet215.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "legFront_R0_root_st_profile.o" "legFront_R0_root.st_profile";
connectAttr "legFront_R0_root_sq_profile.o" "legFront_R0_root.sq_profile";
connectAttr "mgear_curveCns221.og[0]" "footFront_R0_crvShape.cr";
connectAttr "tweak221.pl[0].cp[0]" "footFront_R0_crvShape.twl";
connectAttr "mgear_curveCns221GroupId.id" "footFront_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns221Set.mwc" "footFront_R0_crvShape.iog.og[0].gco";
connectAttr "groupId442.id" "footFront_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet221.mwc" "footFront_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns222.og[0]" "footFront_R0_Shape1.cr";
connectAttr "tweak222.pl[0].cp[0]" "footFront_R0_Shape1.twl";
connectAttr "mgear_curveCns222GroupId.id" "footFront_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns222Set.mwc" "footFront_R0_Shape1.iog.og[0].gco";
connectAttr "groupId444.id" "footFront_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet222.mwc" "footFront_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns220.og[0]" "legFront_R0_crvShape1.cr";
connectAttr "tweak220.pl[0].cp[0]" "legFront_R0_crvShape1.twl";
connectAttr "mgear_curveCns220GroupId.id" "legFront_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns220Set.mwc" "legFront_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId440.id" "legFront_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet220.mwc" "legFront_R0_crvShape1.iog.og[1].gco";
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
connectAttr "shoulder_R0_0_loc.t" "shoulder_R0_blade_aimConstraint3.tg[0].tt";
connectAttr "shoulder_R0_0_loc.rp" "shoulder_R0_blade_aimConstraint3.tg[0].trp";
connectAttr "shoulder_R0_0_loc.rpt" "shoulder_R0_blade_aimConstraint3.tg[0].trt"
		;
connectAttr "shoulder_R0_0_loc.pm" "shoulder_R0_blade_aimConstraint3.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint3.w0" "shoulder_R0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint3.wum";
connectAttr "unitConversion39.o" "shoulder_R0_blade_aimConstraint3.ox";
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
connectAttr "mgear_curveCns219.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak219.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns219GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns219Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId438.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet219.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint9.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint9.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint9.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint9.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint9.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint9.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint9.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint9.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint9.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint9.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint9.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint9.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint9.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint9.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint9.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint9.w0" "spine_C0_blade_aimConstraint9.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint9.wum";
connectAttr "unitConversion36.o" "spine_C0_blade_aimConstraint9.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint9.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint9.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint9.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint9.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint9.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint9.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint9.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint9.w0" "spine_C0_blade_pointConstraint9.tg[0].tw"
		;
connectAttr "mgear_curveCns206.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak206.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns206GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns206Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId412.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet206.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "legBack_L0_root_st_profile.o" "legBack_L0_root.st_profile";
connectAttr "legBack_L0_root_sq_profile.o" "legBack_L0_root.sq_profile";
connectAttr "mgear_curveCns224.og[0]" "footBack_L0_crvShape.cr";
connectAttr "tweak224.pl[0].cp[0]" "footBack_L0_crvShape.twl";
connectAttr "mgear_curveCns224GroupId.id" "footBack_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns224Set.mwc" "footBack_L0_crvShape.iog.og[0].gco";
connectAttr "groupId448.id" "footBack_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet224.mwc" "footBack_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns225.og[0]" "footBack_L0_Shape1.cr";
connectAttr "tweak225.pl[0].cp[0]" "footBack_L0_Shape1.twl";
connectAttr "mgear_curveCns225GroupId.id" "footBack_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns225Set.mwc" "footBack_L0_Shape1.iog.og[0].gco";
connectAttr "groupId450.id" "footBack_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet225.mwc" "footBack_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns223.og[0]" "legBack_L0_crvShape1.cr";
connectAttr "tweak223.pl[0].cp[0]" "legBack_L0_crvShape1.twl";
connectAttr "mgear_curveCns223GroupId.id" "legBack_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns223Set.mwc" "legBack_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId446.id" "legBack_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet223.mwc" "legBack_L0_crvShape1.iog.og[1].gco";
connectAttr "legBack_R0_root_st_profile.o" "legBack_R0_root.st_profile";
connectAttr "legBack_R0_root_sq_profile.o" "legBack_R0_root.sq_profile";
connectAttr "mgear_curveCns227.og[0]" "footBack_R0_crvShape.cr";
connectAttr "tweak227.pl[0].cp[0]" "footBack_R0_crvShape.twl";
connectAttr "mgear_curveCns227GroupId.id" "footBack_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns227Set.mwc" "footBack_R0_crvShape.iog.og[0].gco";
connectAttr "groupId454.id" "footBack_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet227.mwc" "footBack_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns228.og[0]" "footBack_R0_Shape1.cr";
connectAttr "tweak228.pl[0].cp[0]" "footBack_R0_Shape1.twl";
connectAttr "mgear_curveCns228GroupId.id" "footBack_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns228Set.mwc" "footBack_R0_Shape1.iog.og[0].gco";
connectAttr "groupId456.id" "footBack_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet228.mwc" "footBack_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns226.og[0]" "legBack_R0_crvShape1.cr";
connectAttr "tweak226.pl[0].cp[0]" "legBack_R0_crvShape1.twl";
connectAttr "mgear_curveCns226GroupId.id" "legBack_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns226Set.mwc" "legBack_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId452.id" "legBack_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet226.mwc" "legBack_R0_crvShape1.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion36.i";
connectAttr "mgear_curveCns206GroupParts.og" "mgear_curveCns206.ip[0].ig";
connectAttr "mgear_curveCns206GroupId.id" "mgear_curveCns206.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns206.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns206.inputs[1]";
connectAttr "groupParts412.og" "tweak206.ip[0].ig";
connectAttr "groupId412.id" "tweak206.ip[0].gi";
connectAttr "mgear_curveCns206GroupId.msg" "mgear_curveCns206Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns206Set.dsm" -na;
connectAttr "mgear_curveCns206.msg" "mgear_curveCns206Set.ub[0]";
connectAttr "tweak206.og[0]" "mgear_curveCns206GroupParts.ig";
connectAttr "mgear_curveCns206GroupId.id" "mgear_curveCns206GroupParts.gi";
connectAttr "groupId412.msg" "tweakSet206.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet206.dsm" -na;
connectAttr "tweak206.msg" "tweakSet206.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts412.ig";
connectAttr "groupId412.id" "groupParts412.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion37.i";
connectAttr "mgear_curveCns207GroupParts.og" "mgear_curveCns207.ip[0].ig";
connectAttr "mgear_curveCns207GroupId.id" "mgear_curveCns207.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns207.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns207.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns207.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns207.inputs[3]";
connectAttr "groupParts414.og" "tweak207.ip[0].ig";
connectAttr "groupId414.id" "tweak207.ip[0].gi";
connectAttr "mgear_curveCns207GroupId.msg" "mgear_curveCns207Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns207Set.dsm" -na;
connectAttr "mgear_curveCns207.msg" "mgear_curveCns207Set.ub[0]";
connectAttr "tweak207.og[0]" "mgear_curveCns207GroupParts.ig";
connectAttr "mgear_curveCns207GroupId.id" "mgear_curveCns207GroupParts.gi";
connectAttr "groupId414.msg" "tweakSet207.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet207.dsm" -na;
connectAttr "tweak207.msg" "tweakSet207.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts414.ig";
connectAttr "groupId414.id" "groupParts414.gi";
connectAttr "mgear_curveCns208GroupParts.og" "mgear_curveCns208.ip[0].ig";
connectAttr "mgear_curveCns208GroupId.id" "mgear_curveCns208.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns208.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns208.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns208.inputs[2]";
connectAttr "groupParts416.og" "tweak208.ip[0].ig";
connectAttr "groupId416.id" "tweak208.ip[0].gi";
connectAttr "mgear_curveCns208GroupId.msg" "mgear_curveCns208Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns208Set.dsm" -na;
connectAttr "mgear_curveCns208.msg" "mgear_curveCns208Set.ub[0]";
connectAttr "tweak208.og[0]" "mgear_curveCns208GroupParts.ig";
connectAttr "mgear_curveCns208GroupId.id" "mgear_curveCns208GroupParts.gi";
connectAttr "groupId416.msg" "tweakSet208.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet208.dsm" -na;
connectAttr "tweak208.msg" "tweakSet208.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts416.ig";
connectAttr "groupId416.id" "groupParts416.gi";
connectAttr "mgear_curveCns209GroupParts.og" "mgear_curveCns209.ip[0].ig";
connectAttr "mgear_curveCns209GroupId.id" "mgear_curveCns209.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns209.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns209.inputs[1]";
connectAttr "groupParts418.og" "tweak209.ip[0].ig";
connectAttr "groupId418.id" "tweak209.ip[0].gi";
connectAttr "mgear_curveCns209GroupId.msg" "mgear_curveCns209Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns209Set.dsm"
		 -na;
connectAttr "mgear_curveCns209.msg" "mgear_curveCns209Set.ub[0]";
connectAttr "tweak209.og[0]" "mgear_curveCns209GroupParts.ig";
connectAttr "mgear_curveCns209GroupId.id" "mgear_curveCns209GroupParts.gi";
connectAttr "groupId418.msg" "tweakSet209.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet209.dsm"
		 -na;
connectAttr "tweak209.msg" "tweakSet209.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts418.ig"
		;
connectAttr "groupId418.id" "groupParts418.gi";
connectAttr "mgear_curveCns210GroupParts.og" "mgear_curveCns210.ip[0].ig";
connectAttr "mgear_curveCns210GroupId.id" "mgear_curveCns210.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns210.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns210.inputs[1]";
connectAttr "groupParts420.og" "tweak210.ip[0].ig";
connectAttr "groupId420.id" "tweak210.ip[0].gi";
connectAttr "mgear_curveCns210GroupId.msg" "mgear_curveCns210Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns210Set.dsm"
		 -na;
connectAttr "mgear_curveCns210.msg" "mgear_curveCns210Set.ub[0]";
connectAttr "tweak210.og[0]" "mgear_curveCns210GroupParts.ig";
connectAttr "mgear_curveCns210GroupId.id" "mgear_curveCns210GroupParts.gi";
connectAttr "groupId420.msg" "tweakSet210.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet210.dsm"
		 -na;
connectAttr "tweak210.msg" "tweakSet210.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts420.ig"
		;
connectAttr "groupId420.id" "groupParts420.gi";
connectAttr "mgear_curveCns211GroupParts.og" "mgear_curveCns211.ip[0].ig";
connectAttr "mgear_curveCns211GroupId.id" "mgear_curveCns211.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns211.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns211.inputs[1]";
connectAttr "groupParts422.og" "tweak211.ip[0].ig";
connectAttr "groupId422.id" "tweak211.ip[0].gi";
connectAttr "mgear_curveCns211GroupId.msg" "mgear_curveCns211Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns211Set.dsm"
		 -na;
connectAttr "mgear_curveCns211.msg" "mgear_curveCns211Set.ub[0]";
connectAttr "tweak211.og[0]" "mgear_curveCns211GroupParts.ig";
connectAttr "mgear_curveCns211GroupId.id" "mgear_curveCns211GroupParts.gi";
connectAttr "groupId422.msg" "tweakSet211.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet211.dsm"
		 -na;
connectAttr "tweak211.msg" "tweakSet211.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts422.ig"
		;
connectAttr "groupId422.id" "groupParts422.gi";
connectAttr "mgear_curveCns212GroupParts.og" "mgear_curveCns212.ip[0].ig";
connectAttr "mgear_curveCns212GroupId.id" "mgear_curveCns212.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns212.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns212.inputs[1]";
connectAttr "groupParts424.og" "tweak212.ip[0].ig";
connectAttr "groupId424.id" "tweak212.ip[0].gi";
connectAttr "mgear_curveCns212GroupId.msg" "mgear_curveCns212Set.gn" -na;
connectAttr "mouth_C0_crv9Shape.iog.og[0]" "mgear_curveCns212Set.dsm" -na;
connectAttr "mgear_curveCns212.msg" "mgear_curveCns212Set.ub[0]";
connectAttr "tweak212.og[0]" "mgear_curveCns212GroupParts.ig";
connectAttr "mgear_curveCns212GroupId.id" "mgear_curveCns212GroupParts.gi";
connectAttr "groupId424.msg" "tweakSet212.gn" -na;
connectAttr "mouth_C0_crv9Shape.iog.og[1]" "tweakSet212.dsm" -na;
connectAttr "tweak212.msg" "tweakSet212.ub[0]";
connectAttr "mouth_C0_crv9ShapeOrig.ws" "groupParts424.ig";
connectAttr "groupId424.id" "groupParts424.gi";
connectAttr "mgear_curveCns213GroupParts.og" "mgear_curveCns213.ip[0].ig";
connectAttr "mgear_curveCns213GroupId.id" "mgear_curveCns213.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns213.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns213.inputs[1]";
connectAttr "groupParts426.og" "tweak213.ip[0].ig";
connectAttr "groupId426.id" "tweak213.ip[0].gi";
connectAttr "mgear_curveCns213GroupId.msg" "mgear_curveCns213Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns213Set.dsm" -na;
connectAttr "mgear_curveCns213.msg" "mgear_curveCns213Set.ub[0]";
connectAttr "tweak213.og[0]" "mgear_curveCns213GroupParts.ig";
connectAttr "mgear_curveCns213GroupId.id" "mgear_curveCns213GroupParts.gi";
connectAttr "groupId426.msg" "tweakSet213.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet213.dsm" -na;
connectAttr "tweak213.msg" "tweakSet213.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts426.ig";
connectAttr "groupId426.id" "groupParts426.gi";
connectAttr "mgear_curveCns214GroupParts.og" "mgear_curveCns214.ip[0].ig";
connectAttr "mgear_curveCns214GroupId.id" "mgear_curveCns214.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns214.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns214.inputs[1]";
connectAttr "groupParts428.og" "tweak214.ip[0].ig";
connectAttr "groupId428.id" "tweak214.ip[0].gi";
connectAttr "mgear_curveCns214GroupId.msg" "mgear_curveCns214Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns214Set.dsm" -na;
connectAttr "mgear_curveCns214.msg" "mgear_curveCns214Set.ub[0]";
connectAttr "tweak214.og[0]" "mgear_curveCns214GroupParts.ig";
connectAttr "mgear_curveCns214GroupId.id" "mgear_curveCns214GroupParts.gi";
connectAttr "groupId428.msg" "tweakSet214.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet214.dsm" -na;
connectAttr "tweak214.msg" "tweakSet214.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts428.ig";
connectAttr "groupId428.id" "groupParts428.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion38.i";
connectAttr "mgear_curveCns215GroupParts.og" "mgear_curveCns215.ip[0].ig";
connectAttr "mgear_curveCns215GroupId.id" "mgear_curveCns215.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns215.inputs[0]";
connectAttr "shoulder_L0_0_loc.wm" "mgear_curveCns215.inputs[1]";
connectAttr "groupParts430.og" "tweak215.ip[0].ig";
connectAttr "groupId430.id" "tweak215.ip[0].gi";
connectAttr "mgear_curveCns215GroupId.msg" "mgear_curveCns215Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns215Set.dsm" -na;
connectAttr "mgear_curveCns215.msg" "mgear_curveCns215Set.ub[0]";
connectAttr "tweak215.og[0]" "mgear_curveCns215GroupParts.ig";
connectAttr "mgear_curveCns215GroupId.id" "mgear_curveCns215GroupParts.gi";
connectAttr "groupId430.msg" "tweakSet215.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet215.dsm" -na;
connectAttr "tweak215.msg" "tweakSet215.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts430.ig";
connectAttr "groupId430.id" "groupParts430.gi";
connectAttr "mgear_curveCns216GroupParts.og" "mgear_curveCns216.ip[0].ig";
connectAttr "mgear_curveCns216GroupId.id" "mgear_curveCns216.ip[0].gi";
connectAttr "legFront_L0_root.wm" "mgear_curveCns216.inputs[0]";
connectAttr "legFront_L0_knee.wm" "mgear_curveCns216.inputs[1]";
connectAttr "legFront_L0_ankle.wm" "mgear_curveCns216.inputs[2]";
connectAttr "legFront_L0_foot.wm" "mgear_curveCns216.inputs[3]";
connectAttr "legFront_L0_eff.wm" "mgear_curveCns216.inputs[4]";
connectAttr "groupParts432.og" "tweak216.ip[0].ig";
connectAttr "groupId432.id" "tweak216.ip[0].gi";
connectAttr "mgear_curveCns216GroupId.msg" "mgear_curveCns216Set.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[0]" "mgear_curveCns216Set.dsm" -na;
connectAttr "mgear_curveCns216.msg" "mgear_curveCns216Set.ub[0]";
connectAttr "tweak216.og[0]" "mgear_curveCns216GroupParts.ig";
connectAttr "mgear_curveCns216GroupId.id" "mgear_curveCns216GroupParts.gi";
connectAttr "groupId432.msg" "tweakSet216.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[1]" "tweakSet216.dsm" -na;
connectAttr "tweak216.msg" "tweakSet216.ub[0]";
connectAttr "legFront_L0_crvShape1Orig.ws" "groupParts432.ig";
connectAttr "groupId432.id" "groupParts432.gi";
connectAttr "mgear_curveCns217GroupParts.og" "mgear_curveCns217.ip[0].ig";
connectAttr "mgear_curveCns217GroupId.id" "mgear_curveCns217.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns217.inputs[0]";
connectAttr "footFront_L0_0_loc.wm" "mgear_curveCns217.inputs[1]";
connectAttr "footFront_L0_1_loc.wm" "mgear_curveCns217.inputs[2]";
connectAttr "groupParts434.og" "tweak217.ip[0].ig";
connectAttr "groupId434.id" "tweak217.ip[0].gi";
connectAttr "mgear_curveCns217GroupId.msg" "mgear_curveCns217Set.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[0]" "mgear_curveCns217Set.dsm" -na;
connectAttr "mgear_curveCns217.msg" "mgear_curveCns217Set.ub[0]";
connectAttr "tweak217.og[0]" "mgear_curveCns217GroupParts.ig";
connectAttr "mgear_curveCns217GroupId.id" "mgear_curveCns217GroupParts.gi";
connectAttr "groupId434.msg" "tweakSet217.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[1]" "tweakSet217.dsm" -na;
connectAttr "tweak217.msg" "tweakSet217.ub[0]";
connectAttr "footFront_L0_crvShapeOrig.ws" "groupParts434.ig";
connectAttr "groupId434.id" "groupParts434.gi";
connectAttr "mgear_curveCns218GroupParts.og" "mgear_curveCns218.ip[0].ig";
connectAttr "mgear_curveCns218GroupId.id" "mgear_curveCns218.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns218.inputs[0]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns218.inputs[1]";
connectAttr "footFront_L0_outpivot.wm" "mgear_curveCns218.inputs[2]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns218.inputs[3]";
connectAttr "footFront_L0_inpivot.wm" "mgear_curveCns218.inputs[4]";
connectAttr "groupParts436.og" "tweak218.ip[0].ig";
connectAttr "groupId436.id" "tweak218.ip[0].gi";
connectAttr "mgear_curveCns218GroupId.msg" "mgear_curveCns218Set.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[0]" "mgear_curveCns218Set.dsm" -na;
connectAttr "mgear_curveCns218.msg" "mgear_curveCns218Set.ub[0]";
connectAttr "tweak218.og[0]" "mgear_curveCns218GroupParts.ig";
connectAttr "mgear_curveCns218GroupId.id" "mgear_curveCns218GroupParts.gi";
connectAttr "groupId436.msg" "tweakSet218.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[1]" "tweakSet218.dsm" -na;
connectAttr "tweak218.msg" "tweakSet218.ub[0]";
connectAttr "footFront_L0_Shape1Orig.ws" "groupParts436.ig";
connectAttr "groupId436.id" "groupParts436.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion39.i";
connectAttr "mgear_curveCns219GroupParts.og" "mgear_curveCns219.ip[0].ig";
connectAttr "mgear_curveCns219GroupId.id" "mgear_curveCns219.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns219.inputs[0]";
connectAttr "shoulder_R0_0_loc.wm" "mgear_curveCns219.inputs[1]";
connectAttr "groupParts438.og" "tweak219.ip[0].ig";
connectAttr "groupId438.id" "tweak219.ip[0].gi";
connectAttr "mgear_curveCns219GroupId.msg" "mgear_curveCns219Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns219Set.dsm" -na;
connectAttr "mgear_curveCns219.msg" "mgear_curveCns219Set.ub[0]";
connectAttr "tweak219.og[0]" "mgear_curveCns219GroupParts.ig";
connectAttr "mgear_curveCns219GroupId.id" "mgear_curveCns219GroupParts.gi";
connectAttr "groupId438.msg" "tweakSet219.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet219.dsm" -na;
connectAttr "tweak219.msg" "tweakSet219.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts438.ig";
connectAttr "groupId438.id" "groupParts438.gi";
connectAttr "mgear_curveCns220GroupParts.og" "mgear_curveCns220.ip[0].ig";
connectAttr "mgear_curveCns220GroupId.id" "mgear_curveCns220.ip[0].gi";
connectAttr "legFront_R0_root.wm" "mgear_curveCns220.inputs[0]";
connectAttr "legFront_R0_knee.wm" "mgear_curveCns220.inputs[1]";
connectAttr "legFront_R0_ankle.wm" "mgear_curveCns220.inputs[2]";
connectAttr "legFront_R0_foot.wm" "mgear_curveCns220.inputs[3]";
connectAttr "legFront_R0_eff.wm" "mgear_curveCns220.inputs[4]";
connectAttr "groupParts440.og" "tweak220.ip[0].ig";
connectAttr "groupId440.id" "tweak220.ip[0].gi";
connectAttr "mgear_curveCns220GroupId.msg" "mgear_curveCns220Set.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[0]" "mgear_curveCns220Set.dsm" -na;
connectAttr "mgear_curveCns220.msg" "mgear_curveCns220Set.ub[0]";
connectAttr "tweak220.og[0]" "mgear_curveCns220GroupParts.ig";
connectAttr "mgear_curveCns220GroupId.id" "mgear_curveCns220GroupParts.gi";
connectAttr "groupId440.msg" "tweakSet220.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[1]" "tweakSet220.dsm" -na;
connectAttr "tweak220.msg" "tweakSet220.ub[0]";
connectAttr "legFront_R0_crvShape1Orig.ws" "groupParts440.ig";
connectAttr "groupId440.id" "groupParts440.gi";
connectAttr "mgear_curveCns221GroupParts.og" "mgear_curveCns221.ip[0].ig";
connectAttr "mgear_curveCns221GroupId.id" "mgear_curveCns221.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns221.inputs[0]";
connectAttr "footFront_R0_0_loc.wm" "mgear_curveCns221.inputs[1]";
connectAttr "footFront_R0_1_loc.wm" "mgear_curveCns221.inputs[2]";
connectAttr "groupParts442.og" "tweak221.ip[0].ig";
connectAttr "groupId442.id" "tweak221.ip[0].gi";
connectAttr "mgear_curveCns221GroupId.msg" "mgear_curveCns221Set.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[0]" "mgear_curveCns221Set.dsm" -na;
connectAttr "mgear_curveCns221.msg" "mgear_curveCns221Set.ub[0]";
connectAttr "tweak221.og[0]" "mgear_curveCns221GroupParts.ig";
connectAttr "mgear_curveCns221GroupId.id" "mgear_curveCns221GroupParts.gi";
connectAttr "groupId442.msg" "tweakSet221.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[1]" "tweakSet221.dsm" -na;
connectAttr "tweak221.msg" "tweakSet221.ub[0]";
connectAttr "footFront_R0_crvShapeOrig.ws" "groupParts442.ig";
connectAttr "groupId442.id" "groupParts442.gi";
connectAttr "mgear_curveCns222GroupParts.og" "mgear_curveCns222.ip[0].ig";
connectAttr "mgear_curveCns222GroupId.id" "mgear_curveCns222.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns222.inputs[0]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns222.inputs[1]";
connectAttr "footFront_R0_outpivot.wm" "mgear_curveCns222.inputs[2]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns222.inputs[3]";
connectAttr "footFront_R0_inpivot.wm" "mgear_curveCns222.inputs[4]";
connectAttr "groupParts444.og" "tweak222.ip[0].ig";
connectAttr "groupId444.id" "tweak222.ip[0].gi";
connectAttr "mgear_curveCns222GroupId.msg" "mgear_curveCns222Set.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[0]" "mgear_curveCns222Set.dsm" -na;
connectAttr "mgear_curveCns222.msg" "mgear_curveCns222Set.ub[0]";
connectAttr "tweak222.og[0]" "mgear_curveCns222GroupParts.ig";
connectAttr "mgear_curveCns222GroupId.id" "mgear_curveCns222GroupParts.gi";
connectAttr "groupId444.msg" "tweakSet222.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[1]" "tweakSet222.dsm" -na;
connectAttr "tweak222.msg" "tweakSet222.ub[0]";
connectAttr "footFront_R0_Shape1Orig.ws" "groupParts444.ig";
connectAttr "groupId444.id" "groupParts444.gi";
connectAttr "mgear_curveCns223GroupParts.og" "mgear_curveCns223.ip[0].ig";
connectAttr "mgear_curveCns223GroupId.id" "mgear_curveCns223.ip[0].gi";
connectAttr "legBack_L0_root.wm" "mgear_curveCns223.inputs[0]";
connectAttr "legBack_L0_knee.wm" "mgear_curveCns223.inputs[1]";
connectAttr "legBack_L0_ankle.wm" "mgear_curveCns223.inputs[2]";
connectAttr "legBack_L0_foot.wm" "mgear_curveCns223.inputs[3]";
connectAttr "legBack_L0_eff.wm" "mgear_curveCns223.inputs[4]";
connectAttr "groupParts446.og" "tweak223.ip[0].ig";
connectAttr "groupId446.id" "tweak223.ip[0].gi";
connectAttr "mgear_curveCns223GroupId.msg" "mgear_curveCns223Set.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[0]" "mgear_curveCns223Set.dsm" -na;
connectAttr "mgear_curveCns223.msg" "mgear_curveCns223Set.ub[0]";
connectAttr "tweak223.og[0]" "mgear_curveCns223GroupParts.ig";
connectAttr "mgear_curveCns223GroupId.id" "mgear_curveCns223GroupParts.gi";
connectAttr "groupId446.msg" "tweakSet223.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[1]" "tweakSet223.dsm" -na;
connectAttr "tweak223.msg" "tweakSet223.ub[0]";
connectAttr "legBack_L0_crvShape1Orig.ws" "groupParts446.ig";
connectAttr "groupId446.id" "groupParts446.gi";
connectAttr "mgear_curveCns224GroupParts.og" "mgear_curveCns224.ip[0].ig";
connectAttr "mgear_curveCns224GroupId.id" "mgear_curveCns224.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns224.inputs[0]";
connectAttr "footBack_L0_0_loc.wm" "mgear_curveCns224.inputs[1]";
connectAttr "footBack_L0_1_loc.wm" "mgear_curveCns224.inputs[2]";
connectAttr "groupParts448.og" "tweak224.ip[0].ig";
connectAttr "groupId448.id" "tweak224.ip[0].gi";
connectAttr "mgear_curveCns224GroupId.msg" "mgear_curveCns224Set.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[0]" "mgear_curveCns224Set.dsm" -na;
connectAttr "mgear_curveCns224.msg" "mgear_curveCns224Set.ub[0]";
connectAttr "tweak224.og[0]" "mgear_curveCns224GroupParts.ig";
connectAttr "mgear_curveCns224GroupId.id" "mgear_curveCns224GroupParts.gi";
connectAttr "groupId448.msg" "tweakSet224.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[1]" "tweakSet224.dsm" -na;
connectAttr "tweak224.msg" "tweakSet224.ub[0]";
connectAttr "footBack_L0_crvShapeOrig.ws" "groupParts448.ig";
connectAttr "groupId448.id" "groupParts448.gi";
connectAttr "mgear_curveCns225GroupParts.og" "mgear_curveCns225.ip[0].ig";
connectAttr "mgear_curveCns225GroupId.id" "mgear_curveCns225.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns225.inputs[0]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns225.inputs[1]";
connectAttr "footBack_L0_outpivot.wm" "mgear_curveCns225.inputs[2]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns225.inputs[3]";
connectAttr "footBack_L0_inpivot.wm" "mgear_curveCns225.inputs[4]";
connectAttr "groupParts450.og" "tweak225.ip[0].ig";
connectAttr "groupId450.id" "tweak225.ip[0].gi";
connectAttr "mgear_curveCns225GroupId.msg" "mgear_curveCns225Set.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[0]" "mgear_curveCns225Set.dsm" -na;
connectAttr "mgear_curveCns225.msg" "mgear_curveCns225Set.ub[0]";
connectAttr "tweak225.og[0]" "mgear_curveCns225GroupParts.ig";
connectAttr "mgear_curveCns225GroupId.id" "mgear_curveCns225GroupParts.gi";
connectAttr "groupId450.msg" "tweakSet225.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[1]" "tweakSet225.dsm" -na;
connectAttr "tweak225.msg" "tweakSet225.ub[0]";
connectAttr "footBack_L0_Shape1Orig.ws" "groupParts450.ig";
connectAttr "groupId450.id" "groupParts450.gi";
connectAttr "mgear_curveCns226GroupParts.og" "mgear_curveCns226.ip[0].ig";
connectAttr "mgear_curveCns226GroupId.id" "mgear_curveCns226.ip[0].gi";
connectAttr "legBack_R0_root.wm" "mgear_curveCns226.inputs[0]";
connectAttr "legBack_R0_knee.wm" "mgear_curveCns226.inputs[1]";
connectAttr "legBack_R0_ankle.wm" "mgear_curveCns226.inputs[2]";
connectAttr "legBack_R0_foot.wm" "mgear_curveCns226.inputs[3]";
connectAttr "legBack_R0_eff.wm" "mgear_curveCns226.inputs[4]";
connectAttr "groupParts452.og" "tweak226.ip[0].ig";
connectAttr "groupId452.id" "tweak226.ip[0].gi";
connectAttr "mgear_curveCns226GroupId.msg" "mgear_curveCns226Set.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[0]" "mgear_curveCns226Set.dsm" -na;
connectAttr "mgear_curveCns226.msg" "mgear_curveCns226Set.ub[0]";
connectAttr "tweak226.og[0]" "mgear_curveCns226GroupParts.ig";
connectAttr "mgear_curveCns226GroupId.id" "mgear_curveCns226GroupParts.gi";
connectAttr "groupId452.msg" "tweakSet226.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[1]" "tweakSet226.dsm" -na;
connectAttr "tweak226.msg" "tweakSet226.ub[0]";
connectAttr "legBack_R0_crvShape1Orig.ws" "groupParts452.ig";
connectAttr "groupId452.id" "groupParts452.gi";
connectAttr "mgear_curveCns227GroupParts.og" "mgear_curveCns227.ip[0].ig";
connectAttr "mgear_curveCns227GroupId.id" "mgear_curveCns227.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns227.inputs[0]";
connectAttr "footBack_R0_0_loc.wm" "mgear_curveCns227.inputs[1]";
connectAttr "footBack_R0_1_loc.wm" "mgear_curveCns227.inputs[2]";
connectAttr "groupParts454.og" "tweak227.ip[0].ig";
connectAttr "groupId454.id" "tweak227.ip[0].gi";
connectAttr "mgear_curveCns227GroupId.msg" "mgear_curveCns227Set.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[0]" "mgear_curveCns227Set.dsm" -na;
connectAttr "mgear_curveCns227.msg" "mgear_curveCns227Set.ub[0]";
connectAttr "tweak227.og[0]" "mgear_curveCns227GroupParts.ig";
connectAttr "mgear_curveCns227GroupId.id" "mgear_curveCns227GroupParts.gi";
connectAttr "groupId454.msg" "tweakSet227.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[1]" "tweakSet227.dsm" -na;
connectAttr "tweak227.msg" "tweakSet227.ub[0]";
connectAttr "footBack_R0_crvShapeOrig.ws" "groupParts454.ig";
connectAttr "groupId454.id" "groupParts454.gi";
connectAttr "mgear_curveCns228GroupParts.og" "mgear_curveCns228.ip[0].ig";
connectAttr "mgear_curveCns228GroupId.id" "mgear_curveCns228.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns228.inputs[0]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns228.inputs[1]";
connectAttr "footBack_R0_outpivot.wm" "mgear_curveCns228.inputs[2]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns228.inputs[3]";
connectAttr "footBack_R0_inpivot.wm" "mgear_curveCns228.inputs[4]";
connectAttr "groupParts456.og" "tweak228.ip[0].ig";
connectAttr "groupId456.id" "tweak228.ip[0].gi";
connectAttr "mgear_curveCns228GroupId.msg" "mgear_curveCns228Set.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[0]" "mgear_curveCns228Set.dsm" -na;
connectAttr "mgear_curveCns228.msg" "mgear_curveCns228Set.ub[0]";
connectAttr "tweak228.og[0]" "mgear_curveCns228GroupParts.ig";
connectAttr "mgear_curveCns228GroupId.id" "mgear_curveCns228GroupParts.gi";
connectAttr "groupId456.msg" "tweakSet228.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[1]" "tweakSet228.dsm" -na;
connectAttr "tweak228.msg" "tweakSet228.ub[0]";
connectAttr "footBack_R0_Shape1Orig.ws" "groupParts456.ig";
connectAttr "groupId456.id" "groupParts456.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of quadruped.ma
