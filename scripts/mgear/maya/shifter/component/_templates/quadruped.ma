//Maya ASCII 2016ff07 scene
//Name: quadruped.ma
//Last modified: Thu, Jun 15, 2017 06:45:09 PM
//Codeset: 932
requires maya "2016ff07";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2014.2";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260-1";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "guide";
	rename -uid "93055252-4170-2330-468C-208B68C1D8E7";
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
	rename -uid "807C74F4-46A7-D349-5C7E-C7B1CBA15B6A";
	setAttr ".v" no;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "6F4613B6-4779-03AE-7344-1CACCF0F9D87";
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
	rename -uid "4D3A19EF-4821-7CB3-0FBB-6E8E033C8A8C";
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
	rename -uid "56EF3491-4A9D-DEA9-5D7C-AC9941C64244";
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
	rename -uid "E7FA06E4-4043-CD76-58D1-26855B2ADF32";
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
	rename -uid "B388D240-4B98-3E32-D9BB-C0BA366D6626";
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
	rename -uid "F1CC5EC5-4451-5A12-148B-10A6E9E80D87";
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
	rename -uid "30332E01-4225-BFDF-7152-C7BBA02E3F22";
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
	rename -uid "7B131203-4F7C-AAF5-F6EC-A0A99AA057DA";
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
	rename -uid "01326693-4A30-0B91-C691-F3919934EDF6";
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
	rename -uid "FF5B9C32-4418-37F4-5778-C99EE317B3E6";
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
	rename -uid "C7CEBB8A-4F73-3127-0CD3-9292DD239F04";
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
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "D38C2762-4FF8-D166-D0C3-7B926D920CF2";
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
	rename -uid "78E03B9D-486C-4E5D-085D-AB88683748B0";
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
	rename -uid "A541B59A-42DC-2DFF-FE02-4A9567E95227";
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
	rename -uid "E920A5BC-41EE-5DE1-AC7D-72BC6223A215";
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
	rename -uid "52F67A8A-4330-D8C3-5BEB-01A5F1F49922";
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
	rename -uid "5579F085-4A7A-802C-0357-8583C2D070C3";
	setAttr -k off ".v";
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
	rename -uid "D4A20145-4D11-07E1-94A3-24AF084D886F";
	setAttr -k off ".v";
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
	rename -uid "075274E5-4479-19BC-CC23-9DAACC951660";
	setAttr -k off ".v";
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
	rename -uid "D280B169-4BFF-C6C0-8142-019614C4BC51";
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
	rename -uid "2E5D9928-496D-2B3C-B7BD-F0BF42EDB954";
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
	rename -uid "F8B24714-429D-3D2C-B076-BBB83CBC6402";
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
	rename -uid "61CC3E9A-44E7-EEF2-DB86-3E843F5B53C7";
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
	rename -uid "3DC9B0FC-4FD9-0E4D-C9E0-649FEE08BF91";
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
	rename -uid "0AA8065B-4A42-36E0-B543-A69E8F910D56";
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
	rename -uid "7FC00DA3-482E-B6EF-9584-6CB3447EF383";
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
	rename -uid "A3D92269-424B-FD37-9FE7-62A9B34DEF41";
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
	rename -uid "BE10FEF5-47A2-A96E-53BB-DAA3B7B20EB2";
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
	rename -uid "BC3BEC25-4882-78C0-AE31-D4A9B0977E40";
	setAttr -k off ".v";
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
	rename -uid "31B73B9E-406F-C80B-242D-FEA229E426BC";
	setAttr -k off ".v";
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
	rename -uid "C955B93C-4D74-B87B-64FF-D5B850ED9E1D";
	setAttr -k off ".v";
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
	rename -uid "24FCEC01-4065-85D0-1658-1C937F001A0B";
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
	rename -uid "2E26E2DC-4BA8-9904-B310-6D8BE93FB11F";
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
	rename -uid "790FB503-49A3-21B9-B78F-3B9C41C6D19A";
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
	rename -uid "70B0A7F4-46D3-6B8A-599A-099DD8DCAA2A";
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
	rename -uid "CD0C7A49-4773-5EEA-7BD7-20936C5EDBFB";
	setAttr -k off ".v";
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
	rename -uid "616C3A0B-4DCE-33E7-6205-D798272FC6B8";
	setAttr -k off ".v";
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
	rename -uid "D8B45619-4ED1-561B-9145-EFA02CF1C325";
	setAttr -k off ".v";
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
	rename -uid "49EE3E0A-4A09-00F0-E6A2-88A25584F4FD";
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
	rename -uid "594A2B3A-4D16-D541-95CB-83B8ECB26295";
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
	rename -uid "9A8E615A-4D46-B5DD-07FC-25A9A4D3C2DC";
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
	rename -uid "57AB48D5-48C9-AD3E-6780-B38D4967693F";
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
	rename -uid "374DD8EF-41DC-7A8D-3BE5-CA93141AD75E";
	setAttr -k off ".v";
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
	rename -uid "B43F9529-465D-97C0-DECF-B1852959DAA1";
	setAttr -k off ".v";
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
	rename -uid "3AE7816F-4736-5FA7-9023-13948E0E68A8";
	setAttr -k off ".v";
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
	rename -uid "B0BE9C0D-499B-EF79-62B7-259AB16DA39A";
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
	rename -uid "49D3EB49-4046-A2F8-1BC4-4198D623C7B0";
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
	rename -uid "0CAF544E-40CB-6EDD-8BF2-3FA629EC16EF";
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
createNode transform -n "bodyUI_C0_root" -p "neck_C0_eff";
	rename -uid "0CD44079-4057-6036-F0E6-A9A3B437AC69";
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
	setAttr ".comp_name" -type "string" "bodyUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "bodyUI_C0_rootShape" -p "bodyUI_C0_root";
	rename -uid "36BFD074-403A-CEA6-D321-E79E9A9D901D";
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
createNode nurbsCurve -n "bodyUI_C0_root10Shape" -p "bodyUI_C0_root";
	rename -uid "FD53D9FE-4056-6072-ED00-1E84E8553DB9";
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
createNode nurbsCurve -n "bodyUI_C0_root11Shape" -p "bodyUI_C0_root";
	rename -uid "736EB6CC-417A-F36C-95D0-2E9CCE40873F";
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
createNode nurbsCurve -n "bodyUI_C0_root12Shape" -p "bodyUI_C0_root";
	rename -uid "1EEC3457-4E4E-0FA3-C5F0-73A09DDFDB0C";
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
	rename -uid "B19AC213-40EE-6794-E4C9-158CEC0EEE8C";
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
	rename -uid "22DDD5A4-450A-A596-3FA8-F8A08F180127";
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
	rename -uid "F1F87104-4C94-86A8-A622-0E9212A6A523";
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
	rename -uid "E3E70F96-469B-838D-8C4C-B5A304C65EE4";
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
	rename -uid "9DBBC167-4C8F-3CF1-B220-38A1A51DD364";
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
	rename -uid "2F6A315E-481A-28A0-45D7-04A907FD166E";
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
	rename -uid "3CFEE4BC-4581-4C09-7D2D-F2B22C7BC17F";
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
	rename -uid "7C5B4AFD-453D-DBAA-B90D-A3A365493B63";
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
	rename -uid "589BC3B7-49C0-7960-5EA5-D58FFF2F6D0A";
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
	rename -uid "20CF8CF6-419B-9E4F-D7C2-4387AECB78DF";
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
	rename -uid "9A05974E-4761-62FC-40E8-FA8C1073F39D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4199496293978212e-029 -5.3290705182007514e-015 7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793917e-014 2.5418975026200764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "9828D539-4EED-A5E0-4F2E-E99737C44EDF";
	setAttr -k off ".v";
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
	rename -uid "A950DC12-41CD-276A-618D-12AEBCA76B4A";
	setAttr -k off ".v";
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
	rename -uid "52F36DDE-4865-5C8E-B826-478C2BC717C5";
	setAttr -k off ".v";
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
	rename -uid "587342C2-409E-14A8-631F-28BEF27AC807";
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
	rename -uid "E03BF27F-4805-850C-E970-7FB26EF74E70";
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
	rename -uid "E025BBC5-4C9E-9B15-22EC-B88128992E34";
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
	rename -uid "5EB4B400-4BD3-473A-B4BA-E3AD97CE5DC3";
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
	rename -uid "C61637D3-46C9-7CBA-3D2F-FEA19E6DA820";
	setAttr -k off ".v";
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
	rename -uid "A5B411B3-4445-E663-DAE1-1CBD682A8556";
	setAttr -k off ".v";
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
	rename -uid "773C00AB-4F49-87C2-B3D3-FE915C17F3A6";
	setAttr -k off ".v";
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
	rename -uid "0A7A3B1A-444A-6C79-C230-C990E47CDB03";
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
	rename -uid "936C9D2B-47EA-79B9-5089-089E1FC6232B";
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
	rename -uid "F34B48BA-482C-DF09-A64C-78807E2B0E7B";
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
	rename -uid "5E594003-4669-9547-E9F3-7F94D005B5AE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0807388624180155e-014 -14.161367226604183 -19.457469484456137 ;
	setAttr ".r" -type "double3" 1.9020617751920057e-014 6.3611085135793929e-014 2.5418975026200777e-014 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691256 4.4504433171691211 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "E1C85997-45A9-8AA1-9F78-A5A51076F81F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "18C198B9-4697-FE0D-F888-2FA7E5DD0FA2";
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
	rename -uid "BE8AE1A5-4148-A269-F543-FEAD13178007";
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
	rename -uid "D7FDDCBD-42EC-1CCC-C623-6D8C8607CD64";
	setAttr -k off ".v";
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
	rename -uid "4A3E2E05-4D5D-B112-9E83-AD855F305A3D";
	setAttr -k off ".v";
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
	rename -uid "EED23B93-42CD-3961-8A3F-58B19C47A518";
	setAttr -k off ".v";
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
	rename -uid "80427A6D-4FFE-AE5B-D47A-6DBFD6D55E84";
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
	rename -uid "C999B6D2-4D0E-A9A6-B6DF-B48D1986C538";
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
	rename -uid "11EA5DFF-4C4B-9AB5-8FFD-779FE1062ECF";
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
	rename -uid "81ABCD91-4AAB-46B3-78F5-819D0B2AF1BA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0230128654149919e-014 -13.868210489944017 -19.265444707261988 ;
	setAttr ".r" -type "double3" 1.9020617751920057e-014 6.3611085135793929e-014 2.5418975026200777e-014 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691256 4.4504433171691211 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "3AFFA78D-4587-9C79-5963-12B6FAF00974";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "541BE9F3-4F50-02B1-7379-5CADEF2EC35E";
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
	rename -uid "7B75FC2A-4524-3313-A3D5-E2A083447FAE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.0510383535746307e-029 -1.943196062563695 2.0069895663162569 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793917e-014 2.5418975026200764e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999889 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "0B8015DA-4724-9E5E-A02F-8C9D94C28EA6";
	setAttr -k off ".v";
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
	rename -uid "E0B5A3AD-4F03-3288-DC32-9B8FD7B34A09";
	setAttr -k off ".v";
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
	rename -uid "EE75563F-4DDA-2E8D-9234-C5AE38B86B16";
	setAttr -k off ".v";
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
	rename -uid "7D31D29B-4F15-31D7-FF00-7F892BA1EFCD";
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
	rename -uid "79C3D198-4E54-69C0-85A2-ACA918774022";
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
	rename -uid "807A4F99-4206-248A-481F-9A89EC65AF71";
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
	rename -uid "1C5FE9E5-4633-480D-A2ED-A7BAE3279E69";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5102718662247488e-015 -14.991942605075602 -16.808884058915403 ;
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793904e-014 2.5418975026200758e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691193 4.4504433171691202 4.4504433171691158 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "1447D66D-4349-909D-9EE2-28975273B377";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "78F8ACD8-421B-10F7-32BE-D5B94111BAAD";
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
	rename -uid "AF13FE47-457E-F75F-6650-96B65E293CAC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5102718662247488e-015 -14.991942605075602 -16.808884058915403 ;
	setAttr ".r" -type "double3" 1.902061775192006e-014 6.3611085135793904e-014 2.5418975026200758e-014 ;
	setAttr ".s" -type "double3" 4.4504433171691193 4.4504433171691202 4.4504433171691158 ;
createNode nurbsCurve -n "mouth_C0_crv4Shape" -p "mouth_C0_crv4";
	rename -uid "B2BF5306-45E7-D1D0-511A-3CA928F51F61";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv4ShapeOrig" -p "mouth_C0_crv4";
	rename -uid "7B512428-4E54-74B2-1DA5-5FA0CAB42690";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eyesAim_C0_root" -p "neck_C0_head";
	rename -uid "68DEF46E-46F9-1F09-C1BF-A895A690D805";
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
	setAttr ".comp_name" -type "string" "eyesAim";
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
createNode nurbsCurve -n "eyesAim_C0_rootShape" -p "eyesAim_C0_root";
	rename -uid "DC389194-45BB-5F47-6FB6-FD90B0038DE4";
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
createNode nurbsCurve -n "eyesAim_C0_root10Shape" -p "eyesAim_C0_root";
	rename -uid "D4ACD5BC-4361-6287-9C48-E5B367DD4564";
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
createNode nurbsCurve -n "eyesAim_C0_root11Shape" -p "eyesAim_C0_root";
	rename -uid "947B8969-4862-2F1D-FFDF-5C8AF8CFF687";
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
createNode nurbsCurve -n "eyesAim_C0_root12Shape" -p "eyesAim_C0_root";
	rename -uid "23CC9208-46BD-1EF8-17DD-B388F250790D";
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
	rename -uid "3C24C0AE-4874-D697-88BA-01862727C1AB";
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
	rename -uid "425742EA-4DF4-D0D0-1F4F-DD854ED5705A";
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
	rename -uid "A1D7030D-4E76-26F0-F454-6E90941B1B49";
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
	rename -uid "4704C205-4101-E89B-857B-EFA44A7C88CA";
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
	rename -uid "9C1ECFB2-4377-76D7-506E-A18D68C1708D";
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
	rename -uid "EF05ED30-4CEE-99BE-82A1-B2A2F1962B9F";
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
	rename -uid "A8E8F66D-4E4A-BB10-80E5-4C91B03C93A2";
	setAttr -k off ".v";
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
	rename -uid "8D6D74C0-4560-D39F-1929-07AD9D6D5210";
	setAttr -k off ".v";
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
	rename -uid "3F907C98-4B42-E9B6-292D-909AD2A72975";
	setAttr -k off ".v";
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
	rename -uid "60B530DD-47D7-2D96-CA97-0285BBFA8BC9";
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
	rename -uid "07B55356-401B-F7F8-E668-2E8A3E2DA81A";
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
	rename -uid "04C951FA-443E-888E-C1BD-D5B15D7990AA";
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
	rename -uid "B3752E0D-4E2E-4D62-88B9-6BA9B16FF2A2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753444 -3.4976629291575789 -3.5292331821335612 ;
	setAttr ".r" -type "double3" 2.6347799151091546e-014 -14.006447505262571 -9.1664044114833906e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999867 1.0000000000000009 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "96826FF9-47AC-8B07-6136-FA845E9CE876";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "52F63507-437C-981A-D255-988C26E95396";
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
	rename -uid "92DA5C7A-4724-1C9A-B2FC-2A92AAEFBFD2";
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
	rename -uid "5D50EFE7-4C3B-A977-397E-0F98F0327AB3";
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
	rename -uid "DF11B9B6-4F72-E4D1-85A1-8D90CD5AEE23";
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
	rename -uid "4148EE81-4062-0588-1638-88A8F5588FB3";
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
	rename -uid "07E03149-459F-9250-43AC-E4A569E8DFD8";
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
	rename -uid "39C30AC9-4D25-0C9F-651A-90A550E5579C";
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
	rename -uid "83E7DBC3-460E-D5ED-6C19-FD980FCF0240";
	setAttr -k off ".v";
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
	rename -uid "77EC262A-4689-AF58-AE9A-DCBFC76567C4";
	setAttr -k off ".v";
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
	rename -uid "09F94432-4202-2FAA-9D43-DBBCF4C8EC59";
	setAttr -k off ".v";
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
	rename -uid "40001549-4088-87D1-E8B9-0982F14B273A";
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
	rename -uid "0849F01D-4705-5D97-AA43-1AB7A3D962BB";
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
	rename -uid "0803AD3E-4858-5BF5-89B8-449A97C3571D";
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
	rename -uid "2CA7EF13-42BE-5E1A-4ADE-7C8AC0A4C1EC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753444 -3.497662929157578 -3.5292331821335612 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999833 -1.0000000000000011 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "0B65F3ED-40A6-BD64-0651-27B86852CA0E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "FCC73170-4133-9ADF-F001-31A13F328A11";
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
	rename -uid "D665959F-4EBA-CEF1-7FD4-DF9DE58D7B27";
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
	rename -uid "F2FC1169-4A66-8D54-5798-D0BE6072F8BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape8" -p "neck_C0_tan1";
	rename -uid "6086ED31-4D72-C5A1-44DA-5FAF51D18F09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape9" -p "neck_C0_tan1";
	rename -uid "C409965B-4E68-055A-4915-AC802E4120F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape10" -p "neck_C0_tan1";
	rename -uid "2B32E70A-4077-4A59-FAA2-D3BE83E5C215";
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
createNode nurbsCurve -n "neck_C0_tan8_0crvShape" -p "neck_C0_tan1";
	rename -uid "BE637532-4CAB-208D-AE54-61AD0A7E98D5";
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
createNode nurbsCurve -n "neck_C0_tan8_1crvShape" -p "neck_C0_tan1";
	rename -uid "67D7D1AD-422D-EF1C-4D65-B8ACFB78B038";
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
	rename -uid "B00797D8-4B6D-0595-7409-22A71FDF61C9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550703 -10.274847894363647 -1.1225238772421581e-015 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.3915882794427574 2.3915882794427556 2.391588279442757 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "BD85D5BE-4BB5-3F25-E8DB-8AB95573146B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "200F0465-44B3-0081-E886-C49CA3425FD0";
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
	rename -uid "ED9DDC5B-4D6B-8F56-D752-A9BE97B9791E";
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
	rename -uid "A0229AA3-4B6D-C5C2-0FFA-4982C796FB49";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape7" -p "neck_C0_tan0";
	rename -uid "02B20F29-4D50-8B90-2352-678E9B3622BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape8" -p "neck_C0_tan0";
	rename -uid "76E4F4E3-4FE0-3A88-6297-529436EEA2A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape9" -p "neck_C0_tan0";
	rename -uid "F0E7059D-4DF7-E56A-1768-93B96AF7C958";
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
createNode nurbsCurve -n "neck_C0_tan7_0crvShape" -p "neck_C0_tan0";
	rename -uid "9BA85A79-45BD-278A-6CD1-28B0666CB86A";
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
createNode nurbsCurve -n "neck_C0_tan7_1crvShape" -p "neck_C0_tan0";
	rename -uid "97FEA92B-46EE-CFFB-659A-15ACA14BEE68";
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
	rename -uid "5F86EB51-4B94-C26E-DF27-F69AD33EAEA9";
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
	rename -uid "0D8BC4AF-41D4-830A-1665-8AA3814A5423";
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
	rename -uid "74727C47-4514-685D-6B52-85AD23B75DF9";
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
	rename -uid "A69F97A7-479A-E9C2-1290-E4A1B180D80E";
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
	rename -uid "EE438239-46D7-8318-13AB-569A5D981AD3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.976162134148518 -6.6105608685998307 -2.0121365938161712e-015 ;
	setAttr ".r" -type "double3" -70.964236232861765 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "368DAEAF-4503-DD4A-55E2-0CB33C7A6A9E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "F7A80D8E-4975-9CC3-1A0D-05A24249703B";
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
	rename -uid "E1F98393-4DB1-4ECE-050B-FBA5616059DF";
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
	rename -uid "C44987CF-494B-FFB5-19BE-E48566AF0414";
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
	rename -uid "031AEE91-4F80-4A82-534E-779179CF72EC";
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
	rename -uid "6B994F8E-4683-2AB8-ABCA-2FB33BE6B952";
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
	rename -uid "73AFD01E-406A-3B77-27C5-48B6B567FD3A";
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
	rename -uid "D7E4F918-4A01-2965-4708-A2A0DB429FEE";
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
	rename -uid "E15E4154-44A0-62A3-51A2-3EB4C94FDA39";
	setAttr -k off ".v";
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
	rename -uid "2069F9D4-4604-3907-D777-998934FAC5A2";
	setAttr -k off ".v";
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
	rename -uid "F3713AC2-42DA-D54E-A528-5BB21C331102";
	setAttr -k off ".v";
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
	rename -uid "1F769547-488F-A8CE-5AC8-67AF606E4FC0";
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
	rename -uid "181B23EA-4F9F-3D4B-2DBB-B88E8338EEF0";
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
	rename -uid "B04FCC59-4B4F-490A-0983-E696F86E0634";
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
	rename -uid "51B6C583-475C-D2DD-CB38-629A644BAAEF";
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
	rename -uid "FBA455C0-4F60-A1D2-7E56-8C930AA35A6F";
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
	rename -uid "D3BAB99B-4B03-4E96-965F-2BAB71418309";
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
	rename -uid "F957CCF6-4EE2-1BA1-7259-638B2A6A0E33";
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
	rename -uid "B1032167-470F-EE68-8871-559004537A54";
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
	rename -uid "EA9D43DF-47A0-B442-12B7-34ADFA017029";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -2.1240863021370506 -0.48633856256837582 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854059e-014 2.8624992133171673e-014 6.9972202992197363e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
	rename -uid "7FB4F0B2-4878-6374-6488-80AB7FE136E4";
	setAttr -k off ".v";
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
	rename -uid "8B348E13-49A3-6E0F-09AA-7C9E96B22CF3";
	setAttr -k off ".v";
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
	rename -uid "95E6D7B7-42BB-AB50-2CA8-B0BE64E53C88";
	setAttr -k off ".v";
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
	rename -uid "D8B0A5D6-4D0E-44DB-9E48-91BCF278A1CE";
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
	rename -uid "4B60927A-4ECC-8924-0978-FEAFC2F99C93";
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
	rename -uid "464AC73D-4323-4503-6372-01AB4E9BCAAA";
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
	rename -uid "86C08AED-44C2-0220-63B5-C5BD716C3198";
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
	rename -uid "7478A17B-4792-E5A4-A819-B5B7D48F3F47";
	setAttr -k off ".v";
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
	rename -uid "E68D0550-4998-726E-37EC-FBBBEB61371F";
	setAttr -k off ".v";
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
	rename -uid "69DF8463-466B-B70E-5A0F-4084B04C2945";
	setAttr -k off ".v";
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
	rename -uid "D4F7B093-41C6-4FA6-7777-24881C900783";
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
	rename -uid "A2B7453B-4998-9596-25A3-649604D09DB7";
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
	rename -uid "3D4954C9-4906-C5D4-E516-05A0249BE29C";
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
	rename -uid "D381A7BE-40A1-604A-DB59-8FBBF7E6C1BA";
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
	rename -uid "37530295-4B76-65D3-A911-5E99F09651F1";
	setAttr -k off ".v";
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
	rename -uid "045EF13A-4698-54C6-E14D-5F938413ACED";
	setAttr -k off ".v";
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
	rename -uid "B1D0E899-46CC-15B5-0C3B-2A9FBF0D15C9";
	setAttr -k off ".v";
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
	rename -uid "FDAF765A-4EE9-1F05-1E79-959E8BBA6329";
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
	rename -uid "4BA74151-4EFF-032C-E4F2-A6AD587FBED6";
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
	rename -uid "3493624D-4A2B-FC7B-DD0C-0681844E2D9E";
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
	rename -uid "5EC5F956-4A78-FC04-5273-239E34FDE7E1";
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
	rename -uid "97C509BD-4D26-7CDD-6B23-F5A85F0697A4";
	setAttr -k off ".v";
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
	rename -uid "C3CD1B38-4C7A-4812-E966-E6A0E2DE41FF";
	setAttr -k off ".v";
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
	rename -uid "46D81DD8-4DEE-239A-BFBE-AAB5527E08DB";
	setAttr -k off ".v";
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
	rename -uid "98C34F26-4F13-1F3A-2B10-DC873F02672B";
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
	rename -uid "3367C509-4F88-4FBC-4CAD-159ADD956D95";
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
	rename -uid "5318DF3E-401B-63CF-C6A9-BBA088AD021A";
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
	rename -uid "08B1C0AE-429C-0AB0-3EC7-84B33A1B1774";
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
	rename -uid "03EB8C22-41B0-F2A7-C0DC-FAB95702FBB2";
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
	rename -uid "A4B45C30-486F-1546-2548-3DB01C55007C";
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
	rename -uid "5300ED6B-4CB9-34A4-C09B-22B267E45FCF";
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
	rename -uid "4860B187-463C-0EAF-E8FF-FE90C6D5A22C";
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
	rename -uid "13B1D659-473B-EED4-7848-4A8F21513888";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 3.3306690738754696e-016 0.75996190873515701 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
	rename -uid "891CA09E-4B82-4E63-EFDF-558FA01F2BA7";
	setAttr -k off ".v";
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
	rename -uid "4E15842E-4306-F97F-83C6-CE9DA263489D";
	setAttr -k off ".v";
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
	rename -uid "D69401D3-4597-F078-3F4A-039E944106D5";
	setAttr -k off ".v";
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
	rename -uid "19936D1F-4A44-342A-EF59-7F9D2B05C61F";
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
	rename -uid "F8C7A174-474A-738C-AC6A-9CA5F5E198F4";
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
	rename -uid "40FEDCA8-4460-4B75-D892-5BA211BED0A4";
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
	rename -uid "C32000AC-430D-5A07-D2B0-EF870E1B589C";
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
	rename -uid "EF2A5568-4DAC-3DEC-1E17-5184835E16EF";
	setAttr -k off ".v";
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
	rename -uid "E6C53BEF-4B89-7A53-B128-AA81670F9DA9";
	setAttr -k off ".v";
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
	rename -uid "5F8857C6-4DC6-F2EF-B3EA-18ACFFE44657";
	setAttr -k off ".v";
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
	rename -uid "93324098-4EE3-C40F-C0C6-4F97BAEC5E2E";
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
	rename -uid "14C47ED0-419E-AA11-EB93-4AB5A03ADA5F";
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
	rename -uid "9069B363-4EB4-0B2F-B086-B6AF3E23816D";
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
	rename -uid "F186E434-4A73-7DAE-D380-3B8A74111C09";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522685429 -16.239037496288901 ;
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.862499213317166e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148056 7.9431701648148074 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	rename -uid "216FEC74-4581-C2C7-9B6A-D6B6FE370C49";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
	rename -uid "2630C579-4FB3-04E8-DB0A-58A7BCC48141";
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
	rename -uid "7A56A8A9-469A-5B93-B1FE-C98FB6555121";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -0.3177118075540506 -0.06789990867209994 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
	rename -uid "7C1A8AF2-473A-B95F-9360-81BAFB200AB1";
	setAttr -k off ".v";
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
	rename -uid "425EA420-490B-1A6E-2F50-E09CAC3F9E46";
	setAttr -k off ".v";
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
	rename -uid "800725AC-48BF-218D-6ABE-C68B7DF410D0";
	setAttr -k off ".v";
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
	rename -uid "68ACD4D2-4E51-A458-9261-C9873C3861AC";
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
	rename -uid "33B64923-4B40-CB3F-1BC3-D2820B274FF7";
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
	rename -uid "F3BC903F-4EA4-B492-59C3-F082477DC62B";
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
	rename -uid "5BF7F21E-48FE-FA97-9D8B-5AAFEFD26294";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120611 -0.3177118075540491 0.691571853504648 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
	rename -uid "5EFF2CE0-4C3F-FA12-487C-DE8EED6EA55C";
	setAttr -k off ".v";
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
	rename -uid "912D3A6D-4203-81A6-7CCE-7695DC5363C5";
	setAttr -k off ".v";
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
	rename -uid "CEF26426-486B-8478-3748-C586BB22F69E";
	setAttr -k off ".v";
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
	rename -uid "A9E933D0-4F64-661A-6D91-A29DBCD1E02A";
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
	rename -uid "8B690103-4A3A-B92D-C85F-A59A857F336A";
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
	rename -uid "61EC44CF-4C5E-A6C7-A82C-22A8F61F5ACC";
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
	rename -uid "29ABD477-4209-350A-2119-0B84439ECDCC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288722984 -0.31771180755405165 0.86340011285662754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.862499213317166e-014 6.9972202992197337e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
	rename -uid "538A4EBB-4E42-51A7-7E2B-A6B3045D03E3";
	setAttr -k off ".v";
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
	rename -uid "D1ABBDEE-4998-A4E2-E445-4D80FE808B9C";
	setAttr -k off ".v";
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
	rename -uid "6122DAF0-4DD7-746B-6EA8-93BF2480C54E";
	setAttr -k off ".v";
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
	rename -uid "59FB549D-4E90-5469-542F-909B0275AA77";
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
	rename -uid "4D181E4A-4408-478B-A050-D38FC4523C7B";
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
	rename -uid "3BF6E52C-4992-0800-8BC6-E0B985124A4A";
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
	rename -uid "1EB1416C-497C-F1CB-2DEF-AF8141FD2DA2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522685429 -16.239037496288901 ;
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.862499213317166e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 7.9431701648148074 7.9431701648148056 7.9431701648148074 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	rename -uid "A93EE0E8-495F-712F-C021-91831387D6F5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig" -p "footFront_L0_1";
	rename -uid "71131DD5-4D1A-953E-B226-17A83C44970E";
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
	rename -uid "854BA10F-42E4-6D8A-FC6E-5E80559B96F3";
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
	rename -uid "218F24B7-4BFE-7C2C-D31C-98B0EB14B1AB";
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
	rename -uid "F455D963-44DC-CBD1-AABF-4CA5553D33DA";
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
	rename -uid "C5DC3410-4E8E-260B-501A-FD8C4AEC0762";
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
	rename -uid "A40781BE-405F-97A0-E5B4-48AC8D15B1E0";
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
	rename -uid "9A7C0012-40F4-AEE0-281C-02AA015CCA7F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011658 -5.8086248814742687 -5.5045062328919352 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171667e-014 6.9972202992197363e-014 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.502060284263488 2.5020602842634889 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	rename -uid "3415DEDB-46D6-694C-B8E0-A690F933EF61";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig" -p "legFront_L0_crv1";
	rename -uid "AC8FE7ED-4D2A-AE3F-012D-249EED8929DE";
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
	rename -uid "0637A1F6-4A07-9C3F-95AB-DABA3A960158";
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
	rename -uid "08C42F41-457B-1CC3-0891-CBA22B408B0A";
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
	rename -uid "427690D7-4ED2-2F0C-9E5C-EDA58F12F05A";
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
	rename -uid "0FC9DDF2-4068-59A4-D877-BAB2B7F02BBC";
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
	rename -uid "98B50FE6-4F85-8013-6B78-99B073F31A70";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147561224 -2.5303629060493167 -1.9933533667490368 ;
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "AC3A3F96-4F3B-753C-C641-BFB547455402";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "AB10EB93-43D1-837A-5D4F-1AA46C454B2B";
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
	rename -uid "03D63785-4823-1D5C-5F5C-1B83BCF520F4";
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
	rename -uid "6A962DA8-4060-65DB-6F4D-3F984F18786E";
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
	rename -uid "772D4B96-470C-11FE-F699-49AAE98A2229";
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
	rename -uid "2E53E34E-4D7B-5AA8-F630-DC9D02D27979";
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
	rename -uid "DDFC7E3E-4899-6364-0023-0AB7A8DBF0A6";
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
	rename -uid "59B7AB5F-43FA-4F8E-0641-C3BFC4FE2215";
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
	rename -uid "D1B9D7F0-4853-F74A-DBB1-0A9CAEA8BD8B";
	setAttr -k off ".v";
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
	rename -uid "66B52339-4F9D-7880-49D2-0887BAEF7C01";
	setAttr -k off ".v";
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
	rename -uid "2CC60DB8-408A-CDD0-E8A8-A8A71F54F24B";
	setAttr -k off ".v";
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
	rename -uid "1D477B22-454C-657B-DB6E-8BA75476EA09";
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
	rename -uid "6D5F2927-4D03-E4D9-B1BA-6A94EB31A73A";
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
	rename -uid "B35287D6-46FE-EDA0-7AB2-AEAC2E12C2A2";
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
	rename -uid "16BD72FC-49C8-91EF-9603-FDB1F1DF84CF";
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
	rename -uid "33BD9C44-490F-1B65-F62A-ED9A878ACD1F";
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
	rename -uid "4C52FBF6-4AD5-4FA9-3019-A68FF620430F";
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
	rename -uid "4FF3BF0B-4107-92A3-08D7-7C84FD7AEF4B";
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
	rename -uid "D683C2C1-47A4-5FFF-3B17-CF9D6E901108";
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
	rename -uid "E010A4EC-4583-1DD0-9245-2CAE09CCEBB6";
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
	rename -uid "A5594B14-4EC3-1457-225F-74916CAA5D02";
	setAttr -k off ".v";
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
	rename -uid "1D75B865-4872-7D77-70BF-8996EDAC751C";
	setAttr -k off ".v";
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
	rename -uid "B1AF680A-4F03-C29F-AA59-A584F56F50DC";
	setAttr -k off ".v";
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
	rename -uid "EB25C08A-4958-89E4-69A9-A28C66D42DA8";
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
	rename -uid "A6C5ED65-44BF-42FC-DE05-9CA7725DD22D";
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
	rename -uid "640BAE63-4A30-D418-12E9-3EB4A7931B02";
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
	rename -uid "EA2EBDA4-4E40-C385-9278-FFB7F0C35665";
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
	rename -uid "A91271F0-4639-BEBC-4344-3A9345335241";
	setAttr -k off ".v";
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
	rename -uid "CB0DEC8A-4645-860E-59AF-E7B8376AB435";
	setAttr -k off ".v";
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
	rename -uid "467EC8F4-46C5-359A-4144-46B0377096CB";
	setAttr -k off ".v";
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
	rename -uid "97CF09A6-4F13-E851-3048-EF9037DDB135";
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
	rename -uid "2ABE6EB0-42D9-BEB9-E407-47B0DF961951";
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
	rename -uid "A89C7161-4409-7942-A644-2CAF009531BD";
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
	rename -uid "DD63C6DA-4EDA-40EF-F895-FE821A42813F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -1.1294425054275483 0.023148533894219447 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854059e-014 -7.0210994895972814e-014 2.8671457303948929e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
	rename -uid "D0E3F7EC-4D18-DA1D-9FEF-A496ADC083DD";
	setAttr -k off ".v";
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
	rename -uid "D5B4FACF-472E-87F7-1637-94828EB598F1";
	setAttr -k off ".v";
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
	rename -uid "2EE86129-4EDC-C1C3-D3CA-76BB5562A745";
	setAttr -k off ".v";
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
	rename -uid "9F5A754F-48F4-36CD-0CF1-85BC03A7D1A9";
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
	rename -uid "0D096DC5-445A-F2A8-BE39-739AD2E244FB";
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
	rename -uid "34535C7C-48C6-D8FD-612A-31813CD2A914";
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
	rename -uid "519A4D89-4B59-0ECA-E840-FFAA088382FC";
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
	rename -uid "4120287D-4926-671B-D406-D184869E16CF";
	setAttr -k off ".v";
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
	rename -uid "6765DD6B-4340-5B23-759F-55A001BF89DA";
	setAttr -k off ".v";
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
	rename -uid "FBF848D7-4E71-7B60-8A3A-0490EB758E61";
	setAttr -k off ".v";
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
	rename -uid "AD5A63C8-49B5-A86B-3B57-A78D4582BCCE";
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
	rename -uid "80C13B71-40C4-3955-DD06-6C97C26C642B";
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
	rename -uid "13045B40-4D7A-1176-A65D-F1ADBF20714F";
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
	rename -uid "A5FF80C7-4ED7-57ED-4E52-96973C83242A";
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
	rename -uid "6C44001A-4B96-D8AB-EF05-2FB3A94E7917";
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
	rename -uid "47F096D6-41E8-6281-FDBC-E1B82FBA4818";
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
	rename -uid "92F8D071-4D84-39D5-28CC-37872ED1A2D8";
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
	rename -uid "DA0FAD70-48BB-3F8F-5B89-D99E86D21447";
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
	rename -uid "CC2C787A-436F-AB8B-67EB-82A4DAF53B05";
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
	rename -uid "0EAD5651-40EC-0981-DAC2-CBA5BC47C891";
	setAttr -k off ".v";
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
	rename -uid "1C14B345-4DFD-2852-5CF0-1483DFC1630B";
	setAttr -k off ".v";
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
	rename -uid "6CE38E23-41CF-CBC4-46FC-83AAD1829AEF";
	setAttr -k off ".v";
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
	rename -uid "3A6B4EB5-4FFF-D92E-FF07-119263AA1B5A";
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
	rename -uid "BC1BA423-4984-A364-8931-A685A00E6D55";
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
	rename -uid "57783A48-4DDA-5E9E-612D-16922FCBF89A";
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
	rename -uid "F841D8F8-42FB-0A8A-E5D5-B59FE754FD65";
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
	rename -uid "B0542C2C-424B-E77F-8BE3-E5A5A97687F3";
	setAttr -k off ".v";
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
	rename -uid "95A5A500-453F-3810-0BA3-E48D258AE3C1";
	setAttr -k off ".v";
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
	rename -uid "D2688B33-4F08-C87C-7D55-9F9B4DCA4883";
	setAttr -k off ".v";
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
	rename -uid "F2CC2FFA-4B9A-FB74-6DE5-6386BC21373E";
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
	rename -uid "31060F04-4F22-4320-8D6E-24866F9C03BD";
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
	rename -uid "2991EBF6-4DA6-EF5D-A4A1-2594C2B66B34";
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
	rename -uid "B39A83EA-4D7B-B39D-C909-88995B20C7BC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522684785 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	rename -uid "0107B82E-4107-4485-AA77-5982BEB2ED16";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
	rename -uid "719F1E64-412C-E438-9579-A4A17AEDBA40";
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
	rename -uid "8FD660F6-46FB-94A6-AB75-D696274D9793";
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
	rename -uid "3829A7DE-4CBB-5DEE-1033-F5BBB2E68EA8";
	setAttr -k off ".v";
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
	rename -uid "4FFA6A0E-412D-AADF-9B2E-18941B4E8529";
	setAttr -k off ".v";
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
	rename -uid "D8D4CF06-4275-8943-7AB0-14AC31757AE2";
	setAttr -k off ".v";
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
	rename -uid "ED072B30-4A16-5E31-5247-34BE06915BEA";
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
	rename -uid "EE0A7BE6-49DA-7BA8-50BC-43ACEB7AF1A9";
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
	rename -uid "32DCB8B7-429A-E96C-95A1-58A67BBBDFD9";
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
	rename -uid "C90DD0A2-4E1E-0A7C-BEBC-E4A4BB97F06C";
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
	rename -uid "9ECEA1D7-48F5-E5A4-C83E-ACA7C88A52EE";
	setAttr -k off ".v";
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
	rename -uid "FFECA42C-4817-4912-47C5-47B2AABBA782";
	setAttr -k off ".v";
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
	rename -uid "1EB6FD91-4DDB-892E-02F9-A2BF21178692";
	setAttr -k off ".v";
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
	rename -uid "1BFA03A4-43CB-6106-BEB3-D3B0BCB30C61";
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
	rename -uid "5E1B035B-4604-2A84-DD32-1EA6C0240CA6";
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
	rename -uid "89BCFF1E-4611-3F89-D15C-E184CFA49732";
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
	rename -uid "ADFCDEC8-4592-241D-81B7-1F8B351E84F5";
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
	rename -uid "FBFDA58F-44CF-F6FB-AD80-12BBBF1415EE";
	setAttr -k off ".v";
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
	rename -uid "AF3A8A0D-44D0-AFCF-0E3B-399CC3C553D4";
	setAttr -k off ".v";
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
	rename -uid "F49367A2-4288-BCE1-601F-9E91F2BB6ECE";
	setAttr -k off ".v";
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
	rename -uid "AFA7B325-4C34-D628-B437-608024D70BB8";
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
	rename -uid "5F94512F-4137-6205-2509-FDA589808DA3";
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
	rename -uid "E5077AA0-4454-2DD0-6BCF-AE96647B725E";
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
	rename -uid "70CFB4BA-4E96-FC36-2719-2C939137A8E7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373479 -0.60300743522684785 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148065 7.9431701648148056 -7.9431701648148065 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	rename -uid "AC722BE6-4CF3-A6BB-A209-D4A0B348A2CB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig" -p "footFront_R0_1";
	rename -uid "C6E274F8-4A64-B3B4-A7E1-BABFCF61B555";
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
	rename -uid "7E901213-42C3-4233-6EC0-799249095307";
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
	setAttr ".r" -type "double3" -1.2722218725854059e-014 -4.4437064808237831e-014 1.8584015626726618e-014 ;
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
	rename -uid "ACC024B8-40AA-611D-50B7-3C9391B19179";
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
	rename -uid "937CBFE5-40C6-E568-E2E5-F78B7C235931";
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
	rename -uid "17D26B71-4A7D-420B-8EEE-BE9135FFF7DC";
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
	rename -uid "AA2F27B3-4934-073A-A68D-798B12CEDB92";
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
	rename -uid "BB4E07D0-40E0-5D7F-B692-B498D46DBABB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011703 -5.808624881474266 -5.5045062328919352 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 2.5444437451708134e-014 ;
	setAttr ".s" -type "double3" 2.5020602842634885 2.5020602842634876 -2.5020602842634889 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	rename -uid "992AABD1-4C1F-FC45-74EC-6280BF1D7D06";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig" -p "legFront_R0_crv1";
	rename -uid "97D4894C-4B5A-224A-5721-58963929A165";
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
	rename -uid "9AD46694-490E-B258-81D8-D59D6CB80A78";
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
	rename -uid "977A409A-4E6F-1A3E-9D63-6E9CD8DB0A2F";
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
	rename -uid "4FC4F05E-4EF3-AAD1-BAF0-EC87D15F1E2D";
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
	rename -uid "58C3226F-40CF-CF57-E318-E78F0A02287A";
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
	rename -uid "FA5FCEAA-4081-38C4-89C0-BE942FCF3E5C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147563361 -2.5303629060493171 -1.9933533667490373 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "F69729CC-436F-611D-ED8E-80B60B19A3D9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "217F3C75-4182-B859-818F-80B5333A91B0";
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
	rename -uid "9F1AE68B-4987-A4BA-507E-2E8A0D999B4F";
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
	rename -uid "AC569281-4A1F-A711-6CC6-07B8428AF4A0";
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
	rename -uid "258063D3-4617-DF68-03BD-E09BC55D781B";
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
	rename -uid "80B7C5CF-47AE-6710-34FF-C8864A4A307B";
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
	rename -uid "1C535CC2-4563-1299-46F7-34ABA2309ADF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -90 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "04504EFD-4C89-947B-5406-B88D2612707D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "FD1A75DA-45E6-0F7B-C33F-FE8A6EA6F412";
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
	rename -uid "4EBC3AE3-4F7B-A5D9-424A-9899EC55CDD0";
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
	rename -uid "722AA628-448A-429F-9DD2-B49CC99274EF";
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
	rename -uid "819785AA-4966-36EE-CC2D-F6B14086DB9E";
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
	rename -uid "2BEBFC23-4478-9BE8-B470-3B95E3F1C6DC";
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
	rename -uid "F0173852-450B-38C0-74A4-41B8760EC8A1";
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
	rename -uid "20C5DA21-4362-02D5-C450-75A0F02D3727";
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
	rename -uid "D6E260FC-4006-0EB6-C5E3-5B9442EC32A4";
	setAttr -k off ".v";
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
	rename -uid "415F99E0-4B39-4994-1825-90BACE56550B";
	setAttr -k off ".v";
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
	rename -uid "448603B3-4CB5-505E-CDB3-C69022F5BC14";
	setAttr -k off ".v";
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
	rename -uid "28191D64-4726-DD86-6BF8-8786EB127099";
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
	rename -uid "CEE8A8B6-4342-1327-0053-F3A13904417D";
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
	rename -uid "91CB6B96-479F-2235-7594-96BBD60D82C9";
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
	rename -uid "0559F880-4D9A-C995-385F-1DB6C3CF745F";
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
	rename -uid "4C1594D4-4ABB-E366-831D-0EB5F9CD908B";
	setAttr -k off ".v";
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
	rename -uid "5DAD1262-4D61-AAFE-762A-25807DADB466";
	setAttr -k off ".v";
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
	rename -uid "C7E7C0B7-403C-0DDD-7F31-A2BB1B0E6B3F";
	setAttr -k off ".v";
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
	rename -uid "AFAC65A5-412A-48AC-EEBC-399D0171A57D";
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
	rename -uid "700DF2B7-44E0-F6E7-EDEC-469F279FC065";
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
	rename -uid "C7B6EB60-42D8-79C3-F730-C5AC2A78E340";
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
	rename -uid "9FB8B3D0-4EEC-1874-9A61-E48D0D2A79E9";
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
	rename -uid "C7B7A7C1-4225-6A5E-1540-61B344797B66";
	setAttr -k off ".v";
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
	rename -uid "3B672E79-490D-B6FA-E71A-559DA0884899";
	setAttr -k off ".v";
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
	rename -uid "D891E540-40D0-9A63-DA70-80AEDF43A0C4";
	setAttr -k off ".v";
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
	rename -uid "29805DEE-4E36-BCAA-FCC7-0FBB8C9491EB";
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
	rename -uid "3162F36C-4F1F-8549-358E-D192AD6729DE";
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
	rename -uid "ACED55CE-4DD0-C4AC-149C-A2B244039924";
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
	rename -uid "A424401C-495E-A6BF-D310-B3B9053099C9";
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
	rename -uid "DB5A28C1-42A2-BF99-E53C-FA80312AFA8D";
	setAttr -k off ".v";
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
	rename -uid "ABBD2E5E-44DE-5197-B64A-239D44BA31FE";
	setAttr -k off ".v";
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
	rename -uid "05743B64-49AD-8BA3-EE7A-01A9565FA786";
	setAttr -k off ".v";
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
	rename -uid "C0845079-45C4-D3B6-136F-1E9A9FB1ED87";
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
	rename -uid "AA95FD20-4387-C26F-4460-B2AABE905194";
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
	rename -uid "30886764-4A11-DD8D-8BFE-AAA2378DCD01";
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
	rename -uid "DCC66280-413F-A381-6C73-CD9E6ABE2DE5";
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
	rename -uid "7295AA8D-4CC8-06CB-0139-16B82EAE9666";
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
	rename -uid "D052D672-4206-78F1-3C80-F2BDF52DFEB5";
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
	rename -uid "AF870DF1-4F08-3C5B-07B0-7A8759A29E78";
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
	rename -uid "D1488C01-4915-566E-DE96-528874B767E0";
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
	rename -uid "4BE1F8B0-4D3A-CEBB-545E-27AD55B683D4";
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
	rename -uid "564741BA-47C8-638D-8DFF-258F0AA97145";
	setAttr -k off ".v";
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
	rename -uid "F7A3D6EB-4B8D-E704-6626-00A38998174D";
	setAttr -k off ".v";
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
	rename -uid "6792401C-4CAA-55B7-7730-6D9D882B4EEE";
	setAttr -k off ".v";
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
	rename -uid "20AF38F8-4520-AC89-EF3D-A99208890E3F";
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
	rename -uid "4AEC71EC-4CD9-8760-2B37-14A6B31CD8E9";
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
	rename -uid "B06B5C4F-4FD4-5EEE-74F6-2D9D0340DD37";
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
	rename -uid "300ADCFC-4F1A-1DE5-A6CF-9BAEDFEBA192";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.3290705182007514e-015 -0.34547277013915573 0.77046072389792464 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585405e-014 2.8624992133171654e-014 6.9972202992197312e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
	rename -uid "1DADF07B-4002-C61C-57CB-C0930FABC435";
	setAttr -k off ".v";
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
	rename -uid "C25F47E5-4AFD-B890-38AF-F2B5288E0806";
	setAttr -k off ".v";
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
	rename -uid "966F0C3E-4D42-9BA6-B742-55BA19F85F26";
	setAttr -k off ".v";
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
	rename -uid "35DE4639-436A-978D-F69D-E8823BC44336";
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
	rename -uid "F30E8645-4A34-59A2-D834-90A0ACD8E942";
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
	rename -uid "CA7F6E62-40DF-544A-B649-3A816B350FFD";
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
	rename -uid "CF3CB68B-46D5-A829-8481-36867C377DCB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358937 11.584116504196622 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171679e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	rename -uid "FE776073-473E-D383-D8C8-9EBBDEA1CCB6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
	rename -uid "06F71CC1-4C08-9E04-65D2-F39212DF781F";
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
	rename -uid "1548602E-48F8-9BF3-6976-11B4D1F29F90";
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
	rename -uid "2A2F1179-41E4-90BC-5ED3-BE9FF83AD704";
	setAttr -k off ".v";
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
	rename -uid "A94C4B61-4F5C-722B-67C7-86874C46727A";
	setAttr -k off ".v";
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
	rename -uid "7B5AEE5A-4937-89B5-6BB4-D4BBE91A99D9";
	setAttr -k off ".v";
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
	rename -uid "86BDAA58-4B6B-F985-7751-6FBE8BFC99E2";
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
	rename -uid "6A814D55-4E82-0682-4B0D-02B800D3BD35";
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
	rename -uid "9756C9BD-44C1-68FD-EECF-A1AF215C2D7D";
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
	rename -uid "D050ED0A-460B-46E7-5032-BCB26AD94292";
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
	rename -uid "E45B5518-4C14-EB62-07D3-E5A7CD927D25";
	setAttr -k off ".v";
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
	rename -uid "5D511CAF-4A39-6268-9885-3BA3C2F96FBD";
	setAttr -k off ".v";
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
	rename -uid "01B97FAD-488E-2C18-AED5-AE9239F4DC01";
	setAttr -k off ".v";
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
	rename -uid "6239D7C4-4990-7DC7-4044-95BE446541FC";
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
	rename -uid "4AC77119-4B76-950C-6CC4-79AE93EA85B8";
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
	rename -uid "CDEF5B04-4ADC-7FA4-EC1E-2685D8297776";
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
	rename -uid "5DD7FC78-45D0-CAC6-A575-7CAE2E4D613C";
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
	rename -uid "41B59C36-4DD8-9C2C-8224-8CB336C12833";
	setAttr -k off ".v";
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
	rename -uid "15CFD0DA-4B99-5255-9F7A-95991FCD0F9D";
	setAttr -k off ".v";
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
	rename -uid "C4EE6B84-46E7-1825-892D-7FBA0D3FD0FD";
	setAttr -k off ".v";
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
	rename -uid "AF2702E8-4B01-9EF5-EE94-D2A935F094F4";
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
	rename -uid "1F39D182-47EB-D81E-2DFC-A6AB3E8344FB";
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
	rename -uid "AE51B56C-46AC-B105-1F06-D98256656B41";
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
	rename -uid "850FB09E-482A-30BC-B439-D5906E97959F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718946 -0.49678747209358937 11.584116504196622 ;
	setAttr ".r" -type "double3" -1.2722218725854056e-014 2.8624992133171679e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	rename -uid "9697AE5C-4C75-C777-10B3-7D9EC98497C5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig" -p "footBack_L0_1";
	rename -uid "AF1DDF92-46B3-39A1-B9F3-619EB3C31970";
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
	rename -uid "C9E89246-4C17-22EB-E739-FCBFF1F9C237";
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
	rename -uid "BD665A85-4500-2E55-980C-779EDF196B91";
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
	rename -uid "81057829-440F-CA15-A8EE-3C9D0D195B93";
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
	rename -uid "55DF4643-4D4E-8DAC-3513-88BB7CEC8E8E";
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
	rename -uid "7D105920-4573-F978-F1E1-118A77249ADE";
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
	rename -uid "3AD8771D-44E0-E692-3C02-6187E5FCD770";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.79597111178075 -3.2803056907023977 1.8090460715460552 ;
	setAttr ".r" -type "double3" -1.2722218725854048e-014 2.8624992133171654e-014 6.997220299219735e-014 ;
	setAttr ".s" -type "double3" 1.4137227438343882 1.413722743834388 1.413722743834388 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	rename -uid "31634165-4B7D-4923-D1AC-1F9778873CBB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig" -p "legBack_L0_crv1";
	rename -uid "5F212C2E-4C23-9E53-D632-E9934CA6F0C1";
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
	rename -uid "1CE55607-401F-EA9C-BD4D-5F8603F6EDC4";
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
	rename -uid "6F385FCA-4F77-2C5C-3E4D-84BFEB5FE81F";
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
	rename -uid "EC48C21B-42EA-156B-DF8A-2C8B41063CD5";
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
	rename -uid "B2B02A77-4272-310C-E18F-B68BA4DB43B6";
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
	rename -uid "B07DD93B-4BFD-CCEE-26EF-57BFFA118A5C";
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
	rename -uid "52062B7E-4F3D-94D1-C48C-919715DB5BA4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.3306690738754696e-015 -1.155950874379851 0.33714517700502245 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.3498635550717744e-014 -4.8454499792649497e-014 1.4759883671245699e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
	rename -uid "2613A093-408E-7910-9F58-C6B77EE50E21";
	setAttr -k off ".v";
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
	rename -uid "70E001BE-478D-A235-3C99-2AB01016C14D";
	setAttr -k off ".v";
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
	rename -uid "2DA5D5A5-4E57-2E7E-10FD-C88C9376001B";
	setAttr -k off ".v";
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
	rename -uid "AD1B3909-4F02-22D7-6D2F-50A604687CF6";
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
	rename -uid "82A6C1D3-41A1-A78D-3130-4F87CA7EECD7";
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
	rename -uid "34779E69-4E91-3B94-AFBA-09A9798DDA86";
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
	rename -uid "6AFE0EC2-4CFF-41E3-8ACB-53B4EF67A7D9";
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
	rename -uid "12C18A4B-4A83-8AE6-98A2-F7996719A19B";
	setAttr -k off ".v";
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
	rename -uid "BD2F2984-45F5-0C29-E482-3BA67B771754";
	setAttr -k off ".v";
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
	rename -uid "87D7EEF8-4BA8-3C37-4D21-53BD7093C86A";
	setAttr -k off ".v";
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
	rename -uid "972EA831-4C41-4882-1CD7-569B99F0CBE8";
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
	rename -uid "2D198726-4D8F-B9FB-8930-9E943D01C9FF";
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
	rename -uid "4F19A324-4813-F18D-268A-39B4BCB3C49B";
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
	rename -uid "A5640999-4054-BD0F-FC3C-2E9E0D496D6C";
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
	rename -uid "A16E3A9B-4972-BB1E-4CE2-709D1BF1DDC6";
	setAttr -k off ".v";
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
	rename -uid "7A15A265-489E-8F94-E2DD-0C99F3F22057";
	setAttr -k off ".v";
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
	rename -uid "3DF4F598-4D14-0EF1-ACCA-C38EC020F0E8";
	setAttr -k off ".v";
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
	rename -uid "B89D3998-4C5C-8934-A2ED-8CB585BDFF80";
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
	rename -uid "3276BA5F-44E9-1A2B-0EC6-8D9C0CFADA97";
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
	rename -uid "60826F66-4F41-C40B-2249-10BFA2E772CE";
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
	rename -uid "D20FA42F-4F48-F12D-9E50-8E8FC1938886";
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
	rename -uid "B3D2A0B9-4784-B139-FEC5-FD8F77BAC29B";
	setAttr -k off ".v";
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
	rename -uid "A8D7B4BA-46B9-F799-3B01-A3A2FC93887B";
	setAttr -k off ".v";
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
	rename -uid "FE96D61F-471A-EF63-FE1F-EC93EC94755B";
	setAttr -k off ".v";
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
	rename -uid "BA92AA76-4EA2-45FC-3D92-5E8D41AFD19F";
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
	rename -uid "2149B5CF-490E-9A0C-07A7-83A37B271F39";
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
	rename -uid "9EC47692-4238-3665-3AD8-FF8DC34B9F60";
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
	rename -uid "E244163A-48A3-A79E-9B67-1C903FD2C453";
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
	setAttr ".r" -type "double3" -1.2722218725854061e-014 -4.4003965598032292e-014 1.8588667415775788e-014 ;
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
	rename -uid "3A0F769A-4FD7-AFC8-C808-85A611ABFC82";
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
	rename -uid "B1C2431B-4A1A-D84A-158B-B495CEFBFF0E";
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
	rename -uid "F59550F4-4DCC-2B98-BF4F-DF8B1EE3C4E9";
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
	rename -uid "D3F746E4-42DF-9CE7-128D-BDAC06C30036";
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
	rename -uid "D486EF27-45AF-5E38-2809-4190E0A19891";
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
	rename -uid "1BC1A5E2-4A01-3FC2-80AA-4784D9A3BC12";
	setAttr -k off ".v";
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
	rename -uid "5A99704B-41CF-59B2-4947-E9BA8A1850B7";
	setAttr -k off ".v";
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
	rename -uid "5EEECAAC-43F9-32F0-410E-8FA436ADA557";
	setAttr -k off ".v";
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
	rename -uid "85808872-4DFD-682B-4E90-25BD3BB014FF";
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
	rename -uid "52E3AF6C-4C63-6763-2316-F08D5984840A";
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
	rename -uid "83A80894-4C04-5B52-D951-F1B6B28AC489";
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
	rename -uid "4E8B8E77-435E-E9B8-B1B3-EE8F994B66A8";
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
	rename -uid "B3104DE4-4302-58E9-6308-9EA1F82FF69E";
	setAttr -k off ".v";
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
	rename -uid "73C77549-4FE9-056C-9C06-EC8AEFA79120";
	setAttr -k off ".v";
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
	rename -uid "94FA7648-45D2-7D32-80D3-A7BC9F587DB3";
	setAttr -k off ".v";
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
	rename -uid "99643585-4715-C421-FE46-51851DC13B99";
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
	rename -uid "2253D431-4491-C670-37A1-F0A28F11A53C";
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
	rename -uid "B025C8A2-402A-1FEF-0EF4-DAA1FFA146ED";
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
	rename -uid "CCA87374-4E5E-BA96-8D5F-458A550B1EB3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718953 -0.49678747209357949 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725775 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	rename -uid "4394D79A-42F3-787A-26B6-10A58AB49F46";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
	rename -uid "E55F1B7E-43CE-D228-7544-A39C8CCD5768";
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
	rename -uid "72282B1B-45F7-722A-4E8E-B6B0F774223A";
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
	rename -uid "28A00FE6-4596-D698-B5C6-388C86A8CD89";
	setAttr -k off ".v";
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
	rename -uid "138C6985-49FF-CD64-6F98-59B725226211";
	setAttr -k off ".v";
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
	rename -uid "0FF77A8F-4B3B-6113-03E0-389A94467981";
	setAttr -k off ".v";
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
	rename -uid "FE340CC9-4EC0-DD49-5F26-549D99033334";
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
	rename -uid "A96449C4-45BA-4617-EADD-40A3C5F508C4";
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
	rename -uid "1B014654-44C9-4249-D334-359DCB1D8E30";
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
	rename -uid "220225C7-4565-2FE4-F881-E68E69189919";
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
	rename -uid "6FD227D0-4A57-D4B0-1049-9882F70AC15D";
	setAttr -k off ".v";
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
	rename -uid "ED5BCD2B-490C-25F1-7C77-1DAC5CF57166";
	setAttr -k off ".v";
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
	rename -uid "B6B01D1A-4918-2E6F-DD44-D9856B42D003";
	setAttr -k off ".v";
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
	rename -uid "232119B4-49EB-18E1-32AB-C7BA8AC8DA7F";
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
	rename -uid "18645823-49B0-D5E0-7C12-64915C556179";
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
	rename -uid "31F7FF54-4E00-036B-149D-62A72042B30D";
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
	rename -uid "34131E0E-48E4-82DE-0B69-F88ACE227E0C";
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
	rename -uid "8619D753-486A-B7FA-12ED-408E470631AD";
	setAttr -k off ".v";
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
	rename -uid "7039437E-427A-AADA-CCF9-E288163A8772";
	setAttr -k off ".v";
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
	rename -uid "5D9DFAA3-4079-6A75-7BE6-1383A63AF84E";
	setAttr -k off ".v";
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
	rename -uid "292C833F-4045-F386-AEB5-7B9CC203A2B6";
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
	rename -uid "F73032BC-40E3-ECF0-88A0-FDB1D5A4AFD8";
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
	rename -uid "7B3187E2-4A93-C378-84B5-5F90C49AD7E3";
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
	rename -uid "665528AD-432A-2CCA-9719-1880D24919A7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718953 -0.49678747209357949 11.584116504196611 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725739 -8.6433157474725775 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	rename -uid "FA29F976-4BB1-F356-AD30-999745101DB6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig" -p "footBack_R0_1";
	rename -uid "21455CAC-4724-EBA8-8D60-1BAB535FE05A";
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
	rename -uid "918CDB06-4218-B052-CAD7-F1959EE88217";
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
	rename -uid "A5518112-45E6-D581-513B-94A87297724C";
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
	rename -uid "09A4EA89-4FC8-75F8-2626-36A6523BA67B";
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
	rename -uid "1AA27A99-4DDC-4A11-3A3F-2B9A66EAD510";
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
	rename -uid "F377ABFE-49C9-8507-1A31-41AFC541FBB1";
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
	rename -uid "BB044964-44F0-79A3-3362-5782C0E8CA15";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807546 -3.2803056907023964 1.8090460715460541 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.4137227438343885 1.4137227438343878 -1.413722743834388 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	rename -uid "D28ECB7E-4534-1245-E5A5-3E84DFE79012";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig" -p "legBack_R0_crv1";
	rename -uid "3DE84E6B-4ABF-2286-F4E0-CEBAC06FC4BE";
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
	rename -uid "286168ED-46A6-AC85-1E1D-0CA954CA8D4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	rename -uid "D7E85955-4FF6-A4F0-54D6-8F9DC7D1F2B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "neck_C0_root_st_profile1";
	rename -uid "E314EB3C-4041-9FA1-DE34-A88D54EF4824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	rename -uid "36DE7EE7-4A8D-8229-4C04-06A93489954E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns83";
	rename -uid "CFF89E5C-4E8A-2240-A158-97A1DE8C96A3";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns83Set";
	rename -uid "7CA0D77A-45C5-4342-155C-54AC6B6F5FAB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns83GroupId";
	rename -uid "CCDBEB3F-48CE-38ED-8C31-A488C2963EE3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns83GroupParts";
	rename -uid "8B5528F7-4B79-15F5-9ED2-A09ADB158A45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak83";
	rename -uid "34896C81-4402-CC13-369A-3BACB78FF85D";
createNode objectSet -n "tweakSet83";
	rename -uid "6E2D440E-4268-7FF4-857C-428719690037";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId166";
	rename -uid "C6213D84-4565-6C70-C8A0-3BA2470EB3D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts166";
	rename -uid "28B04DAC-4C0C-E03C-89B8-21B4292EB5CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns84";
	rename -uid "F62B6064-4E61-76FA-E7C7-A0AE0DCAF77A";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns84Set";
	rename -uid "F1C742B3-487F-364A-2095-5E982BB0FB99";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns84GroupId";
	rename -uid "A8C8E92A-4B6B-6C65-FD89-00B9EEE6E144";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns84GroupParts";
	rename -uid "B39AD5BC-46E8-A5FB-94FC-029643F5C3C3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak84";
	rename -uid "D854B6DF-4B73-F467-B671-0FB2FCCB0870";
createNode objectSet -n "tweakSet84";
	rename -uid "942C80FB-4433-5C65-EBDA-5FB197D451F9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId168";
	rename -uid "44E76231-4590-6630-2526-32A39762939A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts168";
	rename -uid "F87456A0-45D5-451F-8827-75B2D1DDE8EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns82";
	rename -uid "405F18DC-4421-FA1C-5C39-9882734D9FC7";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns82Set";
	rename -uid "D62D98EA-4E19-F093-21AD-C38BDC73C50B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns82GroupId";
	rename -uid "E1C8B67F-4B24-5F73-4225-E483B4E1EE44";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns82GroupParts";
	rename -uid "08DD91D3-4901-FAA8-4FCD-BA899241F1BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak82";
	rename -uid "EFAB2807-4D4C-E110-8693-7887C72C92ED";
createNode objectSet -n "tweakSet82";
	rename -uid "57213653-4DCC-D7E8-918B-F68246D6C293";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId164";
	rename -uid "D153DDFC-41A2-92D1-A43E-908D8577A34A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts164";
	rename -uid "A61476EA-4BD5-3B71-EFF0-DFA50081430E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns85";
	rename -uid "CECD1193-4A34-042B-97CE-08ABE333A15F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns85Set";
	rename -uid "A1B9F16C-4ECE-A2A4-A6D7-2B999A71BF00";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns85GroupId";
	rename -uid "F725276F-45C5-A8F4-3BD2-F6A039C61666";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns85GroupParts";
	rename -uid "25717408-469E-BFF4-8C84-A7B05AF48982";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak85";
	rename -uid "15BAA889-4501-080F-2132-71B2C54A903B";
createNode objectSet -n "tweakSet85";
	rename -uid "33A1E223-4847-24A2-D608-E2BAC110F8A0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId170";
	rename -uid "6638C2CD-4995-D097-0821-BFB09117701F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts170";
	rename -uid "3208AD88-494D-409B-463E-0980269AEDA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns87";
	rename -uid "A9CCC177-47F9-546E-9A9F-60A1F694EC5C";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns87Set";
	rename -uid "34B4BC93-4ED9-8A1C-2675-8496C2E04618";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns87GroupId";
	rename -uid "5C064F75-4E4B-BA61-CC69-A9B9320EDB25";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns87GroupParts";
	rename -uid "1717A526-4003-22D1-B6A7-E990A2CBDAA3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak87";
	rename -uid "F94D351B-418F-675E-3D86-B6B8BBCDBCD6";
createNode objectSet -n "tweakSet87";
	rename -uid "49D7C882-4BDC-8174-EDB5-5DB9F7071C1A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId174";
	rename -uid "B8E63F57-4364-9EA6-DDBE-A0B8140D9314";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts174";
	rename -uid "DB1ACD34-4C41-DA33-8D44-8A8FCB969DDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns109";
	rename -uid "B0B68EDD-4496-7C5D-051C-43B128B3A3F4";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns109Set";
	rename -uid "F2566269-4A62-2579-9E19-FA86AA58B424";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns109GroupId";
	rename -uid "F4F1901A-489F-9A5A-84E6-1CACDD68C82B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns109GroupParts";
	rename -uid "3E9A2578-4C74-F68C-160E-F7BED15AC159";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak109";
	rename -uid "1E2C74E1-4D42-762A-DD3A-AFA37F0DE39A";
createNode objectSet -n "tweakSet109";
	rename -uid "E6C98089-462B-CF86-C654-17B52CDEBD51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId218";
	rename -uid "AF45108A-42AE-24DB-44EA-92A79479DD9A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts218";
	rename -uid "D6EDD13F-431C-B275-9F18-CD808B329194";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns81";
	rename -uid "970102B4-4ED0-7FA6-3B1D-A6A163EF2865";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns81Set";
	rename -uid "5D662458-4B81-C1B5-6628-E68E7415078A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns81GroupId";
	rename -uid "23470244-408F-BBBA-2259-1E94FAA0F463";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns81GroupParts";
	rename -uid "9ED47FAF-4705-4120-749D-389288079C1D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak81";
	rename -uid "0FE04D09-4E6C-03B0-30C4-D4B7E99413D1";
createNode objectSet -n "tweakSet81";
	rename -uid "F31A8F22-475C-3BFB-9BE4-F187A706C1CD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId162";
	rename -uid "22EC65FF-4633-005A-7EC3-2C964B4A0090";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts162";
	rename -uid "80FAD21F-4E3C-973D-590D-7F9F69B65B15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion16";
	rename -uid "CB8DD38D-4D9B-4268-44F3-3FB2C9043447";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns80";
	rename -uid "F49CD901-49B4-AE35-0CD9-6E9F81E5EB2D";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns80Set";
	rename -uid "F7EF3728-4E00-2DC3-E58B-81AC690C33FA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns80GroupId";
	rename -uid "093F8486-473F-6168-0181-089506A815F4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns80GroupParts";
	rename -uid "A1C737CF-4583-06B4-8B16-58A28D704070";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak80";
	rename -uid "0BC4C34E-4847-465E-6130-CA8CA6B2EA1E";
createNode objectSet -n "tweakSet80";
	rename -uid "CD3A08F0-43BA-9468-1C55-788C7504DC6B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId160";
	rename -uid "980BBF0F-4B3C-B109-B6C9-209161D2D2AA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts160";
	rename -uid "45450FAE-4E6C-6AF5-6BC8-798692AC583D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile1";
	rename -uid "0A078EA9-42B9-F67B-6ED3-899C14392F4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile1";
	rename -uid "D1DA1A38-411A-FE99-9F3A-06AA4B71F751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns94";
	rename -uid "56F0EC18-43CF-5661-04A1-5194E5B042F1";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns94Set";
	rename -uid "C083398F-4D13-40C3-3382-F1B94C7E930C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns94GroupId";
	rename -uid "578751BB-4959-C270-B37A-B6B431F2F8D3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns94GroupParts";
	rename -uid "11F3D90E-425F-2018-BA8C-70A7BFA32E5B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak94";
	rename -uid "4EE91A9A-4D39-4BB2-6775-6B939CE999D7";
createNode objectSet -n "tweakSet94";
	rename -uid "D2FBDA06-469B-D8BC-DED8-16A99E2EBF21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId188";
	rename -uid "EDC5D0D9-4B8D-8696-CC46-1684BE7E9C8F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts188";
	rename -uid "75E34CB8-4463-066E-B20A-BD9D6E19D14E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns95";
	rename -uid "75FEEFA5-48B7-454A-72CD-E88423A296E8";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns95Set";
	rename -uid "1063FEEB-434D-B71D-C870-9D891655E93F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns95GroupId";
	rename -uid "BA6015E0-4037-76BD-FAE8-0A875380FE9C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns95GroupParts";
	rename -uid "42772D71-4FD5-EE9D-4A52-1AB92012BD68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak95";
	rename -uid "3AF5A173-4AC4-192B-8B5D-06A1EBCDF12D";
createNode objectSet -n "tweakSet95";
	rename -uid "7EE8E232-4824-F1BB-9848-A293B943F140";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId190";
	rename -uid "DC064CAC-4FC7-8991-7105-A4AED72D4DB3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts190";
	rename -uid "E610A45D-405D-7D50-73BF-5BAE5099070F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns93";
	rename -uid "F49548C2-437D-E8AF-F67F-A690C16DE7A6";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns93Set";
	rename -uid "AF89710C-4750-47AD-7EF4-59AB35FD53FA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns93GroupId";
	rename -uid "D8B0A4E6-4C39-095D-AE2E-11B89E232448";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns93GroupParts";
	rename -uid "76A51AB2-4CE4-D57E-02E2-18AD362D630C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak93";
	rename -uid "FC1CC352-4A54-E960-88F6-3486763AFA7D";
createNode objectSet -n "tweakSet93";
	rename -uid "D608FA2C-47D7-CB01-BECB-4FAD105E5818";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId186";
	rename -uid "A6034A96-4569-4E28-44F6-608797CAEC59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts186";
	rename -uid "676176E1-4F36-F754-F740-8491D697353D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion18";
	rename -uid "514A54C8-42E5-F97C-D88B-9F9A2772EA19";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns92";
	rename -uid "EB3C9B22-4539-C6B6-39F6-A89F18255065";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns92Set";
	rename -uid "63CEB994-4CFA-0659-9488-90A8CD7331A6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns92GroupId";
	rename -uid "EE2BFD56-4C50-78C5-910B-319E06945369";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns92GroupParts";
	rename -uid "B1B5E203-453E-7529-BF65-839B98801524";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak92";
	rename -uid "CF802EFF-4C35-F85B-336A-D49EDC034E03";
createNode objectSet -n "tweakSet92";
	rename -uid "01E56DA4-43F7-7ECA-53C3-2EA59421C063";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId184";
	rename -uid "7C62E18D-4ACC-30A0-5E84-2B8FB0FC6539";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts184";
	rename -uid "15EE8086-48D9-1797-3A53-EBB6F6B96A4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile";
	rename -uid "D38F62D1-4BFE-79F1-7776-7880FD5A8C36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile";
	rename -uid "B97D69AC-4CE5-29DD-4685-E683084A0BD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns104";
	rename -uid "ADBE028B-40D3-256E-19A7-D9BAF8B84A1F";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns104Set";
	rename -uid "087BC230-4639-CB75-CA2B-9AA147870603";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns104GroupId";
	rename -uid "A8E92C44-46CE-A450-F399-E5B42C32E32B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns104GroupParts";
	rename -uid "4BE6CE93-4422-A7E1-0B1C-EEAAC3284851";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak104";
	rename -uid "D8967FC8-40B3-5A2E-2632-559EB6BF2B9D";
createNode objectSet -n "tweakSet104";
	rename -uid "10585B76-4B44-DD2D-4580-BC81B9A69FAD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId208";
	rename -uid "53290E12-4096-B40C-A51F-63853CD08D01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts208";
	rename -uid "7BFC99C4-46CC-ABA6-4952-6BB96752FD82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns105";
	rename -uid "42806E7F-434C-2D9B-BD71-998959A1F566";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns105Set";
	rename -uid "27AC73EF-4D60-244B-3F0B-5D8BF2CD1B68";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns105GroupId";
	rename -uid "7AED558C-4D73-42CE-0DD2-C299D837A64B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns105GroupParts";
	rename -uid "0C506DB0-4F02-6F61-351A-F39C1629D9B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak105";
	rename -uid "5EBC690D-4230-5FD4-4223-55910FDE8FD5";
createNode objectSet -n "tweakSet105";
	rename -uid "6D4C025A-4C8D-55F5-71AA-538065E4A17F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId210";
	rename -uid "D3008C60-4D07-9FCF-39F8-6D8B4C6779A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts210";
	rename -uid "F41D2A3E-4963-A004-CAAF-EFA8176DE63D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns103";
	rename -uid "3D566617-4FA2-3B7E-EAAC-F98FEFA00805";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns103Set";
	rename -uid "075B6B8E-435B-3395-8FC4-FCA71F715CDC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns103GroupId";
	rename -uid "8990A5CD-486A-EF68-4945-A1A6A9D598DB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns103GroupParts";
	rename -uid "EA2C64FA-45AC-3E78-5513-81AD341F7D06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak103";
	rename -uid "7CDFCBFB-407F-823C-C8A6-7584322DA692";
createNode objectSet -n "tweakSet103";
	rename -uid "76F39159-4768-A1DE-CF18-DF9DD0D50DE3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId206";
	rename -uid "87C73933-4B60-5326-E6E6-24B699FF503D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts206";
	rename -uid "D287B711-4127-348B-D072-BFA7FEBB56BF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion19";
	rename -uid "944D9291-4DE5-0413-4243-158CA5E42433";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns102";
	rename -uid "46FA339B-4806-01F5-C724-89B6C721B285";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns102Set";
	rename -uid "3DBE2BC9-4F4F-9486-BDB4-48A1C1D951B6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns102GroupId";
	rename -uid "2345ECA5-4BAD-6EFE-E954-91B24DC5D89B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns102GroupParts";
	rename -uid "DECA0F04-4245-FF44-C7E8-18AEC7CF8FCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak102";
	rename -uid "A57E11AD-4DCB-9E33-8FA1-8F9AE571FFF3";
createNode objectSet -n "tweakSet102";
	rename -uid "A0A6FDA8-4AEE-2FE1-91C3-FE8ED8B46DD5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId204";
	rename -uid "13CF2B5C-47B1-DBA2-6FC8-92A9855283A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts204";
	rename -uid "C1BB0A02-4949-7513-980E-A1B9C89396C0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion15";
	rename -uid "54C297C1-4734-6507-6542-C088C05FC49D";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns79";
	rename -uid "EAE36496-469A-827D-5510-DD815346187C";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns79Set";
	rename -uid "5392C143-4450-263F-0235-57B5A076EC6E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns79GroupId";
	rename -uid "C1F2BFCB-4BAE-E843-61DE-6788A8600F46";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns79GroupParts";
	rename -uid "9EA162CC-49DD-FEA6-24AB-FAA6E6EB448C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak79";
	rename -uid "83A0B471-4C09-87E7-3B8D-4B851C0A2C78";
createNode objectSet -n "tweakSet79";
	rename -uid "E40579F8-4BED-CDF7-0091-14831FE135D3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId158";
	rename -uid "04AEC1B4-4AB5-74F6-B2BC-749412184D9B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts158";
	rename -uid "CB660418-4093-81C6-7960-BC886C7796DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile1";
	rename -uid "210EC7D4-4D33-7497-E08C-04B9F4D2753C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile1";
	rename -uid "28CDF8ED-4EBD-8DB4-C48F-6E8F6A2CAF94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns100";
	rename -uid "BF2DB8B0-485A-F1B7-4836-36B02858D830";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns100Set";
	rename -uid "8310C590-41C4-666C-72D0-D88DA8D24453";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns100GroupId";
	rename -uid "1AAFBA47-40D4-4137-9BD4-05B07B2FE61F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns100GroupParts";
	rename -uid "C09DA055-4CFA-BEBA-2481-33B70694DF22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak100";
	rename -uid "D421F706-46C5-3227-C38F-94ADA447D38E";
createNode objectSet -n "tweakSet100";
	rename -uid "60AADC3E-48A0-4DC6-B9B4-369C6C8CB42A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId200";
	rename -uid "DA36CCD9-4A01-435C-36C9-89888A605328";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts200";
	rename -uid "AF7DE77E-4DFB-EBBB-62BD-38BD7BB11959";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns101";
	rename -uid "467ED4E6-4A54-6CF7-29C3-9F875ACC85F1";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns101Set";
	rename -uid "4D868242-465D-32ED-DBD4-E58E6B48876B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns101GroupId";
	rename -uid "C94EE3F0-4F88-C468-60A7-5C88B78F187A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns101GroupParts";
	rename -uid "5AB4E86B-4B18-47EB-D5D5-C99746FC01A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak101";
	rename -uid "7BC33067-4C37-8CDF-5156-8C807CA01E6F";
createNode objectSet -n "tweakSet101";
	rename -uid "6BEAE5DC-49D9-04C0-A3B1-92A52E574FC1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId202";
	rename -uid "02B10D59-41C4-8BD8-07B3-3B9BC4D561CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts202";
	rename -uid "30ACCAD4-4537-AC35-BACE-7D9DB70104F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns99";
	rename -uid "60A436FD-4307-94EA-30B9-84B1B124B50B";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns99Set";
	rename -uid "79D99D93-48A3-60D2-42C5-AF9C9F174460";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns99GroupId";
	rename -uid "2B343E13-4062-ECD6-D49B-D3B553329263";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns99GroupParts";
	rename -uid "005B16D5-4199-BA85-3F23-E9A7566664EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak99";
	rename -uid "4F35F17E-4E4A-9B7A-12E2-F1A4B1BB0A6C";
createNode objectSet -n "tweakSet99";
	rename -uid "FC54188E-43BA-14F1-8BDF-90A6A50BE39A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId198";
	rename -uid "2C0508F7-4F1F-E402-2CAF-418B0CF77403";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts198";
	rename -uid "97BA90D2-4C94-D96A-0D14-51A594316C18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile";
	rename -uid "FF38335E-4879-4F5A-3DFD-3FBC59C6B129";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile";
	rename -uid "716095DE-49A0-A377-19B0-9C96E7E18AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns107";
	rename -uid "825E59FC-46D5-75AC-FC1A-3EBE3E8E68FF";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns107Set";
	rename -uid "FB935ED5-468E-4FC6-D720-6F8A7A8708D3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns107GroupId";
	rename -uid "272AE58E-4837-480D-27E4-9C84D639E0A4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns107GroupParts";
	rename -uid "5E914B70-4F41-6DDD-BED2-79847A462BDB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak107";
	rename -uid "A7F07ACB-45B6-D4FB-0BAB-2F89ACD6270D";
createNode objectSet -n "tweakSet107";
	rename -uid "7DFD0EF4-4FF8-4E2B-D60C-E3AA676FEEFE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId214";
	rename -uid "B8ADFC0E-4F0B-485D-89D8-8BA50DFADF37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts214";
	rename -uid "EEF93379-4227-D5DB-7DB5-4D90BDDBB4E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns108";
	rename -uid "85136783-4D98-3722-693B-FC9AC12C5B6A";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns108Set";
	rename -uid "B5B3AB93-4214-371C-A562-F4BB2CF7D979";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns108GroupId";
	rename -uid "07B964AC-42D7-7922-E656-BA93260D31DA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns108GroupParts";
	rename -uid "DC3E9415-48CB-4B3C-B3D2-DC82C17E65CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak108";
	rename -uid "1B3FEA55-4912-ECBF-51B4-338AEED03C10";
createNode objectSet -n "tweakSet108";
	rename -uid "A0EDC2BD-49F6-9713-9A9B-D3924D3CE859";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId216";
	rename -uid "0A594994-491B-85A4-368A-DE96D99D3350";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts216";
	rename -uid "F183D75F-41F9-B296-CD09-F08F27212904";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns106";
	rename -uid "104AB97E-47A6-F3DB-2126-06BAC00213B8";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns106Set";
	rename -uid "001241EF-4587-D4E0-68AE-8FAEB57326F4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns106GroupId";
	rename -uid "099436ED-4F55-76E7-2FFC-DBB970BD1665";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns106GroupParts";
	rename -uid "DFB4B58C-43FF-B5CF-58B6-9BB5990F63AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak106";
	rename -uid "D739DE03-4AA6-7602-5712-60A39862F2FF";
createNode objectSet -n "tweakSet106";
	rename -uid "B0AEBA47-4785-4BA5-793F-5B9BE0B71A4B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId212";
	rename -uid "7FBA24C0-4E16-59AA-7EB0-3B8B709FE10D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts212";
	rename -uid "C5967B32-46BF-F98D-D0B5-4992CEE5FD88";
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
connectAttr "footFront_L0_Shape1Orig.ws" "groupParts190.ig";
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
connectAttr "legFront_L0_crvShape1Orig.ws" "groupParts186.ig";
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
connectAttr "footFront_R0_Shape1Orig.ws" "groupParts210.ig";
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
connectAttr "legFront_R0_crvShape1Orig.ws" "groupParts206.ig";
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
connectAttr "footBack_L0_Shape1Orig.ws" "groupParts202.ig";
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
connectAttr "legBack_L0_crvShape1Orig.ws" "groupParts198.ig";
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
connectAttr "footBack_R0_Shape1Orig.ws" "groupParts216.ig";
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
connectAttr "legBack_R0_crvShape1Orig.ws" "groupParts212.ig";
connectAttr "groupId212.id" "groupParts212.gi";
// End of quadruped.ma
