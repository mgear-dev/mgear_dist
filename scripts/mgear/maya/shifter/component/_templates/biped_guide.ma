//Maya ASCII 2016R2 scene
//Name: biped_guide.ma
//Last modified: Mon, Oct 17, 2016 10:52:41 PM
//Codeset: 1252
requires maya "2016R2";
requires -nodeType "mgear_curveCns" "mgear_solvers" "1.0.3";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2 SP1";
fileInfo "cutIdentifier" "201605191025-995384-2";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "biped_guide";
	rename -uid "867FB56D-4A34-B322-2285-5A83B61F4B15";
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
	setAttr ".L_color_ik" 5;
	setAttr ".R_color_fk" 30;
	setAttr ".R_color_ik" 9;
	setAttr ".C_color_fk" 13;
	setAttr ".C_color_ik" 4;
	setAttr ".joint_rig" yes;
	setAttr ".synoptic" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "mc";
	setAttr ".date" -type "string" "2016-10-08 23:00:10.329000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.0.2";
createNode transform -n "controllers_org" -p "biped_guide";
	rename -uid "089F7818-4F97-F719-B103-BD9C3392B0C6";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "local_C0_root" -p "biped_guide";
	rename -uid "DB6BC338-47E0-F2DE-FC32-D1BB9F1CFCAF";
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
	setAttr ".s" -type "double3" 0.9528272142357278 0.9528272142357278 0.9528272142357278 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "local";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "square";
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
	setAttr ".default_rotorder" 2;
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "local_C0_rootShape" -p "local_C0_root";
	rename -uid "E0688FD0-44B8-7BE9-3082-C0B8CC6C198F";
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
createNode nurbsCurve -n "local_C0_root4Shape" -p "local_C0_root";
	rename -uid "2F0E9A3E-4662-6168-A0C2-65ABFD0484F9";
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
createNode nurbsCurve -n "local_C0_root5Shape" -p "local_C0_root";
	rename -uid "7BC106F2-4CE7-6CFF-B879-30B5291D1EA0";
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
createNode nurbsCurve -n "local_C0_root6Shape" -p "local_C0_root";
	rename -uid "B9F1C68A-4597-2A4A-4B30-88B1ADD03DF7";
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
	rename -uid "7193DD0C-4CDF-49DD-451E-A7817AB25B35";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 11.390533694690754 0.19144303592045675 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.9535389960287528 1.9535389960287497 1.9535389960287528 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "body";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".icon" -type "string" "square";
	setAttr ".k_tx" yes;
	setAttr ".k_ty" yes;
	setAttr ".k_tz" yes;
	setAttr ".k_ro" yes;
	setAttr ".k_rx" yes;
	setAttr ".k_ry" yes;
	setAttr ".k_rz" yes;
	setAttr ".default_rotorder" 2;
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	rename -uid "52DD0B6C-4A6D-7909-37F4-7D84ACC9977A";
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
createNode nurbsCurve -n "body_C0_root4Shape" -p "body_C0_root";
	rename -uid "F5681549-4DA2-15D4-09FC-278449CD5BFF";
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
createNode nurbsCurve -n "body_C0_root5Shape" -p "body_C0_root";
	rename -uid "FF89AA0B-465C-1ACE-C443-3CA483F8789F";
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
createNode nurbsCurve -n "body_C0_root6Shape" -p "body_C0_root";
	rename -uid "2C7574C0-4350-CCBC-114E-5CB8D1B72FF7";
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
	rename -uid "209CFC82-483E-7ADC-5E59-C688777C8017";
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
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 2.6645352591003757e-015 -1.2325951644078309e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410503 0.51189149642410481 0.51189149642410392 ;
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
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "A40BF585-40D2-F095-1139-19B9A63FA0BC";
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
createNode nurbsCurve -n "spine_C0_root4Shape" -p "spine_C0_root";
	rename -uid "B5D6970F-43F4-9A49-1E4F-FCB64207F9D8";
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
createNode nurbsCurve -n "spine_C0_root5Shape" -p "spine_C0_root";
	rename -uid "F99C0249-49C7-735A-68AB-6C94939D7F99";
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
createNode nurbsCurve -n "spine_C0_root6Shape" -p "spine_C0_root";
	rename -uid "9D3865C4-4F1A-A8E5-3BD5-8BA3D01EBC87";
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
	rename -uid "476B6CD3-4B5F-FEFC-55A1-7A81956409A0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3760066881565169 -1.6930901125533637e-015 9.8607613152626476e-032 ;
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
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "39FE64E2-4059-F06C-F371-769B3A9D2CD3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_eff4Shape" -p "spine_C0_eff";
	rename -uid "F042169A-4E0A-FD09-48A1-38974EA16AB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_eff5Shape" -p "spine_C0_eff";
	rename -uid "CE62875A-4E37-DD4D-4DFE-8FACA080BA18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_eff6Shape" -p "spine_C0_eff";
	rename -uid "CF992754-4C2D-B003-A6FD-EB88FD4BB65A";
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
createNode nurbsCurve -n "spine_C0_eff6_0crvShape" -p "spine_C0_eff";
	rename -uid "6A827430-4FCD-AD8E-AFDD-579A41930E48";
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
createNode nurbsCurve -n "spine_C0_eff6_1crvShape" -p "spine_C0_eff";
	rename -uid "AECD43CA-4746-7177-4563-9EAD55FE4711";
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
createNode transform -n "spineUI_C0_root" -p "spine_C0_eff";
	rename -uid "7CE59774-4548-9D7F-376D-44A42C0DF1C0";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2578484988603407 0.60394549966678468 -1.9764781265571727 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.88775990675476157 0.88775990675475991 0.88775990675475869 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "spineUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
	rename -uid "10D0A1C1-4490-CD51-F893-EFA5ACDA3E45";
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
createNode nurbsCurve -n "spineUI_C0_root4Shape" -p "spineUI_C0_root";
	rename -uid "88B01474-40B7-0C6E-59A6-BEAA247B2882";
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
createNode nurbsCurve -n "spineUI_C0_root5Shape" -p "spineUI_C0_root";
	rename -uid "8FC583EC-4D9C-92DF-FE73-798DC690BF69";
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
createNode nurbsCurve -n "spineUI_C0_root6Shape" -p "spineUI_C0_root";
	rename -uid "45E82DAD-4B45-6C60-0006-AA88D0597CE4";
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
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "1825726E-4539-3409-7A7E-1DB2DB0E5411";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "refArray" -ln "refArray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7395848890977419 -0.016853043661003181 -0.11673327753265002 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000013 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "shoulder_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".refArray" -type "string" "shoulder_L0_root,local_C0_root,body_C0_root,spine_C0_eff";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "01BA3AE9-491E-060A-CF79-819B290806B7";
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
createNode nurbsCurve -n "shoulder_L0_root4Shape" -p "shoulder_L0_root";
	rename -uid "9B87B93F-46A0-1C19-E98B-CC8E5392AA36";
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
createNode nurbsCurve -n "shoulder_L0_root5Shape" -p "shoulder_L0_root";
	rename -uid "07EB9F60-4C3C-2E79-5DA9-4BAEDFFED7B6";
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
createNode nurbsCurve -n "shoulder_L0_root6Shape" -p "shoulder_L0_root";
	rename -uid "3C4C191B-4AB5-0D08-1979-88BE57940CC2";
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
	rename -uid "2F4B913B-4619-7490-178E-84A1D2A8C70C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285644251 -0.91350954729966893 -1.5239746815175865 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.999999999999997 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "8D0C9438-4101-6A85-3967-A1BF8A506670";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip4Shape" -p "shoulder_L0_tip";
	rename -uid "04F07407-4208-4661-8390-7B90A5362F38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_tip5Shape" -p "shoulder_L0_tip";
	rename -uid "F1964D49-497C-CACB-0C2B-D79A5E2A84E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_tip6Shape" -p "shoulder_L0_tip";
	rename -uid "8E704BBF-449A-EA14-C3DC-62966E3E4407";
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
createNode nurbsCurve -n "shoulder_L0_tip6_0crvShape" -p "shoulder_L0_tip";
	rename -uid "A1D376D8-4DE3-9CCE-82B6-AAA34066699C";
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
createNode nurbsCurve -n "shoulder_L0_tip6_1crvShape" -p "shoulder_L0_tip";
	rename -uid "CA7317C0-45F6-EB0D-0B72-B9ACF58F4F30";
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
createNode transform -n "arm_L0_root" -p "shoulder_L0_tip";
	rename -uid "7BB903DF-495A-FBBC-6830-28A685242D12";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-014 -2.2204460492503131e-016 -1.1102230246251565e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.411212983179929 -5.4710434405384216 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999878 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".ikrefarray" -type "string" "local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 5;
	setAttr ".div1" 5;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "0FE2FD2B-44A8-3D64-02D5-4989B81CD326";
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
createNode nurbsCurve -n "arm_L0_root4Shape" -p "arm_L0_root";
	rename -uid "96E580C4-47D8-7ED3-0BBD-5AB82A309899";
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
createNode nurbsCurve -n "arm_L0_root5Shape" -p "arm_L0_root";
	rename -uid "2D4BDCA0-404E-C05B-45E2-20B4F730288A";
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
createNode nurbsCurve -n "arm_L0_root6Shape" -p "arm_L0_root";
	rename -uid "725C038F-48CF-15AB-F19D-B1BCF23678A9";
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
	rename -uid "A76514FB-4DD3-0DA2-A31E-6BBA85CA9072";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323381 3.5527136788005009e-015 0.07897679025290949 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.68870016278427 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "DEEDC4F0-48D6-8C45-8111-75887B068775";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow4Shape" -p "arm_L0_elbow";
	rename -uid "B4D70A23-42B3-E389-5018-A5865C8A1412";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_elbow5Shape" -p "arm_L0_elbow";
	rename -uid "6C0486D0-4260-A91E-BF86-5B966B43F743";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_elbow6Shape" -p "arm_L0_elbow";
	rename -uid "0C5ED9B9-4127-7F02-6079-A695431E09EB";
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
createNode nurbsCurve -n "arm_L0_elbow6_0crvShape" -p "arm_L0_elbow";
	rename -uid "0536194C-407D-11B6-3DD3-C1B6B6C08D3C";
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
createNode nurbsCurve -n "arm_L0_elbow6_1crvShape" -p "arm_L0_elbow";
	rename -uid "24B5102B-46E3-CDF9-9BB4-258F198AF806";
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
createNode transform -n "arm_L0_wrist" -p "arm_L0_elbow";
	rename -uid "29B76425-437F-BA40-721D-5E845C2F5F6D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496788 -3.5527136788005009e-015 -0.11960611218230469 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "CA769401-4345-5700-EAC3-03A920E86B84";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist4Shape" -p "arm_L0_wrist";
	rename -uid "914F1D4C-42A8-24B3-9504-12820B501F07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_wrist5Shape" -p "arm_L0_wrist";
	rename -uid "D4C6A92D-4343-402D-7A00-90A7D7C1518B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_wrist6Shape" -p "arm_L0_wrist";
	rename -uid "DA9C6524-4270-9F7A-1449-5DA4886A3A15";
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
createNode nurbsCurve -n "arm_L0_wrist6_0crvShape" -p "arm_L0_wrist";
	rename -uid "A1842DA8-49C3-956C-724A-30972142477B";
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
createNode nurbsCurve -n "arm_L0_wrist6_1crvShape" -p "arm_L0_wrist";
	rename -uid "32F245C6-4E10-6EED-3053-76A9F6BE736D";
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
createNode transform -n "arm_L0_eff" -p "arm_L0_wrist";
	rename -uid "88B5BF2C-4F8C-21FB-BE64-5785EA075CF4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308277 3.5527136788005009e-015 -4.163336342344337e-017 ;
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
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "AA57006E-4F0D-5F5A-BD72-97A996B71205";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_eff4Shape" -p "arm_L0_eff";
	rename -uid "D40C4890-43E6-ED53-5F69-EA99503C789D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_eff5Shape" -p "arm_L0_eff";
	rename -uid "CC26C7F5-4AA3-0BD7-5F7C-29AF7EFC4FD2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_eff6Shape" -p "arm_L0_eff";
	rename -uid "5E4665AA-4866-BBF6-A08D-92A6010F8677";
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
createNode nurbsCurve -n "arm_L0_eff6_0crvShape" -p "arm_L0_eff";
	rename -uid "54B1C4C0-4FF2-14BE-7FCB-CF83A9B77E6C";
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
createNode nurbsCurve -n "arm_L0_eff6_1crvShape" -p "arm_L0_eff";
	rename -uid "A745049F-48CF-A642-314A-A9B77A52152F";
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
createNode transform -n "armUI_L0_root" -p "arm_L0_eff";
	rename -uid "C0FF05F6-416C-87A3-243E-DC928CCEFAC8";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2124561875008175 0.56073114764518728 -0.29276117198398854 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "armUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "armUI_L0_rootShape" -p "armUI_L0_root";
	rename -uid "565E2B9C-42B2-6C9B-9FE1-199BCD445CF5";
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
createNode nurbsCurve -n "armUI_L0_root4Shape" -p "armUI_L0_root";
	rename -uid "291DE0E0-4846-621A-6BE1-CF90B343C16D";
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
createNode nurbsCurve -n "armUI_L0_root5Shape" -p "armUI_L0_root";
	rename -uid "8178A947-4BD8-CECA-C5CA-DEA8CE85CEAD";
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
createNode nurbsCurve -n "armUI_L0_root6Shape" -p "armUI_L0_root";
	rename -uid "35362F08-4732-201E-5A26-F78EB52775CA";
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
createNode transform -n "meta_L0_root" -p "arm_L0_eff";
	rename -uid "2D0D6AC2-479E-D325-A77A-4A880DDE9950";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "intScale" -ln "intScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intRotation" -ln "intRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intTranslation" -ln "intTranslation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0556240028445782 -0.075350553640967988 0.35296225288850275 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008863873 93.717381466937297 86.46796012747798 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716886 0.30838721081716902 0.30838721081716913 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "meta_01";
	setAttr ".comp_name" -type "string" "meta";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".intScale" yes;
	setAttr ".intRotation" yes;
	setAttr ".intTranslation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "meta_L0_rootShape" -p "meta_L0_root";
	rename -uid "403129DB-4712-4E5C-CC07-67A024BE99D8";
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
createNode nurbsCurve -n "meta_L0_root4Shape" -p "meta_L0_root";
	rename -uid "2C6DC299-4BD5-7B34-5970-D8AEF21A9C68";
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
createNode nurbsCurve -n "meta_L0_root5Shape" -p "meta_L0_root";
	rename -uid "219C0665-49C6-34CD-CE60-03AD8E7D250D";
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
createNode nurbsCurve -n "meta_L0_root6Shape" -p "meta_L0_root";
	rename -uid "70C118B0-4015-76F9-A6BD-5B92AF884BF8";
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
	rename -uid "03B1C2A3-4F0F-E02D-6279-4C9A0BEC87E1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6632084735361774 -7.1054273576010019e-015 5.3290705182007514e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "328668DF-4DB7-5A3E-3AE9-108B1D395CF6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc4Shape" -p "meta_L0_0_loc";
	rename -uid "5992AD9B-4EB4-3209-1E3C-1BB595AE6EE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_0_loc5Shape" -p "meta_L0_0_loc";
	rename -uid "906B5023-467D-6786-4A9D-47B2E09668AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_0_loc6Shape" -p "meta_L0_0_loc";
	rename -uid "08A63D90-454D-8E24-6E8B-B4A9C44A4241";
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
createNode nurbsCurve -n "meta_L0_0_loc6_0crvShape" -p "meta_L0_0_loc";
	rename -uid "7F2B9AA3-4AB3-AF13-658F-51ADA7DFEC2F";
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
createNode nurbsCurve -n "meta_L0_0_loc6_1crvShape" -p "meta_L0_0_loc";
	rename -uid "34870CF0-44C6-1683-897A-49B82C80A120";
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
createNode transform -n "meta_L0_1_loc" -p "meta_L0_0_loc";
	rename -uid "C0A8EBF3-48B9-C7D1-FA33-64B7DA8E548C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618317 1.4210854715202004e-014 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "85F55468-4DFF-1498-2910-E8B7255FE8EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc4Shape" -p "meta_L0_1_loc";
	rename -uid "0EBA54A4-4304-ECCF-B681-3797050F9C16";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_1_loc5Shape" -p "meta_L0_1_loc";
	rename -uid "60A53BBE-45D8-F9AB-C869-6C979F2B1AD2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_1_loc6Shape" -p "meta_L0_1_loc";
	rename -uid "B8113939-46E8-14BA-68C6-A28E2A861F05";
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
createNode nurbsCurve -n "meta_L0_1_loc6_0crvShape" -p "meta_L0_1_loc";
	rename -uid "B0D03D2C-4F92-1C01-2270-F79E728B2A9B";
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
createNode nurbsCurve -n "meta_L0_1_loc6_1crvShape" -p "meta_L0_1_loc";
	rename -uid "8972ADBB-43CF-6048-18EE-448181668820";
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
createNode transform -n "meta_L0_2_loc" -p "meta_L0_1_loc";
	rename -uid "A05426BF-4160-723B-C2D7-BAAB77C759F3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618451 0 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "BF78B54E-480A-35B0-0A05-49BACBFB02B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc4Shape" -p "meta_L0_2_loc";
	rename -uid "7F0C9703-42C7-3ED8-3639-0C87F6755280";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_2_loc5Shape" -p "meta_L0_2_loc";
	rename -uid "979CD814-4954-DD2E-B8C9-F488457C7AF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_2_loc6Shape" -p "meta_L0_2_loc";
	rename -uid "F65746F9-43F7-EAEF-F05F-79B3938CDA9F";
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
createNode nurbsCurve -n "meta_L0_2_loc6_0crvShape" -p "meta_L0_2_loc";
	rename -uid "C8D62C92-4614-442E-8869-4F80519266D0";
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
createNode nurbsCurve -n "meta_L0_2_loc6_1crvShape" -p "meta_L0_2_loc";
	rename -uid "8F74436D-481C-54AB-303B-96A8BD1A173D";
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
createNode transform -n "finger_L3_root" -p "meta_L0_2_loc";
	rename -uid "8C1E1BEB-4433-DADF-3854-22B8661523A2";
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
	setAttr ".t" -type "double3" 0.27518484001103394 -0.17360051577789193 2.4946799341790165 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.417331987861151 -68.587073855452132 -5.816337418126551 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661801 1.2929668245661792 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".comp_index" 3;
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_L3_rootShape" -p "finger_L3_root";
	rename -uid "68A9A86E-44B5-7B35-DE00-8696A9EFCE48";
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
createNode nurbsCurve -n "finger_L3_root4Shape" -p "finger_L3_root";
	rename -uid "BB446143-4111-D334-6846-CAAA7B43A898";
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
createNode nurbsCurve -n "finger_L3_root5Shape" -p "finger_L3_root";
	rename -uid "1898A4ED-43F2-920C-5BA4-1C8744E5C250";
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
createNode nurbsCurve -n "finger_L3_root6Shape" -p "finger_L3_root";
	rename -uid "56DA9E76-4C94-8E8E-EBAC-1E99FF3F9113";
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
	rename -uid "3D21060E-460D-2725-4BD6-3D8EE1326E5B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830563 3.5527136788005009e-015 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "57C556C3-4DBF-E1EE-8A29-D8B096F34AA6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc4Shape" -p "finger_L3_0_loc";
	rename -uid "0D8C985C-4442-EC88-6530-08AA0E12E5CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_0_loc5Shape" -p "finger_L3_0_loc";
	rename -uid "973B5965-4C93-C83E-3DF2-5789663A34B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_0_loc6Shape" -p "finger_L3_0_loc";
	rename -uid "C1ADCAC2-499C-7189-F630-38A515305956";
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
createNode nurbsCurve -n "finger_L3_0_loc6_0crvShape" -p "finger_L3_0_loc";
	rename -uid "799072E7-49A3-CFAA-9D34-4585E5580866";
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
createNode nurbsCurve -n "finger_L3_0_loc6_1crvShape" -p "finger_L3_0_loc";
	rename -uid "E98D96E9-4472-1453-B75F-02ACD700D27C";
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
createNode transform -n "finger_L3_1_loc" -p "finger_L3_0_loc";
	rename -uid "F9673000-40C7-B74E-ABC5-089DF0C449E8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070874352 -1.0658141036401503e-014 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "27A31A71-4DD3-C42B-27F4-888A19388705";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc4Shape" -p "finger_L3_1_loc";
	rename -uid "B10CE4EA-44D7-CE2F-102C-0C8AA8EA6898";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_1_loc5Shape" -p "finger_L3_1_loc";
	rename -uid "566525B2-4B50-8FE5-B9D2-C0AB9923934E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_1_loc6Shape" -p "finger_L3_1_loc";
	rename -uid "AE874AB0-454E-C63F-DEBC-9496AF449D6C";
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
createNode nurbsCurve -n "finger_L3_1_loc6_0crvShape" -p "finger_L3_1_loc";
	rename -uid "0A208767-457C-48C1-9957-19BD922F5EF8";
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
createNode nurbsCurve -n "finger_L3_1_loc6_1crvShape" -p "finger_L3_1_loc";
	rename -uid "461DCA57-438C-526B-FBBC-ED875CDA3296";
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
createNode transform -n "finger_L3_2_loc" -p "finger_L3_1_loc";
	rename -uid "B30E8690-4D07-6A1D-4199-C39DAB197D54";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259194789 3.5527136788005009e-015 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000009 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "A9BDB641-458C-6ECE-B3D4-81B700EAE162";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc4Shape" -p "finger_L3_2_loc";
	rename -uid "BA1011A7-42D2-201C-5F7A-E3A952D94140";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_2_loc5Shape" -p "finger_L3_2_loc";
	rename -uid "53FE869B-47FE-BE56-DD17-2CB88086EF32";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_2_loc6Shape" -p "finger_L3_2_loc";
	rename -uid "D80157CA-4A83-160B-E598-4EBDF93D81D8";
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
createNode nurbsCurve -n "finger_L3_2_loc6_0crvShape" -p "finger_L3_2_loc";
	rename -uid "4A03A0EA-44AE-D68E-A6ED-EF8D6D2B7D3D";
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
createNode nurbsCurve -n "finger_L3_2_loc6_1crvShape" -p "finger_L3_2_loc";
	rename -uid "5B16DAC1-4F1E-FD4E-BC90-10906FFF846C";
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
createNode transform -n "finger_L3_blade" -p "finger_L3_root";
	rename -uid "DD0D936C-4DD0-3F1E-4FAA-E793EDD510E8";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "F3F81CAA-41E4-F1B0-146F-64B5595CBF8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970799 0 0
		0 0.25859336491323598 0
		0 0 0
		;
createNode aimConstraint -n "finger_L3_blade_aimConstraint2" -p "finger_L3_blade";
	rename -uid "1628F371-4FA4-6B84-3607-3192F43A7654";
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
createNode pointConstraint -n "finger_L3_blade_pointConstraint2" -p "finger_L3_blade";
	rename -uid "D37BBB37-4BC7-EC15-0D82-B2A3D1A18CC8";
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
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-015 -1.1102230246251565e-015 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "276EC9D8-4FAD-DC59-A9A6-E6852CF81AEE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754551 -29.0327868557636 1.4804327725022939 ;
	setAttr ".r" -type "double3" -7.579166539411152 -14.304244378904727 49.348303523761025 ;
	setAttr ".s" -type "double3" 2.632098310678614 2.6320983106786033 2.6320983106786087 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "E04A6C8E-4D51-3358-D21D-BF9E862D4733";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "D8CAD59D-4C64-4186-1B3A-90B80CDA26E2";
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
	rename -uid "5EF9FB0C-41D4-3B3F-7653-1EB448D5C316";
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
	setAttr ".t" -type "double3" 0.214042012321221 -0.17620518664718787 2.8414845756647402 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121381416 -82.086889237978056 -14.829711404974706 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661801 1.292966824566179 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".comp_index" 2;
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_L2_rootShape" -p "finger_L2_root";
	rename -uid "D0E3F91A-4740-404C-4243-2E8ED019736D";
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
createNode nurbsCurve -n "finger_L2_root4Shape" -p "finger_L2_root";
	rename -uid "B0BAEAA6-45F5-D835-F705-E0B640B1B44E";
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
createNode nurbsCurve -n "finger_L2_root5Shape" -p "finger_L2_root";
	rename -uid "1CAFE9A1-4253-B1BB-7329-E28AC4E47723";
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
createNode nurbsCurve -n "finger_L2_root6Shape" -p "finger_L2_root";
	rename -uid "DCD6A6D0-48D1-1FB3-E9B9-488ABA787072";
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
	rename -uid "1F6D312E-4ED6-D8E2-475A-A9AE64AC7916";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217407107 -1.4210854715202004e-014 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "464FFB26-4C85-40BF-0034-87981E9091F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc4Shape" -p "finger_L2_0_loc";
	rename -uid "95E3EE37-4BB2-F8C4-256E-DA98056D59A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_0_loc5Shape" -p "finger_L2_0_loc";
	rename -uid "D778892D-4F7F-EA67-5098-7FAE79A0F5DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_0_loc6Shape" -p "finger_L2_0_loc";
	rename -uid "269BE0EF-42C4-A7E6-A3BB-B3BDB373B5C0";
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
createNode nurbsCurve -n "finger_L2_0_loc6_0crvShape" -p "finger_L2_0_loc";
	rename -uid "7FF8DDFF-4341-A414-DFA3-4C89DA470B43";
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
createNode nurbsCurve -n "finger_L2_0_loc6_1crvShape" -p "finger_L2_0_loc";
	rename -uid "D7628823-4787-D261-B885-F4B6E27E95FD";
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
createNode transform -n "finger_L2_1_loc" -p "finger_L2_0_loc";
	rename -uid "9E6C0749-4653-3FD8-2042-CC93B020FEC9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176266 -7.1054273576010019e-015 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "5DFF21F7-4FEA-B5B2-3378-71AC1386054A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc4Shape" -p "finger_L2_1_loc";
	rename -uid "4C72F9CD-4EE2-0893-2503-8F9AF9E5D022";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_1_loc5Shape" -p "finger_L2_1_loc";
	rename -uid "72E91FF6-4207-9409-D3FB-4A891938FD52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_1_loc6Shape" -p "finger_L2_1_loc";
	rename -uid "F69A0239-4529-B363-E52B-9A8DE671F62C";
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
createNode nurbsCurve -n "finger_L2_1_loc6_0crvShape" -p "finger_L2_1_loc";
	rename -uid "134091FD-47B2-3935-E5CA-AA89F1282457";
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
createNode nurbsCurve -n "finger_L2_1_loc6_1crvShape" -p "finger_L2_1_loc";
	rename -uid "C6AF3DFB-4738-AF5F-FF20-9BBF388B157D";
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
createNode transform -n "finger_L2_2_loc" -p "finger_L2_1_loc";
	rename -uid "8433CDB6-49F7-F347-1357-9DBA02AA1DC2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914466 -3.5527136788005009e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "66A91BD4-48D8-526C-F963-D0AA703DC596";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc4Shape" -p "finger_L2_2_loc";
	rename -uid "ECDCCC7B-4F76-FAE1-C007-B794EC87DAB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_2_loc5Shape" -p "finger_L2_2_loc";
	rename -uid "CE3BCD87-46D5-28AE-0199-BA907FF84E9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_2_loc6Shape" -p "finger_L2_2_loc";
	rename -uid "12F0E6B9-424B-1882-F3CB-24866C43C0D6";
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
createNode nurbsCurve -n "finger_L2_2_loc6_0crvShape" -p "finger_L2_2_loc";
	rename -uid "055EB636-4BAF-F6CC-C8F0-579DF5C006DA";
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
createNode nurbsCurve -n "finger_L2_2_loc6_1crvShape" -p "finger_L2_2_loc";
	rename -uid "75235F78-49DA-B865-E29F-08BA91D17279";
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
createNode transform -n "finger_L2_blade" -p "finger_L2_root";
	rename -uid "CE8FB3B7-4B6B-65C1-A809-AEB76CA3B99B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "8AB3C912-4D7D-BDF5-CA49-7A9458C0230E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970799 0 0
		0 0.25859336491323598 0
		0 0 0
		;
createNode aimConstraint -n "finger_L2_blade_aimConstraint2" -p "finger_L2_blade";
	rename -uid "BC5287BD-46C6-EA1A-354C-469028AE757F";
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
createNode pointConstraint -n "finger_L2_blade_pointConstraint2" -p "finger_L2_blade";
	rename -uid "B245C73F-4073-A918-750F-88A1F79E3F74";
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
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-015 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "D422EB2E-46F4-704F-92C6-058449618438";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309277 -29.023661369441914 1.4173349723014586 ;
	setAttr ".r" -type "double3" -0.5414061309813577 -1.5904804996604294 47.737641631363694 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786029 2.6320983106786091 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "BB7AF30B-4AAE-CF64-5F29-5789EB5BD951";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "F61D126D-4C51-41A9-62E2-4780F830EFBE";
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
	rename -uid "7DAAE823-4178-DB7A-5641-D4A4956F7BFF";
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
	setAttr ".t" -type "double3" -0.0077643969605958318 -0.12358406696726121 2.9483952421545645 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870172 -79.977014017420501 -112.77222628637939 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661807 1.2929668245661803 1.2929668245661814 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".comp_index" 1;
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_L1_rootShape" -p "finger_L1_root";
	rename -uid "F72BF4C8-4F3E-E94D-76CB-EA845B7BAE27";
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
createNode nurbsCurve -n "finger_L1_root4Shape" -p "finger_L1_root";
	rename -uid "E193778D-4DDC-B5DF-9535-8AB8F77E66AD";
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
createNode nurbsCurve -n "finger_L1_root5Shape" -p "finger_L1_root";
	rename -uid "6D6C1C27-43A3-8B60-7885-88B0E4E8FE01";
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
createNode nurbsCurve -n "finger_L1_root6Shape" -p "finger_L1_root";
	rename -uid "BF3704E2-4ED4-B184-DAC7-AAA7A90817AA";
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
	rename -uid "A5E8DA73-48CD-8AD9-C9C1-4C996A8A30B0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000018 -7.1054273576010019e-015 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "0FC0A9F7-4559-F256-6714-54829EBBFA73";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc4Shape" -p "finger_L1_0_loc";
	rename -uid "1432ED0B-4FC5-A8A9-24B5-F2AEBD8183CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_0_loc5Shape" -p "finger_L1_0_loc";
	rename -uid "722402C9-40AC-EA50-5051-948FEAA8D535";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_0_loc6Shape" -p "finger_L1_0_loc";
	rename -uid "DDF6696F-4104-103C-1C65-D39A1213889F";
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
createNode nurbsCurve -n "finger_L1_0_loc6_0crvShape" -p "finger_L1_0_loc";
	rename -uid "F5EB9551-42F4-9CEC-F0D7-90B30EE02AA1";
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
createNode nurbsCurve -n "finger_L1_0_loc6_1crvShape" -p "finger_L1_0_loc";
	rename -uid "D821DBA0-47A7-B344-17FD-859B2C0608E5";
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
createNode transform -n "finger_L1_1_loc" -p "finger_L1_0_loc";
	rename -uid "2C991C8D-4C65-CF2F-B776-BCB7D45E650C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414017373 1.0658141036401503e-014 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "39897737-430D-FD01-4237-F3A2C6A759BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc4Shape" -p "finger_L1_1_loc";
	rename -uid "989A7442-44A9-560D-C161-28AEDB343DC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_1_loc5Shape" -p "finger_L1_1_loc";
	rename -uid "8D13888D-4AD4-891D-0EF4-CD80F0C40042";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_1_loc6Shape" -p "finger_L1_1_loc";
	rename -uid "F5EE1B3E-40A8-9644-F984-849762F4D74E";
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
createNode nurbsCurve -n "finger_L1_1_loc6_0crvShape" -p "finger_L1_1_loc";
	rename -uid "7307893C-4874-D417-52A1-48A018685032";
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
createNode nurbsCurve -n "finger_L1_1_loc6_1crvShape" -p "finger_L1_1_loc";
	rename -uid "AB120517-44A4-A019-A0DE-16966C1E1A0A";
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
createNode transform -n "finger_L1_2_loc" -p "finger_L1_1_loc";
	rename -uid "DED3DBA0-4E05-136F-3889-A2920FD10824";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 -7.1054273576010019e-015 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "D48017D4-45DE-CF7B-D1BA-27AE952E63BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc4Shape" -p "finger_L1_2_loc";
	rename -uid "539E03D1-4344-4CBC-150F-21A0DC7D477D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_2_loc5Shape" -p "finger_L1_2_loc";
	rename -uid "55F8C1C6-4FCD-C17D-5D2C-1B9D5E7CF885";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_2_loc6Shape" -p "finger_L1_2_loc";
	rename -uid "20D0E3E8-4751-4395-D2C7-32885BC82768";
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
createNode nurbsCurve -n "finger_L1_2_loc6_0crvShape" -p "finger_L1_2_loc";
	rename -uid "E639D639-4CF0-C231-99ED-B3A8922B1F5B";
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
createNode nurbsCurve -n "finger_L1_2_loc6_1crvShape" -p "finger_L1_2_loc";
	rename -uid "999DC775-4DF0-F9E2-80F4-E2BF743ACBDB";
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
createNode transform -n "finger_L1_blade" -p "finger_L1_root";
	rename -uid "AA6DD6AC-4B34-C76E-F7DD-2F9816004FF1";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "7C9FCA66-46B4-3C8A-6A4A-7893D0A65544";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970844 0 0
		0 0.25859336491323615 0
		0 0 0
		;
createNode aimConstraint -n "finger_L1_blade_aimConstraint2" -p "finger_L1_blade";
	rename -uid "05E879ED-4916-29A2-8185-348A9FCB6E2C";
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
createNode pointConstraint -n "finger_L1_blade_pointConstraint2" -p "finger_L1_blade";
	rename -uid "51B1C48D-40EA-CB36-6972-31B817CA95FF";
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
	setAttr ".rst" -type "double3" 8.8817841970012523e-015 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "99083A87-46F0-DE98-BFBD-7B818B64DC6E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153226 -28.040620010901236 1.1418187531119683 ;
	setAttr ".r" -type "double3" 5.8484943948513246 9.9768879508790249 54.111347352877772 ;
	setAttr ".s" -type "double3" 2.6320983106786113 2.6320983106786016 2.6320983106786069 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "1E022C13-4822-E58D-F636-D28170725A3B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "6CB355EE-4E28-89AC-3B9B-39A88BA618F5";
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
	rename -uid "2856BDCD-4E0C-595F-9281-158366147ECC";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "02EC2544-4F59-18D7-476F-A086B4FC7B28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.1850323264903013 0 0
		0 0.061677442163433766 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint2" -p "meta_L0_blade";
	rename -uid "A49FA205-4592-B963-D694-90B19BC63144";
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
createNode pointConstraint -n "meta_L0_blade_pointConstraint2" -p "meta_L0_blade";
	rename -uid "1D224449-4254-78AB-7C6A-04BDD9179226";
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
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 7.1054273576010019e-015 5.3290705182007514e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "C719B656-4BAC-DD42-220B-AC9577378579";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400869 -38.076493243285533 11.714163621934826 ;
	setAttr ".r" -type "double3" -81.595645682431552 -44.654258545705218 89.275820115296455 ;
	setAttr ".s" -type "double3" 3.4032157947041322 3.4032157947041188 3.4032157947041277 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "F43D01FD-4008-8F35-174C-DD8C827DA9DE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "6B9EEDEA-439B-5E9C-9C36-3CAC0AB1E9C0";
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
createNode transform -n "thumb_L0_root" -p "meta_L0_root";
	rename -uid "49ACFFDE-4048-21CB-72FD-189DB2F6D324";
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
	setAttr ".t" -type "double3" 0.16562611832586249 -0.22654222078975295 0.1136967941811271 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -120.73252624368645 -40.113048083814867 -140.23760680970545 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6654124751949595 1.6654124751949584 1.6654124751949593 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "thumb";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "thumb_L0_rootShape" -p "thumb_L0_root";
	rename -uid "23BB50D0-4849-B5F1-B9CD-72A492525906";
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
createNode nurbsCurve -n "thumb_L0_root4Shape" -p "thumb_L0_root";
	rename -uid "8649F1C9-49F4-99AB-743E-748BE30666B8";
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
createNode nurbsCurve -n "thumb_L0_root5Shape" -p "thumb_L0_root";
	rename -uid "4A49B20F-4188-E820-D2CD-C38C73E90491";
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
createNode nurbsCurve -n "thumb_L0_root6Shape" -p "thumb_L0_root";
	rename -uid "918AE7E3-49E1-ADCF-A869-79AB861E53BB";
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
	rename -uid "E8FC6232-41B8-6CD0-5557-8D866A96B5CF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469495 0.0024095775966888056 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060904 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "15E58AF2-4062-E8AE-8E1B-CDB3709C66BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc4Shape" -p "thumb_L0_0_loc";
	rename -uid "D8F83CC5-43EA-07FE-BAEC-9894D29DC7CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc5Shape" -p "thumb_L0_0_loc";
	rename -uid "11AFB848-4EB8-A970-67E1-7CAE7F7CC266";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_0_loc6Shape" -p "thumb_L0_0_loc";
	rename -uid "6AD908D9-4170-73EC-C126-4E87E89A6A83";
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
createNode nurbsCurve -n "thumb_L0_0_loc6_0crvShape" -p "thumb_L0_0_loc";
	rename -uid "5134B8D0-487B-EE9A-A0CD-009BBDD5EC46";
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
createNode nurbsCurve -n "thumb_L0_0_loc6_1crvShape" -p "thumb_L0_0_loc";
	rename -uid "BE930016-4FAE-D43B-3BAF-3BABB3755EAE";
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
createNode transform -n "thumb_L0_1_loc" -p "thumb_L0_0_loc";
	rename -uid "2B294F10-4F7B-6880-51EE-D8A75F4E1416";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522676 -2.6645352591003757e-015 1.4210854715202004e-014 ;
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
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "F51F7816-4516-616C-A290-4EA044C5AF3A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc4Shape" -p "thumb_L0_1_loc";
	rename -uid "9458EF60-4C45-1DCA-266D-7BAF75DD8B80";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc5Shape" -p "thumb_L0_1_loc";
	rename -uid "EA71CBCB-484A-290A-ED58-CAB3CB30486A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_1_loc6Shape" -p "thumb_L0_1_loc";
	rename -uid "C2F7E206-404B-5A9A-133D-0BB55F564693";
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
createNode nurbsCurve -n "thumb_L0_1_loc6_0crvShape" -p "thumb_L0_1_loc";
	rename -uid "8797C4FE-4AEB-B6EE-85FB-90AED3DF3943";
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
createNode nurbsCurve -n "thumb_L0_1_loc6_1crvShape" -p "thumb_L0_1_loc";
	rename -uid "52AD1F65-4FAC-F065-1977-7D91E5AD0218";
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
createNode transform -n "thumb_L0_2_loc" -p "thumb_L0_1_loc";
	rename -uid "B201BD65-46B0-CE5E-5B8B-44B8785159D2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915511097 1.7763568394002505e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "33120A4C-4CE1-D56D-C86A-7EAAA16F6DFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc4Shape" -p "thumb_L0_2_loc";
	rename -uid "EAB60696-4826-3381-1585-0482D6F15CF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc5Shape" -p "thumb_L0_2_loc";
	rename -uid "A06C143A-48D9-3617-6136-339D1C949325";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_2_loc6Shape" -p "thumb_L0_2_loc";
	rename -uid "4B7697BE-43DF-DB61-6A9D-AFA349A5A935";
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
createNode nurbsCurve -n "thumb_L0_2_loc6_0crvShape" -p "thumb_L0_2_loc";
	rename -uid "2C1E65B1-47D9-841B-7D44-07BA45364097";
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
createNode nurbsCurve -n "thumb_L0_2_loc6_1crvShape" -p "thumb_L0_2_loc";
	rename -uid "19FE6D62-4276-F63F-1BF3-7F879A8FC5A9";
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
createNode transform -n "thumb_L0_blade" -p "thumb_L0_root";
	rename -uid "C9427AF5-4499-C1BB-2B3F-1F915CF3ED97";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "89F7476E-4569-24A1-9648-4680BE27AAC3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.9992474851169757 0 0
		0 0.3330824950389919 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint2" -p "thumb_L0_blade";
	rename -uid "940A9DF1-4940-FF82-0E03-769FB82F5991";
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
	setAttr ".rsrr" -type "double3" 0 0 0.16043147703802385 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint2" -p "thumb_L0_blade";
	rename -uid "C33D8D2C-4DF6-C943-0579-59A2016B40EB";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -3.5527136788005009e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "35A14A44-4259-3BC9-D895-1E99FDB6BEB9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688552 -7.1018915006055376 17.729458649684098 ;
	setAttr ".r" -type "double3" -124.4430220536269 63.100734454449203 -77.281354162701348 ;
	setAttr ".s" -type "double3" 2.0434672163157299 2.0434672163157219 2.0434672163157273 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "84D78C2B-4AE0-9F8E-FA83-4DBA5E9E83EC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "54CE6A3A-4438-8350-BB6B-7C9AB637D81D";
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
	rename -uid "AC5CF1D1-4F91-1516-B087-81A0E0228659";
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
	setAttr ".t" -type "double3" -0.18403723679762996 -0.30586006047062853 2.7614233959505636 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808341 -71.606679450095783 -133.79382708612806 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661805 1.2929668245661803 1.2929668245661814 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_L0_rootShape" -p "finger_L0_root";
	rename -uid "0025FBF2-4F87-9F6B-F2C6-B1974C6EFF19";
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
createNode nurbsCurve -n "finger_L0_root4Shape" -p "finger_L0_root";
	rename -uid "C8AB30AE-4DD6-E9DA-0E8C-649A019DC80C";
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
createNode nurbsCurve -n "finger_L0_root5Shape" -p "finger_L0_root";
	rename -uid "86D1A56E-49DF-408F-004C-58A06F5FC87E";
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
createNode nurbsCurve -n "finger_L0_root6Shape" -p "finger_L0_root";
	rename -uid "29D08861-4788-346E-62AE-0DADD0C724A7";
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
	rename -uid "8687EA3C-41E2-046E-20F1-C69B232DBC97";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999822 1.0658141036401503e-014 3.1086244689504383e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "6093D81E-4A15-7E5F-8204-708D55C07234";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc4Shape" -p "finger_L0_0_loc";
	rename -uid "165BBBAF-4D84-AF9B-3806-73A6C2E8BDFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_0_loc5Shape" -p "finger_L0_0_loc";
	rename -uid "EA028FA5-47FF-134F-DCDC-3DA69356BEEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_0_loc6Shape" -p "finger_L0_0_loc";
	rename -uid "39A8CE81-4C3B-5992-9A28-89927F7A2FF5";
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
createNode nurbsCurve -n "finger_L0_0_loc6_0crvShape" -p "finger_L0_0_loc";
	rename -uid "AC13FE18-4D7D-F261-C3F4-F6B07B960D8A";
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
createNode nurbsCurve -n "finger_L0_0_loc6_1crvShape" -p "finger_L0_0_loc";
	rename -uid "CE7FA273-47E7-D9AB-64EC-C5AA2D25E2BC";
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
createNode transform -n "finger_L0_1_loc" -p "finger_L0_0_loc";
	rename -uid "C3DEDC64-4D8F-040A-9D08-B99F214B6EB5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927074 -3.5527136788005009e-015 2.2204460492503131e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "8F162F62-4A12-9977-AE04-E3A403BF5214";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc4Shape" -p "finger_L0_1_loc";
	rename -uid "1A19B597-4CC6-026F-C1D9-07B97EC0A4E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_1_loc5Shape" -p "finger_L0_1_loc";
	rename -uid "69942C60-46B2-587F-6DDD-CF91B56E9B0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_1_loc6Shape" -p "finger_L0_1_loc";
	rename -uid "73088F10-46C9-CB05-2653-F1BD2959C950";
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
createNode nurbsCurve -n "finger_L0_1_loc6_0crvShape" -p "finger_L0_1_loc";
	rename -uid "981E86C1-4B5D-C136-5BB3-0A978329F9D9";
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
createNode nurbsCurve -n "finger_L0_1_loc6_1crvShape" -p "finger_L0_1_loc";
	rename -uid "E5B2D5C8-4B7B-FAFA-26CF-4CBCD59DFF40";
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
createNode transform -n "finger_L0_2_loc" -p "finger_L0_1_loc";
	rename -uid "5CE6FCC7-4688-1E45-BCC4-189C5E223EED";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392369608 -7.1054273576010019e-015 -4.4408920985006262e-015 ;
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
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "5444FFA9-414F-A653-F42D-E4AA4495448E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc4Shape" -p "finger_L0_2_loc";
	rename -uid "90B63DDD-4078-0B39-C5B2-C88B920FB64A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_2_loc5Shape" -p "finger_L0_2_loc";
	rename -uid "58816EBB-4505-8B83-5309-4D94B5FBEC9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_2_loc6Shape" -p "finger_L0_2_loc";
	rename -uid "EC8E05F5-4E50-8D22-BD38-24B9ABB48542";
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
createNode nurbsCurve -n "finger_L0_2_loc6_0crvShape" -p "finger_L0_2_loc";
	rename -uid "31C44C07-4123-E41C-CC9F-509330E19A38";
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
createNode nurbsCurve -n "finger_L0_2_loc6_1crvShape" -p "finger_L0_2_loc";
	rename -uid "AB6D1796-4B8C-F9E1-575E-9CB240573039";
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
createNode transform -n "finger_L0_blade" -p "finger_L0_root";
	rename -uid "32494741-4012-E60F-D808-CB8CFB42706C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "263EB786-43BE-948F-1F0B-8E94869E34B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970833 0 0
		0 0.25859336491323609 0
		0 0 0
		;
createNode aimConstraint -n "finger_L0_blade_aimConstraint2" -p "finger_L0_blade";
	rename -uid "E9EF2425-4E21-CA39-D7AC-56B73CA15F54";
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
createNode pointConstraint -n "finger_L0_blade_pointConstraint2" -p "finger_L0_blade";
	rename -uid "CBA12597-4114-60B8-58F3-C99B814CA5BD";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "1359F626-4BD2-9BB0-5434-46B612FB8C6B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713105 -27.33600805718099 2.4648652761323486 ;
	setAttr ".r" -type "double3" 9.1654334880158022 22.111176212559876 57.120615095543982 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786016 2.6320983106786073 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "04254863-4A78-9B30-48FE-7D993F7C6647";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "59B90FB2-407A-B16B-3F6F-A3BF4A21AF49";
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
	rename -uid "E87DBC24-4CED-4D73-995F-52A6124E7404";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200383 -11.862061807473035 1.1564412205648513 ;
	setAttr ".r" -type "double3" -2.1534408611045461 -4.1959370793366988 45.437740049298213 ;
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377389 1.0495082267377407 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "2730B3C7-432B-7DA5-91C8-E38AFB240DE8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "3EEFCBF5-4726-5B52-D994-E4A67F9C8162";
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
	rename -uid "4B179094-4A7E-086B-19C6-6E9D1F128FD5";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999711 0.99999999999999789 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "7A0A908E-4EB8-9BC6-91BA-1CBA7A1EBA53";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000075 0 0
		0 0.20000000000000026 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint2" -p "shoulder_L0_blade";
	rename -uid "02F987A6-40E4-3364-DF63-998CA207BF30";
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
	setAttr ".o" -type "double3" 90 179.99999999999977 180.00000000000006 ;
	setAttr ".rsrr" -type "double3" 23.386262286472203 122.53864021838235 110.03040021520714 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint2" -p "shoulder_L0_blade";
	rename -uid "814E89DF-40CB-5B4F-8BFA-91AAE04A6D07";
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
	setAttr ".rst" -type "double3" 0 -3.4694469519536142e-018 0 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "C92EF5C6-4C65-D709-44CD-7B8742DCBD69";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509838 0.0092761897382757329 0.1167332775326501 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377376 1.0495082267377378 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "D98208EA-4DE7-D831-26BE-5B8C8CF6BAAC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "E4E0EC25-455B-D0A9-0EA0-139FB0E2DF53";
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
	rename -uid "3E24B7D3-4906-9F91-43C1-8BB0B1C16839";
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
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2667429610648497 0.53748181085566282 -4.2147015411630238e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 7.0622500768802529e-031 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.59839228104243425 0.59839228104243181 0.59839228104243136 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "neck_ik_01";
	setAttr ".comp_name" -type "string" "neck";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".headrefarray" -type "string" "spine_C0_eff,body_C0_root,local_C0_root";
	setAttr ".ikrefarray" -type "string" "spine_C0_eff,body_C0_root,local_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".maxsquash" 0.5;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
	rename -uid "673B87A2-402A-881F-7B9F-36AB77821356";
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
createNode nurbsCurve -n "neck_C0_root4Shape" -p "neck_C0_root";
	rename -uid "8AFB2D31-46C2-98CF-3E2F-489A57044C8D";
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
createNode nurbsCurve -n "neck_C0_root5Shape" -p "neck_C0_root";
	rename -uid "F7563EDC-4B40-A15E-CB2B-4BB2EC7B8FF2";
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
createNode nurbsCurve -n "neck_C0_root6Shape" -p "neck_C0_root";
	rename -uid "8BFA5226-47F8-6EB8-7E35-468FB4B5FFF9";
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
	rename -uid "B770162A-4D45-0F1A-194D-9CBFF9C588CC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981641341 2.4674946259578157 1.5382908879615383e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.999999999999998 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "67D7A0A9-4E53-A46C-2229-16B72598707C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_neck4Shape" -p "neck_C0_neck";
	rename -uid "AD7EDE4D-42A9-F21F-FCB0-3B98782264FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_neck5Shape" -p "neck_C0_neck";
	rename -uid "2EE2A828-4F51-593E-0B9A-BDA0BC97ADCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_neck6Shape" -p "neck_C0_neck";
	rename -uid "3C59398A-4B16-EA09-3CB3-EFB0903E8EE6";
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
createNode nurbsCurve -n "neck_C0_neck6_0crvShape" -p "neck_C0_neck";
	rename -uid "CEA8E538-4223-C1DE-DD36-C9A12DC9042C";
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
createNode nurbsCurve -n "neck_C0_neck6_1crvShape" -p "neck_C0_neck";
	rename -uid "C2EF0872-4B61-E982-62A0-5C99ADD85488";
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
	rename -uid "DC15D1F0-4D07-CA70-1921-9F9B89263C0F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 9.7144514654701197e-017 0.10000000000002274 1.2246467991474146e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "5F210BE9-4ABF-36BE-457A-1D9EE29BF6FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_head4Shape" -p "neck_C0_head";
	rename -uid "473D267F-49E7-A1CD-0F96-C9BDEDA07C88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_head5Shape" -p "neck_C0_head";
	rename -uid "A7BF3DBB-4A25-BFD7-A3DE-669BD09E3E34";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_head6Shape" -p "neck_C0_head";
	rename -uid "88655374-46F3-8C0D-2E79-81BFF79E31E9";
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
createNode nurbsCurve -n "neck_C0_head6_0crvShape" -p "neck_C0_head";
	rename -uid "49796DBE-4D81-8A58-9C2F-FFAD00764F67";
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
createNode nurbsCurve -n "neck_C0_head6_1crvShape" -p "neck_C0_head";
	rename -uid "405330DF-40C6-6F4B-916F-A7ABA38363F9";
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
	rename -uid "8C92C8A1-4625-287A-15DB-2395E3F89331";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1379786002407855e-015 3.074620997828184 2.3592239273284498e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "C93DAA29-45D5-D646-03EC-DAA6B94EF6CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_eff4Shape" -p "neck_C0_eff";
	rename -uid "E1EA8C76-4C98-76D6-0649-0F8DC8A33EA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_eff5Shape" -p "neck_C0_eff";
	rename -uid "0D5F7E5E-456A-B5A7-CE77-D89C33301DBF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_eff6Shape" -p "neck_C0_eff";
	rename -uid "20D0FA78-4038-23D7-D856-5D98CC1E771F";
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
createNode nurbsCurve -n "neck_C0_eff6_0crvShape" -p "neck_C0_eff";
	rename -uid "09EDA440-4479-9A81-2B17-02A49DE71504";
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
createNode nurbsCurve -n "neck_C0_eff6_1crvShape" -p "neck_C0_eff";
	rename -uid "FC226745-4058-3E7F-624A-6FB6F3B693D9";
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
createNode transform -n "faceUI_C0_root" -p "neck_C0_eff";
	rename -uid "4B41E202-4046-E47C-5AA7-E38899F6DAA2";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.0677903833643541e-015 1.3604681763869948 7.2046004192796803e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "faceUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "faceUI_C0_rootShape" -p "faceUI_C0_root";
	rename -uid "B9EE0AE2-47D0-88E4-A77E-3A84F7A38E87";
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
createNode nurbsCurve -n "faceUI_C0_root4Shape" -p "faceUI_C0_root";
	rename -uid "711A2666-4536-22F9-0B83-C8A240A4406C";
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
createNode nurbsCurve -n "faceUI_C0_root5Shape" -p "faceUI_C0_root";
	rename -uid "F105CF2F-4B76-4599-AB07-EEB137C0725F";
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
createNode nurbsCurve -n "faceUI_C0_root6Shape" -p "faceUI_C0_root";
	rename -uid "ADA8FADD-428B-6659-1208-C29AAA3BDA92";
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
	rename -uid "7B0CAAFA-4508-5507-F3BB-D9BA35DC7781";
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
	setAttr ".t" -type "double3" 8.3266726846886741e-016 -2.1316282072803006e-014 1.7723706024530678e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009523 0.95913545105009312 0.95913545105008968 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
	rename -uid "B5748D0E-4749-93BF-45DF-A2982E169C48";
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
createNode nurbsCurve -n "mouth_C0_root4Shape" -p "mouth_C0_root";
	rename -uid "1DE347DC-43D2-3D0A-52AC-88BE340B25E4";
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
createNode nurbsCurve -n "mouth_C0_root5Shape" -p "mouth_C0_root";
	rename -uid "FCC33F93-4AB1-27C0-56B8-75AB3C2AC61D";
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
createNode nurbsCurve -n "mouth_C0_root6Shape" -p "mouth_C0_root";
	rename -uid "87C0B9B9-4733-ED51-F9A9-719CDA0FFDDB";
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
	rename -uid "D2C335E0-42BB-D946-E3E2-35BF7C0FA77C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193656e-016 -0.62123610319593681 1.8022590188867595 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1.0000000000000004 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "97A049A5-421B-AF46-B7E6-53AD4F192F8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter4Shape" -p "mouth_C0_rotcenter";
	rename -uid "371352D2-4676-B518-C59D-39B07D11CDCF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter5Shape" -p "mouth_C0_rotcenter";
	rename -uid "3924BFA2-4743-45C2-7C8D-8E871D9D3911";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_rotcenter6Shape" -p "mouth_C0_rotcenter";
	rename -uid "CED69499-42F7-2C9A-AF81-5EA4E26774B1";
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
createNode nurbsCurve -n "mouth_C0_rotcenter6_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "27DBCDDB-49CF-64E2-1774-E5925027846B";
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
createNode nurbsCurve -n "mouth_C0_rotcenter6_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "CA568716-44CB-D1FD-7E00-EF826DDD9A2C";
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
	rename -uid "643F338D-45BB-A8E2-014C-55BC7782CC02";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.9761536313414973e-017 0.12388352783450074 0.23628786867351503 ;
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
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "CD4FAB92-4DDD-331A-5F3E-50AD694FB6D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup4Shape" -p "mouth_C0_lipup";
	rename -uid "5718DB1C-49D4-189F-86C0-BE8368B3593A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_lipup5Shape" -p "mouth_C0_lipup";
	rename -uid "509AA885-4BBF-4CC3-C243-9E8B164D2B81";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_lipup6Shape" -p "mouth_C0_lipup";
	rename -uid "DFC179CE-4063-C2F7-73A9-16990A75CEF8";
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
createNode nurbsCurve -n "mouth_C0_lipup6_0crvShape" -p "mouth_C0_lipup";
	rename -uid "32E6E64B-4317-15B5-1219-53988D6C7154";
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
createNode nurbsCurve -n "mouth_C0_lipup6_1crvShape" -p "mouth_C0_lipup";
	rename -uid "0469F53D-4631-FA56-E14F-06AABB193EB0";
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
	rename -uid "CCECD608-4AD3-F736-639A-83934B216086";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904463e-015 -30.115037669761456 -2.1322109539326464 ;
	setAttr ".s" -type "double3" 1.8286050763007564 1.8286050763007575 1.8286050763007589 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "0BD47AC2-425D-77C1-D1E2-FD8D31E3D03A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "6ABD5F9A-49C7-6BD8-103F-62A560FC2743";
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
	rename -uid "B6F58185-410E-1DBC-42DA-4D9C9E028DF3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.8775621283845485e-017 -0.14678247393468169 0.18194531820222415 ;
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
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "9E644112-4C65-DC49-3396-09A0526D9769";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow4Shape" -p "mouth_C0_liplow";
	rename -uid "31F972F1-42DD-0607-48C1-DFAB33269AFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_liplow5Shape" -p "mouth_C0_liplow";
	rename -uid "BA63C094-4E16-1E41-FD08-36B5114E223C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_liplow6Shape" -p "mouth_C0_liplow";
	rename -uid "AC3E59CF-4CF5-784D-D204-2A9291BEBE1D";
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
createNode nurbsCurve -n "mouth_C0_liplow6_0crvShape" -p "mouth_C0_liplow";
	rename -uid "B6FB222E-46EF-5F59-9ED4-19A9D8B2F466";
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
createNode nurbsCurve -n "mouth_C0_liplow6_1crvShape" -p "mouth_C0_liplow";
	rename -uid "E95C8881-4197-7519-B373-B19731AC73AE";
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
	rename -uid "39B7F9CD-432B-2DD2-A311-849FE4A9B2FA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200166e-015 -29.844371667992274 -2.0778684034613555 ;
	setAttr ".s" -type "double3" 1.8286050763007564 1.8286050763007575 1.8286050763007589 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "A7CBDBFB-49C9-74C8-2883-12BEBD78A8DD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "C98A5318-4FAD-542D-F56E-75B39CE6B0CA";
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
	rename -uid "05991246-408C-3F62-1305-169D5BBC4F4D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0917243463457513e-015 -1.4111110000774936 2.0692083234973317 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1.0000000000000004 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "1158634F-45DE-5939-C372-B5B18AD288D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw4Shape" -p "mouth_C0_jaw";
	rename -uid "20EDE8A5-4685-0A23-A642-F5AD7ECAB80C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_jaw5Shape" -p "mouth_C0_jaw";
	rename -uid "0327F40A-4069-8478-59FF-F5A6110F1D84";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_jaw6Shape" -p "mouth_C0_jaw";
	rename -uid "478438F2-460A-C61E-4164-7CB9ADEBCCD4";
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
createNode nurbsCurve -n "mouth_C0_jaw6_0crvShape" -p "mouth_C0_jaw";
	rename -uid "24DDC0FF-471E-496F-3278-568153A67694";
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
createNode nurbsCurve -n "mouth_C0_jaw6_1crvShape" -p "mouth_C0_jaw";
	rename -uid "56F2159A-4333-3B55-4D00-DCB5C6934E99";
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
createNode transform -n "tongue_C0_root" -p "mouth_C0_jaw";
	rename -uid "6A9D9338-45C1-E309-4231-BB910A7AB6F8";
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
	setAttr ".t" -type "double3" 8.2909663197644112e-016 0.86108709817294482 -1.6295011454214585 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700594 0.17172273903700605 0.17172273903700616 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "tongue";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "tongue_C0_rootShape" -p "tongue_C0_root";
	rename -uid "1429C448-482A-CBCF-4AA1-AF8F0A8EDCB6";
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
createNode nurbsCurve -n "tongue_C0_root4Shape" -p "tongue_C0_root";
	rename -uid "DF15FFFC-4525-EF5B-A335-29A07679A306";
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
createNode nurbsCurve -n "tongue_C0_root5Shape" -p "tongue_C0_root";
	rename -uid "6EEA2AC4-4AF3-1E4B-C0DD-C3A061A8C7A6";
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
createNode nurbsCurve -n "tongue_C0_root6Shape" -p "tongue_C0_root";
	rename -uid "B6101694-4DA7-AA9A-30F8-B08EB66AD08E";
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
	rename -uid "1E93433B-4D14-1672-0B3F-EEB7A9B0FA4F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.014307918063833e-016 0 1.5794817263027472 ;
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
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "6CFA294F-466C-C225-0714-63ABDD5FB4F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc4Shape" -p "tongue_C0_0_loc";
	rename -uid "2712EFF6-4E92-4050-5F79-43846FCD6EAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc5Shape" -p "tongue_C0_0_loc";
	rename -uid "7170B470-4977-807A-81C5-F0927A10FFE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_0_loc6Shape" -p "tongue_C0_0_loc";
	rename -uid "029907A7-4391-26AA-66F2-B787FD04F0B1";
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
createNode nurbsCurve -n "tongue_C0_0_loc6_0crvShape" -p "tongue_C0_0_loc";
	rename -uid "3701F18F-480D-412F-D4A1-B39AC06D1BAE";
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
createNode nurbsCurve -n "tongue_C0_0_loc6_1crvShape" -p "tongue_C0_0_loc";
	rename -uid "CFA33A16-4AB2-85B4-F072-99967BA129E4";
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
createNode transform -n "tongue_C0_1_loc" -p "tongue_C0_0_loc";
	rename -uid "3799D69C-4FEC-1E32-D37E-CA8724B9E57C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.2170680441442562e-016 -0.16556620751507012 1.5794817263027419 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "2997791C-4E7D-1AAE-40E5-61ACC1045DDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc4Shape" -p "tongue_C0_1_loc";
	rename -uid "FE3139A2-428A-990A-FD32-E19E4F3F73D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc5Shape" -p "tongue_C0_1_loc";
	rename -uid "75E0F7E8-46A0-1779-8ADE-09AD0A7BF453";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_1_loc6Shape" -p "tongue_C0_1_loc";
	rename -uid "79BD9BC8-470B-4EFA-5DA8-08A5C02A264F";
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
createNode nurbsCurve -n "tongue_C0_1_loc6_0crvShape" -p "tongue_C0_1_loc";
	rename -uid "E29EDF21-47C7-939B-D04E-8D9A79CA554A";
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
createNode nurbsCurve -n "tongue_C0_1_loc6_1crvShape" -p "tongue_C0_1_loc";
	rename -uid "C28B976A-480D-6846-24FA-53BD8B5CDC1D";
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
createNode transform -n "tongue_C0_2_loc" -p "tongue_C0_1_loc";
	rename -uid "71A5DF64-45B9-7A66-8D0A-3490DD89F131";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544645516e-016 -0.31043663909071029 1.5794817263027445 ;
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
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "F5781B61-4B83-024A-FA36-C4BC681C3613";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc4Shape" -p "tongue_C0_2_loc";
	rename -uid "F892B75E-46F8-FAE6-AFC8-81BF98C7E325";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc5Shape" -p "tongue_C0_2_loc";
	rename -uid "B35A4337-4260-B734-138F-FA8B27A91D01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_2_loc6Shape" -p "tongue_C0_2_loc";
	rename -uid "7EBCB8C2-42E2-7EF2-77D5-B2B09B5FCFD5";
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
createNode nurbsCurve -n "tongue_C0_2_loc6_0crvShape" -p "tongue_C0_2_loc";
	rename -uid "54021950-4886-8B44-7D0C-69BF2C6334F4";
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
createNode nurbsCurve -n "tongue_C0_2_loc6_1crvShape" -p "tongue_C0_2_loc";
	rename -uid "8046B54B-46D0-1E04-4F39-7F92C443E1F3";
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
createNode transform -n "tongue_C0_3_loc" -p "tongue_C0_2_loc";
	rename -uid "EB13D2CB-4D44-2117-310F-BC8F21B87D1D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0903429653441534e-016 -0.062087327818204585 1.5794817263027436 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "9D414338-4391-695C-2E21-3D942F4DD145";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc4Shape" -p "tongue_C0_3_loc";
	rename -uid "655FECF4-4FA0-C67B-127D-37BFD3784A6E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc5Shape" -p "tongue_C0_3_loc";
	rename -uid "2B6BF469-45A2-D76C-AECE-F69B0B4DDA6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_3_loc6Shape" -p "tongue_C0_3_loc";
	rename -uid "39D2D9D0-4675-78B8-8B8F-7D9192A6DC41";
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
createNode nurbsCurve -n "tongue_C0_3_loc6_0crvShape" -p "tongue_C0_3_loc";
	rename -uid "7B3DE04F-4899-16B9-BA3A-6495887931B7";
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
createNode nurbsCurve -n "tongue_C0_3_loc6_1crvShape" -p "tongue_C0_3_loc";
	rename -uid "737214DA-4629-1BA6-610D-CFB1B48698AC";
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
createNode transform -n "tongue_C0_blade" -p "tongue_C0_root";
	rename -uid "7989D976-4973-C57B-8FCD-9CA63A173E9E";
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
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "63A1037A-4C85-38DB-FE24-3D8BDC209997";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.10303364342220356 0 0
		0 0.034344547807401184 0
		0 0 0
		;
createNode aimConstraint -n "tongue_C0_blade_aimConstraint2" -p "tongue_C0_blade";
	rename -uid "A67530D8-4A5A-96BA-8549-72B6F3EE2EF2";
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
	setAttr ".rsrr" -type "double3" 1.0309989471807224e-012 -89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint2" -p "tongue_C0_blade";
	rename -uid "FA6F300B-4955-61D7-6345-A38F277FC7F3";
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
	setAttr ".rst" -type "double3" 0 -2.8421709430404007e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "4F1BFAA0-40E4-7E60-517F-9CA751B07F89";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046809e-014 -175.06339877760715 -3.106002428328984 ;
	setAttr ".s" -type "double3" 10.648590201596397 10.6485902015964 10.648590201596397 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "78D0FC66-4EB5-D0F1-108A-36B4AF634DD9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "969EBFF2-4D0C-8D31-8DF6-43AFD1EFA417";
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
	rename -uid "C3DE7429-4985-5F10-4567-3A81E68F65AA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757947e-015 -30.612390245122921 -0.093664066372369917 ;
	setAttr ".s" -type "double3" 1.8286050763007544 1.8286050763007593 1.8286050763007571 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "640EF31E-4235-D15E-21C7-E992B7943404";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "AA8BAE92-4FF3-7AEA-C14C-96A698F6F1D7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv2" -p "mouth_C0_root";
	rename -uid "9C81AD7A-412E-F6F5-D15E-B79DB016665A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757947e-015 -30.612390245122921 -0.093664066372369917 ;
	setAttr ".s" -type "double3" 1.8286050763007544 1.8286050763007593 1.8286050763007571 ;
createNode nurbsCurve -n "mouth_C0_crv2Shape" -p "mouth_C0_crv2";
	rename -uid "1ABBE31B-4D21-18D7-84AB-EEB7A5BF194A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv2ShapeOrig" -p "mouth_C0_crv2";
	rename -uid "E313625F-4730-A596-FAF7-C2944FB11314";
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
	rename -uid "F2494539-4CB4-20E5-539B-59832A1086E6";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.2613992666289677 0.71045535901634693 -3.3130608822386252e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932595 1.6711445512932541 1.6711445512932499 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "eyeslook";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "neck_C0_head,local_C0_root,body_C0_root,spine_C0_eff";
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
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eyeslook_C0_rootShape" -p "eyeslook_C0_root";
	rename -uid "1F60A0CC-43DB-FBE0-1C57-0997F9882379";
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
createNode nurbsCurve -n "eyeslook_C0_root4Shape" -p "eyeslook_C0_root";
	rename -uid "CF5ECBDE-4924-9E77-5113-47A02F4B47CA";
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
createNode nurbsCurve -n "eyeslook_C0_root5Shape" -p "eyeslook_C0_root";
	rename -uid "67854E95-41EE-19DD-B381-C78893964D64";
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
createNode nurbsCurve -n "eyeslook_C0_root6Shape" -p "eyeslook_C0_root";
	rename -uid "F2168068-4B37-C2BD-5376-BFBE5D2CDC9D";
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
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "6EBDC460-4D8F-56A2-7780-D7A9662CD1CA";
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
	setAttr ".t" -type "double3" -1.4961368484464259 0.70921581084616392 -0.51425464314724434 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 -0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyeslook_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
	rename -uid "11638EA1-4896-58C5-2908-B1BED2DC66CF";
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
	rename -uid "F1AD1359-4809-E03F-5C19-5584F8280702";
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
	rename -uid "24A34163-4B49-A7F1-893B-BF97FDF702A3";
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
	rename -uid "C6330D93-4744-9E68-63A1-348A2FF21FE1";
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
	rename -uid "767F8584-46D5-5898-9DF8-41B33693FD0C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 -1.0658141036401503e-014 3.7697842257179186 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "137F37D3-4CC3-4EFC-668E-308FC9733E8A";
	setAttr -k off ".v";
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
	rename -uid "E70C9F5D-4F6C-C84D-EFFA-2BB73BF7C39C";
	setAttr -k off ".v";
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
	rename -uid "A761DE8E-474E-DCF3-69D3-189228CB4FB5";
	setAttr -k off ".v";
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
	rename -uid "397D4553-433A-CCA5-E38B-BA991BBD7C70";
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
	rename -uid "3E4059FC-4229-57D3-2C7A-9EBC96509295";
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
	rename -uid "5FAED15A-458E-A25A-4F22-81AE2B98C27C";
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
	rename -uid "87A819FB-4573-D330-61BF-B6A20E64D58D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723901 -30.070644536323638 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.753879954650218 1.7538799546502197 -1.7538799546502115 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "5D281049-4E41-D1F5-E362-1B91276B0971";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "F0B0F00C-4416-D3DF-8AF3-B2A48B9B63B1";
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
	rename -uid "B999EF08-4010-8970-0606-03A17BE25DC5";
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
	setAttr ".t" -type "double3" -1.4961368484464261 0.70921581084616392 0.51425464314724256 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyeslook_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
	rename -uid "2C5E556A-4A07-7734-641D-A99C842D13D2";
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
createNode nurbsCurve -n "eye_L0_root4Shape" -p "eye_L0_root";
	rename -uid "3F93FA93-4840-9B01-7EEC-C6A329F8A1AC";
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
createNode nurbsCurve -n "eye_L0_root5Shape" -p "eye_L0_root";
	rename -uid "178BB6CD-4B47-8E37-E374-FC98CE87035C";
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
createNode nurbsCurve -n "eye_L0_root6Shape" -p "eye_L0_root";
	rename -uid "48484403-47D0-A16D-2913-81B1524689D0";
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
	rename -uid "992F7602-4CA3-1004-3C42-019B26F829EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 -1.0658141036401503e-014 3.7697842257179168 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 1 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "A0627352-4544-D606-5406-619B85F7139D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_look4Shape" -p "eye_L0_look";
	rename -uid "228693D8-4556-9001-0D7D-2D9D2E907EEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_look5Shape" -p "eye_L0_look";
	rename -uid "770B27E5-424B-091B-0845-6FBF5EF7622C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_look6Shape" -p "eye_L0_look";
	rename -uid "53E489B6-4B76-C6D9-A853-E4BB77091C45";
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
createNode nurbsCurve -n "eye_L0_look6_0crvShape" -p "eye_L0_look";
	rename -uid "8063C5B4-4E40-1319-7A44-B8AE330D5D01";
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
createNode nurbsCurve -n "eye_L0_look6_1crvShape" -p "eye_L0_look";
	rename -uid "E30FBC6A-497D-A96D-4092-138F4A2AA107";
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
	rename -uid "0CD8AB7C-4133-ADA1-2280-199AFDA0D585";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.514254643147246 -30.070644536323638 -1.5859733749936755 ;
	setAttr ".s" -type "double3" 1.7538799546502173 1.7538799546502197 1.7538799546502106 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "2D3552B9-47EC-6C3D-7DFD-5FA54760658A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "DB35092D-41C3-14F2-D106-C3AAE6BD5F4F";
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
	rename -uid "9A38BB90-4BF9-4459-9B2F-2FAE4A788CC9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.09787009621156316 -0.34322132772769365 -2.0300963192812533e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "1955AB7E-484E-1EFE-70B5-01B5FA3D8750";
	setAttr -k off ".v";
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
	rename -uid "6E427607-4A81-9A1D-183A-28B73AB59DD9";
	setAttr -k off ".v";
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
	rename -uid "F25E0D9E-4017-F01B-2DA7-6185F73BA691";
	setAttr -k off ".v";
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
	rename -uid "EB46E1F9-4CE8-2A74-B8DD-E18633E1F5A3";
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
createNode nurbsCurve -n "neck_C0_tan4_0crvShape1" -p "neck_C0_tan1";
	rename -uid "C12AB6D8-4775-D42D-81DA-41B8A58536ED";
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
createNode nurbsCurve -n "neck_C0_tan4_1crvShape1" -p "neck_C0_tan1";
	rename -uid "2E8859E8-4056-3291-C981-B09C2C45CACD";
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
	rename -uid "873F7948-48FD-815C-E3C4-F0BFDDF0F369";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547249523 -29.261428725477426 -4.0684386981538128e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502193 1.7538799546502184 1.7538799546502113 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "952084D5-4B25-F1E7-0D2E-A4982F926D1D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "7B0FC81B-42C6-6F13-0D5B-26B3F52A8EDE";
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
	rename -uid "0C53528B-4259-4930-F7CD-77984E6E94B2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198172491 0.45329667709500399 3.8508704761370508e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.999999999999998 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "73C73A76-4882-7C26-6839-79BF64539CCE";
	setAttr -k off ".v";
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
	rename -uid "58361EFF-43FC-1C31-0812-73B1ACF9FEC6";
	setAttr -k off ".v";
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
	rename -uid "4FD8B7AF-4A17-4401-840A-0A82FD759AD5";
	setAttr -k off ".v";
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
	rename -uid "AD8C0120-4A9C-4EF3-D08A-A79EC3BCE627";
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
createNode nurbsCurve -n "neck_C0_tan3_0crvShape0" -p "neck_C0_tan0";
	rename -uid "5207D5AA-4FED-ABAF-9AFE-3FBAFCE760EF";
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
createNode nurbsCurve -n "neck_C0_tan3_1crvShape0" -p "neck_C0_tan0";
	rename -uid "942746CD-48C8-7AF3-016C-34B73D228B78";
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
	rename -uid "828BFB1F-47F8-9F62-5DCE-09AAA0781009";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932519 1.6711445512932497 1.6711445512932455 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 360;
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "682D4863-4F60-D908-5168-5F878F6CBB4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546054 0 0
		0 0.11967845620848684 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint2" -p "neck_C0_blade";
	rename -uid "D2A0D2EB-4D01-FB84-9EBC-7BA64CA1ED14";
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
	setAttr ".o" -type "double3" 360 0 359.99999999999977 ;
	setAttr ".rsrr" -type "double3" 539.9999991462264 0 459.58898802263491 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint2" -p "neck_C0_blade";
	rename -uid "426A8BF1-4A11-D6E6-73C1-06812D9A65DE";
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
		-7.8886090522101181e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "36C6A5A2-4889-C6F8-4059-5290D2218F0B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916403 -26.793934099519554 -3.9146096093576574e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502184 1.7538799546502144 1.753879954650208 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "E53E6D5E-4680-7FF9-93F9-10BC1FAF0C1F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "1CC1AED5-41CE-EE64-F3E1-7ABD404CF12F";
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
	rename -uid "E452B264-45E3-9835-7FD3-28904ABFF14C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "refArray" -ln "refArray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7395848890977454 -0.016853043661003153 0.11673327753265005 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000013 -0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "shoulder_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".refArray" -type "string" "shoulder_R0_root,local_C0_root,body_C0_root,spine_C0_eff";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "0F2093FD-4C79-F89D-6BAD-FAABD8F72E00";
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
	rename -uid "7AB268B6-49E4-DADA-42B9-EAAAA69F0B13";
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
	rename -uid "ACE06B06-4762-67E5-D991-BBB754274239";
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
	rename -uid "6EEE40AB-448C-CAAE-C7C4-CB9F0515FF4C";
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
	rename -uid "4EC30AA0-4489-2A0E-CFE3-E9BAD94E10C9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285644429 -0.91350954729966971 -1.5239746815175863 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999689 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "39F83C22-49CF-D808-6241-189E023E71E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip4Shape" -p "shoulder_R0_tip";
	rename -uid "DD707C12-4786-80F3-B55D-64AA56E51B12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_tip5Shape" -p "shoulder_R0_tip";
	rename -uid "A1568B1C-4BEA-83FF-4CAA-3A89BC2248A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_tip6Shape" -p "shoulder_R0_tip";
	rename -uid "7176C9D1-4B01-B86E-F371-93885057FC29";
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
createNode nurbsCurve -n "shoulder_R0_tip6_0crvShape" -p "shoulder_R0_tip";
	rename -uid "772A4BE1-47E7-6DD7-AE73-0FB6EA9C7C2B";
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
createNode nurbsCurve -n "shoulder_R0_tip6_1crvShape" -p "shoulder_R0_tip";
	rename -uid "4FB76D39-43C9-A71E-5112-33B6C31E72CB";
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
createNode transform -n "arm_R0_root" -p "shoulder_R0_tip";
	rename -uid "E06F4698-4F55-6E48-218D-90A5F4C25734";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-014 -1.1102230246251565e-015 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386961 44.411212983180022 -5.4710434405385193 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 1.0000000000000009 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".ikrefarray" -type "string" "local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 5;
	setAttr ".div1" 5;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "6D7B01F7-4CDE-1D5B-EBF4-1980BF6E0734";
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
createNode nurbsCurve -n "arm_R0_root4Shape" -p "arm_R0_root";
	rename -uid "1E7AF032-4BA7-114E-94CE-5081071AA760";
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
createNode nurbsCurve -n "arm_R0_root5Shape" -p "arm_R0_root";
	rename -uid "6AD9B4BE-4A36-4E71-2344-3082CB00D73E";
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
createNode nurbsCurve -n "arm_R0_root6Shape" -p "arm_R0_root";
	rename -uid "E7D781C2-42C8-AC56-1843-35B6C63B6FEE";
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
	rename -uid "E1F06C79-4FA7-B504-E042-899B7524816B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323425 -8.8817841970012523e-015 0.078976790252911933 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784276 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999833 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "B8CD9442-4BA9-65E9-9ECD-AE9B1A030709";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow4Shape" -p "arm_R0_elbow";
	rename -uid "7EC0BD69-409D-6ACF-EEEA-71A17732C092";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_elbow5Shape" -p "arm_R0_elbow";
	rename -uid "9D388B15-40F9-BCCA-1F2E-1CBB76751D4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_elbow6Shape" -p "arm_R0_elbow";
	rename -uid "FD088F27-4C41-BFA6-DA04-6D975128DF70";
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
createNode nurbsCurve -n "arm_R0_elbow6_0crvShape" -p "arm_R0_elbow";
	rename -uid "1CA4549D-4716-5D7B-A307-F88B6EF586D9";
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
createNode nurbsCurve -n "arm_R0_elbow6_1crvShape" -p "arm_R0_elbow";
	rename -uid "B72B6117-48E9-A4C7-B37E-B5917ABE1A2D";
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
createNode transform -n "arm_R0_wrist" -p "arm_R0_elbow";
	rename -uid "1E30514E-4CAA-2B1E-7CC9-009B36107DEA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496752 1.7763568394002505e-015 -0.11960611218230402 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "75D42EA1-4213-DDE3-9C2D-FE9159363995";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist4Shape" -p "arm_R0_wrist";
	rename -uid "3920B2E9-415C-96D7-9814-9C84843712E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_wrist5Shape" -p "arm_R0_wrist";
	rename -uid "A374A9EB-4EB9-DEC4-06F2-C097AB3AB2D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_wrist6Shape" -p "arm_R0_wrist";
	rename -uid "6442BCD4-463B-2470-5DAD-E7A0378C3071";
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
createNode nurbsCurve -n "arm_R0_wrist6_0crvShape" -p "arm_R0_wrist";
	rename -uid "3BE10349-4A02-F7B8-EC09-2BA35AA62BBB";
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
createNode nurbsCurve -n "arm_R0_wrist6_1crvShape" -p "arm_R0_wrist";
	rename -uid "025B4C29-499F-F892-76E5-C994DF45CAA9";
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
createNode transform -n "arm_R0_eff" -p "arm_R0_wrist";
	rename -uid "EBD193DF-4539-97DC-A7D5-D38978469600";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308291 -3.5527136788005009e-015 2.7755575615628914e-016 ;
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
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "FDD7C68C-442D-C395-00A2-F9AD5C57A573";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_eff4Shape" -p "arm_R0_eff";
	rename -uid "73955A38-40D7-A006-98E4-F09CD4737FF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_eff5Shape" -p "arm_R0_eff";
	rename -uid "3EA4799B-4A2D-F7E6-335F-9BB053BBD316";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_eff6Shape" -p "arm_R0_eff";
	rename -uid "90FA4C3F-4885-7E51-07C3-33AF99AC62E5";
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
createNode nurbsCurve -n "arm_R0_eff6_0crvShape" -p "arm_R0_eff";
	rename -uid "BCC397E2-4245-5722-D029-2D8730798BE2";
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
createNode nurbsCurve -n "arm_R0_eff6_1crvShape" -p "arm_R0_eff";
	rename -uid "4EC53376-4779-8308-82E6-6DBEEFD75265";
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
createNode transform -n "armUI_R0_root" -p "arm_R0_eff";
	rename -uid "0FEC105C-4D72-BD33-6B07-F1A4EE072289";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2124561875008162 0.56073114764518905 -0.29276117198398921 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999956 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "armUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "armUI_R0_rootShape" -p "armUI_R0_root";
	rename -uid "4EBDC3D0-4310-D6FA-6AF5-25935CBB3002";
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
createNode nurbsCurve -n "armUI_R0_root4Shape" -p "armUI_R0_root";
	rename -uid "43A066CF-4255-E15C-537B-A5884A08F19D";
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
createNode nurbsCurve -n "armUI_R0_root5Shape" -p "armUI_R0_root";
	rename -uid "53CD44D3-4197-280B-85BE-D7AA8B3B85A5";
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
createNode nurbsCurve -n "armUI_R0_root6Shape" -p "armUI_R0_root";
	rename -uid "2B1B4504-443D-1DD2-0710-E2AC69D2CD30";
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
createNode transform -n "meta_R0_root" -p "arm_R0_eff";
	rename -uid "2A2F6480-45F6-A042-0C26-C1BEE86214A2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "intScale" -ln "intScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intRotation" -ln "intRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intTranslation" -ln "intTranslation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0556240028445787 -0.075350553640966211 0.3529622528885028 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008864086 93.717381466937326 86.467960127478591 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716891 0.30838721081716913 0.30838721081716935 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "meta_01";
	setAttr ".comp_name" -type "string" "meta";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".intScale" yes;
	setAttr ".intRotation" yes;
	setAttr ".intTranslation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "meta_R0_rootShape" -p "meta_R0_root";
	rename -uid "F5DA0934-45AC-45AF-25B0-63BA7DA4DCE5";
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
createNode nurbsCurve -n "meta_R0_root4Shape" -p "meta_R0_root";
	rename -uid "7429AE95-4F4C-C6A5-339B-B8868A9BF462";
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
createNode nurbsCurve -n "meta_R0_root5Shape" -p "meta_R0_root";
	rename -uid "BADB3B0B-4B4D-8D6A-C56E-119A769E3964";
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
createNode nurbsCurve -n "meta_R0_root6Shape" -p "meta_R0_root";
	rename -uid "F1AD6E1C-4375-3BCC-641D-55A59B99F536";
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
	rename -uid "236A9AB4-4C05-B9C5-1FAF-579E58E22F59";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617696 -7.1054273576010019e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "2420DD89-4047-4D3B-4E11-4FA0C1E510D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc4Shape" -p "meta_R0_0_loc";
	rename -uid "4A78BF97-40AD-EBF9-4F5A-E99D8CA898B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_0_loc5Shape" -p "meta_R0_0_loc";
	rename -uid "719EA736-4633-552A-AB88-DFB24DA7DB4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_0_loc6Shape" -p "meta_R0_0_loc";
	rename -uid "C7E96A0C-4D39-A108-C255-D592A0464AA1";
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
createNode nurbsCurve -n "meta_R0_0_loc6_0crvShape" -p "meta_R0_0_loc";
	rename -uid "C85CFF30-412B-4D84-E515-B1B8ADE0F64A";
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
createNode nurbsCurve -n "meta_R0_0_loc6_1crvShape" -p "meta_R0_0_loc";
	rename -uid "80F5682D-4B5C-CE9D-2397-53ACC9E95009";
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
createNode transform -n "meta_R0_1_loc" -p "meta_R0_0_loc";
	rename -uid "EE4EE403-4002-B19D-F56F-0F916F593DB9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618362 7.1054273576010019e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "780161FE-4132-B1AE-5EEA-88A57A2276E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc4Shape" -p "meta_R0_1_loc";
	rename -uid "54087057-4F05-16A1-7A2C-A6B45D122B33";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_1_loc5Shape" -p "meta_R0_1_loc";
	rename -uid "C71522A8-4B48-7D22-67A9-D4A3F1D76BCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_1_loc6Shape" -p "meta_R0_1_loc";
	rename -uid "7D0CD11F-464B-6ACA-D657-89B7DE2C801B";
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
createNode nurbsCurve -n "meta_R0_1_loc6_0crvShape" -p "meta_R0_1_loc";
	rename -uid "56D046A5-41FB-4466-AF6D-A591FEC4AE9E";
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
createNode nurbsCurve -n "meta_R0_1_loc6_1crvShape" -p "meta_R0_1_loc";
	rename -uid "F66FBAA5-455E-9C45-7019-52A4A189D240";
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
createNode transform -n "meta_R0_2_loc" -p "meta_R0_1_loc";
	rename -uid "6F52DFAF-4207-2FBA-2B65-8294CE007230";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618495 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "14394E7E-4446-C77A-8A73-BEA885DCB208";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc4Shape" -p "meta_R0_2_loc";
	rename -uid "F1F5F0CF-4E99-862C-A9F9-09A8EBEB22D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_2_loc5Shape" -p "meta_R0_2_loc";
	rename -uid "C55B4F97-4FC2-D3EE-1F04-0CBB60C21925";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_2_loc6Shape" -p "meta_R0_2_loc";
	rename -uid "8CA50B32-40D5-51CE-F2B2-53A7AAF7A2EB";
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
createNode nurbsCurve -n "meta_R0_2_loc6_0crvShape" -p "meta_R0_2_loc";
	rename -uid "E1CD8086-4DA1-1596-4C0A-549A6EB257DF";
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
createNode nurbsCurve -n "meta_R0_2_loc6_1crvShape" -p "meta_R0_2_loc";
	rename -uid "0E1CB9DF-461D-2980-340E-B787F7EC7955";
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
createNode transform -n "finger_R3_root" -p "meta_R0_2_loc";
	rename -uid "698246EF-4307-B424-243C-48915E3CB33F";
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
	setAttr ".t" -type "double3" 0.27518484001103483 -0.17360051577791324 2.4946799341790129 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878631139 -68.587073855452076 -5.8163374181277492 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661807 1.2929668245661783 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".comp_index" 3;
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_R3_rootShape" -p "finger_R3_root";
	rename -uid "8D7558E4-46F6-C0C7-09AC-C28A0D191A4E";
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
createNode nurbsCurve -n "finger_R3_root4Shape" -p "finger_R3_root";
	rename -uid "B7A36D1A-4503-71EC-B421-1CBDAD690E48";
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
createNode nurbsCurve -n "finger_R3_root5Shape" -p "finger_R3_root";
	rename -uid "7D0D433C-4A19-4055-75AD-1F9370DC40EC";
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
createNode nurbsCurve -n "finger_R3_root6Shape" -p "finger_R3_root";
	rename -uid "C60944DA-4D7A-FEC8-1230-4A89DD604F2E";
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
	rename -uid "5824C629-42BC-8C68-8C9D-B394CFAE5C12";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830562733 3.5527136788005009e-015 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "07EEE2D4-463D-8DC0-063A-B3920AD82902";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc4Shape" -p "finger_R3_0_loc";
	rename -uid "0E1F5F5F-406C-D360-84F7-918A14F479EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_0_loc5Shape" -p "finger_R3_0_loc";
	rename -uid "376AFFF4-4D4D-87E2-498A-8BB858FCC9A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_0_loc6Shape" -p "finger_R3_0_loc";
	rename -uid "AEE8A74D-443E-A26C-6FAC-979830CA8315";
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
createNode nurbsCurve -n "finger_R3_0_loc6_0crvShape" -p "finger_R3_0_loc";
	rename -uid "2623D873-4E28-D8DE-0F71-878D9BCD7EAF";
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
createNode nurbsCurve -n "finger_R3_0_loc6_1crvShape" -p "finger_R3_0_loc";
	rename -uid "6A4CDF0C-4C4C-98C8-34EE-7686F0D23FEB";
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
createNode transform -n "finger_R3_1_loc" -p "finger_R3_0_loc";
	rename -uid "E892771B-48D0-8DC0-0C17-D6BF549D9D4C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070874708 -1.0658141036401503e-014 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "9308C44A-4327-881E-4679-FF8F621E7E87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc4Shape" -p "finger_R3_1_loc";
	rename -uid "959406EA-410A-7BB1-5823-E0896ED9525C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_1_loc5Shape" -p "finger_R3_1_loc";
	rename -uid "9C90E148-4289-28C8-5504-048FD59775B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_1_loc6Shape" -p "finger_R3_1_loc";
	rename -uid "D46FAE6D-43B8-FEB3-B701-03A6D6C810AB";
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
createNode nurbsCurve -n "finger_R3_1_loc6_0crvShape" -p "finger_R3_1_loc";
	rename -uid "2886F10D-4802-6E46-3D82-8984BA892284";
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
createNode nurbsCurve -n "finger_R3_1_loc6_1crvShape" -p "finger_R3_1_loc";
	rename -uid "35192E86-42D0-5968-8863-988B432BF9CE";
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
createNode transform -n "finger_R3_2_loc" -p "finger_R3_1_loc";
	rename -uid "0957A4EA-4F95-7C57-4C9D-D2B00980A4FA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259194611 -3.5527136788005009e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "D45B6684-405B-5528-EAF2-D7BEAE128611";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc4Shape" -p "finger_R3_2_loc";
	rename -uid "D04A7C67-46DA-D80E-B13D-F0A3D5711AB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_2_loc5Shape" -p "finger_R3_2_loc";
	rename -uid "B25BB3F6-4CDC-D984-309B-A39749C96638";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_2_loc6Shape" -p "finger_R3_2_loc";
	rename -uid "71A17195-4A10-5625-684A-D68AC2CD5346";
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
createNode nurbsCurve -n "finger_R3_2_loc6_0crvShape" -p "finger_R3_2_loc";
	rename -uid "06CA0BE4-4E94-5D9D-5B6F-008674F57030";
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
createNode nurbsCurve -n "finger_R3_2_loc6_1crvShape" -p "finger_R3_2_loc";
	rename -uid "6C7C54C8-413B-61CE-8070-3E9F5104071C";
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
createNode transform -n "finger_R3_blade" -p "finger_R3_root";
	rename -uid "D849005C-4DEF-0EDE-E35E-8DB2F03C6AC1";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "2E3FBDF1-4334-5D9B-B85C-DA8C47D6B383";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970844 0 0
		0 0.25859336491323615 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint2" -p "finger_R3_blade";
	rename -uid "B2DA2BAE-4885-4458-5A46-339883CD2999";
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
createNode pointConstraint -n "finger_R3_blade_pointConstraint2" -p "finger_R3_blade";
	rename -uid "6DF833BD-47D7-C4A1-F2CB-909DF00FE962";
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
	setAttr ".rst" -type "double3" 0 0 -6.6613381477509392e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "2D9B57C1-4A1F-F6FF-F3B8-58BA236E8E41";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754284 -29.032786855763582 1.4804327725026492 ;
	setAttr ".r" -type "double3" 7.579166539411613 165.6957556210958 49.348303523761118 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786016 -2.6320983106786069 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "43CAD15D-424B-13CC-1A18-AA95311B80C4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "A81C5FEB-42FC-A839-EDDB-D994A154A4F5";
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
	rename -uid "40F8D4DD-4042-195B-55F3-E88C4E56995E";
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
	setAttr ".t" -type "double3" 0.21404201232122233 -0.17620518664720208 2.8414845756647473 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121386344 -82.086889237977857 -14.829711404977994 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661814 1.2929668245661794 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".comp_index" 2;
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_R2_rootShape" -p "finger_R2_root";
	rename -uid "5E8064D3-48B1-7A70-7BD5-D8AD877E35F0";
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
createNode nurbsCurve -n "finger_R2_root4Shape" -p "finger_R2_root";
	rename -uid "5A057A8F-4E30-5B9F-A965-888AE9ADB812";
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
createNode nurbsCurve -n "finger_R2_root5Shape" -p "finger_R2_root";
	rename -uid "6189A76E-47C1-5976-BB75-098B5C530F40";
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
createNode nurbsCurve -n "finger_R2_root6Shape" -p "finger_R2_root";
	rename -uid "8A016BC2-48D5-1E7A-A947-2F8149CF377D";
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
	rename -uid "813CEE50-49C7-B6BD-1DC3-57A1217EC02F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406663 -1.4210854715202004e-014 1.1102230246251565e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999989 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "29A913AB-42F3-AAD3-7245-2187AC26A705";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc4Shape" -p "finger_R2_0_loc";
	rename -uid "354E2B7C-41B9-3B32-0073-0D92EEA54A90";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_0_loc5Shape" -p "finger_R2_0_loc";
	rename -uid "969764B1-448B-95A8-D985-C38FE27D76C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_0_loc6Shape" -p "finger_R2_0_loc";
	rename -uid "B061A82C-4515-311E-A154-DCB2AA144B36";
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
createNode nurbsCurve -n "finger_R2_0_loc6_0crvShape" -p "finger_R2_0_loc";
	rename -uid "F60D0BC0-4D5C-EA52-507A-C59AF5452F41";
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
createNode nurbsCurve -n "finger_R2_0_loc6_1crvShape" -p "finger_R2_0_loc";
	rename -uid "E60E8EBA-4346-6E99-F21F-C19F8142E4DD";
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
createNode transform -n "finger_R2_1_loc" -p "finger_R2_0_loc";
	rename -uid "D5DACCF0-40CE-D351-F094-AFAED82E136E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176177 -3.5527136788005009e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "FCBD8AE4-432B-0B8D-AE5E-05BFCF6FABD1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc4Shape" -p "finger_R2_1_loc";
	rename -uid "CEBFEA01-43ED-0291-8F21-9BAAD54AC1E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_1_loc5Shape" -p "finger_R2_1_loc";
	rename -uid "E03B9225-4A58-D1A4-AB0D-17B207D589DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_1_loc6Shape" -p "finger_R2_1_loc";
	rename -uid "72C69BDB-4AA7-520C-562E-8E8F8540CCB5";
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
createNode nurbsCurve -n "finger_R2_1_loc6_0crvShape" -p "finger_R2_1_loc";
	rename -uid "56FE3A2F-45F1-DEC6-08B4-538180C69C1A";
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
createNode nurbsCurve -n "finger_R2_1_loc6_1crvShape" -p "finger_R2_1_loc";
	rename -uid "59F8C24D-41F2-E232-D151-14AE5C0A7A3B";
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
createNode transform -n "finger_R2_2_loc" -p "finger_R2_1_loc";
	rename -uid "9FF55B1D-45F9-4250-1282-F0B139AC5CEE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914644 -3.5527136788005009e-015 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "36B25F5E-40EE-9655-789E-90B31C70891D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc4Shape" -p "finger_R2_2_loc";
	rename -uid "3426C29A-4C5A-EC58-7CE2-D3A8252CA94F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_2_loc5Shape" -p "finger_R2_2_loc";
	rename -uid "C4195CD2-4369-D958-7EF7-5787F13328F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_2_loc6Shape" -p "finger_R2_2_loc";
	rename -uid "B779F3A6-4F95-9038-3407-83983D415403";
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
createNode nurbsCurve -n "finger_R2_2_loc6_0crvShape" -p "finger_R2_2_loc";
	rename -uid "53C294EE-4275-3BC7-E641-868568D22C4F";
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
createNode nurbsCurve -n "finger_R2_2_loc6_1crvShape" -p "finger_R2_2_loc";
	rename -uid "6EF779CD-4932-12DE-8D50-9D8CD31514F2";
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
createNode transform -n "finger_R2_blade" -p "finger_R2_root";
	rename -uid "93D3B06D-4BF7-480B-9FE0-919978CE32F2";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999989 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "A09ECC3F-49DA-E466-9AE7-1CA3C97F3DA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970877 0 0
		0 0.25859336491323626 0
		0 0 0
		;
createNode aimConstraint -n "finger_R2_blade_aimConstraint2" -p "finger_R2_blade";
	rename -uid "9B935DD4-48AF-7CFB-4704-BF8C06A60596";
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
createNode pointConstraint -n "finger_R2_blade_pointConstraint2" -p "finger_R2_blade";
	rename -uid "22E434AC-4D97-1447-F98A-5893677380F5";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "454AA23A-40EC-F192-46B9-CFAA0E60E37D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309029 -29.023661369441854 1.4173349723023001 ;
	setAttr ".r" -type "double3" 0.54140613098249779 178.40951950034074 47.737641631363708 ;
	setAttr ".s" -type "double3" 2.6320983106786113 2.6320983106786002 -2.6320983106786073 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "EF4D89A0-49F3-AE61-32C3-ED90A75564BF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "5269E6DB-447B-516E-CE84-7DB228F78B4F";
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
	rename -uid "5F3BBDA1-4379-DAB8-6401-51B4FB9B878A";
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
	setAttr ".t" -type "double3" -0.0077643969605949437 -0.12358406696727542 2.9483952421545645 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870017 -79.977014017420032 -112.77222628637831 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661803 1.2929668245661798 1.2929668245661814 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".comp_index" 1;
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_R1_rootShape" -p "finger_R1_root";
	rename -uid "8084BAE2-4B49-32FA-A49D-E7BF5D973A23";
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
createNode nurbsCurve -n "finger_R1_root4Shape" -p "finger_R1_root";
	rename -uid "7AD29E12-40CD-34F4-F27B-CA91C827C93D";
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
createNode nurbsCurve -n "finger_R1_root5Shape" -p "finger_R1_root";
	rename -uid "F6314ED5-4AC1-5C03-DD31-8FB5AD102844";
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
createNode nurbsCurve -n "finger_R1_root6Shape" -p "finger_R1_root";
	rename -uid "17B8A725-4850-1E20-E2A8-6B80EFA8BFB6";
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
	rename -uid "5F2E0B03-47F8-82FF-4165-4E928F97AEDF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999645 -1.7763568394002505e-014 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "B9B4834B-4C78-CA06-3C3E-7CA49C7D267A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc4Shape" -p "finger_R1_0_loc";
	rename -uid "EBB73585-408B-233D-8681-47A999825EC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_0_loc5Shape" -p "finger_R1_0_loc";
	rename -uid "4CB34BC4-4540-5D6D-890D-C0991E7EAF63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_0_loc6Shape" -p "finger_R1_0_loc";
	rename -uid "16E547BC-4964-A0E0-4F78-30BC49BDC7F7";
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
createNode nurbsCurve -n "finger_R1_0_loc6_0crvShape" -p "finger_R1_0_loc";
	rename -uid "17D1A6E1-48A6-BA5E-D2D8-8D973EBF0E9E";
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
createNode nurbsCurve -n "finger_R1_0_loc6_1crvShape" -p "finger_R1_0_loc";
	rename -uid "94F65EC5-480E-3645-74F7-05832FF9FFA3";
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
createNode transform -n "finger_R1_1_loc" -p "finger_R1_0_loc";
	rename -uid "F2F2A74C-46BF-B4E3-2341-7EB6CB1B60F7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414018617 1.4210854715202004e-014 -1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "35E981DF-47BA-8E16-9A02-AFBD2C694740";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc4Shape" -p "finger_R1_1_loc";
	rename -uid "CA34DA55-4BE6-E830-3E8A-BEAFFB445344";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_1_loc5Shape" -p "finger_R1_1_loc";
	rename -uid "5F486E5E-42B4-51EB-E28B-81AAE9812AB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_1_loc6Shape" -p "finger_R1_1_loc";
	rename -uid "C12C3243-4370-856B-29D2-EC98CEEE98CF";
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
createNode nurbsCurve -n "finger_R1_1_loc6_0crvShape" -p "finger_R1_1_loc";
	rename -uid "A5CFD79B-4EE1-F4D0-D78A-53B8A66B014F";
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
createNode nurbsCurve -n "finger_R1_1_loc6_1crvShape" -p "finger_R1_1_loc";
	rename -uid "F086FCAF-4F87-707C-6D17-6D86BC2FEAE8";
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
createNode transform -n "finger_R1_2_loc" -p "finger_R1_1_loc";
	rename -uid "EFF1F12B-4B0E-2573-34BD-5EAB8F38B415";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 0 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "9EAE03A3-4466-0A50-6A49-2790F894B3F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc4Shape" -p "finger_R1_2_loc";
	rename -uid "A95D8D6C-412F-0F7D-469F-E6B3BD18B576";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_2_loc5Shape" -p "finger_R1_2_loc";
	rename -uid "D3640715-4958-1E9C-66B8-6B8C5AEC263B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_2_loc6Shape" -p "finger_R1_2_loc";
	rename -uid "8850EE14-4C26-39FD-D72E-E49FE5A4A8E3";
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
createNode nurbsCurve -n "finger_R1_2_loc6_0crvShape" -p "finger_R1_2_loc";
	rename -uid "108F48DA-481C-8A38-ED43-D6BD7EC67333";
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
createNode nurbsCurve -n "finger_R1_2_loc6_1crvShape" -p "finger_R1_2_loc";
	rename -uid "23CBDC73-4CBE-753D-AC29-2C80BA19EBCE";
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
createNode transform -n "finger_R1_blade" -p "finger_R1_root";
	rename -uid "0CE772AC-466B-4C69-056A-60919BB540FD";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "12796214-4CD9-B61D-43D4-CE81ADBEF883";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.7757800947397081 0 0
		0 0.25859336491323603 0
		0 0 0
		;
createNode aimConstraint -n "finger_R1_blade_aimConstraint2" -p "finger_R1_blade";
	rename -uid "62B5829F-4789-91BF-A68A-34800554643B";
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
createNode pointConstraint -n "finger_R1_blade_pointConstraint2" -p "finger_R1_blade";
	rename -uid "32E3883F-4930-6CAA-41BD-F69F297B0F66";
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
	setAttr ".rst" -type "double3" 5.3290705182007514e-015 -3.5527136788005009e-015 
		-2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "FD7EB10E-4329-A1BB-7E66-B688EAD2A271";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153218 -28.040620010901254 1.1418187531117536 ;
	setAttr ".r" -type "double3" 174.1515056051484 -9.9768879508786803 -125.88865264712219 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786011 -2.6320983106786056 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "8DFD9D2C-4F85-B816-BDA6-CD9946C007F5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "AB7F6F5C-4794-627B-7A30-D8AB6DF4008D";
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
	rename -uid "D12B50BB-4E7F-04E6-063E-35B9E61FB578";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "443585DC-4A95-B049-1212-16ABF23E9482";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030135 0 0
		0 0.061677442163433786 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint2" -p "meta_R0_blade";
	rename -uid "01E896A2-4128-656F-D1D2-3FAA93E6A9F5";
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
createNode pointConstraint -n "meta_R0_blade_pointConstraint2" -p "meta_R0_blade";
	rename -uid "CF32E3C1-473F-D9E4-A4BC-D6A5B8261584";
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
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 0 -3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "36612DC5-458C-3C16-7FC3-11BB80D7BC71";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400633 -38.076493243285611 11.714163621934487 ;
	setAttr ".r" -type "double3" -98.40435431756849 44.654258545705716 -90.724179884703659 ;
	setAttr ".s" -type "double3" 3.4032157947041308 3.4032157947041171 -3.4032157947041268 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "C458CCEF-4D4C-7716-E820-60AF6D4A28D6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "CEA12222-4802-007D-6CF2-C19522C3BCC4";
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
createNode transform -n "thumb_R0_root" -p "meta_R0_root";
	rename -uid "F844EDB3-4181-64E0-AD16-C7B55F69205E";
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
	setAttr ".t" -type "double3" 0.16562611832586072 -0.22654222078976005 0.11369679418111822 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -120.73252624368706 -40.113048083814547 -140.23760680970526 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6654124751949584 1.6654124751949588 1.6654124751949577 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "thumb";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "thumb_R0_rootShape" -p "thumb_R0_root";
	rename -uid "82F81AFD-4961-2333-6BE7-7A890FC3F32E";
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
createNode nurbsCurve -n "thumb_R0_root4Shape" -p "thumb_R0_root";
	rename -uid "83B748C0-4899-50E6-F7CC-329AB25E7D73";
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
createNode nurbsCurve -n "thumb_R0_root5Shape" -p "thumb_R0_root";
	rename -uid "3D371BB8-48C8-BB8F-1BC8-7CBE56E29433";
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
createNode nurbsCurve -n "thumb_R0_root6Shape" -p "thumb_R0_root";
	rename -uid "0DB2A3A4-4DA3-7188-D1A3-1284A2B82069";
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
	rename -uid "2C34464F-4841-D0D8-1D9E-90B5226F43EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470028 0.0024095775966870292 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498061029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "F1C987FE-4E37-3A3C-B686-3F934BE74CF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc4Shape" -p "thumb_R0_0_loc";
	rename -uid "13F4C7FF-4DD4-D753-8735-BA823BB18145";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc5Shape" -p "thumb_R0_0_loc";
	rename -uid "D5DBD040-45C5-B549-C6F5-B1AA56F739A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_0_loc6Shape" -p "thumb_R0_0_loc";
	rename -uid "3B7D7ED1-40FB-F465-5630-DD9F400FC3F4";
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
createNode nurbsCurve -n "thumb_R0_0_loc6_0crvShape" -p "thumb_R0_0_loc";
	rename -uid "1A78CD28-459F-DC7B-3251-D798370B564C";
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
createNode nurbsCurve -n "thumb_R0_0_loc6_1crvShape" -p "thumb_R0_0_loc";
	rename -uid "33C0B427-471D-763D-176B-FD8DC9C38C95";
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
createNode transform -n "thumb_R0_1_loc" -p "thumb_R0_0_loc";
	rename -uid "DA9166CC-4A47-2D31-59C2-15A8745A153D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.7644258014552161 -1.7763568394002505e-015 1.0658141036401503e-014 ;
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
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "6DD7FCA9-4E57-1E62-5E0B-45AD45AC419C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc4Shape" -p "thumb_R0_1_loc";
	rename -uid "02DF191B-46EA-6762-B0F5-F8A2F1E56963";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc5Shape" -p "thumb_R0_1_loc";
	rename -uid "F598592C-483B-6806-2761-0B869366F69A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_1_loc6Shape" -p "thumb_R0_1_loc";
	rename -uid "A134FBF5-4748-1F8B-BE5B-80B173F01713";
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
createNode nurbsCurve -n "thumb_R0_1_loc6_0crvShape" -p "thumb_R0_1_loc";
	rename -uid "393474EE-4DCC-AB4F-869D-8ABE4CC021BA";
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
createNode nurbsCurve -n "thumb_R0_1_loc6_1crvShape" -p "thumb_R0_1_loc";
	rename -uid "EB1BE7DF-479F-0E0A-DE04-9F894F5D6F9C";
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
createNode transform -n "thumb_R0_2_loc" -p "thumb_R0_1_loc";
	rename -uid "472BA4D0-4204-0571-B019-DB9232DEB668";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510742 0 0 ;
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
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "6C9D30A7-4E48-CEB9-03CE-2B9CFE559511";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc4Shape" -p "thumb_R0_2_loc";
	rename -uid "A2BAF1C2-4B9D-CF48-CCB3-C3B5FD76E553";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc5Shape" -p "thumb_R0_2_loc";
	rename -uid "3856F2E5-44A1-DD6F-0FB1-CDBC2E4E323E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_2_loc6Shape" -p "thumb_R0_2_loc";
	rename -uid "471019BB-47DC-7418-6B08-DFA4600DE566";
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
createNode nurbsCurve -n "thumb_R0_2_loc6_0crvShape" -p "thumb_R0_2_loc";
	rename -uid "5C8B254A-4C7B-9E0E-DD76-FE85EC8BF08C";
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
createNode nurbsCurve -n "thumb_R0_2_loc6_1crvShape" -p "thumb_R0_2_loc";
	rename -uid "2647FD4C-43C0-C70E-4518-D285A9A1E8EE";
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
createNode transform -n "thumb_R0_blade" -p "thumb_R0_root";
	rename -uid "BC58E580-46B9-FECA-6FEE-42B80EF749C0";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "470E6F83-4E6C-9F11-5F9D-BA9368D2AE4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.99924748511697503 0 0
		0 0.33308249503899168 0
		0 0 0
		;
createNode aimConstraint -n "thumb_R0_blade_aimConstraint2" -p "thumb_R0_blade";
	rename -uid "89F6B7DC-4967-0162-383D-F99F05A5909C";
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
	setAttr ".rsrr" -type "double3" 0 0 0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint2" -p "thumb_R0_blade";
	rename -uid "CC8D89B6-476C-34CA-E45C-BCBBE2E639CB";
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
	rename -uid "14EA158F-4F1B-CF16-BDA7-FDB78660785E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688532 -7.1018915006055936 17.729458649684087 ;
	setAttr ".r" -type "double3" -55.556977946373287 -63.10073445444938 102.71864583729875 ;
	setAttr ".s" -type "double3" 2.0434672163157304 2.043467216315721 -2.0434672163157273 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "E0ECA7C7-48B9-4D99-CEE6-B08ECA3BAB4B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "6366D557-42D5-A553-7F1B-50A257124DD8";
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
	rename -uid "70795AD8-4F16-1EAE-154D-5BAEA3118BF7";
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
	setAttr ".t" -type "double3" -0.1840372367976304 -0.30586006047065695 2.7614233959505512 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808176 -71.606679450095456 -133.79382708612698 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661803 1.2929668245661801 1.292966824566181 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "finger_R0_rootShape" -p "finger_R0_root";
	rename -uid "03DBF55F-418C-2154-794F-9C99B222C127";
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
createNode nurbsCurve -n "finger_R0_root4Shape" -p "finger_R0_root";
	rename -uid "4E195BBB-4519-4171-BF34-7EA071F793AB";
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
createNode nurbsCurve -n "finger_R0_root5Shape" -p "finger_R0_root";
	rename -uid "7E631C40-44B2-12C0-A0D5-E5B00EAC853C";
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
createNode nurbsCurve -n "finger_R0_root6Shape" -p "finger_R0_root";
	rename -uid "CB14494E-40C1-F2ED-D314-CC97C2F944D8";
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
	rename -uid "C3860C5A-45ED-1C40-473F-D288400BB58A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000036 7.1054273576010019e-015 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999911 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "885EE6F2-41D3-CD51-7310-06A2B506E28B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc4Shape" -p "finger_R0_0_loc";
	rename -uid "D20C3ECF-4101-5019-539B-FBB2A0DFCAE1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_0_loc5Shape" -p "finger_R0_0_loc";
	rename -uid "EAB8C734-4425-038B-ECEA-6C85885545A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_0_loc6Shape" -p "finger_R0_0_loc";
	rename -uid "6DAF75F9-4739-84A2-A196-0295746587DC";
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
createNode nurbsCurve -n "finger_R0_0_loc6_0crvShape" -p "finger_R0_0_loc";
	rename -uid "C3AE7332-4D92-3865-ED18-DB9AA2D677FF";
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
createNode nurbsCurve -n "finger_R0_0_loc6_1crvShape" -p "finger_R0_0_loc";
	rename -uid "BB078311-45DB-D581-864D-24BE265FABB8";
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
createNode transform -n "finger_R0_1_loc" -p "finger_R0_0_loc";
	rename -uid "80FD032D-42E9-EFFE-4D36-B1BDEF0A1D2D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927252 1.0658141036401503e-014 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "B43BB50C-42CB-30C7-BB9E-16A754CF1FDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc4Shape" -p "finger_R0_1_loc";
	rename -uid "FC91AB31-4A6B-822A-5836-CD8353B46888";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_1_loc5Shape" -p "finger_R0_1_loc";
	rename -uid "9AACD678-4C42-1F39-E3AB-77A9973CC172";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_1_loc6Shape" -p "finger_R0_1_loc";
	rename -uid "1C108107-406B-39FC-F012-C6AA9629FCFA";
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
createNode nurbsCurve -n "finger_R0_1_loc6_0crvShape" -p "finger_R0_1_loc";
	rename -uid "363F3AE0-4403-C716-D9E8-70A170148D82";
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
createNode nurbsCurve -n "finger_R0_1_loc6_1crvShape" -p "finger_R0_1_loc";
	rename -uid "C765698C-440D-A08B-07B9-B6ADF5A3A3E4";
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
createNode transform -n "finger_R0_2_loc" -p "finger_R0_1_loc";
	rename -uid "9214ED74-49BE-A0F7-4457-41A304BB3F4B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392369253 -1.0658141036401503e-014 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "F405F673-4BCA-D1F8-DA8C-B2BB073277BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc4Shape" -p "finger_R0_2_loc";
	rename -uid "3836D2C0-4DCE-0ABE-96B0-2CA1EB4ADE8D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_2_loc5Shape" -p "finger_R0_2_loc";
	rename -uid "0889B522-4F30-28F4-D69A-57B1F46A9CD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_2_loc6Shape" -p "finger_R0_2_loc";
	rename -uid "89D132BA-4248-9BAD-9EB2-1A87FBD019F9";
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
createNode nurbsCurve -n "finger_R0_2_loc6_0crvShape" -p "finger_R0_2_loc";
	rename -uid "D2FA805B-4230-07F4-5716-29AF082B4A84";
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
createNode nurbsCurve -n "finger_R0_2_loc6_1crvShape" -p "finger_R0_2_loc";
	rename -uid "DD5DB2D7-4F59-64D2-788D-ACAD563FB885";
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
createNode transform -n "finger_R0_blade" -p "finger_R0_root";
	rename -uid "514561E0-4E50-22D7-5038-B99E226FC923";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999911 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "80DFDF58-4088-77EB-EFC0-178DC1109FD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.7757800947397081 0 0
		0 0.25859336491323603 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint2" -p "finger_R0_blade";
	rename -uid "EFCC044A-4943-9063-24EB-FEB46D2BAAE5";
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
createNode pointConstraint -n "finger_R0_blade_pointConstraint2" -p "finger_R0_blade";
	rename -uid "9B053F20-485D-AFC6-45E5-BAA6FD494AE9";
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
	setAttr ".rst" -type "double3" -5.3290705182007514e-015 0 8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "AB72B52C-4097-EA13-9A92-3B863351ABEB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713099 -27.33600805718098 2.4648652761321275 ;
	setAttr ".r" -type "double3" 170.83456651198392 -22.111176212559503 -122.87938490445593 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106785998 -2.6320983106786069 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "95EFD8E5-41FC-2F48-25D3-5381E5E7350D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "5B5391F2-4FCA-2EED-F51C-2EAB52FE6955";
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
	rename -uid "390D6EE0-43EE-5904-7F5D-D2BFECD9D962";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200259 -11.862061807473031 1.1564412205648684 ;
	setAttr ".r" -type "double3" 2.1534408611046039 175.80406292066328 45.437740049297929 ;
	setAttr ".s" -type "double3" 1.0495082267377427 1.0495082267377387 -1.0495082267377405 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "2701ADF6-42A4-F63B-486D-F9B8A2734879";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "2830E59A-416D-3617-6573-B38B53EC801E";
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
	rename -uid "5A1D82BA-4E55-B57A-BB32-7BB6C3635172";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999722 0.99999999999999767 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "3734929C-4852-171A-AA0B-33B892E88BE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000075 0 0
		0 0.20000000000000026 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint2" -p "shoulder_R0_blade";
	rename -uid "E8C6105E-4512-ECB1-5A88-53A7B2FDC780";
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
	setAttr ".o" -type "double3" 90 179.99999999999989 180 ;
	setAttr ".rsrr" -type "double3" 23.38626228647238 122.53864021838245 110.03040021520721 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint2" -p "shoulder_R0_blade";
	rename -uid "F8F4248C-4327-CB38-7A08-DD87256252C6";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -3.4694469519536142e-017 
		-2.7755575615628914e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "D380D15B-4843-25D3-21C2-5EA67D1E415E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509843 0.0092761897382758404 0.11673327753265024 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377378 -1.0495082267377378 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "D0B1288D-4655-B1D7-1751-569CF6EB0599";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "7ED46465-4F5B-4C96-A23E-0591A8F7A9DD";
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
	rename -uid "7162F2A6-4CFE-5DB6-4E77-4D821FB54AA9";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999967 0.99999999999999867 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "D0AE4F64-4E11-7F9D-6394-D891B5394DD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.30713489785446302 0 0
		0 0.10237829928482101 0
		0 0 0
		;
createNode aimConstraint -n "spine_C0_blade_aimConstraint2" -p "spine_C0_blade";
	rename -uid "7CA618AB-42EC-002B-9EA5-CFBFDFAF956E";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint2" -p "spine_C0_blade";
	rename -uid "401AF460-437E-C9CC-C5D3-7EA1A774EB28";
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
	rename -uid "FBB56192-45D4-E5D8-AD04-F0903AD3A1FE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690754 0.19144303592045894 -4.2508893276606366e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377402 1.0495082267377387 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "FCA12CFC-4640-74AF-FFA1-8DAC8CE03299";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "CFA83D1B-4F23-7675-5C15-888C69705D06";
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
	rename -uid "C33480A1-4990-EF24-47BC-238DE718985A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588158 1.6653345369377348e-016 -1.0212680564255752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0.29314386227018274 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999833 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "legUI_L0_root";
	setAttr ".blend" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root";
	setAttr ".upvrefarray" -type "string" "";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "leg_L0_rootShape" -p "leg_L0_root";
	rename -uid "194E55DE-4C27-DC7C-E586-E9B336878A6E";
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
createNode nurbsCurve -n "leg_L0_root4Shape" -p "leg_L0_root";
	rename -uid "0E355CA1-4AD3-BF70-6C77-D692662AAFF4";
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
createNode nurbsCurve -n "leg_L0_root5Shape" -p "leg_L0_root";
	rename -uid "1A10825E-4D5A-1DAC-C8E7-6B9A92448119";
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
createNode nurbsCurve -n "leg_L0_root6Shape" -p "leg_L0_root";
	rename -uid "F7A4AB27-472D-3D31-5180-E3A5F9794D73";
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
	rename -uid "3D409E68-4A9C-3015-783C-6A8B223B70F8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303916 0.38838644346805851 -2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999833 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "D3DCF761-416C-17E1-6775-B085847352B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_knee4Shape" -p "leg_L0_knee";
	rename -uid "E10615E4-4440-BBFC-C9D4-1186289334AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_knee5Shape" -p "leg_L0_knee";
	rename -uid "19D2823A-45B5-6CFF-7688-CF8F7B926B18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_knee6Shape" -p "leg_L0_knee";
	rename -uid "61D3C3E7-47AD-FEEC-1631-D3A34571ED63";
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
createNode nurbsCurve -n "leg_L0_knee6_0crvShape" -p "leg_L0_knee";
	rename -uid "4E5A85BD-450F-D064-D8B4-1A97138CB9DC";
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
createNode nurbsCurve -n "leg_L0_knee6_1crvShape" -p "leg_L0_knee";
	rename -uid "F836372F-4623-805F-879E-3D80105BC0D7";
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
createNode transform -n "leg_L0_ankle" -p "leg_L0_knee";
	rename -uid "A749538F-49AD-6B50-A595-DBBDF2C127D4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -4.5414075240554208 -0.7463060192277986 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999989 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "20B25E12-45EF-6794-26BA-F2B86FECCEC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle4Shape" -p "leg_L0_ankle";
	rename -uid "6F5D5BE8-4F20-F217-6A14-72B7B437840D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_ankle5Shape" -p "leg_L0_ankle";
	rename -uid "F7A5D81D-496C-9319-B0C3-088111362BC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_ankle6Shape" -p "leg_L0_ankle";
	rename -uid "BD60AEC6-40AA-169B-4A2C-F6AE1E15F464";
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
createNode nurbsCurve -n "leg_L0_ankle6_0crvShape" -p "leg_L0_ankle";
	rename -uid "EFC423E7-4D79-A96A-D13D-209E4C57946D";
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
createNode nurbsCurve -n "leg_L0_ankle6_1crvShape" -p "leg_L0_ankle";
	rename -uid "16315A6B-4328-3D66-F913-76A5F7CA912F";
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
createNode transform -n "leg_L0_eff" -p "leg_L0_ankle";
	rename -uid "3CD3811C-4D9C-F9C5-D855-D18C652EEF2B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 1.1102230246251565e-015 2.1377206638691337 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999967 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "3441AAA5-41D7-DCBF-41D1-13BF043C0C40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_eff4Shape" -p "leg_L0_eff";
	rename -uid "C7A321BE-4680-3756-B0FD-87B978662DCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_eff5Shape" -p "leg_L0_eff";
	rename -uid "970631F0-4783-8567-BB6D-C78105EFDC74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_eff6Shape" -p "leg_L0_eff";
	rename -uid "176DE7CA-457A-6AA6-64BF-768A8A7D257C";
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
createNode nurbsCurve -n "leg_L0_eff6_0crvShape" -p "leg_L0_eff";
	rename -uid "D870D52A-47C2-663E-FBF3-2184D14DB742";
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
createNode nurbsCurve -n "leg_L0_eff6_1crvShape" -p "leg_L0_eff";
	rename -uid "888549A4-4433-8D58-6FE1-7AB2402B521F";
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
createNode transform -n "foot_L0_root" -p "leg_L0_ankle";
	rename -uid "A39DCA4A-4DE5-FFC0-9E54-0599C5894D80";
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
	setAttr ".t" -type "double3" 2.2204460492503131e-016 0 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426093 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.9997975226851844 0.9997975226851844 0.99979752268518329 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "foot";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_2jnt_01";
	setAttr ".ui_host" -type "string" "legUI_L0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "foot_L0_rootShape" -p "foot_L0_root";
	rename -uid "DC9B2F6B-44D8-67EA-B309-569D88924FF5";
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
createNode nurbsCurve -n "foot_L0_root4Shape" -p "foot_L0_root";
	rename -uid "98328294-4465-25FA-FD5C-F894E312B431";
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
createNode nurbsCurve -n "foot_L0_root5Shape" -p "foot_L0_root";
	rename -uid "9BECB693-4EA9-4109-CB39-FF8B36493E31";
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
createNode nurbsCurve -n "foot_L0_root6Shape" -p "foot_L0_root";
	rename -uid "23602D40-40F6-4E9F-B912-8EA9C979A6B5";
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
	rename -uid "13DC738D-4B26-B538-FA3C-B790284AA233";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763239 -0.77423199221117311 -0.00087398468478339097 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448041 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "36DB02B2-4D54-02F6-1E40-59AE88C0B221";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc4Shape" -p "foot_L0_0_loc";
	rename -uid "B23A3A9D-4B54-3569-680F-698C15C5C689";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_0_loc5Shape" -p "foot_L0_0_loc";
	rename -uid "2E9ADEB3-4A68-496D-2F4B-059D04832124";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_0_loc6Shape" -p "foot_L0_0_loc";
	rename -uid "586E5FFE-42AD-52F2-AB16-2E8B484A54CE";
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
createNode nurbsCurve -n "foot_L0_0_loc6_0crvShape" -p "foot_L0_0_loc";
	rename -uid "68EE0A57-46A1-1A6B-81C2-7992E051B4FE";
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
createNode nurbsCurve -n "foot_L0_0_loc6_1crvShape" -p "foot_L0_0_loc";
	rename -uid "AF62FE91-454D-9B06-1758-2F97EA463A63";
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
createNode transform -n "foot_L0_1_loc" -p "foot_L0_0_loc";
	rename -uid "2AAC1348-406C-E775-D7FC-5AB8D29AA8DD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444316 0.052400542543841966 0.00053566803260918228 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448034 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "785D9D22-46AE-66A6-05AD-CB87FB2B45FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc4Shape" -p "foot_L0_1_loc";
	rename -uid "BDC4340D-41AD-7B95-007B-CEAF201D0927";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_1_loc5Shape" -p "foot_L0_1_loc";
	rename -uid "CDA38834-4C9F-4874-0ACB-9A90B994B85E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_1_loc6Shape" -p "foot_L0_1_loc";
	rename -uid "A4A99E36-4B10-B9C7-1FCD-2A94D311E277";
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
createNode nurbsCurve -n "foot_L0_1_loc6_0crvShape" -p "foot_L0_1_loc";
	rename -uid "193FB3B8-4441-C654-5423-CCBA97D39CAD";
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
createNode nurbsCurve -n "foot_L0_1_loc6_1crvShape" -p "foot_L0_1_loc";
	rename -uid "41D4D1E4-4CBF-A2E9-0AE0-06A42BB82F20";
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
createNode transform -n "foot_L0_2_loc" -p "foot_L0_1_loc";
	rename -uid "EE207E3F-4E93-191C-E02C-E1AEC2923C28";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518466 -0.34355031336095365 -0.0018389437992691882 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "5146463A-4F06-A14C-67F6-549F8A4AB12F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc4Shape" -p "foot_L0_2_loc";
	rename -uid "E3FEF498-4D6C-7494-6752-128AD111072D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_2_loc5Shape" -p "foot_L0_2_loc";
	rename -uid "B95CB17B-4227-6A5C-FC11-5980E7AF881F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_2_loc6Shape" -p "foot_L0_2_loc";
	rename -uid "1B297DBB-4851-49B7-903A-598FAEAA8025";
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
createNode nurbsCurve -n "foot_L0_2_loc6_0crvShape" -p "foot_L0_2_loc";
	rename -uid "421EF9B0-4CBB-A023-0E3D-828934901607";
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
createNode nurbsCurve -n "foot_L0_2_loc6_1crvShape" -p "foot_L0_2_loc";
	rename -uid "7D219F5F-490A-73B2-5BCC-75BFCA39E5A5";
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
createNode transform -n "foot_L0_crv" -p "foot_L0_root";
	rename -uid "2763DC52-4AD9-9661-B6C7-C18D62388810";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687073 -1.2934842521415486 1.0591437062861164 ;
	setAttr ".r" -type "double3" 2.8990169397258407 84.223472754416591 2.9137877746396681 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808347 1.0497207713808354 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "E0C7443D-46D2-3239-829B-9C8797BC31B5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "A8705CD0-4D35-443D-9867-F8A55C22B6A3";
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
	rename -uid "225CA982-453C-630E-74C4-B095F5BEB426";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343335 -1.288332366546225 -0.0019628851482431653 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "2A10FB5A-4056-4F86-4EE3-28A15D346D01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_heel4Shape" -p "foot_L0_heel";
	rename -uid "C2993128-481B-EC33-7119-229E130E6F71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_heel5Shape" -p "foot_L0_heel";
	rename -uid "4D93161F-4BA1-DBBD-D05F-6D9F60350C05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_heel6Shape" -p "foot_L0_heel";
	rename -uid "D4D128DD-46CF-2460-143F-1CA9017F7349";
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
createNode nurbsCurve -n "foot_L0_heel6_0crvShape" -p "foot_L0_heel";
	rename -uid "81776D27-4CAE-87A5-B1CC-788A7ECBD2BA";
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
createNode nurbsCurve -n "foot_L0_heel6_1crvShape" -p "foot_L0_heel";
	rename -uid "E63D8CB8-4280-4C1D-996D-82BF7612E850";
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
createNode transform -n "foot_L0_outpivot" -p "foot_L0_root";
	rename -uid "D0F1DA9E-4DD4-227C-6140-459D35AC9301";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991011 -1.2852474767223814 -0.5448357892327973 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "38ED626E-4A06-52C6-6C05-91BA46AE37E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot4Shape" -p "foot_L0_outpivot";
	rename -uid "3383A0CE-41ED-FD99-5623-7F859A5AF108";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_outpivot5Shape" -p "foot_L0_outpivot";
	rename -uid "10BEFBC0-4C17-4249-DBBD-D996FC994CFF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_outpivot6Shape" -p "foot_L0_outpivot";
	rename -uid "E545F539-4B89-AE55-1DA9-64916E14C868";
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
createNode nurbsCurve -n "foot_L0_outpivot6_0crvShape" -p "foot_L0_outpivot";
	rename -uid "ED9C3507-4157-2496-CAB3-56942CB2134D";
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
createNode nurbsCurve -n "foot_L0_outpivot6_1crvShape" -p "foot_L0_outpivot";
	rename -uid "BF4E6412-4666-8590-5E00-16BB19DFDF82";
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
createNode transform -n "foot_L0_inpivot" -p "foot_L0_root";
	rename -uid "3B6D691B-428D-CA9B-A843-6D81AE0518AB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991015 -1.2905939540073477 0.65234269833768455 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999989 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "08CD5800-4FB7-9273-358E-08991F2AB397";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot4Shape" -p "foot_L0_inpivot";
	rename -uid "FCCE4C63-4801-B707-C58A-9794D537DD1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_inpivot5Shape" -p "foot_L0_inpivot";
	rename -uid "674F7432-4282-211F-9F58-5DA5B2D1679D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_inpivot6Shape" -p "foot_L0_inpivot";
	rename -uid "834AC9B9-4117-9CE8-354F-9686CADF4665";
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
createNode nurbsCurve -n "foot_L0_inpivot6_0crvShape" -p "foot_L0_inpivot";
	rename -uid "507B8177-449E-3EA5-FCFC-679C933066E2";
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
createNode nurbsCurve -n "foot_L0_inpivot6_1crvShape" -p "foot_L0_inpivot";
	rename -uid "18DDD938-4097-F4B8-A861-28895656FE59";
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
createNode transform -n "foot_L0_1" -p "foot_L0_root";
	rename -uid "10ADB98E-4BCA-6F6C-B926-B99CC9797DE8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687073 -1.2934842521415486 1.0591437062861164 ;
	setAttr ".r" -type "double3" 2.8990169397258407 84.223472754416591 2.9137877746396681 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808347 1.0497207713808354 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "ABB5CAEE-4DD4-1B0E-0150-8E9573DC5D67";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig1" -p "foot_L0_1";
	rename -uid "B8CDF327-4483-A8D5-74BD-5E82D408EA04";
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
	rename -uid "4923B5A4-48FC-6CF3-9E35-8BAE2A84ED36";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59908552650329439 0.51029795172993753 -1.4395512694570027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "legUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legUI_L0_rootShape" -p "legUI_L0_root";
	rename -uid "1AA60843-450A-C58C-6C00-F494DB8544F5";
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
createNode nurbsCurve -n "legUI_L0_root4Shape" -p "legUI_L0_root";
	rename -uid "74C310CE-4177-BECF-1552-1CB7AB083AB9";
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
createNode nurbsCurve -n "legUI_L0_root5Shape" -p "legUI_L0_root";
	rename -uid "85449290-4F8B-D679-7E1A-F5B36E1A858A";
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
createNode nurbsCurve -n "legUI_L0_root6Shape" -p "legUI_L0_root";
	rename -uid "BB4CA8D2-4C54-42E5-6E8F-99B70AD7E29E";
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
createNode transform -n "leg_L0_crv" -p "leg_L0_root";
	rename -uid "A747D6AC-40FC-1092-4358-81BEB1CA2F4A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209223 0.19144303592045911 0.96902196420373687 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729844 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377378 1.0495082267377405 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "9AFB7355-4DB5-C831-7D64-0EB3FB7A5A57";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "2160FF88-464F-796D-D618-8AAADF6A161F";
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
	rename -uid "5B4CCA84-40FB-4367-5CC7-85B54BF7BEC2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588141 6.9388939039072284e-016 1.0212680564255754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -0.29314386227019551 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999856 -1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "legUI_R0_root";
	setAttr ".blend" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root";
	setAttr ".upvrefarray" -type "string" "";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "leg_R0_rootShape" -p "leg_R0_root";
	rename -uid "112F0CA5-4E10-13EC-96BE-7FB53566876A";
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
createNode nurbsCurve -n "leg_R0_root4Shape" -p "leg_R0_root";
	rename -uid "72BE8FD4-420E-3189-4DFD-15944F024D14";
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
createNode nurbsCurve -n "leg_R0_root5Shape" -p "leg_R0_root";
	rename -uid "7B186479-40B6-DFD3-372D-E894483253F6";
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
createNode nurbsCurve -n "leg_R0_root6Shape" -p "leg_R0_root";
	rename -uid "610294D3-4B6C-BF60-7449-C39173A377B9";
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
	rename -uid "AB9FD383-4139-E900-FA4B-CB8FDBF1ADAA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303934 0.3883864434680584 -3.7747582837255322e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999833 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "3EF53F4A-4173-1577-A021-F0A6E22265B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_knee4Shape" -p "leg_R0_knee";
	rename -uid "CFAB2825-414B-6F7B-987F-249A3A4B16EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_knee5Shape" -p "leg_R0_knee";
	rename -uid "C4EB8B5B-4EC6-92C0-3AFD-68BCD4622FF5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_knee6Shape" -p "leg_R0_knee";
	rename -uid "EAA99E99-406A-EC36-48AB-FDA39D6ACC5A";
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
createNode nurbsCurve -n "leg_R0_knee6_0crvShape" -p "leg_R0_knee";
	rename -uid "4AA8741E-4EC3-AF05-DCFB-BB955BEE19D1";
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
createNode nurbsCurve -n "leg_R0_knee6_1crvShape" -p "leg_R0_knee";
	rename -uid "DB5E0B6E-4BD1-173E-9E53-91BB7AE97E5B";
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
createNode transform -n "leg_R0_ankle" -p "leg_R0_knee";
	rename -uid "C848F78A-431D-2560-12F0-B4B6FA3C55FF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.7755575615628914e-015 -4.5414075240554208 -0.74630601922780027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "7427BF60-4C05-06B9-7FF9-19A4CD4EF951";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle4Shape" -p "leg_R0_ankle";
	rename -uid "A5B4BE16-41F9-3AC6-4220-8BB2C7651103";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_ankle5Shape" -p "leg_R0_ankle";
	rename -uid "714E492A-494E-611E-7BA5-47A0FA458E95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_ankle6Shape" -p "leg_R0_ankle";
	rename -uid "17792464-4F17-4DE1-602B-4B96D1852E02";
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
createNode nurbsCurve -n "leg_R0_ankle6_0crvShape" -p "leg_R0_ankle";
	rename -uid "1005B6B8-4E22-EBB9-7EA9-A3AA46C41F2F";
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
createNode nurbsCurve -n "leg_R0_ankle6_1crvShape" -p "leg_R0_ankle";
	rename -uid "D0D0E4FD-47F8-DE84-166B-ED8968835DEA";
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
createNode transform -n "leg_R0_eff" -p "leg_R0_ankle";
	rename -uid "76EFC75B-4ECE-33E8-0720-6CBFA50D0AFB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.2212453270876722e-015 4.4408920985006262e-016 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999989 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "1AF0B6AA-4929-76C8-E21D-C9973261F1DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_eff4Shape" -p "leg_R0_eff";
	rename -uid "19451649-4B01-DF60-B732-469FFC238DAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_eff5Shape" -p "leg_R0_eff";
	rename -uid "35F79F24-490D-A392-3509-7CBFD2B2DB2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_eff6Shape" -p "leg_R0_eff";
	rename -uid "88216C21-43A2-8DE2-75F5-2C959F793625";
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
createNode nurbsCurve -n "leg_R0_eff6_0crvShape" -p "leg_R0_eff";
	rename -uid "C1E94015-42F0-7FAE-5BC6-30B37508E3B5";
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
createNode nurbsCurve -n "leg_R0_eff6_1crvShape" -p "leg_R0_eff";
	rename -uid "3D4F8C9E-4C8E-8BBB-BAA1-D4869665811F";
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
createNode transform -n "foot_R0_root" -p "leg_R0_ankle";
	rename -uid "C0149083-445A-0046-AB67-3385CBCC04E8";
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
	setAttr ".t" -type "double3" 2.2204460492503131e-016 -4.4408920985006262e-016 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426093 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518429 0.99979752268518451 0.9997975226851834 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "foot";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_2jnt_01";
	setAttr ".ui_host" -type "string" "legUI_R0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "foot_R0_rootShape" -p "foot_R0_root";
	rename -uid "7A55EF7D-4026-EE17-4AAC-09A87996E051";
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
createNode nurbsCurve -n "foot_R0_root4Shape" -p "foot_R0_root";
	rename -uid "B847A0AE-4744-B91C-5F31-0E8A296D3CFE";
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
createNode nurbsCurve -n "foot_R0_root5Shape" -p "foot_R0_root";
	rename -uid "991DC280-4CFB-D1E2-3564-0E8D758AF80E";
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
createNode nurbsCurve -n "foot_R0_root6Shape" -p "foot_R0_root";
	rename -uid "9E21548F-4F28-05BD-B0AD-83B400A8818E";
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
	rename -uid "AB00B2CE-45D3-AFC1-D3E3-02BA2CF35E2D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763237 -0.77423199221117323 -0.00087398468478383506 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448055 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "8D3EAB66-4764-5820-ED4A-CD871EE0E2E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc4Shape" -p "foot_R0_0_loc";
	rename -uid "EE10FDB7-4253-9D57-880B-998B1BD58E03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_0_loc5Shape" -p "foot_R0_0_loc";
	rename -uid "748BC804-4966-5D4E-35AA-2FB4E59C30E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_0_loc6Shape" -p "foot_R0_0_loc";
	rename -uid "AD2BFCC1-4455-28AB-716E-7E8E0460DD83";
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
createNode nurbsCurve -n "foot_R0_0_loc6_0crvShape" -p "foot_R0_0_loc";
	rename -uid "3DDAAC05-4738-1956-9076-A1BD7A4A6163";
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
createNode nurbsCurve -n "foot_R0_0_loc6_1crvShape" -p "foot_R0_0_loc";
	rename -uid "32BE7E28-440E-EFF8-0A0F-89A508599A44";
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
createNode transform -n "foot_R0_1_loc" -p "foot_R0_0_loc";
	rename -uid "D75681D3-40D1-AB84-DA6B-368D6DEFF327";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444338 0.052400542543842521 0.00053566803260851614 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448038 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "E20D0E14-4E10-BE83-8296-18905BC621D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc4Shape" -p "foot_R0_1_loc";
	rename -uid "BF6BB90A-435A-52FA-B51C-66939A022C4D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_1_loc5Shape" -p "foot_R0_1_loc";
	rename -uid "C0E8B260-43D5-D19E-2CF9-2292F355A5FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_1_loc6Shape" -p "foot_R0_1_loc";
	rename -uid "AECD8971-4C4B-945C-9048-769C40713ABF";
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
createNode nurbsCurve -n "foot_R0_1_loc6_0crvShape" -p "foot_R0_1_loc";
	rename -uid "4EED31CD-4207-56C1-8F43-56841DB20BCF";
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
createNode nurbsCurve -n "foot_R0_1_loc6_1crvShape" -p "foot_R0_1_loc";
	rename -uid "93D86785-4B8F-1B54-05A9-7D890DEABFC0";
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
createNode transform -n "foot_R0_2_loc" -p "foot_R0_1_loc";
	rename -uid "7BDB6D2A-4086-CF8B-97AC-9CA60499D84E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518399 -0.34355031336095376 -0.0018389437992687441 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "1772D1E5-43C8-22E5-A8FA-99BB8F695AAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc4Shape" -p "foot_R0_2_loc";
	rename -uid "5B16E150-4F26-3726-EDED-02B54D89B76B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_2_loc5Shape" -p "foot_R0_2_loc";
	rename -uid "77E8AB2F-46B6-5263-6193-FD930C3CE387";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_2_loc6Shape" -p "foot_R0_2_loc";
	rename -uid "05B92621-4B20-316B-58D8-52B38C148A29";
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
createNode nurbsCurve -n "foot_R0_2_loc6_0crvShape" -p "foot_R0_2_loc";
	rename -uid "35B01E37-49CF-AA20-D94F-E3BBE78EFCCC";
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
createNode nurbsCurve -n "foot_R0_2_loc6_1crvShape" -p "foot_R0_2_loc";
	rename -uid "8E495F27-4C8F-5B2D-24BC-75B6A84BED9A";
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
createNode transform -n "foot_R0_crv" -p "foot_R0_root";
	rename -uid "3FDE2052-4CFC-D98F-9D83-1D86C435B87B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.8412362524868704 -1.2934842521415479 1.0591437062861162 ;
	setAttr ".r" -type "double3" 177.1009830602743 -84.223472754416576 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "33F7A558-4096-E9CB-5D5F-7B965F6C48F2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "23448F68-44A4-7AD6-3147-E6B349094416";
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
	rename -uid "60DCE638-40C8-1710-ECA9-159CEC4CF15A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343369 -1.2883323665462241 -0.0019628851482427212 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "5B824A6F-474E-5487-0510-B29CCDDD03C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_heel4Shape" -p "foot_R0_heel";
	rename -uid "C5387C89-4B5F-668C-2AFB-E8BDB46EB85E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_heel5Shape" -p "foot_R0_heel";
	rename -uid "B93E3395-40ED-894B-7E0A-64AF5EA773D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_heel6Shape" -p "foot_R0_heel";
	rename -uid "A87A0184-41CF-C189-5D86-AEA56EC79B7C";
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
createNode nurbsCurve -n "foot_R0_heel6_0crvShape" -p "foot_R0_heel";
	rename -uid "BA3475F4-4471-963A-1337-3AA0740241C8";
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
createNode nurbsCurve -n "foot_R0_heel6_1crvShape" -p "foot_R0_heel";
	rename -uid "1D464889-45D6-61AF-4002-83B509DE5656";
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
createNode transform -n "foot_R0_outpivot" -p "foot_R0_root";
	rename -uid "08A99CCA-418E-A956-53B1-DAB3AB4E5F7F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.2852474767223814 -0.54483578923279774 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "E9231575-4217-3D98-20D8-D598FC674CED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot4Shape" -p "foot_R0_outpivot";
	rename -uid "20800257-457C-B8B6-3A4F-CEBBBBE38CEB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_outpivot5Shape" -p "foot_R0_outpivot";
	rename -uid "F736A9BC-45B9-7C01-F5DE-B0B7CE053704";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_outpivot6Shape" -p "foot_R0_outpivot";
	rename -uid "D1F31C65-49D3-F722-0301-CA855611DE82";
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
createNode nurbsCurve -n "foot_R0_outpivot6_0crvShape" -p "foot_R0_outpivot";
	rename -uid "F6989F7C-4F3A-6047-92B0-749CD8BB7306";
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
createNode nurbsCurve -n "foot_R0_outpivot6_1crvShape" -p "foot_R0_outpivot";
	rename -uid "D2AE174E-4945-5069-5FB9-49BDFA330998";
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
createNode transform -n "foot_R0_inpivot" -p "foot_R0_root";
	rename -uid "D14478C1-4EDD-2183-216E-39AC4F3D7D6C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991006 -1.2905939540073474 0.65234269833768421 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "C7EC8E75-41BD-254F-573E-7BB977DCC904";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot4Shape" -p "foot_R0_inpivot";
	rename -uid "780C868F-4331-69F4-E7CA-9D8C627849F7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_inpivot5Shape" -p "foot_R0_inpivot";
	rename -uid "9965BE28-4FEC-B47F-6706-67B24DFCDA6B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_inpivot6Shape" -p "foot_R0_inpivot";
	rename -uid "0EDF9B56-488A-A1EE-839D-519026DA2631";
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
createNode nurbsCurve -n "foot_R0_inpivot6_0crvShape" -p "foot_R0_inpivot";
	rename -uid "055CA364-402E-1E83-54FD-E8BD846B88F0";
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
createNode nurbsCurve -n "foot_R0_inpivot6_1crvShape" -p "foot_R0_inpivot";
	rename -uid "4BE703DF-4D9B-4194-36A5-38AC170F2C2C";
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
createNode transform -n "foot_R0_1" -p "foot_R0_root";
	rename -uid "F59A1F44-4BE9-FCC3-C2DC-C68A00AF09BA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.8412362524868704 -1.2934842521415479 1.0591437062861162 ;
	setAttr ".r" -type "double3" 177.1009830602743 -84.223472754416576 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "1E9231F5-466E-057E-9DED-8D83E712AFEA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig1" -p "foot_R0_1";
	rename -uid "0B93CEFF-4838-533F-AF4A-5697AC6033C2";
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
	rename -uid "66C1403F-4B46-52C6-D56E-608B91CD6051";
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59908552650329505 0.5102979517299373 -1.4395512694570034 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999967 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "legUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legUI_R0_rootShape" -p "legUI_R0_root";
	rename -uid "8A117CAB-4EEA-C1FE-4130-119D60190542";
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
createNode nurbsCurve -n "legUI_R0_root4Shape" -p "legUI_R0_root";
	rename -uid "F33B205F-44B0-C6DA-0316-099146CEE769";
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
createNode nurbsCurve -n "legUI_R0_root5Shape" -p "legUI_R0_root";
	rename -uid "63A47142-4B14-2D66-5F30-69A3277C9750";
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
createNode nurbsCurve -n "legUI_R0_root6Shape" -p "legUI_R0_root";
	rename -uid "A2E1507F-4E04-9D2F-879B-A19E21AEED59";
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
createNode transform -n "leg_R0_crv" -p "leg_R0_root";
	rename -uid "D8DD001F-4887-6520-502E-2797CD4A61D4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209225 0.19144303592045853 0.96902196420373476 ;
	setAttr ".r" -type "double3" 90 -89.706856137729801 -179.99999999999818 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377378 -1.0495082267377402 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "E72AE0CF-4DDA-3223-EE75-6292D64C957E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "6A9A0B3A-41A8-D2A0-F384-679ABB37FA8E";
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
createNode animCurveUU -n "spine_C0_root_st_profile";
	rename -uid "BDF2A06C-40C0-2E6D-D7F4-4AA5F008030F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "70808894-41E1-72B0-5061-CFB5A4AEA64D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "72AD7D7F-40A2-03ED-F14D-A893C7DFCF9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "7DEA7A94-44BF-84B2-E663-C9BBC903DC5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion15";
	rename -uid "19E39EF5-4455-FEDE-440D-26AB62A1C28C";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns175";
	rename -uid "D40660EC-4A67-5F75-0557-E496BC090FF9";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns175Set";
	rename -uid "66FD57A9-4A28-4BCF-AAF5-9B9FE6839C04";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns175GroupId";
	rename -uid "256C3624-45B8-5C38-F448-928486A57ADD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns175GroupParts";
	rename -uid "7AE6DE78-42F7-D384-63B0-F1BE4FD3A1DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak323";
	rename -uid "2C92644D-445C-1CCE-97AF-BEBC12F1CC69";
createNode objectSet -n "tweakSet323";
	rename -uid "530D87EF-4FA8-AFD2-CC42-FB80D6CF700C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8215";
	rename -uid "698DED95-44C5-BB51-ED49-3C9F51F7197A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts646";
	rename -uid "E6557A71-49A7-99C3-43F2-70A145CFFA93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion16";
	rename -uid "A789747D-43FD-2B2C-2558-ADBA9498B8A8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns176";
	rename -uid "6B09941F-4946-1A2A-C142-86B64321ABC7";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns176Set";
	rename -uid "0A96198E-4E23-2A64-40FD-80A1408EE93A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns176GroupId";
	rename -uid "7AD0633C-492C-6A0A-ADDE-54BE6A55F3FF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns176GroupParts";
	rename -uid "469BBDD8-43E2-E6FB-1CD1-99AE7AEE4A33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak324";
	rename -uid "04694CD5-48EE-915A-AB1A-5EB565433E21";
createNode objectSet -n "tweakSet324";
	rename -uid "64E493E7-4719-EFFE-C799-5F97253A2E52";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8217";
	rename -uid "1C4F851C-4CBF-2517-CB48-C1AAFAAC89DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts648";
	rename -uid "EBCB741E-4416-7933-683A-2CB6F8A961D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion17";
	rename -uid "BB6160D6-4473-97E3-4917-B6AAE94CDB42";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns177";
	rename -uid "A878DFB5-4305-561C-E265-7CA28731EDDB";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns177Set";
	rename -uid "1B40702C-4383-FBDB-81EC-3B891A929557";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns177GroupId";
	rename -uid "F133C1C1-4430-95F4-DC21-A59A20D14932";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns177GroupParts";
	rename -uid "CCD02FF9-4361-525B-7D24-C7B06E066FCF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak325";
	rename -uid "23FF2DF4-4753-6585-A88B-1EA11117C262";
createNode objectSet -n "tweakSet325";
	rename -uid "0E11E44E-4A09-E050-BCE4-20AC4B6A19D4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8219";
	rename -uid "9D5BAA72-4518-96D0-3095-D4B5F42E6AEA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts650";
	rename -uid "6C110F39-470B-2D60-BB44-6793A33DEBBF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion14";
	rename -uid "A8BDED66-49AD-6EAC-B3D2-6D82B26F579A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns174";
	rename -uid "DAFFB607-4775-CD7F-E121-FE9027F33CC1";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns174Set";
	rename -uid "F101ED9B-4787-480A-2D7A-B68965BFFD2F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns174GroupId";
	rename -uid "705C46AD-4D66-8D37-5900-9180809587C9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns174GroupParts";
	rename -uid "5D470916-473D-6589-98BC-7DBA7317E656";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak322";
	rename -uid "9BDC5217-449A-6C7B-AFCD-E6B3166E0338";
createNode objectSet -n "tweakSet322";
	rename -uid "920A299A-4570-CE34-E113-2191BE4001C2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8213";
	rename -uid "22173E11-4524-44FF-3C78-D39D68C2D022";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts644";
	rename -uid "27D88602-4512-8B64-DF60-3387922F30F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion18";
	rename -uid "9C20CC4C-472F-625C-E2B3-E4B08671097D";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns178";
	rename -uid "7E0301F2-4266-598C-F550-4CA91A8DBB41";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns178Set";
	rename -uid "5B01D647-4D50-38D2-5E2C-99B5E3D196BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns178GroupId";
	rename -uid "4901E01D-4BB3-5571-9596-3EB96A2428AC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns178GroupParts";
	rename -uid "B623059F-4BBD-3409-3BDA-21ADA82A3015";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak326";
	rename -uid "4385860A-4F65-603E-A7AC-8799F459DD72";
createNode objectSet -n "tweakSet326";
	rename -uid "60B98FCE-4CEE-DDB0-ADDE-CB8FD6D38A83";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8221";
	rename -uid "671859FD-4C39-8059-C959-B7B0AD92C42B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts652";
	rename -uid "65BBDEF7-410A-727A-385C-DC915F401191";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion19";
	rename -uid "FF44B85D-4F50-B4AC-AFDA-55976993304D";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns179";
	rename -uid "8224E061-4DE1-E9BD-0811-DFA2B411D677";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns179Set";
	rename -uid "1499BC7D-493C-5436-8267-C5A90C3A10F7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns179GroupId";
	rename -uid "1697D7BA-4FBB-CB6B-49BD-A0A3A8736FBB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns179GroupParts";
	rename -uid "905DE676-414D-CFDE-7CC4-25BDF9A28ADB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak327";
	rename -uid "D3E8909B-4048-5305-9E4A-99B0FB95D09E";
createNode objectSet -n "tweakSet327";
	rename -uid "B973A333-4185-B8D3-709B-DA93C82DF682";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8223";
	rename -uid "277B5A51-4F2A-4531-7973-2FB26AAAEBBA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts654";
	rename -uid "0CF3A37D-4948-7FE9-8FC5-C69CB14D10FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns173";
	rename -uid "DA925A47-414C-6161-A105-FA90D8290E66";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns173Set";
	rename -uid "BBA03840-42CA-B2FD-7075-3EA08AB218B7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns173GroupId";
	rename -uid "F7DFFCC9-48CD-8D83-BF13-4EBE4785FCE5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns173GroupParts";
	rename -uid "3F0F4C08-4235-B871-51CE-1BBE097E70AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak321";
	rename -uid "80C3E207-4D91-5AD2-8B2F-CBA8BE458040";
createNode objectSet -n "tweakSet321";
	rename -uid "DEA074AA-4765-737B-8E9B-17B0D32BA374";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8211";
	rename -uid "3937271E-412B-5659-9DD6-8BA545A9F3C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts642";
	rename -uid "8FF2AD23-4C77-6EFA-88B7-4AB3DD41A375";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion13";
	rename -uid "96699662-4DF6-1D93-65E6-04902B92589B";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns172";
	rename -uid "6A22F28C-4710-3CB3-C984-93810641EE05";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns172Set";
	rename -uid "D9A52454-4A50-1A27-C1A9-6D898A7DFFCC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns172GroupId";
	rename -uid "3847A1C4-4BA7-79E8-EB52-93B124A426E7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns172GroupParts";
	rename -uid "591A95BD-417B-7C50-1215-AEB96DF7DA21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak320";
	rename -uid "F05E3E38-4F19-BD27-4407-C9850332A403";
createNode objectSet -n "tweakSet320";
	rename -uid "CAFA6B5A-4334-6726-C07A-FC9F2844BE41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8209";
	rename -uid "85D2E1A9-40E3-9DC2-A497-66A86268D4A6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts640";
	rename -uid "69EE3FF0-48BE-CE95-78E3-89AB41DF1FDC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "4558376D-4747-28A3-6FD9-C385DA7FEE4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "6F3F9140-4157-4584-39DB-5EBF33080155";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns183";
	rename -uid "67285B21-499C-68A3-6AF2-9B845BA86503";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns183Set";
	rename -uid "D730402F-4C74-0C13-E35A-7A9FC6FE8E80";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns183GroupId";
	rename -uid "EBFF9CA6-45B4-AC46-F387-CD822A7644DA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns183GroupParts";
	rename -uid "052B163F-4FE1-9F11-CE1F-F6AC6B531A58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak331";
	rename -uid "7BFDF3BB-40B8-0718-83A5-7A89208EA8A3";
createNode objectSet -n "tweakSet331";
	rename -uid "22C33905-45F9-D5B5-3CE8-98AB13CA5A77";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8231";
	rename -uid "E580D17F-4331-39F6-71BB-E8ACDDD972E1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts662";
	rename -uid "C5BB0A00-4EAB-FFC4-D38E-6AA899FB90DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns184";
	rename -uid "DF16F987-4E44-A0DC-93E3-0DBB6A934AC9";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns184Set";
	rename -uid "B17DEFB5-4CD3-C843-D734-3A914CCDC682";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns184GroupId";
	rename -uid "249079A4-423F-B745-B73C-8C90B962602B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns184GroupParts";
	rename -uid "95DCB515-4458-3198-36CD-CC9F0959E9D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak332";
	rename -uid "0E8CB1B6-4B21-9C2C-6669-1EBD5F410D47";
createNode objectSet -n "tweakSet332";
	rename -uid "D51CD976-4189-CC7C-AEA3-6681384B73D4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8233";
	rename -uid "38A2B28A-41AC-D871-C7B1-C3AB88E6CEBA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts664";
	rename -uid "050DEE49-42B0-E795-4779-9BBC8D54E054";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion21";
	rename -uid "61FD06A8-4617-75DD-0C13-C4A28DAC9493";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns186";
	rename -uid "2282B789-46BD-DFDF-5355-32A5DEBCE209";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns186Set";
	rename -uid "77F70A9F-4A79-8B5C-97A6-CEBCEBC72111";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns186GroupId";
	rename -uid "03E5F66F-431C-9A46-DA37-32B12FC735A6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns186GroupParts";
	rename -uid "E620FEBF-4967-CF45-B48A-2A8041374A4D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak334";
	rename -uid "F55D00F8-43C2-2785-4C27-7D9D60918D9D";
createNode objectSet -n "tweakSet334";
	rename -uid "856B43FC-4A74-0CE9-A592-59A10A6A018C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8237";
	rename -uid "6AAE8584-45A2-576C-646E-CAB65EC8967B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts668";
	rename -uid "399C2C89-434A-7345-8FB7-B9AD8D360F3B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns182";
	rename -uid "F46F6D67-49E5-0CB3-5662-1F9B6881DCAB";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns182Set";
	rename -uid "7B830742-4A98-088D-B132-AC9620E60FA3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns182GroupId";
	rename -uid "741633F7-4EC5-A88E-C01A-B5B4FFB3494E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns182GroupParts";
	rename -uid "36143105-40F4-B845-E5EE-A69BC80F6338";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak330";
	rename -uid "29D4E9FC-4CD1-DBF9-8E16-1DB9BB6D2B9E";
createNode objectSet -n "tweakSet330";
	rename -uid "9AABBBF3-481C-69E2-8A93-57B1D30E11B3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8229";
	rename -uid "37E195C5-46FB-8D7A-5A2C-80BFDCC3F4CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts660";
	rename -uid "04F78D15-4C4C-9544-B6E0-5A90B8CE09CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns185";
	rename -uid "1A2F7673-4C97-B86B-82AB-6EBBF50F384A";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns185Set";
	rename -uid "E6EBFB2D-4FE9-7F0C-86F3-0BA3DB125BB5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns185GroupId";
	rename -uid "18336214-4BD9-CB9D-3459-0192AF2491AC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns185GroupParts";
	rename -uid "9D220F91-4A49-E68A-6DD5-E881A6822294";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak333";
	rename -uid "AFE87BFB-40A2-61FC-3213-6EAF6477D64E";
createNode objectSet -n "tweakSet333";
	rename -uid "178E14C2-4AD0-1A55-6762-A9B43FBF3A2E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8235";
	rename -uid "0FC9FF2D-41A9-5622-040A-DE80B32E56FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts666";
	rename -uid "9613448E-4C38-4477-507E-378802A6EB81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns187";
	rename -uid "67F36CF3-44AE-5D87-2130-6C98D3DB0822";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns187Set";
	rename -uid "1BAAEE8B-4297-FB6C-FE6F-ACB351117DF3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns187GroupId";
	rename -uid "D6198404-4299-7D2E-E514-06A7FADDAD77";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns187GroupParts";
	rename -uid "EB67F1D0-4433-3174-401D-B9ACD6F934C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak335";
	rename -uid "1B958B22-4852-8D4B-6EF9-6CA01D3B3333";
createNode objectSet -n "tweakSet335";
	rename -uid "3C12ADA5-438E-84E0-86C7-35954A058C86";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8239";
	rename -uid "6AA467ED-44AB-0029-F8E9-FDA99D5218E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts670";
	rename -uid "7ECBF8D6-4D47-188B-FF84-3F8839930C4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns188";
	rename -uid "06056190-4F12-1380-49F2-F6964673A20F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns188Set";
	rename -uid "B36CC9FA-4F66-599D-D96C-C8AC39460280";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns188GroupId";
	rename -uid "AD606CA8-4D4A-8B69-419F-7D856712ADA0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns188GroupParts";
	rename -uid "2352E41C-4D97-46C4-ED78-769D1D6DF5C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak336";
	rename -uid "D03ED98D-4B67-7D4A-62B4-1A9BB95A9254";
createNode objectSet -n "tweakSet336";
	rename -uid "372EC3A9-47DB-12B0-5E02-C187513024D0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8241";
	rename -uid "389ECC55-4DDB-F8DF-22F9-949A7EF53FF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts672";
	rename -uid "B3BC0848-4DBC-FADD-EBA3-E3A389D60FFB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns181";
	rename -uid "1F3B95D0-4662-4B1C-BDAC-82AD8D15072B";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns181Set";
	rename -uid "A5BB0046-4801-71D2-5BC4-5FAA1A36DA02";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns181GroupId";
	rename -uid "80B95046-43ED-7B8E-D7F6-3587F8BC31D4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns181GroupParts";
	rename -uid "D1C5C349-477D-510D-B572-09AC05A630A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak329";
	rename -uid "250BE33F-43E4-DD82-38EB-DFA43B05F2E8";
createNode objectSet -n "tweakSet329";
	rename -uid "794A56FD-40DE-77A5-71AF-A2A13F3C4DD4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8227";
	rename -uid "DB65E0C5-432E-E83D-441C-BAB398793405";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts658";
	rename -uid "C27AF05D-4592-4D94-8CB0-4B9455173EF9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion20";
	rename -uid "1E46B774-4B05-DB10-2EB4-D29B54743E6E";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns180";
	rename -uid "E60D9A1C-4F06-84D7-2D6D-61B46E4CBBD6";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns180Set";
	rename -uid "C437E721-450F-B10E-DEF2-BE945153529F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns180GroupId";
	rename -uid "28392199-42AD-3D42-6FF6-269FBCEAC04A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns180GroupParts";
	rename -uid "E10657AA-457C-1B67-9096-D6A8DC6ECFDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak328";
	rename -uid "A4EF7102-40BA-FDFE-CC38-D79CF27719EF";
createNode objectSet -n "tweakSet328";
	rename -uid "30AFA103-4F03-E389-DE77-C2B10BE5AB45";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8225";
	rename -uid "EF06310D-43B9-0778-D4F2-F3A5B6C78FE9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts656";
	rename -uid "5D0AA9DD-41EC-3D36-DFB4-10AD0CD8F47C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile1";
	rename -uid "8248CA40-49E0-0CDB-23B2-6491C0E3621D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile1";
	rename -uid "CC095D0A-420A-127F-266F-71A28E248CDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion24";
	rename -uid "3674FA3D-4A79-A54D-32D6-95BDB1DDC3CD";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns192";
	rename -uid "BC88FEB0-4236-B98C-B3A3-8D8E886568E6";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns192Set";
	rename -uid "7BF72798-48EC-4A2B-135F-BCA5798D9655";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns192GroupId";
	rename -uid "FD561C2C-408B-A9C3-0DBD-B48D3198582A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns192GroupParts";
	rename -uid "AAC33D31-40B2-2DD8-BBD2-F5BA6675CDA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak340";
	rename -uid "2CE0B975-454C-2FEB-B417-24BD4FFD659E";
createNode objectSet -n "tweakSet340";
	rename -uid "43EFF62C-423C-A7A3-5DC3-36A38DD7AE99";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8249";
	rename -uid "01CAE662-4334-3887-11E4-048F30F44B42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts680";
	rename -uid "E3CF156F-4A5F-29B6-5C1D-159B5EA52D6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion25";
	rename -uid "44E331D6-4AD3-CF17-6796-F78B4B5519D8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns193";
	rename -uid "5F1B2A25-4D0C-F157-F9D6-4D9FE492F702";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns193Set";
	rename -uid "531119D8-483E-EB6C-58A9-CE9B4958E5F8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns193GroupId";
	rename -uid "1B710F4C-4A76-A22F-EFFC-ECB590CF17C8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns193GroupParts";
	rename -uid "D979C8B6-4CBD-688D-9DFD-718DAD704586";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak341";
	rename -uid "048104A3-493D-D6CF-EBCE-83AA9AD3F70C";
createNode objectSet -n "tweakSet341";
	rename -uid "8FFD0888-41BD-3E57-38D5-4596973CB160";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8251";
	rename -uid "60D3429D-40A7-665B-98A8-B09255F3D351";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts682";
	rename -uid "6EA05836-493B-8DF7-B46C-C3B8D217CC3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion26";
	rename -uid "E44D2B76-4838-4A43-C79D-EFBDC200C426";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns194";
	rename -uid "51879195-4FA5-CB1B-A20B-CAAF1F415C6F";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns194Set";
	rename -uid "54147C06-4C73-6B95-8BDD-F9B136466732";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns194GroupId";
	rename -uid "1BBFD681-4C3F-99D6-A513-5798A23F5DCA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns194GroupParts";
	rename -uid "3D65387C-47E4-58AC-4B9F-47B8C74B27A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak342";
	rename -uid "35E60435-4C4B-09C7-0AF9-D1A44D3C98FC";
createNode objectSet -n "tweakSet342";
	rename -uid "385518DD-404B-6E29-B698-EF8CDBF1427A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8253";
	rename -uid "610BA8D1-4BAC-37DD-4425-FAAC2ACC8D4A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts684";
	rename -uid "509513B6-4E8D-E284-6B95-85981DA8D090";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion23";
	rename -uid "3422969E-41A6-726D-2542-668F6883DABC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns191";
	rename -uid "4147254A-417C-302A-FD08-2CA1809448B2";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns191Set";
	rename -uid "2F8356BF-4482-EB4B-C440-AC8F76018567";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns191GroupId";
	rename -uid "77C9514A-46AD-595C-E67C-B3B9FC66B468";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns191GroupParts";
	rename -uid "7EC8F14A-428A-6836-0FF9-F58B9B723332";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak339";
	rename -uid "7F650DFA-4E30-A1CD-45C3-FBA775F30514";
createNode objectSet -n "tweakSet339";
	rename -uid "8CC93DB4-4172-AD5A-2F5F-B6AD35AF75A7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8247";
	rename -uid "C06BA41C-4095-5E01-48F3-96BFCFAB36B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts678";
	rename -uid "16AE16EB-4BDD-2448-2D27-D5B74A07568F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion27";
	rename -uid "1BF74B2E-41E3-923D-4771-B1A5239F849E";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns195";
	rename -uid "A8F680E3-41C9-C33F-26DD-5F891E05DDA7";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns195Set";
	rename -uid "8A5E2415-4A53-D2D6-8FCE-0A9DE544CDA0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns195GroupId";
	rename -uid "07EE0CBE-4C96-786C-10E5-6E8FAF6E5762";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns195GroupParts";
	rename -uid "8632B5A9-437B-A07B-C0C9-4CAA5636F6DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak343";
	rename -uid "A904D301-4A46-6848-C679-39A20FC9D821";
createNode objectSet -n "tweakSet343";
	rename -uid "94076CC7-410C-F83F-FBB1-FCAAB02FB66E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8255";
	rename -uid "824FDF20-43AB-7283-6526-28AA0E9A145D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts686";
	rename -uid "4E05702E-441E-B5F1-D0AD-BDB27A3FAC32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion28";
	rename -uid "5A83820F-43F8-BB27-B48B-05B59564BF2D";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns196";
	rename -uid "C0FC3AC8-43A9-4707-E547-8EBFBA784F16";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns196Set";
	rename -uid "AB0A9754-4441-B3A2-2444-DF8BCE8C51AB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns196GroupId";
	rename -uid "1BE7FEFC-446A-4053-5641-23BE24DBC837";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns196GroupParts";
	rename -uid "1709FA0E-4946-B5B8-1799-5ABA9EBB4907";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak344";
	rename -uid "D8B85FFC-4906-EBD4-D44D-66A249F10CFC";
createNode objectSet -n "tweakSet344";
	rename -uid "17300ECD-4F61-AFA0-A19E-6A81D83C7056";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8257";
	rename -uid "19881ACB-4F5B-0542-431B-CB877C6265C0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts688";
	rename -uid "0DBFBA61-40A5-A27B-8184-EB847F86BAF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns190";
	rename -uid "01177B72-45D2-6D96-9429-F39EE28FFBD0";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns190Set";
	rename -uid "050EE80E-4A4E-8075-8B6E-84AB79253604";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns190GroupId";
	rename -uid "A6C7861C-4194-0360-2A8A-9D821A90E460";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns190GroupParts";
	rename -uid "1FC7BEB5-41A0-96FC-D633-54AA0B0204BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak338";
	rename -uid "DDA133DE-4082-D071-056C-BDA3F282CBB5";
createNode objectSet -n "tweakSet338";
	rename -uid "22ABB4CF-40B5-A236-21F1-2DBDEFCC966C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8245";
	rename -uid "ECCE2C63-4D86-7B77-6239-BFACCB956A2E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts676";
	rename -uid "CFAA8AFC-49A0-D2EC-CE8B-0B920BDC8F62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion22";
	rename -uid "12029E1F-48D8-6021-6914-2FA60B5FA350";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns189";
	rename -uid "8FB150B2-4B20-DECA-EFA5-CBBEE3893482";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns189Set";
	rename -uid "D82AEAED-4019-4997-B4C2-D89DE726FEF2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns189GroupId";
	rename -uid "2E1D3E98-4777-6119-1D74-37B8AAFA9D4B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns189GroupParts";
	rename -uid "2C81C34E-4127-7D0B-B13A-CD9FFD56869D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak337";
	rename -uid "588A9442-418B-0F67-DDB1-90AEB244C8AB";
createNode objectSet -n "tweakSet337";
	rename -uid "D59DE203-4A2E-9F02-8729-3785748D168D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8243";
	rename -uid "D66DA9E4-46BC-5415-EB49-E3BFBFFCDD01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts674";
	rename -uid "8625C0FA-431E-43F7-CD94-C7A5179B1142";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion12";
	rename -uid "B7ED63E9-4AA3-5E03-9038-D7A1C4942C72";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns171";
	rename -uid "9E7268B6-45B3-EEDB-CF05-7D989DDAE2FF";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns171Set";
	rename -uid "625B9302-424E-1631-BAD7-5DBEFF987D03";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns171GroupId";
	rename -uid "3FE0080C-432D-4DD1-0A70-389AC9FFFDD9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns171GroupParts";
	rename -uid "FE3479E4-4B72-448D-DAC6-5D8855955906";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak319";
	rename -uid "88E9FC46-4758-1E76-1A4D-30A3EE15E3F6";
createNode objectSet -n "tweakSet319";
	rename -uid "CC6DDDD4-40DE-3094-BE6E-2CA0CACB20BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8207";
	rename -uid "0E5829D4-4A45-5BBD-237A-3BBF7847DCD5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts638";
	rename -uid "8A1E4438-45DB-6FBF-5B0E-C1816802E03B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "28702E05-4814-1676-4C6F-B7A712A7608D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "0309050B-4004-9AA1-5E30-0E80C93C129C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns198";
	rename -uid "6185F6DA-438F-25B9-840B-4D9AB38B6638";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns198Set";
	rename -uid "A470C183-4EEC-9664-4F57-0583D037ACDD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns198GroupId";
	rename -uid "DFCC95F3-4A8D-A3D5-4224-F9A60F2AE3BA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns198GroupParts";
	rename -uid "B8E478BA-4F4D-08BA-4A67-0E8998E5DABA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak346";
	rename -uid "0F1A7F0E-49F7-CF42-9694-FC8CF12AA9C5";
createNode objectSet -n "tweakSet346";
	rename -uid "F77061F0-4DC8-C010-07EE-F193DC8A934F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8261";
	rename -uid "04A0C729-459C-2234-13B5-9082E49F1B11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts692";
	rename -uid "3D229A3C-4526-AEF7-F35D-4FA510685DA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns199";
	rename -uid "8CF68E45-4D3A-3416-277D-D284000DD071";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns199Set";
	rename -uid "08660836-455E-0A1E-959A-6BB7F5A56553";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns199GroupId";
	rename -uid "500EF604-40B0-8595-5B8B-8B8963FF1230";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns199GroupParts";
	rename -uid "48F6D2A7-4FAD-D10F-46E7-AEA7BCC52BCB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak347";
	rename -uid "D014F76D-451A-2B98-9E83-918A0532EAAC";
createNode objectSet -n "tweakSet347";
	rename -uid "061C17F6-499D-AAF7-23CC-99A5B874FCD4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8263";
	rename -uid "E77EA281-4722-E866-6C76-FA97FA28E06C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts694";
	rename -uid "3FAB9251-4BEE-562A-1BF6-9DADE1BFD506";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns197";
	rename -uid "BF7240A4-4E2A-FAF0-070E-38BD29E29CBC";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns197Set";
	rename -uid "9F7ECF37-410F-1CD7-7375-B39DE1B63B80";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns197GroupId";
	rename -uid "8A911E88-4324-F5EE-802A-CF88A0F7450D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns197GroupParts";
	rename -uid "01291790-44C0-C1FD-C116-0087047F8557";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak345";
	rename -uid "3AA982BE-4144-9EBE-69E7-5E82E38840DD";
createNode objectSet -n "tweakSet345";
	rename -uid "194CE2F2-443B-854B-278A-72AE5F083F1A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8259";
	rename -uid "1FA067B8-4637-6020-9D66-D09331C65582";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts690";
	rename -uid "7BB4DA7C-4137-1D08-D427-4CAF17F1D0C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile1";
	rename -uid "D9F2B238-41D9-3BD9-93F7-25A6BA258429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile1";
	rename -uid "42830D02-4C40-6407-0CE7-00B5F06DF999";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns201";
	rename -uid "B99AE9DC-486E-F6DB-C970-189BE255EA20";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns201Set";
	rename -uid "947712DA-4B8F-FE47-7D1C-308C9A9342A7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns201GroupId";
	rename -uid "D019A94F-46DA-8087-783F-99B95E119CFE";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns201GroupParts";
	rename -uid "993AD638-4D57-1FE9-9665-7FBDAE96654B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak349";
	rename -uid "CF3C6376-480C-0933-6543-CDB252DF5DF4";
createNode objectSet -n "tweakSet349";
	rename -uid "2F48C0BE-4637-687A-915C-ADABD3160ED0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8267";
	rename -uid "896E12B8-47EA-6AFF-325C-DABB22585411";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts698";
	rename -uid "04CCEF2D-4D8A-9CFD-A31A-D9B6E49CE226";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns202";
	rename -uid "10169971-4717-605E-64BA-E98F9D24C543";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns202Set";
	rename -uid "F768DF3C-4681-6AD7-517B-F6B3D97E6063";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns202GroupId";
	rename -uid "E17F5C52-455F-D55B-A248-FD958182E2CB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns202GroupParts";
	rename -uid "A9596B14-4E8B-0A0F-7BFF-E9811D7B0347";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak350";
	rename -uid "8EF3B621-4D87-A7EB-FF06-D796B661CD11";
createNode objectSet -n "tweakSet350";
	rename -uid "9C273598-4610-555E-B395-85BFE3A010A7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8269";
	rename -uid "926CC5B9-4354-479F-2D22-14912A89F4D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts700";
	rename -uid "14018EF2-4FF9-A4D1-D0F7-08B154B9F4FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns200";
	rename -uid "CF16E3D4-451F-2519-0DA5-0AB32AA31FDE";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns200Set";
	rename -uid "999E7A01-49C3-FB59-783D-71B71FE26052";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns200GroupId";
	rename -uid "DC32111C-4AFD-2388-BE7E-F6BE25A839A5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns200GroupParts";
	rename -uid "A9806F0E-475C-970C-49A4-709CD3646535";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak348";
	rename -uid "4BD3C9EC-4F3A-8772-42F5-EB9F3BA719CA";
createNode objectSet -n "tweakSet348";
	rename -uid "F7AB6E66-4AD6-43C2-2AB5-A8A92268E0CE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8265";
	rename -uid "6224A569-46D5-21D7-C3B3-8599F266944B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts696";
	rename -uid "D90B3717-4E29-DD98-92E6-CDB0555E695E";
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
	addAttr -s false -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -s false -ci true -sn "rsVolumeShader" -ln "rsVolumeShader" -at "message";
	addAttr -s false -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -s false -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -s false -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -s false -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -s false -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" 
		-at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	addAttr -s false -ci true -sn "rsSurfaceShader" -ln "rsSurfaceShader" -at "message";
	addAttr -s false -ci true -sn "rsVolumeShader" -ln "rsVolumeShader" -at "message";
	addAttr -s false -ci true -sn "rsShadowShader" -ln "rsShadowShader" -at "message";
	addAttr -s false -ci true -sn "rsPhotonShader" -ln "rsPhotonShader" -at "message";
	addAttr -s false -ci true -sn "rsEnvironmentShader" -ln "rsEnvironmentShader" -at "message";
	addAttr -s false -ci true -sn "rsBumpmapShader" -ln "rsBumpmapShader" -at "message";
	addAttr -s false -ci true -sn "rsDisplacementShader" -ln "rsDisplacementShader" 
		-at "message";
	addAttr -ci true -sn "rsMaterialId" -ln "rsMaterialId" -min 0 -max 2147483647 -smn 
		0 -smx 100 -at "long";
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
connectAttr "arm_L0_root_st_profile.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint2.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint2.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint2.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint2.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint2.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint2.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint2.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint2.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint2.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint2.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint2.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint2.w0" "finger_L3_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint2.wum";
connectAttr "unitConversion15.o" "finger_L3_blade_aimConstraint2.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint2.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint2.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint2.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint2.w0" "finger_L3_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns175.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak323.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns175GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns175Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8215.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet323.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint2.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint2.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint2.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint2.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint2.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint2.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint2.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint2.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint2.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint2.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint2.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint2.w0" "finger_L2_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint2.wum";
connectAttr "unitConversion16.o" "finger_L2_blade_aimConstraint2.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint2.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint2.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint2.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint2.w0" "finger_L2_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns176.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak324.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns176GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns176Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8217.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet324.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint2.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint2.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint2.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint2.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint2.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint2.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint2.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint2.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint2.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint2.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint2.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint2.w0" "finger_L1_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint2.wum";
connectAttr "unitConversion17.o" "finger_L1_blade_aimConstraint2.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint2.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint2.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint2.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint2.w0" "finger_L1_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns177.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak325.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns177GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns177Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8219.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet325.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint2.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint2.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint2.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint2.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint2.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint2.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint2.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint2.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint2.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint2.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint2.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint2.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint2.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint2.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint2.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint2.w0" "meta_L0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint2.wum";
connectAttr "unitConversion14.o" "meta_L0_blade_aimConstraint2.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint2.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint2.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint2.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint2.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint2.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint2.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint2.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint2.w0" "meta_L0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns174.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak322.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns174GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns174Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8213.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet322.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint2.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint2.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint2.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint2.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint2.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint2.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint2.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint2.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint2.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint2.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint2.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint2.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint2.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint2.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint2.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint2.w0" "thumb_L0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint2.wum";
connectAttr "unitConversion18.o" "thumb_L0_blade_aimConstraint2.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint2.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint2.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint2.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint2.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint2.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint2.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint2.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint2.w0" "thumb_L0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns178.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak326.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns178GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns178Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8221.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet326.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint2.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint2.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint2.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint2.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint2.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint2.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint2.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint2.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint2.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint2.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint2.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint2.w0" "finger_L0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint2.wum";
connectAttr "unitConversion19.o" "finger_L0_blade_aimConstraint2.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint2.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint2.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint2.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint2.w0" "finger_L0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns179.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak327.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns179GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns179Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8223.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet327.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns173.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak321.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns173GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns173Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8211.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet321.mwc" "arm_L0_crvShape.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint2.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint2.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint2.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint2.crx" "shoulder_L0_blade.rx" -l on;
connectAttr "shoulder_L0_blade_aimConstraint2.cry" "shoulder_L0_blade.ry" -l on;
connectAttr "shoulder_L0_blade_aimConstraint2.crz" "shoulder_L0_blade.rz" -l on;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint2.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint2.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint2.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint2.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint2.cro";
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint2.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint2.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint2.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint2.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint2.w0" "shoulder_L0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint2.wum";
connectAttr "unitConversion13.o" "shoulder_L0_blade_aimConstraint2.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint2.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint2.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint2.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint2.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint2.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint2.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint2.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint2.w0" "shoulder_L0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns172.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak320.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns172GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns172Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8209.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet320.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns183.og[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak331.pl[0].cp[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns183GroupId.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns183Set.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8231.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet331.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns184.og[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak332.pl[0].cp[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns184GroupId.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns184Set.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8233.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet332.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint2.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint2.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint2.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint2.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint2.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint2.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint2.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint2.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint2.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint2.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint2.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint2.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint2.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint2.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint2.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint2.w0" "tongue_C0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint2.wum";
connectAttr "unitConversion21.o" "tongue_C0_blade_aimConstraint2.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint2.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint2.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint2.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint2.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint2.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint2.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint2.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint2.w0" "tongue_C0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns186.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak334.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns186GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns186Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8237.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet334.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns182.og[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak330.pl[0].cp[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns182GroupId.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns182Set.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8229.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet330.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns185.og[0]" "mouth_C0_crv2Shape.cr";
connectAttr "tweak333.pl[0].cp[0]" "mouth_C0_crv2Shape.twl";
connectAttr "mgear_curveCns185GroupId.id" "mouth_C0_crv2Shape.iog.og[0].gid";
connectAttr "mgear_curveCns185Set.mwc" "mouth_C0_crv2Shape.iog.og[0].gco";
connectAttr "groupId8235.id" "mouth_C0_crv2Shape.iog.og[1].gid";
connectAttr "tweakSet333.mwc" "mouth_C0_crv2Shape.iog.og[1].gco";
connectAttr "mgear_curveCns187.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak335.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns187GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns187Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8239.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet335.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns188.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak336.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns188GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns188Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8241.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet336.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns181.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak329.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns181GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns181Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8227.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet329.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint2.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint2.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint2.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint2.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint2.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint2.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint2.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint2.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint2.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint2.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint2.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint2.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint2.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint2.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint2.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint2.w0" "neck_C0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint2.wum";
connectAttr "unitConversion20.o" "neck_C0_blade_aimConstraint2.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint2.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint2.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint2.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint2.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint2.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint2.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint2.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint2.w0" "neck_C0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns180.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak328.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns180GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns180Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8225.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet328.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "arm_R0_root_st_profile1.o" "arm_R0_root.st_profile";
connectAttr "arm_R0_root_sq_profile1.o" "arm_R0_root.sq_profile";
connectAttr "finger_R3_blade_pointConstraint2.ctx" "finger_R3_blade.tx" -l on;
connectAttr "finger_R3_blade_pointConstraint2.cty" "finger_R3_blade.ty" -l on;
connectAttr "finger_R3_blade_pointConstraint2.ctz" "finger_R3_blade.tz" -l on;
connectAttr "finger_R3_blade_aimConstraint2.crx" "finger_R3_blade.rx" -l on;
connectAttr "finger_R3_blade_aimConstraint2.cry" "finger_R3_blade.ry" -l on;
connectAttr "finger_R3_blade_aimConstraint2.crz" "finger_R3_blade.rz" -l on;
connectAttr "finger_R3_blade.pim" "finger_R3_blade_aimConstraint2.cpim";
connectAttr "finger_R3_blade.t" "finger_R3_blade_aimConstraint2.ct";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_aimConstraint2.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_aimConstraint2.crt";
connectAttr "finger_R3_blade.ro" "finger_R3_blade_aimConstraint2.cro";
connectAttr "finger_R3_0_loc.t" "finger_R3_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R3_0_loc.rp" "finger_R3_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R3_0_loc.rpt" "finger_R3_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R3_0_loc.pm" "finger_R3_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R3_blade_aimConstraint2.w0" "finger_R3_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R3_root.wm" "finger_R3_blade_aimConstraint2.wum";
connectAttr "unitConversion24.o" "finger_R3_blade_aimConstraint2.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint2.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint2.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint2.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint2.w0" "finger_R3_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns192.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak340.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns192GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns192Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8249.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet340.mwc" "finger_R3_crvShape.iog.og[1].gco";
connectAttr "finger_R2_blade_pointConstraint2.ctx" "finger_R2_blade.tx" -l on;
connectAttr "finger_R2_blade_pointConstraint2.cty" "finger_R2_blade.ty" -l on;
connectAttr "finger_R2_blade_pointConstraint2.ctz" "finger_R2_blade.tz" -l on;
connectAttr "finger_R2_blade_aimConstraint2.crx" "finger_R2_blade.rx" -l on;
connectAttr "finger_R2_blade_aimConstraint2.cry" "finger_R2_blade.ry" -l on;
connectAttr "finger_R2_blade_aimConstraint2.crz" "finger_R2_blade.rz" -l on;
connectAttr "finger_R2_blade.pim" "finger_R2_blade_aimConstraint2.cpim";
connectAttr "finger_R2_blade.t" "finger_R2_blade_aimConstraint2.ct";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_aimConstraint2.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_aimConstraint2.crt";
connectAttr "finger_R2_blade.ro" "finger_R2_blade_aimConstraint2.cro";
connectAttr "finger_R2_0_loc.t" "finger_R2_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R2_0_loc.rp" "finger_R2_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R2_0_loc.rpt" "finger_R2_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R2_0_loc.pm" "finger_R2_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R2_blade_aimConstraint2.w0" "finger_R2_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R2_root.wm" "finger_R2_blade_aimConstraint2.wum";
connectAttr "unitConversion25.o" "finger_R2_blade_aimConstraint2.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint2.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint2.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint2.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint2.w0" "finger_R2_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns193.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak341.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns193GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns193Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8251.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet341.mwc" "finger_R2_crvShape.iog.og[1].gco";
connectAttr "finger_R1_blade_pointConstraint2.ctx" "finger_R1_blade.tx" -l on;
connectAttr "finger_R1_blade_pointConstraint2.cty" "finger_R1_blade.ty" -l on;
connectAttr "finger_R1_blade_pointConstraint2.ctz" "finger_R1_blade.tz" -l on;
connectAttr "finger_R1_blade_aimConstraint2.crx" "finger_R1_blade.rx" -l on;
connectAttr "finger_R1_blade_aimConstraint2.cry" "finger_R1_blade.ry" -l on;
connectAttr "finger_R1_blade_aimConstraint2.crz" "finger_R1_blade.rz" -l on;
connectAttr "finger_R1_blade.pim" "finger_R1_blade_aimConstraint2.cpim";
connectAttr "finger_R1_blade.t" "finger_R1_blade_aimConstraint2.ct";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_aimConstraint2.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_aimConstraint2.crt";
connectAttr "finger_R1_blade.ro" "finger_R1_blade_aimConstraint2.cro";
connectAttr "finger_R1_0_loc.t" "finger_R1_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R1_0_loc.rp" "finger_R1_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R1_0_loc.rpt" "finger_R1_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R1_0_loc.pm" "finger_R1_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R1_blade_aimConstraint2.w0" "finger_R1_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R1_root.wm" "finger_R1_blade_aimConstraint2.wum";
connectAttr "unitConversion26.o" "finger_R1_blade_aimConstraint2.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint2.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint2.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint2.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint2.w0" "finger_R1_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns194.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak342.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns194GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns194Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8253.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet342.mwc" "finger_R1_crvShape.iog.og[1].gco";
connectAttr "meta_R0_blade_pointConstraint2.ctx" "meta_R0_blade.tx" -l on;
connectAttr "meta_R0_blade_pointConstraint2.cty" "meta_R0_blade.ty" -l on;
connectAttr "meta_R0_blade_pointConstraint2.ctz" "meta_R0_blade.tz" -l on;
connectAttr "meta_R0_blade_aimConstraint2.crx" "meta_R0_blade.rx" -l on;
connectAttr "meta_R0_blade_aimConstraint2.cry" "meta_R0_blade.ry" -l on;
connectAttr "meta_R0_blade_aimConstraint2.crz" "meta_R0_blade.rz" -l on;
connectAttr "meta_R0_blade.pim" "meta_R0_blade_aimConstraint2.cpim";
connectAttr "meta_R0_blade.t" "meta_R0_blade_aimConstraint2.ct";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_aimConstraint2.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_aimConstraint2.crt";
connectAttr "meta_R0_blade.ro" "meta_R0_blade_aimConstraint2.cro";
connectAttr "meta_R0_0_loc.t" "meta_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "meta_R0_0_loc.rp" "meta_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "meta_R0_0_loc.rpt" "meta_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "meta_R0_0_loc.pm" "meta_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "meta_R0_blade_aimConstraint2.w0" "meta_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "meta_R0_root.wm" "meta_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion23.o" "meta_R0_blade_aimConstraint2.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint2.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint2.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint2.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint2.w0" "meta_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns191.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak339.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns191GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns191Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8247.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet339.mwc" "meta_R0_crvShape.iog.og[1].gco";
connectAttr "thumb_R0_blade_pointConstraint2.ctx" "thumb_R0_blade.tx" -l on;
connectAttr "thumb_R0_blade_pointConstraint2.cty" "thumb_R0_blade.ty" -l on;
connectAttr "thumb_R0_blade_pointConstraint2.ctz" "thumb_R0_blade.tz" -l on;
connectAttr "thumb_R0_blade_aimConstraint2.crx" "thumb_R0_blade.rx" -l on;
connectAttr "thumb_R0_blade_aimConstraint2.cry" "thumb_R0_blade.ry" -l on;
connectAttr "thumb_R0_blade_aimConstraint2.crz" "thumb_R0_blade.rz" -l on;
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_aimConstraint2.cpim";
connectAttr "thumb_R0_blade.t" "thumb_R0_blade_aimConstraint2.ct";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_aimConstraint2.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_aimConstraint2.crt";
connectAttr "thumb_R0_blade.ro" "thumb_R0_blade_aimConstraint2.cro";
connectAttr "thumb_R0_0_loc.t" "thumb_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "thumb_R0_0_loc.rp" "thumb_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "thumb_R0_0_loc.rpt" "thumb_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "thumb_R0_0_loc.pm" "thumb_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "thumb_R0_blade_aimConstraint2.w0" "thumb_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "thumb_R0_root.wm" "thumb_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion27.o" "thumb_R0_blade_aimConstraint2.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint2.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint2.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint2.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint2.w0" "thumb_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns195.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak343.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns195GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns195Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8255.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet343.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "finger_R0_blade_pointConstraint2.ctx" "finger_R0_blade.tx" -l on;
connectAttr "finger_R0_blade_pointConstraint2.cty" "finger_R0_blade.ty" -l on;
connectAttr "finger_R0_blade_pointConstraint2.ctz" "finger_R0_blade.tz" -l on;
connectAttr "finger_R0_blade_aimConstraint2.crx" "finger_R0_blade.rx" -l on;
connectAttr "finger_R0_blade_aimConstraint2.cry" "finger_R0_blade.ry" -l on;
connectAttr "finger_R0_blade_aimConstraint2.crz" "finger_R0_blade.rz" -l on;
connectAttr "finger_R0_blade.pim" "finger_R0_blade_aimConstraint2.cpim";
connectAttr "finger_R0_blade.t" "finger_R0_blade_aimConstraint2.ct";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_aimConstraint2.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_aimConstraint2.crt";
connectAttr "finger_R0_blade.ro" "finger_R0_blade_aimConstraint2.cro";
connectAttr "finger_R0_0_loc.t" "finger_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R0_0_loc.rp" "finger_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R0_0_loc.rpt" "finger_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R0_0_loc.pm" "finger_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R0_blade_aimConstraint2.w0" "finger_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R0_root.wm" "finger_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion28.o" "finger_R0_blade_aimConstraint2.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint2.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint2.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint2.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint2.w0" "finger_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns196.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak344.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns196GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns196Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8257.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet344.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns190.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak338.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns190GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns190Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8245.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet338.mwc" "arm_R0_crvShape.iog.og[1].gco";
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
connectAttr "shoulder_R0_tip.t" "shoulder_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "shoulder_R0_tip.rp" "shoulder_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "shoulder_R0_tip.rpt" "shoulder_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "shoulder_R0_tip.pm" "shoulder_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint2.w0" "shoulder_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion22.o" "shoulder_R0_blade_aimConstraint2.ox";
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
connectAttr "mgear_curveCns189.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak337.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns189GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns189Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8243.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet337.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint2.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint2.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint2.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint2.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint2.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint2.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint2.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint2.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint2.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint2.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint2.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint2.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint2.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint2.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint2.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint2.w0" "spine_C0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint2.wum";
connectAttr "unitConversion12.o" "spine_C0_blade_aimConstraint2.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint2.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint2.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint2.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint2.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint2.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint2.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint2.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint2.w0" "spine_C0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns171.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak319.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns171GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns171Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8207.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet319.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns198.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak346.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns198GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns198Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8261.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet346.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns199.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak347.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns199GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns199Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8263.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet347.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns197.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak345.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns197GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns197Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8259.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet345.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile1.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile1.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns201.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak349.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns201GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns201Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8267.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet349.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns202.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak350.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns202GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns202Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8269.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet350.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns200.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak348.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns200GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns200Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8265.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet348.mwc" "leg_R0_crvShape.iog.og[1].gco";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion15.i";
connectAttr "mgear_curveCns175GroupParts.og" "mgear_curveCns175.ip[0].ig";
connectAttr "mgear_curveCns175GroupId.id" "mgear_curveCns175.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns175.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns175.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns175.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns175.inputs[3]";
connectAttr "mgear_curveCns175GroupId.msg" "mgear_curveCns175Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns175Set.dsm" -na;
connectAttr "mgear_curveCns175.msg" "mgear_curveCns175Set.ub[0]";
connectAttr "tweak323.og[0]" "mgear_curveCns175GroupParts.ig";
connectAttr "mgear_curveCns175GroupId.id" "mgear_curveCns175GroupParts.gi";
connectAttr "groupParts646.og" "tweak323.ip[0].ig";
connectAttr "groupId8215.id" "tweak323.ip[0].gi";
connectAttr "groupId8215.msg" "tweakSet323.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet323.dsm" -na;
connectAttr "tweak323.msg" "tweakSet323.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts646.ig";
connectAttr "groupId8215.id" "groupParts646.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion16.i";
connectAttr "mgear_curveCns176GroupParts.og" "mgear_curveCns176.ip[0].ig";
connectAttr "mgear_curveCns176GroupId.id" "mgear_curveCns176.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns176.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns176.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns176.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns176.inputs[3]";
connectAttr "mgear_curveCns176GroupId.msg" "mgear_curveCns176Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns176Set.dsm" -na;
connectAttr "mgear_curveCns176.msg" "mgear_curveCns176Set.ub[0]";
connectAttr "tweak324.og[0]" "mgear_curveCns176GroupParts.ig";
connectAttr "mgear_curveCns176GroupId.id" "mgear_curveCns176GroupParts.gi";
connectAttr "groupParts648.og" "tweak324.ip[0].ig";
connectAttr "groupId8217.id" "tweak324.ip[0].gi";
connectAttr "groupId8217.msg" "tweakSet324.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet324.dsm" -na;
connectAttr "tweak324.msg" "tweakSet324.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts648.ig";
connectAttr "groupId8217.id" "groupParts648.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion17.i";
connectAttr "mgear_curveCns177GroupParts.og" "mgear_curveCns177.ip[0].ig";
connectAttr "mgear_curveCns177GroupId.id" "mgear_curveCns177.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns177.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns177.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns177.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns177.inputs[3]";
connectAttr "mgear_curveCns177GroupId.msg" "mgear_curveCns177Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns177Set.dsm" -na;
connectAttr "mgear_curveCns177.msg" "mgear_curveCns177Set.ub[0]";
connectAttr "tweak325.og[0]" "mgear_curveCns177GroupParts.ig";
connectAttr "mgear_curveCns177GroupId.id" "mgear_curveCns177GroupParts.gi";
connectAttr "groupParts650.og" "tweak325.ip[0].ig";
connectAttr "groupId8219.id" "tweak325.ip[0].gi";
connectAttr "groupId8219.msg" "tweakSet325.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet325.dsm" -na;
connectAttr "tweak325.msg" "tweakSet325.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts650.ig";
connectAttr "groupId8219.id" "groupParts650.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion14.i";
connectAttr "mgear_curveCns174GroupParts.og" "mgear_curveCns174.ip[0].ig";
connectAttr "mgear_curveCns174GroupId.id" "mgear_curveCns174.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns174.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns174.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns174.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns174.inputs[3]";
connectAttr "mgear_curveCns174GroupId.msg" "mgear_curveCns174Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns174Set.dsm" -na;
connectAttr "mgear_curveCns174.msg" "mgear_curveCns174Set.ub[0]";
connectAttr "tweak322.og[0]" "mgear_curveCns174GroupParts.ig";
connectAttr "mgear_curveCns174GroupId.id" "mgear_curveCns174GroupParts.gi";
connectAttr "groupParts644.og" "tweak322.ip[0].ig";
connectAttr "groupId8213.id" "tweak322.ip[0].gi";
connectAttr "groupId8213.msg" "tweakSet322.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet322.dsm" -na;
connectAttr "tweak322.msg" "tweakSet322.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts644.ig";
connectAttr "groupId8213.id" "groupParts644.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion18.i";
connectAttr "mgear_curveCns178GroupParts.og" "mgear_curveCns178.ip[0].ig";
connectAttr "mgear_curveCns178GroupId.id" "mgear_curveCns178.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns178.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns178.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns178.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns178.inputs[3]";
connectAttr "mgear_curveCns178GroupId.msg" "mgear_curveCns178Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns178Set.dsm" -na;
connectAttr "mgear_curveCns178.msg" "mgear_curveCns178Set.ub[0]";
connectAttr "tweak326.og[0]" "mgear_curveCns178GroupParts.ig";
connectAttr "mgear_curveCns178GroupId.id" "mgear_curveCns178GroupParts.gi";
connectAttr "groupParts652.og" "tweak326.ip[0].ig";
connectAttr "groupId8221.id" "tweak326.ip[0].gi";
connectAttr "groupId8221.msg" "tweakSet326.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet326.dsm" -na;
connectAttr "tweak326.msg" "tweakSet326.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts652.ig";
connectAttr "groupId8221.id" "groupParts652.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion19.i";
connectAttr "mgear_curveCns179GroupParts.og" "mgear_curveCns179.ip[0].ig";
connectAttr "mgear_curveCns179GroupId.id" "mgear_curveCns179.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns179.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns179.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns179.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns179.inputs[3]";
connectAttr "mgear_curveCns179GroupId.msg" "mgear_curveCns179Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns179Set.dsm" -na;
connectAttr "mgear_curveCns179.msg" "mgear_curveCns179Set.ub[0]";
connectAttr "tweak327.og[0]" "mgear_curveCns179GroupParts.ig";
connectAttr "mgear_curveCns179GroupId.id" "mgear_curveCns179GroupParts.gi";
connectAttr "groupParts654.og" "tweak327.ip[0].ig";
connectAttr "groupId8223.id" "tweak327.ip[0].gi";
connectAttr "groupId8223.msg" "tweakSet327.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet327.dsm" -na;
connectAttr "tweak327.msg" "tweakSet327.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts654.ig";
connectAttr "groupId8223.id" "groupParts654.gi";
connectAttr "mgear_curveCns173GroupParts.og" "mgear_curveCns173.ip[0].ig";
connectAttr "mgear_curveCns173GroupId.id" "mgear_curveCns173.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns173.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns173.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns173.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns173.inputs[3]";
connectAttr "mgear_curveCns173GroupId.msg" "mgear_curveCns173Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns173Set.dsm" -na;
connectAttr "mgear_curveCns173.msg" "mgear_curveCns173Set.ub[0]";
connectAttr "tweak321.og[0]" "mgear_curveCns173GroupParts.ig";
connectAttr "mgear_curveCns173GroupId.id" "mgear_curveCns173GroupParts.gi";
connectAttr "groupParts642.og" "tweak321.ip[0].ig";
connectAttr "groupId8211.id" "tweak321.ip[0].gi";
connectAttr "groupId8211.msg" "tweakSet321.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet321.dsm" -na;
connectAttr "tweak321.msg" "tweakSet321.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts642.ig";
connectAttr "groupId8211.id" "groupParts642.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion13.i";
connectAttr "mgear_curveCns172GroupParts.og" "mgear_curveCns172.ip[0].ig";
connectAttr "mgear_curveCns172GroupId.id" "mgear_curveCns172.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns172.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns172.inputs[1]";
connectAttr "mgear_curveCns172GroupId.msg" "mgear_curveCns172Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns172Set.dsm" -na;
connectAttr "mgear_curveCns172.msg" "mgear_curveCns172Set.ub[0]";
connectAttr "tweak320.og[0]" "mgear_curveCns172GroupParts.ig";
connectAttr "mgear_curveCns172GroupId.id" "mgear_curveCns172GroupParts.gi";
connectAttr "groupParts640.og" "tweak320.ip[0].ig";
connectAttr "groupId8209.id" "tweak320.ip[0].gi";
connectAttr "groupId8209.msg" "tweakSet320.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet320.dsm" -na;
connectAttr "tweak320.msg" "tweakSet320.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts640.ig";
connectAttr "groupId8209.id" "groupParts640.gi";
connectAttr "mgear_curveCns183GroupParts.og" "mgear_curveCns183.ip[0].ig";
connectAttr "mgear_curveCns183GroupId.id" "mgear_curveCns183.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns183.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns183.inputs[1]";
connectAttr "mgear_curveCns183GroupId.msg" "mgear_curveCns183Set.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns183Set.dsm"
		 -na;
connectAttr "mgear_curveCns183.msg" "mgear_curveCns183Set.ub[0]";
connectAttr "tweak331.og[0]" "mgear_curveCns183GroupParts.ig";
connectAttr "mgear_curveCns183GroupId.id" "mgear_curveCns183GroupParts.gi";
connectAttr "groupParts662.og" "tweak331.ip[0].ig";
connectAttr "groupId8231.id" "tweak331.ip[0].gi";
connectAttr "groupId8231.msg" "tweakSet331.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet331.dsm"
		 -na;
connectAttr "tweak331.msg" "tweakSet331.ub[0]";
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts662.ig"
		;
connectAttr "groupId8231.id" "groupParts662.gi";
connectAttr "mgear_curveCns184GroupParts.og" "mgear_curveCns184.ip[0].ig";
connectAttr "mgear_curveCns184GroupId.id" "mgear_curveCns184.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns184.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns184.inputs[1]";
connectAttr "mgear_curveCns184GroupId.msg" "mgear_curveCns184Set.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns184Set.dsm"
		 -na;
connectAttr "mgear_curveCns184.msg" "mgear_curveCns184Set.ub[0]";
connectAttr "tweak332.og[0]" "mgear_curveCns184GroupParts.ig";
connectAttr "mgear_curveCns184GroupId.id" "mgear_curveCns184GroupParts.gi";
connectAttr "groupParts664.og" "tweak332.ip[0].ig";
connectAttr "groupId8233.id" "tweak332.ip[0].gi";
connectAttr "groupId8233.msg" "tweakSet332.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet332.dsm"
		 -na;
connectAttr "tweak332.msg" "tweakSet332.ub[0]";
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts664.ig"
		;
connectAttr "groupId8233.id" "groupParts664.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion21.i";
connectAttr "mgear_curveCns186GroupParts.og" "mgear_curveCns186.ip[0].ig";
connectAttr "mgear_curveCns186GroupId.id" "mgear_curveCns186.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns186.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns186.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns186.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns186.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns186.inputs[4]";
connectAttr "mgear_curveCns186GroupId.msg" "mgear_curveCns186Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns186Set.dsm" -na;
connectAttr "mgear_curveCns186.msg" "mgear_curveCns186Set.ub[0]";
connectAttr "tweak334.og[0]" "mgear_curveCns186GroupParts.ig";
connectAttr "mgear_curveCns186GroupId.id" "mgear_curveCns186GroupParts.gi";
connectAttr "groupParts668.og" "tweak334.ip[0].ig";
connectAttr "groupId8237.id" "tweak334.ip[0].gi";
connectAttr "groupId8237.msg" "tweakSet334.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet334.dsm" -na;
connectAttr "tweak334.msg" "tweakSet334.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts668.ig";
connectAttr "groupId8237.id" "groupParts668.gi";
connectAttr "mgear_curveCns182GroupParts.og" "mgear_curveCns182.ip[0].ig";
connectAttr "mgear_curveCns182GroupId.id" "mgear_curveCns182.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns182.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns182.inputs[1]";
connectAttr "mgear_curveCns182GroupId.msg" "mgear_curveCns182Set.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns182Set.dsm"
		 -na;
connectAttr "mgear_curveCns182.msg" "mgear_curveCns182Set.ub[0]";
connectAttr "tweak330.og[0]" "mgear_curveCns182GroupParts.ig";
connectAttr "mgear_curveCns182GroupId.id" "mgear_curveCns182GroupParts.gi";
connectAttr "groupParts660.og" "tweak330.ip[0].ig";
connectAttr "groupId8229.id" "tweak330.ip[0].gi";
connectAttr "groupId8229.msg" "tweakSet330.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet330.dsm"
		 -na;
connectAttr "tweak330.msg" "tweakSet330.ub[0]";
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts660.ig"
		;
connectAttr "groupId8229.id" "groupParts660.gi";
connectAttr "mgear_curveCns185GroupParts.og" "mgear_curveCns185.ip[0].ig";
connectAttr "mgear_curveCns185GroupId.id" "mgear_curveCns185.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns185.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns185.inputs[1]";
connectAttr "mgear_curveCns185GroupId.msg" "mgear_curveCns185Set.gn" -na;
connectAttr "mouth_C0_crv2Shape.iog.og[0]" "mgear_curveCns185Set.dsm" -na;
connectAttr "mgear_curveCns185.msg" "mgear_curveCns185Set.ub[0]";
connectAttr "tweak333.og[0]" "mgear_curveCns185GroupParts.ig";
connectAttr "mgear_curveCns185GroupId.id" "mgear_curveCns185GroupParts.gi";
connectAttr "groupParts666.og" "tweak333.ip[0].ig";
connectAttr "groupId8235.id" "tweak333.ip[0].gi";
connectAttr "groupId8235.msg" "tweakSet333.gn" -na;
connectAttr "mouth_C0_crv2Shape.iog.og[1]" "tweakSet333.dsm" -na;
connectAttr "tweak333.msg" "tweakSet333.ub[0]";
connectAttr "mouth_C0_crv2ShapeOrig.ws" "groupParts666.ig";
connectAttr "groupId8235.id" "groupParts666.gi";
connectAttr "mgear_curveCns187GroupParts.og" "mgear_curveCns187.ip[0].ig";
connectAttr "mgear_curveCns187GroupId.id" "mgear_curveCns187.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns187.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns187.inputs[1]";
connectAttr "mgear_curveCns187GroupId.msg" "mgear_curveCns187Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns187Set.dsm" -na;
connectAttr "mgear_curveCns187.msg" "mgear_curveCns187Set.ub[0]";
connectAttr "tweak335.og[0]" "mgear_curveCns187GroupParts.ig";
connectAttr "mgear_curveCns187GroupId.id" "mgear_curveCns187GroupParts.gi";
connectAttr "groupParts670.og" "tweak335.ip[0].ig";
connectAttr "groupId8239.id" "tweak335.ip[0].gi";
connectAttr "groupId8239.msg" "tweakSet335.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet335.dsm" -na;
connectAttr "tweak335.msg" "tweakSet335.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts670.ig";
connectAttr "groupId8239.id" "groupParts670.gi";
connectAttr "mgear_curveCns188GroupParts.og" "mgear_curveCns188.ip[0].ig";
connectAttr "mgear_curveCns188GroupId.id" "mgear_curveCns188.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns188.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns188.inputs[1]";
connectAttr "mgear_curveCns188GroupId.msg" "mgear_curveCns188Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns188Set.dsm" -na;
connectAttr "mgear_curveCns188.msg" "mgear_curveCns188Set.ub[0]";
connectAttr "tweak336.og[0]" "mgear_curveCns188GroupParts.ig";
connectAttr "mgear_curveCns188GroupId.id" "mgear_curveCns188GroupParts.gi";
connectAttr "groupParts672.og" "tweak336.ip[0].ig";
connectAttr "groupId8241.id" "tweak336.ip[0].gi";
connectAttr "groupId8241.msg" "tweakSet336.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet336.dsm" -na;
connectAttr "tweak336.msg" "tweakSet336.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts672.ig";
connectAttr "groupId8241.id" "groupParts672.gi";
connectAttr "mgear_curveCns181GroupParts.og" "mgear_curveCns181.ip[0].ig";
connectAttr "mgear_curveCns181GroupId.id" "mgear_curveCns181.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns181.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns181.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns181.inputs[2]";
connectAttr "mgear_curveCns181GroupId.msg" "mgear_curveCns181Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns181Set.dsm" -na;
connectAttr "mgear_curveCns181.msg" "mgear_curveCns181Set.ub[0]";
connectAttr "tweak329.og[0]" "mgear_curveCns181GroupParts.ig";
connectAttr "mgear_curveCns181GroupId.id" "mgear_curveCns181GroupParts.gi";
connectAttr "groupParts658.og" "tweak329.ip[0].ig";
connectAttr "groupId8227.id" "tweak329.ip[0].gi";
connectAttr "groupId8227.msg" "tweakSet329.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet329.dsm" -na;
connectAttr "tweak329.msg" "tweakSet329.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts658.ig";
connectAttr "groupId8227.id" "groupParts658.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion20.i";
connectAttr "mgear_curveCns180GroupParts.og" "mgear_curveCns180.ip[0].ig";
connectAttr "mgear_curveCns180GroupId.id" "mgear_curveCns180.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns180.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns180.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns180.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns180.inputs[3]";
connectAttr "mgear_curveCns180GroupId.msg" "mgear_curveCns180Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns180Set.dsm" -na;
connectAttr "mgear_curveCns180.msg" "mgear_curveCns180Set.ub[0]";
connectAttr "tweak328.og[0]" "mgear_curveCns180GroupParts.ig";
connectAttr "mgear_curveCns180GroupId.id" "mgear_curveCns180GroupParts.gi";
connectAttr "groupParts656.og" "tweak328.ip[0].ig";
connectAttr "groupId8225.id" "tweak328.ip[0].gi";
connectAttr "groupId8225.msg" "tweakSet328.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet328.dsm" -na;
connectAttr "tweak328.msg" "tweakSet328.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts656.ig";
connectAttr "groupId8225.id" "groupParts656.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion24.i";
connectAttr "mgear_curveCns192GroupParts.og" "mgear_curveCns192.ip[0].ig";
connectAttr "mgear_curveCns192GroupId.id" "mgear_curveCns192.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns192.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns192.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns192.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns192.inputs[3]";
connectAttr "mgear_curveCns192GroupId.msg" "mgear_curveCns192Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns192Set.dsm" -na;
connectAttr "mgear_curveCns192.msg" "mgear_curveCns192Set.ub[0]";
connectAttr "tweak340.og[0]" "mgear_curveCns192GroupParts.ig";
connectAttr "mgear_curveCns192GroupId.id" "mgear_curveCns192GroupParts.gi";
connectAttr "groupParts680.og" "tweak340.ip[0].ig";
connectAttr "groupId8249.id" "tweak340.ip[0].gi";
connectAttr "groupId8249.msg" "tweakSet340.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet340.dsm" -na;
connectAttr "tweak340.msg" "tweakSet340.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts680.ig";
connectAttr "groupId8249.id" "groupParts680.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion25.i";
connectAttr "mgear_curveCns193GroupParts.og" "mgear_curveCns193.ip[0].ig";
connectAttr "mgear_curveCns193GroupId.id" "mgear_curveCns193.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns193.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns193.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns193.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns193.inputs[3]";
connectAttr "mgear_curveCns193GroupId.msg" "mgear_curveCns193Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns193Set.dsm" -na;
connectAttr "mgear_curveCns193.msg" "mgear_curveCns193Set.ub[0]";
connectAttr "tweak341.og[0]" "mgear_curveCns193GroupParts.ig";
connectAttr "mgear_curveCns193GroupId.id" "mgear_curveCns193GroupParts.gi";
connectAttr "groupParts682.og" "tweak341.ip[0].ig";
connectAttr "groupId8251.id" "tweak341.ip[0].gi";
connectAttr "groupId8251.msg" "tweakSet341.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet341.dsm" -na;
connectAttr "tweak341.msg" "tweakSet341.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts682.ig";
connectAttr "groupId8251.id" "groupParts682.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion26.i";
connectAttr "mgear_curveCns194GroupParts.og" "mgear_curveCns194.ip[0].ig";
connectAttr "mgear_curveCns194GroupId.id" "mgear_curveCns194.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns194.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns194.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns194.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns194.inputs[3]";
connectAttr "mgear_curveCns194GroupId.msg" "mgear_curveCns194Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns194Set.dsm" -na;
connectAttr "mgear_curveCns194.msg" "mgear_curveCns194Set.ub[0]";
connectAttr "tweak342.og[0]" "mgear_curveCns194GroupParts.ig";
connectAttr "mgear_curveCns194GroupId.id" "mgear_curveCns194GroupParts.gi";
connectAttr "groupParts684.og" "tweak342.ip[0].ig";
connectAttr "groupId8253.id" "tweak342.ip[0].gi";
connectAttr "groupId8253.msg" "tweakSet342.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet342.dsm" -na;
connectAttr "tweak342.msg" "tweakSet342.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts684.ig";
connectAttr "groupId8253.id" "groupParts684.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion23.i";
connectAttr "mgear_curveCns191GroupParts.og" "mgear_curveCns191.ip[0].ig";
connectAttr "mgear_curveCns191GroupId.id" "mgear_curveCns191.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns191.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns191.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns191.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns191.inputs[3]";
connectAttr "mgear_curveCns191GroupId.msg" "mgear_curveCns191Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns191Set.dsm" -na;
connectAttr "mgear_curveCns191.msg" "mgear_curveCns191Set.ub[0]";
connectAttr "tweak339.og[0]" "mgear_curveCns191GroupParts.ig";
connectAttr "mgear_curveCns191GroupId.id" "mgear_curveCns191GroupParts.gi";
connectAttr "groupParts678.og" "tweak339.ip[0].ig";
connectAttr "groupId8247.id" "tweak339.ip[0].gi";
connectAttr "groupId8247.msg" "tweakSet339.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet339.dsm" -na;
connectAttr "tweak339.msg" "tweakSet339.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts678.ig";
connectAttr "groupId8247.id" "groupParts678.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion27.i";
connectAttr "mgear_curveCns195GroupParts.og" "mgear_curveCns195.ip[0].ig";
connectAttr "mgear_curveCns195GroupId.id" "mgear_curveCns195.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns195.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns195.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns195.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns195.inputs[3]";
connectAttr "mgear_curveCns195GroupId.msg" "mgear_curveCns195Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns195Set.dsm" -na;
connectAttr "mgear_curveCns195.msg" "mgear_curveCns195Set.ub[0]";
connectAttr "tweak343.og[0]" "mgear_curveCns195GroupParts.ig";
connectAttr "mgear_curveCns195GroupId.id" "mgear_curveCns195GroupParts.gi";
connectAttr "groupParts686.og" "tweak343.ip[0].ig";
connectAttr "groupId8255.id" "tweak343.ip[0].gi";
connectAttr "groupId8255.msg" "tweakSet343.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet343.dsm" -na;
connectAttr "tweak343.msg" "tweakSet343.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts686.ig";
connectAttr "groupId8255.id" "groupParts686.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion28.i";
connectAttr "mgear_curveCns196GroupParts.og" "mgear_curveCns196.ip[0].ig";
connectAttr "mgear_curveCns196GroupId.id" "mgear_curveCns196.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns196.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns196.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns196.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns196.inputs[3]";
connectAttr "mgear_curveCns196GroupId.msg" "mgear_curveCns196Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns196Set.dsm" -na;
connectAttr "mgear_curveCns196.msg" "mgear_curveCns196Set.ub[0]";
connectAttr "tweak344.og[0]" "mgear_curveCns196GroupParts.ig";
connectAttr "mgear_curveCns196GroupId.id" "mgear_curveCns196GroupParts.gi";
connectAttr "groupParts688.og" "tweak344.ip[0].ig";
connectAttr "groupId8257.id" "tweak344.ip[0].gi";
connectAttr "groupId8257.msg" "tweakSet344.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet344.dsm" -na;
connectAttr "tweak344.msg" "tweakSet344.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts688.ig";
connectAttr "groupId8257.id" "groupParts688.gi";
connectAttr "mgear_curveCns190GroupParts.og" "mgear_curveCns190.ip[0].ig";
connectAttr "mgear_curveCns190GroupId.id" "mgear_curveCns190.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns190.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns190.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns190.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns190.inputs[3]";
connectAttr "mgear_curveCns190GroupId.msg" "mgear_curveCns190Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns190Set.dsm" -na;
connectAttr "mgear_curveCns190.msg" "mgear_curveCns190Set.ub[0]";
connectAttr "tweak338.og[0]" "mgear_curveCns190GroupParts.ig";
connectAttr "mgear_curveCns190GroupId.id" "mgear_curveCns190GroupParts.gi";
connectAttr "groupParts676.og" "tweak338.ip[0].ig";
connectAttr "groupId8245.id" "tweak338.ip[0].gi";
connectAttr "groupId8245.msg" "tweakSet338.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet338.dsm" -na;
connectAttr "tweak338.msg" "tweakSet338.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts676.ig";
connectAttr "groupId8245.id" "groupParts676.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion22.i";
connectAttr "mgear_curveCns189GroupParts.og" "mgear_curveCns189.ip[0].ig";
connectAttr "mgear_curveCns189GroupId.id" "mgear_curveCns189.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns189.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns189.inputs[1]";
connectAttr "mgear_curveCns189GroupId.msg" "mgear_curveCns189Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns189Set.dsm" -na;
connectAttr "mgear_curveCns189.msg" "mgear_curveCns189Set.ub[0]";
connectAttr "tweak337.og[0]" "mgear_curveCns189GroupParts.ig";
connectAttr "mgear_curveCns189GroupId.id" "mgear_curveCns189GroupParts.gi";
connectAttr "groupParts674.og" "tweak337.ip[0].ig";
connectAttr "groupId8243.id" "tweak337.ip[0].gi";
connectAttr "groupId8243.msg" "tweakSet337.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet337.dsm" -na;
connectAttr "tweak337.msg" "tweakSet337.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts674.ig";
connectAttr "groupId8243.id" "groupParts674.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion12.i";
connectAttr "mgear_curveCns171GroupParts.og" "mgear_curveCns171.ip[0].ig";
connectAttr "mgear_curveCns171GroupId.id" "mgear_curveCns171.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns171.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns171.inputs[1]";
connectAttr "mgear_curveCns171GroupId.msg" "mgear_curveCns171Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns171Set.dsm" -na;
connectAttr "mgear_curveCns171.msg" "mgear_curveCns171Set.ub[0]";
connectAttr "tweak319.og[0]" "mgear_curveCns171GroupParts.ig";
connectAttr "mgear_curveCns171GroupId.id" "mgear_curveCns171GroupParts.gi";
connectAttr "groupParts638.og" "tweak319.ip[0].ig";
connectAttr "groupId8207.id" "tweak319.ip[0].gi";
connectAttr "groupId8207.msg" "tweakSet319.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet319.dsm" -na;
connectAttr "tweak319.msg" "tweakSet319.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts638.ig";
connectAttr "groupId8207.id" "groupParts638.gi";
connectAttr "mgear_curveCns198GroupParts.og" "mgear_curveCns198.ip[0].ig";
connectAttr "mgear_curveCns198GroupId.id" "mgear_curveCns198.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns198.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns198.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns198.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns198.inputs[3]";
connectAttr "mgear_curveCns198GroupId.msg" "mgear_curveCns198Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns198Set.dsm" -na;
connectAttr "mgear_curveCns198.msg" "mgear_curveCns198Set.ub[0]";
connectAttr "tweak346.og[0]" "mgear_curveCns198GroupParts.ig";
connectAttr "mgear_curveCns198GroupId.id" "mgear_curveCns198GroupParts.gi";
connectAttr "groupParts692.og" "tweak346.ip[0].ig";
connectAttr "groupId8261.id" "tweak346.ip[0].gi";
connectAttr "groupId8261.msg" "tweakSet346.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet346.dsm" -na;
connectAttr "tweak346.msg" "tweakSet346.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts692.ig";
connectAttr "groupId8261.id" "groupParts692.gi";
connectAttr "mgear_curveCns199GroupParts.og" "mgear_curveCns199.ip[0].ig";
connectAttr "mgear_curveCns199GroupId.id" "mgear_curveCns199.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns199.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns199.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns199.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns199.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns199.inputs[4]";
connectAttr "mgear_curveCns199GroupId.msg" "mgear_curveCns199Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns199Set.dsm" -na;
connectAttr "mgear_curveCns199.msg" "mgear_curveCns199Set.ub[0]";
connectAttr "tweak347.og[0]" "mgear_curveCns199GroupParts.ig";
connectAttr "mgear_curveCns199GroupId.id" "mgear_curveCns199GroupParts.gi";
connectAttr "groupParts694.og" "tweak347.ip[0].ig";
connectAttr "groupId8263.id" "tweak347.ip[0].gi";
connectAttr "groupId8263.msg" "tweakSet347.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet347.dsm" -na;
connectAttr "tweak347.msg" "tweakSet347.ub[0]";
connectAttr "foot_L0_Shape1Orig1.ws" "groupParts694.ig";
connectAttr "groupId8263.id" "groupParts694.gi";
connectAttr "mgear_curveCns197GroupParts.og" "mgear_curveCns197.ip[0].ig";
connectAttr "mgear_curveCns197GroupId.id" "mgear_curveCns197.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns197.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns197.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns197.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns197.inputs[3]";
connectAttr "mgear_curveCns197GroupId.msg" "mgear_curveCns197Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns197Set.dsm" -na;
connectAttr "mgear_curveCns197.msg" "mgear_curveCns197Set.ub[0]";
connectAttr "tweak345.og[0]" "mgear_curveCns197GroupParts.ig";
connectAttr "mgear_curveCns197GroupId.id" "mgear_curveCns197GroupParts.gi";
connectAttr "groupParts690.og" "tweak345.ip[0].ig";
connectAttr "groupId8259.id" "tweak345.ip[0].gi";
connectAttr "groupId8259.msg" "tweakSet345.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet345.dsm" -na;
connectAttr "tweak345.msg" "tweakSet345.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts690.ig";
connectAttr "groupId8259.id" "groupParts690.gi";
connectAttr "mgear_curveCns201GroupParts.og" "mgear_curveCns201.ip[0].ig";
connectAttr "mgear_curveCns201GroupId.id" "mgear_curveCns201.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns201.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns201.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns201.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns201.inputs[3]";
connectAttr "mgear_curveCns201GroupId.msg" "mgear_curveCns201Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns201Set.dsm" -na;
connectAttr "mgear_curveCns201.msg" "mgear_curveCns201Set.ub[0]";
connectAttr "tweak349.og[0]" "mgear_curveCns201GroupParts.ig";
connectAttr "mgear_curveCns201GroupId.id" "mgear_curveCns201GroupParts.gi";
connectAttr "groupParts698.og" "tweak349.ip[0].ig";
connectAttr "groupId8267.id" "tweak349.ip[0].gi";
connectAttr "groupId8267.msg" "tweakSet349.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet349.dsm" -na;
connectAttr "tweak349.msg" "tweakSet349.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts698.ig";
connectAttr "groupId8267.id" "groupParts698.gi";
connectAttr "mgear_curveCns202GroupParts.og" "mgear_curveCns202.ip[0].ig";
connectAttr "mgear_curveCns202GroupId.id" "mgear_curveCns202.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns202.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns202.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns202.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns202.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns202.inputs[4]";
connectAttr "mgear_curveCns202GroupId.msg" "mgear_curveCns202Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns202Set.dsm" -na;
connectAttr "mgear_curveCns202.msg" "mgear_curveCns202Set.ub[0]";
connectAttr "tweak350.og[0]" "mgear_curveCns202GroupParts.ig";
connectAttr "mgear_curveCns202GroupId.id" "mgear_curveCns202GroupParts.gi";
connectAttr "groupParts700.og" "tweak350.ip[0].ig";
connectAttr "groupId8269.id" "tweak350.ip[0].gi";
connectAttr "groupId8269.msg" "tweakSet350.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet350.dsm" -na;
connectAttr "tweak350.msg" "tweakSet350.ub[0]";
connectAttr "foot_R0_Shape1Orig1.ws" "groupParts700.ig";
connectAttr "groupId8269.id" "groupParts700.gi";
connectAttr "mgear_curveCns200GroupParts.og" "mgear_curveCns200.ip[0].ig";
connectAttr "mgear_curveCns200GroupId.id" "mgear_curveCns200.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns200.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns200.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns200.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns200.inputs[3]";
connectAttr "mgear_curveCns200GroupId.msg" "mgear_curveCns200Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns200Set.dsm" -na;
connectAttr "mgear_curveCns200.msg" "mgear_curveCns200Set.ub[0]";
connectAttr "tweak348.og[0]" "mgear_curveCns200GroupParts.ig";
connectAttr "mgear_curveCns200GroupId.id" "mgear_curveCns200GroupParts.gi";
connectAttr "groupParts696.og" "tweak348.ip[0].ig";
connectAttr "groupId8265.id" "tweak348.ip[0].gi";
connectAttr "groupId8265.msg" "tweakSet348.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet348.dsm" -na;
connectAttr "tweak348.msg" "tweakSet348.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts696.ig";
connectAttr "groupId8265.id" "groupParts696.gi";
// End of biped_guide.ma
