//Maya ASCII 2015ff05 scene
//Name: quadruped.ma
//Last modified: Mon, Aug 21, 2017 10:02:37 AM
//Codeset: 932
requires maya "2015ff05";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.0.3";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201410051530-933320-1";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "guide";
	addAttr -ci true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "mode" -ln "mode" -min 0 -max 1 -en "Final:WIP" -at "enum";
	addAttr -ci true -k true -sn "step" -ln "step" -min 0 -max 6 -en "All Steps:Objects:Properties:Operators:Connect:Joints:Finalize" 
		-at "enum";
	addAttr -ci true -sn "ismodel" -ln "ismodel" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "classicChannelNames" -ln "classicChannelNames" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "proxyChannels" -ln "proxyChannels" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "importSkin" -ln "importSkin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "skin" -ln "skin" -dt "string";
	addAttr -ci true -sn "L_color_fk" -ln "L_color_fk" -min 0 -max 31 -at "long";
	addAttr -ci true -sn "L_color_ik" -ln "L_color_ik" -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_fk" -ln "R_color_fk" -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_ik" -ln "R_color_ik" -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_fk" -ln "C_color_fk" -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_ik" -ln "C_color_ik" -min 0 -max 31 -at "long";
	addAttr -ci true -sn "joint_rig" -ln "joint_rig" -min 0 -max 1 -at "bool";
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
	setAttr ".ismodel" yes;
	setAttr ".proxyChannels" yes;
	setAttr ".skin" -type "string" "";
	setAttr ".L_color_fk" 6;
	setAttr ".L_color_ik" 18;
	setAttr ".R_color_fk" 23;
	setAttr ".R_color_ik" 14;
	setAttr ".C_color_fk" 13;
	setAttr ".C_color_ik" 17;
	setAttr ".joint_rig" yes;
	setAttr ".synoptic" -type "string" "quadruped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "mc";
	setAttr ".date" -type "string" "2016-10-08 23:01:34.843000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.0.2";
createNode transform -n "controllers_org" -p "guide";
	setAttr ".v" no;
createNode transform -n "local_C0_root" -p "guide";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
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
	setAttr ".uniScale" yes;
	setAttr ".k_tx" yes;
	setAttr ".k_ty" yes;
	setAttr ".k_tz" yes;
	setAttr ".k_ro" yes;
	setAttr ".k_rx" yes;
	setAttr ".k_ry" yes;
	setAttr ".k_rz" yes;
	setAttr ".k_sx" yes;
	setAttr ".k_sy" yes;
	setAttr ".k_sz" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "local_C0_rootShape" -p "local_C0_root";
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
createNode nurbsCurve -n "local_C0_root16Shape" -p "local_C0_root";
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
createNode nurbsCurve -n "local_C0_root17Shape" -p "local_C0_root";
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
createNode nurbsCurve -n "local_C0_root18Shape" -p "local_C0_root";
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
createNode transform -n "body_C0_root" -p "local_C0_root";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
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
	setAttr ".uniScale" yes;
	setAttr ".k_tx" yes;
	setAttr ".k_ty" yes;
	setAttr ".k_tz" yes;
	setAttr ".k_ro" yes;
	setAttr ".k_rx" yes;
	setAttr ".k_ry" yes;
	setAttr ".k_rz" yes;
	setAttr ".k_sx" yes;
	setAttr ".k_sy" yes;
	setAttr ".k_sz" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
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
createNode nurbsCurve -n "body_C0_root16Shape" -p "body_C0_root";
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
createNode nurbsCurve -n "body_C0_root17Shape" -p "body_C0_root";
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
createNode nurbsCurve -n "body_C0_root18Shape" -p "body_C0_root";
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
createNode transform -n "spine_C0_root" -p "body_C0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "position" -ln "position" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "maxsquash" -ln "maxsquash" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "softness" -ln "softness" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lock_ori" -ln "lock_ori" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "division" -ln "division" -dv 3 -min 3 -at "long";
	addAttr -ci true -sn "autoBend" -ln "autoBend" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "centralTangent" -ln "centralTangent" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
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
	setAttr ".maxstretch" 1.5;
	setAttr ".maxsquash" 0.5;
	setAttr ".lock_ori" 1;
	setAttr ".division" 5;
	setAttr ".centralTangent" yes;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
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
createNode nurbsCurve -n "spine_C0_root16Shape" -p "spine_C0_root";
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
createNode nurbsCurve -n "spine_C0_root17Shape" -p "spine_C0_root";
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
createNode nurbsCurve -n "spine_C0_root18Shape" -p "spine_C0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6115768831256645 -2.936129953890215e-015 ;
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
createNode nurbsCurve -n "spine_C0_eff16Shape" -p "spine_C0_eff";
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
createNode nurbsCurve -n "spine_C0_eff17Shape" -p "spine_C0_eff";
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
createNode nurbsCurve -n "spine_C0_eff18Shape" -p "spine_C0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "spine_C0_eff18_0crvShape" -p "spine_C0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "spine_C0_eff18_1crvShape" -p "spine_C0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "neck_C0_root" -p "spine_C0_eff";
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
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "maxsquash" -ln "maxsquash" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "softness" -ln "softness" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "division" -ln "division" -dv 3 -min 3 -at "long";
	addAttr -ci true -sn "tangentControls" -ln "tangentControls" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.11164111249562403 0.36062523614417152 -1.1057116273629444e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5097839127112581e-015 -5.8147294396561417e-015 19.035763767138235 ;
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
	setAttr ".maxstretch" 1.5;
	setAttr ".maxsquash" 0.5;
	setAttr ".division" 5;
	setAttr ".tangentControls" yes;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
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
createNode nurbsCurve -n "neck_C0_root16Shape" -p "neck_C0_root";
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
createNode nurbsCurve -n "neck_C0_root17Shape" -p "neck_C0_root";
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
createNode nurbsCurve -n "neck_C0_root18Shape" -p "neck_C0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.24124837670655586 3.6642870257638149 -8.7131531609605249e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5097839127112494e-015 -5.8147294396561354e-015 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
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
createNode nurbsCurve -n "neck_C0_neck16Shape" -p "neck_C0_neck";
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
createNode nurbsCurve -n "neck_C0_neck17Shape" -p "neck_C0_neck";
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
createNode nurbsCurve -n "neck_C0_neck18Shape" -p "neck_C0_neck";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_neck18_0crvShape" -p "neck_C0_neck";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_neck18_1crvShape" -p "neck_C0_neck";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "neck_C0_head" -p "neck_C0_neck";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -5.3290705182007514e-015 2.5144941353919751e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.1959579395664451e-014 -1.698061265583596e-017 71.00246042570619 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999911 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
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
createNode nurbsCurve -n "neck_C0_head16Shape" -p "neck_C0_head";
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
createNode nurbsCurve -n "neck_C0_head17Shape" -p "neck_C0_head";
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
createNode nurbsCurve -n "neck_C0_head18Shape" -p "neck_C0_head";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_head18_0crvShape" -p "neck_C0_head";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_head18_1crvShape" -p "neck_C0_head";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "neck_C0_eff" -p "neck_C0_head";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.028362147187278808 2.6770463465994725 4.5418821062020023e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.195957939566444e-014 -1.6980612655835948e-017 2.2363275104040347e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
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
createNode nurbsCurve -n "neck_C0_eff16Shape" -p "neck_C0_eff";
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
createNode nurbsCurve -n "neck_C0_eff17Shape" -p "neck_C0_eff";
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
createNode nurbsCurve -n "neck_C0_eff18Shape" -p "neck_C0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_eff18_0crvShape" -p "neck_C0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_eff18_1crvShape" -p "neck_C0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "spineUI_C0_root" -p "neck_C0_eff";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.2992211017816837 -0.74362823191862404 -4.3347348183670675 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413613 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427565 2.3915882794427552 2.3915882794427579 ;
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
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
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
createNode nurbsCurve -n "spineUI_C0_root16Shape" -p "spineUI_C0_root";
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
createNode nurbsCurve -n "spineUI_C0_root17Shape" -p "spineUI_C0_root";
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
createNode nurbsCurve -n "spineUI_C0_root18Shape" -p "spineUI_C0_root";
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
createNode transform -n "headUI_C0_root" -p "neck_C0_eff";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 2.9303186274198634 6.1165723857933238e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.1959579395664448e-014 -1.6980612655830299e-017 2.2301154895418016e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
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
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "headUI_C0_rootShape" -p "headUI_C0_root";
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
createNode nurbsCurve -n "headUI_C0_root7Shape" -p "headUI_C0_root";
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
createNode nurbsCurve -n "headUI_C0_root8Shape" -p "headUI_C0_root";
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
createNode nurbsCurve -n "headUI_C0_root9Shape" -p "headUI_C0_root";
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
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.69584514547310761 0.7179276789374418 1.4003887623375058e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413633 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.5373820334294297 0.53738203342942958 0.53738203342943014 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
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
createNode nurbsCurve -n "mouth_C0_root16Shape" -p "mouth_C0_root";
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
createNode nurbsCurve -n "mouth_C0_root17Shape" -p "mouth_C0_root";
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
createNode nurbsCurve -n "mouth_C0_root18Shape" -p "mouth_C0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.5243548967072378e-029 -7.1054273576010019e-015 1.7763568394002505e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.2821976677630812e-014 6.3611085135793904e-014 2.5418975026200764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999833 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
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
createNode nurbsCurve -n "mouth_C0_rotcenter16Shape" -p "mouth_C0_rotcenter";
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
createNode nurbsCurve -n "mouth_C0_rotcenter17Shape" -p "mouth_C0_rotcenter";
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
createNode nurbsCurve -n "mouth_C0_rotcenter18Shape" -p "mouth_C0_rotcenter";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter18_0crvShape" -p "mouth_C0_rotcenter";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter18_1crvShape" -p "mouth_C0_rotcenter";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "mouth_C0_lipup" -p "mouth_C0_rotcenter";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2971617835368652e-015 -0.83057537847144047 2.648585425540702 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.2821976677630816e-014 6.3611085135793929e-014 2.5418975026200777e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
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
createNode nurbsCurve -n "mouth_C0_lipup16Shape" -p "mouth_C0_lipup";
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
createNode nurbsCurve -n "mouth_C0_lipup17Shape" -p "mouth_C0_lipup";
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
createNode nurbsCurve -n "mouth_C0_lipup18Shape" -p "mouth_C0_lipup";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup18_0crvShape" -p "mouth_C0_lipup";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup18_1crvShape" -p "mouth_C0_lipup";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_lipup";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3721408301613223e-014 -14.161367226604185 -19.457469484456148 ;
	setAttr ".r" -type "double3" 2.2821976677630803e-014 6.3611085135793929e-014 2.5418975026200783e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691238 4.4504433171691282 4.4504433171691229 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7199177055651671e-015 -1.1237321151316078 2.4565606483465565 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.2821976677630816e-014 6.3611085135793929e-014 2.5418975026200777e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
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
createNode nurbsCurve -n "mouth_C0_liplow16Shape" -p "mouth_C0_liplow";
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
createNode nurbsCurve -n "mouth_C0_liplow17Shape" -p "mouth_C0_liplow";
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
createNode nurbsCurve -n "mouth_C0_liplow18Shape" -p "mouth_C0_liplow";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow18_0crvShape" -p "mouth_C0_liplow";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow18_1crvShape" -p "mouth_C0_liplow";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_liplow";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3144164223641525e-014 -13.868210489944017 -19.265444707262002 ;
	setAttr ".r" -type "double3" 2.2821976677630803e-014 6.3611085135793929e-014 2.5418975026200783e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691238 4.4504433171691282 4.4504433171691229 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0534086965916169e-019 -1.9431960625636968 2.0069895663162605 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.2821976677630812e-014 6.3611085135793904e-014 2.5418975026200764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999833 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
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
createNode nurbsCurve -n "mouth_C0_jaw16Shape" -p "mouth_C0_jaw";
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
createNode nurbsCurve -n "mouth_C0_jaw17Shape" -p "mouth_C0_jaw";
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
createNode nurbsCurve -n "mouth_C0_jaw18Shape" -p "mouth_C0_jaw";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw18_0crvShape" -p "mouth_C0_jaw";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw18_1crvShape" -p "mouth_C0_jaw";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4242465180763231e-015 -14.991942605075598 -16.808884058915396 ;
	setAttr ".r" -type "double3" 2.2821976677630809e-014 6.3611085135793892e-014 2.5418975026200761e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691185 4.4504433171691185 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv6" -p "mouth_C0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4242465180763231e-015 -14.991942605075598 -16.808884058915396 ;
	setAttr ".r" -type "double3" 2.2821976677630809e-014 6.3611085135793892e-014 2.5418975026200761e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691185 4.4504433171691185 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crv6Shape" -p "mouth_C0_crv6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv6ShapeOrig" -p "mouth_C0_crv6";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.9771436298332095 1.022199806296153 -1.7545700686211248e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844413619 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427583 2.3915882794427579 2.3915882794427574 ;
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
	setAttr ".uniScale" yes;
	setAttr ".k_tx" yes;
	setAttr ".k_ty" yes;
	setAttr ".k_tz" yes;
	setAttr ".k_ro" yes;
	setAttr ".k_rx" yes;
	setAttr ".k_ry" yes;
	setAttr ".k_rz" yes;
	setAttr ".k_sx" yes;
	setAttr ".k_sy" yes;
	setAttr ".k_sz" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eyeslook_C0_rootShape" -p "eyeslook_C0_root";
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
createNode nurbsCurve -n "eyeslook_C0_root16Shape" -p "eyeslook_C0_root";
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
createNode nurbsCurve -n "eyeslook_C0_root17Shape" -p "eyeslook_C0_root";
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
createNode nurbsCurve -n "eyeslook_C0_root18Shape" -p "eyeslook_C0_root";
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
createNode transform -n "eye_L0_root" -p "neck_C0_head";
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
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.25733245506885893 1.0267893607782375 -0.42107730061382637 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 75.993552494737415 179.9617758071555 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427552 2.391588279442761 2.3915882794427543 ;
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
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
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
createNode nurbsCurve -n "eye_L0_root16Shape" -p "eye_L0_root";
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
createNode nurbsCurve -n "eye_L0_root17Shape" -p "eye_L0_root";
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
createNode nurbsCurve -n "eye_L0_root18Shape" -p "eye_L0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 6.6613381477509392e-015 2.0321341905376458 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.5570466799571462e-014 4.770832022195272e-015 -6.386105210042605e-017 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999833 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
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
createNode nurbsCurve -n "eye_L0_look16Shape" -p "eye_L0_look";
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
createNode nurbsCurve -n "eye_L0_look17Shape" -p "eye_L0_look";
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
createNode nurbsCurve -n "eye_L0_look18Shape" -p "eye_L0_look";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_L0_look18_0crvShape" -p "eye_L0_look";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_L0_look18_1crvShape" -p "eye_L0_look";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "eye_L0_crv" -p "eye_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753399 -3.4976629291575785 -3.5292331821335625 ;
	setAttr ".r" -type "double3" 2.6354011171953805e-014 -14.006447505262573 -9.1556957360770358e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999833 1.0000000000000018 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
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
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.25733245506886249 1.0267893607782339 0.42107730061382809 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 -75.993552494737443 179.9617758071557 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427556 2.391588279442761 -2.3915882794427552 ;
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
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
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
createNode nurbsCurve -n "eye_R0_root7Shape" -p "eye_R0_root";
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
createNode nurbsCurve -n "eye_R0_root8Shape" -p "eye_R0_root";
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
createNode nurbsCurve -n "eye_R0_root9Shape" -p "eye_R0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 6.6613381477509392e-015 2.0321341905376422 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 1.5902773407317588e-015 1.5464058296736076e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999778 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
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
createNode nurbsCurve -n "eye_R0_look7Shape" -p "eye_R0_look";
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
createNode nurbsCurve -n "eye_R0_look8Shape" -p "eye_R0_look";
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
createNode nurbsCurve -n "eye_R0_look9Shape" -p "eye_R0_look";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_R0_look9_0crvShape" -p "eye_R0_look";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_R0_look9_1crvShape" -p "eye_R0_look";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "eye_R0_crv" -p "eye_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.6988974297475341 -3.4976629291575767 -3.5292331821335607 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999811 -1.0000000000000011 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.094534318000986772 -0.76996010281298766 1.5833033991300249e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5097839127112533e-015 -5.8147294396561425e-015 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
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
createNode nurbsCurve -n "neck_C0_tanShape12" -p "neck_C0_tan1";
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
createNode nurbsCurve -n "neck_C0_tanShape13" -p "neck_C0_tan1";
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
createNode nurbsCurve -n "neck_C0_tanShape14" -p "neck_C0_tan1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan12_0crvShape" -p "neck_C0_tan1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan12_1crvShape" -p "neck_C0_tan1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "neck_C0_head_crv" -p "neck_C0_neck";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550712 -10.274847894363644 4.4383048488342689e-016 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.3915882794427565 2.3915882794427543 2.3915882794427556 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.016734587625117481 0.81123959492320008 -2.1361002026221207e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5097839127112494e-015 -5.8147294396561354e-015 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
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
createNode nurbsCurve -n "neck_C0_tanShape11" -p "neck_C0_tan0";
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
createNode nurbsCurve -n "neck_C0_tanShape12" -p "neck_C0_tan0";
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
createNode nurbsCurve -n "neck_C0_tanShape13" -p "neck_C0_tan0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan11_0crvShape" -p "neck_C0_tan0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan11_1crvShape" -p "neck_C0_tan0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "neck_C0_blade" -p "neck_C0_root";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" -360;
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
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
createNode aimConstraint -n "neck_C0_blade_aimConstraint6" -p "neck_C0_blade";
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
	setAttr ".o" -type "double3" -360 0 360 ;
	setAttr ".rsrr" -type "double3" -540 -1.4124500153760511e-030 451.18175355423006 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint6" -p "neck_C0_blade";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.976162134148518 -6.6105608685998307 -4.2748483121262576e-016 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 -0.2008240179060824 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.1102915763618229 2.1102915763618237 2.1102915763618237 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
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
createNode nurbsCurve -n "shoulder_L0_root16Shape" -p "shoulder_L0_root";
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
createNode nurbsCurve -n "shoulder_L0_root17Shape" -p "shoulder_L0_root";
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
createNode nurbsCurve -n "shoulder_L0_root18Shape" -p "shoulder_L0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724661 -0.20882616370654983 0.20663608494886754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_0_locShape" -p "shoulder_L0_0_loc";
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
createNode nurbsCurve -n "shoulder_L0_0_loc16Shape" -p "shoulder_L0_0_loc";
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
createNode nurbsCurve -n "shoulder_L0_0_loc17Shape" -p "shoulder_L0_0_loc";
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
createNode nurbsCurve -n "shoulder_L0_0_loc18Shape" -p "shoulder_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc18_0crvShape" -p "shoulder_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc18_1crvShape" -p "shoulder_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_L0_root" -p "shoulder_L0_0_loc";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.9920072216264089e-016 -3.1086244689504383e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854045e-014 2.8624992133171667e-014 6.9972202992197388e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950315 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".full3BonesIK" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr -k on ".ikSolver" 1;
	setAttr ".ikOri" yes;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legFront_L0_rootShape" -p "legFront_L0_root";
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
createNode nurbsCurve -n "legFront_L0_root16Shape" -p "legFront_L0_root";
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
createNode nurbsCurve -n "legFront_L0_root17Shape" -p "legFront_L0_root";
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
createNode nurbsCurve -n "legFront_L0_root18Shape" -p "legFront_L0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.1240863021370502 -0.48633856256837493 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854059e-014 2.8624992133171673e-014 6.9972202992197325e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
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
createNode nurbsCurve -n "legFront_L0_knee16Shape" -p "legFront_L0_knee";
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
createNode nurbsCurve -n "legFront_L0_knee17Shape" -p "legFront_L0_knee";
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
createNode nurbsCurve -n "legFront_L0_knee18Shape" -p "legFront_L0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee18_0crvShape" -p "legFront_L0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee18_1crvShape" -p "legFront_L0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_L0_ankle" -p "legFront_L0_knee";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.773159728050814e-015 -2.3651516407059168 0.073902270404610171 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_ankleShape" -p "legFront_L0_ankle";
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
createNode nurbsCurve -n "legFront_L0_ankle16Shape" -p "legFront_L0_ankle";
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
createNode nurbsCurve -n "legFront_L0_ankle17Shape" -p "legFront_L0_ankle";
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
createNode nurbsCurve -n "legFront_L0_ankle18Shape" -p "legFront_L0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle18_0crvShape" -p "legFront_L0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle18_1crvShape" -p "legFront_L0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_L0_foot" -p "legFront_L0_ankle";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.1294425054275492 0.023148533894220336 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171673e-014 6.9972202992197388e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_footShape" -p "legFront_L0_foot";
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
createNode nurbsCurve -n "legFront_L0_foot16Shape" -p "legFront_L0_foot";
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
createNode nurbsCurve -n "legFront_L0_foot17Shape" -p "legFront_L0_foot";
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
createNode nurbsCurve -n "legFront_L0_foot18Shape" -p "legFront_L0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot18_0crvShape" -p "legFront_L0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot18_1crvShape" -p "legFront_L0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_L0_eff" -p "legFront_L0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 4.7184478546569153e-016 0.59657797851920868 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.9972202992197375e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_effShape" -p "legFront_L0_eff";
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
createNode nurbsCurve -n "legFront_L0_eff16Shape" -p "legFront_L0_eff";
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
createNode nurbsCurve -n "legFront_L0_eff17Shape" -p "legFront_L0_eff";
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
createNode nurbsCurve -n "legFront_L0_eff18Shape" -p "legFront_L0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff18_0crvShape" -p "legFront_L0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff18_1crvShape" -p "legFront_L0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_L0_root" -p "legFront_L0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 4.7184478546569153e-016 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514093 0.31499517602514088 0.31499517602514071 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footFront_L0_rootShape" -p "footFront_L0_root";
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
createNode nurbsCurve -n "footFront_L0_root16Shape" -p "footFront_L0_root";
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
createNode nurbsCurve -n "footFront_L0_root17Shape" -p "footFront_L0_root";
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
createNode nurbsCurve -n "footFront_L0_root18Shape" -p "footFront_L0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 5.5511151231257827e-016 0.75996190873516767 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
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
createNode nurbsCurve -n "footFront_L0_0_loc16Shape" -p "footFront_L0_0_loc";
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
createNode nurbsCurve -n "footFront_L0_0_loc17Shape" -p "footFront_L0_0_loc";
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
createNode nurbsCurve -n "footFront_L0_0_loc18Shape" -p "footFront_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc18_0crvShape" -p "footFront_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc18_1crvShape" -p "footFront_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_L0_1_loc" -p "footFront_L0_0_loc";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -0.31771180755405098 0.73937999249395503 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 2.862499213317166e-014 6.997220299219735e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_1_locShape" -p "footFront_L0_1_loc";
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
createNode nurbsCurve -n "footFront_L0_1_loc16Shape" -p "footFront_L0_1_loc";
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
createNode nurbsCurve -n "footFront_L0_1_loc17Shape" -p "footFront_L0_1_loc";
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
createNode nurbsCurve -n "footFront_L0_1_loc18Shape" -p "footFront_L0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc18_0crvShape" -p "footFront_L0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc18_1crvShape" -p "footFront_L0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_L0_crv" -p "footFront_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.368797335537363 -0.60300743522685463 -16.239037496288905 ;
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr ".s" -type "double3" 7.9431701648148092 7.9431701648148092 7.943170164814811 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -0.31771180755405065 -0.067899908672089282 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
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
createNode nurbsCurve -n "footFront_L0_heel16Shape" -p "footFront_L0_heel";
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
createNode nurbsCurve -n "footFront_L0_heel17Shape" -p "footFront_L0_heel";
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
createNode nurbsCurve -n "footFront_L0_heel18Shape" -p "footFront_L0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel18_0crvShape" -p "footFront_L0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel18_1crvShape" -p "footFront_L0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_L0_outpivot" -p "footFront_L0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120602 -0.31771180755404904 0.69157185350465866 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
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
createNode nurbsCurve -n "footFront_L0_outpivot16Shape" -p "footFront_L0_outpivot";
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
createNode nurbsCurve -n "footFront_L0_outpivot17Shape" -p "footFront_L0_outpivot";
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
createNode nurbsCurve -n "footFront_L0_outpivot18Shape" -p "footFront_L0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot18_0crvShape" -p "footFront_L0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot18_1crvShape" -p "footFront_L0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_L0_inpivot" -p "footFront_L0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722966 -0.3177118075540516 0.8634001128566382 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
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
createNode nurbsCurve -n "footFront_L0_inpivot16Shape" -p "footFront_L0_inpivot";
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
createNode nurbsCurve -n "footFront_L0_inpivot17Shape" -p "footFront_L0_inpivot";
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
createNode nurbsCurve -n "footFront_L0_inpivot18Shape" -p "footFront_L0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot18_0crvShape" -p "footFront_L0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot18_1crvShape" -p "footFront_L0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_L0_1" -p "footFront_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.368797335537363 -0.60300743522685463 -16.239037496288905 ;
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr ".s" -type "double3" 7.9431701648148092 7.9431701648148092 7.943170164814811 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig" -p "footFront_L0_1";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 10.017876024668169 5.4248605945583241 2.5678955088137982 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148092 7.9431701648148092 7.9431701648148145 ;
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
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "frontLegUI_L0_rootShape" -p "frontLegUI_L0_root";
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
createNode nurbsCurve -n "frontLegUI_L0_root16Shape" -p "frontLegUI_L0_root";
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
createNode nurbsCurve -n "frontLegUI_L0_root17Shape" -p "frontLegUI_L0_root";
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
createNode nurbsCurve -n "frontLegUI_L0_root18Shape" -p "frontLegUI_L0_root";
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
createNode transform -n "legFront_L0_crv1" -p "legFront_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011685 -5.808624881474266 -5.5045062328919334 ;
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171667e-014 6.9972202992197325e-014 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634867 2.5020602842634885 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig" -p "legFront_L0_crv1";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999922 0.99999999999999922 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		1.2661749458170937 0 0
		0 0.42205831527236454 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint6" -p "shoulder_L0_blade";
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
	setAttr ".rsrr" -type "double3" 3.3599751382067669 -13.536129435773095 -14.081236533000181 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint6" -p "shoulder_L0_blade";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147562667 -2.5303629060493167 -1.9933533667490368 ;
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171654e-014 6.9972202992197337e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 0.20082401790608284 ;
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
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724616 -0.20882616370655294 0.2066360849488682 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585407e-014 3.8361546170713584e-015 6.3611093629270256e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_0_locShape" -p "shoulder_R0_0_loc";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_R0_0_loc9_0crvShape" -p "shoulder_R0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_R0_0_loc9_1crvShape" -p "shoulder_R0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_R0_root" -p "shoulder_R0_0_loc";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.7715611723760958e-016 -8.8817841970012523e-016 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 3.8361546170713576e-015 6.3611093629270351e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.3996706259595032 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".full3BonesIK" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr -k on ".ikSolver" 1;
	setAttr ".ikOri" yes;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legFront_R0_rootShape" -p "legFront_R0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -2.1240863021370489 -0.48633856256837138 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.0169394243511614e-014 -1.842772815317326e-014 1.0229444043593087e-030 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_kneeShape" -p "legFront_R0_knee";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_knee9_0crvShape" -p "legFront_R0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_knee9_1crvShape" -p "legFront_R0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_R0_ankle" -p "legFront_R0_knee";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 -2.3651516407059194 0.073902270404607506 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 7.0881345566089972e-015 -1.8734762709354161e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_ankleShape" -p "legFront_R0_ankle";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_ankle9_0crvShape" -p "legFront_R0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_ankle9_1crvShape" -p "legFront_R0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_R0_foot" -p "legFront_R0_ankle";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -1.1294425054275472 0.023148533894220336 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270225e-015 3.2461146750242986e-014 5.0846971217557966e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_foot9_0crvShape" -p "legFront_R0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_foot9_1crvShape" -p "legFront_R0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legFront_R0_eff" -p "legFront_R0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 4.4408920985006262e-016 0.59657797851921135 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.361109362927017e-015 6.4518100951784279e-015 4.7793327541214896e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_effShape" -p "legFront_R0_eff";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_eff9_0crvShape" -p "legFront_R0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_R0_eff9_1crvShape" -p "legFront_R0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_R0_root" -p "legFront_R0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 4.4408920985006262e-016 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.361109362927017e-015 6.4518100951784232e-015 4.7793327541214904e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514088 0.31499517602514104 0.31499517602514077 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footFront_R0_rootShape" -p "footFront_R0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 5.5511151231257827e-016 0.75996190873515701 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270217e-015 6.4518100951784263e-015 5.7707751075106291e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_0_locShape" -p "footFront_R0_0_loc";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_0_loc9_0crvShape" -p "footFront_R0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_0_loc9_1crvShape" -p "footFront_R0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_R0_1_loc" -p "footFront_R0_0_loc";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -0.31771180755405143 0.73937999249395503 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270233e-015 3.2461146750243012e-014 6.406620259607981e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_1_locShape" -p "footFront_R0_1_loc";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_1_loc9_0crvShape" -p "footFront_R0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_1_loc9_1crvShape" -p "footFront_R0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_R0_crv" -p "footFront_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373462 -0.60300743522684519 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -0.3177118075540506 -0.06789990867209994 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270217e-015 6.4518100951784263e-015 5.7707751075106291e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_heelShape" -p "footFront_R0_heel";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_heel9_0crvShape" -p "footFront_R0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_heel9_1crvShape" -p "footFront_R0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_R0_outpivot" -p "footFront_R0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120593 -0.31771180755405037 0.691571853504648 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270217e-015 6.4518100951784263e-015 5.7707751075106291e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_outpivotShape" -p "footFront_R0_outpivot";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_outpivot9_0crvShape" -p "footFront_R0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_outpivot9_1crvShape" -p "footFront_R0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_R0_inpivot" -p "footFront_R0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288723011 -0.31771180755405048 0.86340011285661689 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270217e-015 6.4518100951784263e-015 5.7707751075106291e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_inpivotShape" -p "footFront_R0_inpivot";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_inpivot9_0crvShape" -p "footFront_R0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_R0_inpivot9_1crvShape" -p "footFront_R0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footFront_R0_1" -p "footFront_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373462 -0.60300743522684519 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig" -p "footFront_R0_1";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 10.017876024668174 5.4248605945583073 2.567895508813784 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270225e-015 6.4518100951784319e-015 5.7707751075106291e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148048 7.9431701648148048 7.9431701648148056 ;
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
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "frontLegUI_R0_rootShape" -p "frontLegUI_R0_root";
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
createNode transform -n "legFront_R0_crv1" -p "legFront_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011703 -5.8086248814742625 -5.5045062328919352 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634871 -2.5020602842634885 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig" -p "legFront_R0_crv1";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999856 0.99999999999999922 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
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
	setAttr ".rsrr" -type "double3" 3.3599751382070187 -13.536129435773143 -14.081236533000432 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint3" -p "shoulder_R0_blade";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147563639 -2.5303629060493167 -1.9933533667490371 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000011 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint6" -p "spine_C0_blade";
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
	setAttr ".rsrr" -type "double3" 2.5444437451708125e-014 2.5444437451708128e-014 
		89.999999999999986 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint6" -p "spine_C0_blade";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21090213141047975 -0.097927178047045427 -2.6808811877076879 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.49271954884036 1.4927195488403604 1.4927195488403604 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "backLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".full3BonesIK" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".ikOri" yes;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legBack_L0_rootShape" -p "legBack_L0_root";
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
createNode nurbsCurve -n "legBack_L0_root16Shape" -p "legBack_L0_root";
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
createNode nurbsCurve -n "legBack_L0_root17Shape" -p "legBack_L0_root";
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
createNode nurbsCurve -n "legBack_L0_root18Shape" -p "legBack_L0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.1070259132757201e-015 -1.1559508743798506 0.33714517700502267 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_kneeShape" -p "legBack_L0_knee";
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
createNode nurbsCurve -n "legBack_L0_knee16Shape" -p "legBack_L0_knee";
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
createNode nurbsCurve -n "legBack_L0_knee17Shape" -p "legBack_L0_knee";
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
createNode nurbsCurve -n "legBack_L0_knee18Shape" -p "legBack_L0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee18_0crvShape" -p "legBack_L0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee18_1crvShape" -p "legBack_L0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legBack_L0_ankle" -p "legBack_L0_knee";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.886579864025407e-015 -1.4950431842245466 -0.57333193410462324 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_ankleShape" -p "legBack_L0_ankle";
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
createNode nurbsCurve -n "legBack_L0_ankle16Shape" -p "legBack_L0_ankle";
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
createNode nurbsCurve -n "legBack_L0_ankle17Shape" -p "legBack_L0_ankle";
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
createNode nurbsCurve -n "legBack_L0_ankle18Shape" -p "legBack_L0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle18_0crvShape" -p "legBack_L0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle18_1crvShape" -p "legBack_L0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legBack_L0_foot" -p "legBack_L0_ankle";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5543122344752192e-015 -0.54805580751979199 0.1505052208987292 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171673e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_footShape" -p "legBack_L0_foot";
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
createNode nurbsCurve -n "legBack_L0_foot16Shape" -p "legBack_L0_foot";
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
createNode nurbsCurve -n "legBack_L0_foot17Shape" -p "legBack_L0_foot";
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
createNode nurbsCurve -n "legBack_L0_foot18Shape" -p "legBack_L0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot18_0crvShape" -p "legBack_L0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot18_1crvShape" -p "legBack_L0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legBack_L0_eff" -p "legBack_L0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 6.6613381477509392e-016 0.28135643819707479 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854053e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999922 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_effShape" -p "legBack_L0_eff";
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
createNode nurbsCurve -n "legBack_L0_eff16Shape" -p "legBack_L0_eff";
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
createNode nurbsCurve -n "legBack_L0_eff17Shape" -p "legBack_L0_eff";
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
createNode nurbsCurve -n "legBack_L0_eff18Shape" -p "legBack_L0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff18_0crvShape" -p "legBack_L0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff18_1crvShape" -p "legBack_L0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_L0_root" -p "legBack_L0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 7.6327832942979512e-016 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398098 0.1635625476539809 0.16356254765398082 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footBack_L0_rootShape" -p "footBack_L0_root";
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
createNode nurbsCurve -n "footBack_L0_root16Shape" -p "footBack_L0_root";
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
createNode nurbsCurve -n "footBack_L0_root17Shape" -p "footBack_L0_root";
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
createNode nurbsCurve -n "footBack_L0_root18Shape" -p "footBack_L0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2434497875801753e-014 1.1102230246251565e-016 0.54565565303279406 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171686e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_0_locShape" -p "footBack_L0_0_loc";
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
createNode nurbsCurve -n "footBack_L0_0_loc16Shape" -p "footBack_L0_0_loc";
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
createNode nurbsCurve -n "footBack_L0_0_loc17Shape" -p "footBack_L0_0_loc";
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
createNode nurbsCurve -n "footBack_L0_0_loc18Shape" -p "footBack_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc18_0crvShape" -p "footBack_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc18_1crvShape" -p "footBack_L0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_L0_1_loc" -p "footBack_L0_0_loc";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -0.34547277013915578 0.77046072389792819 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
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
createNode nurbsCurve -n "footBack_L0_1_loc16Shape" -p "footBack_L0_1_loc";
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
createNode nurbsCurve -n "footBack_L0_1_loc17Shape" -p "footBack_L0_1_loc";
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
createNode nurbsCurve -n "footBack_L0_1_loc18Shape" -p "footBack_L0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc18_0crvShape" -p "footBack_L0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc18_1crvShape" -p "footBack_L0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_L0_crv" -p "footBack_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358959 11.584116504196622 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171686e-014 6.9972202992197375e-014 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.5987211554602254e-014 -0.34547277013915623 -0.3726000393397868 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171686e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_heelShape" -p "footBack_L0_heel";
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
createNode nurbsCurve -n "footBack_L0_heel16Shape" -p "footBack_L0_heel";
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
createNode nurbsCurve -n "footBack_L0_heel17Shape" -p "footBack_L0_heel";
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
createNode nurbsCurve -n "footBack_L0_heel18Shape" -p "footBack_L0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel18_0crvShape" -p "footBack_L0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel18_1crvShape" -p "footBack_L0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_L0_outpivot" -p "footBack_L0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139779 -0.34547277013915501 0.11497296198778884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171686e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_outpivotShape" -p "footBack_L0_outpivot";
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
createNode nurbsCurve -n "footBack_L0_outpivot16Shape" -p "footBack_L0_outpivot";
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
createNode nurbsCurve -n "footBack_L0_outpivot17Shape" -p "footBack_L0_outpivot";
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
createNode nurbsCurve -n "footBack_L0_outpivot18Shape" -p "footBack_L0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot18_0crvShape" -p "footBack_L0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot18_1crvShape" -p "footBack_L0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_L0_inpivot" -p "footBack_L0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215689 -0.34547277013915734 0.21228136011731991 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171686e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_inpivotShape" -p "footBack_L0_inpivot";
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
createNode nurbsCurve -n "footBack_L0_inpivot16Shape" -p "footBack_L0_inpivot";
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
createNode nurbsCurve -n "footBack_L0_inpivot17Shape" -p "footBack_L0_inpivot";
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
createNode nurbsCurve -n "footBack_L0_inpivot18Shape" -p "footBack_L0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot18_0crvShape" -p "footBack_L0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot18_1crvShape" -p "footBack_L0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_L0_1" -p "footBack_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358959 11.584116504196622 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171686e-014 6.9972202992197375e-014 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig" -p "footBack_L0_1";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.9148715870389736 6.0337539388988635 -0.92016921390297313 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171686e-014 6.9972202992197375e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 8.6433157474725739 8.6433157474725775 8.643315747472581 ;
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
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "backLegUI_L0_rootShape" -p "backLegUI_L0_root";
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
createNode nurbsCurve -n "backLegUI_L0_root16Shape" -p "backLegUI_L0_root";
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
createNode nurbsCurve -n "backLegUI_L0_root17Shape" -p "backLegUI_L0_root";
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
createNode nurbsCurve -n "backLegUI_L0_root18Shape" -p "backLegUI_L0_root";
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
createNode transform -n "legBack_L0_crv1" -p "legBack_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807502 -3.2803056907023973 1.8090460715460559 ;
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.4137227438343878 1.4137227438343878 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig" -p "legBack_L0_crv1";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "full3BonesIK" -ln "full3BonesIK" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "ikOri" -ln "ikOri" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21090213141048153 -0.097927178047042762 2.6808811877076875 ;
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
	setAttr ".blend" 1;
	setAttr ".full3BonesIK" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".ikOri" yes;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legBack_R0_rootShape" -p "legBack_R0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.155950874379851 0.33714517700502289 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -8.9990903671451605e-015 -5.7055094273191856e-015 3.1671939667128255e-031 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_knee9_0crvShape" -p "legBack_R0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_knee9_1crvShape" -p "legBack_R0_knee";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legBack_R0_ankle" -p "legBack_R0_knee";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 -1.4950431842245466 -0.57333193410462413 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -4.4995451835725858e-015 7.2784845163361133e-015 9.5586304819833221e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999922 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_ankleShape" -p "legBack_R0_ankle";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_ankle9_0crvShape" -p "legBack_R0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_ankle9_1crvShape" -p "legBack_R0_ankle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legBack_R0_foot" -p "legBack_R0_ankle";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 -0.54805580751979133 0.15050522089872853 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.361109362927017e-015 1.4055911703408827e-014 1.0085175896158536e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_footShape" -p "legBack_R0_foot";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_foot9_0crvShape" -p "legBack_R0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_foot9_1crvShape" -p "legBack_R0_foot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "legBack_R0_eff" -p "legBack_R0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9984014443252818e-015 2.3592239273284576e-016 0.28135643819707568 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270233e-015 6.8849093053839633e-015 6.2149181609511864e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999922 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_effShape" -p "legBack_R0_eff";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_eff9_0crvShape" -p "legBack_R0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_R0_eff9_1crvShape" -p "legBack_R0_eff";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_R0_root" -p "legBack_R0_foot";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 3.4694469519536142e-016 6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270225e-015 6.884909305383968e-015 6.2149181609511848e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398098 0.1635625476539809 0.16356254765398087 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footBack_R0_rootShape" -p "footBack_R0_root";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-015 3.3306690738754696e-016 0.54565565303279229 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270256e-015 6.8849093053839861e-015 6.6307065094937105e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_0_locShape" -p "footBack_R0_0_loc";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_0_loc9_0crvShape" -p "footBack_R0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_0_loc9_1crvShape" -p "footBack_R0_0_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_R0_1_loc" -p "footBack_R0_0_loc";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -0.34547277013915584 0.77046072389792464 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270217e-015 -3.4186626036357483e-017 6.2650922553756207e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_1_locShape" -p "footBack_R0_1_loc";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_1_loc9_0crvShape" -p "footBack_R0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_1_loc9_1crvShape" -p "footBack_R0_1_loc";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_R0_crv" -p "footBack_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718955 -0.49678747209357782 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725792 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-014 -0.34547277013915578 -0.37260003933978858 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270256e-015 6.8849093053839861e-015 6.6307065094937105e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_heelShape" -p "footBack_R0_heel";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_heel9_0crvShape" -p "footBack_R0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_heel9_1crvShape" -p "footBack_R0_heel";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_R0_outpivot" -p "footBack_R0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139833 -0.34547277013915578 0.11497296198778351 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270256e-015 6.8849093053839861e-015 6.6307065094937105e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_outpivotShape" -p "footBack_R0_outpivot";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_outpivot9_0crvShape" -p "footBack_R0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_outpivot9_1crvShape" -p "footBack_R0_outpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_R0_inpivot" -p "footBack_R0_root";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215618 -0.34547277013915573 0.21228136011731458 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270256e-015 6.8849093053839861e-015 6.6307065094937105e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_inpivotShape" -p "footBack_R0_inpivot";
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
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_inpivot9_0crvShape" -p "footBack_R0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_R0_inpivot9_1crvShape" -p "footBack_R0_inpivot";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		0 0.1875 0
		0 0 0.1875
		0 -0.1875 0
		0 0 -0.1875
		;
createNode transform -n "footBack_R0_1" -p "footBack_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718955 -0.49678747209357782 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725792 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig" -p "footBack_R0_1";
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
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.9148715870389861 6.0337539388988528 -0.92016921390297135 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270256e-015 6.884909305383983e-015 6.6307065094937113e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 8.6433157474725739 8.6433157474725775 8.6433157474725828 ;
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
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "backLegUI_R0_rootShape" -p "backLegUI_R0_root";
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
createNode transform -n "legBack_R0_crv1" -p "legBack_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807555 -3.2803056907023964 1.8090460715460535 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.413722743834388 -1.4137227438343878 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig" -p "legBack_R0_crv1";
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
createNode animCurveUU -n "spine_C0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "neck_C0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns137";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns137Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns137GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns137GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak137";
createNode objectSet -n "tweakSet137";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId274";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts274";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns138";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns138Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns138GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns138GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak138";
createNode objectSet -n "tweakSet138";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId276";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts276";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns136";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns136Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns136GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns136GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak136";
createNode objectSet -n "tweakSet136";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId272";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts272";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns139";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns139Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns139GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns139GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak139";
createNode objectSet -n "tweakSet139";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId278";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts278";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns140";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns140Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns140GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns140GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak140";
createNode objectSet -n "tweakSet140";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId280";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts280";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns141";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns141Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns141GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns141GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak141";
createNode objectSet -n "tweakSet141";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId282";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts282";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns135";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns135Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns135GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns135GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak135";
createNode objectSet -n "tweakSet135";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId270";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts270";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion25";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns134";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns134Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns134GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns134GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak134";
createNode objectSet -n "tweakSet134";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId268";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts268";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns144";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns144Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns144GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns144GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak144";
createNode objectSet -n "tweakSet144";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId288";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts288";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns145";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns145Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns145GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns145GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak145";
createNode objectSet -n "tweakSet145";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId290";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts290";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns143";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns143Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns143GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns143GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak143";
createNode objectSet -n "tweakSet143";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId286";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts286";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion26";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns142";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns142Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns142GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns142GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak142";
createNode objectSet -n "tweakSet142";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId284";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts284";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns148";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns148Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns148GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns148GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak148";
createNode objectSet -n "tweakSet148";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId296";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts296";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns149";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns149Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns149GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns149GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak149";
createNode objectSet -n "tweakSet149";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId298";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts298";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns147";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns147Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns147GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns147GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak147";
createNode objectSet -n "tweakSet147";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId294";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts294";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion27";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns146";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns146Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns146GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns146GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak146";
createNode objectSet -n "tweakSet146";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId292";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts292";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion24";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns133";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns133Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns133GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns133GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak133";
createNode objectSet -n "tweakSet133";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId266";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts266";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns151";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns151Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns151GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns151GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak151";
createNode objectSet -n "tweakSet151";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId302";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts302";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns152";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns152Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns152GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns152GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak152";
createNode objectSet -n "tweakSet152";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId304";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts304";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns150";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns150Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns150GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns150GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak150";
createNode objectSet -n "tweakSet150";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId300";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts300";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns154";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns154Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns154GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns154GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak154";
createNode objectSet -n "tweakSet154";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId308";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts308";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns155";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns155Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns155GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns155GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak155";
createNode objectSet -n "tweakSet155";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId310";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts310";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns153";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns153Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns153GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns153GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak153";
createNode objectSet -n "tweakSet153";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId306";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts306";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
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
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "spine_C0_root_st_profile1.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile1.o" "spine_C0_root.sq_profile";
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns137.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak137.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns137GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns137Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId274.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet137.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns138.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak138.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns138GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns138Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId276.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet138.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns136.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak136.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns136GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns136Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId272.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet136.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns139.og[0]" "mouth_C0_crv6Shape.cr";
connectAttr "tweak139.pl[0].cp[0]" "mouth_C0_crv6Shape.twl";
connectAttr "mgear_curveCns139GroupId.id" "mouth_C0_crv6Shape.iog.og[0].gid";
connectAttr "mgear_curveCns139Set.mwc" "mouth_C0_crv6Shape.iog.og[0].gco";
connectAttr "groupId278.id" "mouth_C0_crv6Shape.iog.og[1].gid";
connectAttr "tweakSet139.mwc" "mouth_C0_crv6Shape.iog.og[1].gco";
connectAttr "mgear_curveCns140.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak140.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns140GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns140Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId280.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet140.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns141.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak141.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns141GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns141Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId282.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet141.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns135.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak135.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns135GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns135Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId270.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet135.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint6.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint6.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint6.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint6.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint6.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint6.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint6.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint6.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint6.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint6.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint6.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint6.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint6.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint6.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint6.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint6.w0" "neck_C0_blade_aimConstraint6.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint6.wum";
connectAttr "unitConversion25.o" "neck_C0_blade_aimConstraint6.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint6.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint6.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint6.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint6.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint6.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint6.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint6.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint6.w0" "neck_C0_blade_pointConstraint6.tg[0].tw"
		;
connectAttr "mgear_curveCns134.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak134.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns134GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns134Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId268.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet134.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "legFront_L0_root_st_profile1.o" "legFront_L0_root.st_profile";
connectAttr "legFront_L0_root_sq_profile1.o" "legFront_L0_root.sq_profile";
connectAttr "mgear_curveCns144.og[0]" "footFront_L0_crvShape.cr";
connectAttr "tweak144.pl[0].cp[0]" "footFront_L0_crvShape.twl";
connectAttr "mgear_curveCns144GroupId.id" "footFront_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns144Set.mwc" "footFront_L0_crvShape.iog.og[0].gco";
connectAttr "groupId288.id" "footFront_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet144.mwc" "footFront_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns145.og[0]" "footFront_L0_Shape1.cr";
connectAttr "tweak145.pl[0].cp[0]" "footFront_L0_Shape1.twl";
connectAttr "mgear_curveCns145GroupId.id" "footFront_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns145Set.mwc" "footFront_L0_Shape1.iog.og[0].gco";
connectAttr "groupId290.id" "footFront_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet145.mwc" "footFront_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns143.og[0]" "legFront_L0_crvShape1.cr";
connectAttr "tweak143.pl[0].cp[0]" "legFront_L0_crvShape1.twl";
connectAttr "mgear_curveCns143GroupId.id" "legFront_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns143Set.mwc" "legFront_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId286.id" "legFront_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet143.mwc" "legFront_L0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint6.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint6.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint6.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint6.crx" "shoulder_L0_blade.rx" -l on;
connectAttr "shoulder_L0_blade_aimConstraint6.cry" "shoulder_L0_blade.ry" -l on;
connectAttr "shoulder_L0_blade_aimConstraint6.crz" "shoulder_L0_blade.rz" -l on;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint6.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint6.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint6.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint6.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint6.cro";
connectAttr "shoulder_L0_0_loc.t" "shoulder_L0_blade_aimConstraint6.tg[0].tt";
connectAttr "shoulder_L0_0_loc.rp" "shoulder_L0_blade_aimConstraint6.tg[0].trp";
connectAttr "shoulder_L0_0_loc.rpt" "shoulder_L0_blade_aimConstraint6.tg[0].trt"
		;
connectAttr "shoulder_L0_0_loc.pm" "shoulder_L0_blade_aimConstraint6.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint6.w0" "shoulder_L0_blade_aimConstraint6.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint6.wum";
connectAttr "unitConversion26.o" "shoulder_L0_blade_aimConstraint6.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint6.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint6.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint6.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint6.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint6.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint6.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint6.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint6.w0" "shoulder_L0_blade_pointConstraint6.tg[0].tw"
		;
connectAttr "mgear_curveCns142.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak142.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns142GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns142Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId284.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet142.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "legFront_R0_root_st_profile.o" "legFront_R0_root.st_profile";
connectAttr "legFront_R0_root_sq_profile.o" "legFront_R0_root.sq_profile";
connectAttr "mgear_curveCns148.og[0]" "footFront_R0_crvShape.cr";
connectAttr "tweak148.pl[0].cp[0]" "footFront_R0_crvShape.twl";
connectAttr "mgear_curveCns148GroupId.id" "footFront_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns148Set.mwc" "footFront_R0_crvShape.iog.og[0].gco";
connectAttr "groupId296.id" "footFront_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet148.mwc" "footFront_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns149.og[0]" "footFront_R0_Shape1.cr";
connectAttr "tweak149.pl[0].cp[0]" "footFront_R0_Shape1.twl";
connectAttr "mgear_curveCns149GroupId.id" "footFront_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns149Set.mwc" "footFront_R0_Shape1.iog.og[0].gco";
connectAttr "groupId298.id" "footFront_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet149.mwc" "footFront_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns147.og[0]" "legFront_R0_crvShape1.cr";
connectAttr "tweak147.pl[0].cp[0]" "legFront_R0_crvShape1.twl";
connectAttr "mgear_curveCns147GroupId.id" "legFront_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns147Set.mwc" "legFront_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId294.id" "legFront_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet147.mwc" "legFront_R0_crvShape1.iog.og[1].gco";
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
connectAttr "unitConversion27.o" "shoulder_R0_blade_aimConstraint3.ox";
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
connectAttr "mgear_curveCns146.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak146.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns146GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns146Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId292.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet146.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint6.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint6.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint6.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint6.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint6.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint6.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint6.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint6.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint6.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint6.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint6.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint6.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint6.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint6.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint6.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint6.w0" "spine_C0_blade_aimConstraint6.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint6.wum";
connectAttr "unitConversion24.o" "spine_C0_blade_aimConstraint6.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint6.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint6.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint6.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint6.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint6.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint6.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint6.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint6.w0" "spine_C0_blade_pointConstraint6.tg[0].tw"
		;
connectAttr "mgear_curveCns133.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak133.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns133GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns133Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId266.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet133.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "legBack_L0_root_st_profile1.o" "legBack_L0_root.st_profile";
connectAttr "legBack_L0_root_sq_profile1.o" "legBack_L0_root.sq_profile";
connectAttr "mgear_curveCns151.og[0]" "footBack_L0_crvShape.cr";
connectAttr "tweak151.pl[0].cp[0]" "footBack_L0_crvShape.twl";
connectAttr "mgear_curveCns151GroupId.id" "footBack_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns151Set.mwc" "footBack_L0_crvShape.iog.og[0].gco";
connectAttr "groupId302.id" "footBack_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet151.mwc" "footBack_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns152.og[0]" "footBack_L0_Shape1.cr";
connectAttr "tweak152.pl[0].cp[0]" "footBack_L0_Shape1.twl";
connectAttr "mgear_curveCns152GroupId.id" "footBack_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns152Set.mwc" "footBack_L0_Shape1.iog.og[0].gco";
connectAttr "groupId304.id" "footBack_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet152.mwc" "footBack_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns150.og[0]" "legBack_L0_crvShape1.cr";
connectAttr "tweak150.pl[0].cp[0]" "legBack_L0_crvShape1.twl";
connectAttr "mgear_curveCns150GroupId.id" "legBack_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns150Set.mwc" "legBack_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId300.id" "legBack_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet150.mwc" "legBack_L0_crvShape1.iog.og[1].gco";
connectAttr "legBack_R0_root_st_profile.o" "legBack_R0_root.st_profile";
connectAttr "legBack_R0_root_sq_profile.o" "legBack_R0_root.sq_profile";
connectAttr "mgear_curveCns154.og[0]" "footBack_R0_crvShape.cr";
connectAttr "tweak154.pl[0].cp[0]" "footBack_R0_crvShape.twl";
connectAttr "mgear_curveCns154GroupId.id" "footBack_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns154Set.mwc" "footBack_R0_crvShape.iog.og[0].gco";
connectAttr "groupId308.id" "footBack_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet154.mwc" "footBack_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns155.og[0]" "footBack_R0_Shape1.cr";
connectAttr "tweak155.pl[0].cp[0]" "footBack_R0_Shape1.twl";
connectAttr "mgear_curveCns155GroupId.id" "footBack_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns155Set.mwc" "footBack_R0_Shape1.iog.og[0].gco";
connectAttr "groupId310.id" "footBack_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet155.mwc" "footBack_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns153.og[0]" "legBack_R0_crvShape1.cr";
connectAttr "tweak153.pl[0].cp[0]" "legBack_R0_crvShape1.twl";
connectAttr "mgear_curveCns153GroupId.id" "legBack_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns153Set.mwc" "legBack_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId306.id" "legBack_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet153.mwc" "legBack_R0_crvShape1.iog.og[1].gco";
connectAttr "mgear_curveCns137GroupParts.og" "mgear_curveCns137.ip[0].ig";
connectAttr "mgear_curveCns137GroupId.id" "mgear_curveCns137.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns137.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns137.inputs[1]";
connectAttr "mgear_curveCns137GroupId.msg" "mgear_curveCns137Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns137Set.dsm"
		 -na;
connectAttr "mgear_curveCns137.msg" "mgear_curveCns137Set.ub[0]";
connectAttr "tweak137.og[0]" "mgear_curveCns137GroupParts.ig";
connectAttr "mgear_curveCns137GroupId.id" "mgear_curveCns137GroupParts.gi";
connectAttr "groupParts274.og" "tweak137.ip[0].ig";
connectAttr "groupId274.id" "tweak137.ip[0].gi";
connectAttr "groupId274.msg" "tweakSet137.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet137.dsm"
		 -na;
connectAttr "tweak137.msg" "tweakSet137.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts274.ig"
		;
connectAttr "groupId274.id" "groupParts274.gi";
connectAttr "mgear_curveCns138GroupParts.og" "mgear_curveCns138.ip[0].ig";
connectAttr "mgear_curveCns138GroupId.id" "mgear_curveCns138.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns138.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns138.inputs[1]";
connectAttr "mgear_curveCns138GroupId.msg" "mgear_curveCns138Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns138Set.dsm"
		 -na;
connectAttr "mgear_curveCns138.msg" "mgear_curveCns138Set.ub[0]";
connectAttr "tweak138.og[0]" "mgear_curveCns138GroupParts.ig";
connectAttr "mgear_curveCns138GroupId.id" "mgear_curveCns138GroupParts.gi";
connectAttr "groupParts276.og" "tweak138.ip[0].ig";
connectAttr "groupId276.id" "tweak138.ip[0].gi";
connectAttr "groupId276.msg" "tweakSet138.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet138.dsm"
		 -na;
connectAttr "tweak138.msg" "tweakSet138.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts276.ig"
		;
connectAttr "groupId276.id" "groupParts276.gi";
connectAttr "mgear_curveCns136GroupParts.og" "mgear_curveCns136.ip[0].ig";
connectAttr "mgear_curveCns136GroupId.id" "mgear_curveCns136.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns136.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns136.inputs[1]";
connectAttr "mgear_curveCns136GroupId.msg" "mgear_curveCns136Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns136Set.dsm"
		 -na;
connectAttr "mgear_curveCns136.msg" "mgear_curveCns136Set.ub[0]";
connectAttr "tweak136.og[0]" "mgear_curveCns136GroupParts.ig";
connectAttr "mgear_curveCns136GroupId.id" "mgear_curveCns136GroupParts.gi";
connectAttr "groupParts272.og" "tweak136.ip[0].ig";
connectAttr "groupId272.id" "tweak136.ip[0].gi";
connectAttr "groupId272.msg" "tweakSet136.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet136.dsm"
		 -na;
connectAttr "tweak136.msg" "tweakSet136.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts272.ig"
		;
connectAttr "groupId272.id" "groupParts272.gi";
connectAttr "mgear_curveCns139GroupParts.og" "mgear_curveCns139.ip[0].ig";
connectAttr "mgear_curveCns139GroupId.id" "mgear_curveCns139.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns139.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns139.inputs[1]";
connectAttr "mgear_curveCns139GroupId.msg" "mgear_curveCns139Set.gn" -na;
connectAttr "mouth_C0_crv6Shape.iog.og[0]" "mgear_curveCns139Set.dsm" -na;
connectAttr "mgear_curveCns139.msg" "mgear_curveCns139Set.ub[0]";
connectAttr "tweak139.og[0]" "mgear_curveCns139GroupParts.ig";
connectAttr "mgear_curveCns139GroupId.id" "mgear_curveCns139GroupParts.gi";
connectAttr "groupParts278.og" "tweak139.ip[0].ig";
connectAttr "groupId278.id" "tweak139.ip[0].gi";
connectAttr "groupId278.msg" "tweakSet139.gn" -na;
connectAttr "mouth_C0_crv6Shape.iog.og[1]" "tweakSet139.dsm" -na;
connectAttr "tweak139.msg" "tweakSet139.ub[0]";
connectAttr "mouth_C0_crv6ShapeOrig.ws" "groupParts278.ig";
connectAttr "groupId278.id" "groupParts278.gi";
connectAttr "mgear_curveCns140GroupParts.og" "mgear_curveCns140.ip[0].ig";
connectAttr "mgear_curveCns140GroupId.id" "mgear_curveCns140.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns140.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns140.inputs[1]";
connectAttr "mgear_curveCns140GroupId.msg" "mgear_curveCns140Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns140Set.dsm" -na;
connectAttr "mgear_curveCns140.msg" "mgear_curveCns140Set.ub[0]";
connectAttr "tweak140.og[0]" "mgear_curveCns140GroupParts.ig";
connectAttr "mgear_curveCns140GroupId.id" "mgear_curveCns140GroupParts.gi";
connectAttr "groupParts280.og" "tweak140.ip[0].ig";
connectAttr "groupId280.id" "tweak140.ip[0].gi";
connectAttr "groupId280.msg" "tweakSet140.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet140.dsm" -na;
connectAttr "tweak140.msg" "tweakSet140.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts280.ig";
connectAttr "groupId280.id" "groupParts280.gi";
connectAttr "mgear_curveCns141GroupParts.og" "mgear_curveCns141.ip[0].ig";
connectAttr "mgear_curveCns141GroupId.id" "mgear_curveCns141.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns141.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns141.inputs[1]";
connectAttr "mgear_curveCns141GroupId.msg" "mgear_curveCns141Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns141Set.dsm" -na;
connectAttr "mgear_curveCns141.msg" "mgear_curveCns141Set.ub[0]";
connectAttr "tweak141.og[0]" "mgear_curveCns141GroupParts.ig";
connectAttr "mgear_curveCns141GroupId.id" "mgear_curveCns141GroupParts.gi";
connectAttr "groupParts282.og" "tweak141.ip[0].ig";
connectAttr "groupId282.id" "tweak141.ip[0].gi";
connectAttr "groupId282.msg" "tweakSet141.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet141.dsm" -na;
connectAttr "tweak141.msg" "tweakSet141.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts282.ig";
connectAttr "groupId282.id" "groupParts282.gi";
connectAttr "mgear_curveCns135GroupParts.og" "mgear_curveCns135.ip[0].ig";
connectAttr "mgear_curveCns135GroupId.id" "mgear_curveCns135.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns135.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns135.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns135.inputs[2]";
connectAttr "mgear_curveCns135GroupId.msg" "mgear_curveCns135Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns135Set.dsm" -na;
connectAttr "mgear_curveCns135.msg" "mgear_curveCns135Set.ub[0]";
connectAttr "tweak135.og[0]" "mgear_curveCns135GroupParts.ig";
connectAttr "mgear_curveCns135GroupId.id" "mgear_curveCns135GroupParts.gi";
connectAttr "groupParts270.og" "tweak135.ip[0].ig";
connectAttr "groupId270.id" "tweak135.ip[0].gi";
connectAttr "groupId270.msg" "tweakSet135.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet135.dsm" -na;
connectAttr "tweak135.msg" "tweakSet135.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts270.ig";
connectAttr "groupId270.id" "groupParts270.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion25.i";
connectAttr "mgear_curveCns134GroupParts.og" "mgear_curveCns134.ip[0].ig";
connectAttr "mgear_curveCns134GroupId.id" "mgear_curveCns134.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns134.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns134.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns134.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns134.inputs[3]";
connectAttr "mgear_curveCns134GroupId.msg" "mgear_curveCns134Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns134Set.dsm" -na;
connectAttr "mgear_curveCns134.msg" "mgear_curveCns134Set.ub[0]";
connectAttr "tweak134.og[0]" "mgear_curveCns134GroupParts.ig";
connectAttr "mgear_curveCns134GroupId.id" "mgear_curveCns134GroupParts.gi";
connectAttr "groupParts268.og" "tweak134.ip[0].ig";
connectAttr "groupId268.id" "tweak134.ip[0].gi";
connectAttr "groupId268.msg" "tweakSet134.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet134.dsm" -na;
connectAttr "tweak134.msg" "tweakSet134.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts268.ig";
connectAttr "groupId268.id" "groupParts268.gi";
connectAttr "mgear_curveCns144GroupParts.og" "mgear_curveCns144.ip[0].ig";
connectAttr "mgear_curveCns144GroupId.id" "mgear_curveCns144.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns144.inputs[0]";
connectAttr "footFront_L0_0_loc.wm" "mgear_curveCns144.inputs[1]";
connectAttr "footFront_L0_1_loc.wm" "mgear_curveCns144.inputs[2]";
connectAttr "mgear_curveCns144GroupId.msg" "mgear_curveCns144Set.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[0]" "mgear_curveCns144Set.dsm" -na;
connectAttr "mgear_curveCns144.msg" "mgear_curveCns144Set.ub[0]";
connectAttr "tweak144.og[0]" "mgear_curveCns144GroupParts.ig";
connectAttr "mgear_curveCns144GroupId.id" "mgear_curveCns144GroupParts.gi";
connectAttr "groupParts288.og" "tweak144.ip[0].ig";
connectAttr "groupId288.id" "tweak144.ip[0].gi";
connectAttr "groupId288.msg" "tweakSet144.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[1]" "tweakSet144.dsm" -na;
connectAttr "tweak144.msg" "tweakSet144.ub[0]";
connectAttr "footFront_L0_crvShapeOrig.ws" "groupParts288.ig";
connectAttr "groupId288.id" "groupParts288.gi";
connectAttr "mgear_curveCns145GroupParts.og" "mgear_curveCns145.ip[0].ig";
connectAttr "mgear_curveCns145GroupId.id" "mgear_curveCns145.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns145.inputs[0]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns145.inputs[1]";
connectAttr "footFront_L0_outpivot.wm" "mgear_curveCns145.inputs[2]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns145.inputs[3]";
connectAttr "footFront_L0_inpivot.wm" "mgear_curveCns145.inputs[4]";
connectAttr "mgear_curveCns145GroupId.msg" "mgear_curveCns145Set.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[0]" "mgear_curveCns145Set.dsm" -na;
connectAttr "mgear_curveCns145.msg" "mgear_curveCns145Set.ub[0]";
connectAttr "tweak145.og[0]" "mgear_curveCns145GroupParts.ig";
connectAttr "mgear_curveCns145GroupId.id" "mgear_curveCns145GroupParts.gi";
connectAttr "groupParts290.og" "tweak145.ip[0].ig";
connectAttr "groupId290.id" "tweak145.ip[0].gi";
connectAttr "groupId290.msg" "tweakSet145.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[1]" "tweakSet145.dsm" -na;
connectAttr "tweak145.msg" "tweakSet145.ub[0]";
connectAttr "footFront_L0_Shape1Orig.ws" "groupParts290.ig";
connectAttr "groupId290.id" "groupParts290.gi";
connectAttr "mgear_curveCns143GroupParts.og" "mgear_curveCns143.ip[0].ig";
connectAttr "mgear_curveCns143GroupId.id" "mgear_curveCns143.ip[0].gi";
connectAttr "legFront_L0_root.wm" "mgear_curveCns143.inputs[0]";
connectAttr "legFront_L0_knee.wm" "mgear_curveCns143.inputs[1]";
connectAttr "legFront_L0_ankle.wm" "mgear_curveCns143.inputs[2]";
connectAttr "legFront_L0_foot.wm" "mgear_curveCns143.inputs[3]";
connectAttr "legFront_L0_eff.wm" "mgear_curveCns143.inputs[4]";
connectAttr "mgear_curveCns143GroupId.msg" "mgear_curveCns143Set.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[0]" "mgear_curveCns143Set.dsm" -na;
connectAttr "mgear_curveCns143.msg" "mgear_curveCns143Set.ub[0]";
connectAttr "tweak143.og[0]" "mgear_curveCns143GroupParts.ig";
connectAttr "mgear_curveCns143GroupId.id" "mgear_curveCns143GroupParts.gi";
connectAttr "groupParts286.og" "tweak143.ip[0].ig";
connectAttr "groupId286.id" "tweak143.ip[0].gi";
connectAttr "groupId286.msg" "tweakSet143.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[1]" "tweakSet143.dsm" -na;
connectAttr "tweak143.msg" "tweakSet143.ub[0]";
connectAttr "legFront_L0_crvShape1Orig.ws" "groupParts286.ig";
connectAttr "groupId286.id" "groupParts286.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion26.i";
connectAttr "mgear_curveCns142GroupParts.og" "mgear_curveCns142.ip[0].ig";
connectAttr "mgear_curveCns142GroupId.id" "mgear_curveCns142.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns142.inputs[0]";
connectAttr "shoulder_L0_0_loc.wm" "mgear_curveCns142.inputs[1]";
connectAttr "mgear_curveCns142GroupId.msg" "mgear_curveCns142Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns142Set.dsm" -na;
connectAttr "mgear_curveCns142.msg" "mgear_curveCns142Set.ub[0]";
connectAttr "tweak142.og[0]" "mgear_curveCns142GroupParts.ig";
connectAttr "mgear_curveCns142GroupId.id" "mgear_curveCns142GroupParts.gi";
connectAttr "groupParts284.og" "tweak142.ip[0].ig";
connectAttr "groupId284.id" "tweak142.ip[0].gi";
connectAttr "groupId284.msg" "tweakSet142.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet142.dsm" -na;
connectAttr "tweak142.msg" "tweakSet142.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts284.ig";
connectAttr "groupId284.id" "groupParts284.gi";
connectAttr "mgear_curveCns148GroupParts.og" "mgear_curveCns148.ip[0].ig";
connectAttr "mgear_curveCns148GroupId.id" "mgear_curveCns148.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns148.inputs[0]";
connectAttr "footFront_R0_0_loc.wm" "mgear_curveCns148.inputs[1]";
connectAttr "footFront_R0_1_loc.wm" "mgear_curveCns148.inputs[2]";
connectAttr "mgear_curveCns148GroupId.msg" "mgear_curveCns148Set.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[0]" "mgear_curveCns148Set.dsm" -na;
connectAttr "mgear_curveCns148.msg" "mgear_curveCns148Set.ub[0]";
connectAttr "tweak148.og[0]" "mgear_curveCns148GroupParts.ig";
connectAttr "mgear_curveCns148GroupId.id" "mgear_curveCns148GroupParts.gi";
connectAttr "groupParts296.og" "tweak148.ip[0].ig";
connectAttr "groupId296.id" "tweak148.ip[0].gi";
connectAttr "groupId296.msg" "tweakSet148.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[1]" "tweakSet148.dsm" -na;
connectAttr "tweak148.msg" "tweakSet148.ub[0]";
connectAttr "footFront_R0_crvShapeOrig.ws" "groupParts296.ig";
connectAttr "groupId296.id" "groupParts296.gi";
connectAttr "mgear_curveCns149GroupParts.og" "mgear_curveCns149.ip[0].ig";
connectAttr "mgear_curveCns149GroupId.id" "mgear_curveCns149.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns149.inputs[0]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns149.inputs[1]";
connectAttr "footFront_R0_outpivot.wm" "mgear_curveCns149.inputs[2]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns149.inputs[3]";
connectAttr "footFront_R0_inpivot.wm" "mgear_curveCns149.inputs[4]";
connectAttr "mgear_curveCns149GroupId.msg" "mgear_curveCns149Set.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[0]" "mgear_curveCns149Set.dsm" -na;
connectAttr "mgear_curveCns149.msg" "mgear_curveCns149Set.ub[0]";
connectAttr "tweak149.og[0]" "mgear_curveCns149GroupParts.ig";
connectAttr "mgear_curveCns149GroupId.id" "mgear_curveCns149GroupParts.gi";
connectAttr "groupParts298.og" "tweak149.ip[0].ig";
connectAttr "groupId298.id" "tweak149.ip[0].gi";
connectAttr "groupId298.msg" "tweakSet149.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[1]" "tweakSet149.dsm" -na;
connectAttr "tweak149.msg" "tweakSet149.ub[0]";
connectAttr "footFront_R0_Shape1Orig.ws" "groupParts298.ig";
connectAttr "groupId298.id" "groupParts298.gi";
connectAttr "mgear_curveCns147GroupParts.og" "mgear_curveCns147.ip[0].ig";
connectAttr "mgear_curveCns147GroupId.id" "mgear_curveCns147.ip[0].gi";
connectAttr "legFront_R0_root.wm" "mgear_curveCns147.inputs[0]";
connectAttr "legFront_R0_knee.wm" "mgear_curveCns147.inputs[1]";
connectAttr "legFront_R0_ankle.wm" "mgear_curveCns147.inputs[2]";
connectAttr "legFront_R0_foot.wm" "mgear_curveCns147.inputs[3]";
connectAttr "legFront_R0_eff.wm" "mgear_curveCns147.inputs[4]";
connectAttr "mgear_curveCns147GroupId.msg" "mgear_curveCns147Set.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[0]" "mgear_curveCns147Set.dsm" -na;
connectAttr "mgear_curveCns147.msg" "mgear_curveCns147Set.ub[0]";
connectAttr "tweak147.og[0]" "mgear_curveCns147GroupParts.ig";
connectAttr "mgear_curveCns147GroupId.id" "mgear_curveCns147GroupParts.gi";
connectAttr "groupParts294.og" "tweak147.ip[0].ig";
connectAttr "groupId294.id" "tweak147.ip[0].gi";
connectAttr "groupId294.msg" "tweakSet147.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[1]" "tweakSet147.dsm" -na;
connectAttr "tweak147.msg" "tweakSet147.ub[0]";
connectAttr "legFront_R0_crvShape1Orig.ws" "groupParts294.ig";
connectAttr "groupId294.id" "groupParts294.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion27.i";
connectAttr "mgear_curveCns146GroupParts.og" "mgear_curveCns146.ip[0].ig";
connectAttr "mgear_curveCns146GroupId.id" "mgear_curveCns146.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns146.inputs[0]";
connectAttr "shoulder_R0_0_loc.wm" "mgear_curveCns146.inputs[1]";
connectAttr "mgear_curveCns146GroupId.msg" "mgear_curveCns146Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns146Set.dsm" -na;
connectAttr "mgear_curveCns146.msg" "mgear_curveCns146Set.ub[0]";
connectAttr "tweak146.og[0]" "mgear_curveCns146GroupParts.ig";
connectAttr "mgear_curveCns146GroupId.id" "mgear_curveCns146GroupParts.gi";
connectAttr "groupParts292.og" "tweak146.ip[0].ig";
connectAttr "groupId292.id" "tweak146.ip[0].gi";
connectAttr "groupId292.msg" "tweakSet146.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet146.dsm" -na;
connectAttr "tweak146.msg" "tweakSet146.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts292.ig";
connectAttr "groupId292.id" "groupParts292.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion24.i";
connectAttr "mgear_curveCns133GroupParts.og" "mgear_curveCns133.ip[0].ig";
connectAttr "mgear_curveCns133GroupId.id" "mgear_curveCns133.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns133.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns133.inputs[1]";
connectAttr "mgear_curveCns133GroupId.msg" "mgear_curveCns133Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns133Set.dsm" -na;
connectAttr "mgear_curveCns133.msg" "mgear_curveCns133Set.ub[0]";
connectAttr "tweak133.og[0]" "mgear_curveCns133GroupParts.ig";
connectAttr "mgear_curveCns133GroupId.id" "mgear_curveCns133GroupParts.gi";
connectAttr "groupParts266.og" "tweak133.ip[0].ig";
connectAttr "groupId266.id" "tweak133.ip[0].gi";
connectAttr "groupId266.msg" "tweakSet133.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet133.dsm" -na;
connectAttr "tweak133.msg" "tweakSet133.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts266.ig";
connectAttr "groupId266.id" "groupParts266.gi";
connectAttr "mgear_curveCns151GroupParts.og" "mgear_curveCns151.ip[0].ig";
connectAttr "mgear_curveCns151GroupId.id" "mgear_curveCns151.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns151.inputs[0]";
connectAttr "footBack_L0_0_loc.wm" "mgear_curveCns151.inputs[1]";
connectAttr "footBack_L0_1_loc.wm" "mgear_curveCns151.inputs[2]";
connectAttr "mgear_curveCns151GroupId.msg" "mgear_curveCns151Set.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[0]" "mgear_curveCns151Set.dsm" -na;
connectAttr "mgear_curveCns151.msg" "mgear_curveCns151Set.ub[0]";
connectAttr "tweak151.og[0]" "mgear_curveCns151GroupParts.ig";
connectAttr "mgear_curveCns151GroupId.id" "mgear_curveCns151GroupParts.gi";
connectAttr "groupParts302.og" "tweak151.ip[0].ig";
connectAttr "groupId302.id" "tweak151.ip[0].gi";
connectAttr "groupId302.msg" "tweakSet151.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[1]" "tweakSet151.dsm" -na;
connectAttr "tweak151.msg" "tweakSet151.ub[0]";
connectAttr "footBack_L0_crvShapeOrig.ws" "groupParts302.ig";
connectAttr "groupId302.id" "groupParts302.gi";
connectAttr "mgear_curveCns152GroupParts.og" "mgear_curveCns152.ip[0].ig";
connectAttr "mgear_curveCns152GroupId.id" "mgear_curveCns152.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns152.inputs[0]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns152.inputs[1]";
connectAttr "footBack_L0_outpivot.wm" "mgear_curveCns152.inputs[2]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns152.inputs[3]";
connectAttr "footBack_L0_inpivot.wm" "mgear_curveCns152.inputs[4]";
connectAttr "mgear_curveCns152GroupId.msg" "mgear_curveCns152Set.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[0]" "mgear_curveCns152Set.dsm" -na;
connectAttr "mgear_curveCns152.msg" "mgear_curveCns152Set.ub[0]";
connectAttr "tweak152.og[0]" "mgear_curveCns152GroupParts.ig";
connectAttr "mgear_curveCns152GroupId.id" "mgear_curveCns152GroupParts.gi";
connectAttr "groupParts304.og" "tweak152.ip[0].ig";
connectAttr "groupId304.id" "tweak152.ip[0].gi";
connectAttr "groupId304.msg" "tweakSet152.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[1]" "tweakSet152.dsm" -na;
connectAttr "tweak152.msg" "tweakSet152.ub[0]";
connectAttr "footBack_L0_Shape1Orig.ws" "groupParts304.ig";
connectAttr "groupId304.id" "groupParts304.gi";
connectAttr "mgear_curveCns150GroupParts.og" "mgear_curveCns150.ip[0].ig";
connectAttr "mgear_curveCns150GroupId.id" "mgear_curveCns150.ip[0].gi";
connectAttr "legBack_L0_root.wm" "mgear_curveCns150.inputs[0]";
connectAttr "legBack_L0_knee.wm" "mgear_curveCns150.inputs[1]";
connectAttr "legBack_L0_ankle.wm" "mgear_curveCns150.inputs[2]";
connectAttr "legBack_L0_foot.wm" "mgear_curveCns150.inputs[3]";
connectAttr "legBack_L0_eff.wm" "mgear_curveCns150.inputs[4]";
connectAttr "mgear_curveCns150GroupId.msg" "mgear_curveCns150Set.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[0]" "mgear_curveCns150Set.dsm" -na;
connectAttr "mgear_curveCns150.msg" "mgear_curveCns150Set.ub[0]";
connectAttr "tweak150.og[0]" "mgear_curveCns150GroupParts.ig";
connectAttr "mgear_curveCns150GroupId.id" "mgear_curveCns150GroupParts.gi";
connectAttr "groupParts300.og" "tweak150.ip[0].ig";
connectAttr "groupId300.id" "tweak150.ip[0].gi";
connectAttr "groupId300.msg" "tweakSet150.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[1]" "tweakSet150.dsm" -na;
connectAttr "tweak150.msg" "tweakSet150.ub[0]";
connectAttr "legBack_L0_crvShape1Orig.ws" "groupParts300.ig";
connectAttr "groupId300.id" "groupParts300.gi";
connectAttr "mgear_curveCns154GroupParts.og" "mgear_curveCns154.ip[0].ig";
connectAttr "mgear_curveCns154GroupId.id" "mgear_curveCns154.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns154.inputs[0]";
connectAttr "footBack_R0_0_loc.wm" "mgear_curveCns154.inputs[1]";
connectAttr "footBack_R0_1_loc.wm" "mgear_curveCns154.inputs[2]";
connectAttr "mgear_curveCns154GroupId.msg" "mgear_curveCns154Set.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[0]" "mgear_curveCns154Set.dsm" -na;
connectAttr "mgear_curveCns154.msg" "mgear_curveCns154Set.ub[0]";
connectAttr "tweak154.og[0]" "mgear_curveCns154GroupParts.ig";
connectAttr "mgear_curveCns154GroupId.id" "mgear_curveCns154GroupParts.gi";
connectAttr "groupParts308.og" "tweak154.ip[0].ig";
connectAttr "groupId308.id" "tweak154.ip[0].gi";
connectAttr "groupId308.msg" "tweakSet154.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[1]" "tweakSet154.dsm" -na;
connectAttr "tweak154.msg" "tweakSet154.ub[0]";
connectAttr "footBack_R0_crvShapeOrig.ws" "groupParts308.ig";
connectAttr "groupId308.id" "groupParts308.gi";
connectAttr "mgear_curveCns155GroupParts.og" "mgear_curveCns155.ip[0].ig";
connectAttr "mgear_curveCns155GroupId.id" "mgear_curveCns155.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns155.inputs[0]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns155.inputs[1]";
connectAttr "footBack_R0_outpivot.wm" "mgear_curveCns155.inputs[2]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns155.inputs[3]";
connectAttr "footBack_R0_inpivot.wm" "mgear_curveCns155.inputs[4]";
connectAttr "mgear_curveCns155GroupId.msg" "mgear_curveCns155Set.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[0]" "mgear_curveCns155Set.dsm" -na;
connectAttr "mgear_curveCns155.msg" "mgear_curveCns155Set.ub[0]";
connectAttr "tweak155.og[0]" "mgear_curveCns155GroupParts.ig";
connectAttr "mgear_curveCns155GroupId.id" "mgear_curveCns155GroupParts.gi";
connectAttr "groupParts310.og" "tweak155.ip[0].ig";
connectAttr "groupId310.id" "tweak155.ip[0].gi";
connectAttr "groupId310.msg" "tweakSet155.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[1]" "tweakSet155.dsm" -na;
connectAttr "tweak155.msg" "tweakSet155.ub[0]";
connectAttr "footBack_R0_Shape1Orig.ws" "groupParts310.ig";
connectAttr "groupId310.id" "groupParts310.gi";
connectAttr "mgear_curveCns153GroupParts.og" "mgear_curveCns153.ip[0].ig";
connectAttr "mgear_curveCns153GroupId.id" "mgear_curveCns153.ip[0].gi";
connectAttr "legBack_R0_root.wm" "mgear_curveCns153.inputs[0]";
connectAttr "legBack_R0_knee.wm" "mgear_curveCns153.inputs[1]";
connectAttr "legBack_R0_ankle.wm" "mgear_curveCns153.inputs[2]";
connectAttr "legBack_R0_foot.wm" "mgear_curveCns153.inputs[3]";
connectAttr "legBack_R0_eff.wm" "mgear_curveCns153.inputs[4]";
connectAttr "mgear_curveCns153GroupId.msg" "mgear_curveCns153Set.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[0]" "mgear_curveCns153Set.dsm" -na;
connectAttr "mgear_curveCns153.msg" "mgear_curveCns153Set.ub[0]";
connectAttr "tweak153.og[0]" "mgear_curveCns153GroupParts.ig";
connectAttr "mgear_curveCns153GroupId.id" "mgear_curveCns153GroupParts.gi";
connectAttr "groupParts306.og" "tweak153.ip[0].ig";
connectAttr "groupId306.id" "tweak153.ip[0].gi";
connectAttr "groupId306.msg" "tweakSet153.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[1]" "tweakSet153.dsm" -na;
connectAttr "tweak153.msg" "tweakSet153.ub[0]";
connectAttr "legBack_R0_crvShape1Orig.ws" "groupParts306.ig";
connectAttr "groupId306.id" "groupParts306.gi";
// End of quadruped.ma
