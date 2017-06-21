//Maya ASCII 2016R2 scene
//Name: quadruped.ma
//Last modified: Wed, Jun 21, 2017 05:11:26 PM
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
createNode transform -n "guide";
	rename -uid "8445EE0B-46F3-9413-E99E-3B9CC37605EF";
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
	rename -uid "7F584A98-447E-3EEE-1315-8CBED710C967";
	setAttr ".v" no;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "9DE8F2EE-4834-5EF9-2136-A0A0F3CC66AE";
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
	rename -uid "530F65C2-4823-2780-9C96-308AC1304228";
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
createNode nurbsCurve -n "local_C0_root13Shape" -p "local_C0_root";
	rename -uid "D07BD71B-4CB7-9DDE-ABAE-399C2AFB1314";
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
createNode nurbsCurve -n "local_C0_root14Shape" -p "local_C0_root";
	rename -uid "0038D561-4BFB-ABD0-54BE-9CA3109C1D08";
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
createNode nurbsCurve -n "local_C0_root15Shape" -p "local_C0_root";
	rename -uid "074F21C1-4AD7-E89E-8AC4-FBBFBF08ACAD";
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
	rename -uid "9327DEED-42D4-0452-DBB2-52A5E150926D";
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
	rename -uid "341EBF14-445F-8172-021C-3CA24FE15C9D";
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
createNode nurbsCurve -n "body_C0_root13Shape" -p "body_C0_root";
	rename -uid "2A24B646-4BCC-44F6-4E8C-C4B8964BBC7C";
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
createNode nurbsCurve -n "body_C0_root14Shape" -p "body_C0_root";
	rename -uid "14D58620-46C6-A788-E6E4-EBA59959E7D1";
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
createNode nurbsCurve -n "body_C0_root15Shape" -p "body_C0_root";
	rename -uid "B26663CC-428C-88F6-13C1-8780D6716747";
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
	rename -uid "6247F534-4D0F-6B0B-293B-C99DB4D85F60";
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
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".maxsquash" 0.5;
	setAttr ".lock_ori" 1;
	setAttr ".division" 5;
	setAttr ".centralTangent" yes;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "49FA2599-442C-04D6-ED8E-CFB48A2BA5CB";
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
createNode nurbsCurve -n "spine_C0_root13Shape" -p "spine_C0_root";
	rename -uid "E7E5AED7-44D2-9A39-4886-AEA62E9725BA";
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
createNode nurbsCurve -n "spine_C0_root14Shape" -p "spine_C0_root";
	rename -uid "95D6CE94-4907-B2D4-F6C1-8BB163D5DF61";
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
createNode nurbsCurve -n "spine_C0_root15Shape" -p "spine_C0_root";
	rename -uid "124AE2BF-4690-5FB7-BFE1-92BF90584C4F";
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
	rename -uid "A0DE37F1-4A07-919C-BFEC-8A88CF01ABC8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6115768831256645 -2.9361299538902153e-015 ;
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
	rename -uid "50765050-4048-490C-DB77-F5850909B50C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_eff13Shape" -p "spine_C0_eff";
	rename -uid "DB44D134-434E-5EE9-7B82-F0AC569C7EA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_eff14Shape" -p "spine_C0_eff";
	rename -uid "0ED22F32-49A0-6A05-A817-8990FFD39871";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_eff15Shape" -p "spine_C0_eff";
	rename -uid "539D235D-4EC2-9D24-165E-499EA7083AFA";
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
createNode nurbsCurve -n "spine_C0_eff15_0crvShape" -p "spine_C0_eff";
	rename -uid "214782DB-44AB-8DB1-C45A-DF96B6EE4598";
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
createNode nurbsCurve -n "spine_C0_eff15_1crvShape" -p "spine_C0_eff";
	rename -uid "8CD78FB9-4A38-D6F1-EED4-8A8AC80FB00F";
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
	rename -uid "B8C8EBF7-495E-1E51-A187-8C8393978FD3";
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
	setAttr ".t" -type "double3" -0.11164111249562403 0.36062523614417152 -1.1057116273629404e-016 ;
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
	rename -uid "67BFBD5C-48A0-F441-234B-F49995D9DE67";
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
createNode nurbsCurve -n "neck_C0_root13Shape" -p "neck_C0_root";
	rename -uid "88A91512-49E6-5178-11B5-1F85F2F36B53";
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
createNode nurbsCurve -n "neck_C0_root14Shape" -p "neck_C0_root";
	rename -uid "3B93739D-41CD-0C2B-65AE-68B320377309";
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
createNode nurbsCurve -n "neck_C0_root15Shape" -p "neck_C0_root";
	rename -uid "E40AF134-414C-2CB2-9013-3098DFB7F634";
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
	rename -uid "7EFACC64-43A8-1378-4689-C6B7D4A8B44F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.24124837670655497 3.6642870257638149 -8.7131531609605131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "CF1087E6-4CFA-C62A-70DB-E0AA37CF9E33";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_neck13Shape" -p "neck_C0_neck";
	rename -uid "A746DFC9-4887-DE44-26FF-339D8438AFB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_neck14Shape" -p "neck_C0_neck";
	rename -uid "071C292C-4495-2E0D-E5C5-F6A8DF0FB628";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_neck15Shape" -p "neck_C0_neck";
	rename -uid "A1F83E51-4833-FF39-9CB6-C18B42E08D8A";
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
createNode nurbsCurve -n "neck_C0_neck15_0crvShape" -p "neck_C0_neck";
	rename -uid "A2B5ED0D-44FD-DFC3-8687-AD8625F91EE0";
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
createNode nurbsCurve -n "neck_C0_neck15_1crvShape" -p "neck_C0_neck";
	rename -uid "2C714C8A-4B0F-8200-CBA0-7088A6131F71";
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
	rename -uid "8D6A7680-4046-BEB2-AF3E-43B50D6660F6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -3.5527136788005009e-015 1.4298103907130839e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 71.00246042570619 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "BAACE84C-464B-E210-13B7-F2A87EC0F025";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_head13Shape" -p "neck_C0_head";
	rename -uid "98D648AA-45B0-6EF8-6E71-6F989E99D7AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_head14Shape" -p "neck_C0_head";
	rename -uid "0A613D01-46B1-A551-195E-E6BE1780011F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_head15Shape" -p "neck_C0_head";
	rename -uid "6CA415FC-4EE8-51CC-F68A-55930413E7AD";
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
createNode nurbsCurve -n "neck_C0_head15_0crvShape" -p "neck_C0_head";
	rename -uid "7B822440-4AFF-984C-D23B-46868B74D386";
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
createNode nurbsCurve -n "neck_C0_head15_1crvShape" -p "neck_C0_head";
	rename -uid "F6B4D67F-44D5-47F2-FA70-179142802E27";
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
	rename -uid "F3AA1580-497C-999C-D2C1-899CBC827CC6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.028362147187278808 2.6770463465994716 4.5418821062020007e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "4B2EF8A4-467F-E437-4349-59BCAE131140";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_eff13Shape" -p "neck_C0_eff";
	rename -uid "F354A44F-48D7-0911-A8E4-3A951329654F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_eff14Shape" -p "neck_C0_eff";
	rename -uid "6A065813-4DF2-710E-15D0-C98425B34A74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_eff15Shape" -p "neck_C0_eff";
	rename -uid "403C330B-4B6C-E227-EBF4-77B551F8C277";
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
createNode nurbsCurve -n "neck_C0_eff15_0crvShape" -p "neck_C0_eff";
	rename -uid "8BCD9630-46EE-AE87-B3A5-D3A73A39DE45";
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
createNode nurbsCurve -n "neck_C0_eff15_1crvShape" -p "neck_C0_eff";
	rename -uid "126A1AC1-4652-3002-9D7C-D2B88739A2B1";
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
	rename -uid "F77C8BF7-474E-30CB-F0ED-AF8B68E75561";
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
	setAttr ".t" -type "double3" -3.2992211017816855 -0.74362823191862404 -4.3347348183670675 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844417408 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427552 2.3915882794427579 ;
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
	rename -uid "58CC2A17-4DF8-4DF9-8C9E-C196BEEED47B";
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
createNode nurbsCurve -n "spineUI_C0_root13Shape" -p "spineUI_C0_root";
	rename -uid "90796EC2-4F17-FEBB-8CC4-FAAA95F05C3D";
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
createNode nurbsCurve -n "spineUI_C0_root14Shape" -p "spineUI_C0_root";
	rename -uid "AEE144E5-432B-0730-E693-ECAB2E4D2FA6";
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
createNode nurbsCurve -n "spineUI_C0_root15Shape" -p "spineUI_C0_root";
	rename -uid "2C5FD780-4637-5EF1-6F77-05A074D2E743";
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
	rename -uid "4BCFDB60-4E96-F302-6C52-75AF3F1FE04B";
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
	setAttr ".t" -type "double3" 3.5527136788005009e-015 2.9303186274198634 6.1165723857933395e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
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
	rename -uid "F92FE770-4A50-5549-8F99-CC8B4FFE369A";
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
createNode nurbsCurve -n "headUI_C0_root4Shape" -p "headUI_C0_root";
	rename -uid "5A9B61D2-4E6D-BB12-DB66-5598979D37B2";
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
createNode nurbsCurve -n "headUI_C0_root5Shape" -p "headUI_C0_root";
	rename -uid "7425103D-4AE8-FBF8-F8D7-89BA2A700500";
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
createNode nurbsCurve -n "headUI_C0_root6Shape" -p "headUI_C0_root";
	rename -uid "D84114BC-4EDE-C337-A65D-66991126EAA6";
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
	rename -uid "1500C99D-488A-4A56-7B90-9592F04B81A9";
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
	setAttr ".t" -type "double3" 0.69584514547310761 0.71792767893744092 1.4003887623375062e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844417408 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53738203342942947 0.53738203342942936 0.53738203342943003 ;
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
	rename -uid "DA5F63D5-4CB7-E1FA-B691-E1A6839BD6C7";
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
createNode nurbsCurve -n "mouth_C0_root13Shape" -p "mouth_C0_root";
	rename -uid "C7177D27-42F8-F586-66BC-6CA526F4E54E";
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
createNode nurbsCurve -n "mouth_C0_root14Shape" -p "mouth_C0_root";
	rename -uid "D14F984D-459F-5304-26CC-EE961B3DDEDB";
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
createNode nurbsCurve -n "mouth_C0_root15Shape" -p "mouth_C0_root";
	rename -uid "78ED8E66-4625-9742-B1BD-469CC01CC998";
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
	rename -uid "2EF1871D-49D4-83FF-87BF-3DB20C5DA33B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.0510383535746307e-029 -7.1054273576010019e-015 1.0658141036401503e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999867 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "49168542-485B-0380-FDA0-B897917D5ECD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter13Shape" -p "mouth_C0_rotcenter";
	rename -uid "ABC836FC-4E8B-87E2-1CFD-F59BCED136ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter14Shape" -p "mouth_C0_rotcenter";
	rename -uid "EC2D8073-4A7E-DAD6-B90A-BA8C791749F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_rotcenter15Shape" -p "mouth_C0_rotcenter";
	rename -uid "586B11A7-4A59-BBFD-F09B-3298E80D7CD6";
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
createNode nurbsCurve -n "mouth_C0_rotcenter15_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "56F3CCD0-4048-4B10-DBC1-51ABD1BBCC66";
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
createNode nurbsCurve -n "mouth_C0_rotcenter15_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "2F6B39F6-482E-2C4C-EA87-40B973F795B0";
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
	rename -uid "72F92833-46F9-4B1E-48CD-82BB410C0625";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2971167579553827e-015 -0.83057537847143514 2.6485854255407055 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "C550970F-4163-33F0-1828-CA86FC17157E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup13Shape" -p "mouth_C0_lipup";
	rename -uid "0D569C63-4DC2-2696-34B1-7885289B7CA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_lipup14Shape" -p "mouth_C0_lipup";
	rename -uid "BA4CAB47-481C-887E-8E20-FAB8A4716D48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_lipup15Shape" -p "mouth_C0_lipup";
	rename -uid "B2FBDD80-424D-1F18-E1EB-31B14C939071";
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
createNode nurbsCurve -n "mouth_C0_lipup15_0crvShape" -p "mouth_C0_lipup";
	rename -uid "B4A0A3ED-448C-D12A-2B99-6DA997ED3019";
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
createNode nurbsCurve -n "mouth_C0_lipup15_1crvShape" -p "mouth_C0_lipup";
	rename -uid "6447ED1B-4F37-6CC3-DD44-31885E5981C7";
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
	rename -uid "980843ED-4C01-0234-2EB9-7692D93ACD5C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3722175990868851e-014 -14.161367226604183 -19.457469484456141 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691264 4.450443317169122 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "FBC6BDE1-428A-F7E4-0AD6-27A30321940B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "6C80E657-4909-CEC8-0DDB-BF9E066FD827";
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
	rename -uid "D3326540-405F-3955-B643-BB99BBA9C826";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7198567879251501e-015 -1.1237321151316024 2.4565606483465601 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "D852C8B6-4A9F-BB49-67C7-4E9E7F0B2FE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow13Shape" -p "mouth_C0_liplow";
	rename -uid "322F0E00-4E31-043D-FEFA-2493AAF1FBFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_liplow14Shape" -p "mouth_C0_liplow";
	rename -uid "6E5E4808-40DD-6D25-6604-E0A21A0DC8E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_liplow15Shape" -p "mouth_C0_liplow";
	rename -uid "5F086267-4508-B402-FF30-3D8EA66756E6";
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
createNode nurbsCurve -n "mouth_C0_liplow15_0crvShape" -p "mouth_C0_liplow";
	rename -uid "55832411-446E-F735-96C8-87A4D0036922";
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
createNode nurbsCurve -n "mouth_C0_liplow15_1crvShape" -p "mouth_C0_liplow";
	rename -uid "1E53479B-438C-8A58-D5E0-FEB99F089B91";
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
	rename -uid "355E8C6E-41BD-2EC1-A8DE-9892217455AB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3144916020838617e-014 -13.868210489944016 -19.265444707261995 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691264 4.450443317169122 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "17FB7B85-4652-35CB-8520-69A715367DA1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "4E142A31-450C-3865-0017-E98E9D6644E2";
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
	rename -uid "3B823739-43B4-BA06-C86C-A8A63C7492E8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3665827156630354e-029 -1.9431960625636968 2.0069895663162569 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999867 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "D33023FA-49CA-176C-9798-1CAC5455B547";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw13Shape" -p "mouth_C0_jaw";
	rename -uid "1B776676-462F-3C9A-9026-C3A6E08DD141";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_jaw14Shape" -p "mouth_C0_jaw";
	rename -uid "C0878581-4C5A-FC34-FB64-59AF5EE6F3EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_jaw15Shape" -p "mouth_C0_jaw";
	rename -uid "7DACBAAD-4223-486B-37F0-5C84D7CF2A80";
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
createNode nurbsCurve -n "mouth_C0_jaw15_0crvShape" -p "mouth_C0_jaw";
	rename -uid "B63A6594-486F-578B-6B0D-6682A03ED137";
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
createNode nurbsCurve -n "mouth_C0_jaw15_1crvShape" -p "mouth_C0_jaw";
	rename -uid "AF7D30D8-4724-4B7C-E18D-608536B560E6";
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
	rename -uid "265D196E-4DF9-C4D7-69DB-918C7E1CFEEB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4250592329134372e-015 -14.991942605075602 -16.8088840589154 ;
	setAttr ".s" -type "double3" 4.4504433171691193 4.4504433171691193 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "7D560AD9-41FB-1C98-A33B-DA951FE2B270";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "1CD42B8F-454E-EC0D-8328-A19BDDC998AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv5" -p "mouth_C0_root";
	rename -uid "F39E0B6D-4E73-7EBA-C9C9-229E00174780";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.4250592329134372e-015 -14.991942605075602 -16.8088840589154 ;
	setAttr ".s" -type "double3" 4.4504433171691193 4.4504433171691193 4.4504433171691149 ;
createNode nurbsCurve -n "mouth_C0_crv5Shape" -p "mouth_C0_crv5";
	rename -uid "3819C82B-45E4-C76E-7ABC-5783BABD77EF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv5ShapeOrig" -p "mouth_C0_crv5";
	rename -uid "696E8720-47FC-B28C-0F92-B6A9969B4A2C";
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
	rename -uid "9C1A9396-4EAA-C72D-623D-028E5EC38B89";
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
	setAttr ".t" -type "double3" 4.9771436298332077 1.0221998062961521 -1.7545700686211244e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844417429 89.999999999999957 0 ;
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
	rename -uid "FFAFEFA4-40F5-247E-5130-068907FF6967";
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
createNode nurbsCurve -n "eyeslook_C0_root13Shape" -p "eyeslook_C0_root";
	rename -uid "F5720CA7-4B64-A1BD-DD34-0E8F56004532";
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
createNode nurbsCurve -n "eyeslook_C0_root14Shape" -p "eyeslook_C0_root";
	rename -uid "E4F2F515-4A18-4792-B1D4-64ACF9E15DF6";
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
createNode nurbsCurve -n "eyeslook_C0_root15Shape" -p "eyeslook_C0_root";
	rename -uid "F84A3AAF-4A5C-2E26-3999-82BBAB1099A0";
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
	rename -uid "9ED198CE-4641-FB92-675E-36B4520BDA50";
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
	setAttr ".t" -type "double3" 0.25733245506885893 1.0267893607782348 -0.4210773006138262 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 75.993552494737415 179.9617758071555 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427552 2.3915882794427601 2.3915882794427548 ;
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
	rename -uid "EF2A7755-4DF0-C470-7835-0E86AA13F6C3";
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
createNode nurbsCurve -n "eye_L0_root13Shape" -p "eye_L0_root";
	rename -uid "D00ECCCD-43C6-CE9F-FF9B-8E92C580DFD9";
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
createNode nurbsCurve -n "eye_L0_root14Shape" -p "eye_L0_root";
	rename -uid "CCFE1D5B-40ED-3B12-FF93-0783ABD48F30";
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
createNode nurbsCurve -n "eye_L0_root15Shape" -p "eye_L0_root";
	rename -uid "078000CC-4299-8743-3E38-03AB3A09B5ED";
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
	rename -uid "150F5789-46EB-A6F3-EB5F-39BFD438338D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 6.2172489379008766e-015 2.0321341905376431 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999845 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "1B2CCF75-4DEB-BF16-BA12-23B7D6476AA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_look13Shape" -p "eye_L0_look";
	rename -uid "E4D789AC-4B78-755E-00AF-B4AE1068E8B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_look14Shape" -p "eye_L0_look";
	rename -uid "E92A38A4-4833-B6A7-800A-D0B245A85171";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_look15Shape" -p "eye_L0_look";
	rename -uid "B310512D-46B5-1BAB-BD00-DFBF7A865194";
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
createNode nurbsCurve -n "eye_L0_look15_0crvShape" -p "eye_L0_look";
	rename -uid "08757E0F-40BD-582B-13AC-61AB194D2D31";
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
createNode nurbsCurve -n "eye_L0_look15_1crvShape" -p "eye_L0_look";
	rename -uid "1FA40513-4F7F-01EA-9FC3-9AB0A4EDC14B";
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
	rename -uid "1360CABA-4084-D425-DA4D-DCA246D663E4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753422 -3.497662929157578 -3.5292331821335625 ;
	setAttr ".r" -type "double3" 0 -14.006447505262575 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999856 1.0000000000000013 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "2644EB65-4503-0FCA-02D2-88AE71CB8E11";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "58B88D71-426E-351F-5233-7CA56FC86191";
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
	rename -uid "6AA919D7-459D-BEC6-818E-7FB26CF31096";
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
	setAttr ".t" -type "double3" 0.25733245506886071 1.026789360778233 0.42107730061382792 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 -75.993552494737443 179.9617758071557 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427552 2.3915882794427605 -2.3915882794427548 ;
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
	rename -uid "F735F985-4B90-96A1-C04B-D4872B67E017";
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
createNode nurbsCurve -n "eye_R0_root4Shape" -p "eye_R0_root";
	rename -uid "97EE8ABE-40B7-74E6-CC58-728BB05994FB";
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
createNode nurbsCurve -n "eye_R0_root5Shape" -p "eye_R0_root";
	rename -uid "4D36C3FA-43CB-4011-F72D-7DAE0BC1A475";
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
createNode nurbsCurve -n "eye_R0_root6Shape" -p "eye_R0_root";
	rename -uid "AD224A77-47C4-C22E-F64C-2485E35D82D2";
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
	rename -uid "1F1D0336-443E-8CA0-69A2-7D8A91477C88";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6613381477509392e-015 2.0321341905376427 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999811 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "CD680627-4D30-8280-56EA-60A122145DA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_look4Shape" -p "eye_R0_look";
	rename -uid "543475E6-4631-45EA-0143-BC8901AECCEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_look5Shape" -p "eye_R0_look";
	rename -uid "FABE4812-4151-62D1-8777-79BEC4BA2BB8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_look6Shape" -p "eye_R0_look";
	rename -uid "E6FEF6FC-4E6E-12AB-F970-DFBE3BBB4108";
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
createNode nurbsCurve -n "eye_R0_look6_0crvShape" -p "eye_R0_look";
	rename -uid "6B8F280E-4EF2-83DE-9760-009A966FCCFA";
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
createNode nurbsCurve -n "eye_R0_look6_1crvShape" -p "eye_R0_look";
	rename -uid "03371264-417B-7CD4-455D-5A8E8F821794";
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
	rename -uid "26D4FEB3-403F-F4D2-FBC0-FE8AF6C3D23F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753444 -3.4976629291575771 -3.5292331821335612 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999833 -1.0000000000000011 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "C7A5549C-4246-87B6-57BB-23A07E1BFDB4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "60D078F1-4742-4101-DF06-62B536B13B0F";
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
	rename -uid "E8E9207F-40AC-3BAC-CC53-218DD652AD31";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.094534318000984996 -0.76996010281298588 1.5833033991300101e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "0233F708-43D1-B0FB-C3DB-94A1ED3B8216";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape10" -p "neck_C0_tan1";
	rename -uid "4C7C664F-43F5-14C0-D211-31907B64803A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape11" -p "neck_C0_tan1";
	rename -uid "E206FCC6-456C-9E2D-0E0A-DA8484352623";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape12" -p "neck_C0_tan1";
	rename -uid "E129FEB6-4F6C-00AC-A88B-47A00D459A3E";
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
createNode nurbsCurve -n "neck_C0_tan10_0crvShape" -p "neck_C0_tan1";
	rename -uid "696B458E-4871-2D2C-5FF6-82984B18EE20";
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
createNode nurbsCurve -n "neck_C0_tan10_1crvShape" -p "neck_C0_tan1";
	rename -uid "077AD15E-4D39-6BAB-5B72-00A21FBD3C2E";
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
	rename -uid "4BC92920-4090-0E6E-C450-2E810DB29106";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550712 -10.274847894363646 4.4383048488342501e-016 ;
	setAttr ".r" -type "double3" -70.964236232861779 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427552 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "07AD80C3-4D93-2A7E-4F0E-019E466543A5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "8C29A93B-4598-44D8-67E5-A89EAFCB0612";
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
	rename -uid "9D2C7FFA-441B-D85D-D5A8-F282573C385E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.016734587625116593 0.81123959492320008 -2.1361002026221168e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "576DA3C2-43FF-3A0C-61F4-72B5DB11D5FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape9" -p "neck_C0_tan0";
	rename -uid "1CA7E7A3-4544-C1D4-CBCA-DB86879FFE4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape10" -p "neck_C0_tan0";
	rename -uid "932A14B4-48B3-3452-1B97-B9806A16C139";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape11" -p "neck_C0_tan0";
	rename -uid "CC2E7011-41D2-62B6-16A0-8F84D769AF66";
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
createNode nurbsCurve -n "neck_C0_tan9_0crvShape" -p "neck_C0_tan0";
	rename -uid "4DC6220C-4305-2224-64F9-D58CAED24547";
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
createNode nurbsCurve -n "neck_C0_tan9_1crvShape" -p "neck_C0_tan0";
	rename -uid "132B7A0F-4BAF-D5A2-4987-C2A09B899BEA";
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
	rename -uid "7D16550C-4208-BD62-DEF9-D6849EB7C18B";
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
	rename -uid "D05F6D02-4B81-8942-01AE-C985C3AF6F45";
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
createNode aimConstraint -n "neck_C0_blade_aimConstraint5" -p "neck_C0_blade";
	rename -uid "005955E3-4810-6483-8889-B6982D560617";
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
	setAttr ".rsrr" -type "double3" -540 -1.4124500153760508e-030 451.18175355422994 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint5" -p "neck_C0_blade";
	rename -uid "D05CCA0E-476B-6FA7-3E7E-088477CDAE3E";
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
	rename -uid "36899A52-4988-970A-FFAE-4E8E75C0408B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.976162134148518 -6.6105608685998307 -4.2748483121262576e-016 ;
	setAttr ".r" -type "double3" -70.964236232861779 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "2D278323-4274-214B-9F0D-87A2E8F5CDD8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "DAC03872-4BD8-F5A2-1BD8-AEBCEFD41381";
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
	rename -uid "C6279906-42F0-B92B-7EDA-7089C72DB6E6";
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
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 -0.20082401790608237 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
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
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "56BC22FB-46FE-14CA-CF23-7FAE0635B7AC";
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
createNode nurbsCurve -n "shoulder_L0_root13Shape" -p "shoulder_L0_root";
	rename -uid "62958D02-4D3D-7C91-1AC7-89877B6024BC";
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
createNode nurbsCurve -n "shoulder_L0_root14Shape" -p "shoulder_L0_root";
	rename -uid "DAB0D1F2-419A-F033-BA60-2FAE17ED122D";
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
createNode nurbsCurve -n "shoulder_L0_root15Shape" -p "shoulder_L0_root";
	rename -uid "700EE8FF-4D4A-51D7-FA6A-A4A7530F3FD2";
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
	rename -uid "BBD22554-4401-2E92-E825-06B95CCF5E8E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724627 -0.20882616370655072 0.20663608494886754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_0_locShape" -p "shoulder_L0_0_loc";
	rename -uid "D415710A-45CC-8CA2-C440-718FC4FFA0AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc13Shape" -p "shoulder_L0_0_loc";
	rename -uid "EE41789A-49A4-8B1B-2CFC-D19AB9F055AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc14Shape" -p "shoulder_L0_0_loc";
	rename -uid "7C22CBD7-4D7A-4D41-F974-809203B72049";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_0_loc15Shape" -p "shoulder_L0_0_loc";
	rename -uid "F8FD7AD7-43F1-FE3C-3085-76A1BD6A6FB7";
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
createNode nurbsCurve -n "shoulder_L0_0_loc15_0crvShape" -p "shoulder_L0_0_loc";
	rename -uid "E17099CF-4397-BC39-3347-88B654E488B3";
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
createNode nurbsCurve -n "shoulder_L0_0_loc15_1crvShape" -p "shoulder_L0_0_loc";
	rename -uid "8DEEEE98-43A0-F142-4C7B-9A8503481586";
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
	rename -uid "C9A720CE-4BB6-40A2-4077-418BBEDBA1D4";
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
	setAttr ".t" -type "double3" -7.7715611723760958e-016 -2.2204460492503131e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
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
	rename -uid "1961D0DF-437D-3943-945C-8EA0AFD14AE0";
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
createNode nurbsCurve -n "legFront_L0_root13Shape" -p "legFront_L0_root";
	rename -uid "0FFBE9F0-4125-1A7B-D9A0-95BDF3BBAEDB";
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
createNode nurbsCurve -n "legFront_L0_root14Shape" -p "legFront_L0_root";
	rename -uid "032884D3-42A3-E2DE-4CAE-3B9B38A61985";
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
createNode nurbsCurve -n "legFront_L0_root15Shape" -p "legFront_L0_root";
	rename -uid "97A7C1B3-432D-CC0C-2466-D9B5AA5E82ED";
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
	rename -uid "1F4B8D40-4067-6049-BADA-72A76389719A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.1240863021370502 -0.48633856256837582 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
	rename -uid "F9D0A31E-4FD2-3B57-BB6F-8689D44FC5B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee13Shape" -p "legFront_L0_knee";
	rename -uid "53574F52-4888-7609-DF7F-A5A7A0E60B26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_knee14Shape" -p "legFront_L0_knee";
	rename -uid "6C6FC9E8-444A-AFA8-6984-06944A077429";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_knee15Shape" -p "legFront_L0_knee";
	rename -uid "C765DDCB-4100-1205-8EE1-60BAF7365587";
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
createNode nurbsCurve -n "legFront_L0_knee15_0crvShape" -p "legFront_L0_knee";
	rename -uid "7B426ADC-4CB6-6C83-0CF4-67BC5E30FF41";
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
createNode nurbsCurve -n "legFront_L0_knee15_1crvShape" -p "legFront_L0_knee";
	rename -uid "A3FF80B3-4847-FD84-CB15-638C3E953656";
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
	rename -uid "A10770F5-4D6A-07C8-AB61-349AE14A9785";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -2.3651516407059168 0.073902270404611947 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_ankleShape" -p "legFront_L0_ankle";
	rename -uid "70FC1AE2-4197-80FA-A9A4-439B6600E9BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle13Shape" -p "legFront_L0_ankle";
	rename -uid "C2B3EA4E-4F0D-EFE1-AF2F-FF8DEBAE9158";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_ankle14Shape" -p "legFront_L0_ankle";
	rename -uid "5F642A30-45A3-BD58-18AD-32AC9C2944EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_ankle15Shape" -p "legFront_L0_ankle";
	rename -uid "1E703C1A-494C-A369-1905-D39AE5043AA4";
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
createNode nurbsCurve -n "legFront_L0_ankle15_0crvShape" -p "legFront_L0_ankle";
	rename -uid "3811B4F3-4AD9-B3A9-1618-2482D0AE1CF1";
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
createNode nurbsCurve -n "legFront_L0_ankle15_1crvShape" -p "legFront_L0_ankle";
	rename -uid "B94E1AED-4954-B816-76B0-3781AE585056";
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
	rename -uid "13DE7615-4808-2DC2-B409-0F80341B3DE1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 -1.1294425054275499 0.023148533894221224 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_footShape" -p "legFront_L0_foot";
	rename -uid "E49C428E-436F-39F8-054C-708E7FEB320A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot13Shape" -p "legFront_L0_foot";
	rename -uid "012F375D-4C88-D07D-1BC5-BEAEB1224871";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_foot14Shape" -p "legFront_L0_foot";
	rename -uid "69585A79-46A4-0027-EC77-EA86E0251DE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_foot15Shape" -p "legFront_L0_foot";
	rename -uid "D712ACF1-403D-F62E-E95F-BFAC10BBA270";
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
createNode nurbsCurve -n "legFront_L0_foot15_0crvShape" -p "legFront_L0_foot";
	rename -uid "B88AB7CC-41AE-5D35-1C6E-9F96F0A6A21B";
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
createNode nurbsCurve -n "legFront_L0_foot15_1crvShape" -p "legFront_L0_foot";
	rename -uid "C3749F0A-4C43-F593-D275-52A0F5C0BCEC";
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
	rename -uid "AF12D099-4DF9-297A-E29E-329939B39B31";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 7.4940054162198066e-016 0.59657797851920868 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_effShape" -p "legFront_L0_eff";
	rename -uid "BB8C4354-4D19-5AD7-8CFF-7BB3AD963AD0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff13Shape" -p "legFront_L0_eff";
	rename -uid "D88D9993-41B8-CE87-C797-EAA7EE710A82";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_eff14Shape" -p "legFront_L0_eff";
	rename -uid "33110CA9-4AF3-C758-A0C3-C9B0A8F49BAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_eff15Shape" -p "legFront_L0_eff";
	rename -uid "1ABF6CB9-472E-6253-9410-A09ABEF26B0D";
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
createNode nurbsCurve -n "legFront_L0_eff15_0crvShape" -p "legFront_L0_eff";
	rename -uid "1DFD14B8-4FCA-0B73-C8D4-46B2E35D3AD4";
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
createNode nurbsCurve -n "legFront_L0_eff15_1crvShape" -p "legFront_L0_eff";
	rename -uid "DA3CB1F7-4151-0FB8-B0BB-5E8A98B7B069";
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
	rename -uid "0AB38994-49C3-7F1B-12A8-CD945BE4D6C1";
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
	setAttr ".t" -type "double3" 2.2204460492503131e-015 6.106226635438361e-016 -2.6645352591003757e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514093 0.31499517602514093 0.31499517602514077 ;
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
	rename -uid "9FBB522C-470C-5A65-C171-82ABEF306054";
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
createNode nurbsCurve -n "footFront_L0_root13Shape" -p "footFront_L0_root";
	rename -uid "4F80A08C-4015-F7D4-4A13-07803138C460";
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
createNode nurbsCurve -n "footFront_L0_root14Shape" -p "footFront_L0_root";
	rename -uid "ECBAE65F-4AAD-8842-A605-9BB5B6BE2EAC";
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
createNode nurbsCurve -n "footFront_L0_root15Shape" -p "footFront_L0_root";
	rename -uid "F2093ED5-449D-3B11-B251-04B080E2DE28";
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
	rename -uid "FD2BD9C5-4478-B706-DB0C-B3847AAB47BA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 6.6613381477509392e-016 0.75996190873516056 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
	rename -uid "FDEC56E4-46AC-5515-6B4C-9999E5BA8344";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc13Shape" -p "footFront_L0_0_loc";
	rename -uid "14C9AC97-4157-3E3A-0FBA-CEAE62D56565";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc14Shape" -p "footFront_L0_0_loc";
	rename -uid "D9B5637A-4FEC-922C-F01A-929B04D2C931";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_0_loc15Shape" -p "footFront_L0_0_loc";
	rename -uid "B366430A-43E9-3E59-23FB-DEAE1B478581";
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
createNode nurbsCurve -n "footFront_L0_0_loc15_0crvShape" -p "footFront_L0_0_loc";
	rename -uid "2523B3E5-4BE8-AB96-8CF9-1EAE7D7BC6A6";
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
createNode nurbsCurve -n "footFront_L0_0_loc15_1crvShape" -p "footFront_L0_0_loc";
	rename -uid "47F12EEC-4D87-8331-6420-3A9E1218B863";
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
	rename -uid "32DB8904-4669-1406-1030-0BB7FA0D0932";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -0.31771180755405098 0.73937999249395858 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_1_locShape" -p "footFront_L0_1_loc";
	rename -uid "2450BE65-4EB7-9833-5FFE-5C866E7110AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc13Shape" -p "footFront_L0_1_loc";
	rename -uid "5F67AE1D-467F-530D-884B-7291DCF9796E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc14Shape" -p "footFront_L0_1_loc";
	rename -uid "3188C4E0-4089-6AA7-A136-3AB56FA57DCD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_1_loc15Shape" -p "footFront_L0_1_loc";
	rename -uid "D88DF8F0-43C7-86EA-9189-DEB80565B0B3";
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
createNode nurbsCurve -n "footFront_L0_1_loc15_0crvShape" -p "footFront_L0_1_loc";
	rename -uid "F0B6A5E1-4795-F83D-C122-9B84149745DD";
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
createNode nurbsCurve -n "footFront_L0_1_loc15_1crvShape" -p "footFront_L0_1_loc";
	rename -uid "58B35764-4976-A08C-9C7B-C79C387E553F";
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
	rename -uid "0A54758A-4D85-FDF7-0442-BCB637A99C90";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373586 -0.60300743522685729 -16.239037496288908 ;
	setAttr ".s" -type "double3" 7.9431701648148092 7.9431701648148092 7.943170164814811 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	rename -uid "A894E6A7-41B4-0632-86B8-349CC24099AC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
	rename -uid "643E5D39-41A9-0BA1-7AC2-E8B7020E577E";
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
	rename -uid "A27AD73A-46AA-BAD2-B12E-388BB054524B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.9936057773011271e-015 -0.3177118075540506 -0.067899908672096387 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
	rename -uid "FCD55565-4711-6CC0-BF0F-36BE6ED166D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel13Shape" -p "footFront_L0_heel";
	rename -uid "6EBDFD0B-4DD3-3E6A-F2F1-A583F838ABEB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_heel14Shape" -p "footFront_L0_heel";
	rename -uid "46EED271-4757-4E91-2801-D2A09FFA5221";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_heel15Shape" -p "footFront_L0_heel";
	rename -uid "67361D2D-4CE2-B4D0-F5CE-658D095E6446";
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
createNode nurbsCurve -n "footFront_L0_heel15_0crvShape" -p "footFront_L0_heel";
	rename -uid "E3BC5C3A-4ABE-C18C-616F-A2AE17B6BE88";
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
createNode nurbsCurve -n "footFront_L0_heel15_1crvShape" -p "footFront_L0_heel";
	rename -uid "D7FE6D21-453B-297F-9E6E-058D69356E6F";
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
	rename -uid "814FE231-4B7E-9115-3BCE-07A63155D6EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120628 -0.31771180755404899 0.69157185350465156 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
	rename -uid "7480C0AF-46A4-6E04-CEC2-97ADB515B223";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot13Shape" -p "footFront_L0_outpivot";
	rename -uid "0D8564BE-4015-F51D-14F1-0F8B3602E972";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot14Shape" -p "footFront_L0_outpivot";
	rename -uid "9E503C9B-42B1-DD4C-519C-A9A01CA59EA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_outpivot15Shape" -p "footFront_L0_outpivot";
	rename -uid "07A7CEF3-4DF6-CA46-462D-5E92A419AADF";
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
createNode nurbsCurve -n "footFront_L0_outpivot15_0crvShape" -p "footFront_L0_outpivot";
	rename -uid "A8BF3B3D-4E6C-DECC-8A02-84A39087017E";
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
createNode nurbsCurve -n "footFront_L0_outpivot15_1crvShape" -p "footFront_L0_outpivot";
	rename -uid "A923D942-435B-1D1F-649D-12B5E6CA7CD7";
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
	rename -uid "9A193166-4484-8C04-5C47-BB8852188D39";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722958 -0.31771180755405126 0.8634001128566311 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
	rename -uid "70F68051-4570-2953-4930-79A67476FD7F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot13Shape" -p "footFront_L0_inpivot";
	rename -uid "BF469839-441E-3B2D-87AF-56AB4BD8F682";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot14Shape" -p "footFront_L0_inpivot";
	rename -uid "A32932D4-4322-D0F8-7DF1-35A18A8CD04B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_inpivot15Shape" -p "footFront_L0_inpivot";
	rename -uid "4B1242FE-4413-8457-36AA-55B482146BD3";
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
createNode nurbsCurve -n "footFront_L0_inpivot15_0crvShape" -p "footFront_L0_inpivot";
	rename -uid "89FFBEF5-49D5-D295-2413-74BA36DBD792";
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
createNode nurbsCurve -n "footFront_L0_inpivot15_1crvShape" -p "footFront_L0_inpivot";
	rename -uid "D98D62F8-4468-3FBD-3FA3-E885D88EFB9F";
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
	rename -uid "B83D71F2-4FDC-00B3-4437-149DD4F2A700";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373586 -0.60300743522685729 -16.239037496288908 ;
	setAttr ".s" -type "double3" 7.9431701648148092 7.9431701648148092 7.943170164814811 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	rename -uid "9A2A7F07-407B-A9F0-9209-7DA87F1CC4EF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig" -p "footFront_L0_1";
	rename -uid "B5FD2D7F-4838-7624-8F95-0B8F3804F181";
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
	rename -uid "D630E8D2-4197-EE5B-1466-09B9F0768455";
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
	setAttr ".t" -type "double3" 10.017876024668169 5.4248605945583224 2.5678955088137911 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148083 7.9431701648148083 7.9431701648148128 ;
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
	rename -uid "B2CA0ED8-4D2D-4E21-6E0A-7CA01B8FD32C";
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
createNode nurbsCurve -n "frontLegUI_L0_root13Shape" -p "frontLegUI_L0_root";
	rename -uid "672DB003-423F-B96B-67EF-2BB509850F02";
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
createNode nurbsCurve -n "frontLegUI_L0_root14Shape" -p "frontLegUI_L0_root";
	rename -uid "EB9286BD-41D5-4F4B-4083-76975404BAF2";
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
createNode nurbsCurve -n "frontLegUI_L0_root15Shape" -p "frontLegUI_L0_root";
	rename -uid "0FFF7F21-41AD-2D2C-8E4A-81B79E997C1F";
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
	rename -uid "5BE9D15C-401D-8DCA-8D10-61BA756AEC3F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011685 -5.8086248814742678 -5.5045062328919343 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634871 2.5020602842634885 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	rename -uid "2B17486C-45C0-0533-B771-CC98CC3E1C70";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig" -p "legFront_L0_crv1";
	rename -uid "8E6421A8-4D38-1A42-1ED8-DFB6E74B27FA";
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
	rename -uid "04D4E0BA-4444-23C0-D9A3-8AAEE44451F0";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999911 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "BBE06256-482C-78E2-5BB6-D3A22EA764C7";
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
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint5" -p "shoulder_L0_blade";
	rename -uid "B5CA0821-496C-387A-CE06-13B6CD5F87DC";
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
	setAttr ".rsrr" -type "double3" 3.359975138206563 -13.536129435773104 -14.081236533000283 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint5" -p "shoulder_L0_blade";
	rename -uid "3C5128A9-4610-77C7-D9DF-1F9FC2EA8451";
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
	rename -uid "75835E02-4187-5665-C394-0A8147DE1A5D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147562265 -2.5303629060493171 -1.9933533667490368 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "FA67D154-4FDB-1E9F-CE18-DB83B790EEE8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "1995335A-44BD-A02E-46D3-39BA61FAC18E";
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
	rename -uid "3347C7FC-46B6-56B0-225C-F1A52832EE4C";
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
	setAttr ".t" -type "double3" -0.23232496368006927 0.19745119313991832 0.20082401790608287 ;
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
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "E992F60C-46CA-D10C-0901-4A9508F641F4";
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
createNode nurbsCurve -n "shoulder_R0_root4Shape" -p "shoulder_R0_root";
	rename -uid "E72E2523-445A-7C7F-1775-47B7548B3FE8";
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
createNode nurbsCurve -n "shoulder_R0_root5Shape" -p "shoulder_R0_root";
	rename -uid "10F48E8C-4374-4740-AB06-1DB5336CF508";
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
createNode nurbsCurve -n "shoulder_R0_root6Shape" -p "shoulder_R0_root";
	rename -uid "5A63D21B-4906-1B67-6CBF-1F85C790AACD";
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
	rename -uid "0857E608-44B9-7C7D-C3D2-81A4F5331823";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724605 -0.20882616370655249 0.2066360849488682 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_0_locShape" -p "shoulder_R0_0_loc";
	rename -uid "B86C54ED-44E6-58D7-2200-47B2D7825225";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_0_loc4Shape" -p "shoulder_R0_0_loc";
	rename -uid "E1219569-4552-5522-6A62-7888856D4BB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_0_loc5Shape" -p "shoulder_R0_0_loc";
	rename -uid "7AE6BF20-452A-83C1-1220-C5BD1E9A5811";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_0_loc6Shape" -p "shoulder_R0_0_loc";
	rename -uid "0A8F1CB0-4DD7-B8B7-707A-43BBBC7D1094";
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
createNode nurbsCurve -n "shoulder_R0_0_loc6_0crvShape" -p "shoulder_R0_0_loc";
	rename -uid "8ABC2A06-43DA-9E84-3BB3-0EA11ADC8652";
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
createNode nurbsCurve -n "shoulder_R0_0_loc6_1crvShape" -p "shoulder_R0_0_loc";
	rename -uid "B9317F69-47DF-927A-D31D-078235780B5D";
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
	rename -uid "75A15EB0-45F3-368A-3066-8799B49BD6F0";
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
	setAttr ".t" -type "double3" -7.7715611723760958e-016 -1.3322676295501878e-015 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
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
	rename -uid "2852DF35-42EA-00CB-DBBE-C18880B92233";
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
createNode nurbsCurve -n "legFront_R0_root4Shape" -p "legFront_R0_root";
	rename -uid "81DDBEB0-4E63-FC84-EDFC-A58391729846";
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
createNode nurbsCurve -n "legFront_R0_root5Shape" -p "legFront_R0_root";
	rename -uid "29AEB9F0-4B5E-C3B8-0B7A-BEB31D70D1ED";
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
createNode nurbsCurve -n "legFront_R0_root6Shape" -p "legFront_R0_root";
	rename -uid "6637CF22-48B5-198D-3630-D184EE29B927";
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
	rename -uid "9D96A040-4269-A237-1E2A-488EFBD2EA43";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -2.1240863021370502 -0.48633856256837227 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_kneeShape" -p "legFront_R0_knee";
	rename -uid "DD95E0BB-4110-6B4E-1D8A-1AAB5DD622D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_knee4Shape" -p "legFront_R0_knee";
	rename -uid "974911C6-4EC4-D1FE-2BF0-DDB08AFD3D15";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_knee5Shape" -p "legFront_R0_knee";
	rename -uid "7E3404BB-4D0C-FA08-1C35-00B4E193DD4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_knee6Shape" -p "legFront_R0_knee";
	rename -uid "CA968843-4588-B066-CDFD-78962C03497B";
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
createNode nurbsCurve -n "legFront_R0_knee6_0crvShape" -p "legFront_R0_knee";
	rename -uid "0FCCC2B2-46CA-98A4-80EE-BEBB095BC37C";
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
createNode nurbsCurve -n "legFront_R0_knee6_1crvShape" -p "legFront_R0_knee";
	rename -uid "14D7E940-4FB3-6FAF-4F06-41A3E5FFB59E";
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
	rename -uid "9BA68F95-4C97-2B6B-9F97-2D95CD83C339";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.3651516407059185 0.073902270404609283 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_ankleShape" -p "legFront_R0_ankle";
	rename -uid "BAA1F583-4B14-840B-2C34-5EA16E2E0EAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_ankle4Shape" -p "legFront_R0_ankle";
	rename -uid "1400D71B-45B4-CE8A-6FFA-7A9B21443F51";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_ankle5Shape" -p "legFront_R0_ankle";
	rename -uid "A8634D3E-4B5E-6F56-4F11-0EA41A9C76F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_ankle6Shape" -p "legFront_R0_ankle";
	rename -uid "D67182A4-424D-C0D3-B2F3-AA8525BFD090";
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
createNode nurbsCurve -n "legFront_R0_ankle6_0crvShape" -p "legFront_R0_ankle";
	rename -uid "3EBA84C0-4683-1967-1B4D-F89A1A94502A";
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
createNode nurbsCurve -n "legFront_R0_ankle6_1crvShape" -p "legFront_R0_ankle";
	rename -uid "BD3F3E7B-4B11-0A16-E676-958E338CB049";
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
	rename -uid "D83D3FCB-47EC-0322-50B6-CD8742A523DA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.1294425054275474 0.023148533894220336 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
	rename -uid "82F5F820-4EA3-E7F0-C19E-7B87A518229F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_foot4Shape" -p "legFront_R0_foot";
	rename -uid "990CD1F9-4140-6D11-3203-B0855B43797B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_foot5Shape" -p "legFront_R0_foot";
	rename -uid "16518016-4DE5-02E7-9484-B98813F6B1A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_foot6Shape" -p "legFront_R0_foot";
	rename -uid "3902C81B-4AAB-38FB-EA29-8C9EC5D8A651";
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
createNode nurbsCurve -n "legFront_R0_foot6_0crvShape" -p "legFront_R0_foot";
	rename -uid "C6631B0A-4265-B31B-46D9-CB8A040D7E19";
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
createNode nurbsCurve -n "legFront_R0_foot6_1crvShape" -p "legFront_R0_foot";
	rename -uid "E4E6EFDB-4BDA-17A8-65E9-199C56062A3B";
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
	rename -uid "49B365FB-43E7-8F7F-1D83-D99D95B9BAD3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 3.3306690738754696e-016 0.59657797851921046 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_effShape" -p "legFront_R0_eff";
	rename -uid "47555221-4C5A-93DE-7CB8-8EB4F93F6DD1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_R0_eff4Shape" -p "legFront_R0_eff";
	rename -uid "27C94E28-43C4-3A73-D5C3-21815519287B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_R0_eff5Shape" -p "legFront_R0_eff";
	rename -uid "996BD40B-4164-FE09-EDB6-12A4F7330ADA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_R0_eff6Shape" -p "legFront_R0_eff";
	rename -uid "C66BF833-45FB-4D9E-5144-7B9114280522";
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
createNode nurbsCurve -n "legFront_R0_eff6_0crvShape" -p "legFront_R0_eff";
	rename -uid "25288189-4ABD-A9BA-DBDA-1688EE921CC8";
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
createNode nurbsCurve -n "legFront_R0_eff6_1crvShape" -p "legFront_R0_eff";
	rename -uid "33C37800-4CCD-7F81-1731-42BBCB59D2B4";
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
	rename -uid "8262FCDC-4AAB-6AB3-AB16-398A51C3EBE0";
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
	setAttr ".t" -type "double3" 1.3322676295501878e-015 3.6082248300317588e-016 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514093 0.31499517602514104 0.31499517602514082 ;
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
	rename -uid "E1FDB58A-4FD5-C54C-1984-07985540DA1D";
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
createNode nurbsCurve -n "footFront_R0_root4Shape" -p "footFront_R0_root";
	rename -uid "2508D420-469F-EC76-54BD-21AE96008D76";
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
createNode nurbsCurve -n "footFront_R0_root5Shape" -p "footFront_R0_root";
	rename -uid "0F33F122-476F-ACBD-18ED-3A9F8C6F5A1C";
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
createNode nurbsCurve -n "footFront_R0_root6Shape" -p "footFront_R0_root";
	rename -uid "F82CE1BD-4C88-7EB2-90FF-A5AD7844583A";
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
	rename -uid "03CCC876-4509-2939-B3A7-089D6DA4C264";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 3.3306690738754696e-016 0.75996190873515701 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_0_locShape" -p "footFront_R0_0_loc";
	rename -uid "6840E77B-4DD8-E4FA-3446-1EB6DEE5928E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_0_loc4Shape" -p "footFront_R0_0_loc";
	rename -uid "BED4F580-4D62-AF67-E549-CBB166477508";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_0_loc5Shape" -p "footFront_R0_0_loc";
	rename -uid "89D1CB29-4622-CE70-C2A8-80B84F09C78B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_0_loc6Shape" -p "footFront_R0_0_loc";
	rename -uid "35C4682E-4863-4D76-112D-97AC08D2754B";
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
createNode nurbsCurve -n "footFront_R0_0_loc6_0crvShape" -p "footFront_R0_0_loc";
	rename -uid "E6715F46-468B-EAA3-46E0-858FB22C277C";
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
createNode nurbsCurve -n "footFront_R0_0_loc6_1crvShape" -p "footFront_R0_0_loc";
	rename -uid "148075FB-446C-F8CC-7D01-FE88338C3A56";
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
	rename -uid "36414618-4DC8-6635-B8B4-4EA5B5FECC03";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -0.31771180755405126 0.73937999249395858 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_1_locShape" -p "footFront_R0_1_loc";
	rename -uid "9EFF3C48-42F8-2FA1-2205-D5B74E894DC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_1_loc4Shape" -p "footFront_R0_1_loc";
	rename -uid "E21BDE35-4D50-0756-2370-18B286D19CDF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_1_loc5Shape" -p "footFront_R0_1_loc";
	rename -uid "7FFD5354-431E-513E-4A58-1184E5DDAB8D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_1_loc6Shape" -p "footFront_R0_1_loc";
	rename -uid "9A2648E4-4DF8-EF02-A1BC-35A9A6A02A2D";
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
createNode nurbsCurve -n "footFront_R0_1_loc6_0crvShape" -p "footFront_R0_1_loc";
	rename -uid "CF9B4273-4375-2E50-2FF0-6797FAABBCE4";
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
createNode nurbsCurve -n "footFront_R0_1_loc6_1crvShape" -p "footFront_R0_1_loc";
	rename -uid "7F36F893-4CA2-62CB-71AD-C8BF7AD4C1D6";
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
	rename -uid "69E12354-4182-474C-4C26-5BB27F777B8B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.6030074352268453 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	rename -uid "767AF2C9-46AA-289A-D706-B9949C9E4A1E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
	rename -uid "E63E50C6-4B4D-CB58-DD04-3B9E2818DBFC";
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
	rename -uid "C2C2914C-4820-74FA-4587-37AA0481BB2A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -0.31771180755405065 -0.06789990867209994 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_heelShape" -p "footFront_R0_heel";
	rename -uid "A9B0E4F7-4BB7-C0C0-C3AC-6D9C7ABCBFE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_heel4Shape" -p "footFront_R0_heel";
	rename -uid "E875E6BC-4C1C-36B1-A655-3692F8E66236";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_heel5Shape" -p "footFront_R0_heel";
	rename -uid "C8A5154B-4B83-F5A3-52FE-059FC4586A2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_heel6Shape" -p "footFront_R0_heel";
	rename -uid "AB417092-4FC2-6AF2-7832-42879F9576A2";
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
createNode nurbsCurve -n "footFront_R0_heel6_0crvShape" -p "footFront_R0_heel";
	rename -uid "FAB1AEB9-45B9-899C-BAB7-8F98CE97F756";
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
createNode nurbsCurve -n "footFront_R0_heel6_1crvShape" -p "footFront_R0_heel";
	rename -uid "1A80AF6C-4785-F1F2-078E-CAA23024AF56";
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
	rename -uid "04E4D81E-408F-D575-D873-26887827644C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120593 -0.31771180755405043 0.691571853504648 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_outpivotShape" -p "footFront_R0_outpivot";
	rename -uid "011B4310-44B0-1E4A-F6D0-4B8A40B1C3B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_outpivot4Shape" -p "footFront_R0_outpivot";
	rename -uid "D3A03AF6-4586-CB2F-DE37-958FC260A9EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_outpivot5Shape" -p "footFront_R0_outpivot";
	rename -uid "CFBCFF51-47C1-AF12-1E6C-E5B059855955";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_outpivot6Shape" -p "footFront_R0_outpivot";
	rename -uid "1907FE73-4E3C-9732-3C0D-5FB29C79E323";
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
createNode nurbsCurve -n "footFront_R0_outpivot6_0crvShape" -p "footFront_R0_outpivot";
	rename -uid "66A65E25-4136-336B-C64F-EBAB89F43CF0";
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
createNode nurbsCurve -n "footFront_R0_outpivot6_1crvShape" -p "footFront_R0_outpivot";
	rename -uid "518CEDE5-434E-33A0-9B4F-D58D6F416C12";
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
	rename -uid "51E4D71C-4FE7-E686-1E2E-E0B722010516";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288723011 -0.3177118075540506 0.86340011285662044 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999956 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_inpivotShape" -p "footFront_R0_inpivot";
	rename -uid "C80CFB38-4833-97F1-806D-37BD0E1BF14D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_R0_inpivot4Shape" -p "footFront_R0_inpivot";
	rename -uid "2E5025D1-4EF3-08B7-A0C8-BABCD47DFC3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_R0_inpivot5Shape" -p "footFront_R0_inpivot";
	rename -uid "EE9D3BCB-45C8-0C18-38AD-DE8FCE89C68A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_R0_inpivot6Shape" -p "footFront_R0_inpivot";
	rename -uid "A3D727BA-4389-CFA9-4E09-0484F895BD1F";
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
createNode nurbsCurve -n "footFront_R0_inpivot6_0crvShape" -p "footFront_R0_inpivot";
	rename -uid "0B09094B-4085-724D-901C-5499BC88A848";
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
createNode nurbsCurve -n "footFront_R0_inpivot6_1crvShape" -p "footFront_R0_inpivot";
	rename -uid "71D1E9C6-4FE0-DCE7-C421-31A6BD9314B5";
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
	rename -uid "10E2F1C9-4FBC-883D-9A5C-B3AF4E80684C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.6030074352268453 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	rename -uid "7290B4F6-448D-8A5D-E3D3-FB991AA76F4E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig" -p "footFront_R0_1";
	rename -uid "88E57C94-404E-BB59-41A0-E0BFC51ECE31";
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
	rename -uid "2FC17D6F-4F13-8ADA-C659-37B445EA9CE6";
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
	setAttr ".t" -type "double3" 10.017876024668173 5.4248605945583073 2.5678955088137876 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 7.9431701648148056 7.9431701648148048 7.9431701648148065 ;
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
	rename -uid "B02AB5AC-4E7C-3E51-1117-25A91A77A45F";
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
createNode nurbsCurve -n "frontLegUI_R0_root4Shape" -p "frontLegUI_R0_root";
	rename -uid "3BF3A7DE-4CDC-EA76-4802-08BE49AB037E";
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
createNode nurbsCurve -n "frontLegUI_R0_root5Shape" -p "frontLegUI_R0_root";
	rename -uid "9CFA87B7-4B8B-15A3-46A5-F698D048AC00";
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
createNode nurbsCurve -n "frontLegUI_R0_root6Shape" -p "frontLegUI_R0_root";
	rename -uid "C8116208-4420-BED2-47BA-F4AE0A12F784";
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
	rename -uid "CF646BF5-4804-5A95-001B-C1B3295518B4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011703 -5.8086248814742634 -5.5045062328919352 ;
	setAttr ".r" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634871 -2.5020602842634885 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	rename -uid "626F8970-4A14-3966-16F4-1DBB3C357E81";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig" -p "legFront_R0_crv1";
	rename -uid "1DA93673-49BD-D858-9F4F-41BAE6BA5A18";
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
	rename -uid "A11B3673-4108-DF3E-F328-2E9D53F01681";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999889 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "76630AFE-4214-A5B1-88F8-C0B2BCD07256";
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
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint2" -p "shoulder_R0_blade";
	rename -uid "5075BA1F-4A01-88F1-9D38-2084DB82E522";
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
	setAttr ".rsrr" -type "double3" 3.3599751382070151 -13.536129435773152 -14.081236533000395 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint2" -p "shoulder_R0_blade";
	rename -uid "8B8AFC7C-4060-C015-8637-48841ECAEAD9";
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
	rename -uid "2142BCE6-4A77-8A17-4487-5BBF5F1B9F9A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147563666 -2.5303629060493167 -1.9933533667490371 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "89224002-4C3A-9712-32D3-74B029ACBC58";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "B628E2F7-406D-EFF5-700C-58A64D466674";
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
	rename -uid "B5B5EDEA-4F10-DED2-979E-AC822F46B5DC";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000009 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "39ADA6FD-4A0E-0786-7407-778ECFA77BDD";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint5" -p "spine_C0_blade";
	rename -uid "F9DF2C65-4ED4-7966-3379-D7917F6CDEF9";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint5" -p "spine_C0_blade";
	rename -uid "49742F33-4C75-7288-3413-1290B4ABFCDF";
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
	rename -uid "509AAD63-4851-5ADD-817C-C7A329F889C9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "D66ED96E-42D2-AE8C-748C-A892E9283B91";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "4F23854D-4159-DFCF-E242-4D8E99850266";
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
	rename -uid "B8824357-4F07-05FA-F1AE-3A9866CEF34F";
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
	setAttr ".t" -type "double3" 0.21090213141047975 -0.097927178047044983 -2.6808811877076879 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
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
	rename -uid "68879987-47E7-393A-770C-7195D08BA02A";
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
createNode nurbsCurve -n "legBack_L0_root13Shape" -p "legBack_L0_root";
	rename -uid "8D740DE0-4586-63DD-E3F0-7C873B911F1B";
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
createNode nurbsCurve -n "legBack_L0_root14Shape" -p "legBack_L0_root";
	rename -uid "3F28D84F-40CF-3A5F-6CD1-D9866EEDACDD";
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
createNode nurbsCurve -n "legBack_L0_root15Shape" -p "legBack_L0_root";
	rename -uid "F8FD8DA8-4F4E-3117-DE14-FFB39483B211";
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
	rename -uid "03E68EFB-4C06-BD1B-B8DA-539CAD941AED";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.8849813083506888e-015 -1.155950874379851 0.33714517700502222 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_kneeShape" -p "legBack_L0_knee";
	rename -uid "FA7ECA88-43D8-CC9A-9EF6-769BB99EEA38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee13Shape" -p "legBack_L0_knee";
	rename -uid "B826DB0C-476E-8201-1311-F9A4C2F7EC26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_knee14Shape" -p "legBack_L0_knee";
	rename -uid "BB1FFBEF-4C29-8330-9CA2-399A01198662";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_knee15Shape" -p "legBack_L0_knee";
	rename -uid "07F6AA69-446B-B2AB-D27C-6C8838304617";
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
createNode nurbsCurve -n "legBack_L0_knee15_0crvShape" -p "legBack_L0_knee";
	rename -uid "AFAD7362-4938-B8E4-635D-1F95ED6B6658";
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
createNode nurbsCurve -n "legBack_L0_knee15_1crvShape" -p "legBack_L0_knee";
	rename -uid "9651A1C7-4EC9-5EE2-761B-3DA4D9FB5786";
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
	rename -uid "85D38ADB-45CC-B1B8-1A14-D1BABE09592E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -1.4950431842245457 -0.57333193410462324 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_ankleShape" -p "legBack_L0_ankle";
	rename -uid "0794911F-4F74-49F6-7DF0-DDB0FCF68EC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle13Shape" -p "legBack_L0_ankle";
	rename -uid "911593C8-4205-AEAA-82F6-358C8333B343";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_ankle14Shape" -p "legBack_L0_ankle";
	rename -uid "E0440B8C-4C8A-B21F-D602-C4BE50950E03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_ankle15Shape" -p "legBack_L0_ankle";
	rename -uid "8CAAB074-477C-6A68-8083-FD8C04128096";
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
createNode nurbsCurve -n "legBack_L0_ankle15_0crvShape" -p "legBack_L0_ankle";
	rename -uid "77F9D9DD-4EBD-F183-7BC5-5B95154F394D";
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
createNode nurbsCurve -n "legBack_L0_ankle15_1crvShape" -p "legBack_L0_ankle";
	rename -uid "37C02866-426D-6B46-B411-BF833C5A1266";
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
	rename -uid "A57DAE45-49A8-4E3A-D85C-CC85796F74DB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -0.54805580751979255 0.15050522089872898 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_footShape" -p "legBack_L0_foot";
	rename -uid "08F20444-4889-6574-DCB9-4CAD0CA97F58";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot13Shape" -p "legBack_L0_foot";
	rename -uid "B5EB0240-4956-3319-266D-0B841D8D5BB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_foot14Shape" -p "legBack_L0_foot";
	rename -uid "FAB51928-41F4-C7D4-2E58-4992AD87BA4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_foot15Shape" -p "legBack_L0_foot";
	rename -uid "6688FC88-40AB-8B93-6221-01BEF6B58251";
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
createNode nurbsCurve -n "legBack_L0_foot15_0crvShape" -p "legBack_L0_foot";
	rename -uid "1DA7F02A-4931-A37B-9EEB-D59C62F2F6DD";
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
createNode nurbsCurve -n "legBack_L0_foot15_1crvShape" -p "legBack_L0_foot";
	rename -uid "E6F28272-494A-CAD7-B823-E6AFB299CEEC";
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
	rename -uid "14FADC0F-44A1-F58D-E8FE-8188A61C3CC1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 6.5225602696727947e-016 0.28135643819707545 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999922 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_effShape" -p "legBack_L0_eff";
	rename -uid "D0FC1B9F-4EEE-9F22-6163-7491CB239D4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff13Shape" -p "legBack_L0_eff";
	rename -uid "BA67416C-43BA-2119-3381-E78D1272081B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_eff14Shape" -p "legBack_L0_eff";
	rename -uid "0E93C973-44C3-EF57-D560-7BB55294E03F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_eff15Shape" -p "legBack_L0_eff";
	rename -uid "872B1741-4649-A945-FAEA-0C829C61C50F";
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
createNode nurbsCurve -n "legBack_L0_eff15_0crvShape" -p "legBack_L0_eff";
	rename -uid "D85F6C0D-496D-BFD6-85BA-4A92864577EC";
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
createNode nurbsCurve -n "legBack_L0_eff15_1crvShape" -p "legBack_L0_eff";
	rename -uid "F5BA8A3B-4DD7-CCE5-A957-3EBDF7BF6D56";
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
	rename -uid "8A4275F1-4308-2C6F-D4BA-25860BF00995";
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
	setAttr ".t" -type "double3" 1.3322676295501878e-015 6.8001160258290838e-016 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398101 0.1635625476539809 0.16356254765398082 ;
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
	rename -uid "501B8EE6-4FBA-451A-7E7A-1DA0990D769D";
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
createNode nurbsCurve -n "footBack_L0_root13Shape" -p "footBack_L0_root";
	rename -uid "4317D3F2-445E-0C57-A9D9-89BAFF8C1047";
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
createNode nurbsCurve -n "footBack_L0_root14Shape" -p "footBack_L0_root";
	rename -uid "B9D953E9-402F-5A57-1EE8-BA93BA476D80";
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
createNode nurbsCurve -n "footBack_L0_root15Shape" -p "footBack_L0_root";
	rename -uid "5300DC31-4953-FE43-C2CF-DC8818E4CBEF";
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
	rename -uid "23F923B6-4B79-BAE6-C927-E997C931FB6D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-014 2.2204460492503131e-016 0.54565565303279584 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_0_locShape" -p "footBack_L0_0_loc";
	rename -uid "9DC3223D-4860-04EC-BBA3-8DA1B50C0392";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc13Shape" -p "footBack_L0_0_loc";
	rename -uid "4A8949B8-4239-A69E-275F-C083BEE1E9FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc14Shape" -p "footBack_L0_0_loc";
	rename -uid "350AFFA5-47E8-5A9F-A4EC-CEA884B9CD6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_0_loc15Shape" -p "footBack_L0_0_loc";
	rename -uid "C55E7488-42C2-A213-17DA-9C9C9005B3F2";
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
createNode nurbsCurve -n "footBack_L0_0_loc15_0crvShape" -p "footBack_L0_0_loc";
	rename -uid "90796EC7-45C6-23F8-BADD-4CBB6C03F8DF";
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
createNode nurbsCurve -n "footBack_L0_0_loc15_1crvShape" -p "footBack_L0_0_loc";
	rename -uid "FC635F7F-4EF3-7FF8-8CC6-6D9AABB80D51";
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
	rename -uid "6BC10615-4B0B-CC17-60F1-F195A256D7D3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -0.34547277013915556 0.77046072389792641 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
	rename -uid "ED604313-4F9B-BF77-BA07-1597642A4EC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc13Shape" -p "footBack_L0_1_loc";
	rename -uid "3D0F19BB-4C32-E85F-5723-A99B143F6E8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc14Shape" -p "footBack_L0_1_loc";
	rename -uid "90458D22-45E8-F225-0844-1999E1F2806E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_1_loc15Shape" -p "footBack_L0_1_loc";
	rename -uid "D457806E-4EF3-7F82-0E55-CE811A9FD492";
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
createNode nurbsCurve -n "footBack_L0_1_loc15_0crvShape" -p "footBack_L0_1_loc";
	rename -uid "26D303C9-4006-FE94-2848-4A926B6665D3";
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
createNode nurbsCurve -n "footBack_L0_1_loc15_1crvShape" -p "footBack_L0_1_loc";
	rename -uid "C91F1B99-4AFC-A522-002C-3F9ED7A3D3A0";
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
	rename -uid "3A9E49E5-470A-B29B-EBD2-469A849A3E32";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358565 11.584116504196624 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	rename -uid "4EAB67DE-4D4D-5507-4F7E-C7BA4A389B58";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
	rename -uid "E74D8249-48AB-33BD-C30B-94B135E97E0C";
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
	rename -uid "5428AA6C-4BCC-4D75-4CD7-4E868F53F2F3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2434497875801753e-014 -0.34547277013915623 -0.37260003933978503 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_heelShape" -p "footBack_L0_heel";
	rename -uid "80209234-4DA7-8158-550F-4299750765AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel13Shape" -p "footBack_L0_heel";
	rename -uid "D85C7515-498B-150F-7E48-77AD147F80CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_heel14Shape" -p "footBack_L0_heel";
	rename -uid "2DF765F8-4AD6-7783-8641-AB9E711C27AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_heel15Shape" -p "footBack_L0_heel";
	rename -uid "2325F2BE-4693-F35A-B105-90A64F5F14C4";
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
createNode nurbsCurve -n "footBack_L0_heel15_0crvShape" -p "footBack_L0_heel";
	rename -uid "058253B0-4D5B-A664-64F5-0FAC508ACB4A";
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
createNode nurbsCurve -n "footBack_L0_heel15_1crvShape" -p "footBack_L0_heel";
	rename -uid "A8F6A246-49F0-10E0-7D61-4DBEBE563BA9";
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
	rename -uid "86ECB906-46C2-9D57-5FCA-709B43BF0198";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139815 -0.34547277013915501 0.11497296198778884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_outpivotShape" -p "footBack_L0_outpivot";
	rename -uid "97C9656A-4139-FF8A-F2D6-05BC540D3876";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot13Shape" -p "footBack_L0_outpivot";
	rename -uid "73BF643D-4AC9-0E49-74D8-92992182E21A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot14Shape" -p "footBack_L0_outpivot";
	rename -uid "A35A8DEC-4957-F3E3-4042-78B9FD951FD2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_outpivot15Shape" -p "footBack_L0_outpivot";
	rename -uid "BFEB09C5-4AE3-3C61-99DF-92A12C3F66F9";
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
createNode nurbsCurve -n "footBack_L0_outpivot15_0crvShape" -p "footBack_L0_outpivot";
	rename -uid "3E40E2BC-412B-29D6-414D-FEA2CE984166";
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
createNode nurbsCurve -n "footBack_L0_outpivot15_1crvShape" -p "footBack_L0_outpivot";
	rename -uid "DF446B95-4D74-3C66-6B31-D3AD8DD0C143";
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
	rename -uid "AE716A36-4513-3D42-F4D8-DAA29EC3C8C0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215671 -0.34547277013915711 0.21228136011732168 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_inpivotShape" -p "footBack_L0_inpivot";
	rename -uid "D607F5B9-49AF-B386-4244-5B9969DE8DBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot13Shape" -p "footBack_L0_inpivot";
	rename -uid "39BC1CFD-4A5D-5EF7-DD5C-BABC34309982";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot14Shape" -p "footBack_L0_inpivot";
	rename -uid "4164B953-4900-AB8C-D53E-908AB84E8094";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_inpivot15Shape" -p "footBack_L0_inpivot";
	rename -uid "02D17929-496B-5A41-0D36-9ABB85575E96";
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
createNode nurbsCurve -n "footBack_L0_inpivot15_0crvShape" -p "footBack_L0_inpivot";
	rename -uid "EFB41FE8-4B39-61D1-9804-A8A4A021E5CC";
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
createNode nurbsCurve -n "footBack_L0_inpivot15_1crvShape" -p "footBack_L0_inpivot";
	rename -uid "A23B311B-40DC-1BFA-2273-FCBD57C20DBE";
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
	rename -uid "0C4B8FDE-44F0-555C-F542-998A89A2AAC5";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358565 11.584116504196624 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	rename -uid "C123A6FF-4C9B-6598-93B9-B29CD2E619EA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig" -p "footBack_L0_1";
	rename -uid "7342D0FE-47E2-DC5D-17F3-4CA5D76B8108";
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
	rename -uid "C91EEE6F-48CC-9155-B268-8EAF41D618CF";
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
	setAttr ".t" -type "double3" 7.9148715870389736 6.0337539388988626 -0.92016921390297313 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
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
	rename -uid "B166A8C6-4E6A-E9DC-F3F7-DDB3470EC68F";
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
createNode nurbsCurve -n "backLegUI_L0_root13Shape" -p "backLegUI_L0_root";
	rename -uid "4323CA58-4873-69A5-6899-4BBF4755AA65";
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
createNode nurbsCurve -n "backLegUI_L0_root14Shape" -p "backLegUI_L0_root";
	rename -uid "9A8C1C9F-4B21-F0EA-86C3-629F9DA0815C";
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
createNode nurbsCurve -n "backLegUI_L0_root15Shape" -p "backLegUI_L0_root";
	rename -uid "649626B3-49E7-875F-0677-65BF9E7FCBA4";
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
	rename -uid "BED0A4F1-4EF9-3E81-A8E1-C89420151DEF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.79597111178075 -3.2803056907023977 1.8090460715460555 ;
	setAttr ".s" -type "double3" 1.4137227438343882 1.413722743834388 1.413722743834388 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	rename -uid "714CDA06-4215-F2DF-AFE4-BEA24F369B24";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig" -p "legBack_L0_crv1";
	rename -uid "592D135E-4D35-8E4B-D70B-4B9607B4185E";
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
	rename -uid "E042F83D-40D7-1090-2B14-D0BA7F4864FE";
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
	rename -uid "3FE9A7AC-4F6E-79B0-D3C6-D18CD1976DC2";
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
createNode nurbsCurve -n "legBack_R0_root4Shape" -p "legBack_R0_root";
	rename -uid "29AD2757-4FEC-6502-2B76-65B974B0A1B2";
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
createNode nurbsCurve -n "legBack_R0_root5Shape" -p "legBack_R0_root";
	rename -uid "6D8148A4-4B03-C220-F81D-30A55A32375D";
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
createNode nurbsCurve -n "legBack_R0_root6Shape" -p "legBack_R0_root";
	rename -uid "D2B71376-45C4-74C8-5BF1-FE95397A0606";
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
	rename -uid "8DDD33F3-43FC-B993-B734-CCB8EEF2C3AC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.886579864025407e-015 -1.155950874379851 0.33714517700502245 ;
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
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
	rename -uid "EE70CBEC-46DF-AF09-E3F7-6ABDFD800AE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_knee4Shape" -p "legBack_R0_knee";
	rename -uid "45BB11D2-4F6F-0CE0-AC27-ABAD28443B03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_knee5Shape" -p "legBack_R0_knee";
	rename -uid "23585869-4D93-0AE5-F6BD-89A166631692";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_knee6Shape" -p "legBack_R0_knee";
	rename -uid "2115A2D2-4CDF-8F8F-2367-A2A281D43F2E";
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
createNode nurbsCurve -n "legBack_R0_knee6_0crvShape" -p "legBack_R0_knee";
	rename -uid "57132690-49BA-5CA4-ED8A-DC854FAA81AC";
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
createNode nurbsCurve -n "legBack_R0_knee6_1crvShape" -p "legBack_R0_knee";
	rename -uid "CEF0FDFF-48E9-55CD-8F30-22AA46565E6A";
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
	rename -uid "659BD42B-4BB5-265A-4F07-6383FFAB7BF6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 -1.4950431842245466 -0.57333193410462369 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_ankleShape" -p "legBack_R0_ankle";
	rename -uid "20D267CC-4506-5BFD-7267-E8BA5E284CCC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_ankle4Shape" -p "legBack_R0_ankle";
	rename -uid "A53F43BF-4790-D3F0-855C-559CE7C55FAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_ankle5Shape" -p "legBack_R0_ankle";
	rename -uid "2A06E3CA-484D-0555-B748-2C9068293B20";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_ankle6Shape" -p "legBack_R0_ankle";
	rename -uid "931965FE-45F0-B3A7-2249-799ACC1FE502";
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
createNode nurbsCurve -n "legBack_R0_ankle6_0crvShape" -p "legBack_R0_ankle";
	rename -uid "FF704458-4D8C-E41B-FF32-DAAF73AB4B64";
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
createNode nurbsCurve -n "legBack_R0_ankle6_1crvShape" -p "legBack_R0_ankle";
	rename -uid "E38DB267-48B4-184B-C561-90A066DD7E79";
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
	rename -uid "095F317F-4523-470F-4CDF-189DD0273758";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-015 -0.54805580751979166 0.15050522089872853 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000009 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_footShape" -p "legBack_R0_foot";
	rename -uid "7CA5E681-4FE2-9B27-DCC5-E798D7CCBC47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_foot4Shape" -p "legBack_R0_foot";
	rename -uid "CDBD3549-4324-59CB-65C9-2A853DF23DEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_foot5Shape" -p "legBack_R0_foot";
	rename -uid "937A58D1-45CA-7D63-F2B7-7A8D897AD572";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_foot6Shape" -p "legBack_R0_foot";
	rename -uid "457595DF-4B87-3331-8DF0-ACA2B56791A4";
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
createNode nurbsCurve -n "legBack_R0_foot6_0crvShape" -p "legBack_R0_foot";
	rename -uid "0BC7C5B9-4D4B-32D1-D4CC-B3994470A952";
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
createNode nurbsCurve -n "legBack_R0_foot6_1crvShape" -p "legBack_R0_foot";
	rename -uid "E6DACA04-472F-3B69-7B10-BB9F016DC5B3";
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
	rename -uid "674B8B8C-45EF-D958-58EC-9E9FED3287C8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9984014443252818e-015 3.8857805861880479e-016 0.28135643819707568 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999922 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_effShape" -p "legBack_R0_eff";
	rename -uid "37BCD72C-4372-7802-07C5-8FAA2E09BF15";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_R0_eff4Shape" -p "legBack_R0_eff";
	rename -uid "560E791B-4BB5-76B7-B85D-82A3D8A85C56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_R0_eff5Shape" -p "legBack_R0_eff";
	rename -uid "1F27BCE4-4414-5A18-9B6D-A4AE4B3DA776";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_R0_eff6Shape" -p "legBack_R0_eff";
	rename -uid "D0095304-4011-1255-8996-76BAC2CF329B";
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
createNode nurbsCurve -n "legBack_R0_eff6_0crvShape" -p "legBack_R0_eff";
	rename -uid "8D9808E9-44FB-43E4-9F2E-F89D6108B7B2";
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
createNode nurbsCurve -n "legBack_R0_eff6_1crvShape" -p "legBack_R0_eff";
	rename -uid "1B35B5AC-4023-43FC-D935-3BA4376106BE";
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
	rename -uid "4E4FD489-4C6A-DCE8-22E6-48BD126E4758";
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
	setAttr ".t" -type "double3" 1.1102230246251565e-015 4.8572257327350599e-016 6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398101 0.1635625476539809 0.16356254765398084 ;
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
	rename -uid "DAE650FA-45A1-B1F7-A5DB-DD9D5B13A118";
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
createNode nurbsCurve -n "footBack_R0_root4Shape" -p "footBack_R0_root";
	rename -uid "1DC3D28E-4410-396A-8082-D59E0CC7E6A9";
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
createNode nurbsCurve -n "footBack_R0_root5Shape" -p "footBack_R0_root";
	rename -uid "3433FE6A-4C66-76B8-788E-E79ACDED4075";
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
createNode nurbsCurve -n "footBack_R0_root6Shape" -p "footBack_R0_root";
	rename -uid "EEC3072D-465F-D52B-8E5A-E99607D6C6F9";
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
	rename -uid "86CBC2D0-498D-CBEA-653F-2FBF7AC589C0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-015 3.3306690738754696e-016 0.54565565303279229 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_0_locShape" -p "footBack_R0_0_loc";
	rename -uid "B4C95464-4CB3-6290-C1C2-30BEAEA90031";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_0_loc4Shape" -p "footBack_R0_0_loc";
	rename -uid "0C91783E-4FF9-8731-CE03-B7AFEB2D41BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_0_loc5Shape" -p "footBack_R0_0_loc";
	rename -uid "710F0A6D-42C2-6C93-5F56-CCBF61AE7F1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_0_loc6Shape" -p "footBack_R0_0_loc";
	rename -uid "F418424F-458F-2DAA-2BEB-30A0290F7AD2";
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
createNode nurbsCurve -n "footBack_R0_0_loc6_0crvShape" -p "footBack_R0_0_loc";
	rename -uid "D3A3A492-45CD-21BD-AB7E-62BDEB657305";
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
createNode nurbsCurve -n "footBack_R0_0_loc6_1crvShape" -p "footBack_R0_0_loc";
	rename -uid "DB0A5E9C-404A-7935-4056-59B8128F56A3";
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
	rename -uid "5CC729E9-4265-C57D-AFCE-0194001F4BA1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -0.34547277013915578 0.77046072389792464 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_1_locShape" -p "footBack_R0_1_loc";
	rename -uid "E153EBD1-4621-6486-83BB-3B89E2CEADF3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_1_loc4Shape" -p "footBack_R0_1_loc";
	rename -uid "E0AD1E02-4002-44EB-3FAA-739E4A3A9F73";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_1_loc5Shape" -p "footBack_R0_1_loc";
	rename -uid "08495225-4EA7-ADAD-3D83-C7849C856AE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_1_loc6Shape" -p "footBack_R0_1_loc";
	rename -uid "9CC29541-4276-F6DF-5481-BC8606C20DBC";
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
createNode nurbsCurve -n "footBack_R0_1_loc6_0crvShape" -p "footBack_R0_1_loc";
	rename -uid "874C8EF9-4C01-C5E5-9EAE-8993E35BD0CC";
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
createNode nurbsCurve -n "footBack_R0_1_loc6_1crvShape" -p "footBack_R0_1_loc";
	rename -uid "26827D3C-4E8D-638F-BC07-D1B03ADB3E13";
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
	rename -uid "49583AE6-4035-BF2B-8A82-5EB7966C20F6";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718955 -0.49678747209357776 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725792 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	rename -uid "781CC81B-4D38-16EA-571A-BFAE0ABB9CC8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
	rename -uid "BCD93F36-4342-15CF-6D11-8FBB3B3DE977";
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
	rename -uid "ADBB9C71-498E-A1CD-8DD4-E9BAC82CDE60";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0658141036401503e-014 -0.34547277013915578 -0.37260003933978858 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_heelShape" -p "footBack_R0_heel";
	rename -uid "A0FB7DA9-4666-B6E2-86B9-4582A9E315BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_heel4Shape" -p "footBack_R0_heel";
	rename -uid "AED34A1E-4293-7EF3-2A2E-22B86802CC6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_heel5Shape" -p "footBack_R0_heel";
	rename -uid "09C5C44E-4E52-7D20-6F3A-17A46A73AA12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_heel6Shape" -p "footBack_R0_heel";
	rename -uid "2E2668E2-443C-1734-A2A5-00BE1E9E15A1";
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
createNode nurbsCurve -n "footBack_R0_heel6_0crvShape" -p "footBack_R0_heel";
	rename -uid "D90172A2-455A-6BEE-E24D-BBBF66AE1806";
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
createNode nurbsCurve -n "footBack_R0_heel6_1crvShape" -p "footBack_R0_heel";
	rename -uid "BB0E583D-4561-9368-AF20-C9B3FD84A301";
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
	rename -uid "43E5750A-434C-D7FD-4CDB-CCB35CDCFD21";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139833 -0.34547277013915578 0.11497296198778528 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_outpivotShape" -p "footBack_R0_outpivot";
	rename -uid "79755809-4D53-3E46-FB01-36BD379C00A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_outpivot4Shape" -p "footBack_R0_outpivot";
	rename -uid "66AAE6E1-4CB5-1E2F-1350-CBB0B98D36FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_outpivot5Shape" -p "footBack_R0_outpivot";
	rename -uid "76C342B2-4444-9064-E24D-CDB9DDD79B22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_outpivot6Shape" -p "footBack_R0_outpivot";
	rename -uid "120B097B-47DA-1ECE-6839-F292546E9D26";
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
createNode nurbsCurve -n "footBack_R0_outpivot6_0crvShape" -p "footBack_R0_outpivot";
	rename -uid "55D139EB-4BDE-F110-3EC4-9E824AAA59AD";
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
createNode nurbsCurve -n "footBack_R0_outpivot6_1crvShape" -p "footBack_R0_outpivot";
	rename -uid "F1148499-415A-EFA6-BD1A-51AC62AE006D";
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
	rename -uid "9EB018DB-4233-4B87-1490-20B45272F858";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215636 -0.34547277013915573 0.21228136011731635 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_inpivotShape" -p "footBack_R0_inpivot";
	rename -uid "635F663E-40AA-1EBD-1596-BDA7BDF4FE6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_R0_inpivot4Shape" -p "footBack_R0_inpivot";
	rename -uid "AAABE5A2-4E04-9F11-4834-B2873D4ABAAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_R0_inpivot5Shape" -p "footBack_R0_inpivot";
	rename -uid "FCE9665F-4D07-2A54-A744-D08426C55493";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_R0_inpivot6Shape" -p "footBack_R0_inpivot";
	rename -uid "61E7004E-40E6-A771-F94B-6EB71E9CB63B";
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
createNode nurbsCurve -n "footBack_R0_inpivot6_0crvShape" -p "footBack_R0_inpivot";
	rename -uid "C267FF9C-4DA0-9BF0-C4A3-3696D48A8CBB";
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
createNode nurbsCurve -n "footBack_R0_inpivot6_1crvShape" -p "footBack_R0_inpivot";
	rename -uid "EAD770B3-43DB-A100-EB24-8297A0EA54C5";
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
	rename -uid "3CD41C79-4D50-A0C3-77D8-CB90F3B48C49";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718955 -0.49678747209357776 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725792 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	rename -uid "31BE20EE-48B3-1A0B-5F33-B9931712EEB7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig" -p "footBack_R0_1";
	rename -uid "219EC83F-4B32-BF69-C85E-69805FB79817";
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
	rename -uid "1C4BBB51-43BA-456C-2B6C-D0A13F92769C";
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
	setAttr ".t" -type "double3" 7.9148715870389861 6.0337539388988537 -0.92016921390296957 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
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
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 0.5;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "backLegUI_R0_rootShape" -p "backLegUI_R0_root";
	rename -uid "ABB071D9-42A3-77AF-C914-8ABCE9014C71";
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
createNode nurbsCurve -n "backLegUI_R0_root4Shape" -p "backLegUI_R0_root";
	rename -uid "FDDEBC59-4480-8114-97E4-10AE8A242769";
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
createNode nurbsCurve -n "backLegUI_R0_root5Shape" -p "backLegUI_R0_root";
	rename -uid "DAF2FCF3-4FBE-0215-9F8A-108184B1E83A";
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
createNode nurbsCurve -n "backLegUI_R0_root6Shape" -p "backLegUI_R0_root";
	rename -uid "289930D6-41B7-EA2C-9CA6-1AB5DB1B8757";
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
	rename -uid "C62E9587-4AC1-6320-EDC7-C088F2BA0113";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807555 -3.2803056907023964 1.8090460715460535 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.413722743834388 -1.4137227438343878 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	rename -uid "29807DD4-48E8-3240-4CC7-AF8AB417CA10";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig" -p "legBack_R0_crv1";
	rename -uid "580CC2F4-46DF-EB7F-734E-2EBA8669CF3B";
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
createNode animCurveUU -n "spine_C0_root_st_profile";
	rename -uid "A2932705-4F24-447A-E36C-B1821A0353C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "CBE37DF7-45B4-1A08-E4C2-1E89DD3B7C24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "E0E29812-4EC3-1196-56B8-D3A7B1E5E5C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "DB9EA6C6-478D-9F72-D907-28BC3A046BD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns114";
	rename -uid "D90A82A0-40C2-C43A-12F7-6B89B85B6412";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns114Set";
	rename -uid "F437246A-4B56-1094-0808-4E8DC450669C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns114GroupId";
	rename -uid "F4E0F35A-4272-DB17-270A-95BBBA19FE95";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns114GroupParts";
	rename -uid "B32519BE-4E56-C821-7FDA-87BEFD564E5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak114";
	rename -uid "97DEB7EA-4B06-0CFD-A9F7-DAB3A4B46546";
createNode objectSet -n "tweakSet114";
	rename -uid "E6C9CC91-48A7-D5BD-74C9-B0B786AF2800";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId228";
	rename -uid "E9E8DDB1-45DE-1CA2-1D83-95A0F1F2D535";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts228";
	rename -uid "2D5AF131-4082-CD4B-1436-55A92CD99FFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns115";
	rename -uid "A7C6C49E-449F-5CD9-5F83-07A501C74217";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns115Set";
	rename -uid "076AB394-4B23-4DDF-923B-629009F3C122";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns115GroupId";
	rename -uid "29A8BB99-41A2-42B7-095D-2C925EC60982";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns115GroupParts";
	rename -uid "E642F005-42BE-0C8A-80FA-25826AFF2B7F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak115";
	rename -uid "BF66D231-4ED2-DD10-DDB2-FEAB5F43B9B9";
createNode objectSet -n "tweakSet115";
	rename -uid "6124CB30-4B48-49E4-44B5-9B9576128C63";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId230";
	rename -uid "B2C3960E-4C0F-2CFD-7D7C-9895E1446D5D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts230";
	rename -uid "D7F0DC36-4D2E-DF34-1B20-9B8E66DB95FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns113";
	rename -uid "B0BED032-48A7-A3A8-9440-AE917F22F874";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns113Set";
	rename -uid "B1342828-489F-CAD0-8424-6A84B6FD64BB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns113GroupId";
	rename -uid "FC89FA57-48ED-CA3A-8513-AB9BFD841973";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns113GroupParts";
	rename -uid "8D72628C-4B9A-05AE-D232-0CB6D79BB24D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak113";
	rename -uid "AA8E7D73-4A27-E113-83C5-55B83133CCA5";
createNode objectSet -n "tweakSet113";
	rename -uid "EDEAF2FB-4267-7DC8-9C4F-EF8E1589F2FC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId226";
	rename -uid "755015DE-429D-C268-B745-6FA11E5656DC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts226";
	rename -uid "3604677A-4F46-63C9-1D39-D88B74ABB906";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns116";
	rename -uid "9EB722A8-4CD0-4200-6B29-85AE3ED7F33F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns116Set";
	rename -uid "A8C3E000-4463-381F-D45E-D38DB1ED78EE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns116GroupId";
	rename -uid "E7FC2538-4BBB-18B9-BC43-3580D350C67D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns116GroupParts";
	rename -uid "D39052B3-48BD-2F16-B3A8-4BA8438AEB8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak116";
	rename -uid "E44B1E87-438F-D0F3-5C53-0ABF33EFEC91";
createNode objectSet -n "tweakSet116";
	rename -uid "CBF93B70-435B-D3BD-C6ED-0C86D9E12045";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId232";
	rename -uid "34428D0B-4B1A-6DA2-E52C-5E8BF402EE5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts232";
	rename -uid "9B65E6DD-43BE-F373-A094-23BE8EAF892E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns117";
	rename -uid "A02D1621-446E-CD47-1F9C-8EB9232C1AB6";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns117Set";
	rename -uid "12E2A42F-44F3-48D6-9F6A-8E92D7700F70";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns117GroupId";
	rename -uid "FEF4C4A4-4328-143D-8116-AEAE920C36BA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns117GroupParts";
	rename -uid "B3D17574-46E1-39AA-F67B-9594A28BFD61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak117";
	rename -uid "71F58F7F-462F-179E-0A66-CD87DB867D5A";
createNode objectSet -n "tweakSet117";
	rename -uid "99E933C1-4977-EA10-639B-5D879E5E6EFF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId234";
	rename -uid "A6F4586C-4C4A-E999-21D8-BC9C241E6CF5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts234";
	rename -uid "210C873C-44FA-C1E6-7C6B-EE9B5D6A19EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns118";
	rename -uid "0CFF584C-4479-2CAD-C1CB-CA90752EA825";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns118Set";
	rename -uid "42D09362-4FC6-CB58-D5BA-C9861470BE70";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns118GroupId";
	rename -uid "A91B9A85-4025-EBC8-FF3E-F9926231D90B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns118GroupParts";
	rename -uid "0BB23562-4A4B-B880-CDFE-84B715929B0B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak118";
	rename -uid "0E7CB838-4883-8971-974F-EAB7C99052C0";
createNode objectSet -n "tweakSet118";
	rename -uid "FDDD6CD8-40DE-37B0-F669-2ABB44AAB6DA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId236";
	rename -uid "799432C6-40A2-FAC6-5899-4282D81BCCE9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts236";
	rename -uid "A0E4FC7C-4926-20BC-830C-F4869BAAEC1D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns112";
	rename -uid "79C0EE88-47F8-0482-73DC-3191F6E9E2B5";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns112Set";
	rename -uid "C692F359-4756-37DB-FAE5-F6BE80A6714F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns112GroupId";
	rename -uid "EF4B62CE-41FF-9832-63FE-C3A0B7C539A8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns112GroupParts";
	rename -uid "0D16D420-4023-12E0-D002-E09D0141988A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak112";
	rename -uid "FE61DAB3-4A90-5DF7-7A6F-8B9642F2ECC5";
createNode objectSet -n "tweakSet112";
	rename -uid "18DC09A5-4CDC-3BEA-DD35-739A2C108EE0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId224";
	rename -uid "9EE65AAD-4FDB-3204-9E5E-80A83F3D2A52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts224";
	rename -uid "A7EB9F42-459D-C176-3913-149D08A905EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion21";
	rename -uid "8F5602EF-47F9-D52D-17AE-A8BFCCCD65B1";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns111";
	rename -uid "5D983D17-48A2-D3CA-81B4-C9BB1022FE8F";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns111Set";
	rename -uid "A2FE0E29-4C67-1905-044A-5DBB2CE4D07A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns111GroupId";
	rename -uid "BD61850A-4137-0FCF-FC78-0E898197B6F4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns111GroupParts";
	rename -uid "8F665DC7-4A58-BEC1-CABC-65B0F82B4C5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak111";
	rename -uid "938BF900-412B-5E1A-4127-B5952E3F590B";
createNode objectSet -n "tweakSet111";
	rename -uid "C52937B7-4C75-1478-F55B-2A9269325B43";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId222";
	rename -uid "CFC39209-496B-AB01-D03B-DD906E20C8BB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts222";
	rename -uid "960D4214-4039-A543-C7C2-EF8D3F957F25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile";
	rename -uid "B710F484-4D15-D625-DA01-86A9AD8C21C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile";
	rename -uid "ED1CB25F-4DB8-F9FF-6D7D-0ABF04A8EE5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns121";
	rename -uid "480EEC4F-40D7-D110-F5EF-F6B99CDAE266";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns121Set";
	rename -uid "BC509328-4443-5225-5DEC-DABC4BC7F18D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns121GroupId";
	rename -uid "CA79347A-401B-0DFB-EDAF-9D9E8B70A0CB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns121GroupParts";
	rename -uid "7E32F193-486C-8C9A-4485-F3BDA31D5E31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak121";
	rename -uid "B10F4B16-4ADC-563F-F3DE-7C958FC4B0D9";
createNode objectSet -n "tweakSet121";
	rename -uid "D6B90756-4E8B-ACD2-C238-13A13802C4A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId242";
	rename -uid "7F01874E-4A99-F906-D0B0-63B2A48DA6A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts242";
	rename -uid "70303F80-49E4-1963-E67B-E199D5493076";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns122";
	rename -uid "F2AC6B86-4552-F2D7-8817-5491A880C9B9";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns122Set";
	rename -uid "C9BB91C2-43C5-83D7-C926-01AE4212B843";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns122GroupId";
	rename -uid "D754D88E-4596-861D-2D4B-658370C81177";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns122GroupParts";
	rename -uid "D9E8F00D-4921-7405-19B9-169067FA72C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak122";
	rename -uid "469ACC78-4525-3C84-3635-D18183F3E35C";
createNode objectSet -n "tweakSet122";
	rename -uid "2179EA51-427A-EF4A-1A09-64B94457E34F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId244";
	rename -uid "E49B8D21-49C8-3B54-E1CE-3C9BF868B920";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts244";
	rename -uid "D8C66845-4375-77E4-E4BC-E490FD385CC7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns120";
	rename -uid "66B6F0BE-4CAF-DA52-C842-FFB1E6B385C5";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns120Set";
	rename -uid "9F8CF640-4C35-F27F-764D-D6921E479ACB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns120GroupId";
	rename -uid "982BE215-4F81-DA41-3B17-F8A40CB406AA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns120GroupParts";
	rename -uid "D1E2C9B1-42B1-507B-ACE5-DB8C0DBA9359";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak120";
	rename -uid "46DAA1B7-44B5-BEA6-9BE4-F88F2AA48D85";
createNode objectSet -n "tweakSet120";
	rename -uid "E0F9363F-4DC9-F7F0-3E81-F887A6D0351E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId240";
	rename -uid "47B4561F-46DE-D690-25B1-1D8095DC214A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts240";
	rename -uid "811DE030-485C-A443-3955-AEB70AD6DFC1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion22";
	rename -uid "5513C60B-4819-9003-7887-CBA618C43572";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns119";
	rename -uid "12CC2034-4285-D83C-2101-E19AE9B4B367";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns119Set";
	rename -uid "69AE1672-41D3-3308-3E51-40A9F8E6CDF8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns119GroupId";
	rename -uid "0A93A86D-4549-2B38-A597-5EB5E0AC5E25";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns119GroupParts";
	rename -uid "F0FD7B33-4AD5-95C8-CEDB-22BA58B1CED7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak119";
	rename -uid "5487CD79-4618-BAD9-61BF-148E909D7F26";
createNode objectSet -n "tweakSet119";
	rename -uid "07990AD5-4993-6496-925C-2F947C3322FF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId238";
	rename -uid "F09574F8-4A43-F332-29BC-29A092216FE9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts238";
	rename -uid "C0863426-479C-4FD9-0F91-D49955126EBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile1";
	rename -uid "11A2D897-4AE9-9841-D6C1-F3BDAA7338F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile1";
	rename -uid "75F5B0D1-4C02-5428-550B-8B98570DD750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns125";
	rename -uid "1FAB5CC7-427F-14A2-78FF-08A5D04A31C0";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns125Set";
	rename -uid "EE905A6A-4DC8-F4AE-3169-BB973184CA00";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns125GroupId";
	rename -uid "16FAAF62-400A-3175-D5B8-189595DC14C5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns125GroupParts";
	rename -uid "F0FE2BDD-4DDC-1F55-41C0-C387B38EED5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak125";
	rename -uid "87EFE31C-43AB-6271-C030-879374509DC8";
createNode objectSet -n "tweakSet125";
	rename -uid "92E01619-468F-2611-2DC3-398B3A024E4F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId250";
	rename -uid "91076EE5-4246-E270-AE6A-278AC2250627";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts250";
	rename -uid "377D9CB3-44A7-957C-1C96-1F8149DEA4FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns126";
	rename -uid "957E1FF3-4D5E-3D55-20BA-7F8E707D6078";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns126Set";
	rename -uid "A9C8C41A-428D-4EEB-9E3A-3590B35EA4A6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns126GroupId";
	rename -uid "E3C0981C-4445-2C20-7DBB-D9AC51568F7B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns126GroupParts";
	rename -uid "78A6BFA0-4F4E-5B27-A524-C49C0B010F46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak126";
	rename -uid "A2A82A04-456D-C058-2B9E-84BEE05F9CB5";
createNode objectSet -n "tweakSet126";
	rename -uid "50762626-4F4D-473E-3193-3AA493DC8E6E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId252";
	rename -uid "3F8DDBFA-43EB-BC0B-FE6E-D39714ABFC42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts252";
	rename -uid "B6A8B18A-4E5B-94C2-70E7-A0B29CC273D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns124";
	rename -uid "1F26F6B6-4CC8-53C4-021B-CFB752416195";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns124Set";
	rename -uid "9EEB9485-4C09-9F32-AA94-0D844859F217";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns124GroupId";
	rename -uid "676C37D2-47BA-55DF-8424-A2A1BCB2CD6C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns124GroupParts";
	rename -uid "95649FE6-4ED1-1F16-8473-8E906CC189D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak124";
	rename -uid "3C28F603-44B4-E649-DE00-6B8873FC5268";
createNode objectSet -n "tweakSet124";
	rename -uid "4C7AFB66-4AAE-BF29-D7B8-DBA78B3C4B42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId248";
	rename -uid "1DC024D2-4751-D980-9389-5E9C04F834AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts248";
	rename -uid "FB9B6FD5-4DB9-8B0D-12C9-7A8166D193ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion23";
	rename -uid "4CAF2E4F-4783-A8F9-8CB0-FB81AEA300C4";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns123";
	rename -uid "266ACBA9-4DFE-3731-3FB9-60838063B762";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns123Set";
	rename -uid "A6EF0346-4986-36A2-88C8-9BBC872645E7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns123GroupId";
	rename -uid "22771444-40EC-A405-C453-6ABA5F0A7E1B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns123GroupParts";
	rename -uid "CF20643A-45DD-78B9-DD14-90A08E2B9FA4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak123";
	rename -uid "1460AE92-4A66-0A66-54CD-13B6ED6E30E5";
createNode objectSet -n "tweakSet123";
	rename -uid "E1370850-4811-8257-B5B1-618D35EC843E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId246";
	rename -uid "CAA71F08-431C-9D4C-16A4-169FBB51B115";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts246";
	rename -uid "B6435D86-4C79-FBA1-FF66-E1B69B8BAA7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion20";
	rename -uid "E5C842B1-450D-3CE2-E0D0-F78C9E2CCDC7";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns110";
	rename -uid "986ECF90-4DB9-B159-7081-91B3ED4B5369";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns110Set";
	rename -uid "B6B00C83-466A-CF2D-E328-F986088E5499";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns110GroupId";
	rename -uid "37A4DAE5-4F79-9C5D-7133-2C80D154EC13";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns110GroupParts";
	rename -uid "A30F95B8-4A7C-09D5-1210-F6B5D30A7B96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak110";
	rename -uid "F0C373C4-4C86-C569-8B93-A6B7B1D7BC68";
createNode objectSet -n "tweakSet110";
	rename -uid "CC7B8C0C-4FD6-4F9A-A882-9B897720276F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId220";
	rename -uid "6D57D940-4499-57D3-2BCC-20A8EC92C842";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts220";
	rename -uid "6789F7D6-4414-B764-CE1F-B5B92B42A980";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile";
	rename -uid "9E8296DE-4410-7090-8C80-9499396CD7E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile";
	rename -uid "1BA6A361-4D30-5A7B-9A57-43A529D6E42F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns128";
	rename -uid "5C80668D-4C33-0C95-D1F3-B5A1EE8B3BDE";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns128Set";
	rename -uid "4FA278F6-4811-3593-ECF8-6DBEB98D07DD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns128GroupId";
	rename -uid "1AFD857B-4925-263D-ED67-0B9DD1C25D64";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns128GroupParts";
	rename -uid "483D29BA-4B17-09B4-DAFF-EC9A81F46131";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak128";
	rename -uid "8BC91C42-4D85-091F-6F90-AA981376C7CC";
createNode objectSet -n "tweakSet128";
	rename -uid "FC4E1CB1-4DA9-CEED-9653-22B6A974CDD2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId256";
	rename -uid "8867317B-4553-DBB5-EFAB-F48A29C8895C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts256";
	rename -uid "806B7E69-4679-A8D8-05A5-1CAD5C64CB9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns129";
	rename -uid "6A03A2B7-42FB-4D41-0E82-6D87951015C8";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns129Set";
	rename -uid "F091598A-4313-DC37-2469-E7931066A234";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns129GroupId";
	rename -uid "9FC94F52-4D48-5F39-3AA1-BAB0F403C5C4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns129GroupParts";
	rename -uid "D09AFD1E-4ED3-129C-BD88-93AE2B8B7040";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak129";
	rename -uid "219BDA31-48D1-76AD-B682-059503480BF1";
createNode objectSet -n "tweakSet129";
	rename -uid "C9787966-4487-674C-EAC5-81A154E03D88";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId258";
	rename -uid "65DA0841-42EE-D5C2-CFD7-4196630BE02C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts258";
	rename -uid "CC89C833-4037-5CA1-09CC-86B80225E9DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns127";
	rename -uid "FB64651D-4978-D03A-1135-39BBEB1BE282";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns127Set";
	rename -uid "1CD1D958-437F-F115-6430-FA8B9856C542";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns127GroupId";
	rename -uid "38CDCAD5-46A9-CE4E-D8BC-84B1EA408874";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns127GroupParts";
	rename -uid "282864F1-4AFC-BCB6-B0D2-C385FF36C0EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak127";
	rename -uid "E3DD894E-4C7E-5415-A655-9A8344DD3ED4";
createNode objectSet -n "tweakSet127";
	rename -uid "3F5CE87E-44C9-EB10-76A9-68B6E9961C42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId254";
	rename -uid "78D448E8-49C6-87E5-5C47-26B45F3CD276";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts254";
	rename -uid "DD6BE5DA-4080-2A49-347C-5D9CF8653B21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile1";
	rename -uid "674FF8CF-4E28-BE37-BF45-C7811C4851CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile1";
	rename -uid "8A7B0A2F-4995-E2AC-7B09-5FA74AE3B7EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns131";
	rename -uid "7F027C4F-41C3-5516-6670-02B37976BF7F";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns131Set";
	rename -uid "6F71A624-4B33-4FF4-1AAB-D8A43F6A9BFC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns131GroupId";
	rename -uid "E174403B-4F85-622F-16BE-61AE89EE7093";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns131GroupParts";
	rename -uid "89D57E0F-47E8-50D5-222A-04BB0D32C98C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak131";
	rename -uid "2B24CBB9-4825-2328-8F40-46BF30B2AF27";
createNode objectSet -n "tweakSet131";
	rename -uid "1B12508B-4030-1284-25FD-869323C6EC9D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId262";
	rename -uid "879400A2-45E5-B157-F3FB-D38C96B8988F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts262";
	rename -uid "21316EDF-4C1C-7388-FCDE-94A4CC2A9CAD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns132";
	rename -uid "AADEA845-4281-9832-F030-6AB35C1648D7";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns132Set";
	rename -uid "7F9F1DA6-446C-F29A-398C-BA95612E5193";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns132GroupId";
	rename -uid "1634EC5D-4BFD-3749-6048-22A93480B5F7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns132GroupParts";
	rename -uid "1DD63780-495A-EB4A-28AF-41AE1F208B55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak132";
	rename -uid "D79D8388-4CB9-AE23-0963-84BF5B2BCB08";
createNode objectSet -n "tweakSet132";
	rename -uid "C6365E96-40AA-23F6-F440-7EB7B5256B4C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId264";
	rename -uid "19F541E6-4908-BFAC-6BBB-98B4195AB0F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts264";
	rename -uid "A33C810E-4569-A05F-779C-D8A2320C0161";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns130";
	rename -uid "6505570E-4557-FC1B-DE11-9E8ADE638A82";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns130Set";
	rename -uid "48A557BD-46EB-9792-21A3-01AE37BB2113";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns130GroupId";
	rename -uid "D64F6438-4460-5882-AE5B-0B88B10F4812";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns130GroupParts";
	rename -uid "90E1F875-4B77-B7ED-1CB8-25B62B55FFD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak130";
	rename -uid "42693BD1-42AC-1978-6A35-99B793BD413A";
createNode objectSet -n "tweakSet130";
	rename -uid "F19EDAF5-435E-D31C-8890-E79E5F9A8E7D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId260";
	rename -uid "67BBA1C2-4C8A-88AB-E93E-D0B194EB3CAC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts260";
	rename -uid "32FE2EAD-4872-AFDD-AAF1-A2913848D4DE";
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
connectAttr "spine_C0_root_st_profile.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile.o" "spine_C0_root.sq_profile";
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns114.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak114.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns114GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns114Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId228.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet114.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns115.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak115.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns115GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns115Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId230.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet115.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns113.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak113.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns113GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns113Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId226.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet113.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns116.og[0]" "mouth_C0_crv5Shape.cr";
connectAttr "tweak116.pl[0].cp[0]" "mouth_C0_crv5Shape.twl";
connectAttr "mgear_curveCns116GroupId.id" "mouth_C0_crv5Shape.iog.og[0].gid";
connectAttr "mgear_curveCns116Set.mwc" "mouth_C0_crv5Shape.iog.og[0].gco";
connectAttr "groupId232.id" "mouth_C0_crv5Shape.iog.og[1].gid";
connectAttr "tweakSet116.mwc" "mouth_C0_crv5Shape.iog.og[1].gco";
connectAttr "mgear_curveCns117.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak117.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns117GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns117Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId234.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet117.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns118.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak118.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns118GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns118Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId236.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet118.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns112.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak112.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns112GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns112Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId224.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet112.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint5.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint5.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint5.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint5.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint5.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint5.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint5.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint5.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint5.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint5.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint5.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint5.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint5.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint5.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint5.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint5.w0" "neck_C0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint5.wum";
connectAttr "unitConversion21.o" "neck_C0_blade_aimConstraint5.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint5.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint5.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint5.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint5.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint5.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint5.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint5.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint5.w0" "neck_C0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns111.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak111.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns111GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns111Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId222.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet111.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "legFront_L0_root_st_profile.o" "legFront_L0_root.st_profile";
connectAttr "legFront_L0_root_sq_profile.o" "legFront_L0_root.sq_profile";
connectAttr "mgear_curveCns121.og[0]" "footFront_L0_crvShape.cr";
connectAttr "tweak121.pl[0].cp[0]" "footFront_L0_crvShape.twl";
connectAttr "mgear_curveCns121GroupId.id" "footFront_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns121Set.mwc" "footFront_L0_crvShape.iog.og[0].gco";
connectAttr "groupId242.id" "footFront_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet121.mwc" "footFront_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns122.og[0]" "footFront_L0_Shape1.cr";
connectAttr "tweak122.pl[0].cp[0]" "footFront_L0_Shape1.twl";
connectAttr "mgear_curveCns122GroupId.id" "footFront_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns122Set.mwc" "footFront_L0_Shape1.iog.og[0].gco";
connectAttr "groupId244.id" "footFront_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet122.mwc" "footFront_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns120.og[0]" "legFront_L0_crvShape1.cr";
connectAttr "tweak120.pl[0].cp[0]" "legFront_L0_crvShape1.twl";
connectAttr "mgear_curveCns120GroupId.id" "legFront_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns120Set.mwc" "legFront_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId240.id" "legFront_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet120.mwc" "legFront_L0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint5.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint5.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint5.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint5.crx" "shoulder_L0_blade.rx" -l on;
connectAttr "shoulder_L0_blade_aimConstraint5.cry" "shoulder_L0_blade.ry" -l on;
connectAttr "shoulder_L0_blade_aimConstraint5.crz" "shoulder_L0_blade.rz" -l on;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint5.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint5.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint5.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint5.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint5.cro";
connectAttr "shoulder_L0_0_loc.t" "shoulder_L0_blade_aimConstraint5.tg[0].tt";
connectAttr "shoulder_L0_0_loc.rp" "shoulder_L0_blade_aimConstraint5.tg[0].trp";
connectAttr "shoulder_L0_0_loc.rpt" "shoulder_L0_blade_aimConstraint5.tg[0].trt"
		;
connectAttr "shoulder_L0_0_loc.pm" "shoulder_L0_blade_aimConstraint5.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint5.w0" "shoulder_L0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint5.wum";
connectAttr "unitConversion22.o" "shoulder_L0_blade_aimConstraint5.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint5.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint5.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint5.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint5.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint5.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint5.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint5.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint5.w0" "shoulder_L0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns119.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak119.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns119GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns119Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId238.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet119.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "legFront_R0_root_st_profile1.o" "legFront_R0_root.st_profile";
connectAttr "legFront_R0_root_sq_profile1.o" "legFront_R0_root.sq_profile";
connectAttr "mgear_curveCns125.og[0]" "footFront_R0_crvShape.cr";
connectAttr "tweak125.pl[0].cp[0]" "footFront_R0_crvShape.twl";
connectAttr "mgear_curveCns125GroupId.id" "footFront_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns125Set.mwc" "footFront_R0_crvShape.iog.og[0].gco";
connectAttr "groupId250.id" "footFront_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet125.mwc" "footFront_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns126.og[0]" "footFront_R0_Shape1.cr";
connectAttr "tweak126.pl[0].cp[0]" "footFront_R0_Shape1.twl";
connectAttr "mgear_curveCns126GroupId.id" "footFront_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns126Set.mwc" "footFront_R0_Shape1.iog.og[0].gco";
connectAttr "groupId252.id" "footFront_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet126.mwc" "footFront_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns124.og[0]" "legFront_R0_crvShape1.cr";
connectAttr "tweak124.pl[0].cp[0]" "legFront_R0_crvShape1.twl";
connectAttr "mgear_curveCns124GroupId.id" "legFront_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns124Set.mwc" "legFront_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId248.id" "legFront_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet124.mwc" "legFront_R0_crvShape1.iog.og[1].gco";
connectAttr "shoulder_R0_blade_pointConstraint2.ctx" "shoulder_R0_blade.tx" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint2.cty" "shoulder_R0_blade.ty" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint2.ctz" "shoulder_R0_blade.tz" -l on
		;
connectAttr "shoulder_R0_blade_aimConstraint2.crx" "shoulder_R0_blade.rx" -l on;
connectAttr "shoulder_R0_blade_aimConstraint2.cry" "shoulder_R0_blade.ry" -l on;
connectAttr "shoulder_R0_blade_aimConstraint2.crz" "shoulder_R0_blade.rz" -l on;
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_aimConstraint2.cpim";
connectAttr "shoulder_R0_blade.t" "shoulder_R0_blade_aimConstraint2.ct";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_aimConstraint2.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_aimConstraint2.crt";
connectAttr "shoulder_R0_blade.ro" "shoulder_R0_blade_aimConstraint2.cro";
connectAttr "shoulder_R0_0_loc.t" "shoulder_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "shoulder_R0_0_loc.rp" "shoulder_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "shoulder_R0_0_loc.rpt" "shoulder_R0_blade_aimConstraint2.tg[0].trt"
		;
connectAttr "shoulder_R0_0_loc.pm" "shoulder_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint2.w0" "shoulder_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion23.o" "shoulder_R0_blade_aimConstraint2.ox";
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_pointConstraint2.cpim";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_pointConstraint2.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_pointConstraint2.crt";
connectAttr "shoulder_R0_root.t" "shoulder_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "shoulder_R0_root.rp" "shoulder_R0_blade_pointConstraint2.tg[0].trp"
		;
connectAttr "shoulder_R0_root.rpt" "shoulder_R0_blade_pointConstraint2.tg[0].trt"
		;
connectAttr "shoulder_R0_root.pm" "shoulder_R0_blade_pointConstraint2.tg[0].tpm"
		;
connectAttr "shoulder_R0_blade_pointConstraint2.w0" "shoulder_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns123.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak123.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns123GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns123Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId246.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet123.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint5.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint5.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint5.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint5.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint5.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint5.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint5.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint5.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint5.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint5.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint5.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint5.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint5.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint5.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint5.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint5.w0" "spine_C0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint5.wum";
connectAttr "unitConversion20.o" "spine_C0_blade_aimConstraint5.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint5.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint5.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint5.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint5.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint5.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint5.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint5.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint5.w0" "spine_C0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns110.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak110.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns110GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns110Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId220.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet110.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "legBack_L0_root_st_profile.o" "legBack_L0_root.st_profile";
connectAttr "legBack_L0_root_sq_profile.o" "legBack_L0_root.sq_profile";
connectAttr "mgear_curveCns128.og[0]" "footBack_L0_crvShape.cr";
connectAttr "tweak128.pl[0].cp[0]" "footBack_L0_crvShape.twl";
connectAttr "mgear_curveCns128GroupId.id" "footBack_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns128Set.mwc" "footBack_L0_crvShape.iog.og[0].gco";
connectAttr "groupId256.id" "footBack_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet128.mwc" "footBack_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns129.og[0]" "footBack_L0_Shape1.cr";
connectAttr "tweak129.pl[0].cp[0]" "footBack_L0_Shape1.twl";
connectAttr "mgear_curveCns129GroupId.id" "footBack_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns129Set.mwc" "footBack_L0_Shape1.iog.og[0].gco";
connectAttr "groupId258.id" "footBack_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet129.mwc" "footBack_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns127.og[0]" "legBack_L0_crvShape1.cr";
connectAttr "tweak127.pl[0].cp[0]" "legBack_L0_crvShape1.twl";
connectAttr "mgear_curveCns127GroupId.id" "legBack_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns127Set.mwc" "legBack_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId254.id" "legBack_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet127.mwc" "legBack_L0_crvShape1.iog.og[1].gco";
connectAttr "legBack_R0_root_st_profile1.o" "legBack_R0_root.st_profile";
connectAttr "legBack_R0_root_sq_profile1.o" "legBack_R0_root.sq_profile";
connectAttr "mgear_curveCns131.og[0]" "footBack_R0_crvShape.cr";
connectAttr "tweak131.pl[0].cp[0]" "footBack_R0_crvShape.twl";
connectAttr "mgear_curveCns131GroupId.id" "footBack_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns131Set.mwc" "footBack_R0_crvShape.iog.og[0].gco";
connectAttr "groupId262.id" "footBack_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet131.mwc" "footBack_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns132.og[0]" "footBack_R0_Shape1.cr";
connectAttr "tweak132.pl[0].cp[0]" "footBack_R0_Shape1.twl";
connectAttr "mgear_curveCns132GroupId.id" "footBack_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns132Set.mwc" "footBack_R0_Shape1.iog.og[0].gco";
connectAttr "groupId264.id" "footBack_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet132.mwc" "footBack_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns130.og[0]" "legBack_R0_crvShape1.cr";
connectAttr "tweak130.pl[0].cp[0]" "legBack_R0_crvShape1.twl";
connectAttr "mgear_curveCns130GroupId.id" "legBack_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns130Set.mwc" "legBack_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId260.id" "legBack_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet130.mwc" "legBack_R0_crvShape1.iog.og[1].gco";
connectAttr "mgear_curveCns114GroupParts.og" "mgear_curveCns114.ip[0].ig";
connectAttr "mgear_curveCns114GroupId.id" "mgear_curveCns114.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns114.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns114.inputs[1]";
connectAttr "mgear_curveCns114GroupId.msg" "mgear_curveCns114Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns114Set.dsm"
		 -na;
connectAttr "mgear_curveCns114.msg" "mgear_curveCns114Set.ub[0]";
connectAttr "tweak114.og[0]" "mgear_curveCns114GroupParts.ig";
connectAttr "mgear_curveCns114GroupId.id" "mgear_curveCns114GroupParts.gi";
connectAttr "groupParts228.og" "tweak114.ip[0].ig";
connectAttr "groupId228.id" "tweak114.ip[0].gi";
connectAttr "groupId228.msg" "tweakSet114.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet114.dsm"
		 -na;
connectAttr "tweak114.msg" "tweakSet114.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts228.ig"
		;
connectAttr "groupId228.id" "groupParts228.gi";
connectAttr "mgear_curveCns115GroupParts.og" "mgear_curveCns115.ip[0].ig";
connectAttr "mgear_curveCns115GroupId.id" "mgear_curveCns115.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns115.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns115.inputs[1]";
connectAttr "mgear_curveCns115GroupId.msg" "mgear_curveCns115Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns115Set.dsm"
		 -na;
connectAttr "mgear_curveCns115.msg" "mgear_curveCns115Set.ub[0]";
connectAttr "tweak115.og[0]" "mgear_curveCns115GroupParts.ig";
connectAttr "mgear_curveCns115GroupId.id" "mgear_curveCns115GroupParts.gi";
connectAttr "groupParts230.og" "tweak115.ip[0].ig";
connectAttr "groupId230.id" "tweak115.ip[0].gi";
connectAttr "groupId230.msg" "tweakSet115.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet115.dsm"
		 -na;
connectAttr "tweak115.msg" "tweakSet115.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts230.ig"
		;
connectAttr "groupId230.id" "groupParts230.gi";
connectAttr "mgear_curveCns113GroupParts.og" "mgear_curveCns113.ip[0].ig";
connectAttr "mgear_curveCns113GroupId.id" "mgear_curveCns113.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns113.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns113.inputs[1]";
connectAttr "mgear_curveCns113GroupId.msg" "mgear_curveCns113Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns113Set.dsm"
		 -na;
connectAttr "mgear_curveCns113.msg" "mgear_curveCns113Set.ub[0]";
connectAttr "tweak113.og[0]" "mgear_curveCns113GroupParts.ig";
connectAttr "mgear_curveCns113GroupId.id" "mgear_curveCns113GroupParts.gi";
connectAttr "groupParts226.og" "tweak113.ip[0].ig";
connectAttr "groupId226.id" "tweak113.ip[0].gi";
connectAttr "groupId226.msg" "tweakSet113.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet113.dsm"
		 -na;
connectAttr "tweak113.msg" "tweakSet113.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts226.ig"
		;
connectAttr "groupId226.id" "groupParts226.gi";
connectAttr "mgear_curveCns116GroupParts.og" "mgear_curveCns116.ip[0].ig";
connectAttr "mgear_curveCns116GroupId.id" "mgear_curveCns116.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns116.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns116.inputs[1]";
connectAttr "mgear_curveCns116GroupId.msg" "mgear_curveCns116Set.gn" -na;
connectAttr "mouth_C0_crv5Shape.iog.og[0]" "mgear_curveCns116Set.dsm" -na;
connectAttr "mgear_curveCns116.msg" "mgear_curveCns116Set.ub[0]";
connectAttr "tweak116.og[0]" "mgear_curveCns116GroupParts.ig";
connectAttr "mgear_curveCns116GroupId.id" "mgear_curveCns116GroupParts.gi";
connectAttr "groupParts232.og" "tweak116.ip[0].ig";
connectAttr "groupId232.id" "tweak116.ip[0].gi";
connectAttr "groupId232.msg" "tweakSet116.gn" -na;
connectAttr "mouth_C0_crv5Shape.iog.og[1]" "tweakSet116.dsm" -na;
connectAttr "tweak116.msg" "tweakSet116.ub[0]";
connectAttr "mouth_C0_crv5ShapeOrig.ws" "groupParts232.ig";
connectAttr "groupId232.id" "groupParts232.gi";
connectAttr "mgear_curveCns117GroupParts.og" "mgear_curveCns117.ip[0].ig";
connectAttr "mgear_curveCns117GroupId.id" "mgear_curveCns117.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns117.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns117.inputs[1]";
connectAttr "mgear_curveCns117GroupId.msg" "mgear_curveCns117Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns117Set.dsm" -na;
connectAttr "mgear_curveCns117.msg" "mgear_curveCns117Set.ub[0]";
connectAttr "tweak117.og[0]" "mgear_curveCns117GroupParts.ig";
connectAttr "mgear_curveCns117GroupId.id" "mgear_curveCns117GroupParts.gi";
connectAttr "groupParts234.og" "tweak117.ip[0].ig";
connectAttr "groupId234.id" "tweak117.ip[0].gi";
connectAttr "groupId234.msg" "tweakSet117.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet117.dsm" -na;
connectAttr "tweak117.msg" "tweakSet117.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts234.ig";
connectAttr "groupId234.id" "groupParts234.gi";
connectAttr "mgear_curveCns118GroupParts.og" "mgear_curveCns118.ip[0].ig";
connectAttr "mgear_curveCns118GroupId.id" "mgear_curveCns118.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns118.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns118.inputs[1]";
connectAttr "mgear_curveCns118GroupId.msg" "mgear_curveCns118Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns118Set.dsm" -na;
connectAttr "mgear_curveCns118.msg" "mgear_curveCns118Set.ub[0]";
connectAttr "tweak118.og[0]" "mgear_curveCns118GroupParts.ig";
connectAttr "mgear_curveCns118GroupId.id" "mgear_curveCns118GroupParts.gi";
connectAttr "groupParts236.og" "tweak118.ip[0].ig";
connectAttr "groupId236.id" "tweak118.ip[0].gi";
connectAttr "groupId236.msg" "tweakSet118.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet118.dsm" -na;
connectAttr "tweak118.msg" "tweakSet118.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts236.ig";
connectAttr "groupId236.id" "groupParts236.gi";
connectAttr "mgear_curveCns112GroupParts.og" "mgear_curveCns112.ip[0].ig";
connectAttr "mgear_curveCns112GroupId.id" "mgear_curveCns112.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns112.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns112.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns112.inputs[2]";
connectAttr "mgear_curveCns112GroupId.msg" "mgear_curveCns112Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns112Set.dsm" -na;
connectAttr "mgear_curveCns112.msg" "mgear_curveCns112Set.ub[0]";
connectAttr "tweak112.og[0]" "mgear_curveCns112GroupParts.ig";
connectAttr "mgear_curveCns112GroupId.id" "mgear_curveCns112GroupParts.gi";
connectAttr "groupParts224.og" "tweak112.ip[0].ig";
connectAttr "groupId224.id" "tweak112.ip[0].gi";
connectAttr "groupId224.msg" "tweakSet112.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet112.dsm" -na;
connectAttr "tweak112.msg" "tweakSet112.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts224.ig";
connectAttr "groupId224.id" "groupParts224.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion21.i";
connectAttr "mgear_curveCns111GroupParts.og" "mgear_curveCns111.ip[0].ig";
connectAttr "mgear_curveCns111GroupId.id" "mgear_curveCns111.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns111.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns111.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns111.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns111.inputs[3]";
connectAttr "mgear_curveCns111GroupId.msg" "mgear_curveCns111Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns111Set.dsm" -na;
connectAttr "mgear_curveCns111.msg" "mgear_curveCns111Set.ub[0]";
connectAttr "tweak111.og[0]" "mgear_curveCns111GroupParts.ig";
connectAttr "mgear_curveCns111GroupId.id" "mgear_curveCns111GroupParts.gi";
connectAttr "groupParts222.og" "tweak111.ip[0].ig";
connectAttr "groupId222.id" "tweak111.ip[0].gi";
connectAttr "groupId222.msg" "tweakSet111.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet111.dsm" -na;
connectAttr "tweak111.msg" "tweakSet111.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts222.ig";
connectAttr "groupId222.id" "groupParts222.gi";
connectAttr "mgear_curveCns121GroupParts.og" "mgear_curveCns121.ip[0].ig";
connectAttr "mgear_curveCns121GroupId.id" "mgear_curveCns121.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns121.inputs[0]";
connectAttr "footFront_L0_0_loc.wm" "mgear_curveCns121.inputs[1]";
connectAttr "footFront_L0_1_loc.wm" "mgear_curveCns121.inputs[2]";
connectAttr "mgear_curveCns121GroupId.msg" "mgear_curveCns121Set.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[0]" "mgear_curveCns121Set.dsm" -na;
connectAttr "mgear_curveCns121.msg" "mgear_curveCns121Set.ub[0]";
connectAttr "tweak121.og[0]" "mgear_curveCns121GroupParts.ig";
connectAttr "mgear_curveCns121GroupId.id" "mgear_curveCns121GroupParts.gi";
connectAttr "groupParts242.og" "tweak121.ip[0].ig";
connectAttr "groupId242.id" "tweak121.ip[0].gi";
connectAttr "groupId242.msg" "tweakSet121.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[1]" "tweakSet121.dsm" -na;
connectAttr "tweak121.msg" "tweakSet121.ub[0]";
connectAttr "footFront_L0_crvShapeOrig.ws" "groupParts242.ig";
connectAttr "groupId242.id" "groupParts242.gi";
connectAttr "mgear_curveCns122GroupParts.og" "mgear_curveCns122.ip[0].ig";
connectAttr "mgear_curveCns122GroupId.id" "mgear_curveCns122.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns122.inputs[0]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns122.inputs[1]";
connectAttr "footFront_L0_outpivot.wm" "mgear_curveCns122.inputs[2]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns122.inputs[3]";
connectAttr "footFront_L0_inpivot.wm" "mgear_curveCns122.inputs[4]";
connectAttr "mgear_curveCns122GroupId.msg" "mgear_curveCns122Set.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[0]" "mgear_curveCns122Set.dsm" -na;
connectAttr "mgear_curveCns122.msg" "mgear_curveCns122Set.ub[0]";
connectAttr "tweak122.og[0]" "mgear_curveCns122GroupParts.ig";
connectAttr "mgear_curveCns122GroupId.id" "mgear_curveCns122GroupParts.gi";
connectAttr "groupParts244.og" "tweak122.ip[0].ig";
connectAttr "groupId244.id" "tweak122.ip[0].gi";
connectAttr "groupId244.msg" "tweakSet122.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[1]" "tweakSet122.dsm" -na;
connectAttr "tweak122.msg" "tweakSet122.ub[0]";
connectAttr "footFront_L0_Shape1Orig.ws" "groupParts244.ig";
connectAttr "groupId244.id" "groupParts244.gi";
connectAttr "mgear_curveCns120GroupParts.og" "mgear_curveCns120.ip[0].ig";
connectAttr "mgear_curveCns120GroupId.id" "mgear_curveCns120.ip[0].gi";
connectAttr "legFront_L0_root.wm" "mgear_curveCns120.inputs[0]";
connectAttr "legFront_L0_knee.wm" "mgear_curveCns120.inputs[1]";
connectAttr "legFront_L0_ankle.wm" "mgear_curveCns120.inputs[2]";
connectAttr "legFront_L0_foot.wm" "mgear_curveCns120.inputs[3]";
connectAttr "legFront_L0_eff.wm" "mgear_curveCns120.inputs[4]";
connectAttr "mgear_curveCns120GroupId.msg" "mgear_curveCns120Set.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[0]" "mgear_curveCns120Set.dsm" -na;
connectAttr "mgear_curveCns120.msg" "mgear_curveCns120Set.ub[0]";
connectAttr "tweak120.og[0]" "mgear_curveCns120GroupParts.ig";
connectAttr "mgear_curveCns120GroupId.id" "mgear_curveCns120GroupParts.gi";
connectAttr "groupParts240.og" "tweak120.ip[0].ig";
connectAttr "groupId240.id" "tweak120.ip[0].gi";
connectAttr "groupId240.msg" "tweakSet120.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[1]" "tweakSet120.dsm" -na;
connectAttr "tweak120.msg" "tweakSet120.ub[0]";
connectAttr "legFront_L0_crvShape1Orig.ws" "groupParts240.ig";
connectAttr "groupId240.id" "groupParts240.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion22.i";
connectAttr "mgear_curveCns119GroupParts.og" "mgear_curveCns119.ip[0].ig";
connectAttr "mgear_curveCns119GroupId.id" "mgear_curveCns119.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns119.inputs[0]";
connectAttr "shoulder_L0_0_loc.wm" "mgear_curveCns119.inputs[1]";
connectAttr "mgear_curveCns119GroupId.msg" "mgear_curveCns119Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns119Set.dsm" -na;
connectAttr "mgear_curveCns119.msg" "mgear_curveCns119Set.ub[0]";
connectAttr "tweak119.og[0]" "mgear_curveCns119GroupParts.ig";
connectAttr "mgear_curveCns119GroupId.id" "mgear_curveCns119GroupParts.gi";
connectAttr "groupParts238.og" "tweak119.ip[0].ig";
connectAttr "groupId238.id" "tweak119.ip[0].gi";
connectAttr "groupId238.msg" "tweakSet119.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet119.dsm" -na;
connectAttr "tweak119.msg" "tweakSet119.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts238.ig";
connectAttr "groupId238.id" "groupParts238.gi";
connectAttr "mgear_curveCns125GroupParts.og" "mgear_curveCns125.ip[0].ig";
connectAttr "mgear_curveCns125GroupId.id" "mgear_curveCns125.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns125.inputs[0]";
connectAttr "footFront_R0_0_loc.wm" "mgear_curveCns125.inputs[1]";
connectAttr "footFront_R0_1_loc.wm" "mgear_curveCns125.inputs[2]";
connectAttr "mgear_curveCns125GroupId.msg" "mgear_curveCns125Set.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[0]" "mgear_curveCns125Set.dsm" -na;
connectAttr "mgear_curveCns125.msg" "mgear_curveCns125Set.ub[0]";
connectAttr "tweak125.og[0]" "mgear_curveCns125GroupParts.ig";
connectAttr "mgear_curveCns125GroupId.id" "mgear_curveCns125GroupParts.gi";
connectAttr "groupParts250.og" "tweak125.ip[0].ig";
connectAttr "groupId250.id" "tweak125.ip[0].gi";
connectAttr "groupId250.msg" "tweakSet125.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[1]" "tweakSet125.dsm" -na;
connectAttr "tweak125.msg" "tweakSet125.ub[0]";
connectAttr "footFront_R0_crvShapeOrig.ws" "groupParts250.ig";
connectAttr "groupId250.id" "groupParts250.gi";
connectAttr "mgear_curveCns126GroupParts.og" "mgear_curveCns126.ip[0].ig";
connectAttr "mgear_curveCns126GroupId.id" "mgear_curveCns126.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns126.inputs[0]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns126.inputs[1]";
connectAttr "footFront_R0_outpivot.wm" "mgear_curveCns126.inputs[2]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns126.inputs[3]";
connectAttr "footFront_R0_inpivot.wm" "mgear_curveCns126.inputs[4]";
connectAttr "mgear_curveCns126GroupId.msg" "mgear_curveCns126Set.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[0]" "mgear_curveCns126Set.dsm" -na;
connectAttr "mgear_curveCns126.msg" "mgear_curveCns126Set.ub[0]";
connectAttr "tweak126.og[0]" "mgear_curveCns126GroupParts.ig";
connectAttr "mgear_curveCns126GroupId.id" "mgear_curveCns126GroupParts.gi";
connectAttr "groupParts252.og" "tweak126.ip[0].ig";
connectAttr "groupId252.id" "tweak126.ip[0].gi";
connectAttr "groupId252.msg" "tweakSet126.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[1]" "tweakSet126.dsm" -na;
connectAttr "tweak126.msg" "tweakSet126.ub[0]";
connectAttr "footFront_R0_Shape1Orig.ws" "groupParts252.ig";
connectAttr "groupId252.id" "groupParts252.gi";
connectAttr "mgear_curveCns124GroupParts.og" "mgear_curveCns124.ip[0].ig";
connectAttr "mgear_curveCns124GroupId.id" "mgear_curveCns124.ip[0].gi";
connectAttr "legFront_R0_root.wm" "mgear_curveCns124.inputs[0]";
connectAttr "legFront_R0_knee.wm" "mgear_curveCns124.inputs[1]";
connectAttr "legFront_R0_ankle.wm" "mgear_curveCns124.inputs[2]";
connectAttr "legFront_R0_foot.wm" "mgear_curveCns124.inputs[3]";
connectAttr "legFront_R0_eff.wm" "mgear_curveCns124.inputs[4]";
connectAttr "mgear_curveCns124GroupId.msg" "mgear_curveCns124Set.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[0]" "mgear_curveCns124Set.dsm" -na;
connectAttr "mgear_curveCns124.msg" "mgear_curveCns124Set.ub[0]";
connectAttr "tweak124.og[0]" "mgear_curveCns124GroupParts.ig";
connectAttr "mgear_curveCns124GroupId.id" "mgear_curveCns124GroupParts.gi";
connectAttr "groupParts248.og" "tweak124.ip[0].ig";
connectAttr "groupId248.id" "tweak124.ip[0].gi";
connectAttr "groupId248.msg" "tweakSet124.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[1]" "tweakSet124.dsm" -na;
connectAttr "tweak124.msg" "tweakSet124.ub[0]";
connectAttr "legFront_R0_crvShape1Orig.ws" "groupParts248.ig";
connectAttr "groupId248.id" "groupParts248.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion23.i";
connectAttr "mgear_curveCns123GroupParts.og" "mgear_curveCns123.ip[0].ig";
connectAttr "mgear_curveCns123GroupId.id" "mgear_curveCns123.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns123.inputs[0]";
connectAttr "shoulder_R0_0_loc.wm" "mgear_curveCns123.inputs[1]";
connectAttr "mgear_curveCns123GroupId.msg" "mgear_curveCns123Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns123Set.dsm" -na;
connectAttr "mgear_curveCns123.msg" "mgear_curveCns123Set.ub[0]";
connectAttr "tweak123.og[0]" "mgear_curveCns123GroupParts.ig";
connectAttr "mgear_curveCns123GroupId.id" "mgear_curveCns123GroupParts.gi";
connectAttr "groupParts246.og" "tweak123.ip[0].ig";
connectAttr "groupId246.id" "tweak123.ip[0].gi";
connectAttr "groupId246.msg" "tweakSet123.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet123.dsm" -na;
connectAttr "tweak123.msg" "tweakSet123.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts246.ig";
connectAttr "groupId246.id" "groupParts246.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion20.i";
connectAttr "mgear_curveCns110GroupParts.og" "mgear_curveCns110.ip[0].ig";
connectAttr "mgear_curveCns110GroupId.id" "mgear_curveCns110.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns110.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns110.inputs[1]";
connectAttr "mgear_curveCns110GroupId.msg" "mgear_curveCns110Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns110Set.dsm" -na;
connectAttr "mgear_curveCns110.msg" "mgear_curveCns110Set.ub[0]";
connectAttr "tweak110.og[0]" "mgear_curveCns110GroupParts.ig";
connectAttr "mgear_curveCns110GroupId.id" "mgear_curveCns110GroupParts.gi";
connectAttr "groupParts220.og" "tweak110.ip[0].ig";
connectAttr "groupId220.id" "tweak110.ip[0].gi";
connectAttr "groupId220.msg" "tweakSet110.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet110.dsm" -na;
connectAttr "tweak110.msg" "tweakSet110.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts220.ig";
connectAttr "groupId220.id" "groupParts220.gi";
connectAttr "mgear_curveCns128GroupParts.og" "mgear_curveCns128.ip[0].ig";
connectAttr "mgear_curveCns128GroupId.id" "mgear_curveCns128.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns128.inputs[0]";
connectAttr "footBack_L0_0_loc.wm" "mgear_curveCns128.inputs[1]";
connectAttr "footBack_L0_1_loc.wm" "mgear_curveCns128.inputs[2]";
connectAttr "mgear_curveCns128GroupId.msg" "mgear_curveCns128Set.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[0]" "mgear_curveCns128Set.dsm" -na;
connectAttr "mgear_curveCns128.msg" "mgear_curveCns128Set.ub[0]";
connectAttr "tweak128.og[0]" "mgear_curveCns128GroupParts.ig";
connectAttr "mgear_curveCns128GroupId.id" "mgear_curveCns128GroupParts.gi";
connectAttr "groupParts256.og" "tweak128.ip[0].ig";
connectAttr "groupId256.id" "tweak128.ip[0].gi";
connectAttr "groupId256.msg" "tweakSet128.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[1]" "tweakSet128.dsm" -na;
connectAttr "tweak128.msg" "tweakSet128.ub[0]";
connectAttr "footBack_L0_crvShapeOrig.ws" "groupParts256.ig";
connectAttr "groupId256.id" "groupParts256.gi";
connectAttr "mgear_curveCns129GroupParts.og" "mgear_curveCns129.ip[0].ig";
connectAttr "mgear_curveCns129GroupId.id" "mgear_curveCns129.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns129.inputs[0]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns129.inputs[1]";
connectAttr "footBack_L0_outpivot.wm" "mgear_curveCns129.inputs[2]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns129.inputs[3]";
connectAttr "footBack_L0_inpivot.wm" "mgear_curveCns129.inputs[4]";
connectAttr "mgear_curveCns129GroupId.msg" "mgear_curveCns129Set.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[0]" "mgear_curveCns129Set.dsm" -na;
connectAttr "mgear_curveCns129.msg" "mgear_curveCns129Set.ub[0]";
connectAttr "tweak129.og[0]" "mgear_curveCns129GroupParts.ig";
connectAttr "mgear_curveCns129GroupId.id" "mgear_curveCns129GroupParts.gi";
connectAttr "groupParts258.og" "tweak129.ip[0].ig";
connectAttr "groupId258.id" "tweak129.ip[0].gi";
connectAttr "groupId258.msg" "tweakSet129.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[1]" "tweakSet129.dsm" -na;
connectAttr "tweak129.msg" "tweakSet129.ub[0]";
connectAttr "footBack_L0_Shape1Orig.ws" "groupParts258.ig";
connectAttr "groupId258.id" "groupParts258.gi";
connectAttr "mgear_curveCns127GroupParts.og" "mgear_curveCns127.ip[0].ig";
connectAttr "mgear_curveCns127GroupId.id" "mgear_curveCns127.ip[0].gi";
connectAttr "legBack_L0_root.wm" "mgear_curveCns127.inputs[0]";
connectAttr "legBack_L0_knee.wm" "mgear_curveCns127.inputs[1]";
connectAttr "legBack_L0_ankle.wm" "mgear_curveCns127.inputs[2]";
connectAttr "legBack_L0_foot.wm" "mgear_curveCns127.inputs[3]";
connectAttr "legBack_L0_eff.wm" "mgear_curveCns127.inputs[4]";
connectAttr "mgear_curveCns127GroupId.msg" "mgear_curveCns127Set.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[0]" "mgear_curveCns127Set.dsm" -na;
connectAttr "mgear_curveCns127.msg" "mgear_curveCns127Set.ub[0]";
connectAttr "tweak127.og[0]" "mgear_curveCns127GroupParts.ig";
connectAttr "mgear_curveCns127GroupId.id" "mgear_curveCns127GroupParts.gi";
connectAttr "groupParts254.og" "tweak127.ip[0].ig";
connectAttr "groupId254.id" "tweak127.ip[0].gi";
connectAttr "groupId254.msg" "tweakSet127.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[1]" "tweakSet127.dsm" -na;
connectAttr "tweak127.msg" "tweakSet127.ub[0]";
connectAttr "legBack_L0_crvShape1Orig.ws" "groupParts254.ig";
connectAttr "groupId254.id" "groupParts254.gi";
connectAttr "mgear_curveCns131GroupParts.og" "mgear_curveCns131.ip[0].ig";
connectAttr "mgear_curveCns131GroupId.id" "mgear_curveCns131.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns131.inputs[0]";
connectAttr "footBack_R0_0_loc.wm" "mgear_curveCns131.inputs[1]";
connectAttr "footBack_R0_1_loc.wm" "mgear_curveCns131.inputs[2]";
connectAttr "mgear_curveCns131GroupId.msg" "mgear_curveCns131Set.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[0]" "mgear_curveCns131Set.dsm" -na;
connectAttr "mgear_curveCns131.msg" "mgear_curveCns131Set.ub[0]";
connectAttr "tweak131.og[0]" "mgear_curveCns131GroupParts.ig";
connectAttr "mgear_curveCns131GroupId.id" "mgear_curveCns131GroupParts.gi";
connectAttr "groupParts262.og" "tweak131.ip[0].ig";
connectAttr "groupId262.id" "tweak131.ip[0].gi";
connectAttr "groupId262.msg" "tweakSet131.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[1]" "tweakSet131.dsm" -na;
connectAttr "tweak131.msg" "tweakSet131.ub[0]";
connectAttr "footBack_R0_crvShapeOrig.ws" "groupParts262.ig";
connectAttr "groupId262.id" "groupParts262.gi";
connectAttr "mgear_curveCns132GroupParts.og" "mgear_curveCns132.ip[0].ig";
connectAttr "mgear_curveCns132GroupId.id" "mgear_curveCns132.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns132.inputs[0]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns132.inputs[1]";
connectAttr "footBack_R0_outpivot.wm" "mgear_curveCns132.inputs[2]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns132.inputs[3]";
connectAttr "footBack_R0_inpivot.wm" "mgear_curveCns132.inputs[4]";
connectAttr "mgear_curveCns132GroupId.msg" "mgear_curveCns132Set.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[0]" "mgear_curveCns132Set.dsm" -na;
connectAttr "mgear_curveCns132.msg" "mgear_curveCns132Set.ub[0]";
connectAttr "tweak132.og[0]" "mgear_curveCns132GroupParts.ig";
connectAttr "mgear_curveCns132GroupId.id" "mgear_curveCns132GroupParts.gi";
connectAttr "groupParts264.og" "tweak132.ip[0].ig";
connectAttr "groupId264.id" "tweak132.ip[0].gi";
connectAttr "groupId264.msg" "tweakSet132.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[1]" "tweakSet132.dsm" -na;
connectAttr "tweak132.msg" "tweakSet132.ub[0]";
connectAttr "footBack_R0_Shape1Orig.ws" "groupParts264.ig";
connectAttr "groupId264.id" "groupParts264.gi";
connectAttr "mgear_curveCns130GroupParts.og" "mgear_curveCns130.ip[0].ig";
connectAttr "mgear_curveCns130GroupId.id" "mgear_curveCns130.ip[0].gi";
connectAttr "legBack_R0_root.wm" "mgear_curveCns130.inputs[0]";
connectAttr "legBack_R0_knee.wm" "mgear_curveCns130.inputs[1]";
connectAttr "legBack_R0_ankle.wm" "mgear_curveCns130.inputs[2]";
connectAttr "legBack_R0_foot.wm" "mgear_curveCns130.inputs[3]";
connectAttr "legBack_R0_eff.wm" "mgear_curveCns130.inputs[4]";
connectAttr "mgear_curveCns130GroupId.msg" "mgear_curveCns130Set.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[0]" "mgear_curveCns130Set.dsm" -na;
connectAttr "mgear_curveCns130.msg" "mgear_curveCns130Set.ub[0]";
connectAttr "tweak130.og[0]" "mgear_curveCns130GroupParts.ig";
connectAttr "mgear_curveCns130GroupId.id" "mgear_curveCns130GroupParts.gi";
connectAttr "groupParts260.og" "tweak130.ip[0].ig";
connectAttr "groupId260.id" "tweak130.ip[0].gi";
connectAttr "groupId260.msg" "tweakSet130.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[1]" "tweakSet130.dsm" -na;
connectAttr "tweak130.msg" "tweakSet130.ub[0]";
connectAttr "legBack_R0_crvShape1Orig.ws" "groupParts260.ig";
connectAttr "groupId260.id" "groupParts260.gi";
// End of quadruped.ma
