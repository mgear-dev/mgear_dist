//Maya ASCII 2016 scene
//Name: quadruped.ma
//Last modified: Wed, May 30, 2018 04:46:41 PM
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
	rename -uid "4CA8AC0E-4B08-2E9F-1FB6-87B32219803E";
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
	rename -uid "66DCD0D5-4931-0473-00DA-FE9AA71B7E40";
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
	rename -uid "21736A04-4DE8-7777-5637-B8992662B00E";
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
	rename -uid "6D9DCCF8-4081-50A3-1569-4A9DEE918454";
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
	rename -uid "E94089CF-4958-D133-8315-4EB6E67BA367";
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
	rename -uid "F2A37DE4-4DA2-3C71-17C2-8B836678F56D";
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
	rename -uid "045D8AA9-44D9-DD9A-609D-AEAF8F9704C6";
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
	rename -uid "B511938B-4408-01DE-B5A0-4BA378D5427A";
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
	rename -uid "73A6D122-4EB7-8D05-AFB2-DD994F3370BD";
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
createNode nurbsCurve -n "local_C0_root28Shape" -p "local_C0_root";
	rename -uid "D0CF3207-4BD7-FF34-A38D-CFA2053FCFF4";
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
createNode nurbsCurve -n "local_C0_root29Shape" -p "local_C0_root";
	rename -uid "1BB346F8-4C29-746B-307C-5687C4997DB9";
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
createNode nurbsCurve -n "local_C0_root30Shape" -p "local_C0_root";
	rename -uid "418329B3-4376-D6CB-BBEB-C5B4A46B84F9";
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
	rename -uid "C58F6721-455E-44CF-892B-96933337981D";
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
	rename -uid "C69B17E3-42D4-94EA-E615-5EAA6BB8E43F";
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
	rename -uid "AA921D55-44B9-0CFA-63C7-5893B5E364D4";
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
createNode nurbsCurve -n "body_C0_root28Shape" -p "body_C0_root";
	rename -uid "28EE5592-42EE-AFDE-57FF-1C8BC2BEA60F";
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
createNode nurbsCurve -n "body_C0_root29Shape" -p "body_C0_root";
	rename -uid "FBD5C6DC-42F3-EE3F-82E6-7B9E4A9846DD";
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
createNode nurbsCurve -n "body_C0_root30Shape" -p "body_C0_root";
	rename -uid "01ED6F08-418D-ED4D-F89E-C2A6959892CA";
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
	rename -uid "828298C6-4A8F-2846-04FB-49A08A3C4250";
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
createNode transform -n "spine_C0_root" -p "body_C0_root";
	rename -uid "1BCE1315-4FA7-660F-35CA-7AB9202005C0";
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
	rename -uid "E6C0F152-41A4-37C3-738F-04AF34082DC2";
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
createNode nurbsCurve -n "spine_C0_root28Shape" -p "spine_C0_root";
	rename -uid "97DDF5E9-4023-B45F-DA7A-85BBDDDC9CEF";
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
createNode nurbsCurve -n "spine_C0_root29Shape" -p "spine_C0_root";
	rename -uid "DC6933EA-4822-1871-DF27-E89793A8623B";
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
createNode nurbsCurve -n "spine_C0_root30Shape" -p "spine_C0_root";
	rename -uid "144A3B9F-48AC-231B-9D53-D2A385A39673";
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
	rename -uid "5C46C021-4333-B2E7-1022-22BF2B36C247";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6115768831256645 -2.9361299538902134e-015 ;
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
	rename -uid "AE9A40A3-462F-0E2C-51EE-D2B477D321FC";
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
createNode nurbsCurve -n "spine_C0_eff28Shape" -p "spine_C0_eff";
	rename -uid "E0924682-43F3-85DF-0EA0-35B73315D28F";
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
createNode nurbsCurve -n "spine_C0_eff29Shape" -p "spine_C0_eff";
	rename -uid "C50A114F-4D51-8519-D988-E2B9F26E8FE1";
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
createNode nurbsCurve -n "spine_C0_eff30Shape" -p "spine_C0_eff";
	rename -uid "F2C942F2-4956-C6C0-0F27-97BA36EA91E4";
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
createNode nurbsCurve -n "spine_C0_eff30_0crvShape" -p "spine_C0_eff";
	rename -uid "AA7D7093-43A7-5A68-4BC3-CBA1244913DC";
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
createNode nurbsCurve -n "spine_C0_eff30_1crvShape" -p "spine_C0_eff";
	rename -uid "B7C8C0A3-4B1A-903C-5A40-6ABE526982EE";
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
	rename -uid "241DD849-4F5B-7E82-E6C6-2AADF4008AEE";
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
	addAttr -ci true -sn "IKWorldOri" -ln "IKWorldOri" -min 0 -max 1 -at "bool";
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
	rename -uid "64F55525-4B1A-989A-46E4-4DA8DB9726C2";
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
createNode nurbsCurve -n "neck_C0_root28Shape" -p "neck_C0_root";
	rename -uid "5F7FBA21-44B3-990C-1156-F1BA683A9EBF";
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
createNode nurbsCurve -n "neck_C0_root29Shape" -p "neck_C0_root";
	rename -uid "140820CA-4680-CAA5-69F8-39967F5001B5";
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
createNode nurbsCurve -n "neck_C0_root30Shape" -p "neck_C0_root";
	rename -uid "C389091E-4AD4-DFBB-185A-B7B5A15FAFA4";
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
	rename -uid "024264D6-4BE8-0764-0933-C0BAA2BA4B22";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.24124837670655674 3.6642870257638149 -8.7131531609605871e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "895E3ECD-4F4C-EEA5-8FCC-46B90A954955";
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
createNode nurbsCurve -n "neck_C0_neck28Shape" -p "neck_C0_neck";
	rename -uid "51D18239-474F-FAB0-3491-0BA5A1B5887C";
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
createNode nurbsCurve -n "neck_C0_neck29Shape" -p "neck_C0_neck";
	rename -uid "3DD54F70-4018-86D1-8071-2499D06D59F6";
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
createNode nurbsCurve -n "neck_C0_neck30Shape" -p "neck_C0_neck";
	rename -uid "F0B9C984-486C-9166-8D66-778A24B059E0";
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
createNode nurbsCurve -n "neck_C0_neck30_0crvShape" -p "neck_C0_neck";
	rename -uid "AA9A7653-47E8-1A09-DBB2-06AF810F9FC6";
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
createNode nurbsCurve -n "neck_C0_neck30_1crvShape" -p "neck_C0_neck";
	rename -uid "D032DF2E-4F31-901E-35CE-AC8B35651AEE";
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
	rename -uid "D55D5652-4E9C-84A6-D6CB-B9A2908B1A32";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -5.3290705182007514e-015 7.9379128587864313e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 71.002460425706204 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999856 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "C8F4D1CF-4DDF-ABAB-69D8-21A134311060";
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
createNode nurbsCurve -n "neck_C0_head28Shape" -p "neck_C0_head";
	rename -uid "605CE222-405F-60E8-EE55-EEB9E416B997";
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
createNode nurbsCurve -n "neck_C0_head29Shape" -p "neck_C0_head";
	rename -uid "96DFE259-4E2A-CDDC-3888-E19376F39D10";
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
createNode nurbsCurve -n "neck_C0_head30Shape" -p "neck_C0_head";
	rename -uid "11A5452C-4FED-49F8-867C-E6B7B5A0C443";
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
createNode nurbsCurve -n "neck_C0_head30_0crvShape" -p "neck_C0_head";
	rename -uid "5EC4811E-4298-F1C2-CECE-F88FF6593255";
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
createNode nurbsCurve -n "neck_C0_head30_1crvShape" -p "neck_C0_head";
	rename -uid "1040531F-4BE4-3224-0E7B-9C98F3AD090E";
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
	rename -uid "EB9AFBBB-4753-87EC-3703-059A4FE1ABBF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.028362147187278808 2.6770463465994707 4.541882106202e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "652E026D-4B0B-28C1-B195-0B9F4C2A53D5";
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
createNode nurbsCurve -n "neck_C0_eff28Shape" -p "neck_C0_eff";
	rename -uid "9472E45F-4CB4-5EC0-0917-6DA51EBC6813";
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
createNode nurbsCurve -n "neck_C0_eff29Shape" -p "neck_C0_eff";
	rename -uid "6EB8BC51-4537-C660-C354-C0A5D22F33A2";
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
createNode nurbsCurve -n "neck_C0_eff30Shape" -p "neck_C0_eff";
	rename -uid "32A4B050-4837-14D4-6A4A-C185D3F13049";
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
createNode nurbsCurve -n "neck_C0_eff30_0crvShape" -p "neck_C0_eff";
	rename -uid "E5B294A8-4BCC-82AD-71B1-86A8CBF2E178";
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
createNode nurbsCurve -n "neck_C0_eff30_1crvShape" -p "neck_C0_eff";
	rename -uid "3A6DE99E-4369-614F-B248-22BCED76AEB5";
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
	rename -uid "F8E8967E-468A-2867-6BE2-5582B07D384B";
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
	setAttr ".t" -type "double3" -3.2992211017816828 -0.74362823191861871 -4.3347348183670729 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844406008 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427579 2.3915882794427556 2.3915882794427596 ;
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
	rename -uid "CAEF32AB-4B0B-96C1-C2D9-2CB43332BB2D";
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
createNode nurbsCurve -n "spineUI_C0_root28Shape" -p "spineUI_C0_root";
	rename -uid "844059D6-4A72-24B2-BEEF-22B87D696583";
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
createNode nurbsCurve -n "spineUI_C0_root29Shape" -p "spineUI_C0_root";
	rename -uid "9D21527D-429E-404A-B91E-168940BCE45F";
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
createNode nurbsCurve -n "spineUI_C0_root30Shape" -p "spineUI_C0_root";
	rename -uid "9115757C-434A-678B-FC85-B9B4341073EA";
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
	rename -uid "668A3D55-495C-A4D5-4722-FDA964D0020F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -8.8817841970012523e-016 0.99999999999999911 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 0.99999999999999889 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "headUI_C0_root" -p "neck_C0_eff";
	rename -uid "64F36DC0-475E-9042-1735-99B25C56BE4A";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-015 2.9303186274198669 6.1165723857933711e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000007 ;
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
	rename -uid "CE981A8E-48CC-FA58-6BE3-44B26C1DCCC1";
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
createNode nurbsCurve -n "headUI_C0_root19Shape" -p "headUI_C0_root";
	rename -uid "1A260BA2-43F2-473F-3BE4-B19F7E74BC08";
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
createNode nurbsCurve -n "headUI_C0_root20Shape" -p "headUI_C0_root";
	rename -uid "E8F1BA30-468E-E9E2-9318-6BB56FD6FB7F";
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
createNode nurbsCurve -n "headUI_C0_root21Shape" -p "headUI_C0_root";
	rename -uid "6B012D07-4910-2088-3F2D-F3BA83A24991";
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
	rename -uid "8EDD210B-48DB-B063-47B6-5A97ADA43208";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3915877472269287 -0.0015955193487808828 -1.0620785493044081e-015 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844406014 89.999999999999957 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427543 2.3915882794427539 2.3915882794427548 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	rename -uid "30EE930B-4F29-1C58-662A-5080053042B4";
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
	setAttr ".t" -type "double3" 0.69584514547310228 0.7179276789374418 1.4003887623375048e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844406014 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.5373820334294297 0.53738203342942958 0.53738203342943025 ;
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
	rename -uid "FCE53EC0-42B2-83D2-324C-B4AC163E4F2D";
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
createNode nurbsCurve -n "mouth_C0_root28Shape" -p "mouth_C0_root";
	rename -uid "2AED7BAA-4B45-1B6C-8EC9-73B2A9EBDF72";
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
createNode nurbsCurve -n "mouth_C0_root29Shape" -p "mouth_C0_root";
	rename -uid "CA7DF4A4-4909-D46C-C4E4-4D887F17784F";
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
createNode nurbsCurve -n "mouth_C0_root30Shape" -p "mouth_C0_root";
	rename -uid "AC6C7E4E-47CF-8F9A-3037-499002970879";
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
	rename -uid "FD002555-4848-51AF-3374-918F52CACAED";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.4709879829724519e-029 -7.1054273576010019e-015 2.8421709430404007e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999822 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "6DE1581E-415A-7198-5E32-0291AF2F733D";
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
createNode nurbsCurve -n "mouth_C0_rotcenter28Shape" -p "mouth_C0_rotcenter";
	rename -uid "83113747-4BA7-B65C-A19B-1898022B6992";
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
createNode nurbsCurve -n "mouth_C0_rotcenter29Shape" -p "mouth_C0_rotcenter";
	rename -uid "7A78B3C4-4D1D-3BB2-5049-83992D919DAB";
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
createNode nurbsCurve -n "mouth_C0_rotcenter30Shape" -p "mouth_C0_rotcenter";
	rename -uid "6369815B-41B3-19CC-641D-408F29BE398E";
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
createNode nurbsCurve -n "mouth_C0_rotcenter30_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "0522988F-4782-A991-86BE-72B16B3DE9C8";
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
createNode nurbsCurve -n "mouth_C0_rotcenter30_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "66A1C095-43B7-9DBC-23D6-EC875E0D888D";
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
	rename -uid "BECADEEF-4461-2746-606E-F58CA8DB4E06";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2971167579553858e-015 -0.83057537847144403 2.6485854255406949 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "09642714-4FEC-04E3-B995-A9B72E6D6E92";
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
createNode nurbsCurve -n "mouth_C0_lipup28Shape" -p "mouth_C0_lipup";
	rename -uid "B5388DEE-44F4-25E5-46DE-DA9295EDA9CD";
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
createNode nurbsCurve -n "mouth_C0_lipup29Shape" -p "mouth_C0_lipup";
	rename -uid "625F83E5-4511-EFF6-CE2D-AFAB43146184";
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
createNode nurbsCurve -n "mouth_C0_lipup30Shape" -p "mouth_C0_lipup";
	rename -uid "D3748262-4B49-A61F-5DCE-F7856C5718D8";
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
createNode nurbsCurve -n "mouth_C0_lipup30_0crvShape" -p "mouth_C0_lipup";
	rename -uid "C4EB931E-4C13-ABEE-483B-ECA4B7D6F01D";
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
createNode nurbsCurve -n "mouth_C0_lipup30_1crvShape" -p "mouth_C0_lipup";
	rename -uid "73DABB62-4C3E-A532-5AD3-208B34B1D127";
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
	rename -uid "88B27341-49DF-75CC-E527-96B12455B8CF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3722175990868878e-014 -14.161367226604181 -19.457469484456155 ;
	setAttr ".s" -type "double3" 4.4504433171691247 4.4504433171691282 4.4504433171691247 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "CDC63853-425C-579D-95D8-F9BFBAC6D227";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "A796C380-4C53-8F1A-D327-D385D3387350";
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
	rename -uid "E0877F95-46F0-B314-FA77-BB9C626BC4EB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7198567879251454e-015 -1.1237321151316113 2.456560648346553 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "743CDB93-44EC-4DFB-2800-FC9799125E88";
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
createNode nurbsCurve -n "mouth_C0_liplow28Shape" -p "mouth_C0_liplow";
	rename -uid "3C501B4C-49C7-33B3-7E0A-38B27E10533D";
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
createNode nurbsCurve -n "mouth_C0_liplow29Shape" -p "mouth_C0_liplow";
	rename -uid "1B0729E7-4D31-157D-60B0-D8BC3DA6F0B0";
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
createNode nurbsCurve -n "mouth_C0_liplow30Shape" -p "mouth_C0_liplow";
	rename -uid "B14E10D6-4062-0133-03F0-F6946E9DFE98";
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
createNode nurbsCurve -n "mouth_C0_liplow30_0crvShape" -p "mouth_C0_liplow";
	rename -uid "9FBC04EE-4064-DE5E-5F46-D495BD0EA305";
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
createNode nurbsCurve -n "mouth_C0_liplow30_1crvShape" -p "mouth_C0_liplow";
	rename -uid "0B353ACA-4CF8-7FB7-F8B2-FCBC7FD0C2AE";
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
	rename -uid "8332B043-41F4-2E66-6800-549170B9ED91";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3144916020838633e-014 -13.868210489944014 -19.265444707262013 ;
	setAttr ".s" -type "double3" 4.4504433171691247 4.4504433171691282 4.4504433171691247 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "EBC4744A-4304-4DBE-4743-8AB9DEF3F9E9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "5B390020-4EC7-29B2-A31D-9E8E45840C21";
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
	rename -uid "BAD663A5-4DB0-0873-C13E-8699E4755AE9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.4709879829724519e-029 -1.943196062563695 2.0069895663162711 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999822 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "8DCAE0DB-42AF-A4EE-E417-6A913C02CDD9";
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
createNode nurbsCurve -n "mouth_C0_jaw28Shape" -p "mouth_C0_jaw";
	rename -uid "2ECEFEFF-4F07-C202-881D-D3A13CC3CCD1";
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
createNode nurbsCurve -n "mouth_C0_jaw29Shape" -p "mouth_C0_jaw";
	rename -uid "600BF05F-45AF-2E37-EF05-2BB62341D926";
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
createNode nurbsCurve -n "mouth_C0_jaw30Shape" -p "mouth_C0_jaw";
	rename -uid "90CE7247-4090-70FD-BA8C-CCA057C84CD9";
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
createNode nurbsCurve -n "mouth_C0_jaw30_0crvShape" -p "mouth_C0_jaw";
	rename -uid "C5EDF233-4684-72EC-2C42-93AA42792DF3";
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
createNode nurbsCurve -n "mouth_C0_jaw30_1crvShape" -p "mouth_C0_jaw";
	rename -uid "4046838C-45D4-49DC-176C-32882A105539";
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
	rename -uid "80512F6B-4220-5205-0AD7-3384D5BD8C4D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4250592329134387e-015 -14.991942605075597 -16.808884058915393 ;
	setAttr ".s" -type "double3" 4.4504433171691185 4.4504433171691176 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "9D0153C7-43C4-6343-F45B-B8A30D320DEF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "FC309FFF-461C-AABD-B9D1-8D83FB3E86BB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv10" -p "mouth_C0_root";
	rename -uid "AD1255B0-4ECA-8143-C424-E4BEB3E40323";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4250592329134387e-015 -14.991942605075597 -16.808884058915393 ;
	setAttr ".s" -type "double3" 4.4504433171691185 4.4504433171691176 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crv10Shape" -p "mouth_C0_crv10";
	rename -uid "01C3968F-40F2-3918-AD26-BB810B4E7E21";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv10ShapeOrig" -p "mouth_C0_crv10";
	rename -uid "44D7A4A6-46CD-1650-1FF0-FF8994D16668";
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
	rename -uid "7BEE9B14-4AAD-1E14-51A3-50AD0D733C6E";
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
	setAttr ".t" -type "double3" 4.9771436298332059 1.0221998062961513 -1.7545700686211258e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844406014 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427574 2.3915882794427556 ;
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
	rename -uid "C190B038-4A98-18F0-495E-218F51A3A65D";
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
createNode nurbsCurve -n "eyeslook_C0_root28Shape" -p "eyeslook_C0_root";
	rename -uid "537A208F-4283-7E22-A427-019B7EA6AA65";
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
createNode nurbsCurve -n "eyeslook_C0_root29Shape" -p "eyeslook_C0_root";
	rename -uid "E767A9D0-4FE7-1306-B0FC-0599B36E2875";
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
createNode nurbsCurve -n "eyeslook_C0_root30Shape" -p "eyeslook_C0_root";
	rename -uid "79CC86FA-4832-4C72-2932-E387FA4E5447";
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
	rename -uid "EA89BE80-4C2B-A5A5-E772-DA9202467FE3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251542e-015 0 1.0000000000000036 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000011 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "eye_L0_root" -p "neck_C0_head";
	rename -uid "C40E84EA-4E1C-5BE5-1186-40958A1272D7";
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
	setAttr ".t" -type "double3" 0.25733245506885538 1.0267893607782339 -0.4210773006138262 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 75.993552494737415 179.9617758071555 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427508 2.3915882794427614 2.3915882794427521 ;
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
	rename -uid "3DC4A298-4AFA-FC75-955D-B084DC4765AD";
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
createNode nurbsCurve -n "eye_L0_root28Shape" -p "eye_L0_root";
	rename -uid "5623C6F4-4C4E-ECC6-2DCE-DA8161210CEE";
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
createNode nurbsCurve -n "eye_L0_root29Shape" -p "eye_L0_root";
	rename -uid "5A27ED39-44A4-8B4E-46CF-9E97796C5F92";
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
createNode nurbsCurve -n "eye_L0_root30Shape" -p "eye_L0_root";
	rename -uid "0BC6570E-41B6-DAA6-4839-8B854C7605BD";
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
	rename -uid "78BBD556-47D9-A8CF-4AE1-C5A3ACB057F1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.6613381477509392e-016 1.1102230246251565e-014 2.0321341905376507 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 0.999999999999998 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "B5774E36-405D-690B-65BE-E39DC9A1FE3F";
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
createNode nurbsCurve -n "eye_L0_look28Shape" -p "eye_L0_look";
	rename -uid "12B182B6-469F-C936-14A5-4AA27E1C9D04";
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
createNode nurbsCurve -n "eye_L0_look29Shape" -p "eye_L0_look";
	rename -uid "8E719CD0-49E2-1665-C832-5AA22A860980";
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
createNode nurbsCurve -n "eye_L0_look30Shape" -p "eye_L0_look";
	rename -uid "157D6FE1-48CC-1B32-DD4B-37B1840EDA5F";
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
createNode nurbsCurve -n "eye_L0_look30_0crvShape" -p "eye_L0_look";
	rename -uid "3635B5C6-460F-B5A4-A7E4-E187DAF3FE5B";
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
createNode nurbsCurve -n "eye_L0_look30_1crvShape" -p "eye_L0_look";
	rename -uid "05BF980B-49C1-5E73-7A90-D3AE336D0194";
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
	rename -uid "88B39F3B-49FC-4F2A-2FE6-72ADB05E4672";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753555 -3.4976629291575771 -3.5292331821335656 ;
	setAttr ".r" -type "double3" 0 -14.006447505262562 0 ;
	setAttr ".s" -type "double3" 1.0000000000000027 0.99999999999999811 1.0000000000000024 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "39A0D48C-44FB-DB79-D4B8-5EAFC0E8BF93";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "AB509FBE-419F-9929-20E1-859C096C0EF7";
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
	rename -uid "7E52A812-4BBC-16F4-6BF0-E9A17CF16E5B";
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
	setAttr ".t" -type "double3" 0.25733245506885893 1.0267893607782286 0.42107730061382792 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 -75.993552494737443 179.9617758071557 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427539 2.3915882794427614 -2.3915882794427539 ;
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
	rename -uid "05958FF6-4744-659E-0D81-6BB2C4DC1E1B";
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
createNode nurbsCurve -n "eye_R0_root19Shape" -p "eye_R0_root";
	rename -uid "37A3C519-4982-2C4B-A0D5-77ACDE3B9E22";
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
createNode nurbsCurve -n "eye_R0_root20Shape" -p "eye_R0_root";
	rename -uid "A42D53FE-43EA-2432-FF23-AEB81C723BCB";
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
createNode nurbsCurve -n "eye_R0_root21Shape" -p "eye_R0_root";
	rename -uid "713B1A46-481A-8883-E63C-9FA8644C818C";
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
	rename -uid "95257B61-4125-6FAA-17A9-4D83E5977E49";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.3306690738754696e-016 6.6613381477509392e-015 2.0321341905376427 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999745 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "A0E2A130-44EE-A560-722D-EABE5ACFE7A6";
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
createNode nurbsCurve -n "eye_R0_look19Shape" -p "eye_R0_look";
	rename -uid "998A659D-432F-4A33-862B-C0BB5F86FDE2";
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
createNode nurbsCurve -n "eye_R0_look20Shape" -p "eye_R0_look";
	rename -uid "728DB441-4786-B953-693F-38B84078B511";
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
createNode nurbsCurve -n "eye_R0_look21Shape" -p "eye_R0_look";
	rename -uid "6775E356-48C1-AEB0-E074-EEAB576534AC";
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
createNode nurbsCurve -n "eye_R0_look21_0crvShape" -p "eye_R0_look";
	rename -uid "FFDC35F9-405F-BF07-CC1B-84A3DDF2200E";
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
createNode nurbsCurve -n "eye_R0_look21_1crvShape" -p "eye_R0_look";
	rename -uid "FC6CF887-46A4-4AA1-AE9D-0D9C0162B0AC";
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
	rename -uid "92C8E1CF-4081-2E5C-3159-308507464A48";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753488 -3.4976629291575749 -3.5292331821335639 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 1.0000000000000013 0.999999999999998 -1.0000000000000016 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "E973E7E1-4B1B-AFF8-BDDD-7CA81F9DC346";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "D1B58C54-4883-78B7-F4C6-06A08E11F717";
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
	rename -uid "0747BE23-40A9-0E92-7D8F-ECBCA63BDB9D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.094534318000986772 -0.76996010281298766 1.5833033991300791e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "E50353D1-44EC-2544-B204-8CA5842C86A5";
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
createNode nurbsCurve -n "neck_C0_tanShape20" -p "neck_C0_tan1";
	rename -uid "335FCE31-4458-E987-5EDB-D083B062C4A3";
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
createNode nurbsCurve -n "neck_C0_tanShape21" -p "neck_C0_tan1";
	rename -uid "E521BD15-459D-C74E-C35C-5DB1C4F2B66E";
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
createNode nurbsCurve -n "neck_C0_tanShape22" -p "neck_C0_tan1";
	rename -uid "5936E945-4933-33C6-4BE2-2C8F099A3C9C";
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
createNode nurbsCurve -n "neck_C0_tan20_0crvShape" -p "neck_C0_tan1";
	rename -uid "8E8CF50C-4D36-0F25-0B95-40B6854B49AC";
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
createNode nurbsCurve -n "neck_C0_tan20_1crvShape" -p "neck_C0_tan1";
	rename -uid "2C391D9A-465B-4BBC-4F5A-1891D1C56BB4";
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
	rename -uid "D6FD6DE4-4829-A775-15F3-37935C5A63F1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550686 -10.274847894363647 4.4383048488343191e-016 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999943 0 ;
	setAttr ".s" -type "double3" 2.3915882794427548 2.3915882794427534 2.3915882794427561 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "9968908C-4A2B-6404-3EFD-B494379A1753";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "BCB9BE87-43EF-3BE1-5E0F-E98E319144A4";
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
	rename -uid "0F1F6147-459E-A13D-9724-219D07781354";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.016734587625120145 0.81123959492320008 -2.1361002026221636e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "FFDB7241-4098-1C9D-4BA9-459D9C54ACD2";
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
createNode nurbsCurve -n "neck_C0_tanShape19" -p "neck_C0_tan0";
	rename -uid "F2D0C880-4979-3DCA-43C5-D6AB58A49E3B";
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
createNode nurbsCurve -n "neck_C0_tanShape20" -p "neck_C0_tan0";
	rename -uid "94B9CF2A-4B99-A97A-BDF0-DE99A01890C6";
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
createNode nurbsCurve -n "neck_C0_tanShape21" -p "neck_C0_tan0";
	rename -uid "497A842F-4E6B-37BB-BA2B-F7B92ECCA28C";
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
createNode nurbsCurve -n "neck_C0_tan19_0crvShape" -p "neck_C0_tan0";
	rename -uid "087AEA4E-4301-0658-ECFE-B1B9A4C165CD";
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
createNode nurbsCurve -n "neck_C0_tan19_1crvShape" -p "neck_C0_tan0";
	rename -uid "3A042F25-428D-99CC-188C-2D963A5AA765";
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
	rename -uid "8BE93752-40AB-67DB-6607-CF891FB855CE";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000013 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "2C3D2164-486E-7393-679B-CCA796534E4A";
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
createNode aimConstraint -n "neck_C0_blade_aimConstraint10" -p "neck_C0_blade";
	rename -uid "FD85AE60-4F2B-7A2E-C853-FBB91735688C";
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
	setAttr ".o" -type "double3" 0 0 359.99999999999972 ;
	setAttr ".rsrr" -type "double3" -180 -3.3192575361337198e-029 451.1817535542304 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint10" -p "neck_C0_blade";
	rename -uid "3A277771-4C84-2AEA-FD24-259C5A8FAD10";
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
		-6.4094948549207209e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "B9636780-4625-919D-04A4-B4A49C0B6069";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.976162134148518 -6.6105608685998307 -4.2748483121262768e-016 ;
	setAttr ".r" -type "double3" -70.964236232861779 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "4B5647E3-4B0E-1BE2-5055-A49778C110A9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "C3916FAE-4E6D-BC6F-4F7D-AA89A921C678";
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
	rename -uid "E1ADD614-428A-5519-4035-4A8317E90D8D";
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
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 -0.20082401790608251 ;
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
	rename -uid "534719F8-44A3-A210-915A-79AF13FF7302";
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
createNode nurbsCurve -n "shoulder_L0_root28Shape" -p "shoulder_L0_root";
	rename -uid "DF502D8B-433D-BB3C-0194-EAB0057FA0C5";
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
createNode nurbsCurve -n "shoulder_L0_root29Shape" -p "shoulder_L0_root";
	rename -uid "50B74B27-4BED-0AB1-F279-8B9E660E1FAC";
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
createNode nurbsCurve -n "shoulder_L0_root30Shape" -p "shoulder_L0_root";
	rename -uid "E6577096-41D5-4D7D-A424-B9A6C37476AF";
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
	rename -uid "C2FB3824-4C8B-A5C7-3531-75BD9B4A7D21";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724661 -0.20882616370654805 0.20663608494886754 ;
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
	rename -uid "FC4661EB-4FAE-3852-00EB-78934F590342";
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
createNode nurbsCurve -n "shoulder_L0_0_loc28Shape" -p "shoulder_L0_0_loc";
	rename -uid "F1370E3C-477F-254F-8A43-06B98EC32ECF";
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
createNode nurbsCurve -n "shoulder_L0_0_loc29Shape" -p "shoulder_L0_0_loc";
	rename -uid "C9C4AF0F-4425-F34D-A371-978EDD773CFA";
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
createNode nurbsCurve -n "shoulder_L0_0_loc30Shape" -p "shoulder_L0_0_loc";
	rename -uid "2FE33388-4C0E-DEED-88AA-BCB9397374F8";
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
createNode nurbsCurve -n "shoulder_L0_0_loc30_0crvShape" -p "shoulder_L0_0_loc";
	rename -uid "60B4FF1F-4640-67B6-AE19-9EB449726C9C";
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
createNode nurbsCurve -n "shoulder_L0_0_loc30_1crvShape" -p "shoulder_L0_0_loc";
	rename -uid "A23EC219-49B2-5A2F-FCF2-1C946F7E41CB";
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
	rename -uid "7C5EF35E-4398-69CB-E46B-EDAE18404B50";
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
	setAttr ".t" -type "double3" -1.4432899320127035e-015 -4.8849813083506888e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950337 0.39967062595950281 ;
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
	rename -uid "AF27BC2C-466A-BC7D-5B0B-4B8AA7862BB3";
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
createNode nurbsCurve -n "legFront_L0_root28Shape" -p "legFront_L0_root";
	rename -uid "1445E9E9-4157-8268-D618-B49567676E01";
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
createNode nurbsCurve -n "legFront_L0_root29Shape" -p "legFront_L0_root";
	rename -uid "10507A7D-48BE-49AC-57A6-E9AE60D7086F";
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
createNode nurbsCurve -n "legFront_L0_root30Shape" -p "legFront_L0_root";
	rename -uid "0867413B-477C-73D9-0C37-86B36789EE34";
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
	rename -uid "109F85C2-4F4F-E191-0466-98B5C6FFC3DA";
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
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999845 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
	rename -uid "A0865F12-4C9B-9F9D-BCD7-7F8F9B70F9EB";
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
createNode nurbsCurve -n "legFront_L0_knee28Shape" -p "legFront_L0_knee";
	rename -uid "8240B71E-4D44-317B-AF3B-D8A2A11936E5";
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
createNode nurbsCurve -n "legFront_L0_knee29Shape" -p "legFront_L0_knee";
	rename -uid "85163B04-403E-11A5-F0FC-5790D7913D48";
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
createNode nurbsCurve -n "legFront_L0_knee30Shape" -p "legFront_L0_knee";
	rename -uid "231A7E9B-4F58-E526-75D8-37A4D05D1A2A";
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
createNode nurbsCurve -n "legFront_L0_knee30_0crvShape" -p "legFront_L0_knee";
	rename -uid "4BE34E34-4AFE-6144-6E17-A39F2A1AE14E";
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
createNode nurbsCurve -n "legFront_L0_knee30_1crvShape" -p "legFront_L0_knee";
	rename -uid "822A67C8-4576-9E5C-5183-0297A1444AED";
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
	rename -uid "4E833EE5-43A3-BA35-FB1D-F58DADD62F02";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.6613381477509392e-015 -2.3651516407059159 0.073902270404611059 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_ankleShape" -p "legFront_L0_ankle";
	rename -uid "1B9430CD-4127-708F-0EBF-50A09780A08B";
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
createNode nurbsCurve -n "legFront_L0_ankle28Shape" -p "legFront_L0_ankle";
	rename -uid "C77B91ED-4802-6C86-AD73-049EAAB6694B";
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
createNode nurbsCurve -n "legFront_L0_ankle29Shape" -p "legFront_L0_ankle";
	rename -uid "CBF222AC-484B-7E41-B7BA-C7AAB6C8C0E4";
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
createNode nurbsCurve -n "legFront_L0_ankle30Shape" -p "legFront_L0_ankle";
	rename -uid "7981EC9A-4B44-6A21-9316-C9AFAB6E4F9D";
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
createNode nurbsCurve -n "legFront_L0_ankle30_0crvShape" -p "legFront_L0_ankle";
	rename -uid "8FD0081D-49FC-2C66-D6E0-D3A835E3712F";
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
createNode nurbsCurve -n "legFront_L0_ankle30_1crvShape" -p "legFront_L0_ankle";
	rename -uid "C71617EC-4534-7E57-ADC9-A2A00C3E6123";
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
	rename -uid "EC2EDF5E-43DD-ED89-3863-6893284112A7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -1.1294425054275523 0.023148533894217671 ;
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
	rename -uid "8D75B48D-443E-0601-15C6-BFA276C3C62E";
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
createNode nurbsCurve -n "legFront_L0_foot28Shape" -p "legFront_L0_foot";
	rename -uid "8E483464-4EA1-24B3-4534-7595F049D7E6";
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
createNode nurbsCurve -n "legFront_L0_foot29Shape" -p "legFront_L0_foot";
	rename -uid "A17E3C57-4B68-A2DE-8948-369A20E02A3C";
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
createNode nurbsCurve -n "legFront_L0_foot30Shape" -p "legFront_L0_foot";
	rename -uid "D0B4F4EB-4D9B-6D49-5ABB-4D87F62F7358";
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
createNode nurbsCurve -n "legFront_L0_foot30_0crvShape" -p "legFront_L0_foot";
	rename -uid "EE14551D-4A4B-DBB0-CB45-598D6F57FE46";
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
createNode nurbsCurve -n "legFront_L0_foot30_1crvShape" -p "legFront_L0_foot";
	rename -uid "BB8264FC-44F9-31CB-8018-7C9C96EE34BB";
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
	rename -uid "ED720C04-4EAD-0279-5A09-ED887925FC80";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 9.4368957093138306e-016 0.59657797851921135 ;
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
createNode nurbsCurve -n "legFront_L0_effShape" -p "legFront_L0_eff";
	rename -uid "39625A8C-4400-0D9E-08C9-EA98C4275248";
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
createNode nurbsCurve -n "legFront_L0_eff28Shape" -p "legFront_L0_eff";
	rename -uid "4AB838F5-40A5-9DA1-99FA-AEA5F719F2AF";
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
createNode nurbsCurve -n "legFront_L0_eff29Shape" -p "legFront_L0_eff";
	rename -uid "0DA6D6EA-4D81-CEDC-9C1C-689BCB668E85";
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
createNode nurbsCurve -n "legFront_L0_eff30Shape" -p "legFront_L0_eff";
	rename -uid "0EB9EC6E-4A2D-28B2-9D2F-159DF8345DA4";
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
createNode nurbsCurve -n "legFront_L0_eff30_0crvShape" -p "legFront_L0_eff";
	rename -uid "16F8CA06-4CB3-E983-0FE0-30A268F8201C";
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
createNode nurbsCurve -n "legFront_L0_eff30_1crvShape" -p "legFront_L0_eff";
	rename -uid "858C0988-4047-7A8A-0217-48A745B9FAD2";
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
	rename -uid "47F1CBB0-42AB-E9AD-4066-0FAA07E519C1";
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
	setAttr ".t" -type "double3" 2.6645352591003757e-015 7.4940054162198066e-016 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514093 0.3149951760251411 0.31499517602514093 ;
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
	rename -uid "E38240F7-4DE2-8616-1FDD-79A2A13AA9B6";
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
createNode nurbsCurve -n "footFront_L0_root28Shape" -p "footFront_L0_root";
	rename -uid "4E8C92D4-4B2D-DEA5-D4F0-0AA7452EA58A";
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
createNode nurbsCurve -n "footFront_L0_root29Shape" -p "footFront_L0_root";
	rename -uid "CB06F28D-4F90-7C20-F2FB-F282A3CCC247";
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
createNode nurbsCurve -n "footFront_L0_root30Shape" -p "footFront_L0_root";
	rename -uid "2136D023-4143-66D8-0BB7-48877894122E";
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
	rename -uid "C132F736-4255-B581-D700-FAB94293AB27";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 1.7763568394002505e-015 0.75996190873518898 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
	rename -uid "969AF8E8-4E34-F2D8-D572-DBB89306CE01";
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
createNode nurbsCurve -n "footFront_L0_0_loc28Shape" -p "footFront_L0_0_loc";
	rename -uid "9124CAFB-47B8-6FA9-F0CA-B7A2C7CB2A0C";
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
createNode nurbsCurve -n "footFront_L0_0_loc29Shape" -p "footFront_L0_0_loc";
	rename -uid "3978E29D-45D5-145F-E5DD-8D9C206BF37B";
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
createNode nurbsCurve -n "footFront_L0_0_loc30Shape" -p "footFront_L0_0_loc";
	rename -uid "C38C632E-4AB8-DA0C-C53D-3C9885F86738";
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
createNode nurbsCurve -n "footFront_L0_0_loc30_0crvShape" -p "footFront_L0_0_loc";
	rename -uid "366DD815-45A0-7D3D-B875-58A510CB44A7";
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
createNode nurbsCurve -n "footFront_L0_0_loc30_1crvShape" -p "footFront_L0_0_loc";
	rename -uid "5A02F82B-4B35-9201-B9CE-C5B5B9BD1035";
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
	rename -uid "75430959-4E9C-CC25-0FFF-0E94A2352DFF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -0.3177118075540516 0.73937999249394082 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_1_locShape" -p "footFront_L0_1_loc";
	rename -uid "EA61B8D8-49E4-66D7-6748-E4BAC002FD38";
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
createNode nurbsCurve -n "footFront_L0_1_loc28Shape" -p "footFront_L0_1_loc";
	rename -uid "9AAB435A-4585-9154-FEAD-9F97A83F172C";
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
createNode nurbsCurve -n "footFront_L0_1_loc29Shape" -p "footFront_L0_1_loc";
	rename -uid "DF3EAD27-4A25-7370-65A0-1E9C5A9E3995";
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
createNode nurbsCurve -n "footFront_L0_1_loc30Shape" -p "footFront_L0_1_loc";
	rename -uid "9F4F9C76-452A-7727-B20C-0D96B6129CE9";
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
createNode nurbsCurve -n "footFront_L0_1_loc30_0crvShape" -p "footFront_L0_1_loc";
	rename -uid "CE7ADB1C-4001-9277-B713-EDA1491D9BE8";
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
createNode nurbsCurve -n "footFront_L0_1_loc30_1crvShape" -p "footFront_L0_1_loc";
	rename -uid "16EB4AE9-4CBF-34D1-EED4-FAA4F7FD5382";
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
	rename -uid "4BBE2017-4A3B-AB1B-BBFE-B0950156EA09";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373568 -0.60300743522685696 -16.239037496288887 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 7.9431701648148056 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	rename -uid "8F7D3EAF-48DB-8CCF-5E75-80BAE9A4EA29";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
	rename -uid "159BB064-44D5-B596-7910-EE8E8986BBE9";
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
	rename -uid "9247185C-4ACC-567F-E74C-9994EB332873";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5099033134902129e-014 -0.31771180755404999 -0.067899908672067966 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
	rename -uid "2737650E-4CF5-8B35-51DC-428A17A3FB73";
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
createNode nurbsCurve -n "footFront_L0_heel28Shape" -p "footFront_L0_heel";
	rename -uid "69A4F40D-4BB4-B004-57F8-2FBDBF32E16B";
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
createNode nurbsCurve -n "footFront_L0_heel29Shape" -p "footFront_L0_heel";
	rename -uid "013CA76C-4FC0-1C9C-39F1-0AB1C222B74E";
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
createNode nurbsCurve -n "footFront_L0_heel30Shape" -p "footFront_L0_heel";
	rename -uid "36321370-4713-79F6-C28B-858E2323F494";
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
createNode nurbsCurve -n "footFront_L0_heel30_0crvShape" -p "footFront_L0_heel";
	rename -uid "7E8E080D-4334-7CF6-CFDA-4F9653D6E6C4";
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
createNode nurbsCurve -n "footFront_L0_heel30_1crvShape" -p "footFront_L0_heel";
	rename -uid "791ED20A-4F41-1B8F-22EA-3C8C17F7C04B";
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
	rename -uid "B8CEB0F8-451C-5E90-E232-739B4A5437CF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120628 -0.31771180755404804 0.69157185350467998 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
	rename -uid "1FBFF1AC-46B1-7832-7BDF-77B31C1BB4D6";
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
createNode nurbsCurve -n "footFront_L0_outpivot28Shape" -p "footFront_L0_outpivot";
	rename -uid "9957B783-4DEA-2990-0D47-7FBB7B08C663";
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
createNode nurbsCurve -n "footFront_L0_outpivot29Shape" -p "footFront_L0_outpivot";
	rename -uid "2E0A92DC-41AA-1E4A-2155-E885D5580C91";
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
createNode nurbsCurve -n "footFront_L0_outpivot30Shape" -p "footFront_L0_outpivot";
	rename -uid "4FBEFFFC-4FA5-918E-32EB-A3AD5C6E09CF";
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
createNode nurbsCurve -n "footFront_L0_outpivot30_0crvShape" -p "footFront_L0_outpivot";
	rename -uid "BA183024-46BE-C251-F6CB-E4A7A756FF47";
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
createNode nurbsCurve -n "footFront_L0_outpivot30_1crvShape" -p "footFront_L0_outpivot";
	rename -uid "C7C77554-4C5D-D006-DC89-7E986CC8EE3C";
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
	rename -uid "C706FF3C-4D46-6B67-1AD7-BE9A972DC79D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722869 -0.31771180755405037 0.86340011285665952 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
	rename -uid "FDDE9D0C-4F5C-8B08-AF71-01BC41AF4932";
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
createNode nurbsCurve -n "footFront_L0_inpivot28Shape" -p "footFront_L0_inpivot";
	rename -uid "EEA715F0-4798-55B5-13CF-E99D703B4AE5";
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
createNode nurbsCurve -n "footFront_L0_inpivot29Shape" -p "footFront_L0_inpivot";
	rename -uid "4AF988E2-40E8-48C1-0D93-24902D6E59B6";
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
createNode nurbsCurve -n "footFront_L0_inpivot30Shape" -p "footFront_L0_inpivot";
	rename -uid "8D600469-429E-9C27-B0EC-B38FDF50973F";
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
createNode nurbsCurve -n "footFront_L0_inpivot30_0crvShape" -p "footFront_L0_inpivot";
	rename -uid "27CF6310-4988-7DDE-63FB-F3B722ECB26B";
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
createNode nurbsCurve -n "footFront_L0_inpivot30_1crvShape" -p "footFront_L0_inpivot";
	rename -uid "8FAFCC1C-45D8-1EF8-9719-69BDD235AF45";
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
	rename -uid "56BA5CF2-4E34-B912-C8D1-6AA9F00DEBCE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373568 -0.60300743522685696 -16.239037496288887 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 7.9431701648148056 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	rename -uid "6674D8CD-417F-2157-74E8-73B593FA4126";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig" -p "footFront_L0_1";
	rename -uid "8AAE9BED-48C1-1564-BDA8-CDA3801EED95";
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
	rename -uid "9498B7DB-436C-C2EC-548A-3C88419DF3E1";
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
	setAttr ".t" -type "double3" 10.017876024668167 5.4248605945583233 2.5678955088138196 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148083 7.9431701648148092 7.9431701648148128 ;
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
	rename -uid "484BFF2E-4F49-021B-C983-0BA62DB498B1";
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
createNode nurbsCurve -n "frontLegUI_L0_root28Shape" -p "frontLegUI_L0_root";
	rename -uid "93B1E9D5-4763-01B8-42E1-DB8DECF2DBE7";
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
createNode nurbsCurve -n "frontLegUI_L0_root29Shape" -p "frontLegUI_L0_root";
	rename -uid "F97B1EE4-4396-83E2-DD47-40828B95BF2A";
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
createNode nurbsCurve -n "frontLegUI_L0_root30Shape" -p "frontLegUI_L0_root";
	rename -uid "AFCEE360-487A-62BF-458C-FCAE42FA0805";
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
	rename -uid "0BC7E313-48E0-3252-4C88-6C8EF39D5DE1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 5.5511151231257827e-016 0.99999999999999778 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999911 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "legFront_L0_crv1" -p "legFront_L0_root";
	rename -uid "CD04BDD6-4F55-4205-6F8F-4785CBE11D92";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011672 -5.8086248814742643 -5.5045062328919343 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634854 2.5020602842634885 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	rename -uid "454ABF00-4146-1F69-B984-7D8CE24EE847";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig" -p "legFront_L0_crv1";
	rename -uid "ABCB3DBE-41BE-BB11-64D8-33A66854B36C";
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
	rename -uid "16C5E564-4F42-6698-C204-37860299274C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999878 0.99999999999999867 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "4CF11218-40DD-78A9-0AA1-B780A360F714";
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
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint10" -p "shoulder_L0_blade";
	rename -uid "9EDA6A0B-47C6-32EF-4117-E19BFE843364";
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
	setAttr ".rsrr" -type "double3" 3.3599751382069734 -13.5361294357731 -14.081236533000096 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint10" -p "shoulder_L0_blade";
	rename -uid "448DC2D3-4C08-40A8-BFAC-F4B00DA4BD88";
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
	rename -uid "76491234-4B23-6FC0-D1FA-349DC94B99F4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147562362 -2.5303629060493171 -1.9933533667490368 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "3CDDE94D-4276-489D-B8FF-9AA72E4012E4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "CE4C9980-4409-C5E8-BADB-11AFF40EE609";
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
	rename -uid "AD1B9CFE-41D6-AB95-A299-B6AFE0729448";
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
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 0.2008240179060829 ;
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
	rename -uid "C7EB9A6B-4E48-23D1-4730-8EAA85138F50";
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
	rename -uid "0E9BE228-4FAD-2249-9C28-1287AFE40FE6";
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
	rename -uid "8869069C-4AF7-E99E-46D2-36AC9CAC3A0A";
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
	rename -uid "70668BF5-42D4-9D1A-03DC-D9AE9157472C";
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
	rename -uid "56A31C10-4D21-B5E8-16E1-A6BCD28D2011";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.8325256145572465 -0.20882616370655205 0.2066360849488682 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999956 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_0_locShape" -p "shoulder_R0_0_loc";
	rename -uid "AA6B6FE7-47E5-0FD8-CFA5-B5A74A1388DD";
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
createNode nurbsCurve -n "shoulder_R0_0_loc10Shape" -p "shoulder_R0_0_loc";
	rename -uid "F34FC78F-49CD-1147-C777-DCB7312E2CB3";
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
createNode nurbsCurve -n "shoulder_R0_0_loc11Shape" -p "shoulder_R0_0_loc";
	rename -uid "8E9DC876-40CD-5680-A289-CD8AA5652910";
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
createNode nurbsCurve -n "shoulder_R0_0_loc12Shape" -p "shoulder_R0_0_loc";
	rename -uid "D476A072-45CB-8DB8-1031-BE906E284D75";
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
createNode nurbsCurve -n "shoulder_R0_0_loc12_0crvShape" -p "shoulder_R0_0_loc";
	rename -uid "BA8A2514-4FB5-F85D-BC91-7F888CADF5AF";
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
createNode nurbsCurve -n "shoulder_R0_0_loc12_1crvShape" -p "shoulder_R0_0_loc";
	rename -uid "FB7CB4BA-45C8-FA55-DFD4-60B2A8C7D441";
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
	rename -uid "93DCD161-4FAA-7C0E-BDB1-68A523E0B096";
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
	setAttr ".t" -type "double3" -1.2212453270876722e-015 -1.7763568394002505e-015 -4.4408920985006262e-016 ;
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
	rename -uid "1F93207F-4F68-259B-8E83-3B93033C7B60";
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
createNode nurbsCurve -n "legFront_R0_root10Shape" -p "legFront_R0_root";
	rename -uid "B0721C87-498C-9C04-E394-22ADE7C90E08";
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
createNode nurbsCurve -n "legFront_R0_root11Shape" -p "legFront_R0_root";
	rename -uid "D8E77828-49A2-CFEB-AC2D-8DB66E302377";
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
createNode nurbsCurve -n "legFront_R0_root12Shape" -p "legFront_R0_root";
	rename -uid "220CD8EF-402E-2387-A5F8-009FD986AEEB";
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
	rename -uid "F948DBAA-4243-504F-AFB2-E7BD522B0AC7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.1240863021370453 -0.48633856256837316 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_kneeShape" -p "legFront_R0_knee";
	rename -uid "39E58276-4C1D-0470-94CD-C2B6F75555EA";
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
createNode nurbsCurve -n "legFront_R0_knee10Shape" -p "legFront_R0_knee";
	rename -uid "17A07202-4CF1-83EA-3D07-75B0FF7A1E63";
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
createNode nurbsCurve -n "legFront_R0_knee11Shape" -p "legFront_R0_knee";
	rename -uid "FC36D39D-4D47-9364-BF1D-3EBBC9C9C3D0";
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
createNode nurbsCurve -n "legFront_R0_knee12Shape" -p "legFront_R0_knee";
	rename -uid "E9EA432A-42F1-2B08-FDD9-58AD4EAE1899";
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
createNode nurbsCurve -n "legFront_R0_knee12_0crvShape" -p "legFront_R0_knee";
	rename -uid "CE579D01-45C9-54A7-38B5-2CB8CA13E884";
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
createNode nurbsCurve -n "legFront_R0_knee12_1crvShape" -p "legFront_R0_knee";
	rename -uid "2456715C-44BD-3A9D-E88E-B7B8FACCDBF3";
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
	rename -uid "AFF8BAE9-44E1-1394-51DA-86A79B39DCF9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.3651516407059217 0.07390227040460573 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_ankleShape" -p "legFront_R0_ankle";
	rename -uid "7DCB0722-44AF-B676-7369-58B6D1AC90F4";
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
createNode nurbsCurve -n "legFront_R0_ankle10Shape" -p "legFront_R0_ankle";
	rename -uid "262ED5E7-411C-4E99-1A97-8FB6445C05AE";
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
createNode nurbsCurve -n "legFront_R0_ankle11Shape" -p "legFront_R0_ankle";
	rename -uid "14C723B1-4E0A-E442-2AA7-9D8FB2133749";
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
createNode nurbsCurve -n "legFront_R0_ankle12Shape" -p "legFront_R0_ankle";
	rename -uid "3559F5DD-45CC-9DDC-B49F-CE9C5955C0D9";
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
createNode nurbsCurve -n "legFront_R0_ankle12_0crvShape" -p "legFront_R0_ankle";
	rename -uid "EC0B3613-48CB-E5E5-4521-32805E5FC6B2";
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
createNode nurbsCurve -n "legFront_R0_ankle12_1crvShape" -p "legFront_R0_ankle";
	rename -uid "4023E91E-4CDD-CEDD-65A4-3C8ABE621A35";
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
	rename -uid "5066B57A-4C7A-D7A9-3F01-8E810C65F12F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -1.1294425054275483 0.023148533894219447 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
	rename -uid "01FE4AAB-478B-4D19-5F23-D694A4A26730";
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
createNode nurbsCurve -n "legFront_R0_foot10Shape" -p "legFront_R0_foot";
	rename -uid "A632EF25-40AC-DEA6-C8CD-A289AADB4512";
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
createNode nurbsCurve -n "legFront_R0_foot11Shape" -p "legFront_R0_foot";
	rename -uid "B3AFBCD2-42E2-9263-C640-789F665E406C";
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
createNode nurbsCurve -n "legFront_R0_foot12Shape" -p "legFront_R0_foot";
	rename -uid "33E42EA4-449B-8F8D-0826-C29FBB5133D6";
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
createNode nurbsCurve -n "legFront_R0_foot12_0crvShape" -p "legFront_R0_foot";
	rename -uid "D52B47AC-4BAA-E83B-A5D5-68A1503C53BC";
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
createNode nurbsCurve -n "legFront_R0_foot12_1crvShape" -p "legFront_R0_foot";
	rename -uid "074CAA1A-4E39-82D6-019E-3EBAD512A98A";
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
	rename -uid "E02FA7DF-446D-8080-52D2-7F99FCF1463B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 5.8286708792820718e-016 0.59657797851920957 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999911 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_effShape" -p "legFront_R0_eff";
	rename -uid "7FB80F58-422C-DE8A-EC85-48B8F5FDC70A";
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
createNode nurbsCurve -n "legFront_R0_eff10Shape" -p "legFront_R0_eff";
	rename -uid "2824937C-4D84-811A-96CD-3191C741FC06";
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
createNode nurbsCurve -n "legFront_R0_eff11Shape" -p "legFront_R0_eff";
	rename -uid "9E271E29-49FF-337A-7640-7F9A858EF868";
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
createNode nurbsCurve -n "legFront_R0_eff12Shape" -p "legFront_R0_eff";
	rename -uid "B5ED4F36-4D2B-2798-7DB6-5EA4484FE549";
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
createNode nurbsCurve -n "legFront_R0_eff12_0crvShape" -p "legFront_R0_eff";
	rename -uid "720D3144-4E5E-13EF-0C8B-788C16DE1DD6";
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
createNode nurbsCurve -n "legFront_R0_eff12_1crvShape" -p "legFront_R0_eff";
	rename -uid "B7F9A8B8-474F-1919-C20E-96A633067A48";
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
	rename -uid "7C101BBA-4001-596A-6B3A-83A37B2FF49F";
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
	setAttr ".t" -type "double3" 3.5527136788005009e-015 6.3837823915946501e-016 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514099 0.31499517602514093 0.31499517602514071 ;
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
	rename -uid "4FEE1EC5-4B1F-3F97-B417-0BA5D675B169";
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
createNode nurbsCurve -n "footFront_R0_root10Shape" -p "footFront_R0_root";
	rename -uid "0180B4E9-4C54-8FE1-21CA-79B361D34A60";
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
createNode nurbsCurve -n "footFront_R0_root11Shape" -p "footFront_R0_root";
	rename -uid "C0726CD5-419E-752B-B5D4-51B0CDD82ABC";
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
createNode nurbsCurve -n "footFront_R0_root12Shape" -p "footFront_R0_root";
	rename -uid "15E2A8E6-436D-11D4-DBDB-60B062B1BA38";
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
	rename -uid "0C39B3BF-46F8-7BD2-74DE-D1B4DC03BAC6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 5.5511151231257827e-016 0.75996190873518898 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_0_locShape" -p "footFront_R0_0_loc";
	rename -uid "127C1210-4364-0EE6-1A7D-D0958BAEDA8E";
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
createNode nurbsCurve -n "footFront_R0_0_loc10Shape" -p "footFront_R0_0_loc";
	rename -uid "F0641372-4FE9-2FD6-883D-A6B36DFD8993";
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
createNode nurbsCurve -n "footFront_R0_0_loc11Shape" -p "footFront_R0_0_loc";
	rename -uid "F261F9E4-4591-48F9-F0C6-909879CFC50F";
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
createNode nurbsCurve -n "footFront_R0_0_loc12Shape" -p "footFront_R0_0_loc";
	rename -uid "07E6D08D-4FEB-0292-BFF1-4BBFBFE51AFA";
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
createNode nurbsCurve -n "footFront_R0_0_loc12_0crvShape" -p "footFront_R0_0_loc";
	rename -uid "00107A2B-4D4A-A749-D427-20BCE0E778FC";
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
createNode nurbsCurve -n "footFront_R0_0_loc12_1crvShape" -p "footFront_R0_0_loc";
	rename -uid "AB550D02-4A68-76A7-A40D-9B9267F7E8E2";
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
	rename -uid "5C9ED157-4EB5-0024-8DA9-53BC737CB419";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -0.31771180755405098 0.73937999249393727 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_1_locShape" -p "footFront_R0_1_loc";
	rename -uid "A7DBC336-4098-F453-7957-81A236DE6626";
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
createNode nurbsCurve -n "footFront_R0_1_loc10Shape" -p "footFront_R0_1_loc";
	rename -uid "E4F3A559-4BF6-B986-CF4B-03AC9739AD4B";
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
createNode nurbsCurve -n "footFront_R0_1_loc11Shape" -p "footFront_R0_1_loc";
	rename -uid "3A6CCE02-4ABE-DCED-CEAB-E1B6EEFDD972";
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
createNode nurbsCurve -n "footFront_R0_1_loc12Shape" -p "footFront_R0_1_loc";
	rename -uid "B957AAC2-45FC-C1AB-AAF7-A38DD819CAC5";
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
createNode nurbsCurve -n "footFront_R0_1_loc12_0crvShape" -p "footFront_R0_1_loc";
	rename -uid "7FF77E8F-49B6-861A-CD9F-BEB7F69316C6";
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
createNode nurbsCurve -n "footFront_R0_1_loc12_1crvShape" -p "footFront_R0_1_loc";
	rename -uid "4B90832E-41BE-1F4B-55F0-62AA19B46A03";
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
	rename -uid "8290756A-4A2B-88CD-3CC5-0AABAE3F7E32";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373462 -0.60300743522684541 -16.239037496288901 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148074 -7.9431701648148083 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	rename -uid "8610FC89-43BC-C339-7C6F-899A8BBC8E7B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
	rename -uid "E21A9586-40A6-AEAF-62C1-C1982E103CAD";
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
	rename -uid "65E4B9A0-4F33-8611-88E6-02B47CAD39A6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-014 -0.31771180755405087 -0.067899908672075071 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_heelShape" -p "footFront_R0_heel";
	rename -uid "DE7BAAA6-4580-F632-6374-28B8424889F9";
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
createNode nurbsCurve -n "footFront_R0_heel10Shape" -p "footFront_R0_heel";
	rename -uid "BCC8B23D-4245-7006-CF70-E8B1CFAC922C";
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
createNode nurbsCurve -n "footFront_R0_heel11Shape" -p "footFront_R0_heel";
	rename -uid "2E3A485D-4A7D-3CA0-7A26-3AACB95E60D1";
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
createNode nurbsCurve -n "footFront_R0_heel12Shape" -p "footFront_R0_heel";
	rename -uid "F9245D21-4181-FA1C-DC9D-3B92A098B140";
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
createNode nurbsCurve -n "footFront_R0_heel12_0crvShape" -p "footFront_R0_heel";
	rename -uid "488E723F-4B93-54C5-6381-7C9D7C04C8D6";
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
createNode nurbsCurve -n "footFront_R0_heel12_1crvShape" -p "footFront_R0_heel";
	rename -uid "5173BC15-4895-F49D-85A8-F7BABF2D3124";
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
	rename -uid "B50BCA81-4F5B-51F8-35DD-C5AC45ACA67B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120628 -0.31771180755405043 0.69157185350467998 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_outpivotShape" -p "footFront_R0_outpivot";
	rename -uid "E8B0AF29-401D-F8C1-759D-838D617105DA";
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
createNode nurbsCurve -n "footFront_R0_outpivot10Shape" -p "footFront_R0_outpivot";
	rename -uid "DBB8D25F-413A-03AC-149C-21BF89755D1C";
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
createNode nurbsCurve -n "footFront_R0_outpivot11Shape" -p "footFront_R0_outpivot";
	rename -uid "6C987345-4E8B-AE40-616B-E3A305F54013";
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
createNode nurbsCurve -n "footFront_R0_outpivot12Shape" -p "footFront_R0_outpivot";
	rename -uid "7CD5A16D-4E76-ECBB-D14E-BEA5AA83ABF3";
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
createNode nurbsCurve -n "footFront_R0_outpivot12_0crvShape" -p "footFront_R0_outpivot";
	rename -uid "8F83197C-49B6-666C-22D3-6F858080EA64";
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
createNode nurbsCurve -n "footFront_R0_outpivot12_1crvShape" -p "footFront_R0_outpivot";
	rename -uid "8F8BB1D2-4E6F-A41B-8D2D-B68107C251A8";
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
	rename -uid "770ECB8C-4E75-52A1-B093-AFA1FBDBF81F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722931 -0.31771180755405065 0.86340011285664886 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_inpivotShape" -p "footFront_R0_inpivot";
	rename -uid "F383D284-4ED6-649D-FE61-42B6EC98384A";
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
createNode nurbsCurve -n "footFront_R0_inpivot10Shape" -p "footFront_R0_inpivot";
	rename -uid "3B3C44F5-4CC9-D6D6-39EF-9988941EE075";
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
createNode nurbsCurve -n "footFront_R0_inpivot11Shape" -p "footFront_R0_inpivot";
	rename -uid "63AC46E7-4E1B-5CBA-2979-FAA227E2B54C";
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
createNode nurbsCurve -n "footFront_R0_inpivot12Shape" -p "footFront_R0_inpivot";
	rename -uid "2CDF4A51-4CB7-ED40-E6AE-2FA0FBA3239E";
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
createNode nurbsCurve -n "footFront_R0_inpivot12_0crvShape" -p "footFront_R0_inpivot";
	rename -uid "CB62CFC7-48C6-CEFF-977C-D1B97607FA41";
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
createNode nurbsCurve -n "footFront_R0_inpivot12_1crvShape" -p "footFront_R0_inpivot";
	rename -uid "E0562481-4BCC-0050-D445-CCB321187943";
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
	rename -uid "983393B1-4554-9424-02FF-9F900DB356B1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373462 -0.60300743522684541 -16.239037496288901 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148074 -7.9431701648148083 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	rename -uid "177D60AF-4074-7C93-A648-ECA0B96044A4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig" -p "footFront_R0_1";
	rename -uid "1C37175C-4021-6D48-9FA9-ECA9145F6B65";
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
	rename -uid "52DB7B65-4FC3-04D3-9DD8-7BAEB98988D3";
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
	setAttr ".t" -type "double3" 10.017876024668189 5.4248605945583135 2.5678955088138125 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.943170164814811 7.943170164814811 7.9431701648148119 ;
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
	rename -uid "BBB98F5E-451F-0239-6E17-26A6E5E48C84";
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
createNode nurbsCurve -n "frontLegUI_R0_root10Shape" -p "frontLegUI_R0_root";
	rename -uid "9C989AC1-498D-5474-5C4E-04B2471A0EFB";
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
createNode nurbsCurve -n "frontLegUI_R0_root11Shape" -p "frontLegUI_R0_root";
	rename -uid "A504BC0A-4878-C941-C1CD-F6B546CE75CD";
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
createNode nurbsCurve -n "frontLegUI_R0_root12Shape" -p "frontLegUI_R0_root";
	rename -uid "79AF73CF-487D-9BCD-1ECC-259E4FDFC1FD";
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
	rename -uid "E9CBD7EA-4259-8580-86F4-2897BB624D90";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 3.3306690738754696e-016 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "legFront_R0_crv1" -p "legFront_R0_root";
	rename -uid "0D84929B-49F0-3ECE-64ED-68A626B4F383";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011703 -5.8086248814742616 -5.5045062328919361 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634867 -2.5020602842634885 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	rename -uid "A7FAB93E-4AF8-D039-3017-F59D34AE0EE0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig" -p "legFront_R0_crv1";
	rename -uid "89F3FE01-4C44-C044-A1FB-67935910FEFF";
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
	rename -uid "6090CB41-4711-33D3-3701-1B8E31732478";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.999999999999998 0.99999999999999878 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "C5F34932-440A-CF7E-45C8-BB814FB148DA";
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
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint4" -p "shoulder_R0_blade";
	rename -uid "E1B0033C-48EB-F2BC-A8CB-09B5537305D2";
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
	setAttr ".rsrr" -type "double3" 3.3599751382070089 -13.536129435773132 -14.081236533000359 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint4" -p "shoulder_R0_blade";
	rename -uid "C0537B5F-4ECF-8CB8-20E0-1EAB329ED81B";
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
	setAttr ".rst" -type "double3" 1.3877787807814457e-017 -4.4408920985006262e-016 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "AC238DF8-44BD-4808-D281-7DA8DDE5ADCB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.09516410914756368 -2.5303629060493167 -1.9933533667490371 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "4F7C87F4-4A78-FF08-66E9-04A579EA3C0B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "D887DE8E-458A-9A19-2E5B-36ACAE5C3DD4";
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
	rename -uid "5382B408-4526-0FB6-7FD7-08AE21E06269";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 1.000000000000002 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "1421C07A-4F04-CD03-D015-CFACD3E32E05";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint10" -p "spine_C0_blade";
	rename -uid "74A13ADF-49D5-59E1-FE77-A0A99D29B0C7";
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
	setAttr ".rsrr" -type "double3" 2.5444437451708109e-014 2.5444437451708115e-014 
		89.999999999999986 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint10" -p "spine_C0_blade";
	rename -uid "0E33B6E0-4426-CC78-2138-6085C0D3D6E5";
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
	rename -uid "63569C38-427E-1F82-A3F5-3D948D26BEED";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "8274694A-4ACA-3FB7-ABEF-E0B5706374EA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "FB23DB30-4069-7835-5712-FD800070BBB5";
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
	rename -uid "2A5B10EF-4ACC-ED9E-32E7-CEA7DDBB5C03";
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
	rename -uid "C6F815A5-44C3-4D6E-EDD3-0D882DCA29D0";
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
createNode nurbsCurve -n "legBack_L0_root28Shape" -p "legBack_L0_root";
	rename -uid "A75C738D-4104-8C88-66AA-7F91F2222674";
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
createNode nurbsCurve -n "legBack_L0_root29Shape" -p "legBack_L0_root";
	rename -uid "2152AE7F-4B43-B588-1A8D-F5AC2B451995";
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
createNode nurbsCurve -n "legBack_L0_root30Shape" -p "legBack_L0_root";
	rename -uid "C93A0414-4B9A-E2F3-AA4D-92B877FED5C1";
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
	rename -uid "E7858AA3-454D-4AA3-F5FB-DDAF99683DD6";
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
	rename -uid "AB189A9B-4692-2004-536A-6FACD2BDB9F2";
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
createNode nurbsCurve -n "legBack_L0_knee28Shape" -p "legBack_L0_knee";
	rename -uid "BE2233CC-4194-42EE-6824-2290ECBFD963";
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
createNode nurbsCurve -n "legBack_L0_knee29Shape" -p "legBack_L0_knee";
	rename -uid "8E200730-4853-3C01-F306-009BA98271A2";
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
createNode nurbsCurve -n "legBack_L0_knee30Shape" -p "legBack_L0_knee";
	rename -uid "CDB864BB-45B6-4835-258D-C7BEBB799F60";
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
createNode nurbsCurve -n "legBack_L0_knee30_0crvShape" -p "legBack_L0_knee";
	rename -uid "D1E6770F-4252-0133-DC48-B6B8E074D280";
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
createNode nurbsCurve -n "legBack_L0_knee30_1crvShape" -p "legBack_L0_knee";
	rename -uid "68EE3CE3-400A-5996-AD9F-59BA9616BC00";
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
	rename -uid "7E4EBA0F-4DE0-71A5-E6D0-A8B5B26940CA";
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
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000009 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_ankleShape" -p "legBack_L0_ankle";
	rename -uid "29F07D96-4B76-67BA-6C8A-A7AA4C90E601";
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
createNode nurbsCurve -n "legBack_L0_ankle28Shape" -p "legBack_L0_ankle";
	rename -uid "D00CA480-48E7-7ACD-9F06-FAAE4EA932D4";
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
createNode nurbsCurve -n "legBack_L0_ankle29Shape" -p "legBack_L0_ankle";
	rename -uid "F2F554C0-431B-4087-D227-18B22F3B4814";
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
createNode nurbsCurve -n "legBack_L0_ankle30Shape" -p "legBack_L0_ankle";
	rename -uid "07C1E7FC-46E6-10A5-40AA-B89DC391D8A7";
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
createNode nurbsCurve -n "legBack_L0_ankle30_0crvShape" -p "legBack_L0_ankle";
	rename -uid "A455569B-4875-EF6D-F97D-C5AD1C0F91EE";
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
createNode nurbsCurve -n "legBack_L0_ankle30_1crvShape" -p "legBack_L0_ankle";
	rename -uid "782E1595-464A-1812-F4E7-F58F8B4BB19F";
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
	rename -uid "65D5B6DA-436F-4CC3-A4E3-438E65BD0484";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -0.54805580751979199 0.15050522089872942 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_footShape" -p "legBack_L0_foot";
	rename -uid "D62BA7A7-484A-807A-33DA-5AB3CF269CE0";
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
createNode nurbsCurve -n "legBack_L0_foot28Shape" -p "legBack_L0_foot";
	rename -uid "E89304EF-4EC7-E230-C98D-1798FA5A2726";
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
createNode nurbsCurve -n "legBack_L0_foot29Shape" -p "legBack_L0_foot";
	rename -uid "4B51FCF3-47BC-82EF-BB06-6A8FAFF1CDA1";
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
createNode nurbsCurve -n "legBack_L0_foot30Shape" -p "legBack_L0_foot";
	rename -uid "D23E46E4-4BA4-CAFC-3A00-FEB79B29D207";
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
createNode nurbsCurve -n "legBack_L0_foot30_0crvShape" -p "legBack_L0_foot";
	rename -uid "4B542DF6-417A-AE01-CB54-4E9FB0F940ED";
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
createNode nurbsCurve -n "legBack_L0_foot30_1crvShape" -p "legBack_L0_foot";
	rename -uid "C7D65203-4A21-83FE-5456-96BF13CD3AAA";
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
	rename -uid "033F10A6-46C7-A168-AFFE-CAB6CE4DB74E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 7.7715611723760958e-016 0.2813564381970739 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999889 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_effShape" -p "legBack_L0_eff";
	rename -uid "E17C0F93-47C1-2CA5-F188-788305531D63";
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
createNode nurbsCurve -n "legBack_L0_eff28Shape" -p "legBack_L0_eff";
	rename -uid "3816C2D9-46E8-5D7C-8F76-299037FC2F1D";
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
createNode nurbsCurve -n "legBack_L0_eff29Shape" -p "legBack_L0_eff";
	rename -uid "DF06F4C8-42D4-591E-2597-C29A07165D69";
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
createNode nurbsCurve -n "legBack_L0_eff30Shape" -p "legBack_L0_eff";
	rename -uid "DD7812BB-4072-BE2D-2A74-C39C897FD820";
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
createNode nurbsCurve -n "legBack_L0_eff30_0crvShape" -p "legBack_L0_eff";
	rename -uid "68D2103E-4543-999A-17F8-638BCAD7CF8D";
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
createNode nurbsCurve -n "legBack_L0_eff30_1crvShape" -p "legBack_L0_eff";
	rename -uid "6D5E8E4D-49D8-0A0B-7840-D8922A90FAB6";
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
	rename -uid "64456414-44FF-79E9-386E-C3BC81D78907";
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
	setAttr ".t" -type "double3" 1.9984014443252818e-015 8.4654505627668186e-016 -1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398104 0.16356254765398084 0.16356254765398079 ;
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
	rename -uid "4D9A451B-4190-43AD-DCF2-FC904666B076";
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
createNode nurbsCurve -n "footBack_L0_root28Shape" -p "footBack_L0_root";
	rename -uid "F240BB79-4ED8-3DC9-FDC5-6C833C3F44CF";
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
createNode nurbsCurve -n "footBack_L0_root29Shape" -p "footBack_L0_root";
	rename -uid "D7B34F55-4F9B-9602-9F78-E4AA8D1D40A1";
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
createNode nurbsCurve -n "footBack_L0_root30Shape" -p "footBack_L0_root";
	rename -uid "23607EDD-4042-F920-8131-7EA01E47AD75";
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
	rename -uid "4BF3B537-4A8B-1133-DCA4-689B6213604F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.9539925233402755e-014 1.1102230246251565e-016 0.5456556530328065 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_0_locShape" -p "footBack_L0_0_loc";
	rename -uid "5D8741D5-436F-E8FE-EBA5-E99080384B6D";
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
createNode nurbsCurve -n "footBack_L0_0_loc28Shape" -p "footBack_L0_0_loc";
	rename -uid "6C651220-4CFE-3788-210D-50B78769DE9A";
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
createNode nurbsCurve -n "footBack_L0_0_loc29Shape" -p "footBack_L0_0_loc";
	rename -uid "F54A37D9-4482-353B-4F36-7CB1F9554A63";
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
createNode nurbsCurve -n "footBack_L0_0_loc30Shape" -p "footBack_L0_0_loc";
	rename -uid "8F7F8853-423A-2FF1-6070-D1A77C20DA6B";
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
createNode nurbsCurve -n "footBack_L0_0_loc30_0crvShape" -p "footBack_L0_0_loc";
	rename -uid "498C931B-4536-C90D-E986-2EB17DA486AA";
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
createNode nurbsCurve -n "footBack_L0_0_loc30_1crvShape" -p "footBack_L0_0_loc";
	rename -uid "0168341E-4214-C5AD-4728-56863A462449";
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
	rename -uid "9A979B3B-42E6-76F2-8601-44A61F71785F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -0.34547277013915562 0.7704607238979353 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999944 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
	rename -uid "8DDA92E0-4ED7-A63E-B1AD-A592D2AB585E";
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
createNode nurbsCurve -n "footBack_L0_1_loc28Shape" -p "footBack_L0_1_loc";
	rename -uid "B90600BF-4742-FA0E-7EE2-22805851D625";
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
createNode nurbsCurve -n "footBack_L0_1_loc29Shape" -p "footBack_L0_1_loc";
	rename -uid "6C235BD6-4C53-CDD3-BA7C-08B4DD71F348";
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
createNode nurbsCurve -n "footBack_L0_1_loc30Shape" -p "footBack_L0_1_loc";
	rename -uid "1EFB966E-47C0-C33F-7344-C4AA95672E7D";
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
createNode nurbsCurve -n "footBack_L0_1_loc30_0crvShape" -p "footBack_L0_1_loc";
	rename -uid "8745D993-4659-3694-15BE-6B8C0627293C";
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
createNode nurbsCurve -n "footBack_L0_1_loc30_1crvShape" -p "footBack_L0_1_loc";
	rename -uid "AEE3ADE1-4271-91B1-06E9-E0A7B4EC13AB";
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
	rename -uid "D3EDB472-49B0-E730-77AD-61938AFFDD1E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718944 -0.49678747209358615 11.584116504196629 ;
	setAttr ".s" -type "double3" 8.6433157474725721 8.6433157474725721 8.6433157474725757 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	rename -uid "4D6406B5-45A2-041A-022F-8F87C3AAC97B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
	rename -uid "91C144CA-4D6F-6812-8D29-F1B0D4EB2CBA";
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
	rename -uid "F98480A7-4E52-A627-C79F-43B6A4B8870F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.3092638912203256e-014 -0.34547277013915662 -0.37260003933977437 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_heelShape" -p "footBack_L0_heel";
	rename -uid "C106A96F-40B9-D4D6-D4A4-DDBE698BF85F";
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
createNode nurbsCurve -n "footBack_L0_heel28Shape" -p "footBack_L0_heel";
	rename -uid "B9E4CE38-49A2-A157-EF85-378BF920F1A0";
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
createNode nurbsCurve -n "footBack_L0_heel29Shape" -p "footBack_L0_heel";
	rename -uid "55FE6D87-4DB1-F338-C19B-4588C55D980D";
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
createNode nurbsCurve -n "footBack_L0_heel30Shape" -p "footBack_L0_heel";
	rename -uid "DFBB16A5-4374-2C36-BBFC-36B72B101800";
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
createNode nurbsCurve -n "footBack_L0_heel30_0crvShape" -p "footBack_L0_heel";
	rename -uid "83C67FE9-4633-4A39-B894-EFBCD141B651";
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
createNode nurbsCurve -n "footBack_L0_heel30_1crvShape" -p "footBack_L0_heel";
	rename -uid "ED8225D7-429D-1FD8-9D4A-76958C071F3B";
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
	rename -uid "3672A942-41B0-7C88-90FB-A2905BB8B292";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.042220658313969 -0.34547277013915545 0.11497296198779772 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_outpivotShape" -p "footBack_L0_outpivot";
	rename -uid "B84F5883-44F6-9F6B-0267-17B9DC799502";
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
createNode nurbsCurve -n "footBack_L0_outpivot28Shape" -p "footBack_L0_outpivot";
	rename -uid "CA534A40-4862-4CBE-5C49-178A91B1F96F";
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
createNode nurbsCurve -n "footBack_L0_outpivot29Shape" -p "footBack_L0_outpivot";
	rename -uid "2E7C7C92-4A80-9532-9DAA-4A910D1EC51C";
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
createNode nurbsCurve -n "footBack_L0_outpivot30Shape" -p "footBack_L0_outpivot";
	rename -uid "B5C6371D-41B7-6275-DB4B-42B96D5BB9F3";
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
createNode nurbsCurve -n "footBack_L0_outpivot30_0crvShape" -p "footBack_L0_outpivot";
	rename -uid "2F5319AA-42CC-BCD6-7BFA-39A436514DCC";
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
createNode nurbsCurve -n "footBack_L0_outpivot30_1crvShape" -p "footBack_L0_outpivot";
	rename -uid "BD54B3DD-4EBB-7F32-FFF6-3C9CB79B373F";
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
	rename -uid "B89A299B-4EEA-A04B-9BDF-8692B0549038";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215778 -0.34547277013915734 0.21228136011732879 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_inpivotShape" -p "footBack_L0_inpivot";
	rename -uid "606D4CF9-4DEB-DB72-1EBE-BFA4F2E5512A";
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
createNode nurbsCurve -n "footBack_L0_inpivot28Shape" -p "footBack_L0_inpivot";
	rename -uid "54AB2F73-49C7-1374-B534-829068FAF346";
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
createNode nurbsCurve -n "footBack_L0_inpivot29Shape" -p "footBack_L0_inpivot";
	rename -uid "3F749ECC-4A4D-88B4-C9C6-35AFB9554842";
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
createNode nurbsCurve -n "footBack_L0_inpivot30Shape" -p "footBack_L0_inpivot";
	rename -uid "B484B600-43EC-816C-2070-F1818C94B9D1";
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
createNode nurbsCurve -n "footBack_L0_inpivot30_0crvShape" -p "footBack_L0_inpivot";
	rename -uid "7C5108F3-4031-CBF8-0A0B-91960DFB8224";
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
createNode nurbsCurve -n "footBack_L0_inpivot30_1crvShape" -p "footBack_L0_inpivot";
	rename -uid "4463E774-4093-2E98-4316-FA9D224C891F";
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
	rename -uid "ADA55C76-4606-63BF-DA5B-5FABDFA673BF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718944 -0.49678747209358615 11.584116504196629 ;
	setAttr ".s" -type "double3" 8.6433157474725721 8.6433157474725721 8.6433157474725757 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	rename -uid "66AD2D88-4F94-8F2F-1288-F0926AD84814";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig" -p "footBack_L0_1";
	rename -uid "7BCF2B08-42E2-FE70-53CE-1D8657F7CD80";
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
	rename -uid "4B3A07D3-4DB1-8A34-E57E-F495FEA3626B";
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
	setAttr ".t" -type "double3" 7.9148715870389577 6.0337539388988617 -0.9201692139029678 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 8.6433157474725686 8.6433157474725792 8.6433157474725792 ;
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
	rename -uid "E60C2E6C-40FF-03A8-BAB7-49BC49B3AD88";
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
createNode nurbsCurve -n "backLegUI_L0_root28Shape" -p "backLegUI_L0_root";
	rename -uid "ECDA8EEA-409D-182A-3DB2-6FBC107FEC3C";
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
createNode nurbsCurve -n "backLegUI_L0_root29Shape" -p "backLegUI_L0_root";
	rename -uid "B1AFCA13-4DC3-1A4D-2C5D-FEB3FC0FDF66";
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
createNode nurbsCurve -n "backLegUI_L0_root30Shape" -p "backLegUI_L0_root";
	rename -uid "217E6AB9-4AE2-0F65-245E-6088DD918066";
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
	rename -uid "0DE1B9F7-4277-EF49-319D-71AFAAD9D108";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 3.3306690738754696e-016 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999933 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "legBack_L0_crv1" -p "legBack_L0_root";
	rename -uid "EA86BB1E-46F7-0A6F-AEA4-3AB8B0F2CDFA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807502 -3.2803056907023973 1.8090460715460559 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.4137227438343878 1.4137227438343878 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	rename -uid "0A5C15D6-422F-D4AE-F195-11BF0EFF1427";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig" -p "legBack_L0_crv1";
	rename -uid "5914E7C7-4828-4F76-9F5E-76AA57B9195A";
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
	rename -uid "DE48B6B4-4F9C-A79E-AA90-948BA2AE4A4A";
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
	rename -uid "CDF9EF35-4B8A-ED21-DEB7-7796DDEA342B";
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
createNode nurbsCurve -n "legBack_R0_root10Shape" -p "legBack_R0_root";
	rename -uid "8A233CF4-4D67-2D81-A59E-C4940A0E2CB9";
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
createNode nurbsCurve -n "legBack_R0_root11Shape" -p "legBack_R0_root";
	rename -uid "4D9F0DF8-4447-4F7F-656F-81B63F92DAA6";
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
createNode nurbsCurve -n "legBack_R0_root12Shape" -p "legBack_R0_root";
	rename -uid "39988CC6-43B2-A26B-CE9F-3ABBFBD340FF";
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
	rename -uid "00F0C1BF-4D5D-A740-DFAD-CC9891E53B50";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.1559508743798506 0.33714517700502133 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000013 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
	rename -uid "806BC195-43C0-C51E-0A4D-588C3566282C";
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
createNode nurbsCurve -n "legBack_R0_knee10Shape" -p "legBack_R0_knee";
	rename -uid "7ADE277B-477A-9716-B164-5FA9960EECA3";
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
createNode nurbsCurve -n "legBack_R0_knee11Shape" -p "legBack_R0_knee";
	rename -uid "938E02DC-4DD0-E2E2-1995-6794B76DE82E";
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
createNode nurbsCurve -n "legBack_R0_knee12Shape" -p "legBack_R0_knee";
	rename -uid "4D348553-46F5-B3DE-9C63-2D9CE7E09ACA";
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
createNode nurbsCurve -n "legBack_R0_knee12_0crvShape" -p "legBack_R0_knee";
	rename -uid "1F748170-48BC-E03D-FE9C-07A9E7506D29";
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
createNode nurbsCurve -n "legBack_R0_knee12_1crvShape" -p "legBack_R0_knee";
	rename -uid "C9DC81DA-43B7-C734-F546-0D9C852E0650";
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
	rename -uid "4A2AC9A0-4E64-9E38-0314-DE8870089E8C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -1.4950431842245444 -0.57333193410462258 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999856 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_ankleShape" -p "legBack_R0_ankle";
	rename -uid "24B17C20-4E03-93F4-764C-EDA899150B07";
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
createNode nurbsCurve -n "legBack_R0_ankle10Shape" -p "legBack_R0_ankle";
	rename -uid "862E540A-4692-2C97-7157-9AA89F808CD4";
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
createNode nurbsCurve -n "legBack_R0_ankle11Shape" -p "legBack_R0_ankle";
	rename -uid "33C122EB-4758-7FC3-3616-69B1CC8C5AC9";
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
createNode nurbsCurve -n "legBack_R0_ankle12Shape" -p "legBack_R0_ankle";
	rename -uid "66834971-4812-782B-6237-8F8607DE173E";
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
createNode nurbsCurve -n "legBack_R0_ankle12_0crvShape" -p "legBack_R0_ankle";
	rename -uid "B4DFEE69-4B86-64DE-0656-B7ADDE981CF2";
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
createNode nurbsCurve -n "legBack_R0_ankle12_1crvShape" -p "legBack_R0_ankle";
	rename -uid "30E960AC-4AD1-9C21-BE9E-76B9B48CF2DC";
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
	rename -uid "9DF7D00C-433B-4012-95E2-1786DB42FAA7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 -0.54805580751979321 0.15050522089872898 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000013 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_footShape" -p "legBack_R0_foot";
	rename -uid "EE572CAC-4FF9-4615-F1E6-3FA06FCA6D46";
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
createNode nurbsCurve -n "legBack_R0_foot10Shape" -p "legBack_R0_foot";
	rename -uid "8897D2EB-47DA-1019-5F53-17BE3FB8FCB3";
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
createNode nurbsCurve -n "legBack_R0_foot11Shape" -p "legBack_R0_foot";
	rename -uid "6D344466-496F-8103-6F9C-5D8E80BB15E3";
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
createNode nurbsCurve -n "legBack_R0_foot12Shape" -p "legBack_R0_foot";
	rename -uid "69CD6657-429F-C9CB-8810-40A053BA6AE3";
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
createNode nurbsCurve -n "legBack_R0_foot12_0crvShape" -p "legBack_R0_foot";
	rename -uid "B9C34343-462E-931B-58CD-77A132877A7F";
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
createNode nurbsCurve -n "legBack_R0_foot12_1crvShape" -p "legBack_R0_foot";
	rename -uid "E07E293A-46F7-0C85-3384-908943597875";
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
	rename -uid "987DF9A5-4B7B-A1E6-C5A5-CCA7F4931AEB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.6613381477509392e-016 6.2450045135165055e-016 0.28135643819707479 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999911 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_effShape" -p "legBack_R0_eff";
	rename -uid "7ED34026-43F3-6990-145F-A581AC50B94B";
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
createNode nurbsCurve -n "legBack_R0_eff10Shape" -p "legBack_R0_eff";
	rename -uid "0F921338-4927-21A6-F4A8-2A88A4E451E3";
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
createNode nurbsCurve -n "legBack_R0_eff11Shape" -p "legBack_R0_eff";
	rename -uid "2BBF9AFF-4B92-71A9-0812-E0922ACE358F";
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
createNode nurbsCurve -n "legBack_R0_eff12Shape" -p "legBack_R0_eff";
	rename -uid "5C234E72-4F52-57F0-5806-438512CE4C4A";
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
createNode nurbsCurve -n "legBack_R0_eff12_0crvShape" -p "legBack_R0_eff";
	rename -uid "9ED5FACF-444E-52A1-C6D7-1C8A6B1BF647";
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
createNode nurbsCurve -n "legBack_R0_eff12_1crvShape" -p "legBack_R0_eff";
	rename -uid "675FC52B-4C7A-3573-98CF-1D89ECAF72D8";
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
	rename -uid "65F2D004-4E57-52EF-4A28-9BBB00104879";
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
	setAttr ".t" -type "double3" 0 7.3552275381416621e-016 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398087 0.16356254765398087 0.16356254765398076 ;
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
	rename -uid "2BFA778A-454C-408A-B563-D1B69487716A";
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
createNode nurbsCurve -n "footBack_R0_root10Shape" -p "footBack_R0_root";
	rename -uid "387C9059-45D4-1691-75C5-F9936AA239F2";
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
createNode nurbsCurve -n "footBack_R0_root11Shape" -p "footBack_R0_root";
	rename -uid "6BDE04C1-4FDE-39D8-FA9F-E48BAAE3319A";
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
createNode nurbsCurve -n "footBack_R0_root12Shape" -p "footBack_R0_root";
	rename -uid "ABCE43B9-4F9A-CBEB-F02E-798E90CF28BC";
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
	rename -uid "D5DABD2C-4961-8FC3-F6DE-AFAA9BBCFD19";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-015 0 0.54565565303279762 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_0_locShape" -p "footBack_R0_0_loc";
	rename -uid "9E75B065-4810-4B81-8DC6-DDAF4298BFCC";
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
createNode nurbsCurve -n "footBack_R0_0_loc10Shape" -p "footBack_R0_0_loc";
	rename -uid "B1DC8DAC-4F7D-391D-A5E7-32855D454F8E";
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
createNode nurbsCurve -n "footBack_R0_0_loc11Shape" -p "footBack_R0_0_loc";
	rename -uid "9CA471A6-4B6F-3344-A367-089D363A9908";
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
createNode nurbsCurve -n "footBack_R0_0_loc12Shape" -p "footBack_R0_0_loc";
	rename -uid "2D30C9C0-4BF5-A4CD-260C-DC8723222C9E";
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
createNode nurbsCurve -n "footBack_R0_0_loc12_0crvShape" -p "footBack_R0_0_loc";
	rename -uid "19C6DD55-4DCB-3944-C8EF-858981BE889E";
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
createNode nurbsCurve -n "footBack_R0_0_loc12_1crvShape" -p "footBack_R0_0_loc";
	rename -uid "B6D4D00A-42EE-3BBF-1658-68941848D0F2";
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
	rename -uid "694DD702-4FB4-4D83-6E50-D8ADFA19F21E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -0.345472770139156 0.7704607238979353 ;
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
	rename -uid "A3FBC1EE-4B57-18FB-987E-C2A09A4D4C12";
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
createNode nurbsCurve -n "footBack_R0_1_loc10Shape" -p "footBack_R0_1_loc";
	rename -uid "BCA34B22-4BE3-ED94-A401-FC96B2DEFBD4";
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
createNode nurbsCurve -n "footBack_R0_1_loc11Shape" -p "footBack_R0_1_loc";
	rename -uid "1D3EDE20-4A20-CB80-44F0-9FB2000189E8";
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
createNode nurbsCurve -n "footBack_R0_1_loc12Shape" -p "footBack_R0_1_loc";
	rename -uid "7E3238E4-46B4-FE7E-578E-539107CF9BB2";
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
createNode nurbsCurve -n "footBack_R0_1_loc12_0crvShape" -p "footBack_R0_1_loc";
	rename -uid "33B50209-4CD5-6FE2-111B-F393046F3A15";
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
createNode nurbsCurve -n "footBack_R0_1_loc12_1crvShape" -p "footBack_R0_1_loc";
	rename -uid "D1B34FDC-4AD1-4E35-F058-F391A1C41B63";
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
	rename -uid "E55B715B-425F-7AC7-CE64-2EAEEC1FCF1D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718956 -0.49678747209357826 11.58411650419662 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".s" -type "double3" 8.6433157474725828 8.6433157474725739 -8.6433157474725828 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	rename -uid "C2A0B133-434A-E63A-1203-A39C9455D9CF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
	rename -uid "DCA1F53F-460B-384C-11C5-048037AECE7B";
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
	rename -uid "7F7A29AF-47FA-8A8B-D543-57AF0AD4F237";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2434497875801753e-014 -0.3454727701391565 -0.37260003933978503 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_heelShape" -p "footBack_R0_heel";
	rename -uid "58DC7E16-4510-088A-3F4B-51903D6F02DD";
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
createNode nurbsCurve -n "footBack_R0_heel10Shape" -p "footBack_R0_heel";
	rename -uid "1E660C9F-4739-C420-4DD3-F9AB43EED187";
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
createNode nurbsCurve -n "footBack_R0_heel11Shape" -p "footBack_R0_heel";
	rename -uid "C4783D04-43B0-BC13-F3D7-11BA22201895";
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
createNode nurbsCurve -n "footBack_R0_heel12Shape" -p "footBack_R0_heel";
	rename -uid "C81B63CF-4652-BC36-C8B6-8EBA7563ACBD";
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
createNode nurbsCurve -n "footBack_R0_heel12_0crvShape" -p "footBack_R0_heel";
	rename -uid "D273430A-4B0A-AAE8-88CD-AC936AC8C739";
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
createNode nurbsCurve -n "footBack_R0_heel12_1crvShape" -p "footBack_R0_heel";
	rename -uid "BB9EF216-41A3-0599-969C-9095DD667D7D";
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
	rename -uid "003A573B-4059-C6B7-F7D4-BEB649B5F9B1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139797 -0.34547277013915645 0.11497296198778884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_outpivotShape" -p "footBack_R0_outpivot";
	rename -uid "C8125C93-4428-A77F-8595-6C9FCD4F5C17";
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
createNode nurbsCurve -n "footBack_R0_outpivot10Shape" -p "footBack_R0_outpivot";
	rename -uid "581E4A5D-4203-BD6D-0C6D-9AAE2442A50F";
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
createNode nurbsCurve -n "footBack_R0_outpivot11Shape" -p "footBack_R0_outpivot";
	rename -uid "5C9BDA59-4E17-944A-A21E-CCA6DA835DFA";
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
createNode nurbsCurve -n "footBack_R0_outpivot12Shape" -p "footBack_R0_outpivot";
	rename -uid "6EF5BF3A-4188-7CB5-24E6-009F0A3B2A5B";
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
createNode nurbsCurve -n "footBack_R0_outpivot12_0crvShape" -p "footBack_R0_outpivot";
	rename -uid "62E0C64F-45BA-A9E0-C660-E0894D61C648";
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
createNode nurbsCurve -n "footBack_R0_outpivot12_1crvShape" -p "footBack_R0_outpivot";
	rename -uid "2B805A7A-477B-BECC-FD73-26BC1D917E13";
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
	rename -uid "59F3E188-41B9-380E-94D2-8A9D764FDED2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215654 -0.34547277013915628 0.21228136011731635 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_inpivotShape" -p "footBack_R0_inpivot";
	rename -uid "09F40C2E-4D93-240D-0648-5AB0708E38CB";
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
createNode nurbsCurve -n "footBack_R0_inpivot10Shape" -p "footBack_R0_inpivot";
	rename -uid "1EE7205F-44F5-451A-FAE4-979D644C8DBA";
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
createNode nurbsCurve -n "footBack_R0_inpivot11Shape" -p "footBack_R0_inpivot";
	rename -uid "7C1D0973-4CDD-806B-18B2-96ADF5D5BFCD";
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
createNode nurbsCurve -n "footBack_R0_inpivot12Shape" -p "footBack_R0_inpivot";
	rename -uid "B9E0180C-4B44-435A-47DF-C9971A51C139";
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
createNode nurbsCurve -n "footBack_R0_inpivot12_0crvShape" -p "footBack_R0_inpivot";
	rename -uid "566D7B6E-463B-1592-B9D8-1EA7E3CBC2A1";
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
createNode nurbsCurve -n "footBack_R0_inpivot12_1crvShape" -p "footBack_R0_inpivot";
	rename -uid "B1628437-4F74-A2B8-C3A5-CAA6023CEADE";
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
	rename -uid "7B6B3701-425E-12F4-3B30-DEB07DAF273E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718956 -0.49678747209357826 11.58411650419662 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".s" -type "double3" 8.6433157474725828 8.6433157474725739 -8.6433157474725828 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	rename -uid "9E0672CE-4674-B050-75C2-19B23C8C382C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig" -p "footBack_R0_1";
	rename -uid "23C7661C-4AB7-2B07-2EF3-EE943A1F2FBA";
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
	rename -uid "C5ADACD4-4DC8-8444-CA5F-29B6AE182160";
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
	setAttr ".t" -type "double3" 7.9148715870389879 6.0337539388988546 -0.92016921390296247 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 8.6433157474725792 8.6433157474725792 8.6433157474725864 ;
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
	rename -uid "88787952-4B20-D692-C8AA-689CA832FCA4";
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
createNode nurbsCurve -n "backLegUI_R0_root10Shape" -p "backLegUI_R0_root";
	rename -uid "273C8F5C-4E42-ABBA-2779-8CA1132A5A14";
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
createNode nurbsCurve -n "backLegUI_R0_root11Shape" -p "backLegUI_R0_root";
	rename -uid "91992E14-42D1-4ED3-F5D6-A193D43B8DBD";
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
createNode nurbsCurve -n "backLegUI_R0_root12Shape" -p "backLegUI_R0_root";
	rename -uid "D9708B9F-4A83-6D54-E4F7-9B93C862854C";
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
	rename -uid "B251CEA5-42B4-860C-CE5A-A2B5E5CA137E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 1.1102230246251565e-016 0.99999999999999889 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999933 0.99999999999999944 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "legBack_R0_crv1" -p "legBack_R0_root";
	rename -uid "F52045CD-455E-4EA4-8DBE-0EA0DDCE1BB0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807555 -3.2803056907023964 1.8090460715460541 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.413722743834388 -1.4137227438343878 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	rename -uid "747CB249-4AD6-2400-7A7F-EEAB17A47EA0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig" -p "legBack_R0_crv1";
	rename -uid "4DD36B9A-4A9A-2C83-5B71-DC9290150AFF";
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
	rename -uid "6A949668-42D7-635F-DCF6-CDB5E01725C4";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "FF0C38F0-48D2-FE0B-95CB-0D981FFF1D7C";
createNode displayLayer -n "defaultLayer";
	rename -uid "160727EA-4568-0465-2638-FBA688FB6A44";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "106D26DC-4CEB-74EC-5D1B-C69F059CF2CC";
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
createNode animCurveUU -n "spine_C0_root_st_profile1";
	rename -uid "B50EE7EF-463B-46F4-5284-D3BE5063D97F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	rename -uid "82234C4C-43C8-9862-DA81-EAB594D522D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion40";
	rename -uid "6C5AC876-43A0-3C48-F0EF-E8916F4147FC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns229";
	rename -uid "5E553FB4-491B-4CE5-01DB-A59162B164D9";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak229";
	rename -uid "2B728CA3-4F9B-C140-835E-7B8119A0C7F1";
createNode objectSet -n "mgear_curveCns229Set";
	rename -uid "8D7B5D23-47AF-265A-8A2D-4CA62D6DBA92";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns229GroupId";
	rename -uid "16237DDA-4D30-ABDE-7077-D999C0A110E9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns229GroupParts";
	rename -uid "51B5A4E6-4456-7B0E-F6D8-C8B18DA3C1B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet229";
	rename -uid "A483B372-4245-7E4A-A9E3-70B7CB73434A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId458";
	rename -uid "27AC581F-4228-AE52-A17B-2F871AFE36B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts458";
	rename -uid "404E3FC8-4CDA-4677-F400-7E85753B3C85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile1";
	rename -uid "1257A910-403A-B2FD-EE35-5490762B0848";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	rename -uid "79B6BA2E-4381-9446-F75D-F58AEEFC31FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion41";
	rename -uid "52AB4582-40A6-1201-5435-648B214B2F18";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns230";
	rename -uid "47D83F70-436A-87D3-48A9-9A88A535EEE5";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak230";
	rename -uid "1AF9EF2E-4530-9E3F-AB4F-F5916902EE2B";
createNode objectSet -n "mgear_curveCns230Set";
	rename -uid "B9673A1E-459F-D178-F0F7-CEB787A2BBAF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns230GroupId";
	rename -uid "2F00B7F7-47C8-A323-866C-CF96325B683A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns230GroupParts";
	rename -uid "885FC61E-4775-108A-075A-9C8C1D35DFAA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet230";
	rename -uid "8F1BFFB7-4659-6689-734C-7BAA894BB178";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId460";
	rename -uid "D89FEE44-4156-3D73-6C6B-73904D3D468C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts460";
	rename -uid "CF9559E9-4F52-6A7F-A7AD-FF87A51B0A3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns231";
	rename -uid "13310217-4BCF-2FC4-5A14-6DB7AAC8B55E";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak231";
	rename -uid "856467B4-4B58-FDF8-8290-DF8F258682EA";
createNode objectSet -n "mgear_curveCns231Set";
	rename -uid "4B4F4082-4C0E-E1A1-7F6C-FEBFCA28B7CE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns231GroupId";
	rename -uid "75282E05-4BF3-AF36-EA91-AB8FF5F6A263";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns231GroupParts";
	rename -uid "A67990A7-40B3-B5CD-B07C-BB8C849DDA7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet231";
	rename -uid "4571D2A9-4D29-F0CF-3C76-45B7719212C3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId462";
	rename -uid "05FDD3F0-426A-EB39-B867-F6A1C381D0D8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts462";
	rename -uid "04C9AD3F-4A77-8272-934F-E59E20B0109A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns232";
	rename -uid "492D6D7A-4346-1F09-55B6-DF9D9B11E1B5";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak232";
	rename -uid "6CBAF341-4C0A-2265-4DF9-C1BAFCAA4978";
createNode objectSet -n "mgear_curveCns232Set";
	rename -uid "65B07555-482D-39B2-B8AB-3682A509443B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns232GroupId";
	rename -uid "64353058-463C-1DB5-CBD2-B9A5D7738010";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns232GroupParts";
	rename -uid "4E5B10DB-4EB9-3CE6-D7E7-A1B024A324BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet232";
	rename -uid "89822E2C-4DE8-66F9-2DA3-54809CB07DF8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId464";
	rename -uid "B93598BB-47B2-1A23-5852-C89219A55A0A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts464";
	rename -uid "7413B51E-441E-C6EA-23A4-C594D9E0C663";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns233";
	rename -uid "81F96365-4741-BE53-D631-3F9AE07BA355";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak233";
	rename -uid "81885961-4100-B528-96AF-83BF80049BD3";
createNode objectSet -n "mgear_curveCns233Set";
	rename -uid "5ABA32C6-47AA-D8D6-C81A-FFBD6FA87B98";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns233GroupId";
	rename -uid "D0007602-4210-9D7C-EA35-CE873DF67003";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns233GroupParts";
	rename -uid "0420B71B-488D-A3A0-1972-9495D69E4898";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet233";
	rename -uid "2D43480D-48AA-7799-CEF5-26B8C046F4E7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId466";
	rename -uid "757ADA98-4A26-6801-CCEC-6CBEF23A1858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts466";
	rename -uid "F81E615D-4F1D-9DE6-CB33-5AB9483BD96E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns234";
	rename -uid "C22A9E4B-4FE2-BF68-DA6D-7B84074EED0B";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak234";
	rename -uid "D68AD5A9-4AC5-3CCD-93DA-54A30DEE83BD";
createNode objectSet -n "mgear_curveCns234Set";
	rename -uid "523B709C-4EBD-A3A2-EC89-368458CB3839";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns234GroupId";
	rename -uid "BB0BA9BD-46E3-0E4F-1487-EDB9F55DEA22";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns234GroupParts";
	rename -uid "01C6C737-4530-42A5-EFFA-758442972D4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet234";
	rename -uid "62865592-4C3A-F01C-D8F0-4BA2BA98F346";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId468";
	rename -uid "ACE59BB8-4BBC-D1C9-32A0-9B988690CC72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts468";
	rename -uid "51C951A1-4AB6-2F26-C7AB-8F9BC2E54682";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns235";
	rename -uid "7EF98EF8-4A65-4A3A-6CFC-67BF51F66F1F";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak235";
	rename -uid "944FD136-4BB7-C2F1-E60A-4B94F5F408AA";
createNode objectSet -n "mgear_curveCns235Set";
	rename -uid "DC6C3944-42BA-B22B-9896-6EA87BF9C9E5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns235GroupId";
	rename -uid "53353DCD-4187-0F70-1973-D484D5B34625";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns235GroupParts";
	rename -uid "8ADCC0C8-40BB-E38F-B7FB-24AAEC317FA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet235";
	rename -uid "E89D0DFB-437B-B0EC-FC12-659FCDA087B8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId470";
	rename -uid "26D8C0C4-4FB7-B7C4-BC7D-4EA3E82D1C6B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts470";
	rename -uid "3CFC1DDF-4242-5353-7577-0CAD29358CB2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns236";
	rename -uid "C10A7FA4-4DD8-CD4F-D2F2-B399AE72904E";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak236";
	rename -uid "D8C49BC9-4679-243A-F88D-89A1B9A2D05C";
createNode objectSet -n "mgear_curveCns236Set";
	rename -uid "43C09490-4D2D-6185-E15D-88A90AD54E31";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns236GroupId";
	rename -uid "69769035-4374-9821-9E53-758ADCEBF25A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns236GroupParts";
	rename -uid "ADCD63E0-408B-AAEB-33F1-8780F2A31319";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet236";
	rename -uid "7E9A1771-4916-3C55-EB01-BDB9F3DD2217";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId472";
	rename -uid "AB5BB3B4-4E93-BA23-0A08-F3AC835DD412";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts472";
	rename -uid "90307328-43BA-1C50-1C59-E8B22433454C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns237";
	rename -uid "9F5F58A4-46C4-1CE3-C799-65BDE6B6CCB3";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak237";
	rename -uid "C7682EC1-45CC-665A-C093-8AAD19BF6BDE";
createNode objectSet -n "mgear_curveCns237Set";
	rename -uid "56F1DCC2-4F99-44ED-DA35-7F96FBC24A97";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns237GroupId";
	rename -uid "306572BF-494B-A6CA-3AC9-6AAEFB09DCE7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns237GroupParts";
	rename -uid "5BE87BC1-4140-B089-D261-5091431503E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet237";
	rename -uid "71D79C9D-4B2E-F00B-56F2-11A2333EE29D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId474";
	rename -uid "5472299B-42A7-6FCE-61A6-948D8534105E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts474";
	rename -uid "C9411260-43BB-2BB5-33DE-90B7143F6B04";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion42";
	rename -uid "5EA68FF4-4196-EF17-2792-C59968DBE32C";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns238";
	rename -uid "585A7905-422D-1A3A-B28F-4188A0ABC53E";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak238";
	rename -uid "DB89F553-49F7-403F-D808-8FBABF402838";
createNode objectSet -n "mgear_curveCns238Set";
	rename -uid "BE4FE6D6-42C9-DE01-7021-FC9442556B21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns238GroupId";
	rename -uid "932F8036-4DD2-78EF-0323-F68244EB9639";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns238GroupParts";
	rename -uid "AC337BC6-4627-F7FF-A773-DBA042E7A86E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet238";
	rename -uid "C449ECE4-4483-896D-4FAD-7A9F488FD674";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId476";
	rename -uid "D9360F5E-4494-2E28-AFC9-54AB60C06514";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts476";
	rename -uid "CBF2FA2B-4CE4-9F70-EB4E-A9A6AB57938B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile1";
	rename -uid "2697546F-4F2A-8A89-80EF-4C8A23E04412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile1";
	rename -uid "E58D0EA3-42E8-B48D-6AA7-DE8F60E70835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns239";
	rename -uid "CC537D40-4FF1-14BC-600F-6EAD2800A85E";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak239";
	rename -uid "C87047C5-4469-7A99-14CF-AE8A7B29C84D";
createNode objectSet -n "mgear_curveCns239Set";
	rename -uid "C2B296C9-4DFC-1A4A-B32B-198D2942EAE4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns239GroupId";
	rename -uid "3F74B2BB-450D-5C4D-0414-5398A6A869C0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns239GroupParts";
	rename -uid "AE38AB9B-4429-F050-FAF3-678635086C9A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet239";
	rename -uid "87FBD09D-45DE-6906-1E33-BABDE1C9F47B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId478";
	rename -uid "465AD5F5-4F59-5038-F063-A683AB8B5D29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts478";
	rename -uid "365C298A-4E56-246E-AAF6-3F8A949400F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns240";
	rename -uid "CE4A6402-49C6-C1F4-091F-3E80A153D01B";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak240";
	rename -uid "E95F0CC4-447F-78A6-0C69-C88FD246B90C";
createNode objectSet -n "mgear_curveCns240Set";
	rename -uid "8E069291-4D4D-D3F8-0B7A-C9AEB5D8AFAD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns240GroupId";
	rename -uid "C15C0503-4B6F-1F03-DD0F-3192F8985B54";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns240GroupParts";
	rename -uid "DA9BA065-405C-98C7-699D-1583F465A0B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet240";
	rename -uid "D4F807C5-430A-C85F-BA67-2D93E881932F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId480";
	rename -uid "5749502D-4168-C75F-6FAB-05AC0A35DC50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts480";
	rename -uid "951111FD-4BBF-4535-0137-C88F3DA1D5D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns241";
	rename -uid "44AF23A1-449F-852A-B9C7-65A64EE8551F";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak241";
	rename -uid "D1461DA1-4A79-690E-27FD-E482EF44554D";
createNode objectSet -n "mgear_curveCns241Set";
	rename -uid "D734FB2E-411E-F8D6-EF31-B380D914E341";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns241GroupId";
	rename -uid "F395C21B-4303-B807-F78B-53941A3B1118";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns241GroupParts";
	rename -uid "F2E1E553-4158-3D1B-940A-E9B2488B1AA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet241";
	rename -uid "28CAEF8A-4388-C979-A27D-8AB1FBEB17D0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId482";
	rename -uid "E7BA394B-4E2A-7616-F036-3EA2EE67688E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts482";
	rename -uid "AEDE108D-4D71-4FA4-330D-A7BEDB982235";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion43";
	rename -uid "06C3B9F7-4549-DB1E-9B73-B8875F3E793C";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns242";
	rename -uid "277F274C-4C39-63DD-85B3-AE8EC94890EB";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak242";
	rename -uid "7A250F2B-42FA-EED1-CC9A-2098C0A8B9E5";
createNode objectSet -n "mgear_curveCns242Set";
	rename -uid "91925110-45FB-AEDD-AC7A-89AAE66175E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns242GroupId";
	rename -uid "26BDD08C-4F21-90AF-15A5-7FAC5DA59BA0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns242GroupParts";
	rename -uid "7A2BE151-44DB-AE13-1910-A3A5D143183E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet242";
	rename -uid "2E870E7B-472D-12C6-19F1-1580403A4108";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId484";
	rename -uid "4F287844-48AB-CFA7-12CF-C3BB1D556C62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts484";
	rename -uid "212E3C6A-4E70-0CB1-E9AE-13BC12345D65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile1";
	rename -uid "340A48AC-443F-D5A4-12DB-BFB1B5744182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile1";
	rename -uid "F0A53381-4583-92D9-3681-BE95AE18C819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns243";
	rename -uid "D64CD3B1-46E8-2274-D5AC-C4AC0A497C4B";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak243";
	rename -uid "0DC579E1-4FCE-324A-4D64-69B720DB3083";
createNode objectSet -n "mgear_curveCns243Set";
	rename -uid "B5138942-4361-3BE1-BDCB-7AA805A77374";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns243GroupId";
	rename -uid "247AF481-4640-03DA-7499-55B528CB8F8E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns243GroupParts";
	rename -uid "CB60C23E-40FD-D8DE-2C11-A18B54DE27CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet243";
	rename -uid "CCA48F42-4243-C194-A849-BF8BBC5CEF06";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId486";
	rename -uid "47F89151-4437-EB1C-BAE0-7A845016ED8F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts486";
	rename -uid "A1C29EB7-4B1A-F27B-5598-D9BF6DAA3B81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns244";
	rename -uid "AA8CBB27-4409-F480-F706-8384753A6F15";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak244";
	rename -uid "5FD624BF-4064-D1B1-C7E9-C38DF3A91515";
createNode objectSet -n "mgear_curveCns244Set";
	rename -uid "665A88EB-47D3-B3AC-286A-F2B4DD340590";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns244GroupId";
	rename -uid "F0F7ED49-467F-8193-7C52-7E8CC7B49C8B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns244GroupParts";
	rename -uid "F0F63CA3-4D03-4447-FD1A-D8A14BB6688E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet244";
	rename -uid "16EBA410-4AC0-D18F-3BC3-CF99E13C6298";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId488";
	rename -uid "06F41E50-44D5-18D3-CBF3-719BAFDF79F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts488";
	rename -uid "AD3B9A47-4831-FAD7-EC23-6C8C3E164BF8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns245";
	rename -uid "FA6EA835-4F41-9226-E2DD-01AFD4703389";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak245";
	rename -uid "53779713-4113-572A-B291-079BD918D15E";
createNode objectSet -n "mgear_curveCns245Set";
	rename -uid "AF42BD2D-4E9E-6A0E-98C5-BDB8C9DC5951";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns245GroupId";
	rename -uid "13D9F161-4FB7-0A57-4DA9-A8BBEFEB6520";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns245GroupParts";
	rename -uid "191FEC37-48E5-F019-8C8A-FC87552F6FEF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet245";
	rename -uid "D712D106-4976-42C7-BED8-9090135CE9B6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId490";
	rename -uid "291A235A-41F8-7526-DC7E-5088772034FE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts490";
	rename -uid "60B497E2-4AB1-BDAD-504D-F88BA4EADEF2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile1";
	rename -uid "718DC4AB-4C31-327A-24B4-5C8C12D80EC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile1";
	rename -uid "7943440C-4F60-E08B-18BF-BBBF182E7585";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns246";
	rename -uid "9D74F498-4EFA-717B-61C2-CCA4E88BDBCF";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak246";
	rename -uid "84B235A7-4EAF-2877-40AC-FF8D606BC6EA";
createNode objectSet -n "mgear_curveCns246Set";
	rename -uid "4E7F74E0-451E-C2A1-ADA2-BBB3950A418E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns246GroupId";
	rename -uid "999C7E6B-495F-EBDF-45D7-D1AF0E019FE9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns246GroupParts";
	rename -uid "0B6344AA-443C-832E-2DDA-C0973C559EB0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet246";
	rename -uid "EC435E91-432B-BFC7-6CBB-9AA5340BB106";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId492";
	rename -uid "200A9F40-49FF-B20F-458F-5B9F9EB87315";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts492";
	rename -uid "53823420-4D7E-E044-5C29-56827B573D95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns247";
	rename -uid "12856569-4E34-0369-F8F8-6E8E0E02CBC0";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak247";
	rename -uid "FA01A152-44A5-D3F1-D6D3-95AF1FF7EB48";
createNode objectSet -n "mgear_curveCns247Set";
	rename -uid "56F79BFB-4B77-DE8D-FD43-EEA3CACEADF9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns247GroupId";
	rename -uid "63DED58E-4AEE-FCED-8661-44A211EC7D87";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns247GroupParts";
	rename -uid "6591D6E3-4724-8AA1-BAE7-C2B25BE523B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet247";
	rename -uid "5351C57E-4D3C-CB00-E7B1-EBAC61D0CD48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId494";
	rename -uid "F8571025-4AE3-B890-CDB0-E9BB23957052";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts494";
	rename -uid "B4EBC1A5-4715-04E5-67AA-B9933F889B67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns248";
	rename -uid "54510879-438B-4573-D5CB-91B8AB576065";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak248";
	rename -uid "73C2FC6D-4CD1-11DF-A5F2-7F89AA31706F";
createNode objectSet -n "mgear_curveCns248Set";
	rename -uid "5D5974CB-4A1D-2C67-85BB-34BA6A902EF3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns248GroupId";
	rename -uid "6040A94B-43C0-3AEE-F4B9-2D89430D47DE";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns248GroupParts";
	rename -uid "4A2A4808-4FA1-9E4E-34EC-818D2B47F94C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet248";
	rename -uid "6673C789-4CAD-33B8-F0A7-89A55D5B97FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId496";
	rename -uid "5CAA74A0-453B-5645-BC12-528ADD53D3DD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts496";
	rename -uid "5CE170A6-49EF-D6E1-D110-128FF126B2C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile1";
	rename -uid "50D95D26-418F-977F-1941-09B6D1684DFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile1";
	rename -uid "AB152249-4B57-C34D-FC5F-319C0B0F1681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns249";
	rename -uid "86E0233D-4786-4391-1EE2-FEB304BAEFEA";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak249";
	rename -uid "7CEFE448-4B3C-D625-7DC5-2899694662EA";
createNode objectSet -n "mgear_curveCns249Set";
	rename -uid "3FE79AFE-4240-29B6-8170-F8BF631723FA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns249GroupId";
	rename -uid "6B64BC62-4914-F43D-40B3-BC91FC732073";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns249GroupParts";
	rename -uid "41C1C38C-4CD2-EF3C-F57F-ABB815F61519";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet249";
	rename -uid "B322B608-4108-BB69-1080-D4A491E913F3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId498";
	rename -uid "34EA0F16-4924-BC77-6342-7190C52C337A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts498";
	rename -uid "D49507C2-40E0-FEF8-8435-4499E7ABB5FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns250";
	rename -uid "BA3E0989-45DF-580A-CD55-10A68AE65CEB";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak250";
	rename -uid "3A35D1E2-4C40-D3D2-28A4-E89CB031D62D";
createNode objectSet -n "mgear_curveCns250Set";
	rename -uid "A9E444D2-4427-1322-78A0-9BB8CF89F18A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns250GroupId";
	rename -uid "C3035214-42E3-8661-FCFF-39A338590924";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns250GroupParts";
	rename -uid "063F6198-46BB-D10C-8735-2E95DBB3CCAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet250";
	rename -uid "2D6174B2-4817-56AD-4052-5A92AE841719";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId500";
	rename -uid "19C798E6-4537-10D8-EAB4-62963250E82F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts500";
	rename -uid "820AADE7-4F4A-5828-A622-F3BCC240C04B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns251";
	rename -uid "4A1674C3-435E-DD04-9D32-F8B3D955F243";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak251";
	rename -uid "677E25AB-4AD6-BE21-322E-F1B2CC68DC53";
createNode objectSet -n "mgear_curveCns251Set";
	rename -uid "A6D9D008-4F27-FB50-E26D-D48FEFFA5E13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns251GroupId";
	rename -uid "226F03DA-48C3-A150-FB72-0B83FCC04A77";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns251GroupParts";
	rename -uid "6776FBAB-4628-C437-101C-1B80767CF708";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet251";
	rename -uid "EA3B9136-48A7-994A-6180-DDBDC9D3FF90";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId502";
	rename -uid "63BFA6D1-46D7-2212-109D-2F9B78241789";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts502";
	rename -uid "3C157448-4A1B-A3E4-C748-478F4A475F06";
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
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns233.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak233.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns233GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns233Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId466.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet233.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns234.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak234.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns234GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns234Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId468.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet234.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns232.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak232.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns232GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns232Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId464.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet232.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns235.og[0]" "mouth_C0_crv10Shape.cr";
connectAttr "tweak235.pl[0].cp[0]" "mouth_C0_crv10Shape.twl";
connectAttr "mgear_curveCns235GroupId.id" "mouth_C0_crv10Shape.iog.og[0].gid";
connectAttr "mgear_curveCns235Set.mwc" "mouth_C0_crv10Shape.iog.og[0].gco";
connectAttr "groupId470.id" "mouth_C0_crv10Shape.iog.og[1].gid";
connectAttr "tweakSet235.mwc" "mouth_C0_crv10Shape.iog.og[1].gco";
connectAttr "mgear_curveCns236.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak236.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns236GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns236Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId472.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet236.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns237.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak237.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns237GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns237Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId474.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet237.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns231.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak231.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns231GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns231Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId462.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet231.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint10.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint10.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint10.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint10.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint10.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint10.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint10.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint10.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint10.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint10.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint10.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint10.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint10.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint10.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint10.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint10.w0" "neck_C0_blade_aimConstraint10.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint10.wum";
connectAttr "unitConversion41.o" "neck_C0_blade_aimConstraint10.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint10.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint10.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint10.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint10.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint10.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint10.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint10.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint10.w0" "neck_C0_blade_pointConstraint10.tg[0].tw"
		;
connectAttr "mgear_curveCns230.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak230.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns230GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns230Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId460.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet230.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "legFront_L0_root_st_profile1.o" "legFront_L0_root.st_profile";
connectAttr "legFront_L0_root_sq_profile1.o" "legFront_L0_root.sq_profile";
connectAttr "mgear_curveCns240.og[0]" "footFront_L0_crvShape.cr";
connectAttr "tweak240.pl[0].cp[0]" "footFront_L0_crvShape.twl";
connectAttr "mgear_curveCns240GroupId.id" "footFront_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns240Set.mwc" "footFront_L0_crvShape.iog.og[0].gco";
connectAttr "groupId480.id" "footFront_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet240.mwc" "footFront_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns241.og[0]" "footFront_L0_Shape1.cr";
connectAttr "tweak241.pl[0].cp[0]" "footFront_L0_Shape1.twl";
connectAttr "mgear_curveCns241GroupId.id" "footFront_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns241Set.mwc" "footFront_L0_Shape1.iog.og[0].gco";
connectAttr "groupId482.id" "footFront_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet241.mwc" "footFront_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns239.og[0]" "legFront_L0_crvShape1.cr";
connectAttr "tweak239.pl[0].cp[0]" "legFront_L0_crvShape1.twl";
connectAttr "mgear_curveCns239GroupId.id" "legFront_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns239Set.mwc" "legFront_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId478.id" "legFront_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet239.mwc" "legFront_L0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint10.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint10.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint10.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint10.crx" "shoulder_L0_blade.rx" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint10.cry" "shoulder_L0_blade.ry" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint10.crz" "shoulder_L0_blade.rz" -l on
		;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint10.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint10.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint10.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint10.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint10.cro";
connectAttr "shoulder_L0_0_loc.t" "shoulder_L0_blade_aimConstraint10.tg[0].tt";
connectAttr "shoulder_L0_0_loc.rp" "shoulder_L0_blade_aimConstraint10.tg[0].trp"
		;
connectAttr "shoulder_L0_0_loc.rpt" "shoulder_L0_blade_aimConstraint10.tg[0].trt"
		;
connectAttr "shoulder_L0_0_loc.pm" "shoulder_L0_blade_aimConstraint10.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_aimConstraint10.w0" "shoulder_L0_blade_aimConstraint10.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint10.wum";
connectAttr "unitConversion42.o" "shoulder_L0_blade_aimConstraint10.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint10.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint10.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint10.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint10.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint10.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint10.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint10.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint10.w0" "shoulder_L0_blade_pointConstraint10.tg[0].tw"
		;
connectAttr "mgear_curveCns238.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak238.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns238GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns238Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId476.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet238.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "legFront_R0_root_st_profile1.o" "legFront_R0_root.st_profile";
connectAttr "legFront_R0_root_sq_profile1.o" "legFront_R0_root.sq_profile";
connectAttr "mgear_curveCns244.og[0]" "footFront_R0_crvShape.cr";
connectAttr "tweak244.pl[0].cp[0]" "footFront_R0_crvShape.twl";
connectAttr "mgear_curveCns244GroupId.id" "footFront_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns244Set.mwc" "footFront_R0_crvShape.iog.og[0].gco";
connectAttr "groupId488.id" "footFront_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet244.mwc" "footFront_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns245.og[0]" "footFront_R0_Shape1.cr";
connectAttr "tweak245.pl[0].cp[0]" "footFront_R0_Shape1.twl";
connectAttr "mgear_curveCns245GroupId.id" "footFront_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns245Set.mwc" "footFront_R0_Shape1.iog.og[0].gco";
connectAttr "groupId490.id" "footFront_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet245.mwc" "footFront_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns243.og[0]" "legFront_R0_crvShape1.cr";
connectAttr "tweak243.pl[0].cp[0]" "legFront_R0_crvShape1.twl";
connectAttr "mgear_curveCns243GroupId.id" "legFront_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns243Set.mwc" "legFront_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId486.id" "legFront_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet243.mwc" "legFront_R0_crvShape1.iog.og[1].gco";
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
connectAttr "shoulder_R0_0_loc.t" "shoulder_R0_blade_aimConstraint4.tg[0].tt";
connectAttr "shoulder_R0_0_loc.rp" "shoulder_R0_blade_aimConstraint4.tg[0].trp";
connectAttr "shoulder_R0_0_loc.rpt" "shoulder_R0_blade_aimConstraint4.tg[0].trt"
		;
connectAttr "shoulder_R0_0_loc.pm" "shoulder_R0_blade_aimConstraint4.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint4.w0" "shoulder_R0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint4.wum";
connectAttr "unitConversion43.o" "shoulder_R0_blade_aimConstraint4.ox";
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
connectAttr "mgear_curveCns242.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak242.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns242GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns242Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId484.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet242.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint10.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint10.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint10.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint10.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint10.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint10.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint10.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint10.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint10.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint10.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint10.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint10.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint10.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint10.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint10.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint10.w0" "spine_C0_blade_aimConstraint10.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint10.wum";
connectAttr "unitConversion40.o" "spine_C0_blade_aimConstraint10.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint10.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint10.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint10.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint10.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint10.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint10.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint10.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint10.w0" "spine_C0_blade_pointConstraint10.tg[0].tw"
		;
connectAttr "mgear_curveCns229.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak229.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns229GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns229Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId458.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet229.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "legBack_L0_root_st_profile1.o" "legBack_L0_root.st_profile";
connectAttr "legBack_L0_root_sq_profile1.o" "legBack_L0_root.sq_profile";
connectAttr "mgear_curveCns247.og[0]" "footBack_L0_crvShape.cr";
connectAttr "tweak247.pl[0].cp[0]" "footBack_L0_crvShape.twl";
connectAttr "mgear_curveCns247GroupId.id" "footBack_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns247Set.mwc" "footBack_L0_crvShape.iog.og[0].gco";
connectAttr "groupId494.id" "footBack_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet247.mwc" "footBack_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns248.og[0]" "footBack_L0_Shape1.cr";
connectAttr "tweak248.pl[0].cp[0]" "footBack_L0_Shape1.twl";
connectAttr "mgear_curveCns248GroupId.id" "footBack_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns248Set.mwc" "footBack_L0_Shape1.iog.og[0].gco";
connectAttr "groupId496.id" "footBack_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet248.mwc" "footBack_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns246.og[0]" "legBack_L0_crvShape1.cr";
connectAttr "tweak246.pl[0].cp[0]" "legBack_L0_crvShape1.twl";
connectAttr "mgear_curveCns246GroupId.id" "legBack_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns246Set.mwc" "legBack_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId492.id" "legBack_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet246.mwc" "legBack_L0_crvShape1.iog.og[1].gco";
connectAttr "legBack_R0_root_st_profile1.o" "legBack_R0_root.st_profile";
connectAttr "legBack_R0_root_sq_profile1.o" "legBack_R0_root.sq_profile";
connectAttr "mgear_curveCns250.og[0]" "footBack_R0_crvShape.cr";
connectAttr "tweak250.pl[0].cp[0]" "footBack_R0_crvShape.twl";
connectAttr "mgear_curveCns250GroupId.id" "footBack_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns250Set.mwc" "footBack_R0_crvShape.iog.og[0].gco";
connectAttr "groupId500.id" "footBack_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet250.mwc" "footBack_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns251.og[0]" "footBack_R0_Shape1.cr";
connectAttr "tweak251.pl[0].cp[0]" "footBack_R0_Shape1.twl";
connectAttr "mgear_curveCns251GroupId.id" "footBack_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns251Set.mwc" "footBack_R0_Shape1.iog.og[0].gco";
connectAttr "groupId502.id" "footBack_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet251.mwc" "footBack_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns249.og[0]" "legBack_R0_crvShape1.cr";
connectAttr "tweak249.pl[0].cp[0]" "legBack_R0_crvShape1.twl";
connectAttr "mgear_curveCns249GroupId.id" "legBack_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns249Set.mwc" "legBack_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId498.id" "legBack_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet249.mwc" "legBack_R0_crvShape1.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion40.i";
connectAttr "mgear_curveCns229GroupParts.og" "mgear_curveCns229.ip[0].ig";
connectAttr "mgear_curveCns229GroupId.id" "mgear_curveCns229.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns229.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns229.inputs[1]";
connectAttr "groupParts458.og" "tweak229.ip[0].ig";
connectAttr "groupId458.id" "tweak229.ip[0].gi";
connectAttr "mgear_curveCns229GroupId.msg" "mgear_curveCns229Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns229Set.dsm" -na;
connectAttr "mgear_curveCns229.msg" "mgear_curveCns229Set.ub[0]";
connectAttr "tweak229.og[0]" "mgear_curveCns229GroupParts.ig";
connectAttr "mgear_curveCns229GroupId.id" "mgear_curveCns229GroupParts.gi";
connectAttr "groupId458.msg" "tweakSet229.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet229.dsm" -na;
connectAttr "tweak229.msg" "tweakSet229.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts458.ig";
connectAttr "groupId458.id" "groupParts458.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion41.i";
connectAttr "mgear_curveCns230GroupParts.og" "mgear_curveCns230.ip[0].ig";
connectAttr "mgear_curveCns230GroupId.id" "mgear_curveCns230.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns230.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns230.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns230.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns230.inputs[3]";
connectAttr "groupParts460.og" "tweak230.ip[0].ig";
connectAttr "groupId460.id" "tweak230.ip[0].gi";
connectAttr "mgear_curveCns230GroupId.msg" "mgear_curveCns230Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns230Set.dsm" -na;
connectAttr "mgear_curveCns230.msg" "mgear_curveCns230Set.ub[0]";
connectAttr "tweak230.og[0]" "mgear_curveCns230GroupParts.ig";
connectAttr "mgear_curveCns230GroupId.id" "mgear_curveCns230GroupParts.gi";
connectAttr "groupId460.msg" "tweakSet230.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet230.dsm" -na;
connectAttr "tweak230.msg" "tweakSet230.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts460.ig";
connectAttr "groupId460.id" "groupParts460.gi";
connectAttr "mgear_curveCns231GroupParts.og" "mgear_curveCns231.ip[0].ig";
connectAttr "mgear_curveCns231GroupId.id" "mgear_curveCns231.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns231.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns231.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns231.inputs[2]";
connectAttr "groupParts462.og" "tweak231.ip[0].ig";
connectAttr "groupId462.id" "tweak231.ip[0].gi";
connectAttr "mgear_curveCns231GroupId.msg" "mgear_curveCns231Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns231Set.dsm" -na;
connectAttr "mgear_curveCns231.msg" "mgear_curveCns231Set.ub[0]";
connectAttr "tweak231.og[0]" "mgear_curveCns231GroupParts.ig";
connectAttr "mgear_curveCns231GroupId.id" "mgear_curveCns231GroupParts.gi";
connectAttr "groupId462.msg" "tweakSet231.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet231.dsm" -na;
connectAttr "tweak231.msg" "tweakSet231.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts462.ig";
connectAttr "groupId462.id" "groupParts462.gi";
connectAttr "mgear_curveCns232GroupParts.og" "mgear_curveCns232.ip[0].ig";
connectAttr "mgear_curveCns232GroupId.id" "mgear_curveCns232.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns232.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns232.inputs[1]";
connectAttr "groupParts464.og" "tweak232.ip[0].ig";
connectAttr "groupId464.id" "tweak232.ip[0].gi";
connectAttr "mgear_curveCns232GroupId.msg" "mgear_curveCns232Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns232Set.dsm"
		 -na;
connectAttr "mgear_curveCns232.msg" "mgear_curveCns232Set.ub[0]";
connectAttr "tweak232.og[0]" "mgear_curveCns232GroupParts.ig";
connectAttr "mgear_curveCns232GroupId.id" "mgear_curveCns232GroupParts.gi";
connectAttr "groupId464.msg" "tweakSet232.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet232.dsm"
		 -na;
connectAttr "tweak232.msg" "tweakSet232.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts464.ig"
		;
connectAttr "groupId464.id" "groupParts464.gi";
connectAttr "mgear_curveCns233GroupParts.og" "mgear_curveCns233.ip[0].ig";
connectAttr "mgear_curveCns233GroupId.id" "mgear_curveCns233.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns233.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns233.inputs[1]";
connectAttr "groupParts466.og" "tweak233.ip[0].ig";
connectAttr "groupId466.id" "tweak233.ip[0].gi";
connectAttr "mgear_curveCns233GroupId.msg" "mgear_curveCns233Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns233Set.dsm"
		 -na;
connectAttr "mgear_curveCns233.msg" "mgear_curveCns233Set.ub[0]";
connectAttr "tweak233.og[0]" "mgear_curveCns233GroupParts.ig";
connectAttr "mgear_curveCns233GroupId.id" "mgear_curveCns233GroupParts.gi";
connectAttr "groupId466.msg" "tweakSet233.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet233.dsm"
		 -na;
connectAttr "tweak233.msg" "tweakSet233.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts466.ig"
		;
connectAttr "groupId466.id" "groupParts466.gi";
connectAttr "mgear_curveCns234GroupParts.og" "mgear_curveCns234.ip[0].ig";
connectAttr "mgear_curveCns234GroupId.id" "mgear_curveCns234.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns234.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns234.inputs[1]";
connectAttr "groupParts468.og" "tweak234.ip[0].ig";
connectAttr "groupId468.id" "tweak234.ip[0].gi";
connectAttr "mgear_curveCns234GroupId.msg" "mgear_curveCns234Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns234Set.dsm"
		 -na;
connectAttr "mgear_curveCns234.msg" "mgear_curveCns234Set.ub[0]";
connectAttr "tweak234.og[0]" "mgear_curveCns234GroupParts.ig";
connectAttr "mgear_curveCns234GroupId.id" "mgear_curveCns234GroupParts.gi";
connectAttr "groupId468.msg" "tweakSet234.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet234.dsm"
		 -na;
connectAttr "tweak234.msg" "tweakSet234.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts468.ig"
		;
connectAttr "groupId468.id" "groupParts468.gi";
connectAttr "mgear_curveCns235GroupParts.og" "mgear_curveCns235.ip[0].ig";
connectAttr "mgear_curveCns235GroupId.id" "mgear_curveCns235.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns235.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns235.inputs[1]";
connectAttr "groupParts470.og" "tweak235.ip[0].ig";
connectAttr "groupId470.id" "tweak235.ip[0].gi";
connectAttr "mgear_curveCns235GroupId.msg" "mgear_curveCns235Set.gn" -na;
connectAttr "mouth_C0_crv10Shape.iog.og[0]" "mgear_curveCns235Set.dsm" -na;
connectAttr "mgear_curveCns235.msg" "mgear_curveCns235Set.ub[0]";
connectAttr "tweak235.og[0]" "mgear_curveCns235GroupParts.ig";
connectAttr "mgear_curveCns235GroupId.id" "mgear_curveCns235GroupParts.gi";
connectAttr "groupId470.msg" "tweakSet235.gn" -na;
connectAttr "mouth_C0_crv10Shape.iog.og[1]" "tweakSet235.dsm" -na;
connectAttr "tweak235.msg" "tweakSet235.ub[0]";
connectAttr "mouth_C0_crv10ShapeOrig.ws" "groupParts470.ig";
connectAttr "groupId470.id" "groupParts470.gi";
connectAttr "mgear_curveCns236GroupParts.og" "mgear_curveCns236.ip[0].ig";
connectAttr "mgear_curveCns236GroupId.id" "mgear_curveCns236.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns236.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns236.inputs[1]";
connectAttr "groupParts472.og" "tweak236.ip[0].ig";
connectAttr "groupId472.id" "tweak236.ip[0].gi";
connectAttr "mgear_curveCns236GroupId.msg" "mgear_curveCns236Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns236Set.dsm" -na;
connectAttr "mgear_curveCns236.msg" "mgear_curveCns236Set.ub[0]";
connectAttr "tweak236.og[0]" "mgear_curveCns236GroupParts.ig";
connectAttr "mgear_curveCns236GroupId.id" "mgear_curveCns236GroupParts.gi";
connectAttr "groupId472.msg" "tweakSet236.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet236.dsm" -na;
connectAttr "tweak236.msg" "tweakSet236.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts472.ig";
connectAttr "groupId472.id" "groupParts472.gi";
connectAttr "mgear_curveCns237GroupParts.og" "mgear_curveCns237.ip[0].ig";
connectAttr "mgear_curveCns237GroupId.id" "mgear_curveCns237.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns237.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns237.inputs[1]";
connectAttr "groupParts474.og" "tweak237.ip[0].ig";
connectAttr "groupId474.id" "tweak237.ip[0].gi";
connectAttr "mgear_curveCns237GroupId.msg" "mgear_curveCns237Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns237Set.dsm" -na;
connectAttr "mgear_curveCns237.msg" "mgear_curveCns237Set.ub[0]";
connectAttr "tweak237.og[0]" "mgear_curveCns237GroupParts.ig";
connectAttr "mgear_curveCns237GroupId.id" "mgear_curveCns237GroupParts.gi";
connectAttr "groupId474.msg" "tweakSet237.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet237.dsm" -na;
connectAttr "tweak237.msg" "tweakSet237.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts474.ig";
connectAttr "groupId474.id" "groupParts474.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion42.i";
connectAttr "mgear_curveCns238GroupParts.og" "mgear_curveCns238.ip[0].ig";
connectAttr "mgear_curveCns238GroupId.id" "mgear_curveCns238.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns238.inputs[0]";
connectAttr "shoulder_L0_0_loc.wm" "mgear_curveCns238.inputs[1]";
connectAttr "groupParts476.og" "tweak238.ip[0].ig";
connectAttr "groupId476.id" "tweak238.ip[0].gi";
connectAttr "mgear_curveCns238GroupId.msg" "mgear_curveCns238Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns238Set.dsm" -na;
connectAttr "mgear_curveCns238.msg" "mgear_curveCns238Set.ub[0]";
connectAttr "tweak238.og[0]" "mgear_curveCns238GroupParts.ig";
connectAttr "mgear_curveCns238GroupId.id" "mgear_curveCns238GroupParts.gi";
connectAttr "groupId476.msg" "tweakSet238.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet238.dsm" -na;
connectAttr "tweak238.msg" "tweakSet238.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts476.ig";
connectAttr "groupId476.id" "groupParts476.gi";
connectAttr "mgear_curveCns239GroupParts.og" "mgear_curveCns239.ip[0].ig";
connectAttr "mgear_curveCns239GroupId.id" "mgear_curveCns239.ip[0].gi";
connectAttr "legFront_L0_root.wm" "mgear_curveCns239.inputs[0]";
connectAttr "legFront_L0_knee.wm" "mgear_curveCns239.inputs[1]";
connectAttr "legFront_L0_ankle.wm" "mgear_curveCns239.inputs[2]";
connectAttr "legFront_L0_foot.wm" "mgear_curveCns239.inputs[3]";
connectAttr "legFront_L0_eff.wm" "mgear_curveCns239.inputs[4]";
connectAttr "groupParts478.og" "tweak239.ip[0].ig";
connectAttr "groupId478.id" "tweak239.ip[0].gi";
connectAttr "mgear_curveCns239GroupId.msg" "mgear_curveCns239Set.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[0]" "mgear_curveCns239Set.dsm" -na;
connectAttr "mgear_curveCns239.msg" "mgear_curveCns239Set.ub[0]";
connectAttr "tweak239.og[0]" "mgear_curveCns239GroupParts.ig";
connectAttr "mgear_curveCns239GroupId.id" "mgear_curveCns239GroupParts.gi";
connectAttr "groupId478.msg" "tweakSet239.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[1]" "tweakSet239.dsm" -na;
connectAttr "tweak239.msg" "tweakSet239.ub[0]";
connectAttr "legFront_L0_crvShape1Orig.ws" "groupParts478.ig";
connectAttr "groupId478.id" "groupParts478.gi";
connectAttr "mgear_curveCns240GroupParts.og" "mgear_curveCns240.ip[0].ig";
connectAttr "mgear_curveCns240GroupId.id" "mgear_curveCns240.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns240.inputs[0]";
connectAttr "footFront_L0_0_loc.wm" "mgear_curveCns240.inputs[1]";
connectAttr "footFront_L0_1_loc.wm" "mgear_curveCns240.inputs[2]";
connectAttr "groupParts480.og" "tweak240.ip[0].ig";
connectAttr "groupId480.id" "tweak240.ip[0].gi";
connectAttr "mgear_curveCns240GroupId.msg" "mgear_curveCns240Set.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[0]" "mgear_curveCns240Set.dsm" -na;
connectAttr "mgear_curveCns240.msg" "mgear_curveCns240Set.ub[0]";
connectAttr "tweak240.og[0]" "mgear_curveCns240GroupParts.ig";
connectAttr "mgear_curveCns240GroupId.id" "mgear_curveCns240GroupParts.gi";
connectAttr "groupId480.msg" "tweakSet240.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[1]" "tweakSet240.dsm" -na;
connectAttr "tweak240.msg" "tweakSet240.ub[0]";
connectAttr "footFront_L0_crvShapeOrig.ws" "groupParts480.ig";
connectAttr "groupId480.id" "groupParts480.gi";
connectAttr "mgear_curveCns241GroupParts.og" "mgear_curveCns241.ip[0].ig";
connectAttr "mgear_curveCns241GroupId.id" "mgear_curveCns241.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns241.inputs[0]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns241.inputs[1]";
connectAttr "footFront_L0_outpivot.wm" "mgear_curveCns241.inputs[2]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns241.inputs[3]";
connectAttr "footFront_L0_inpivot.wm" "mgear_curveCns241.inputs[4]";
connectAttr "groupParts482.og" "tweak241.ip[0].ig";
connectAttr "groupId482.id" "tweak241.ip[0].gi";
connectAttr "mgear_curveCns241GroupId.msg" "mgear_curveCns241Set.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[0]" "mgear_curveCns241Set.dsm" -na;
connectAttr "mgear_curveCns241.msg" "mgear_curveCns241Set.ub[0]";
connectAttr "tweak241.og[0]" "mgear_curveCns241GroupParts.ig";
connectAttr "mgear_curveCns241GroupId.id" "mgear_curveCns241GroupParts.gi";
connectAttr "groupId482.msg" "tweakSet241.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[1]" "tweakSet241.dsm" -na;
connectAttr "tweak241.msg" "tweakSet241.ub[0]";
connectAttr "footFront_L0_Shape1Orig.ws" "groupParts482.ig";
connectAttr "groupId482.id" "groupParts482.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion43.i";
connectAttr "mgear_curveCns242GroupParts.og" "mgear_curveCns242.ip[0].ig";
connectAttr "mgear_curveCns242GroupId.id" "mgear_curveCns242.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns242.inputs[0]";
connectAttr "shoulder_R0_0_loc.wm" "mgear_curveCns242.inputs[1]";
connectAttr "groupParts484.og" "tweak242.ip[0].ig";
connectAttr "groupId484.id" "tweak242.ip[0].gi";
connectAttr "mgear_curveCns242GroupId.msg" "mgear_curveCns242Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns242Set.dsm" -na;
connectAttr "mgear_curveCns242.msg" "mgear_curveCns242Set.ub[0]";
connectAttr "tweak242.og[0]" "mgear_curveCns242GroupParts.ig";
connectAttr "mgear_curveCns242GroupId.id" "mgear_curveCns242GroupParts.gi";
connectAttr "groupId484.msg" "tweakSet242.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet242.dsm" -na;
connectAttr "tweak242.msg" "tweakSet242.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts484.ig";
connectAttr "groupId484.id" "groupParts484.gi";
connectAttr "mgear_curveCns243GroupParts.og" "mgear_curveCns243.ip[0].ig";
connectAttr "mgear_curveCns243GroupId.id" "mgear_curveCns243.ip[0].gi";
connectAttr "legFront_R0_root.wm" "mgear_curveCns243.inputs[0]";
connectAttr "legFront_R0_knee.wm" "mgear_curveCns243.inputs[1]";
connectAttr "legFront_R0_ankle.wm" "mgear_curveCns243.inputs[2]";
connectAttr "legFront_R0_foot.wm" "mgear_curveCns243.inputs[3]";
connectAttr "legFront_R0_eff.wm" "mgear_curveCns243.inputs[4]";
connectAttr "groupParts486.og" "tweak243.ip[0].ig";
connectAttr "groupId486.id" "tweak243.ip[0].gi";
connectAttr "mgear_curveCns243GroupId.msg" "mgear_curveCns243Set.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[0]" "mgear_curveCns243Set.dsm" -na;
connectAttr "mgear_curveCns243.msg" "mgear_curveCns243Set.ub[0]";
connectAttr "tweak243.og[0]" "mgear_curveCns243GroupParts.ig";
connectAttr "mgear_curveCns243GroupId.id" "mgear_curveCns243GroupParts.gi";
connectAttr "groupId486.msg" "tweakSet243.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[1]" "tweakSet243.dsm" -na;
connectAttr "tweak243.msg" "tweakSet243.ub[0]";
connectAttr "legFront_R0_crvShape1Orig.ws" "groupParts486.ig";
connectAttr "groupId486.id" "groupParts486.gi";
connectAttr "mgear_curveCns244GroupParts.og" "mgear_curveCns244.ip[0].ig";
connectAttr "mgear_curveCns244GroupId.id" "mgear_curveCns244.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns244.inputs[0]";
connectAttr "footFront_R0_0_loc.wm" "mgear_curveCns244.inputs[1]";
connectAttr "footFront_R0_1_loc.wm" "mgear_curveCns244.inputs[2]";
connectAttr "groupParts488.og" "tweak244.ip[0].ig";
connectAttr "groupId488.id" "tweak244.ip[0].gi";
connectAttr "mgear_curveCns244GroupId.msg" "mgear_curveCns244Set.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[0]" "mgear_curveCns244Set.dsm" -na;
connectAttr "mgear_curveCns244.msg" "mgear_curveCns244Set.ub[0]";
connectAttr "tweak244.og[0]" "mgear_curveCns244GroupParts.ig";
connectAttr "mgear_curveCns244GroupId.id" "mgear_curveCns244GroupParts.gi";
connectAttr "groupId488.msg" "tweakSet244.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[1]" "tweakSet244.dsm" -na;
connectAttr "tweak244.msg" "tweakSet244.ub[0]";
connectAttr "footFront_R0_crvShapeOrig.ws" "groupParts488.ig";
connectAttr "groupId488.id" "groupParts488.gi";
connectAttr "mgear_curveCns245GroupParts.og" "mgear_curveCns245.ip[0].ig";
connectAttr "mgear_curveCns245GroupId.id" "mgear_curveCns245.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns245.inputs[0]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns245.inputs[1]";
connectAttr "footFront_R0_outpivot.wm" "mgear_curveCns245.inputs[2]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns245.inputs[3]";
connectAttr "footFront_R0_inpivot.wm" "mgear_curveCns245.inputs[4]";
connectAttr "groupParts490.og" "tweak245.ip[0].ig";
connectAttr "groupId490.id" "tweak245.ip[0].gi";
connectAttr "mgear_curveCns245GroupId.msg" "mgear_curveCns245Set.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[0]" "mgear_curveCns245Set.dsm" -na;
connectAttr "mgear_curveCns245.msg" "mgear_curveCns245Set.ub[0]";
connectAttr "tweak245.og[0]" "mgear_curveCns245GroupParts.ig";
connectAttr "mgear_curveCns245GroupId.id" "mgear_curveCns245GroupParts.gi";
connectAttr "groupId490.msg" "tweakSet245.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[1]" "tweakSet245.dsm" -na;
connectAttr "tweak245.msg" "tweakSet245.ub[0]";
connectAttr "footFront_R0_Shape1Orig.ws" "groupParts490.ig";
connectAttr "groupId490.id" "groupParts490.gi";
connectAttr "mgear_curveCns246GroupParts.og" "mgear_curveCns246.ip[0].ig";
connectAttr "mgear_curveCns246GroupId.id" "mgear_curveCns246.ip[0].gi";
connectAttr "legBack_L0_root.wm" "mgear_curveCns246.inputs[0]";
connectAttr "legBack_L0_knee.wm" "mgear_curveCns246.inputs[1]";
connectAttr "legBack_L0_ankle.wm" "mgear_curveCns246.inputs[2]";
connectAttr "legBack_L0_foot.wm" "mgear_curveCns246.inputs[3]";
connectAttr "legBack_L0_eff.wm" "mgear_curveCns246.inputs[4]";
connectAttr "groupParts492.og" "tweak246.ip[0].ig";
connectAttr "groupId492.id" "tweak246.ip[0].gi";
connectAttr "mgear_curveCns246GroupId.msg" "mgear_curveCns246Set.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[0]" "mgear_curveCns246Set.dsm" -na;
connectAttr "mgear_curveCns246.msg" "mgear_curveCns246Set.ub[0]";
connectAttr "tweak246.og[0]" "mgear_curveCns246GroupParts.ig";
connectAttr "mgear_curveCns246GroupId.id" "mgear_curveCns246GroupParts.gi";
connectAttr "groupId492.msg" "tweakSet246.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[1]" "tweakSet246.dsm" -na;
connectAttr "tweak246.msg" "tweakSet246.ub[0]";
connectAttr "legBack_L0_crvShape1Orig.ws" "groupParts492.ig";
connectAttr "groupId492.id" "groupParts492.gi";
connectAttr "mgear_curveCns247GroupParts.og" "mgear_curveCns247.ip[0].ig";
connectAttr "mgear_curveCns247GroupId.id" "mgear_curveCns247.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns247.inputs[0]";
connectAttr "footBack_L0_0_loc.wm" "mgear_curveCns247.inputs[1]";
connectAttr "footBack_L0_1_loc.wm" "mgear_curveCns247.inputs[2]";
connectAttr "groupParts494.og" "tweak247.ip[0].ig";
connectAttr "groupId494.id" "tweak247.ip[0].gi";
connectAttr "mgear_curveCns247GroupId.msg" "mgear_curveCns247Set.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[0]" "mgear_curveCns247Set.dsm" -na;
connectAttr "mgear_curveCns247.msg" "mgear_curveCns247Set.ub[0]";
connectAttr "tweak247.og[0]" "mgear_curveCns247GroupParts.ig";
connectAttr "mgear_curveCns247GroupId.id" "mgear_curveCns247GroupParts.gi";
connectAttr "groupId494.msg" "tweakSet247.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[1]" "tweakSet247.dsm" -na;
connectAttr "tweak247.msg" "tweakSet247.ub[0]";
connectAttr "footBack_L0_crvShapeOrig.ws" "groupParts494.ig";
connectAttr "groupId494.id" "groupParts494.gi";
connectAttr "mgear_curveCns248GroupParts.og" "mgear_curveCns248.ip[0].ig";
connectAttr "mgear_curveCns248GroupId.id" "mgear_curveCns248.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns248.inputs[0]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns248.inputs[1]";
connectAttr "footBack_L0_outpivot.wm" "mgear_curveCns248.inputs[2]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns248.inputs[3]";
connectAttr "footBack_L0_inpivot.wm" "mgear_curveCns248.inputs[4]";
connectAttr "groupParts496.og" "tweak248.ip[0].ig";
connectAttr "groupId496.id" "tweak248.ip[0].gi";
connectAttr "mgear_curveCns248GroupId.msg" "mgear_curveCns248Set.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[0]" "mgear_curveCns248Set.dsm" -na;
connectAttr "mgear_curveCns248.msg" "mgear_curveCns248Set.ub[0]";
connectAttr "tweak248.og[0]" "mgear_curveCns248GroupParts.ig";
connectAttr "mgear_curveCns248GroupId.id" "mgear_curveCns248GroupParts.gi";
connectAttr "groupId496.msg" "tweakSet248.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[1]" "tweakSet248.dsm" -na;
connectAttr "tweak248.msg" "tweakSet248.ub[0]";
connectAttr "footBack_L0_Shape1Orig.ws" "groupParts496.ig";
connectAttr "groupId496.id" "groupParts496.gi";
connectAttr "mgear_curveCns249GroupParts.og" "mgear_curveCns249.ip[0].ig";
connectAttr "mgear_curveCns249GroupId.id" "mgear_curveCns249.ip[0].gi";
connectAttr "legBack_R0_root.wm" "mgear_curveCns249.inputs[0]";
connectAttr "legBack_R0_knee.wm" "mgear_curveCns249.inputs[1]";
connectAttr "legBack_R0_ankle.wm" "mgear_curveCns249.inputs[2]";
connectAttr "legBack_R0_foot.wm" "mgear_curveCns249.inputs[3]";
connectAttr "legBack_R0_eff.wm" "mgear_curveCns249.inputs[4]";
connectAttr "groupParts498.og" "tweak249.ip[0].ig";
connectAttr "groupId498.id" "tweak249.ip[0].gi";
connectAttr "mgear_curveCns249GroupId.msg" "mgear_curveCns249Set.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[0]" "mgear_curveCns249Set.dsm" -na;
connectAttr "mgear_curveCns249.msg" "mgear_curveCns249Set.ub[0]";
connectAttr "tweak249.og[0]" "mgear_curveCns249GroupParts.ig";
connectAttr "mgear_curveCns249GroupId.id" "mgear_curveCns249GroupParts.gi";
connectAttr "groupId498.msg" "tweakSet249.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[1]" "tweakSet249.dsm" -na;
connectAttr "tweak249.msg" "tweakSet249.ub[0]";
connectAttr "legBack_R0_crvShape1Orig.ws" "groupParts498.ig";
connectAttr "groupId498.id" "groupParts498.gi";
connectAttr "mgear_curveCns250GroupParts.og" "mgear_curveCns250.ip[0].ig";
connectAttr "mgear_curveCns250GroupId.id" "mgear_curveCns250.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns250.inputs[0]";
connectAttr "footBack_R0_0_loc.wm" "mgear_curveCns250.inputs[1]";
connectAttr "footBack_R0_1_loc.wm" "mgear_curveCns250.inputs[2]";
connectAttr "groupParts500.og" "tweak250.ip[0].ig";
connectAttr "groupId500.id" "tweak250.ip[0].gi";
connectAttr "mgear_curveCns250GroupId.msg" "mgear_curveCns250Set.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[0]" "mgear_curveCns250Set.dsm" -na;
connectAttr "mgear_curveCns250.msg" "mgear_curveCns250Set.ub[0]";
connectAttr "tweak250.og[0]" "mgear_curveCns250GroupParts.ig";
connectAttr "mgear_curveCns250GroupId.id" "mgear_curveCns250GroupParts.gi";
connectAttr "groupId500.msg" "tweakSet250.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[1]" "tweakSet250.dsm" -na;
connectAttr "tweak250.msg" "tweakSet250.ub[0]";
connectAttr "footBack_R0_crvShapeOrig.ws" "groupParts500.ig";
connectAttr "groupId500.id" "groupParts500.gi";
connectAttr "mgear_curveCns251GroupParts.og" "mgear_curveCns251.ip[0].ig";
connectAttr "mgear_curveCns251GroupId.id" "mgear_curveCns251.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns251.inputs[0]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns251.inputs[1]";
connectAttr "footBack_R0_outpivot.wm" "mgear_curveCns251.inputs[2]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns251.inputs[3]";
connectAttr "footBack_R0_inpivot.wm" "mgear_curveCns251.inputs[4]";
connectAttr "groupParts502.og" "tweak251.ip[0].ig";
connectAttr "groupId502.id" "tweak251.ip[0].gi";
connectAttr "mgear_curveCns251GroupId.msg" "mgear_curveCns251Set.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[0]" "mgear_curveCns251Set.dsm" -na;
connectAttr "mgear_curveCns251.msg" "mgear_curveCns251Set.ub[0]";
connectAttr "tweak251.og[0]" "mgear_curveCns251GroupParts.ig";
connectAttr "mgear_curveCns251GroupId.id" "mgear_curveCns251GroupParts.gi";
connectAttr "groupId502.msg" "tweakSet251.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[1]" "tweakSet251.dsm" -na;
connectAttr "tweak251.msg" "tweakSet251.ub[0]";
connectAttr "footBack_R0_Shape1Orig.ws" "groupParts502.ig";
connectAttr "groupId502.id" "groupParts502.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of quadruped.ma
