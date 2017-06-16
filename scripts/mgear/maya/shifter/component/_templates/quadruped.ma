//Maya ASCII 2016ff07 scene
//Name: quadruped.ma
//Last modified: Fri, Jun 16, 2017 05:38:42 PM
//Codeset: 932
requires maya "2016ff07";
requires "stereoCamera" "10.0";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260-1";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "guide";
	rename -uid "C55DA847-4BBE-2B0D-E2F3-1CBBF2AEAABA";
	addAttr -ci true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "mode" -ln "mode" -min 0 -max 1 -en "Final:WIP" -at "enum";
	addAttr -ci true -k true -sn "step" -ln "step" -min 0 -max 6 -en "All Steps:Objects:Properties:Operators:Connect:Joints:Finalize" 
		-at "enum";
	addAttr -ci true -sn "ismodel" -ln "ismodel" -min 0 -max 1 -at "bool";
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
	rename -uid "97CE7E60-4E4C-27A5-BE58-C6B553739F44";
	setAttr ".v" no;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "3B9CFCB0-4D70-A415-3FE2-EE85082B2221";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	rename -uid "CCC43D57-4182-0A77-CB51-2593ECFEC61F";
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
	rename -uid "BBF44BE0-4021-47E6-88B6-6C8131095865";
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
	rename -uid "0F1CCF6C-4174-0218-1650-86B1190A02A2";
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
	rename -uid "AAA764D3-4EA9-66B1-85C5-04B5FAE1F862";
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
	rename -uid "C41FAD63-4FD6-1E2C-B0F5-45B37261381D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	rename -uid "5E6A7E98-4D65-F992-8594-1E9D039D9436";
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
createNode nurbsCurve -n "body_C0_root10Shape" -p "body_C0_root";
	rename -uid "BD0ADB90-41DC-2A2E-FB42-C9AE52486C2F";
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
createNode nurbsCurve -n "body_C0_root11Shape" -p "body_C0_root";
	rename -uid "CBB6E38A-44A5-98F2-747E-45810EA7F75A";
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
createNode nurbsCurve -n "body_C0_root12Shape" -p "body_C0_root";
	rename -uid "665CEE99-433E-C313-A747-06A4F43B02DB";
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
	rename -uid "8B6DB1F2-4C53-2F88-B16B-53A782FB9C73";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".ui_host" -type "string" "bodyUI_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".maxsquash" 0.5;
	setAttr ".lock_ori" 1;
	setAttr ".division" 5;
	setAttr ".centralTangent" yes;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "047876E2-4671-9B9E-0AEC-35B3FA829AF2";
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
createNode nurbsCurve -n "spine_C0_root10Shape" -p "spine_C0_root";
	rename -uid "66D53712-4AEC-74F0-7266-42A6069C8276";
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
createNode nurbsCurve -n "spine_C0_root11Shape" -p "spine_C0_root";
	rename -uid "AAF32C41-4B4E-B3AE-E130-B6B4F8B64374";
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
createNode nurbsCurve -n "spine_C0_root12Shape" -p "spine_C0_root";
	rename -uid "9109A84D-4C15-BC7D-D508-878254F8418F";
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
	rename -uid "7924C3B3-4B3C-DFA8-3B97-7FB641FEEEE4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6115768831256645 -2.9361299538902157e-015 ;
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
	rename -uid "4DD9EE03-414B-6F20-5A78-779E8F5D3906";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_eff10Shape" -p "spine_C0_eff";
	rename -uid "162B2368-499E-C877-AEB0-A18BE281F0DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_eff11Shape" -p "spine_C0_eff";
	rename -uid "7105C141-4EC2-9CF4-7687-FA961BF070B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_eff12Shape" -p "spine_C0_eff";
	rename -uid "B84577BB-4166-4F1C-4DDD-C38C49E66F15";
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
createNode nurbsCurve -n "spine_C0_eff12_0crvShape" -p "spine_C0_eff";
	rename -uid "223A47A6-4CDA-B70B-010A-2D940817BF8E";
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
createNode nurbsCurve -n "spine_C0_eff12_1crvShape" -p "spine_C0_eff";
	rename -uid "3AE6DEEE-4BB1-FC62-5805-AEAF7937EE26";
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
	rename -uid "992ED56A-4282-64CE-0B61-CAA1C1EAAF97";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" -0.11164111249562403 0.36062523614417152 -1.1057116273629394e-016 ;
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
	setAttr ".ui_host" -type "string" "bodyUI_C0_root";
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
	rename -uid "540BD1B9-4964-EECD-14B5-BCB71648AB2F";
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
createNode nurbsCurve -n "neck_C0_root10Shape" -p "neck_C0_root";
	rename -uid "679029D5-447F-4E29-16CC-398E850007DD";
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
createNode nurbsCurve -n "neck_C0_root11Shape" -p "neck_C0_root";
	rename -uid "89D5E7E7-4DA3-8D8C-DEDF-5BBEF38FF965";
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
createNode nurbsCurve -n "neck_C0_root12Shape" -p "neck_C0_root";
	rename -uid "78E98A14-48B4-367C-1898-A68A33599B0B";
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
	rename -uid "A2D17238-4207-17B5-4BA8-C79472DEFDEC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.24124837670655408 3.6642870257638149 -8.7131531609605013e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5097839127112533e-015 -5.8147294396561401e-015 -3.180554681463516e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "1818161D-491A-A778-6F94-CAB33FA9FB1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_neck10Shape" -p "neck_C0_neck";
	rename -uid "7A10A746-4505-B0F3-10BF-DDABD8258087";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_neck11Shape" -p "neck_C0_neck";
	rename -uid "FCD796E6-470D-F6B4-D6F3-FFB81F82291B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_neck12Shape" -p "neck_C0_neck";
	rename -uid "61D59844-47AC-1956-D499-498A99604FA9";
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
createNode nurbsCurve -n "neck_C0_neck12_0crvShape" -p "neck_C0_neck";
	rename -uid "F87915D0-4D50-CC9B-6428-58974FBB2CAA";
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
createNode nurbsCurve -n "neck_C0_neck12_1crvShape" -p "neck_C0_neck";
	rename -uid "ADC38416-4B9C-EE63-51F4-119EFAD6731A";
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
	rename -uid "643F91F4-429A-2644-3051-3DB06723C566";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -3.5527136788005009e-015 1.1832913578315177e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.1959579395664448e-014 -1.6980612655827483e-017 71.00246042570619 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "4F50FA49-4E56-3640-18F6-03BD7FDFACB6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_head10Shape" -p "neck_C0_head";
	rename -uid "F81F6C7E-49B2-0704-1529-5BA5925DE2BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_head11Shape" -p "neck_C0_head";
	rename -uid "7CB3CCA3-430C-9E63-095F-1CA04A8C7DF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_head12Shape" -p "neck_C0_head";
	rename -uid "38448C65-4D98-AEB6-00F1-E694C86B4658";
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
createNode nurbsCurve -n "neck_C0_head12_0crvShape" -p "neck_C0_head";
	rename -uid "20D37A9B-4B90-35B4-FEA8-E991EBDFCC30";
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
createNode nurbsCurve -n "neck_C0_head12_1crvShape" -p "neck_C0_head";
	rename -uid "E69C9D1E-4F96-FA12-CCDC-FDA9BF4783AE";
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
	rename -uid "F8280365-4BB0-3897-FC02-888219C4C92E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.028362147187280584 2.6770463465994716 4.541882106202e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.195957939566444e-014 -1.6980612655835951e-017 -1.5654292572828246e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "5F108139-482D-F184-54FB-6498C5150DEE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_eff10Shape" -p "neck_C0_eff";
	rename -uid "7AB61C0B-4CDD-37ED-F820-C59BA7DC5E45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_eff11Shape" -p "neck_C0_eff";
	rename -uid "9AE80FCD-44FF-FA12-D259-E7B271533194";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_eff12Shape" -p "neck_C0_eff";
	rename -uid "63E3473C-4D8A-F5AB-2A7F-1082CFD80BB1";
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
createNode nurbsCurve -n "neck_C0_eff12_0crvShape" -p "neck_C0_eff";
	rename -uid "AC405719-409C-95E8-C247-68A867EB101E";
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
createNode nurbsCurve -n "neck_C0_eff12_1crvShape" -p "neck_C0_eff";
	rename -uid "DB5DDB20-46AE-03CE-863A-C2BB4CBE0C44";
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
	rename -uid "EAE84DF1-4146-4452-53F9-329E9C0D04CD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" -3.2992211017816855 -0.74362823191862171 -4.3347348183670666 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844417401 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427556 2.3915882794427579 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "spineUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
	rename -uid "5D886692-4F59-7242-3CAD-5D8DEF8F3727";
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
createNode nurbsCurve -n "spineUI_C0_root10Shape" -p "spineUI_C0_root";
	rename -uid "0D39E1D9-4069-9F53-9453-A081D5CA3084";
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
createNode nurbsCurve -n "spineUI_C0_root11Shape" -p "spineUI_C0_root";
	rename -uid "E3EDC68C-4E9E-991E-6316-C6ADDBA82B7D";
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
createNode nurbsCurve -n "spineUI_C0_root12Shape" -p "spineUI_C0_root";
	rename -uid "69EE3137-41C2-8DC9-56CD-58BCB228E550";
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
	rename -uid "ECC117C8-4F8C-8692-B325-ECA4B59399BB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 3.5527136788005009e-015 2.9303186274198652 6.1165723857933238e-016 ;
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
	setAttr ".comp_name" -type "string" "headUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "headUI_C0_rootShape" -p "headUI_C0_root";
	rename -uid "73509F21-4E31-1B0F-D479-91A1205DDA83";
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
createNode nurbsCurve -n "headUI_C0_root1Shape" -p "headUI_C0_root";
	rename -uid "D28DC4D4-4AF2-021A-D443-CABC2A546588";
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
createNode nurbsCurve -n "headUI_C0_root2Shape" -p "headUI_C0_root";
	rename -uid "59D4136F-497D-4BF7-4583-86A0F2C91A79";
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
createNode nurbsCurve -n "headUI_C0_root3Shape" -p "headUI_C0_root";
	rename -uid "28250D9B-4A81-4127-CA10-0DAE6D30C60E";
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
	rename -uid "C9A66265-4538-389F-CFF2-8FB2B83C28E4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.69584514547310938 0.71792767893744092 1.4003887623375058e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844417429 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53738203342942947 0.53738203342942925 0.53738203342942992 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
	rename -uid "F14FB32E-42DC-1D10-D35D-8E90831C47D6";
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
createNode nurbsCurve -n "mouth_C0_root10Shape" -p "mouth_C0_root";
	rename -uid "88E0CFA7-42E6-863A-5B85-ACA5C30D1063";
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
createNode nurbsCurve -n "mouth_C0_root11Shape" -p "mouth_C0_root";
	rename -uid "077A9AC2-407D-12DC-D075-4C95D0D3767A";
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
createNode nurbsCurve -n "mouth_C0_root12Shape" -p "mouth_C0_root";
	rename -uid "F44483DC-4E69-EBA9-BB21-6880F1EDAFA6";
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
	rename -uid "77566DC4-4D30-D1F4-993D-7D87F107A3AD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4199496293978212e-029 -5.3290705182007514e-015 7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793929e-014 2.5418975026200764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "6E075B1B-47E1-AF18-210D-5BB123B15684";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter10Shape" -p "mouth_C0_rotcenter";
	rename -uid "24539C1C-47D0-2D7A-6D17-14AA6ED48855";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter11Shape" -p "mouth_C0_rotcenter";
	rename -uid "728839CC-4195-4B05-58BC-509E720C1216";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_rotcenter12Shape" -p "mouth_C0_rotcenter";
	rename -uid "DFE23F58-49F2-0623-4350-95A4A5419CF1";
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
createNode nurbsCurve -n "mouth_C0_rotcenter12_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "C404298D-4A5E-395A-9F2A-BC91F2FD1AAB";
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
createNode nurbsCurve -n "mouth_C0_rotcenter12_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "C48F9C9C-46BA-2255-601A-48AB4FCB9CEF";
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
	rename -uid "41494562-4F88-169D-01FA-019010FE0BFF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2971167579553882e-015 -0.83057537847143159 2.6485854255407055 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793929e-014 2.5418975026200774e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "88384A91-4859-19A3-467E-6A974EE33799";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup10Shape" -p "mouth_C0_lipup";
	rename -uid "7337E471-4CE5-EB8F-478C-7DA2D371B2E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_lipup11Shape" -p "mouth_C0_lipup";
	rename -uid "C037EE9B-4A38-3411-5169-198BC2B1F65B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_lipup12Shape" -p "mouth_C0_lipup";
	rename -uid "2279D318-4189-CB48-9D46-86B1549A954B";
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
createNode nurbsCurve -n "mouth_C0_lipup12_0crvShape" -p "mouth_C0_lipup";
	rename -uid "95085617-49A0-1EDF-6EC5-E5B20173FC2F";
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
createNode nurbsCurve -n "mouth_C0_lipup12_1crvShape" -p "mouth_C0_lipup";
	rename -uid "CDF921F5-48FF-00E6-6CD7-349ED3AB9A49";
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
	rename -uid "A9370F6D-461E-12CA-F4A5-9F9A94CD3925";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0807388624180155e-014 -14.161367226604183 -19.457469484456137 ;
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793929e-014 2.5418975026200777e-014 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691256 4.4504433171691211 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "D642023A-4AB3-6326-510D-8E9368D14C07";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "8235446B-447F-48A6-6100-F59EB8BD610F";
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
	rename -uid "9A513EC8-42AE-2248-0EFE-3FBABC1161E0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7198567879251509e-015 -1.1237321151315989 2.4565606483465565 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793929e-014 2.5418975026200774e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "F09E7F88-47B3-B6ED-0C5B-5A9954865508";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow10Shape" -p "mouth_C0_liplow";
	rename -uid "B2ED7381-41AB-84E6-992E-78A76A025AFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_liplow11Shape" -p "mouth_C0_liplow";
	rename -uid "BDAA2557-443E-3289-6C78-F0841E832086";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_liplow12Shape" -p "mouth_C0_liplow";
	rename -uid "43F40346-4578-B7B3-4BAF-17ADA80F466E";
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
createNode nurbsCurve -n "mouth_C0_liplow12_0crvShape" -p "mouth_C0_liplow";
	rename -uid "3E06A2E7-4884-B9C3-2B15-628F2D8E7B52";
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
createNode nurbsCurve -n "mouth_C0_liplow12_1crvShape" -p "mouth_C0_liplow";
	rename -uid "59521C1B-4893-160C-449C-769BAD14D24D";
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
	rename -uid "05F0021E-4D84-C707-47BA-EE955EA6A566";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0230128654149919e-014 -13.868210489944017 -19.265444707261988 ;
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793929e-014 2.5418975026200777e-014 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691256 4.4504433171691211 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "801AAF19-469E-F621-A918-09AEDA957603";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "B737019E-4B47-2A76-D499-F0914752356F";
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
	rename -uid "F430FDCA-43DC-7014-AC3B-4783959FB20A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.0510383535746307e-029 -1.943196062563695 2.0069895663162569 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793929e-014 2.5418975026200764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "C0C63323-4705-F2A0-8A76-B69B3CCA5ADC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw10Shape" -p "mouth_C0_jaw";
	rename -uid "633124C9-4F4E-A39E-2881-1AB978025DB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_jaw11Shape" -p "mouth_C0_jaw";
	rename -uid "B8C30BF3-4E90-F8B0-6FD7-83B5DFD7596F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_jaw12Shape" -p "mouth_C0_jaw";
	rename -uid "B0029488-4DB8-5579-736D-00977EEB63E1";
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
createNode nurbsCurve -n "mouth_C0_jaw12_0crvShape" -p "mouth_C0_jaw";
	rename -uid "999F0FD3-43F4-6262-6C24-898A93FF157A";
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
createNode nurbsCurve -n "mouth_C0_jaw12_1crvShape" -p "mouth_C0_jaw";
	rename -uid "7B355005-45DB-A078-E7BA-5CAFBB221F21";
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
	rename -uid "CA975D2A-4A21-DD4F-6F97-ED8FBC372F7B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5102718662247488e-015 -14.991942605075602 -16.808884058915403 ;
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793904e-014 2.5418975026200758e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691193 4.4504433171691202 4.4504433171691158 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "72B2A8CF-4BA8-B7C8-C8D9-058F84869C1A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "A0E1179F-4167-044F-7F56-23B4012ACE8B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv4" -p "mouth_C0_root";
	rename -uid "AEDC84CA-48C1-1009-31DD-A0971F2E6580";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5102718662247488e-015 -14.991942605075602 -16.808884058915403 ;
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793904e-014 2.5418975026200758e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691193 4.4504433171691202 4.4504433171691158 ;
createNode nurbsCurve -n "mouth_C0_crv4Shape" -p "mouth_C0_crv4";
	rename -uid "31A06EEE-4418-36F6-2FB2-DEA73414B454";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv4ShapeOrig" -p "mouth_C0_crv4";
	rename -uid "1F8E80E2-4333-BFC6-9258-EAA767BA34AC";
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
	rename -uid "9A4155C2-43B0-BA22-028A-B9B0D95034DF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 4.9771436298332077 1.0221998062961521 -1.754570068621124e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844417436 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427574 2.3915882794427574 2.391588279442757 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "eyeslook";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
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
	rename -uid "DAA9AC4A-4934-51AF-E032-468AD281C373";
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
createNode nurbsCurve -n "eyeslook_C0_root10Shape" -p "eyeslook_C0_root";
	rename -uid "52A8378C-4BEB-D071-4C9F-C5B5893C83E0";
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
createNode nurbsCurve -n "eyeslook_C0_root11Shape" -p "eyeslook_C0_root";
	rename -uid "E3C09CC6-4A6C-2040-A5C9-D7A9C8A5DCA9";
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
createNode nurbsCurve -n "eyeslook_C0_root12Shape" -p "eyeslook_C0_root";
	rename -uid "9AE065B1-423C-1FA7-3641-49BB970C4AB8";
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
	rename -uid "C1DFF909-40E6-336B-ACFA-C9A19258A3F9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -k true -sn "upVectorDirection" -ln "upVectorDirection" -min 0 
		-max 2 -en "X:Y:Z" -at "enum";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.25733245506886071 1.0267893607782366 -0.42107730061382614 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 75.993552494737415 179.9617758071555 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427561 2.3915882794427596 2.3915882794427556 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyesAim_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
	rename -uid "932C2115-457D-38E5-281F-AC8F1F461E86";
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
createNode nurbsCurve -n "eye_L0_root10Shape" -p "eye_L0_root";
	rename -uid "2FBA8C14-4503-DDC6-9C73-FFB7DDA09848";
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
createNode nurbsCurve -n "eye_L0_root11Shape" -p "eye_L0_root";
	rename -uid "9B7D08F1-4280-B4FB-8F2F-0086162455B9";
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
createNode nurbsCurve -n "eye_L0_root12Shape" -p "eye_L0_root";
	rename -uid "79EA8B98-43C7-B922-7D6F-0EBB24F5AA5F";
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
	rename -uid "483F671B-42AC-B6DC-0B62-F1AB92331917";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-016 4.8849813083506888e-015 2.0321341905376418 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.5564439471428505e-014 -3.1805546814635168e-015 8.5396503029457235e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999856 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "4C1498E6-4F8E-BD82-0AE0-3CA0808851B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_look10Shape" -p "eye_L0_look";
	rename -uid "1E92F6BB-40A0-D7F6-B4F5-D59AEF0E3A01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_look11Shape" -p "eye_L0_look";
	rename -uid "2EFC6259-4BB4-2D55-A7D8-D1972D20AF85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_look12Shape" -p "eye_L0_look";
	rename -uid "936DADCE-41CF-DD31-EABC-BEB03F1E675E";
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
createNode nurbsCurve -n "eye_L0_look12_0crvShape" -p "eye_L0_look";
	rename -uid "4F83281F-4213-2F95-44C7-DC98824454ED";
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
createNode nurbsCurve -n "eye_L0_look12_1crvShape" -p "eye_L0_look";
	rename -uid "C006A5CA-4034-49CA-15FC-B590D2AA2170";
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
	rename -uid "B2B8ACDF-45DA-5ABC-13E5-FA8F1AD10FDE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753444 -3.4976629291575789 -3.5292331821335612 ;
	setAttr ".r" -type "double3" 2.6347799151091546e-014 -14.006447505262571 -9.1664044114833906e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999867 1.0000000000000009 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "37A33222-4C03-918A-074B-21AAB2646DAA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "361A1677-4FFD-D6EF-F2A8-168A7D3D2CDE";
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
	rename -uid "04400F51-4D50-D680-4381-C482B2C15621";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -k true -sn "upVectorDirection" -ln "upVectorDirection" -min 0 
		-max 2 -en "X:Y:Z" -at "enum";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.25733245506886071 1.0267893607782348 0.42107730061382792 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 -75.993552494737429 179.9617758071557 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427552 2.3915882794427601 -2.3915882794427552 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "headUI_C0_root";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyesAim_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
	rename -uid "82F04ADA-41A9-6BFC-987B-39B7CFFA4CA1";
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
createNode nurbsCurve -n "eye_R0_root1Shape" -p "eye_R0_root";
	rename -uid "798D57AC-41FC-0F93-6EA6-EE953C2D7054";
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
createNode nurbsCurve -n "eye_R0_root2Shape" -p "eye_R0_root";
	rename -uid "65B27EFB-49AC-7277-9F4C-D5B720361B6B";
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
createNode nurbsCurve -n "eye_R0_root3Shape" -p "eye_R0_root";
	rename -uid "7FA9EA35-4A90-9522-A133-53AC753F49D7";
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
	rename -uid "B6A654EB-4E2A-AF8B-D8B9-90A63C7E5EEF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 5.773159728050814e-015 2.0321341905376427 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.1224919119411301e-014 1.590277340731758e-015 3.4098250818146348e-018 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999822 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "CAC6D31D-429E-402A-9E4F-F9AB3EEEF0E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_look1Shape" -p "eye_R0_look";
	rename -uid "D299DA8A-44BD-F29D-46F3-3DA898CAE3C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_look2Shape" -p "eye_R0_look";
	rename -uid "C888D1A7-409F-699F-F3F7-028F6B6951EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_look3Shape" -p "eye_R0_look";
	rename -uid "FBEADEAA-4FBA-0F4C-9132-CBA62025BF7E";
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
createNode nurbsCurve -n "eye_R0_look3_0crvShape" -p "eye_R0_look";
	rename -uid "301FE7D1-4DAC-8C86-749C-8EAE5D88B2CC";
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
createNode nurbsCurve -n "eye_R0_look3_1crvShape" -p "eye_R0_look";
	rename -uid "AFF62C2C-4927-1F9E-BA2C-75A3B312DCBE";
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
	rename -uid "C46D07FC-4FA0-0888-A27D-D2A0E0C0D69A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753444 -3.497662929157578 -3.5292331821335612 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999833 -1.0000000000000011 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "B4BBB750-418F-256E-AE21-3992149BD940";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "698AF23A-4D9C-AA68-BE2A-F4A28D7AA7CB";
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
	rename -uid "6BFE95A2-437A-49F0-B10F-D9BB3CB3B832";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.094534318000984108 -0.76996010281298588 1.5833033991300076e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.4867454978421856e-016 6.9074892861979372e-015 -3.1805546814635168e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "E53B50DA-4888-D03E-24DA-EEBCBFC26653";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape4" -p "neck_C0_tan1";
	rename -uid "29ED5AA1-4ED5-7E3B-4321-9F86B7D2CBDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape5" -p "neck_C0_tan1";
	rename -uid "13F86C1C-4633-E668-FF1D-E08743DCF77C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape6" -p "neck_C0_tan1";
	rename -uid "26585B94-48C4-BF0E-3D4F-32BD2BD4D5CD";
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
createNode nurbsCurve -n "neck_C0_tan8_0crvShape1" -p "neck_C0_tan1";
	rename -uid "ADFA85E4-43B3-B4FA-6621-CFB1ACFC6CFB";
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
createNode nurbsCurve -n "neck_C0_tan8_1crvShape1" -p "neck_C0_tan1";
	rename -uid "9FB615B1-44D1-8D03-67EB-7990D3B4CDD7";
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
	rename -uid "FF358A91-4907-E408-980F-9D8D4F8AA322";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550703 -10.274847894363647 -1.1225238772421581e-015 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.3915882794427574 2.3915882794427556 2.391588279442757 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "DB81B453-4552-BF59-5463-F59926BF0E67";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "5416668F-40A2-58FB-0ABB-D8BAA0D1589D";
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
	rename -uid "D80CBC73-4FB5-0CB1-83E8-DA8192C35110";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.01673458762511526 0.81123959492320008 -2.1361002026221128e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5097839127112533e-015 -5.8147294396561401e-015 -3.180554681463516e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "1678D1F8-42AC-9C97-49A2-4C89209CE46F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan0";
	rename -uid "F64C5C7C-4DC0-9A52-E9FA-CF8D05C45515";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape2" -p "neck_C0_tan0";
	rename -uid "3A33E1E1-47A2-99F5-209F-4DB365F29987";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape3" -p "neck_C0_tan0";
	rename -uid "942FF9E2-4DC1-91C1-D179-3CB192C65708";
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
createNode nurbsCurve -n "neck_C0_tan7_0crvShape0" -p "neck_C0_tan0";
	rename -uid "E9D335E8-4A9B-8CD1-B959-AB87195C7087";
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
createNode nurbsCurve -n "neck_C0_tan7_1crvShape0" -p "neck_C0_tan0";
	rename -uid "F6C784BB-490F-3C19-EA1A-E48815596B34";
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
	rename -uid "133260F7-4966-F143-0685-EB9DD10B3446";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "FCF3F65D-454A-CF20-5E31-96B34399B2EE";
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
createNode aimConstraint -n "neck_C0_blade_aimConstraint4" -p "neck_C0_blade";
	rename -uid "98876633-4E64-C64B-5586-8E84D997D3ED";
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
	setAttr ".rsrr" -type "double3" 5.2680669130788774e-013 5.4648881846460255e-013 
		87.898851855983835 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint4" -p "neck_C0_blade";
	rename -uid "F7231077-478E-9935-8B23-209C79AA13FB";
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
		-1.1832913578315177e-030 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "45EFFF1A-4EF6-6456-B016-2CAEDB7CBC4E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.976162134148518 -6.6105608685998307 -2.0121365938161712e-015 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "1665FFAB-4316-AE94-64F6-FEB87F4D2209";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "A46EB9C0-49DC-4417-97A2-42854E246E37";
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
	rename -uid "68ECEE1E-4CA6-EA90-C6EC-9F8180E4AAB2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 -0.20082401790608234 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.1102915763618233 2.1102915763618237 2.1102915763618237 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "19A3C975-4028-6CE2-E247-E9A5202C9A71";
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
createNode nurbsCurve -n "shoulder_L0_root10Shape" -p "shoulder_L0_root";
	rename -uid "32ADFB70-4BCB-E6FD-7ED5-908EE40392AE";
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
createNode nurbsCurve -n "shoulder_L0_root11Shape" -p "shoulder_L0_root";
	rename -uid "E2DDCA65-4D46-B3B1-3335-E9A6FFA0CD07";
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
createNode nurbsCurve -n "shoulder_L0_root12Shape" -p "shoulder_L0_root";
	rename -uid "9DD15323-4328-9BF1-97B9-E4AF726D5C42";
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
	rename -uid "BC098076-4B54-4986-2892-B0BCD31A4DCE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724616 -0.20882616370655116 0.20663608494886754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_0_locShape" -p "shoulder_L0_0_loc";
	rename -uid "33E85F2B-461C-BB27-D3A7-389966FCEF22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc10Shape" -p "shoulder_L0_0_loc";
	rename -uid "C2C743F8-41DF-8D50-B8B1-C6A7E214B619";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc11Shape" -p "shoulder_L0_0_loc";
	rename -uid "7757A4F9-44E8-C51E-4683-2CBBBF27EFAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_0_loc12Shape" -p "shoulder_L0_0_loc";
	rename -uid "1DEC592B-4205-6C58-9877-879E70108F34";
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
createNode nurbsCurve -n "shoulder_L0_0_loc12_0crvShape" -p "shoulder_L0_0_loc";
	rename -uid "199DB611-4838-F0B3-D25D-219F8D8CF907";
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
createNode nurbsCurve -n "shoulder_L0_0_loc12_1crvShape" -p "shoulder_L0_0_loc";
	rename -uid "146065E4-43D8-44AC-0EBE-D296D00E05D7";
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
	rename -uid "26F8D264-4B89-A6F0-05D6-DCB0F0032586";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" -5.5511151231257827e-016 -1.7763568394002505e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 2.8624992133171667e-014 6.9972202992197388e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950303 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
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
	rename -uid "D2153D8D-40E3-2EEC-0C58-8DB23B13F7F5";
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
createNode nurbsCurve -n "legFront_L0_root10Shape" -p "legFront_L0_root";
	rename -uid "CF118069-4971-3E15-B354-31B81C352BAA";
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
createNode nurbsCurve -n "legFront_L0_root11Shape" -p "legFront_L0_root";
	rename -uid "0AD5E8B1-4D9D-3AF0-7F39-8C96A8547BB6";
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
createNode nurbsCurve -n "legFront_L0_root12Shape" -p "legFront_L0_root";
	rename -uid "6611FC92-415D-BF26-44AF-8FAAD633DEFA";
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
	rename -uid "20B7B846-4B62-CBBE-A01B-A2BAD9A7C0AC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.1240863021370506 -0.48633856256837582 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854061e-014 2.8624992133171673e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
	rename -uid "0585A935-400F-C90B-1396-04B902762ABA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee10Shape" -p "legFront_L0_knee";
	rename -uid "9D7268DE-460B-7193-2628-8EA7666A6426";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_knee11Shape" -p "legFront_L0_knee";
	rename -uid "D9A96522-4129-5DD6-C4F5-C6BC46175264";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_knee12Shape" -p "legFront_L0_knee";
	rename -uid "3B810963-4FFD-32F6-0249-73AFE24BE0AA";
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
createNode nurbsCurve -n "legFront_L0_knee12_0crvShape" -p "legFront_L0_knee";
	rename -uid "0EC3B8BC-4D2E-325C-41CB-D785C0E68F4B";
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
createNode nurbsCurve -n "legFront_L0_knee12_1crvShape" -p "legFront_L0_knee";
	rename -uid "A1848FFF-42AB-D6C9-754B-8BBED4C07C25";
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
	rename -uid "5526262F-45A8-8CC0-7157-438054C59376";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.8849813083506888e-015 -2.3651516407059177 0.073902270404612835 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_ankleShape" -p "legFront_L0_ankle";
	rename -uid "64A47AF4-4B69-3E10-15BB-7BA14FDAA6BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle10Shape" -p "legFront_L0_ankle";
	rename -uid "C17FF16E-49FE-7306-DA61-3A80E4DB31F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_ankle11Shape" -p "legFront_L0_ankle";
	rename -uid "310D1028-43D2-5698-9A72-C6A1BEBD5345";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_ankle12Shape" -p "legFront_L0_ankle";
	rename -uid "7949DE8F-4186-D770-2634-FE89BD20D14A";
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
createNode nurbsCurve -n "legFront_L0_ankle12_0crvShape" -p "legFront_L0_ankle";
	rename -uid "B704825C-45B8-544A-8EDA-5BA723922BF2";
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
createNode nurbsCurve -n "legFront_L0_ankle12_1crvShape" -p "legFront_L0_ankle";
	rename -uid "D8FE2DC2-4254-8E9A-FED0-9D910B4224EB";
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
	rename -uid "91772E48-4D67-306F-2AAB-77B7A9D8B0DD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.1294425054275492 0.023148533894219447 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 2.8624992133171667e-014 6.9972202992197375e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_footShape" -p "legFront_L0_foot";
	rename -uid "6A962E08-4F52-3BBB-E0B6-D99740392514";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot10Shape" -p "legFront_L0_foot";
	rename -uid "44189309-4287-C8C2-3B6C-BB8698326093";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_foot11Shape" -p "legFront_L0_foot";
	rename -uid "556019C8-4BEF-573B-0DA5-EC8A914C6B58";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_foot12Shape" -p "legFront_L0_foot";
	rename -uid "DCE6F172-4630-5FCC-3A09-659E33687970";
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
createNode nurbsCurve -n "legFront_L0_foot12_0crvShape" -p "legFront_L0_foot";
	rename -uid "C9E688D0-414B-40AC-96BD-DCBEA93F6CFA";
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
createNode nurbsCurve -n "legFront_L0_foot12_1crvShape" -p "legFront_L0_foot";
	rename -uid "189B9B1D-434F-AC5C-8741-4E91B9692F0F";
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
	rename -uid "606B5949-406D-F249-FAA4-8F9305951369";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 6.3837823915946501e-016 0.59657797851920957 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 2.862499213317166e-014 6.9972202992197388e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_effShape" -p "legFront_L0_eff";
	rename -uid "BB8BF6A2-43BF-989D-5A37-72A37A7DD9E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff10Shape" -p "legFront_L0_eff";
	rename -uid "EBB202CD-4412-1354-B7DB-0A8D8968C2B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_eff11Shape" -p "legFront_L0_eff";
	rename -uid "8B2D882D-4035-2457-70FD-2686E40AFE8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_eff12Shape" -p "legFront_L0_eff";
	rename -uid "045D95FF-4527-86DF-FA8A-68B4261C5B2A";
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
createNode nurbsCurve -n "legFront_L0_eff12_0crvShape" -p "legFront_L0_eff";
	rename -uid "3964F178-4DF8-8903-E1F0-8182DC106934";
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
createNode nurbsCurve -n "legFront_L0_eff12_1crvShape" -p "legFront_L0_eff";
	rename -uid "61D41592-4F8F-79A1-3C8B-0CBCA8CD30B2";
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
	rename -uid "A88161E2-4DE0-49BE-4CE8-AB9835342E75";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 6.3837823915946501e-016 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 2.862499213317166e-014 6.9972202992197375e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514093 0.31499517602514099 0.31499517602514082 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_L0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footFront_L0_rootShape" -p "footFront_L0_root";
	rename -uid "58118AD3-4084-CE16-DE79-CAA75676069D";
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
createNode nurbsCurve -n "footFront_L0_root10Shape" -p "footFront_L0_root";
	rename -uid "1981DEB4-477B-0121-FE69-0181E6A28840";
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
createNode nurbsCurve -n "footFront_L0_root11Shape" -p "footFront_L0_root";
	rename -uid "929F84A5-414D-C1D7-6BD5-1A892A30AC79";
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
createNode nurbsCurve -n "footFront_L0_root12Shape" -p "footFront_L0_root";
	rename -uid "154862F2-4111-6B2C-FB1E-F6B9CF252E76";
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
	rename -uid "AE97522A-43DF-2A2D-9B41-BCBFD9EE60B9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 3.3306690738754696e-016 0.75996190873515701 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
	rename -uid "72684C69-4D84-B3F9-3560-89A5909EBAB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc10Shape" -p "footFront_L0_0_loc";
	rename -uid "5D288396-4F42-C907-2BE0-8FBFF764CD6B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc11Shape" -p "footFront_L0_0_loc";
	rename -uid "9E960D0C-49CE-A229-5FB0-0D892DFAC6C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_0_loc12Shape" -p "footFront_L0_0_loc";
	rename -uid "86817824-4ACD-01F4-5A34-23BA8C23129B";
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
createNode nurbsCurve -n "footFront_L0_0_loc12_0crvShape" -p "footFront_L0_0_loc";
	rename -uid "FC94607E-4657-55DF-F995-F89B03226D8F";
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
createNode nurbsCurve -n "footFront_L0_0_loc12_1crvShape" -p "footFront_L0_0_loc";
	rename -uid "692E9B97-41A0-60A5-D3E1-F68D5ACF8138";
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
	rename -uid "D79AB9CD-49A6-5C2A-20FF-A7A68D2C6F7D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -0.31771180755405098 0.73937999249396213 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 2.8624992133171654e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_1_locShape" -p "footFront_L0_1_loc";
	rename -uid "6B6928C4-4FB5-3E0B-3960-93AD16EB29A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc10Shape" -p "footFront_L0_1_loc";
	rename -uid "1E54E21F-4720-AA20-01AE-B5A69806A890";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc11Shape" -p "footFront_L0_1_loc";
	rename -uid "080E9BC7-4509-BA2A-A966-BAB10FA9C261";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_1_loc12Shape" -p "footFront_L0_1_loc";
	rename -uid "9191F387-4E48-2AA7-6B62-65A970458366";
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
createNode nurbsCurve -n "footFront_L0_1_loc12_0crvShape" -p "footFront_L0_1_loc";
	rename -uid "9C5B410A-41E9-B9A3-9607-44AD28ADA72C";
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
createNode nurbsCurve -n "footFront_L0_1_loc12_1crvShape" -p "footFront_L0_1_loc";
	rename -uid "936C7691-4DCD-8F35-022F-F3B99AE9A053";
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
	rename -uid "878B3101-41FE-ABEB-329A-3B8EDA45DA1F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522685429 -16.239037496288901 ;
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.862499213317166e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148056 7.9431701648148074 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	rename -uid "38912177-4B99-819A-8FF2-148457C6EC9D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
	rename -uid "0E3FD663-4095-71D2-2825-AF87B61BCAEA";
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
	rename -uid "A237E57D-4350-1651-F5F6-2EA22A109934";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -0.3177118075540506 -0.06789990867209994 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
	rename -uid "E16A5E38-4400-FAF1-A9CE-73BFD86DE183";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel10Shape" -p "footFront_L0_heel";
	rename -uid "8DAFA98D-46C5-8A7B-B1C2-0FB0BE747DC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_heel11Shape" -p "footFront_L0_heel";
	rename -uid "83D2742D-4278-A00C-81F5-41A0720A3033";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_heel12Shape" -p "footFront_L0_heel";
	rename -uid "3EAC4DE2-484B-9581-BDE1-7597FE172E4A";
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
createNode nurbsCurve -n "footFront_L0_heel12_0crvShape" -p "footFront_L0_heel";
	rename -uid "5772FFC1-4A05-0A46-1DE6-2F9F814C537A";
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
createNode nurbsCurve -n "footFront_L0_heel12_1crvShape" -p "footFront_L0_heel";
	rename -uid "C5ACCC92-4522-615E-1D63-97B1B854EA15";
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
	rename -uid "5AB4CA3D-4DEF-2FDB-D9EC-92B87B7685C8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120611 -0.3177118075540491 0.691571853504648 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
	rename -uid "52B16653-4F4B-467D-5D1F-77A7E6F3CA1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot10Shape" -p "footFront_L0_outpivot";
	rename -uid "B1919C20-42FC-D619-8DF9-2AAF7E0E0813";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot11Shape" -p "footFront_L0_outpivot";
	rename -uid "10F3BACC-4F13-200B-58CD-68929E28280B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_outpivot12Shape" -p "footFront_L0_outpivot";
	rename -uid "ABF02497-48E4-0D17-C432-12B07BF41710";
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
createNode nurbsCurve -n "footFront_L0_outpivot12_0crvShape" -p "footFront_L0_outpivot";
	rename -uid "66F726F7-47DF-7F50-7C66-629463A1DD32";
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
createNode nurbsCurve -n "footFront_L0_outpivot12_1crvShape" -p "footFront_L0_outpivot";
	rename -uid "017FF5B7-4D9A-65BB-FFBE-1BA77833A80A";
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
	rename -uid "78A881B2-4D74-9973-A65D-059705DD08CC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722984 -0.31771180755405165 0.86340011285662754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
	rename -uid "4EEFE53A-4371-1A1A-4124-39B1EBBCC674";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot10Shape" -p "footFront_L0_inpivot";
	rename -uid "7C18A202-4FCF-518A-EEF5-16BC2F2C8F84";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot11Shape" -p "footFront_L0_inpivot";
	rename -uid "386FDA2F-4B04-13F8-9765-5FA438405FD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_inpivot12Shape" -p "footFront_L0_inpivot";
	rename -uid "FD7DA457-4F7F-5833-97B5-27841A691AB3";
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
createNode nurbsCurve -n "footFront_L0_inpivot12_0crvShape" -p "footFront_L0_inpivot";
	rename -uid "00403755-4A18-3223-CBFE-DB8CD40AB31E";
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
createNode nurbsCurve -n "footFront_L0_inpivot12_1crvShape" -p "footFront_L0_inpivot";
	rename -uid "D7033FC2-47CF-1B2E-C806-54BE08BED59B";
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
	rename -uid "0B9AD28E-4ACB-D852-7044-94AD80859D56";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522685429 -16.239037496288901 ;
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.862499213317166e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148056 7.9431701648148074 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	rename -uid "5DEEF927-4A3C-81CA-D4EF-22B8DFE93914";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig1" -p "footFront_L0_1";
	rename -uid "C25FC8AF-405A-CFD7-2203-1DA9E00A30AF";
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
	rename -uid "C71E5E5E-4E23-7EF5-24C6-2ABDAFCC650E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 10.017876024668169 5.4248605945583197 2.5678955088137871 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.1780698731186242e-014 -3.4986093002622313e-014 4.4553227965996601e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148048 7.9431701648148092 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "frontLegUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "frontLegUI_L0_rootShape" -p "frontLegUI_L0_root";
	rename -uid "1FDF52DE-4A10-2238-CC2E-4EA7CA5E691E";
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
createNode nurbsCurve -n "frontLegUI_L0_root10Shape" -p "frontLegUI_L0_root";
	rename -uid "A4DE304A-45A2-620F-3EDF-86A3F256EEDE";
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
createNode nurbsCurve -n "frontLegUI_L0_root11Shape" -p "frontLegUI_L0_root";
	rename -uid "4C46E978-4138-A16F-1237-62B2CF27626A";
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
createNode nurbsCurve -n "frontLegUI_L0_root12Shape" -p "frontLegUI_L0_root";
	rename -uid "542E21A6-4C7E-9A41-A093-1496535E5676";
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
	rename -uid "892FA8D2-437A-C653-ED21-EABDC6558609";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011658 -5.8086248814742687 -5.5045062328919352 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.502060284263488 2.5020602842634889 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	rename -uid "7B841AB0-4CDC-FFF6-494F-EC8EA36C9BB6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig1" -p "legFront_L0_crv1";
	rename -uid "05A4C0DA-4EDC-1B3D-9F5D-02B72A5673F8";
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
	rename -uid "4D6CCCF1-4374-A75B-A28C-F1A677F61AB5";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999933 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "ACD5BC1D-4CB3-2B5C-0534-B1BCC4C607CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		1.2661749458170939 0 0
		0 0.42205831527236465 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint4" -p "shoulder_L0_blade";
	rename -uid "572FA3A9-4247-7E46-9801-CFAE057EFC46";
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
	setAttr ".rsrr" -type "double3" 3.3599751382065621 -13.536129435773102 -14.081236533000283 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint4" -p "shoulder_L0_blade";
	rename -uid "DBF2A62C-4BCF-16DB-12A8-F88B0CD8EF1C";
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
	rename -uid "EC98CD9E-4BFE-3E32-833B-B399E54F102D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147561224 -2.5303629060493167 -1.9933533667490368 ;
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "6EA991CA-40FD-6CA2-4589-389478BEA6E0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "DEEAFDB6-41F7-E8CC-446C-2F947847D532";
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
	rename -uid "994621E2-4A92-3941-5066-65B2576C04D0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 0.2008240179060829 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 -89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.1102915763618229 2.1102915763618237 -2.1102915763618237 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "13FE0F6D-4D9D-56FD-E8D6-CD96EE0D87BC";
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
createNode nurbsCurve -n "shoulder_R0_root1Shape" -p "shoulder_R0_root";
	rename -uid "D57E0200-488F-6E08-37D6-F79633F12F8E";
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
createNode nurbsCurve -n "shoulder_R0_root2Shape" -p "shoulder_R0_root";
	rename -uid "EA2427E4-49FE-A191-FAC1-D58AD026B046";
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
createNode nurbsCurve -n "shoulder_R0_root3Shape" -p "shoulder_R0_root";
	rename -uid "D8C22C14-4434-2532-4F22-05A64B634366";
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
	rename -uid "924FF6D9-4148-EE95-511D-B88F4BD87DC7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724605 -0.2088261637065516 0.20663608494886798 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854067e-014 -4.0691610923417846e-014 1.9083328088781104e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_0_locShape" -p "shoulder_R0_0_loc";
	rename -uid "46E418AC-4A1C-9EC4-328A-5FA5CD012DD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_0_loc1Shape" -p "shoulder_R0_0_loc";
	rename -uid "A6321AC4-4FD5-BC85-EE10-6A9AB44BB3BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_0_loc2Shape" -p "shoulder_R0_0_loc";
	rename -uid "5266E4D5-4DB3-3637-4224-1DA19E588ABB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_0_loc3Shape" -p "shoulder_R0_0_loc";
	rename -uid "0EDE028F-4CD2-2921-C992-5C8674DA7E04";
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
createNode nurbsCurve -n "shoulder_R0_0_loc3_0crvShape" -p "shoulder_R0_0_loc";
	rename -uid "9E03951A-47FE-F5EA-E1DD-2DADB22E6F3F";
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
createNode nurbsCurve -n "shoulder_R0_0_loc3_1crvShape" -p "shoulder_R0_0_loc";
	rename -uid "555EF2B0-4B85-70C1-53A6-2CACCC0821CA";
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
	rename -uid "897A5965-47F5-2503-3B8D-70B0D9C3615F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" -6.6613381477509392e-016 -1.7763568394002505e-015 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3611093629270312e-015 -4.0691610923417871e-014 1.908332808878112e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950309 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
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
	rename -uid "58377E5B-45AF-DE10-2846-E085FA604FEB";
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
createNode nurbsCurve -n "legFront_R0_root1Shape" -p "legFront_R0_root";
	rename -uid "7188D930-4649-CD68-8538-A999D690E952";
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
createNode nurbsCurve -n "legFront_R0_root2Shape" -p "legFront_R0_root";
	rename -uid "2611D8D0-4595-9887-7069-E8B548FC3148";
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
createNode nurbsCurve -n "legFront_R0_root3Shape" -p "legFront_R0_root";
	rename -uid "EE499AB5-4373-E623-346E-C2BBDCBADF62";
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
	rename -uid "71A923EB-44CA-F009-6569-928473EF9C70";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -2.1240863021370506 -0.48633856256837316 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.0169394243511612e-014 -4.6416475152245759e-014 2.9535098216191343e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_kneeShape" -p "legFront_R0_knee";
	rename -uid "547326F7-4E2F-CC0F-9A60-2AAC49D5F896";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_knee1Shape" -p "legFront_R0_knee";
	rename -uid "FBBCBCFB-417A-8F92-7B01-1F9854F74A0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_knee2Shape" -p "legFront_R0_knee";
	rename -uid "165A545F-4FDA-6483-25B3-B49238A77828";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_knee3Shape" -p "legFront_R0_knee";
	rename -uid "CFA96ED9-4A34-DFAE-DFA2-D68AD831161A";
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
createNode nurbsCurve -n "legFront_R0_knee3_0crvShape" -p "legFront_R0_knee";
	rename -uid "80530869-471B-59F8-62BF-1DBE458938B8";
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
createNode nurbsCurve -n "legFront_R0_knee3_1crvShape" -p "legFront_R0_knee";
	rename -uid "7A428CBE-42BC-87C8-6E2A-05BDEE678EBA";
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
	rename -uid "A12C2F71-4BE5-0E71-5B3C-3386CACE3BFF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -2.3651516407059177 0.073902270404611947 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2757931354891112e-014 -1.8499153411247349e-014 1.8734762709354158e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_ankleShape" -p "legFront_R0_ankle";
	rename -uid "0469FD01-4390-D980-0D39-04BD886B7AA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_ankle1Shape" -p "legFront_R0_ankle";
	rename -uid "71C2D22D-46A6-CA9F-85A2-95AE5EF4BA2D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_ankle2Shape" -p "legFront_R0_ankle";
	rename -uid "ADF2789E-4E47-1629-0E07-2184C1D91135";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_ankle3Shape" -p "legFront_R0_ankle";
	rename -uid "9C29EDBE-475E-DD8E-07C2-FD86B462822A";
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
createNode nurbsCurve -n "legFront_R0_ankle3_0crvShape" -p "legFront_R0_ankle";
	rename -uid "615FCD89-4694-AF78-83C1-AE988153DEF3";
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
createNode nurbsCurve -n "legFront_R0_ankle3_1crvShape" -p "legFront_R0_ankle";
	rename -uid "DD0664BF-41C8-5BC7-01F0-B2B2C1EB45D9";
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
	rename -uid "03473DCE-49D8-9985-7E9C-E6BF40F6D020";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.1294425054275483 0.023148533894219447 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854061e-014 -7.0210994895972814e-014 2.8671457303948929e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
	rename -uid "26214EB1-4E1F-4B83-326C-B49B51AD1D2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_foot1Shape" -p "legFront_R0_foot";
	rename -uid "76E9C030-40FB-DF63-6A5D-E5A055CB98D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_foot2Shape" -p "legFront_R0_foot";
	rename -uid "99E6AED9-44D8-204F-53C1-1CA9852AB623";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_foot3Shape" -p "legFront_R0_foot";
	rename -uid "803F63B0-4D62-2B57-A854-698B944736D9";
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
createNode nurbsCurve -n "legFront_R0_foot3_0crvShape" -p "legFront_R0_foot";
	rename -uid "50E38E21-4679-0B0C-50F9-58A2F300829F";
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
createNode nurbsCurve -n "legFront_R0_foot3_1crvShape" -p "legFront_R0_foot";
	rename -uid "C8133D72-44F3-5279-5D22-8EAC6903D228";
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
	rename -uid "92103F1B-4025-68D6-0B8B-6199ED9D8F0E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 6.106226635438361e-016 0.59657797851920957 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854048e-014 -4.4437064808237844e-014 1.8126662698730488e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_effShape" -p "legFront_R0_eff";
	rename -uid "A2528F06-4D1B-20D3-FBAA-A28C600CF8E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_eff1Shape" -p "legFront_R0_eff";
	rename -uid "AA77F0D1-4CB2-8A01-D1AF-08964AB5A31F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_eff2Shape" -p "legFront_R0_eff";
	rename -uid "3B147E8C-4559-F9FE-E5FF-D2B6A3DDC34C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_eff3Shape" -p "legFront_R0_eff";
	rename -uid "0032B66B-4E07-8A06-2A08-F1A4B49518F2";
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
createNode nurbsCurve -n "legFront_R0_eff3_0crvShape" -p "legFront_R0_eff";
	rename -uid "69BC4347-4D9A-09A0-958B-D38F86F3F576";
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
createNode nurbsCurve -n "legFront_R0_eff3_1crvShape" -p "legFront_R0_eff";
	rename -uid "FC23D662-41E0-FCBD-EF2B-A2BE5D15C97F";
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
	rename -uid "3ECC2D72-4501-C368-BBCD-239FB6BA0109";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 6.106226635438361e-016 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854047e-014 -4.4437064808237837e-014 1.8126662698730485e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514088 0.31499517602514099 0.31499517602514082 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_R0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footFront_R0_rootShape" -p "footFront_R0_root";
	rename -uid "F70DD7F3-4065-2A65-4450-9995FDDFB13C";
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
createNode nurbsCurve -n "footFront_R0_root1Shape" -p "footFront_R0_root";
	rename -uid "77FCD5D3-4235-2803-12D2-578C27908524";
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
createNode nurbsCurve -n "footFront_R0_root2Shape" -p "footFront_R0_root";
	rename -uid "EEA561CB-48C6-3689-967B-AFBBC95296AD";
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
createNode nurbsCurve -n "footFront_R0_root3Shape" -p "footFront_R0_root";
	rename -uid "E05B483A-42D3-F214-349A-4C9DA54D044E";
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
	rename -uid "336472C1-4886-45E6-F6DF-1BBE10CE01EE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 3.3306690738754696e-016 0.75996190873515701 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 -4.443706480823785e-014 1.8584015626726618e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_0_locShape" -p "footFront_R0_0_loc";
	rename -uid "8441AD2C-4390-0004-C125-6F8A938E7281";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_0_loc1Shape" -p "footFront_R0_0_loc";
	rename -uid "51DB60DB-4C73-84F3-2BE1-D5B9E783C92C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_0_loc2Shape" -p "footFront_R0_0_loc";
	rename -uid "FB853163-41C9-D0C0-ADAD-C2B197CAC004";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_0_loc3Shape" -p "footFront_R0_0_loc";
	rename -uid "E4430AC4-4BD2-2474-C1A3-E4B94A442DC4";
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
createNode nurbsCurve -n "footFront_R0_0_loc3_0crvShape" -p "footFront_R0_0_loc";
	rename -uid "52DD7280-43F6-AC86-0398-44BB7B5DB761";
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
createNode nurbsCurve -n "footFront_R0_0_loc3_1crvShape" -p "footFront_R0_0_loc";
	rename -uid "EEBEAA92-44D6-E457-163B-99988A835B29";
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
	rename -uid "7CB0856F-4D18-156C-1FCF-F0B89AFC9DAB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -0.31771180755405104 0.73937999249396213 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854056e-014 -4.5654261648496072e-014 1.9384843159177594e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000009 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_1_locShape" -p "footFront_R0_1_loc";
	rename -uid "8EE57004-42A7-BB31-9F0A-51B66592AC2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_1_loc1Shape" -p "footFront_R0_1_loc";
	rename -uid "ACB59D04-4F0D-2518-F5AF-1C87D774033A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_1_loc2Shape" -p "footFront_R0_1_loc";
	rename -uid "7B7A35E9-487F-DAFB-0995-D1A540659D52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_1_loc3Shape" -p "footFront_R0_1_loc";
	rename -uid "36955018-4E35-54FA-F6C2-C186274BF5AC";
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
createNode nurbsCurve -n "footFront_R0_1_loc3_0crvShape" -p "footFront_R0_1_loc";
	rename -uid "938E3BA3-4DAC-55CD-5278-C6B4B27FBF69";
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
createNode nurbsCurve -n "footFront_R0_1_loc3_1crvShape" -p "footFront_R0_1_loc";
	rename -uid "F340A260-4B9D-9F18-74C8-D6923DD55BAE";
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
	rename -uid "8CEBB071-4893-451D-E409-25816B890008";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522684785 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	rename -uid "3BB5DCCB-4F08-C09F-5200-AE9285B70954";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
	rename -uid "63DD5E14-4563-09B1-638B-D1A9E32A6414";
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
	rename -uid "D86E9F98-43F7-E8BF-70BD-44AA0A7B3707";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -0.3177118075540506 -0.06789990867209994 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 -4.443706480823785e-014 1.8584015626726618e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_heelShape" -p "footFront_R0_heel";
	rename -uid "150B0CB9-4CFA-4D84-97BB-D2A557C24EA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_heel1Shape" -p "footFront_R0_heel";
	rename -uid "5D61C6A1-4D00-9DAD-3ECE-B88B32090330";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_heel2Shape" -p "footFront_R0_heel";
	rename -uid "16DC2DCA-4D28-123A-20DD-D6AAE05652E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_heel3Shape" -p "footFront_R0_heel";
	rename -uid "67356EAB-43D5-D3C6-0614-509404BDB427";
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
createNode nurbsCurve -n "footFront_R0_heel3_0crvShape" -p "footFront_R0_heel";
	rename -uid "859E075B-42DC-E22C-CB70-D0A44F402069";
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
createNode nurbsCurve -n "footFront_R0_heel3_1crvShape" -p "footFront_R0_heel";
	rename -uid "220725B0-4483-C318-EBB9-BF89CF556172";
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
	rename -uid "25C0F0A5-4E8F-A089-91AB-029489139CF0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120611 -0.3177118075540501 0.691571853504648 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 -4.443706480823785e-014 1.8584015626726618e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_outpivotShape" -p "footFront_R0_outpivot";
	rename -uid "6E3E1CFF-4D2C-BA1C-1849-7892D8B3EE26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_outpivot1Shape" -p "footFront_R0_outpivot";
	rename -uid "DD58CFF0-453F-BA5E-8AB8-EE831E693178";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_outpivot2Shape" -p "footFront_R0_outpivot";
	rename -uid "11280E12-4C17-B82B-8FEE-7D8FD45B9C2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_outpivot3Shape" -p "footFront_R0_outpivot";
	rename -uid "5A05F307-4E2A-E13E-87B0-3381B3668E0F";
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
createNode nurbsCurve -n "footFront_R0_outpivot3_0crvShape" -p "footFront_R0_outpivot";
	rename -uid "3EEADDCE-4D07-3EDA-D27E-D7A2CB092879";
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
createNode nurbsCurve -n "footFront_R0_outpivot3_1crvShape" -p "footFront_R0_outpivot";
	rename -uid "70E0869B-425C-2F53-294F-22BCAAD70337";
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
	rename -uid "F522316F-40D0-BDB1-0852-5580C6B80C4D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722984 -0.31771180755405076 0.86340011285662399 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 -4.443706480823785e-014 1.8584015626726618e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_inpivotShape" -p "footFront_R0_inpivot";
	rename -uid "0665852F-4126-A5EF-916C-E987B198F0DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_inpivot1Shape" -p "footFront_R0_inpivot";
	rename -uid "0403EA01-447C-66E3-267B-E69DE374CE0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_inpivot2Shape" -p "footFront_R0_inpivot";
	rename -uid "CA13970C-43B3-8D4E-34B8-8DA4CDF88095";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_inpivot3Shape" -p "footFront_R0_inpivot";
	rename -uid "D4EB0029-42E7-8738-43C9-A49AC419294E";
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
createNode nurbsCurve -n "footFront_R0_inpivot3_0crvShape" -p "footFront_R0_inpivot";
	rename -uid "B2CB6079-4DA7-8EA2-2D65-CAAE86602AEE";
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
createNode nurbsCurve -n "footFront_R0_inpivot3_1crvShape" -p "footFront_R0_inpivot";
	rename -uid "F30E5407-4327-C866-83B1-5A8C2163EA55";
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
	rename -uid "0650FE8B-4D6C-3806-CCD6-3CBA8386BF9B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522684785 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	rename -uid "5DA3E2D0-4F29-C5E0-01B1-EFB19DA54D84";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig1" -p "footFront_R0_1";
	rename -uid "77EA550A-4AEC-09B1-5A30-5493A37B22DE";
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
	rename -uid "C49B6290-4E85-780F-82EF-B2824B6F54E9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 10.017876024668173 5.4248605945583099 2.5678955088137911 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854061e-014 -4.4437064808237831e-014 1.8584015626726618e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148056 7.9431701648148048 7.9431701648148083 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "frontLegUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "frontLegUI_R0_rootShape" -p "frontLegUI_R0_root";
	rename -uid "2CA0048E-4B4A-624E-9A6F-F79EC64AA545";
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
createNode nurbsCurve -n "frontLegUI_R0_root1Shape" -p "frontLegUI_R0_root";
	rename -uid "1613FBF6-46FF-887E-EF53-98BC17B69222";
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
createNode nurbsCurve -n "frontLegUI_R0_root2Shape" -p "frontLegUI_R0_root";
	rename -uid "34E46B81-4D5B-EA9D-BCA3-58B2EA5BF1AE";
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
createNode nurbsCurve -n "frontLegUI_R0_root3Shape" -p "frontLegUI_R0_root";
	rename -uid "8920CD1F-41A1-2B83-EC98-26B9D26F0169";
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
	rename -uid "084AE25D-4E2F-1759-8FE7-A09F5229273B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011703 -5.808624881474266 -5.5045062328919352 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 2.5444437451708134e-014 ;
	setAttr ".s" -type "double3" 2.5020602842634885 2.5020602842634876 -2.5020602842634889 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	rename -uid "5DC886CC-48BA-F73B-08A8-5BA26BEAF7B8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig1" -p "legFront_R0_crv1";
	rename -uid "AEC2A4ED-4FAB-6817-CC55-6485FC5E8274";
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
	rename -uid "2B9539A9-478B-8425-6F2F-9F94763AA756";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999922 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "783C75B8-4FB8-5A7A-E69F-3EBDE4904B47";
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
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint1" -p "shoulder_R0_blade";
	rename -uid "C2C2C98F-4A98-2191-C112-CFBB155F0340";
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
	setAttr ".rsrr" -type "double3" 3.3599751382067917 -13.536129435773146 -14.081236533000343 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint1" -p "shoulder_R0_blade";
	rename -uid "CB453CA3-43A1-F2CF-8FF1-06B1E49FA6A7";
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
	setAttr ".rst" -type "double3" -1.3877787807814457e-017 -4.4408920985006262e-016 
		-2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "35FA1257-4F82-4CE2-6183-54931B1ACC1F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147563361 -2.5303629060493171 -1.9933533667490373 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "41846927-4C1F-C019-1A24-289E185BC01D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "21191368-4B06-8437-80FA-76A6E680FDCC";
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
	rename -uid "696445D4-4A97-E103-B6D8-EB8A2A95D3B1";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000007 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "13623CD2-4187-7890-29FA-CC8D6A256B46";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint4" -p "spine_C0_blade";
	rename -uid "536A6680-4280-DBE2-7B14-839363AF8317";
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
	setAttr ".rsrr" -type "double3" 3.4181256068723035e-030 3.4181256068723042e-030 
		89.999999999999986 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint4" -p "spine_C0_blade";
	rename -uid "C5026C40-4A28-AFD0-3A59-429F6A9E9ADB";
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
	setAttr ".rst" -type "double3" 0 -4.4408920985006262e-016 3.9443045261050599e-031 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "37D862F5-4B29-01CC-FC12-BF92158DDC40";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "B2108AE3-4E94-EFEE-1950-B389161163EC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "144E3751-4F84-D11A-8A35-C4AF6D5224F7";
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
	rename -uid "EE742C15-492C-D9A8-578F-098026FD0938";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 0.21090213141047975 -0.097927178047044539 -2.6808811877076879 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.4927195488403602 1.4927195488403604 1.4927195488403604 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "backLegUI_L0_root";
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
	rename -uid "201C1FE4-485E-AE66-0AF7-3E8D55B8F4D2";
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
createNode nurbsCurve -n "legBack_L0_root10Shape" -p "legBack_L0_root";
	rename -uid "8391D50F-4112-93B3-BE7E-FFAA7415536F";
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
createNode nurbsCurve -n "legBack_L0_root11Shape" -p "legBack_L0_root";
	rename -uid "9D8E4471-4505-B957-FBD1-24A561C7FF19";
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
createNode nurbsCurve -n "legBack_L0_root12Shape" -p "legBack_L0_root";
	rename -uid "5AC84498-4D75-C2B0-A2DC-268B5812D936";
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
	rename -uid "D7956A40-46A8-3D9B-4898-FDA744955B70";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.8849813083506888e-015 -1.155950874379851 0.33714517700502222 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_kneeShape" -p "legBack_L0_knee";
	rename -uid "0D51864A-4038-9687-797C-219DF909DA11";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee10Shape" -p "legBack_L0_knee";
	rename -uid "DFCA2DD8-4B3D-5DD1-8CEE-D2B4FC20069E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_knee11Shape" -p "legBack_L0_knee";
	rename -uid "86992F96-45AF-81D2-F504-4CA5E0E16230";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_knee12Shape" -p "legBack_L0_knee";
	rename -uid "379DB742-4DFB-CCDE-E901-988BBFBC86E4";
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
createNode nurbsCurve -n "legBack_L0_knee12_0crvShape" -p "legBack_L0_knee";
	rename -uid "31BC07BB-4D71-5DEF-9386-698493DF778C";
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
createNode nurbsCurve -n "legBack_L0_knee12_1crvShape" -p "legBack_L0_knee";
	rename -uid "C447CCC8-4534-D00A-B949-7E97856B8E68";
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
	rename -uid "050F3E0C-4440-9DED-9D77-528120EF49CE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.886579864025407e-015 -1.4950431842245466 -0.57333193410462369 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854053e-014 2.8624992133171673e-014 6.9972202992197375e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_ankleShape" -p "legBack_L0_ankle";
	rename -uid "0644975D-4DAD-141C-8C4B-1AB4803F48F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle10Shape" -p "legBack_L0_ankle";
	rename -uid "294793E6-406A-3FEB-C52D-B883BEE674BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_ankle11Shape" -p "legBack_L0_ankle";
	rename -uid "CDCF1675-4EEC-B449-F2D6-2791175E1095";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_ankle12Shape" -p "legBack_L0_ankle";
	rename -uid "192CF2DE-4E6E-B3D8-3F6B-20BDB8BACA96";
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
createNode nurbsCurve -n "legBack_L0_ankle12_0crvShape" -p "legBack_L0_ankle";
	rename -uid "E28E50D6-4CD7-C8E0-9E05-B0869F843D7E";
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
createNode nurbsCurve -n "legBack_L0_ankle12_1crvShape" -p "legBack_L0_ankle";
	rename -uid "D59B1A80-461F-8D34-DFB6-D297EBA8C54D";
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
	rename -uid "B5DA89E0-4ECF-4633-D3D6-8BB592EFA26F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -0.54805580751979199 0.15050522089872875 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.862499213317166e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_footShape" -p "legBack_L0_foot";
	rename -uid "C3E08D42-49CB-520B-1A4F-FAB3527ED707";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot10Shape" -p "legBack_L0_foot";
	rename -uid "37351C7F-4794-618C-B740-778C8A072ADE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_foot11Shape" -p "legBack_L0_foot";
	rename -uid "E29B6903-45FC-F4D8-A160-70A4FCCE16A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_foot12Shape" -p "legBack_L0_foot";
	rename -uid "1B834806-47DA-1263-6D3A-21BD1A5E19FE";
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
createNode nurbsCurve -n "legBack_L0_foot12_0crvShape" -p "legBack_L0_foot";
	rename -uid "DFCF6981-44E8-ED44-773D-B9B2A9B6DABA";
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
createNode nurbsCurve -n "legBack_L0_foot12_1crvShape" -p "legBack_L0_foot";
	rename -uid "2D9FE5A6-4522-922B-A491-C783D8C3CD5F";
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
	rename -uid "FD93E8BA-41B5-86F2-A170-8BBB19734332";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 4.9960036108132044e-016 0.28135643819707523 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854054e-014 2.8624992133171654e-014 6.9972202992197325e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_effShape" -p "legBack_L0_eff";
	rename -uid "BD0E928D-4734-08CA-AFF9-938CF04C62F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff10Shape" -p "legBack_L0_eff";
	rename -uid "1D3B57D7-4B11-CDB6-52A9-EF81BCB58C01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_eff11Shape" -p "legBack_L0_eff";
	rename -uid "D23A67B5-44A7-01E0-8424-1D803EEE59EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_eff12Shape" -p "legBack_L0_eff";
	rename -uid "B1CB6CDB-427E-78C0-4D18-329947BB1DCC";
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
createNode nurbsCurve -n "legBack_L0_eff12_0crvShape" -p "legBack_L0_eff";
	rename -uid "6724728B-41D5-9B3F-FBB4-42843E0213EE";
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
createNode nurbsCurve -n "legBack_L0_eff12_1crvShape" -p "legBack_L0_eff";
	rename -uid "C5DD2363-48B1-F5DF-E996-9D83490EAF33";
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
	rename -uid "6491F75D-45D9-5A49-52F3-8986431ABC2D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 5.8286708792820718e-016 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854053e-014 2.8624992133171654e-014 6.9972202992197325e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398101 0.16356254765398093 0.16356254765398087 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_L0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footBack_L0_rootShape" -p "footBack_L0_root";
	rename -uid "04E3ACFE-4B6E-EEC9-637A-B6A110335C8D";
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
createNode nurbsCurve -n "footBack_L0_root10Shape" -p "footBack_L0_root";
	rename -uid "16853063-48E9-F547-2A13-41A41E4A943A";
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
createNode nurbsCurve -n "footBack_L0_root11Shape" -p "footBack_L0_root";
	rename -uid "F3765D06-467B-CAE2-206D-CE961F595DDD";
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
createNode nurbsCurve -n "footBack_L0_root12Shape" -p "footBack_L0_root";
	rename -uid "6DFB4A11-4A51-C48E-AF08-F3A61F364632";
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
	rename -uid "6909D658-42A2-241F-608A-41B000C5E5B4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-015 1.6653345369377348e-016 0.54565565303279584 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171679e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_0_locShape" -p "footBack_L0_0_loc";
	rename -uid "1DF9C4B1-4093-82E4-94B8-6BAC4D5E46F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc10Shape" -p "footBack_L0_0_loc";
	rename -uid "A90A41F2-4DF3-82EE-073B-FF9E10C567B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc11Shape" -p "footBack_L0_0_loc";
	rename -uid "5A728C1C-46A4-4ACC-AC47-678D72F2FD04";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_0_loc12Shape" -p "footBack_L0_0_loc";
	rename -uid "F274079A-4F1E-E235-FC40-8585192AEB71";
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
createNode nurbsCurve -n "footBack_L0_0_loc12_0crvShape" -p "footBack_L0_0_loc";
	rename -uid "B889C383-4CD2-0F74-EB43-7391AEEA6CF6";
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
createNode nurbsCurve -n "footBack_L0_0_loc12_1crvShape" -p "footBack_L0_0_loc";
	rename -uid "8455743D-4593-59A1-3B87-E08969C56ED2";
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
	rename -uid "0D9F54BF-4920-322D-352B-D59784BF2334";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -0.34547277013915573 0.77046072389792464 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 2.8624992133171654e-014 6.9972202992197312e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
	rename -uid "F6977B2F-4E00-6A04-9109-B782F0B7686C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc10Shape" -p "footBack_L0_1_loc";
	rename -uid "7D1ADEEE-4899-062E-975C-A2AB2CB9A5A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc11Shape" -p "footBack_L0_1_loc";
	rename -uid "A3970BED-4184-DFAA-5290-0FAE2855763E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_1_loc12Shape" -p "footBack_L0_1_loc";
	rename -uid "1471A16C-4782-7EEA-44FC-48818A8356B6";
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
createNode nurbsCurve -n "footBack_L0_1_loc12_0crvShape" -p "footBack_L0_1_loc";
	rename -uid "01BAB4C7-4B98-E3A9-FD12-45A465CB3C41";
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
createNode nurbsCurve -n "footBack_L0_1_loc12_1crvShape" -p "footBack_L0_1_loc";
	rename -uid "7DDECDA8-4751-CFCB-366B-F3832B6A14AF";
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
	rename -uid "12CABBA0-45C6-C9B8-8A9B-359BE0C65BEE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358937 11.584116504196622 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171679e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	rename -uid "7368D883-4411-8E25-47B8-FB9F90558954";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
	rename -uid "27484271-4DFF-FE38-7700-A289E3BBB750";
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
	rename -uid "B2327A3E-4E25-AF7C-F5CA-DBB7C6B2EE88";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-014 -0.345472770139156 -0.3726000393397868 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171679e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_heelShape" -p "footBack_L0_heel";
	rename -uid "6D25F490-4C56-B811-1598-139CB9E92C03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel10Shape" -p "footBack_L0_heel";
	rename -uid "BEA0DB7B-4B03-C288-396B-02A7960BF56F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_heel11Shape" -p "footBack_L0_heel";
	rename -uid "9141C42E-4843-B025-FB6D-29B449100702";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_heel12Shape" -p "footBack_L0_heel";
	rename -uid "81B95525-48CF-B7B3-AFC2-6A97899F76AB";
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
createNode nurbsCurve -n "footBack_L0_heel12_0crvShape" -p "footBack_L0_heel";
	rename -uid "2A0DD7A0-4AD3-C0BB-0CDA-2BB192D7B2A6";
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
createNode nurbsCurve -n "footBack_L0_heel12_1crvShape" -p "footBack_L0_heel";
	rename -uid "B73D8CC0-4E5B-2EFB-022D-D6A0A051533F";
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
	rename -uid "9B85BA74-4A45-2B94-2B46-40A48B03B986";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139833 -0.34547277013915478 0.11497296198778884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171679e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_outpivotShape" -p "footBack_L0_outpivot";
	rename -uid "EDCCDABE-444F-27F4-D191-E8ABEF89D011";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot10Shape" -p "footBack_L0_outpivot";
	rename -uid "7723868A-4094-81BD-F48E-7589F1DBED0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot11Shape" -p "footBack_L0_outpivot";
	rename -uid "41D9D122-4872-7A42-6482-C4B170D96631";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_outpivot12Shape" -p "footBack_L0_outpivot";
	rename -uid "9048DE04-45C5-C4ED-539F-6597F3C3604B";
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
createNode nurbsCurve -n "footBack_L0_outpivot12_0crvShape" -p "footBack_L0_outpivot";
	rename -uid "06D4F7C9-49CF-D8DE-26E1-65982075DC18";
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
createNode nurbsCurve -n "footBack_L0_outpivot12_1crvShape" -p "footBack_L0_outpivot";
	rename -uid "2DADEC09-4ED3-FC99-6C65-3A9B8DF05106";
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
	rename -uid "696666BD-433C-82F5-BFA3-25823F6DB625";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215654 -0.34547277013915723 0.21228136011732168 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854058e-014 2.8624992133171679e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_inpivotShape" -p "footBack_L0_inpivot";
	rename -uid "EFFD3B70-457B-1830-8787-23AACC2A42AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot10Shape" -p "footBack_L0_inpivot";
	rename -uid "2ED1B8EA-4798-02ED-F2E7-45A061233EF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot11Shape" -p "footBack_L0_inpivot";
	rename -uid "7B1062FE-462C-D839-8925-5C9A6CABCAFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_inpivot12Shape" -p "footBack_L0_inpivot";
	rename -uid "5F3F1B50-46FD-9C32-6362-898408E7F248";
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
createNode nurbsCurve -n "footBack_L0_inpivot12_0crvShape" -p "footBack_L0_inpivot";
	rename -uid "F0A0EFF7-48E7-0293-83A8-B395078BBFCB";
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
createNode nurbsCurve -n "footBack_L0_inpivot12_1crvShape" -p "footBack_L0_inpivot";
	rename -uid "C63C7B3A-44EB-44DC-7D2A-F6ABA4A35513";
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
	rename -uid "63CD3C76-48E8-D194-D02F-46ADE5744625";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358937 11.584116504196622 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171679e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	rename -uid "63A56443-476F-CBBD-A892-E7B01A2E98AD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig1" -p "footBack_L0_1";
	rename -uid "7239AB06-4258-5DC6-82B9-27924799F5F0";
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
	rename -uid "2A02FA40-458D-430D-3E1D-ED9A95FEDFC2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 7.9148715870389772 6.0337539388988644 -0.92016921390297146 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -1.7739145561936563e-029 ;
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
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "backLegUI_L0_rootShape" -p "backLegUI_L0_root";
	rename -uid "F0D69BA2-4F24-E50D-C07B-E797162C2E7B";
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
createNode nurbsCurve -n "backLegUI_L0_root10Shape" -p "backLegUI_L0_root";
	rename -uid "E1151BE2-4364-035B-BC83-B29D38904B88";
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
createNode nurbsCurve -n "backLegUI_L0_root11Shape" -p "backLegUI_L0_root";
	rename -uid "967937D3-42D7-02A9-1B64-48BDF64FC5FF";
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
createNode nurbsCurve -n "backLegUI_L0_root12Shape" -p "backLegUI_L0_root";
	rename -uid "E00625F1-4F96-708A-CB25-61BF05E75152";
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
	rename -uid "E23F1CCF-41A0-4C5A-0B04-6AB633D2BADB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.79597111178075 -3.2803056907023977 1.8090460715460552 ;
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 1.4137227438343882 1.413722743834388 1.413722743834388 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	rename -uid "EC1E12DE-4F51-822A-162D-77B650339830";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig1" -p "legBack_L0_crv1";
	rename -uid "8D58D765-4257-2DD8-6796-139E7B46AF30";
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
	rename -uid "73C4046E-45B5-0F31-C2C3-E9A490E58B90";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".r" -type "double3" 90 -89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.49271954884036 1.4927195488403604 -1.4927195488403604 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "backLegUI_R0_root";
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
	rename -uid "BC95E4D1-4815-1957-62C3-19BC0862F4CA";
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
createNode nurbsCurve -n "legBack_R0_root1Shape" -p "legBack_R0_root";
	rename -uid "6EB01CAA-496B-8CCD-FCC8-F9B806EB4D23";
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
createNode nurbsCurve -n "legBack_R0_root2Shape" -p "legBack_R0_root";
	rename -uid "06FDE451-4ED8-8384-B195-E3B12417AA08";
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
createNode nurbsCurve -n "legBack_R0_root3Shape" -p "legBack_R0_root";
	rename -uid "80C1971B-40A6-BAB7-EC05-62BAC7A6B7FF";
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
	rename -uid "17EC6C54-4BEF-B8DB-D68F-11A580E13741";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.3306690738754696e-015 -1.155950874379851 0.33714517700502245 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.3498635550717744e-014 -4.8454499792649503e-014 1.4759883671245699e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
	rename -uid "9EE45E6A-4F16-FB4E-47E5-90B7F8B224EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_knee1Shape" -p "legBack_R0_knee";
	rename -uid "3FB3C49C-4EB6-CB37-3B7E-F2A382B4A268";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_knee2Shape" -p "legBack_R0_knee";
	rename -uid "CC36B3C7-4C34-E22F-6836-D4B69A34E905";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_knee3Shape" -p "legBack_R0_knee";
	rename -uid "729808C0-4601-F62C-2A3C-35849D49E28E";
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
createNode nurbsCurve -n "legBack_R0_knee3_0crvShape" -p "legBack_R0_knee";
	rename -uid "6561150E-43E9-A319-36B0-20A42776246A";
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
createNode nurbsCurve -n "legBack_R0_knee3_1crvShape" -p "legBack_R0_knee";
	rename -uid "0229E2DB-4426-0698-069B-2BBC07860928";
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
	rename -uid "81B2D325-41F2-4BC0-932C-3BB9E3F85776";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -1.4950431842245469 -0.57333193410462324 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -8.9990903671451652e-015 -3.0626396443424833e-014 1.9117260963966657e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_ankleShape" -p "legBack_R0_ankle";
	rename -uid "5D33F706-409E-29DB-3540-B893339A3583";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_ankle1Shape" -p "legBack_R0_ankle";
	rename -uid "ABAE90B7-4DB0-51F5-1D83-869A453738EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_ankle2Shape" -p "legBack_R0_ankle";
	rename -uid "0D75D41E-43D6-C244-3C00-3CA3C21C6105";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_ankle3Shape" -p "legBack_R0_ankle";
	rename -uid "A6EE3C5B-455F-2F5B-B658-08BA47B5AC18";
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
createNode nurbsCurve -n "legBack_R0_ankle3_0crvShape" -p "legBack_R0_ankle";
	rename -uid "C6BB79E1-49C6-95E1-0CFF-48AEDFC45E88";
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
createNode nurbsCurve -n "legBack_R0_ankle3_1crvShape" -p "legBack_R0_ankle";
	rename -uid "3FBE94A7-44A1-30A2-A745-B4BC8508D345";
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
	rename -uid "88AA7A93-4613-98F9-B630-2FA7883A1AEE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 -0.5480558075197921 0.15050522089872898 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 -3.6832963200007424e-014 2.1334038855089992e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_footShape" -p "legBack_R0_foot";
	rename -uid "9BDDFFAD-4144-B63C-2CFC-03A714436E8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_foot1Shape" -p "legBack_R0_foot";
	rename -uid "D6F35BAD-404B-6B72-210F-27BBA49A88AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_foot2Shape" -p "legBack_R0_foot";
	rename -uid "D5EC728B-4C84-0C65-CC1A-EBAF2CC5EEC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_foot3Shape" -p "legBack_R0_foot";
	rename -uid "35A751AE-4737-861A-7CF1-72981A30B66C";
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
createNode nurbsCurve -n "legBack_R0_foot3_0crvShape" -p "legBack_R0_foot";
	rename -uid "FB6190DA-4539-6CE5-6471-56AFB9D650BF";
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
createNode nurbsCurve -n "legBack_R0_foot3_1crvShape" -p "legBack_R0_foot";
	rename -uid "F5BEBB55-4A03-B9AC-D050-0D856271FF27";
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
	rename -uid "71D0D029-44A6-49E6-0264-95BB332F2511";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9984014443252818e-015 4.8572257327350599e-016 0.28135643819707545 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854062e-014 -4.4003965598032285e-014 1.8588667415775785e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999922 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_effShape" -p "legBack_R0_eff";
	rename -uid "7F318654-4F83-80AA-8338-089A9FD07A45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_eff1Shape" -p "legBack_R0_eff";
	rename -uid "C7706C94-4339-48C9-1149-2482ECB4418B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_eff2Shape" -p "legBack_R0_eff";
	rename -uid "DE0A62BF-416B-7AF2-2994-68931C1AB48B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_eff3Shape" -p "legBack_R0_eff";
	rename -uid "2EEF12CE-40DE-2D8A-CD39-28A76650F483";
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
createNode nurbsCurve -n "legBack_R0_eff3_0crvShape" -p "legBack_R0_eff";
	rename -uid "5E435D8C-491C-6C3E-C39B-998CD008E0DB";
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
createNode nurbsCurve -n "legBack_R0_eff3_1crvShape" -p "legBack_R0_eff";
	rename -uid "95E2D0AC-4F2F-0FA6-9D61-E0A6F39D21AF";
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
	rename -uid "EAABB4DA-4583-C978-8735-0DA890D26C66";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 5.6898930012039273e-016 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854061e-014 -4.4003965598032298e-014 1.8588667415775788e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398101 0.1635625476539809 0.1635625476539809 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_R0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footBack_R0_rootShape" -p "footBack_R0_root";
	rename -uid "B0C15DA8-46DF-A94B-763A-AEB05DAE0709";
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
createNode nurbsCurve -n "footBack_R0_root1Shape" -p "footBack_R0_root";
	rename -uid "9A0D5E15-435D-2A31-A48D-72B4F75BAA0D";
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
createNode nurbsCurve -n "footBack_R0_root2Shape" -p "footBack_R0_root";
	rename -uid "CBA9F42A-4B08-1DEF-1671-A190A4024C6C";
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
createNode nurbsCurve -n "footBack_R0_root3Shape" -p "footBack_R0_root";
	rename -uid "8913D450-4B28-B5AC-6D06-90A6004BDA2F";
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
	rename -uid "90C16B55-4295-AAEE-3538-88A2150969E0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-015 2.7755575615628914e-016 0.54565565303279229 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854064e-014 -3.547855311641262e-014 1.9139612476515764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_0_locShape" -p "footBack_R0_0_loc";
	rename -uid "6B46EBBC-4E90-740B-A1B7-41BD402F5432";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_0_loc1Shape" -p "footBack_R0_0_loc";
	rename -uid "A655CD11-4B03-315F-81AD-739DD2F4CDD8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_0_loc2Shape" -p "footBack_R0_0_loc";
	rename -uid "B76FE40F-4097-99BC-31AC-B0AEE9257538";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_0_loc3Shape" -p "footBack_R0_0_loc";
	rename -uid "29FE41D4-4DED-CC92-A5CB-89B2D0CECBD0";
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
createNode nurbsCurve -n "footBack_R0_0_loc3_0crvShape" -p "footBack_R0_0_loc";
	rename -uid "32CEF678-4AD3-8511-4247-79B9E7742602";
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
createNode nurbsCurve -n "footBack_R0_0_loc3_1crvShape" -p "footBack_R0_0_loc";
	rename -uid "DCB1DE7B-4E58-0C44-0B94-BA90A8E22927";
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
	rename -uid "DFDD9C87-40F6-8BBD-4EF4-758003D3575B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -0.34547277013915573 0.77046072389792464 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854051e-014 -5.0923061529452589e-014 1.8776362505034247e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_1_locShape" -p "footBack_R0_1_loc";
	rename -uid "8C5EE647-4A25-B7BA-8871-C7A915CBC4E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_1_loc1Shape" -p "footBack_R0_1_loc";
	rename -uid "BEC684C5-4D7D-91CE-D465-DF8F9A555959";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_1_loc2Shape" -p "footBack_R0_1_loc";
	rename -uid "E53199A4-46CC-03FA-9A08-4183E15189B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_1_loc3Shape" -p "footBack_R0_1_loc";
	rename -uid "FF31B73F-4FED-FA71-AE32-89833CF71840";
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
createNode nurbsCurve -n "footBack_R0_1_loc3_0crvShape" -p "footBack_R0_1_loc";
	rename -uid "D7F06491-4B7A-7124-D7E7-7295A5283418";
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
createNode nurbsCurve -n "footBack_R0_1_loc3_1crvShape" -p "footBack_R0_1_loc";
	rename -uid "8F1B01AE-4E07-BD71-3086-C4869DF023BD";
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
	rename -uid "5DA1D49D-4AE4-F5A0-10A0-B1BA92B76872";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718953 -0.49678747209357949 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725775 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	rename -uid "12ACE332-4685-C7DD-F35D-DBA99C9CF140";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
	rename -uid "D8DC1A48-44E7-E3BF-5C81-8B9FCA8F5D7F";
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
	rename -uid "2561D826-4D1E-EF3C-F49A-3C9D541DF405";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-014 -0.34547277013915589 -0.37260003933978858 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854064e-014 -3.547855311641262e-014 1.9139612476515764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_heelShape" -p "footBack_R0_heel";
	rename -uid "83448F81-46BC-9B47-BF16-F3A3D89DE68E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_heel1Shape" -p "footBack_R0_heel";
	rename -uid "5EBC6FA8-47F9-6240-4406-1F93E0AB17D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_heel2Shape" -p "footBack_R0_heel";
	rename -uid "8B658745-43B5-4700-96D7-C7A2F908AD8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_heel3Shape" -p "footBack_R0_heel";
	rename -uid "0407FC00-4FBF-A4D7-8B2F-6FA937461048";
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
createNode nurbsCurve -n "footBack_R0_heel3_0crvShape" -p "footBack_R0_heel";
	rename -uid "8EBD025E-4B26-FB37-4887-73A613B6405F";
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
createNode nurbsCurve -n "footBack_R0_heel3_1crvShape" -p "footBack_R0_heel";
	rename -uid "D87D9277-4F6A-4245-7DFB-A8B20F78FE3A";
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
	rename -uid "D454DD5E-4D88-005C-2D56-6FBD2E6F9FC0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139833 -0.34547277013915556 0.11497296198778706 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854064e-014 -3.547855311641262e-014 1.9139612476515764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_outpivotShape" -p "footBack_R0_outpivot";
	rename -uid "8A089E85-436D-9629-DD7D-EDB5E61600F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_outpivot1Shape" -p "footBack_R0_outpivot";
	rename -uid "18FE8200-4D74-4499-A98F-4CAF3450BA4F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_outpivot2Shape" -p "footBack_R0_outpivot";
	rename -uid "E4E483D4-4A90-F962-C4FC-30919FE55FB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_outpivot3Shape" -p "footBack_R0_outpivot";
	rename -uid "CE79DF13-4869-304A-E183-6AB19D56DEC3";
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
createNode nurbsCurve -n "footBack_R0_outpivot3_0crvShape" -p "footBack_R0_outpivot";
	rename -uid "723A03F1-42BB-8730-A84B-A28400D50DE1";
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
createNode nurbsCurve -n "footBack_R0_outpivot3_1crvShape" -p "footBack_R0_outpivot";
	rename -uid "0FCBB037-4602-F6A1-1AAB-C3BE3BC50EAF";
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
	rename -uid "11AB9B76-4ACB-D79D-C942-5A82C623E9F3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215654 -0.345472770139156 0.21228136011731813 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854064e-014 -3.547855311641262e-014 1.9139612476515764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_inpivotShape" -p "footBack_R0_inpivot";
	rename -uid "E246AB36-4278-013C-3E33-8BAB9DE472FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_inpivot1Shape" -p "footBack_R0_inpivot";
	rename -uid "86043918-4877-4B99-A6D8-6F9DB51AEEE4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_inpivot2Shape" -p "footBack_R0_inpivot";
	rename -uid "FD2FCDDC-4FCE-C198-270F-308A16F1E40A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_inpivot3Shape" -p "footBack_R0_inpivot";
	rename -uid "E385086E-4576-9230-0942-A38DA6934BDD";
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
createNode nurbsCurve -n "footBack_R0_inpivot3_0crvShape" -p "footBack_R0_inpivot";
	rename -uid "1900C168-4F3E-614A-4B6B-24BC3893DAD5";
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
createNode nurbsCurve -n "footBack_R0_inpivot3_1crvShape" -p "footBack_R0_inpivot";
	rename -uid "F77E3359-47D9-0608-EB58-A18AA9B2FF92";
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
	rename -uid "70770638-4477-126C-8F8E-86877C9AB7C9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718953 -0.49678747209357949 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725775 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	rename -uid "3E19A61F-4024-FA62-A479-6BAF55C22070";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig1" -p "footBack_R0_1";
	rename -uid "419F6FAE-4369-49CD-B451-1499D77D3257";
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
	rename -uid "67ADA14B-46BF-4F39-D7F2-AA94ABB36BF8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
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
	setAttr ".t" -type "double3" 7.9148715870389807 6.0337539388988564 -0.9201692139029678 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854065e-014 -3.5478553116412632e-014 1.913961247651576e-014 ;
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
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "backLegUI_R0_rootShape" -p "backLegUI_R0_root";
	rename -uid "BAACC713-4E62-89FD-B3BB-FEB8B57F15F9";
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
createNode nurbsCurve -n "backLegUI_R0_root1Shape" -p "backLegUI_R0_root";
	rename -uid "76B16953-49AB-57AF-842F-3E944FE052BD";
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
createNode nurbsCurve -n "backLegUI_R0_root2Shape" -p "backLegUI_R0_root";
	rename -uid "1EF22DF8-41D1-DDBE-0D37-43B8DD60D378";
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
createNode nurbsCurve -n "backLegUI_R0_root3Shape" -p "backLegUI_R0_root";
	rename -uid "03A90177-4865-F2E7-76C6-7D834395A746";
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
	rename -uid "45EF91FB-4216-0CD6-BBF7-F3AA7C0438C7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807546 -3.2803056907023964 1.8090460715460541 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.4137227438343878 -1.413722743834388 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	rename -uid "48D58C42-4725-8622-A877-EDB7FE635881";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig1" -p "legBack_R0_crv1";
	rename -uid "F663CD4B-4AE2-9DD4-11C7-F39B746675FA";
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
	rename -uid "E970AD32-477B-4544-465E-9A991671BBBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	rename -uid "1BC2D05E-41C9-483B-E0BD-B7A93F9D324F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "neck_C0_root_st_profile1";
	rename -uid "A4F41E1C-44C7-22BC-CB8C-71BFC36B63BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	rename -uid "61662EB3-4B8C-92E4-591E-61B1DFC98412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns83";
	rename -uid "13C56BC5-42F8-CA4B-7C79-DAB583057659";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns83Set";
	rename -uid "0CE2DAB1-403D-70DB-3F9B-799210ADE3AA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns83GroupId";
	rename -uid "7255F44B-4649-D807-145F-158931DF5185";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns83GroupParts";
	rename -uid "9ABC2F70-45E1-1943-E69A-BC86A45D603D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak83";
	rename -uid "65BCCC42-4B24-9580-3B66-9AB043A1F96C";
createNode objectSet -n "tweakSet83";
	rename -uid "2D90EC5F-43D7-7AEF-57DD-A29A730D46A1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId166";
	rename -uid "85A67C63-4494-F887-659A-2B9FA6D99021";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts166";
	rename -uid "2A01E216-445D-6E72-9C47-5F89400BCD23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns84";
	rename -uid "871CE754-4F13-614D-C173-019873F5DC61";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns84Set";
	rename -uid "42381B9F-49C8-D27C-5E47-4E89ED420233";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns84GroupId";
	rename -uid "03415B37-4524-F592-733A-7E866750CFC2";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns84GroupParts";
	rename -uid "C7DFA308-41D1-FD37-3BBD-1694C1693297";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak84";
	rename -uid "BA9DEF3F-43A9-CDDE-FBE0-7E907B91DE84";
createNode objectSet -n "tweakSet84";
	rename -uid "012FEF53-4CA7-7C51-F00F-A08C76B88934";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId168";
	rename -uid "5FB86403-424B-0FDE-881E-7991682F3063";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts168";
	rename -uid "BBC4754A-4264-3F7A-8AA9-B786E5669B3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns82";
	rename -uid "72B0B2A4-4BA5-D1A5-D2B9-DA8CA9586C99";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns82Set";
	rename -uid "02D72EEA-43B0-1714-7CB6-3099BD1BC72B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns82GroupId";
	rename -uid "DF89D1FD-45F2-F116-3010-D99476E6B2ED";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns82GroupParts";
	rename -uid "4F63ED71-4520-9F32-DC2B-2FBD7A904DDB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak82";
	rename -uid "5ACC10A8-4CE6-8470-C745-E0BFBFF66D41";
createNode objectSet -n "tweakSet82";
	rename -uid "960C2D2E-42AE-72BE-2962-5088755EA3E5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId164";
	rename -uid "BB54F31F-4E97-1A7D-4189-B39F9D228C43";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts164";
	rename -uid "5EE66287-4525-AEC2-CF07-D4B77091E0BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns85";
	rename -uid "D7A1A949-4CA1-C8F6-CC17-A48E0C0B7188";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns85Set";
	rename -uid "EE27C2DD-4BF8-5B10-9D47-D18A4A488520";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns85GroupId";
	rename -uid "E6771BBB-4B32-E968-F1D7-C6B95AD462E9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns85GroupParts";
	rename -uid "478523D4-4372-879C-E445-17B9D5ECE5C6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak85";
	rename -uid "B0455611-4C03-AFCE-AB7A-BEA3164FA95F";
createNode objectSet -n "tweakSet85";
	rename -uid "83058326-47BC-38B0-EA9F-658276BA011C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId170";
	rename -uid "51FD8F8A-40F0-4D0C-01CE-399E7F3C6E16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts170";
	rename -uid "36ECC8E8-4D45-54D5-5CC9-209CA280AB1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns87";
	rename -uid "110AB2C2-4C08-7126-A878-2F908246C0B2";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns87Set";
	rename -uid "8B36F1F8-4854-9F2A-3B76-0BA5722B2A28";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns87GroupId";
	rename -uid "7594196B-4DC8-D0A0-2765-21B9B3668791";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns87GroupParts";
	rename -uid "C7411B43-4E49-3E00-7355-37A52C0A04CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak87";
	rename -uid "D20448BD-4D6A-7A2C-FC1F-02A4B5C24B75";
createNode objectSet -n "tweakSet87";
	rename -uid "902690A3-48AB-6C20-2E8D-04AE19AC93DF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId174";
	rename -uid "612A4090-4B40-B056-4040-B98D26C56DEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts174";
	rename -uid "DB58AE95-4887-726A-81A9-87A466E80D7C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns109";
	rename -uid "E74EB755-489A-3FC4-4FFA-5B813ECD4BFC";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns109Set";
	rename -uid "99368648-437A-AE8E-D53E-2B991DDA891B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns109GroupId";
	rename -uid "B8C6E479-4C9B-58E7-BDB7-59B2EAFD2358";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns109GroupParts";
	rename -uid "8B17DBF6-45C2-BA3C-332E-C8A39C6D6AF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak109";
	rename -uid "C0F8506A-4828-CFCF-6204-2E8377DD51F7";
createNode objectSet -n "tweakSet109";
	rename -uid "DDB1CC6B-466B-5337-9D62-8E9594DB4C9A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId218";
	rename -uid "463C5D99-4A67-7A8F-9ACC-14AA70335755";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts218";
	rename -uid "E2BB6A9D-46F8-6DC3-46E9-99A4CB0B8F53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns81";
	rename -uid "BEFBAEF4-4479-3753-6C79-F5836A114BE3";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns81Set";
	rename -uid "CD6712D9-4624-AA5B-40EE-278CFF70C9B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns81GroupId";
	rename -uid "6999418A-4F8A-9F9D-F562-2FA07019B165";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns81GroupParts";
	rename -uid "F955E557-4453-3DD4-EBDE-E7B2C25F281F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak81";
	rename -uid "22019322-4EEA-5BBF-209B-9C9B8E2892DD";
createNode objectSet -n "tweakSet81";
	rename -uid "7DFA3F4A-4F97-AD17-6F13-1F813F185839";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId162";
	rename -uid "0A95A5DA-4FAB-EAA1-2F78-87ACAAB8325C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts162";
	rename -uid "97038CCB-4EA4-91FC-444A-AB8A99248AA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion16";
	rename -uid "6F3A9814-478B-F225-59CA-C5B43E0354C8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns80";
	rename -uid "2FF568BE-4955-E513-D311-4AB391FDA3A5";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns80Set";
	rename -uid "5CFC8A41-4180-E106-305F-01976825993E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns80GroupId";
	rename -uid "584F71A3-4784-9CAE-ACCD-DAADC64AC843";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns80GroupParts";
	rename -uid "740CE336-4553-D481-3C82-75A09A8AC286";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak80";
	rename -uid "A679D15D-49F8-B807-1209-D09039C982E7";
createNode objectSet -n "tweakSet80";
	rename -uid "E88FD50D-4B86-4335-5247-7FB2E68B2E48";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId160";
	rename -uid "8196A168-4C84-470F-1644-AAB3BD56B924";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts160";
	rename -uid "3904A6A4-4737-C6BC-7981-78817958A27C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile1";
	rename -uid "B49E3480-44C3-D093-E11E-7B9ED1C05B27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile1";
	rename -uid "2D3E10B3-4CB6-5BD3-7F54-C787E5114B44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns94";
	rename -uid "D0C33851-4FF6-5D0B-0005-248DEF38AC2B";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns94Set";
	rename -uid "649E8475-4475-A167-82FE-A5B81544CE8B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns94GroupId";
	rename -uid "585960BF-4CD0-7D4B-E672-CD8EC76F1E68";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns94GroupParts";
	rename -uid "55EE7285-46B4-DF2E-8785-2C938F125C63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak94";
	rename -uid "C38F69F6-49E0-1E53-0E98-64AE92492E54";
createNode objectSet -n "tweakSet94";
	rename -uid "EAD0F32F-42FF-9401-7E4F-02A8DF849D17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId188";
	rename -uid "381A77EB-4538-AA10-2B23-6C8B12E751AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts188";
	rename -uid "73547FF6-4B20-9FC2-3C7F-17AFA05EA9C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns95";
	rename -uid "3E5E72E6-4992-4E5F-89BD-EDB1B9B12CF9";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns95Set";
	rename -uid "66023544-4C5B-FB10-6B55-CABA258250AC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns95GroupId";
	rename -uid "D8AEB340-4B62-91AF-2796-AEB3829F01F6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns95GroupParts";
	rename -uid "A454FBCE-4583-1684-3404-A8963E53A1EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak95";
	rename -uid "D6EAD2DA-4024-1E47-CFC8-F19203C6ED24";
createNode objectSet -n "tweakSet95";
	rename -uid "1487DAC7-4C1C-DAF6-0903-76848C9396F8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId190";
	rename -uid "C23F8237-4AA1-BD68-8547-9CBE1A5A25D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts190";
	rename -uid "EB238C2D-48F8-753C-E4EA-68A6E5106C9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns93";
	rename -uid "EE1F2A85-427F-8B7E-7B65-17931B2561E8";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns93Set";
	rename -uid "81E891F7-4BF0-525B-4613-579D22B1AE1B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns93GroupId";
	rename -uid "AADF6239-4D3A-4D2A-A264-F1B5700D6DE3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns93GroupParts";
	rename -uid "47868319-4422-79A8-9A1A-C0800051B11C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak93";
	rename -uid "25874F3D-4E33-8921-E2C9-F49C1F6F2478";
createNode objectSet -n "tweakSet93";
	rename -uid "790F350B-459A-40F5-0700-A39ED7A9B855";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId186";
	rename -uid "EB8D4928-4CFE-B8DF-E02F-48986578A8DA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts186";
	rename -uid "47D9B30F-448C-884A-1CAE-4D93223B951B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion18";
	rename -uid "4FF20AEB-413E-1BE1-C57D-DB85D43EC925";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns92";
	rename -uid "27AD6A76-4DFF-D935-0F23-DFAF52AD80FF";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns92Set";
	rename -uid "03D4EC76-4079-61D1-4CE6-899F93672470";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns92GroupId";
	rename -uid "24AAFF14-4F4B-8D06-24F3-2D8B88369700";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns92GroupParts";
	rename -uid "26D8ED4E-4396-46A5-AD10-C3AD3CA590FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak92";
	rename -uid "C1AA2C4E-4243-D65F-50A8-08B80D71ECB3";
createNode objectSet -n "tweakSet92";
	rename -uid "315F252F-4676-D227-5FBC-438626A4D0C8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId184";
	rename -uid "0E1C3DAB-402A-7EE8-E71F-F9BD4B3BB89C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts184";
	rename -uid "2D630B1C-479D-5430-3760-5DAA23BE85E9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile";
	rename -uid "6F786C73-47A1-A6B3-DFD7-948CB0ABAF04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile";
	rename -uid "DD97BCC3-4ADA-CB30-EDCC-9DB086E859C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns104";
	rename -uid "F2C45F44-4376-9E25-6115-B39EEECAFBCB";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns104Set";
	rename -uid "041FCA88-47C1-B7DD-ED5E-6581BD9F7D50";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns104GroupId";
	rename -uid "A5182892-4388-C854-D6F4-978BF099C1C5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns104GroupParts";
	rename -uid "2F4B9E3D-456E-0A2F-1629-D488A80F897C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak104";
	rename -uid "203A365C-438D-A9C4-8E9D-0A9E24B78CB3";
createNode objectSet -n "tweakSet104";
	rename -uid "47E14D87-4330-6FE4-ED57-0D98F8A1B9B8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId208";
	rename -uid "4B68A931-453A-2175-8E71-E2A23F0D105E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts208";
	rename -uid "08C26584-4A58-8AA0-A7CF-CA89C61BCEE3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns105";
	rename -uid "E38A930F-47A4-AD5D-B467-C2BF9533C1EA";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns105Set";
	rename -uid "797821DE-4AB5-A8A1-07AF-81ABEA908EC1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns105GroupId";
	rename -uid "1537EB0F-48C6-6D3A-B4EA-F099187E5019";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns105GroupParts";
	rename -uid "BF25282C-4BCB-3468-A75C-F8A07C51452E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak105";
	rename -uid "711BE604-49D1-EDF8-BB3F-50A8FDC772CE";
createNode objectSet -n "tweakSet105";
	rename -uid "9B01BB68-450B-EA82-9EDD-22AF5725CC2F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId210";
	rename -uid "E8939DA7-4B6E-1F0B-4CD3-B1BB70090B42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts210";
	rename -uid "3415E7E9-4B87-E223-5582-148247D2F866";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns103";
	rename -uid "21972433-43E4-5920-10AE-A0BBD4524536";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns103Set";
	rename -uid "08B2AB61-479F-29EF-B3BB-1A9C935FE64A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns103GroupId";
	rename -uid "AB8264F6-4030-6C82-B8D2-37B0F39602A6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns103GroupParts";
	rename -uid "24DFA064-4FA7-3625-9606-A99101828761";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak103";
	rename -uid "79FAFAE7-4BD6-9DB0-B7AA-BB88C3544251";
createNode objectSet -n "tweakSet103";
	rename -uid "0BB191CC-4028-864C-AD2F-81AAAE8B29C4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId206";
	rename -uid "E928823D-4746-D6CF-D1B6-B789B6E74922";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts206";
	rename -uid "DB619CFE-44B2-FB92-6E79-FAA73F0DD035";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion19";
	rename -uid "F5328E1F-4946-F9B4-979B-F7BCDF365B98";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns102";
	rename -uid "F41F9663-4AA8-75C9-8AF0-B69FD78C161E";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns102Set";
	rename -uid "7573B281-4797-FE8E-FE54-8D8CD90301B1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns102GroupId";
	rename -uid "EC13B921-4155-5FDE-ED8C-218DFCA7BA3B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns102GroupParts";
	rename -uid "1C36850A-4D88-4AE4-27D3-92B8BE1CCD17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak102";
	rename -uid "B191006A-4075-6B09-15A8-20A57219524F";
createNode objectSet -n "tweakSet102";
	rename -uid "25177CC1-41D3-810E-8A25-35B9E906E63E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId204";
	rename -uid "D150E0CE-4C06-8A41-DBFF-65902732BC9D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts204";
	rename -uid "10F95B8B-4E1F-A778-65FD-5DB9AE3EEEC1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion15";
	rename -uid "544992FA-47E2-AD50-A2C4-6EB1F60762A1";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns79";
	rename -uid "B44D4A80-4110-5467-EC96-EB8EF6403A85";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns79Set";
	rename -uid "5D230570-4A56-D340-9AF6-F099CD856A3A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns79GroupId";
	rename -uid "A28F1F6C-464F-C915-711E-44828269B8F0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns79GroupParts";
	rename -uid "0959BAB7-4A7C-7719-2E27-B1B46DB25BBC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak79";
	rename -uid "5D8EA593-4F65-F51A-AC4A-DFB13E7E71A7";
createNode objectSet -n "tweakSet79";
	rename -uid "D2BE2C0F-41FA-B827-B94B-62804BE8EC27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId158";
	rename -uid "4BFEF978-475F-45A4-6806-82876723147E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts158";
	rename -uid "5E7F7839-489E-64FF-4A8B-97B39044696A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile1";
	rename -uid "D195C89D-4D83-EC54-78E8-E496AF0BCA3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile1";
	rename -uid "01C58957-4211-0553-C0D7-668701FE2AF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns100";
	rename -uid "6D38FADB-4E09-86E3-4556-5E8856B33F27";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns100Set";
	rename -uid "0ED3058D-4B12-3E1A-95FA-C980E189F8CA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns100GroupId";
	rename -uid "51294E17-40A6-EE57-574F-819CF5801D2B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns100GroupParts";
	rename -uid "F73A52B3-4953-705A-F8F1-0B9BBAB67C62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak100";
	rename -uid "F330B357-46CC-87CB-1618-E3B97118EDF0";
createNode objectSet -n "tweakSet100";
	rename -uid "4EBBE53B-444C-3AF9-0C82-DC9B98ACCC87";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId200";
	rename -uid "17738129-4483-376C-8F56-8486B34627D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts200";
	rename -uid "974CDDC8-4D22-35D7-A8E4-48A2F2905635";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns101";
	rename -uid "E2C64007-4709-4371-564B-23BC29A1053B";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns101Set";
	rename -uid "8450D2BD-43E6-FE28-B7C4-169AA6DA3B3B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns101GroupId";
	rename -uid "561973DD-4F0A-298D-0735-B7ACF6D7BAA6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns101GroupParts";
	rename -uid "2A5FC6EA-4A02-33C8-12A0-02A675D02F88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak101";
	rename -uid "4D8E62E0-4633-B118-1568-BA9B1FC91416";
createNode objectSet -n "tweakSet101";
	rename -uid "0A197E4A-4A0C-AE75-850F-308628C8204F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId202";
	rename -uid "83B24C1E-404D-F39E-CFD8-62B122E6411F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts202";
	rename -uid "1F53000F-4395-AC9E-62F8-DCAFA5618DD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns99";
	rename -uid "AE634FDA-4917-1D5C-218F-C6A6C08F0BE7";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns99Set";
	rename -uid "BC2C0B7F-434B-0907-863D-9D897B53E23F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns99GroupId";
	rename -uid "B2DDC316-4B50-5DA2-53CC-92AC15DD5A57";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns99GroupParts";
	rename -uid "A867CACD-421F-6196-66D8-3D9EC89FB624";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak99";
	rename -uid "A1093F85-4FF0-506B-6002-EA8372C95E0F";
createNode objectSet -n "tweakSet99";
	rename -uid "1A338DC6-4853-1F40-992A-D5B8454DEB51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId198";
	rename -uid "5AB142FE-45C7-03CF-8DF0-D98AFFCA4E82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts198";
	rename -uid "FC669707-4376-F65B-050C-4E9D5C012E10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile";
	rename -uid "D59F589D-4463-8BEC-D559-65873B5D16C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile";
	rename -uid "BC3E6904-4266-9945-B883-F98393D5CA17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns107";
	rename -uid "574CB096-4173-091E-BAC3-BE8F260F3BF8";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns107Set";
	rename -uid "75C65A3C-4F25-2E7C-7D0E-62BB9EE594A8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns107GroupId";
	rename -uid "5F17AB88-4C9E-6B6C-F2D2-1AAFDEEE1180";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns107GroupParts";
	rename -uid "389D6E44-48CA-DDF1-7C32-0D8EAD4B3974";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak107";
	rename -uid "ECCFE941-437A-942A-FA80-3F99F4E047D4";
createNode objectSet -n "tweakSet107";
	rename -uid "3D605FFD-4194-B698-DAF6-6A9AA8B92326";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId214";
	rename -uid "A8252A85-487B-FE00-75CB-0EBB816EA1C5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts214";
	rename -uid "A70DB318-4018-E0D9-EC5B-BAB990ACCDC6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns108";
	rename -uid "9E59F8E1-46F8-BFBF-F4E4-6EB1E7ED309E";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns108Set";
	rename -uid "91CA208E-478F-3F2B-966F-3280A71A3404";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns108GroupId";
	rename -uid "087160C4-412C-5C4C-7B25-D199D80AB30B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns108GroupParts";
	rename -uid "131A414C-4599-F75F-5970-43A0516F7B42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak108";
	rename -uid "13897BF9-4D7A-CD66-E51E-70A1F97BE83D";
createNode objectSet -n "tweakSet108";
	rename -uid "3DE58E3C-4FD8-2410-E090-61B387924759";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId216";
	rename -uid "710653FB-46C4-01E3-D7A5-159EE27BC46A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts216";
	rename -uid "1A3FF0F1-4FD9-EE40-B14F-0EB2E9CEC64B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns106";
	rename -uid "87827EBC-450A-DF12-E962-EBBF503BB42F";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns106Set";
	rename -uid "0647369B-429E-4C9F-54D0-5EA6126FD4D8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns106GroupId";
	rename -uid "BA67B29B-446A-2313-AC52-D1A176AAC96E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns106GroupParts";
	rename -uid "F453F0DC-4BED-A7AE-02FA-47924701E0FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak106";
	rename -uid "1C1F4139-4231-2476-6C3B-908196790B50";
createNode objectSet -n "tweakSet106";
	rename -uid "FB23A82E-42DD-8BD4-1FA8-6DAECCBF453C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId212";
	rename -uid "A6FD7714-4F61-2888-249B-E4A58498A34A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts212";
	rename -uid "834C042F-48FB-8183-9565-EABC3B1B88E8";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "spine_C0_root_st_profile1.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile1.o" "spine_C0_root.sq_profile";
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns83.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak83.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns83GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns83Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId166.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet83.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns84.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak84.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns84GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns84Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId168.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet84.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns82.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak82.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns82GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns82Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId164.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet82.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns85.og[0]" "mouth_C0_crv4Shape.cr";
connectAttr "tweak85.pl[0].cp[0]" "mouth_C0_crv4Shape.twl";
connectAttr "mgear_curveCns85GroupId.id" "mouth_C0_crv4Shape.iog.og[0].gid";
connectAttr "mgear_curveCns85Set.mwc" "mouth_C0_crv4Shape.iog.og[0].gco";
connectAttr "groupId170.id" "mouth_C0_crv4Shape.iog.og[1].gid";
connectAttr "tweakSet85.mwc" "mouth_C0_crv4Shape.iog.og[1].gco";
connectAttr "mgear_curveCns87.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak87.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns87GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns87Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId174.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet87.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns109.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak109.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns109GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns109Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId218.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet109.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns81.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak81.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns81GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns81Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId162.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet81.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint4.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint4.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint4.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint4.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint4.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint4.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint4.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint4.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint4.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint4.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint4.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint4.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint4.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint4.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint4.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint4.w0" "neck_C0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint4.wum";
connectAttr "unitConversion16.o" "neck_C0_blade_aimConstraint4.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint4.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint4.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint4.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint4.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint4.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint4.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint4.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint4.w0" "neck_C0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns80.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak80.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns80GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns80Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId160.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet80.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "legFront_L0_root_st_profile1.o" "legFront_L0_root.st_profile";
connectAttr "legFront_L0_root_sq_profile1.o" "legFront_L0_root.sq_profile";
connectAttr "mgear_curveCns94.og[0]" "footFront_L0_crvShape.cr";
connectAttr "tweak94.pl[0].cp[0]" "footFront_L0_crvShape.twl";
connectAttr "mgear_curveCns94GroupId.id" "footFront_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns94Set.mwc" "footFront_L0_crvShape.iog.og[0].gco";
connectAttr "groupId188.id" "footFront_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet94.mwc" "footFront_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns95.og[0]" "footFront_L0_Shape1.cr";
connectAttr "tweak95.pl[0].cp[0]" "footFront_L0_Shape1.twl";
connectAttr "mgear_curveCns95GroupId.id" "footFront_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns95Set.mwc" "footFront_L0_Shape1.iog.og[0].gco";
connectAttr "groupId190.id" "footFront_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet95.mwc" "footFront_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns93.og[0]" "legFront_L0_crvShape1.cr";
connectAttr "tweak93.pl[0].cp[0]" "legFront_L0_crvShape1.twl";
connectAttr "mgear_curveCns93GroupId.id" "legFront_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns93Set.mwc" "legFront_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId186.id" "legFront_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet93.mwc" "legFront_L0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint4.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint4.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint4.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint4.crx" "shoulder_L0_blade.rx" -l on;
connectAttr "shoulder_L0_blade_aimConstraint4.cry" "shoulder_L0_blade.ry" -l on;
connectAttr "shoulder_L0_blade_aimConstraint4.crz" "shoulder_L0_blade.rz" -l on;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint4.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint4.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint4.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint4.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint4.cro";
connectAttr "shoulder_L0_0_loc.t" "shoulder_L0_blade_aimConstraint4.tg[0].tt";
connectAttr "shoulder_L0_0_loc.rp" "shoulder_L0_blade_aimConstraint4.tg[0].trp";
connectAttr "shoulder_L0_0_loc.rpt" "shoulder_L0_blade_aimConstraint4.tg[0].trt"
		;
connectAttr "shoulder_L0_0_loc.pm" "shoulder_L0_blade_aimConstraint4.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint4.w0" "shoulder_L0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint4.wum";
connectAttr "unitConversion18.o" "shoulder_L0_blade_aimConstraint4.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint4.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint4.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint4.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint4.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint4.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint4.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint4.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint4.w0" "shoulder_L0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns92.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak92.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns92GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns92Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId184.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet92.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "legFront_R0_root_st_profile.o" "legFront_R0_root.st_profile";
connectAttr "legFront_R0_root_sq_profile.o" "legFront_R0_root.sq_profile";
connectAttr "mgear_curveCns104.og[0]" "footFront_R0_crvShape.cr";
connectAttr "tweak104.pl[0].cp[0]" "footFront_R0_crvShape.twl";
connectAttr "mgear_curveCns104GroupId.id" "footFront_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns104Set.mwc" "footFront_R0_crvShape.iog.og[0].gco";
connectAttr "groupId208.id" "footFront_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet104.mwc" "footFront_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns105.og[0]" "footFront_R0_Shape1.cr";
connectAttr "tweak105.pl[0].cp[0]" "footFront_R0_Shape1.twl";
connectAttr "mgear_curveCns105GroupId.id" "footFront_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns105Set.mwc" "footFront_R0_Shape1.iog.og[0].gco";
connectAttr "groupId210.id" "footFront_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet105.mwc" "footFront_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns103.og[0]" "legFront_R0_crvShape1.cr";
connectAttr "tweak103.pl[0].cp[0]" "legFront_R0_crvShape1.twl";
connectAttr "mgear_curveCns103GroupId.id" "legFront_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns103Set.mwc" "legFront_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId206.id" "legFront_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet103.mwc" "legFront_R0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_R0_blade_pointConstraint1.ctx" "shoulder_R0_blade.tx" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint1.cty" "shoulder_R0_blade.ty" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint1.ctz" "shoulder_R0_blade.tz" -l on
		;
connectAttr "shoulder_R0_blade_aimConstraint1.crx" "shoulder_R0_blade.rx" -l on;
connectAttr "shoulder_R0_blade_aimConstraint1.cry" "shoulder_R0_blade.ry" -l on;
connectAttr "shoulder_R0_blade_aimConstraint1.crz" "shoulder_R0_blade.rz" -l on;
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_aimConstraint1.cpim";
connectAttr "shoulder_R0_blade.t" "shoulder_R0_blade_aimConstraint1.ct";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_aimConstraint1.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_aimConstraint1.crt";
connectAttr "shoulder_R0_blade.ro" "shoulder_R0_blade_aimConstraint1.cro";
connectAttr "shoulder_R0_0_loc.t" "shoulder_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "shoulder_R0_0_loc.rp" "shoulder_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "shoulder_R0_0_loc.rpt" "shoulder_R0_blade_aimConstraint1.tg[0].trt"
		;
connectAttr "shoulder_R0_0_loc.pm" "shoulder_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint1.w0" "shoulder_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion19.o" "shoulder_R0_blade_aimConstraint1.ox";
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_pointConstraint1.cpim";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_pointConstraint1.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_pointConstraint1.crt";
connectAttr "shoulder_R0_root.t" "shoulder_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "shoulder_R0_root.rp" "shoulder_R0_blade_pointConstraint1.tg[0].trp"
		;
connectAttr "shoulder_R0_root.rpt" "shoulder_R0_blade_pointConstraint1.tg[0].trt"
		;
connectAttr "shoulder_R0_root.pm" "shoulder_R0_blade_pointConstraint1.tg[0].tpm"
		;
connectAttr "shoulder_R0_blade_pointConstraint1.w0" "shoulder_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns102.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak102.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns102GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns102Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId204.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet102.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint4.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint4.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint4.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint4.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint4.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint4.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint4.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint4.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint4.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint4.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint4.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint4.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint4.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint4.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint4.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint4.w0" "spine_C0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint4.wum";
connectAttr "unitConversion15.o" "spine_C0_blade_aimConstraint4.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint4.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint4.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint4.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint4.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint4.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint4.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint4.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint4.w0" "spine_C0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns79.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak79.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns79GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns79Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId158.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet79.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "legBack_L0_root_st_profile1.o" "legBack_L0_root.st_profile";
connectAttr "legBack_L0_root_sq_profile1.o" "legBack_L0_root.sq_profile";
connectAttr "mgear_curveCns100.og[0]" "footBack_L0_crvShape.cr";
connectAttr "tweak100.pl[0].cp[0]" "footBack_L0_crvShape.twl";
connectAttr "mgear_curveCns100GroupId.id" "footBack_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns100Set.mwc" "footBack_L0_crvShape.iog.og[0].gco";
connectAttr "groupId200.id" "footBack_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet100.mwc" "footBack_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns101.og[0]" "footBack_L0_Shape1.cr";
connectAttr "tweak101.pl[0].cp[0]" "footBack_L0_Shape1.twl";
connectAttr "mgear_curveCns101GroupId.id" "footBack_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns101Set.mwc" "footBack_L0_Shape1.iog.og[0].gco";
connectAttr "groupId202.id" "footBack_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet101.mwc" "footBack_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns99.og[0]" "legBack_L0_crvShape1.cr";
connectAttr "tweak99.pl[0].cp[0]" "legBack_L0_crvShape1.twl";
connectAttr "mgear_curveCns99GroupId.id" "legBack_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns99Set.mwc" "legBack_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId198.id" "legBack_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet99.mwc" "legBack_L0_crvShape1.iog.og[1].gco";
connectAttr "legBack_R0_root_st_profile.o" "legBack_R0_root.st_profile";
connectAttr "legBack_R0_root_sq_profile.o" "legBack_R0_root.sq_profile";
connectAttr "mgear_curveCns107.og[0]" "footBack_R0_crvShape.cr";
connectAttr "tweak107.pl[0].cp[0]" "footBack_R0_crvShape.twl";
connectAttr "mgear_curveCns107GroupId.id" "footBack_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns107Set.mwc" "footBack_R0_crvShape.iog.og[0].gco";
connectAttr "groupId214.id" "footBack_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet107.mwc" "footBack_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns108.og[0]" "footBack_R0_Shape1.cr";
connectAttr "tweak108.pl[0].cp[0]" "footBack_R0_Shape1.twl";
connectAttr "mgear_curveCns108GroupId.id" "footBack_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns108Set.mwc" "footBack_R0_Shape1.iog.og[0].gco";
connectAttr "groupId216.id" "footBack_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet108.mwc" "footBack_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns106.og[0]" "legBack_R0_crvShape1.cr";
connectAttr "tweak106.pl[0].cp[0]" "legBack_R0_crvShape1.twl";
connectAttr "mgear_curveCns106GroupId.id" "legBack_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns106Set.mwc" "legBack_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId212.id" "legBack_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet106.mwc" "legBack_R0_crvShape1.iog.og[1].gco";
connectAttr "mgear_curveCns83GroupParts.og" "mgear_curveCns83.ip[0].ig";
connectAttr "mgear_curveCns83GroupId.id" "mgear_curveCns83.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns83.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns83.inputs[1]";
connectAttr "mgear_curveCns83GroupId.msg" "mgear_curveCns83Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns83Set.dsm"
		 -na;
connectAttr "mgear_curveCns83.msg" "mgear_curveCns83Set.ub[0]";
connectAttr "tweak83.og[0]" "mgear_curveCns83GroupParts.ig";
connectAttr "mgear_curveCns83GroupId.id" "mgear_curveCns83GroupParts.gi";
connectAttr "groupParts166.og" "tweak83.ip[0].ig";
connectAttr "groupId166.id" "tweak83.ip[0].gi";
connectAttr "groupId166.msg" "tweakSet83.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet83.dsm"
		 -na;
connectAttr "tweak83.msg" "tweakSet83.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts166.ig"
		;
connectAttr "groupId166.id" "groupParts166.gi";
connectAttr "mgear_curveCns84GroupParts.og" "mgear_curveCns84.ip[0].ig";
connectAttr "mgear_curveCns84GroupId.id" "mgear_curveCns84.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns84.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns84.inputs[1]";
connectAttr "mgear_curveCns84GroupId.msg" "mgear_curveCns84Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns84Set.dsm"
		 -na;
connectAttr "mgear_curveCns84.msg" "mgear_curveCns84Set.ub[0]";
connectAttr "tweak84.og[0]" "mgear_curveCns84GroupParts.ig";
connectAttr "mgear_curveCns84GroupId.id" "mgear_curveCns84GroupParts.gi";
connectAttr "groupParts168.og" "tweak84.ip[0].ig";
connectAttr "groupId168.id" "tweak84.ip[0].gi";
connectAttr "groupId168.msg" "tweakSet84.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet84.dsm"
		 -na;
connectAttr "tweak84.msg" "tweakSet84.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts168.ig"
		;
connectAttr "groupId168.id" "groupParts168.gi";
connectAttr "mgear_curveCns82GroupParts.og" "mgear_curveCns82.ip[0].ig";
connectAttr "mgear_curveCns82GroupId.id" "mgear_curveCns82.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns82.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns82.inputs[1]";
connectAttr "mgear_curveCns82GroupId.msg" "mgear_curveCns82Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns82Set.dsm"
		 -na;
connectAttr "mgear_curveCns82.msg" "mgear_curveCns82Set.ub[0]";
connectAttr "tweak82.og[0]" "mgear_curveCns82GroupParts.ig";
connectAttr "mgear_curveCns82GroupId.id" "mgear_curveCns82GroupParts.gi";
connectAttr "groupParts164.og" "tweak82.ip[0].ig";
connectAttr "groupId164.id" "tweak82.ip[0].gi";
connectAttr "groupId164.msg" "tweakSet82.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet82.dsm"
		 -na;
connectAttr "tweak82.msg" "tweakSet82.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts164.ig"
		;
connectAttr "groupId164.id" "groupParts164.gi";
connectAttr "mgear_curveCns85GroupParts.og" "mgear_curveCns85.ip[0].ig";
connectAttr "mgear_curveCns85GroupId.id" "mgear_curveCns85.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns85.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns85.inputs[1]";
connectAttr "mgear_curveCns85GroupId.msg" "mgear_curveCns85Set.gn" -na;
connectAttr "mouth_C0_crv4Shape.iog.og[0]" "mgear_curveCns85Set.dsm" -na;
connectAttr "mgear_curveCns85.msg" "mgear_curveCns85Set.ub[0]";
connectAttr "tweak85.og[0]" "mgear_curveCns85GroupParts.ig";
connectAttr "mgear_curveCns85GroupId.id" "mgear_curveCns85GroupParts.gi";
connectAttr "groupParts170.og" "tweak85.ip[0].ig";
connectAttr "groupId170.id" "tweak85.ip[0].gi";
connectAttr "groupId170.msg" "tweakSet85.gn" -na;
connectAttr "mouth_C0_crv4Shape.iog.og[1]" "tweakSet85.dsm" -na;
connectAttr "tweak85.msg" "tweakSet85.ub[0]";
connectAttr "mouth_C0_crv4ShapeOrig.ws" "groupParts170.ig";
connectAttr "groupId170.id" "groupParts170.gi";
connectAttr "mgear_curveCns87GroupParts.og" "mgear_curveCns87.ip[0].ig";
connectAttr "mgear_curveCns87GroupId.id" "mgear_curveCns87.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns87.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns87.inputs[1]";
connectAttr "mgear_curveCns87GroupId.msg" "mgear_curveCns87Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns87Set.dsm" -na;
connectAttr "mgear_curveCns87.msg" "mgear_curveCns87Set.ub[0]";
connectAttr "tweak87.og[0]" "mgear_curveCns87GroupParts.ig";
connectAttr "mgear_curveCns87GroupId.id" "mgear_curveCns87GroupParts.gi";
connectAttr "groupParts174.og" "tweak87.ip[0].ig";
connectAttr "groupId174.id" "tweak87.ip[0].gi";
connectAttr "groupId174.msg" "tweakSet87.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet87.dsm" -na;
connectAttr "tweak87.msg" "tweakSet87.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts174.ig";
connectAttr "groupId174.id" "groupParts174.gi";
connectAttr "mgear_curveCns109GroupParts.og" "mgear_curveCns109.ip[0].ig";
connectAttr "mgear_curveCns109GroupId.id" "mgear_curveCns109.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns109.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns109.inputs[1]";
connectAttr "mgear_curveCns109GroupId.msg" "mgear_curveCns109Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns109Set.dsm" -na;
connectAttr "mgear_curveCns109.msg" "mgear_curveCns109Set.ub[0]";
connectAttr "tweak109.og[0]" "mgear_curveCns109GroupParts.ig";
connectAttr "mgear_curveCns109GroupId.id" "mgear_curveCns109GroupParts.gi";
connectAttr "groupParts218.og" "tweak109.ip[0].ig";
connectAttr "groupId218.id" "tweak109.ip[0].gi";
connectAttr "groupId218.msg" "tweakSet109.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet109.dsm" -na;
connectAttr "tweak109.msg" "tweakSet109.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts218.ig";
connectAttr "groupId218.id" "groupParts218.gi";
connectAttr "mgear_curveCns81GroupParts.og" "mgear_curveCns81.ip[0].ig";
connectAttr "mgear_curveCns81GroupId.id" "mgear_curveCns81.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns81.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns81.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns81.inputs[2]";
connectAttr "mgear_curveCns81GroupId.msg" "mgear_curveCns81Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns81Set.dsm" -na;
connectAttr "mgear_curveCns81.msg" "mgear_curveCns81Set.ub[0]";
connectAttr "tweak81.og[0]" "mgear_curveCns81GroupParts.ig";
connectAttr "mgear_curveCns81GroupId.id" "mgear_curveCns81GroupParts.gi";
connectAttr "groupParts162.og" "tweak81.ip[0].ig";
connectAttr "groupId162.id" "tweak81.ip[0].gi";
connectAttr "groupId162.msg" "tweakSet81.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet81.dsm" -na;
connectAttr "tweak81.msg" "tweakSet81.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts162.ig";
connectAttr "groupId162.id" "groupParts162.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion16.i";
connectAttr "mgear_curveCns80GroupParts.og" "mgear_curveCns80.ip[0].ig";
connectAttr "mgear_curveCns80GroupId.id" "mgear_curveCns80.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns80.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns80.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns80.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns80.inputs[3]";
connectAttr "mgear_curveCns80GroupId.msg" "mgear_curveCns80Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns80Set.dsm" -na;
connectAttr "mgear_curveCns80.msg" "mgear_curveCns80Set.ub[0]";
connectAttr "tweak80.og[0]" "mgear_curveCns80GroupParts.ig";
connectAttr "mgear_curveCns80GroupId.id" "mgear_curveCns80GroupParts.gi";
connectAttr "groupParts160.og" "tweak80.ip[0].ig";
connectAttr "groupId160.id" "tweak80.ip[0].gi";
connectAttr "groupId160.msg" "tweakSet80.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet80.dsm" -na;
connectAttr "tweak80.msg" "tweakSet80.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts160.ig";
connectAttr "groupId160.id" "groupParts160.gi";
connectAttr "mgear_curveCns94GroupParts.og" "mgear_curveCns94.ip[0].ig";
connectAttr "mgear_curveCns94GroupId.id" "mgear_curveCns94.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns94.inputs[0]";
connectAttr "footFront_L0_0_loc.wm" "mgear_curveCns94.inputs[1]";
connectAttr "footFront_L0_1_loc.wm" "mgear_curveCns94.inputs[2]";
connectAttr "mgear_curveCns94GroupId.msg" "mgear_curveCns94Set.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[0]" "mgear_curveCns94Set.dsm" -na;
connectAttr "mgear_curveCns94.msg" "mgear_curveCns94Set.ub[0]";
connectAttr "tweak94.og[0]" "mgear_curveCns94GroupParts.ig";
connectAttr "mgear_curveCns94GroupId.id" "mgear_curveCns94GroupParts.gi";
connectAttr "groupParts188.og" "tweak94.ip[0].ig";
connectAttr "groupId188.id" "tweak94.ip[0].gi";
connectAttr "groupId188.msg" "tweakSet94.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[1]" "tweakSet94.dsm" -na;
connectAttr "tweak94.msg" "tweakSet94.ub[0]";
connectAttr "footFront_L0_crvShapeOrig.ws" "groupParts188.ig";
connectAttr "groupId188.id" "groupParts188.gi";
connectAttr "mgear_curveCns95GroupParts.og" "mgear_curveCns95.ip[0].ig";
connectAttr "mgear_curveCns95GroupId.id" "mgear_curveCns95.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns95.inputs[0]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns95.inputs[1]";
connectAttr "footFront_L0_outpivot.wm" "mgear_curveCns95.inputs[2]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns95.inputs[3]";
connectAttr "footFront_L0_inpivot.wm" "mgear_curveCns95.inputs[4]";
connectAttr "mgear_curveCns95GroupId.msg" "mgear_curveCns95Set.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[0]" "mgear_curveCns95Set.dsm" -na;
connectAttr "mgear_curveCns95.msg" "mgear_curveCns95Set.ub[0]";
connectAttr "tweak95.og[0]" "mgear_curveCns95GroupParts.ig";
connectAttr "mgear_curveCns95GroupId.id" "mgear_curveCns95GroupParts.gi";
connectAttr "groupParts190.og" "tweak95.ip[0].ig";
connectAttr "groupId190.id" "tweak95.ip[0].gi";
connectAttr "groupId190.msg" "tweakSet95.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[1]" "tweakSet95.dsm" -na;
connectAttr "tweak95.msg" "tweakSet95.ub[0]";
connectAttr "footFront_L0_Shape1Orig1.ws" "groupParts190.ig";
connectAttr "groupId190.id" "groupParts190.gi";
connectAttr "mgear_curveCns93GroupParts.og" "mgear_curveCns93.ip[0].ig";
connectAttr "mgear_curveCns93GroupId.id" "mgear_curveCns93.ip[0].gi";
connectAttr "legFront_L0_root.wm" "mgear_curveCns93.inputs[0]";
connectAttr "legFront_L0_knee.wm" "mgear_curveCns93.inputs[1]";
connectAttr "legFront_L0_ankle.wm" "mgear_curveCns93.inputs[2]";
connectAttr "legFront_L0_foot.wm" "mgear_curveCns93.inputs[3]";
connectAttr "legFront_L0_eff.wm" "mgear_curveCns93.inputs[4]";
connectAttr "mgear_curveCns93GroupId.msg" "mgear_curveCns93Set.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[0]" "mgear_curveCns93Set.dsm" -na;
connectAttr "mgear_curveCns93.msg" "mgear_curveCns93Set.ub[0]";
connectAttr "tweak93.og[0]" "mgear_curveCns93GroupParts.ig";
connectAttr "mgear_curveCns93GroupId.id" "mgear_curveCns93GroupParts.gi";
connectAttr "groupParts186.og" "tweak93.ip[0].ig";
connectAttr "groupId186.id" "tweak93.ip[0].gi";
connectAttr "groupId186.msg" "tweakSet93.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[1]" "tweakSet93.dsm" -na;
connectAttr "tweak93.msg" "tweakSet93.ub[0]";
connectAttr "legFront_L0_crvShape1Orig1.ws" "groupParts186.ig";
connectAttr "groupId186.id" "groupParts186.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion18.i";
connectAttr "mgear_curveCns92GroupParts.og" "mgear_curveCns92.ip[0].ig";
connectAttr "mgear_curveCns92GroupId.id" "mgear_curveCns92.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns92.inputs[0]";
connectAttr "shoulder_L0_0_loc.wm" "mgear_curveCns92.inputs[1]";
connectAttr "mgear_curveCns92GroupId.msg" "mgear_curveCns92Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns92Set.dsm" -na;
connectAttr "mgear_curveCns92.msg" "mgear_curveCns92Set.ub[0]";
connectAttr "tweak92.og[0]" "mgear_curveCns92GroupParts.ig";
connectAttr "mgear_curveCns92GroupId.id" "mgear_curveCns92GroupParts.gi";
connectAttr "groupParts184.og" "tweak92.ip[0].ig";
connectAttr "groupId184.id" "tweak92.ip[0].gi";
connectAttr "groupId184.msg" "tweakSet92.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet92.dsm" -na;
connectAttr "tweak92.msg" "tweakSet92.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts184.ig";
connectAttr "groupId184.id" "groupParts184.gi";
connectAttr "mgear_curveCns104GroupParts.og" "mgear_curveCns104.ip[0].ig";
connectAttr "mgear_curveCns104GroupId.id" "mgear_curveCns104.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns104.inputs[0]";
connectAttr "footFront_R0_0_loc.wm" "mgear_curveCns104.inputs[1]";
connectAttr "footFront_R0_1_loc.wm" "mgear_curveCns104.inputs[2]";
connectAttr "mgear_curveCns104GroupId.msg" "mgear_curveCns104Set.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[0]" "mgear_curveCns104Set.dsm" -na;
connectAttr "mgear_curveCns104.msg" "mgear_curveCns104Set.ub[0]";
connectAttr "tweak104.og[0]" "mgear_curveCns104GroupParts.ig";
connectAttr "mgear_curveCns104GroupId.id" "mgear_curveCns104GroupParts.gi";
connectAttr "groupParts208.og" "tweak104.ip[0].ig";
connectAttr "groupId208.id" "tweak104.ip[0].gi";
connectAttr "groupId208.msg" "tweakSet104.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[1]" "tweakSet104.dsm" -na;
connectAttr "tweak104.msg" "tweakSet104.ub[0]";
connectAttr "footFront_R0_crvShapeOrig.ws" "groupParts208.ig";
connectAttr "groupId208.id" "groupParts208.gi";
connectAttr "mgear_curveCns105GroupParts.og" "mgear_curveCns105.ip[0].ig";
connectAttr "mgear_curveCns105GroupId.id" "mgear_curveCns105.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns105.inputs[0]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns105.inputs[1]";
connectAttr "footFront_R0_outpivot.wm" "mgear_curveCns105.inputs[2]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns105.inputs[3]";
connectAttr "footFront_R0_inpivot.wm" "mgear_curveCns105.inputs[4]";
connectAttr "mgear_curveCns105GroupId.msg" "mgear_curveCns105Set.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[0]" "mgear_curveCns105Set.dsm" -na;
connectAttr "mgear_curveCns105.msg" "mgear_curveCns105Set.ub[0]";
connectAttr "tweak105.og[0]" "mgear_curveCns105GroupParts.ig";
connectAttr "mgear_curveCns105GroupId.id" "mgear_curveCns105GroupParts.gi";
connectAttr "groupParts210.og" "tweak105.ip[0].ig";
connectAttr "groupId210.id" "tweak105.ip[0].gi";
connectAttr "groupId210.msg" "tweakSet105.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[1]" "tweakSet105.dsm" -na;
connectAttr "tweak105.msg" "tweakSet105.ub[0]";
connectAttr "footFront_R0_Shape1Orig1.ws" "groupParts210.ig";
connectAttr "groupId210.id" "groupParts210.gi";
connectAttr "mgear_curveCns103GroupParts.og" "mgear_curveCns103.ip[0].ig";
connectAttr "mgear_curveCns103GroupId.id" "mgear_curveCns103.ip[0].gi";
connectAttr "legFront_R0_root.wm" "mgear_curveCns103.inputs[0]";
connectAttr "legFront_R0_knee.wm" "mgear_curveCns103.inputs[1]";
connectAttr "legFront_R0_ankle.wm" "mgear_curveCns103.inputs[2]";
connectAttr "legFront_R0_foot.wm" "mgear_curveCns103.inputs[3]";
connectAttr "legFront_R0_eff.wm" "mgear_curveCns103.inputs[4]";
connectAttr "mgear_curveCns103GroupId.msg" "mgear_curveCns103Set.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[0]" "mgear_curveCns103Set.dsm" -na;
connectAttr "mgear_curveCns103.msg" "mgear_curveCns103Set.ub[0]";
connectAttr "tweak103.og[0]" "mgear_curveCns103GroupParts.ig";
connectAttr "mgear_curveCns103GroupId.id" "mgear_curveCns103GroupParts.gi";
connectAttr "groupParts206.og" "tweak103.ip[0].ig";
connectAttr "groupId206.id" "tweak103.ip[0].gi";
connectAttr "groupId206.msg" "tweakSet103.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[1]" "tweakSet103.dsm" -na;
connectAttr "tweak103.msg" "tweakSet103.ub[0]";
connectAttr "legFront_R0_crvShape1Orig1.ws" "groupParts206.ig";
connectAttr "groupId206.id" "groupParts206.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion19.i";
connectAttr "mgear_curveCns102GroupParts.og" "mgear_curveCns102.ip[0].ig";
connectAttr "mgear_curveCns102GroupId.id" "mgear_curveCns102.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns102.inputs[0]";
connectAttr "shoulder_R0_0_loc.wm" "mgear_curveCns102.inputs[1]";
connectAttr "mgear_curveCns102GroupId.msg" "mgear_curveCns102Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns102Set.dsm" -na;
connectAttr "mgear_curveCns102.msg" "mgear_curveCns102Set.ub[0]";
connectAttr "tweak102.og[0]" "mgear_curveCns102GroupParts.ig";
connectAttr "mgear_curveCns102GroupId.id" "mgear_curveCns102GroupParts.gi";
connectAttr "groupParts204.og" "tweak102.ip[0].ig";
connectAttr "groupId204.id" "tweak102.ip[0].gi";
connectAttr "groupId204.msg" "tweakSet102.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet102.dsm" -na;
connectAttr "tweak102.msg" "tweakSet102.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts204.ig";
connectAttr "groupId204.id" "groupParts204.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion15.i";
connectAttr "mgear_curveCns79GroupParts.og" "mgear_curveCns79.ip[0].ig";
connectAttr "mgear_curveCns79GroupId.id" "mgear_curveCns79.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns79.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns79.inputs[1]";
connectAttr "mgear_curveCns79GroupId.msg" "mgear_curveCns79Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns79Set.dsm" -na;
connectAttr "mgear_curveCns79.msg" "mgear_curveCns79Set.ub[0]";
connectAttr "tweak79.og[0]" "mgear_curveCns79GroupParts.ig";
connectAttr "mgear_curveCns79GroupId.id" "mgear_curveCns79GroupParts.gi";
connectAttr "groupParts158.og" "tweak79.ip[0].ig";
connectAttr "groupId158.id" "tweak79.ip[0].gi";
connectAttr "groupId158.msg" "tweakSet79.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet79.dsm" -na;
connectAttr "tweak79.msg" "tweakSet79.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts158.ig";
connectAttr "groupId158.id" "groupParts158.gi";
connectAttr "mgear_curveCns100GroupParts.og" "mgear_curveCns100.ip[0].ig";
connectAttr "mgear_curveCns100GroupId.id" "mgear_curveCns100.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns100.inputs[0]";
connectAttr "footBack_L0_0_loc.wm" "mgear_curveCns100.inputs[1]";
connectAttr "footBack_L0_1_loc.wm" "mgear_curveCns100.inputs[2]";
connectAttr "mgear_curveCns100GroupId.msg" "mgear_curveCns100Set.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[0]" "mgear_curveCns100Set.dsm" -na;
connectAttr "mgear_curveCns100.msg" "mgear_curveCns100Set.ub[0]";
connectAttr "tweak100.og[0]" "mgear_curveCns100GroupParts.ig";
connectAttr "mgear_curveCns100GroupId.id" "mgear_curveCns100GroupParts.gi";
connectAttr "groupParts200.og" "tweak100.ip[0].ig";
connectAttr "groupId200.id" "tweak100.ip[0].gi";
connectAttr "groupId200.msg" "tweakSet100.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[1]" "tweakSet100.dsm" -na;
connectAttr "tweak100.msg" "tweakSet100.ub[0]";
connectAttr "footBack_L0_crvShapeOrig.ws" "groupParts200.ig";
connectAttr "groupId200.id" "groupParts200.gi";
connectAttr "mgear_curveCns101GroupParts.og" "mgear_curveCns101.ip[0].ig";
connectAttr "mgear_curveCns101GroupId.id" "mgear_curveCns101.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns101.inputs[0]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns101.inputs[1]";
connectAttr "footBack_L0_outpivot.wm" "mgear_curveCns101.inputs[2]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns101.inputs[3]";
connectAttr "footBack_L0_inpivot.wm" "mgear_curveCns101.inputs[4]";
connectAttr "mgear_curveCns101GroupId.msg" "mgear_curveCns101Set.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[0]" "mgear_curveCns101Set.dsm" -na;
connectAttr "mgear_curveCns101.msg" "mgear_curveCns101Set.ub[0]";
connectAttr "tweak101.og[0]" "mgear_curveCns101GroupParts.ig";
connectAttr "mgear_curveCns101GroupId.id" "mgear_curveCns101GroupParts.gi";
connectAttr "groupParts202.og" "tweak101.ip[0].ig";
connectAttr "groupId202.id" "tweak101.ip[0].gi";
connectAttr "groupId202.msg" "tweakSet101.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[1]" "tweakSet101.dsm" -na;
connectAttr "tweak101.msg" "tweakSet101.ub[0]";
connectAttr "footBack_L0_Shape1Orig1.ws" "groupParts202.ig";
connectAttr "groupId202.id" "groupParts202.gi";
connectAttr "mgear_curveCns99GroupParts.og" "mgear_curveCns99.ip[0].ig";
connectAttr "mgear_curveCns99GroupId.id" "mgear_curveCns99.ip[0].gi";
connectAttr "legBack_L0_root.wm" "mgear_curveCns99.inputs[0]";
connectAttr "legBack_L0_knee.wm" "mgear_curveCns99.inputs[1]";
connectAttr "legBack_L0_ankle.wm" "mgear_curveCns99.inputs[2]";
connectAttr "legBack_L0_foot.wm" "mgear_curveCns99.inputs[3]";
connectAttr "legBack_L0_eff.wm" "mgear_curveCns99.inputs[4]";
connectAttr "mgear_curveCns99GroupId.msg" "mgear_curveCns99Set.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[0]" "mgear_curveCns99Set.dsm" -na;
connectAttr "mgear_curveCns99.msg" "mgear_curveCns99Set.ub[0]";
connectAttr "tweak99.og[0]" "mgear_curveCns99GroupParts.ig";
connectAttr "mgear_curveCns99GroupId.id" "mgear_curveCns99GroupParts.gi";
connectAttr "groupParts198.og" "tweak99.ip[0].ig";
connectAttr "groupId198.id" "tweak99.ip[0].gi";
connectAttr "groupId198.msg" "tweakSet99.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[1]" "tweakSet99.dsm" -na;
connectAttr "tweak99.msg" "tweakSet99.ub[0]";
connectAttr "legBack_L0_crvShape1Orig1.ws" "groupParts198.ig";
connectAttr "groupId198.id" "groupParts198.gi";
connectAttr "mgear_curveCns107GroupParts.og" "mgear_curveCns107.ip[0].ig";
connectAttr "mgear_curveCns107GroupId.id" "mgear_curveCns107.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns107.inputs[0]";
connectAttr "footBack_R0_0_loc.wm" "mgear_curveCns107.inputs[1]";
connectAttr "footBack_R0_1_loc.wm" "mgear_curveCns107.inputs[2]";
connectAttr "mgear_curveCns107GroupId.msg" "mgear_curveCns107Set.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[0]" "mgear_curveCns107Set.dsm" -na;
connectAttr "mgear_curveCns107.msg" "mgear_curveCns107Set.ub[0]";
connectAttr "tweak107.og[0]" "mgear_curveCns107GroupParts.ig";
connectAttr "mgear_curveCns107GroupId.id" "mgear_curveCns107GroupParts.gi";
connectAttr "groupParts214.og" "tweak107.ip[0].ig";
connectAttr "groupId214.id" "tweak107.ip[0].gi";
connectAttr "groupId214.msg" "tweakSet107.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[1]" "tweakSet107.dsm" -na;
connectAttr "tweak107.msg" "tweakSet107.ub[0]";
connectAttr "footBack_R0_crvShapeOrig.ws" "groupParts214.ig";
connectAttr "groupId214.id" "groupParts214.gi";
connectAttr "mgear_curveCns108GroupParts.og" "mgear_curveCns108.ip[0].ig";
connectAttr "mgear_curveCns108GroupId.id" "mgear_curveCns108.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns108.inputs[0]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns108.inputs[1]";
connectAttr "footBack_R0_outpivot.wm" "mgear_curveCns108.inputs[2]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns108.inputs[3]";
connectAttr "footBack_R0_inpivot.wm" "mgear_curveCns108.inputs[4]";
connectAttr "mgear_curveCns108GroupId.msg" "mgear_curveCns108Set.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[0]" "mgear_curveCns108Set.dsm" -na;
connectAttr "mgear_curveCns108.msg" "mgear_curveCns108Set.ub[0]";
connectAttr "tweak108.og[0]" "mgear_curveCns108GroupParts.ig";
connectAttr "mgear_curveCns108GroupId.id" "mgear_curveCns108GroupParts.gi";
connectAttr "groupParts216.og" "tweak108.ip[0].ig";
connectAttr "groupId216.id" "tweak108.ip[0].gi";
connectAttr "groupId216.msg" "tweakSet108.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[1]" "tweakSet108.dsm" -na;
connectAttr "tweak108.msg" "tweakSet108.ub[0]";
connectAttr "footBack_R0_Shape1Orig1.ws" "groupParts216.ig";
connectAttr "groupId216.id" "groupParts216.gi";
connectAttr "mgear_curveCns106GroupParts.og" "mgear_curveCns106.ip[0].ig";
connectAttr "mgear_curveCns106GroupId.id" "mgear_curveCns106.ip[0].gi";
connectAttr "legBack_R0_root.wm" "mgear_curveCns106.inputs[0]";
connectAttr "legBack_R0_knee.wm" "mgear_curveCns106.inputs[1]";
connectAttr "legBack_R0_ankle.wm" "mgear_curveCns106.inputs[2]";
connectAttr "legBack_R0_foot.wm" "mgear_curveCns106.inputs[3]";
connectAttr "legBack_R0_eff.wm" "mgear_curveCns106.inputs[4]";
connectAttr "mgear_curveCns106GroupId.msg" "mgear_curveCns106Set.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[0]" "mgear_curveCns106Set.dsm" -na;
connectAttr "mgear_curveCns106.msg" "mgear_curveCns106Set.ub[0]";
connectAttr "tweak106.og[0]" "mgear_curveCns106GroupParts.ig";
connectAttr "mgear_curveCns106GroupId.id" "mgear_curveCns106GroupParts.gi";
connectAttr "groupParts212.og" "tweak106.ip[0].ig";
connectAttr "groupId212.id" "tweak106.ip[0].gi";
connectAttr "groupId212.msg" "tweakSet106.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[1]" "tweakSet106.dsm" -na;
connectAttr "tweak106.msg" "tweakSet106.ub[0]";
connectAttr "legBack_R0_crvShape1Orig1.ws" "groupParts212.ig";
connectAttr "groupId212.id" "groupParts212.gi";
// End of quadruped.ma
