//Maya ASCII 2016R2 scene
//Name: quadruped.ma
//Last modified: Sat, Oct 08, 2016 11:02:01 PM
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
createNode transform -n "guide";
	rename -uid "F7BE6092-4298-2869-02BC-43917244DDC1";
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
	setAttr ".L_color_ik" 18;
	setAttr ".R_color_fk" 23;
	setAttr ".R_color_ik" 14;
	setAttr ".C_color_fk" 13;
	setAttr ".C_color_ik" 17;
	setAttr ".joint_rig" yes;
	setAttr ".synoptic" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "mc";
	setAttr ".date" -type "string" "2016-10-08 23:01:34.843000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.0.2";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "45D901E8-44B4-E823-6D24-009B1C685448";
	setAttr ".v" no;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "3A4714CF-4D0A-219A-062E-0EA73D25A40D";
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
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "local_C0_rootShape" -p "local_C0_root";
	rename -uid "842C610D-4C16-276E-4AC7-B5AF82092865";
	setAttr -k off ".v";
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
	rename -uid "1A21ABF0-4568-1EA7-A914-E695CC100511";
	setAttr -k off ".v";
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
	rename -uid "771435F5-420D-279C-1029-6BA078202537";
	setAttr -k off ".v";
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
	rename -uid "11941F16-4D91-F747-AA67-9ABA6E798501";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "868352FD-457D-89BD-503B-84969C64721E";
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
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	rename -uid "DB6E093A-447F-C4CE-547B-3C90DDEFA2A0";
	setAttr -k off ".v";
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
	rename -uid "A71B6915-4A72-5D53-5363-66BF9E465175";
	setAttr -k off ".v";
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
	rename -uid "1B6746B3-4AD9-03EB-06DD-A2BA2D4FDB26";
	setAttr -k off ".v";
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
	rename -uid "A2D7F134-46CD-546F-157A-FEBDD9358ED2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "608F6F1D-411B-B7FF-0F17-5490B4C8CACE";
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
	rename -uid "42D3A5D5-474E-ED6F-AE24-05B0E1AB2AA8";
	setAttr -k off ".v";
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
	rename -uid "D3F91C4F-46D0-D798-5C61-8C81CCA18754";
	setAttr -k off ".v";
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
	rename -uid "AD3B563D-4497-707F-40DE-74BDBADA8EBF";
	setAttr -k off ".v";
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
	rename -uid "97E3D803-4250-D47D-0B93-8D99B801EEE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "69B90BC8-46D3-A16F-480C-A6B7A02CC897";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 6.6115768831256645 7.8886090522101181e-031 ;
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
	rename -uid "48C77021-49F7-5E37-73C8-2386FFF3233D";
	setAttr -k off ".v";
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
	rename -uid "4717ED1A-4E71-11C8-0187-699A2DAD00E3";
	setAttr -k off ".v";
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
	rename -uid "D847C955-4E05-DBD5-B55F-1798411D4C16";
	setAttr -k off ".v";
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
	rename -uid "08EEACE9-4210-AFE9-AC97-6696AE19D613";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "42EAFCDE-4D6F-954D-1332-05A9CFF4FF9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "916B0198-4396-A4D3-3EDA-43BB95576D5E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EA53AE57-4C37-01CB-D89F-B1BDC8085661";
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
	setAttr ".t" -type "double3" -0.11164111249562403 0.36062523614417152 -1.6484348285560778e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 19.035763767138231 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.88238079877759068 0.88238079877759068 0.88238079877759057 ;
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
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
	rename -uid "FADC3311-4BCD-5B91-7CDC-1D8B0F660A7C";
	setAttr -k off ".v";
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
	rename -uid "B9D3F80D-4445-B9A0-292B-F0AC205788EF";
	setAttr -k off ".v";
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
	rename -uid "5501DFA9-431A-6D28-58CD-CF85ACE61686";
	setAttr -k off ".v";
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
	rename -uid "4C54ACA7-4589-ABC3-D5FE-CBBE7B07AAD0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "90C13CC8-4746-EA79-B4BA-27B33921833F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.2412483767065523 3.664287025763814 -8.8961271657401237e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "F5DCB56F-4CB2-55F9-7249-39A5149F4C6E";
	setAttr -k off ".v";
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
	rename -uid "5E80EDF5-49E5-F99B-B8D8-20AA1CE2AA38";
	setAttr -k off ".v";
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
	rename -uid "F035771B-4A94-0B38-5459-2F9A08612881";
	setAttr -k off ".v";
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
	rename -uid "D7A4D2E6-4048-F0F6-EF83-D3A696CD4461";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "13A2EADD-463C-3262-68BE-C28F41BBDABC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "054E3C1D-4CDA-41F3-09F3-CB96827C2AB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AE3DB00E-4771-1F22-BBB9-2D86E2831E65";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -1.7763568394002505e-015 -1.5777218104420236e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 71.002460425706204 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "67C30CCB-4480-58DD-836D-EEB5AEDA4C12";
	setAttr -k off ".v";
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
	rename -uid "CA02F8FA-41BC-3F36-410A-73A8BFA8DE13";
	setAttr -k off ".v";
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
	rename -uid "669FCEC0-4C58-422B-0564-7286E8B0A844";
	setAttr -k off ".v";
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
	rename -uid "3493CEED-4EBA-8EB2-673E-AF8D8E3CFD02";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DEE19C3D-4B7C-06F7-708A-CF984217959B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EB0D0B98-4FF9-52C9-771C-219B18D13802";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EC1C3A46-46FF-FD64-097A-E2992DB9448E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.028362147187284137 2.6770463465994672 4.5418821062019976e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "699565A0-4116-3B48-42DC-048B572D7FD0";
	setAttr -k off ".v";
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
	rename -uid "A763BA3D-42F6-62B9-DD3D-599C58AFE35B";
	setAttr -k off ".v";
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
	rename -uid "11786BF6-409C-0CD9-069F-D990AC9B727A";
	setAttr -k off ".v";
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
	rename -uid "7798198B-42C1-4FB7-A816-7880BCB20444";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1F45B71D-482B-3D86-0C8B-53BECA9DC033";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A148CBDD-4C3F-8C7C-070A-358792972BBD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A8C992B7-4538-CFEE-7889-0ABA916F8731";
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
	setAttr ".t" -type "double3" 0.22504731778348308 2.5205158509660421 -5.8346823204776726e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.03822419284442885 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427574 2.3915882794427579 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "bodyUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "bodyUI_C0_rootShape" -p "bodyUI_C0_root";
	rename -uid "6DF2EAE4-4805-C654-86B8-32B7958A32DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "bodyUI_C0_root4Shape" -p "bodyUI_C0_root";
	rename -uid "80619A3A-4A06-819F-CCBA-F9920A3007B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "bodyUI_C0_root5Shape" -p "bodyUI_C0_root";
	rename -uid "3F19A7D1-4FD0-6FB2-74AB-71A70464195F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "bodyUI_C0_root6Shape" -p "bodyUI_C0_root";
	rename -uid "8624E07E-4FF2-DC21-B438-36BADE5EC8FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "frontLegUI_C0_root" -p "neck_C0_eff";
	rename -uid "162AEEAE-48DB-4F0A-47E2-01B9F5451025";
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
	setAttr ".t" -type "double3" 0.54346362028306316 2.4324330305369344 -0.013921279088767601 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.03822419284442885 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427574 2.3915882794427579 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "frontLegUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "frontLegUI_C0_rootShape" -p "frontLegUI_C0_root";
	rename -uid "2E395342-410B-C2A4-C919-509A6F94AF91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "frontLegUI_C0_root4Shape" -p "frontLegUI_C0_root";
	rename -uid "1600EABA-4273-D403-5B2B-B6978DA89B23";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "frontLegUI_C0_root5Shape" -p "frontLegUI_C0_root";
	rename -uid "4779F952-46C5-0208-75C2-80A085D9215E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "frontLegUI_C0_root6Shape" -p "frontLegUI_C0_root";
	rename -uid "C8DB6E10-4A24-FC76-692E-43A31EB1EBFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "backLegUI_C0_root" -p "neck_C0_eff";
	rename -uid "4C70B9E0-4DC0-5909-48A8-4FBFA1FC4305";
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
	setAttr ".t" -type "double3" -0.24742837705023568 2.3670578701533653 -0.010824117417573836 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.03822419284442885 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427574 2.3915882794427579 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "backLegUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".uniScale" yes;
	setAttr ".neutralRotation" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "backLegUI_C0_rootShape" -p "backLegUI_C0_root";
	rename -uid "AE50448F-4129-5D05-39C4-2AACEF4D90F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "backLegUI_C0_root4Shape" -p "backLegUI_C0_root";
	rename -uid "7E0D2953-497C-F1DE-111C-B7AE9448B081";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "backLegUI_C0_root5Shape" -p "backLegUI_C0_root";
	rename -uid "29BCB272-4E1B-DBB0-0C71-9FB56D3926E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "backLegUI_C0_root6Shape" -p "backLegUI_C0_root";
	rename -uid "189131BB-4145-AA28-FE6C-77BCA7E7E2AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "AA860F44-475F-683D-9A24-EEBECFA2A4B2";
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
	setAttr ".t" -type "double3" 0.69584514547311294 0.71792767893743648 1.4003887623375038e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.038224192844428843 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53738203342942947 0.53738203342942903 0.53738203342942981 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "bodyUI_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
	rename -uid "8D508092-4BFD-F4F3-5F57-38B3FA72FD1E";
	setAttr -k off ".v";
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
	rename -uid "82F9B281-4F76-6FAA-2523-1CB9A4D037A0";
	setAttr -k off ".v";
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
	rename -uid "7A13D69D-4473-61B6-8655-8DB40B259C39";
	setAttr -k off ".v";
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
	rename -uid "FBE514B5-41D7-8F3A-5453-0B94A918620A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "C9F67891-4D61-454B-A137-BE98E46DB701";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.7331654313260708e-030 0 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "EBCCFD2B-4344-64C4-0E2B-CA8BBEFE7D28";
	setAttr -k off ".v";
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
	rename -uid "39C499ED-4A92-2EF5-971F-25A9C22F8D04";
	setAttr -k off ".v";
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
	rename -uid "953CF522-4237-1F88-100B-F58F72788BDB";
	setAttr -k off ".v";
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
	rename -uid "0F79A29F-44DE-8CF0-F41A-288D1D0F87BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "056B71C3-42DC-0966-A76F-55AF83E8E1AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5FE030B7-430B-9915-7429-BE864C4EEE9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A8691D0B-459D-8FA9-CDA8-E08D219B638B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.2971167579553898e-015 -0.83057537847143337 2.6485854255407055 ;
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
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "089C25B2-40DE-6A52-41EC-8D829FC77690";
	setAttr -k off ".v";
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
	rename -uid "5083FF37-46C8-53AC-F1F0-9DA9FC02E943";
	setAttr -k off ".v";
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
	rename -uid "B3411A0F-48E5-2686-10EF-BCB8D05AC84A";
	setAttr -k off ".v";
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
	rename -uid "06E98A8D-4664-FA25-BD2C-E4AA0B379353";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9F01ED5E-422C-BB65-BCAA-BAB052CFD6AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B3E80F46-4FBD-E074-84FE-36B2ED66C0A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DC2A9BE3-47E8-9B13-D620-EBBC8994F54D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0807388624180157e-014 -14.161367226604181 -19.457469484456137 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691256 4.4504433171691211 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "184497E1-454A-F8D6-E071-86955C88BF9E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "E6F17C5A-416D-821B-9344-66A41F139B34";
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
	rename -uid "482BB31F-4B0F-0633-F29A-8DB9A5093D0A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7198567879251541e-015 -1.1237321151316007 2.456560648346553 ;
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
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "7971ACFF-4F05-C7A6-2BD3-1CAE66E55C3D";
	setAttr -k off ".v";
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
	rename -uid "CFCED638-4468-B515-3FE3-B9B533E4314A";
	setAttr -k off ".v";
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
	rename -uid "36EBBDFA-47D4-D03B-8246-D8BFA20BCB12";
	setAttr -k off ".v";
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
	rename -uid "40FA426C-43C2-C377-E60A-72B636498330";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4C7BA7C3-4461-A744-3108-72BAD0FEC1D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2C102FF6-40ED-A52C-5913-D494DD57CD95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AE4D736D-417E-62DE-32E7-42B8D48B2FFA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0230128654149916e-014 -13.868210489944014 -19.265444707261981 ;
	setAttr ".s" -type "double3" 4.450443317169122 4.4504433171691256 4.4504433171691211 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "638556EB-4E7F-63EA-3C2D-34B997736278";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "BB4A323A-47B7-0151-94FF-F68514FB50B9";
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
	rename -uid "D98F4025-4062-E654-ED75-DEBF712DB058";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.8886090522101181e-030 -1.9431960625636933 2.0069895663162534 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "BE3B9F8A-40CA-5D46-C817-60B1B62D2B84";
	setAttr -k off ".v";
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
	rename -uid "50BCAAEC-4D00-DDED-C42D-B487E2ADE532";
	setAttr -k off ".v";
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
	rename -uid "7E3EAC8A-48AC-3976-34E0-18888A194BEB";
	setAttr -k off ".v";
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
	rename -uid "2FB918F4-4DBE-7F95-4F2A-F7BDF6A6691D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0014CDBE-4D5E-C5C5-3F1F-BF81FBCA720B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "20BAECB2-48C3-5E9E-8CD9-0A8A8F5BB978";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "314AFECD-4F1F-9336-DB2C-728760E2F894";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5102718662247583e-015 -14.991942605075609 -16.808884058915417 ;
	setAttr ".s" -type "double3" 4.4504433171691202 4.4504433171691238 4.4504433171691185 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "3DB7D558-4295-6D51-5B2D-299EF5443706";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "79048DCB-4C5B-4FAB-3376-B7B71B7C9311";
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
	rename -uid "F0276B01-4C53-05E3-61B2-92B6B2ED758B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5102718662247583e-015 -14.991942605075609 -16.808884058915417 ;
	setAttr ".s" -type "double3" 4.4504433171691202 4.4504433171691238 4.4504433171691185 ;
createNode nurbsCurve -n "mouth_C0_crv2Shape" -p "mouth_C0_crv2";
	rename -uid "CB3351DA-4DD2-94D7-7816-449814C94DDC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv2ShapeOrig" -p "mouth_C0_crv2";
	rename -uid "60488AEC-4DE2-85D1-3EE2-08BC74A5A85F";
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
	rename -uid "B4E766DE-4DB0-AC6A-C4A6-F9BE6F2B1886";
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
	setAttr ".t" -type "double3" 4.9771436298332112 1.0221998062961495 -1.7545700686211228e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0.03822419284442885 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427579 2.3915882794427579 2.3915882794427583 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "eyesAim";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "bodyUI_C0_root";
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
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eyesAim_C0_rootShape" -p "eyesAim_C0_root";
	rename -uid "39DBE653-4D46-9317-09A4-1CA891B884B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eyesAim_C0_root4Shape" -p "eyesAim_C0_root";
	rename -uid "7DDD2F27-4600-B0AF-3750-A3BCED3F21A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eyesAim_C0_root5Shape" -p "eyesAim_C0_root";
	rename -uid "5252B239-4F0F-B99A-E2FF-9094C5F82AAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eyesAim_C0_root6Shape" -p "eyesAim_C0_root";
	rename -uid "67F55FCA-472D-1BF7-82D7-1CB1FE0E60C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "04F52965-4C4B-1EE2-B7F8-23A0005E3E5C";
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
	setAttr ".t" -type "double3" 0.25733245506886426 1.0267893607782375 0.46110905477400344 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 -75.993552494737443 179.96177580715568 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427583 2.3915882794427583 -2.3915882794427588 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "bodyUI_C0_root";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyesAim_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
	rename -uid "E4D2AA18-4B2C-30E5-7615-B994083DA30A";
	setAttr -k off ".v";
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
	rename -uid "281A0BE7-4AD4-D2F9-FB71-D9B3E5A1F88D";
	setAttr -k off ".v";
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
	rename -uid "40C3FA36-4A25-D279-9DF8-2496BD95C397";
	setAttr -k off ".v";
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
	rename -uid "B4BE14B5-48F6-1509-76E3-2493CF6DC2D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "8351B677-48D9-DEBA-8690-8695D65B4C41";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-016 -4.4408920985006262e-016 2.03213419053764 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "6CDB89DD-4D13-8B1F-2D14-B5954A169F8E";
	setAttr -k off ".v";
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
	rename -uid "9FE45412-4B52-3D83-3A42-C7ACE00CCFF2";
	setAttr -k off ".v";
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
	rename -uid "6E7E6D02-4D9B-9E34-7925-7D80764A2F3C";
	setAttr -k off ".v";
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
	rename -uid "6E9C778C-4809-453E-BFC7-F19B3A057A80";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C5D9FB58-40B2-2FC0-46D9-8EAFA051519B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5B2290DC-4CBB-51F5-EB90-56A8077F1D93";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9CE384EF-42FE-C141-4488-709185970F01";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.68265652814264555 -3.4976629291575843 -3.5332844349526269 ;
	setAttr ".r" -type "double3" 0 165.99355249473743 0 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999956 -0.99999999999999978 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "D54EB0FC-4789-01C9-48F3-73832479B058";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "F2E13956-452E-A348-0AA6-A3BCAD0CE8BF";
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
	rename -uid "8EC01889-49F7-7234-2709-6CAC1EF07B6E";
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
	setAttr ".t" -type "double3" 0.25733245506886426 1.0267893607782357 -0.42107730061382631 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 179.99999999999989 75.993552494737415 179.96177580715548 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.3915882794427574 2.3915882794427592 2.3915882794427574 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "bodyUI_C0_root";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyesAim_C0_root";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
	rename -uid "1D2DC810-4DC1-B3CC-B1A2-9A9518816A76";
	setAttr -k off ".v";
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
	rename -uid "2FFBBCAD-4FFA-3B39-31A8-BDA9FBBC256C";
	setAttr -k off ".v";
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
	rename -uid "CCA107F0-44E3-609D-5720-F1A63F0653FE";
	setAttr -k off ".v";
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
	rename -uid "3B2CB8B7-4E71-F17A-B269-3E88C86ABBDF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "E1EB9060-4F7D-7929-90F9-3A96DB715053";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 6.6613381477509392e-016 3.9968028886505635e-015 2.03213419053764 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999922 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "9E7B7892-4DA9-D1FC-F4FC-B7A2D75B8C73";
	setAttr -k off ".v";
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
	rename -uid "AD8CAD5A-4518-3163-0373-848653CD4AFE";
	setAttr -k off ".v";
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
	rename -uid "559F5D84-4C4E-5103-FFF8-8B9489813142";
	setAttr -k off ".v";
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
	rename -uid "612CB7BF-4074-A238-2906-5F97FCC4CD4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7D024027-4372-ED8B-928C-8AB87472295C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CC9323FF-4977-BDC7-27B8-B090270DD744";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1D7E74AE-45DE-5003-F42E-0489FECE2858";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.69889742974753455 -3.4976629291575811 -3.5292331821335594 ;
	setAttr ".r" -type "double3" 0 -14.006447505262571 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.999999999999999 1.0000000000000004 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "1E449617-45D8-A4DD-61D8-4EA2DDC6FAA3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "DA88D4A1-4C55-68CF-0DD0-2C918219F845";
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
	rename -uid "CF317B20-4A40-5CC3-6120-F48FF5BB46F4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.029590951336778026 -0.11505143146980856 -1.5777218104420236e-030 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "4486C843-4FD0-87A2-462A-79A625CAD8A5";
	setAttr -k off ".v";
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
	rename -uid "D09194DC-419F-46A7-D7C6-5DBB9E3B3250";
	setAttr -k off ".v";
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
	rename -uid "F07E66F6-4861-7A90-377F-BAB8608B63BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape8" -p "neck_C0_tan1";
	rename -uid "4035F47A-4FFF-11EC-5ED7-17AEC07F961A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan4_0crvShape" -p "neck_C0_tan1";
	rename -uid "2995D385-4DBB-7149-EAC4-6CB01586DF62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan4_1crvShape" -p "neck_C0_tan1";
	rename -uid "61EE75AB-490E-CF73-C3B5-FCAF98BB96F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "92CF1EB0-4A82-48B8-D4A7-949D0845C1B3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.2174105108550721 -10.274847894363651 -1.1225238772421589e-015 ;
	setAttr ".r" -type "double3" -70.964236232861779 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.3915882794427583 2.3915882794427574 2.3915882794427579 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "0FFC95F4-499B-88CB-99E9-738BDBA01561";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "F44DDCDA-4710-4167-08E4-EAA6ED5B7E42";
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
	rename -uid "DAB4ACFF-412D-90F4-C96B-C5A0AF3EDB85";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.0041431969333514118 0.1129293398803215 -1.0778480232843095e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "228C0CCA-416E-B96D-A12B-B292A5BB95DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape3" -p "neck_C0_tan0";
	rename -uid "908B900E-4F81-E8CB-62EC-239CFC2997FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape4" -p "neck_C0_tan0";
	rename -uid "36539E4E-4001-BD70-4F8C-30B73E3EE19C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape7" -p "neck_C0_tan0";
	rename -uid "E7A7DD3A-4441-80A2-7F5D-A1B1C18ADD1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan3_0crvShape" -p "neck_C0_tan0";
	rename -uid "074E447D-40A9-AF18-A436-72A42B64BD0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan3_1crvShape" -p "neck_C0_tan0";
	rename -uid "301CBC75-46CD-E211-788B-F4B70EDF7FA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7D2B73B7-4DAF-CE46-CC0C-6D86267A976D";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "DA37B565-484D-42FD-EF9E-62BF82BDE17C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.52942847926655434 0 0
		0 0.17647615975551811 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint2" -p "neck_C0_blade";
	rename -uid "5A8F9593-4F61-6C5C-B537-B3A3166EB0A8";
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
	setAttr ".rsrr" -type "double3" 5.2680669130788259e-013 5.4648881846460154e-013 
		87.898851855983395 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint2" -p "neck_C0_blade";
	rename -uid "79F387FA-4611-E3CA-4EA2-11921A1584EB";
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
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 8.8817841970012523e-016 
		7.8886090522101181e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "5663CC47-4E48-DFBB-71BE-439F2EB77724";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.9761621341485189 -6.6105608685998298 -2.0121365938161705e-015 ;
	setAttr ".r" -type "double3" -70.964236232861779 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.391588279442757 2.3915882794427565 2.3915882794427565 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "739CD8A4-4F35-4F9C-97AD-ABA22D4F07DA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "AD81E957-49FA-7774-26ED-AC93C22B3C12";
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
	rename -uid "8937C003-49E4-49D0-357A-18BC32230D77";
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
	setAttr ".t" -type "double3" -0.23232496368007194 0.19745119313991832 0.2361472691184035 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 -89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 2.1102915763618233 2.1102915763618237 -2.1102915763618237 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_C0_root";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "846A672B-4269-1C05-92D2-3F82892A2A84";
	setAttr -k off ".v";
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
	rename -uid "791C3702-4A55-60C1-1CA4-04928E6C8FFB";
	setAttr -k off ".v";
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
	rename -uid "DD71DF67-4628-E143-E6F8-3087C685F337";
	setAttr -k off ".v";
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
	rename -uid "AC5A6BBA-4504-B82A-C79F-4CB1C3F8F16B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F7AE550B-4B6E-111A-27FD-A9952138FB02";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724561 -0.2088261637065556 0.20663608494886798 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_0_locShape" -p "shoulder_R0_0_loc";
	rename -uid "4ADD007D-46CF-C64E-9D48-32B9B8B0ED19";
	setAttr -k off ".v";
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
	rename -uid "812CAC8D-4DBB-2B18-AB11-449123F52B76";
	setAttr -k off ".v";
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
	rename -uid "709BF51C-4577-AB47-FFAC-8B924030BBCA";
	setAttr -k off ".v";
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
	rename -uid "72434893-4C5A-D536-C205-5C9809C7B7C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FEDE738D-4AE4-103C-AD6E-3C8306EA26CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8B8C9D1E-4EEE-E777-BC2A-65A34ED9AD2E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D34A85CD-45A5-0F6E-D4F3-7F8338306AC9";
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
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 4.4408920985006262e-016 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950287 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_C0_root";
	setAttr ".blend" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr -k on ".ikSolver" 1;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legFront_R0_rootShape" -p "legFront_R0_root";
	rename -uid "B2782CEB-4BD1-64C9-86C7-41B87C2B6E82";
	setAttr -k off ".v";
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
	rename -uid "D81396E0-4C09-D329-A358-1C8370BF5347";
	setAttr -k off ".v";
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
	rename -uid "0DD25CF7-4ACA-D38C-5AAA-6BA2FC5226DD";
	setAttr -k off ".v";
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
	rename -uid "400A02DC-46BA-072A-096E-D0967DC72D55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "D72F5A72-4C8C-A2AD-C39D-6088D170D87C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 -2.1240863021370506 -0.48633856256837671 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_kneeShape" -p "legFront_R0_knee";
	rename -uid "9E5326BF-496D-00D3-868D-CBA9EF8533EB";
	setAttr -k off ".v";
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
	rename -uid "1E2CC2A1-4F83-998C-8273-1D8CCCB14BC7";
	setAttr -k off ".v";
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
	rename -uid "831D69F9-4E7B-3524-2ABB-F59D0EE9D4DA";
	setAttr -k off ".v";
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
	rename -uid "F47EDBC9-42A2-FAB2-C4E7-20A349515F5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5CE18613-47AF-4282-6F8D-9B99DE8ED1B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0613956F-478C-324A-8B34-1FA2170FA833";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B041C813-4E53-3459-4277-25B68587D54E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 -2.3651516407059194 0.073902270404613724 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_ankleShape" -p "legFront_R0_ankle";
	rename -uid "36882FDD-46B7-BB8E-8389-67A0A8387A33";
	setAttr -k off ".v";
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
	rename -uid "3AF8AA37-4AD7-BA48-FC34-E4B2684AC275";
	setAttr -k off ".v";
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
	rename -uid "C3DF25A2-4168-132D-D064-84A4CB27E890";
	setAttr -k off ".v";
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
	rename -uid "96AFC98F-4A37-2CD1-B50B-36B7CA36A5E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BCFBE8EC-4FC7-52E1-D465-12A436E4B071";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2819B1CE-4CFE-EF91-E8F0-0C95B6C6DA49";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AD2C9CA2-434D-8935-32DD-DBA4386CA071";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-015 -1.1294425054275474 0.023148533894219447 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_footShape" -p "legFront_R0_foot";
	rename -uid "99C9C424-40BC-14F9-A9F6-C4B382B5DFA0";
	setAttr -k off ".v";
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
	rename -uid "9357376D-44B8-180D-BEEF-A1AF9EFCC759";
	setAttr -k off ".v";
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
	rename -uid "CFF5DB40-4567-9A19-AD6E-6DB04FE8E053";
	setAttr -k off ".v";
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
	rename -uid "3F6B15DA-4A2E-C6CB-B7C9-928CA24A570B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1F6CF135-44FA-7495-653C-548DDE0821DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3A0B2D01-4E0F-9605-70E0-C58C1CB9ABBA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "51870293-47F5-5227-B8CD-0096BAD5492A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 8.3266726846886741e-017 0.59657797851921135 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_R0_effShape" -p "legFront_R0_eff";
	rename -uid "999CB61B-424D-413F-A28D-A28AE7822828";
	setAttr -k off ".v";
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
	rename -uid "F9709B1C-4535-8DE8-F8AF-6495F178F591";
	setAttr -k off ".v";
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
	rename -uid "9045EA31-46C9-8AB8-E21A-87A39E662A8E";
	setAttr -k off ".v";
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
	rename -uid "EC432D46-40CE-54DF-8AB5-84A11CB27F27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9C9B9534-46C3-E9F6-30BA-8EB535E9CF3A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1B5A17A0-49A6-7075-675E-D29C7060FFB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "24CE2C23-465A-5CE5-BFAE-60B217F25801";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-016 1.6653345369377348e-016 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514104 0.31499517602514099 0.31499517602514115 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_C0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footFront_R0_rootShape" -p "footFront_R0_root";
	rename -uid "05AB7CCF-4B7D-49B4-8167-A48E418A6D0D";
	setAttr -k off ".v";
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
	rename -uid "302BA730-440F-EC8C-11CC-71BEA29BFD6B";
	setAttr -k off ".v";
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
	rename -uid "66179B60-4165-14B3-AB25-D3B77D61D11A";
	setAttr -k off ".v";
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
	rename -uid "1D0FF77B-46B9-77C1-4C68-1C83B13E2D28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "EE83748F-41A1-93D7-2B6A-368AF51127E5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-015 1.1102230246251565e-016 0.75996190873513925 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_0_locShape" -p "footFront_R0_0_loc";
	rename -uid "AB8DB2A3-46BE-1537-9338-63822B971C7A";
	setAttr -k off ".v";
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
	rename -uid "8EFCE9A6-42D6-F1D4-E1E9-A8ACBB7E3B42";
	setAttr -k off ".v";
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
	rename -uid "5ECEA906-4C95-A0CF-6E00-039532AFAAD5";
	setAttr -k off ".v";
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
	rename -uid "D3E41B0C-4589-9845-2BAA-D2B7C24474D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F1F26832-4423-6FA8-087F-BD9F90B64CBF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F67932D7-476F-7EE8-878F-BC9270549E44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0FF78DE2-4CE7-230E-C04B-0D8A3DBEE221";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-015 -0.31771180755405032 0.73937999249396569 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_1_locShape" -p "footFront_R0_1_loc";
	rename -uid "F077B286-4AEA-94E7-773D-C18E7C8C4160";
	setAttr -k off ".v";
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
	rename -uid "55B6BF05-4657-7A7B-B897-328ACAB2E1F7";
	setAttr -k off ".v";
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
	rename -uid "CB7B315C-42D6-A5B9-04C5-ACA326D2E3D4";
	setAttr -k off ".v";
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
	rename -uid "744FA38F-4437-B408-D3A5-46BDB66B91E2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "430E7B89-4D77-5430-D917-2B856D9BB806";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "91E46D25-4394-A6DE-9FF1-4B95241677A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "02E6D8BE-4D15-4316-AC5F-DEA767F9C807";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.5017545999726769 -0.60300743522684519 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148056 7.9431701648148056 -7.943170164814803 ;
createNode nurbsCurve -n "footFront_R0_crvShape" -p "footFront_R0_crv";
	rename -uid "9041683A-4D09-627F-D68A-0A949DE47799";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_crvShapeOrig" -p "footFront_R0_crv";
	rename -uid "36C9B21D-44A7-DB16-4223-C4B2B5092CA1";
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
	rename -uid "570C6341-4C48-A568-BD4A-B199584EEAD0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-015 -0.31771180755405082 -0.067899908672117704 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_heelShape" -p "footFront_R0_heel";
	rename -uid "4F80D635-4EC5-8DE6-00A7-01B410BFFEAC";
	setAttr -k off ".v";
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
	rename -uid "4359E68C-42E9-15EE-0975-26B6D8BAE74A";
	setAttr -k off ".v";
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
	rename -uid "B0C87083-422E-66A6-A820-9F939A10178F";
	setAttr -k off ".v";
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
	rename -uid "5896DD9F-4354-858C-B8F8-03B97FEA11DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A50B3D59-4034-4444-80A6-9483AB01E5F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "73E770F7-4E62-D1BA-4732-20B82BFB2EA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "15EC2F8C-49B4-7EEE-D304-AC8B3623BBFA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120548 -0.31771180755405076 0.69157185350463024 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_outpivotShape" -p "footFront_R0_outpivot";
	rename -uid "44FCAAA4-494C-3808-A505-768FBA7CAA58";
	setAttr -k off ".v";
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
	rename -uid "D385B0B6-4BE2-7EED-120C-1DB87063C940";
	setAttr -k off ".v";
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
	rename -uid "0ADEDD46-4E7F-4DBD-1325-038F6AA0F705";
	setAttr -k off ".v";
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
	rename -uid "4E4A4165-4628-92BC-AC4B-BDA8AFE04587";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5D0FD6D7-410C-478E-38F9-D69DAD0E03FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "52B0991C-472F-369A-EC2B-11B9D0E5825A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E03BC197-4E3E-E933-0A3E-E9BB52CD2CC9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0162439288723091 -0.31771180755405093 0.86340011285661333 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_R0_inpivotShape" -p "footFront_R0_inpivot";
	rename -uid "32EF93D5-4CFC-9864-20FB-2281FD4C6CCC";
	setAttr -k off ".v";
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
	rename -uid "86A21ADF-4A22-829C-2133-CB914902A9D5";
	setAttr -k off ".v";
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
	rename -uid "0BEF1A69-416B-34D9-AC90-E19418FFF9F0";
	setAttr -k off ".v";
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
	rename -uid "57C62AA3-4104-5E36-8803-62BE6B8FB5A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BE7801D1-4881-89D9-52F2-13AB0762EEA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FC9948C4-4D71-D805-D6A0-4FA7E0D5B7DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2712E049-4340-BBC8-8157-37B48A6CDE49";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.5017545999726769 -0.60300743522684519 -16.239037496288912 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 7.9431701648148056 7.9431701648148056 -7.943170164814803 ;
createNode nurbsCurve -n "footFront_R0_Shape1" -p "footFront_R0_1";
	rename -uid "BD33AE67-4C4C-E422-F603-FAB9C0FAF04D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_R0_Shape1Orig" -p "footFront_R0_1";
	rename -uid "E534543F-4EAB-8710-6AE5-BC95397CD435";
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
createNode transform -n "legFront_R0_crv1" -p "legFront_R0_root";
	rename -uid "0C18F8D6-41D7-F76F-5D9F-9F84527C4D28";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3630165107157994 -5.808624881474266 -5.5045062328919352 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 2.5020602842634889 2.5020602842634885 -2.502060284263488 ;
createNode nurbsCurve -n "legFront_R0_crvShape1" -p "legFront_R0_crv1";
	rename -uid "395177FA-4D66-8325-DCD2-229890013483";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_R0_crvShape1Orig" -p "legFront_R0_crv1";
	rename -uid "3D93437D-4C19-D1E8-701F-3DBC6984E54C";
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
	rename -uid "00A1012E-44C4-2742-8FEB-76A914E8C154";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "D983A9D3-4E87-1EDC-D8DA-66957C77BA3A";
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
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint2" -p "shoulder_R0_blade";
	rename -uid "F6D9297B-427D-8B91-739C-10987215ED70";
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
	setAttr ".rsrr" -type "double3" 3.3599751382070404 -13.536129435773141 -14.081236533000613 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint2" -p "shoulder_R0_blade";
	rename -uid "A9B84F63-4FE9-75B6-7AC1-65BF61B7099F";
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
	setAttr ".rst" -type "double3" 1.3877787807814457e-017 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "A42EFF8D-4B63-0C9C-C715-5EADF7F2A164";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.11190267343317832 -2.530362906049318 -1.9933533667490373 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 -1 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "272D4F79-4D75-7D74-46DB-D5AEF608B544";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "DE4A8A97-4E90-7950-57BA-6BA9E7C30ECC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "8967E8B2-47E4-D6AB-818E-7784B1B71231";
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
	setAttr ".t" -type "double3" -0.23232496368007105 0.19745119313991832 -0.20082401790608234 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
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
	setAttr ".ui_host" -type "string" "frontLegUI_C0_root";
	setAttr ".blend" 1;
	setAttr ".neutralpose" yes;
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "92F83A0B-4C9B-24FD-15D0-D89AB96F1F8F";
	setAttr -k off ".v";
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
	rename -uid "99545CDE-46E6-EEDF-4D03-C991AA2D2B6C";
	setAttr -k off ".v";
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
	rename -uid "E980233D-4D3C-6BBE-DA84-13A5FA2B182D";
	setAttr -k off ".v";
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
	rename -uid "2B5C0DD3-4206-4B77-B42A-1CBBBB7A9A95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "7E9ACB5A-4E08-33BA-92B9-A4AB823F39F0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83252561455724594 -0.20882616370655294 0.20663608494886754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_0_locShape" -p "shoulder_L0_0_loc";
	rename -uid "5F4A6F84-4F61-A9E1-CD64-979C6E0D3997";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc4Shape" -p "shoulder_L0_0_loc";
	rename -uid "8239EB9A-4625-CEB5-223F-759C4945FF9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc5Shape" -p "shoulder_L0_0_loc";
	rename -uid "F3B146EC-455B-A487-9C46-FA96AD833C95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_0_loc6Shape" -p "shoulder_L0_0_loc";
	rename -uid "34601875-4E47-96C9-0FE5-4E8BB7EA3526";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc6_0crvShape" -p "shoulder_L0_0_loc";
	rename -uid "3A118F32-4926-D9A5-B2F1-AB99914C9818";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_0_loc6_1crvShape" -p "shoulder_L0_0_loc";
	rename -uid "282EAF5A-4867-C83D-8748-1886FC9B850D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "283F0C11-45A8-E509-158B-D083804751AC";
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
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 -4.4408920985006262e-016 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.39967062595950276 0.39967062595950292 0.39967062595950281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "frontLegUI_C0_root";
	setAttr ".blend" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr -k on ".ikSolver" 1;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legFront_L0_rootShape" -p "legFront_L0_root";
	rename -uid "52F4CA05-4B15-E75D-C767-4A87E99AD529";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_root4Shape" -p "legFront_L0_root";
	rename -uid "0DAECAE9-43B1-166A-A49A-9E9514C3EC70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_root5Shape" -p "legFront_L0_root";
	rename -uid "D97BD0DD-4544-8D78-C462-7BBEFB81ACD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_root6Shape" -p "legFront_L0_root";
	rename -uid "E60F84E4-468C-0F7F-9777-D180AC96CC12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "DACE6C53-4665-88BB-D036-1B972C1F7F98";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -2.1240863021370506 -0.48633856256837582 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_kneeShape" -p "legFront_L0_knee";
	rename -uid "00C32011-4220-8EEB-898A-0B997A914B55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee4Shape" -p "legFront_L0_knee";
	rename -uid "EE69E6F1-46BE-FFC3-4DC0-E087A475B83D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_knee5Shape" -p "legFront_L0_knee";
	rename -uid "0DDF4AAE-420B-9684-7933-C990619A4149";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_knee6Shape" -p "legFront_L0_knee";
	rename -uid "65F9302D-41FB-5220-058C-308FFD6F2D40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee6_0crvShape" -p "legFront_L0_knee";
	rename -uid "5C0CA294-4A02-42CF-470B-DA9350FDD0CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_knee6_1crvShape" -p "legFront_L0_knee";
	rename -uid "CDF43725-46A4-DDBF-3C40-BB8A306718B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A020EA29-4088-584D-9B8B-ABAF31914F40";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-015 -2.3651516407059185 0.073902270404613724 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_ankleShape" -p "legFront_L0_ankle";
	rename -uid "4B43D427-4370-4DA0-E495-BCB3867A35CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle4Shape" -p "legFront_L0_ankle";
	rename -uid "21D2B763-4C00-7325-29E0-2C85D8649033";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_ankle5Shape" -p "legFront_L0_ankle";
	rename -uid "7F25406D-4CD9-DED7-10E6-8E8AF6C512B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_ankle6Shape" -p "legFront_L0_ankle";
	rename -uid "9E74CFBC-40E1-9FD4-62A7-2195C1941E13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle6_0crvShape" -p "legFront_L0_ankle";
	rename -uid "E6C1CECC-40F7-78E6-57BB-C5B1A1A38CA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_ankle6_1crvShape" -p "legFront_L0_ankle";
	rename -uid "2D9FDA10-4A0C-5E25-CD6C-DCBAE291DDD8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "160670FF-4110-FCB5-840D-8C891DEC5A7F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -1.1294425054275494 0.023148533894218559 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_footShape" -p "legFront_L0_foot";
	rename -uid "77F6A0E0-488E-B9A0-0953-A485FC86CDED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot4Shape" -p "legFront_L0_foot";
	rename -uid "3ECC027B-4F77-08B9-CF26-6AB6DE422F87";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_foot5Shape" -p "legFront_L0_foot";
	rename -uid "7F583DEA-48A0-5B01-075C-8E935A7A4A1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_foot6Shape" -p "legFront_L0_foot";
	rename -uid "130A45C7-472C-15C8-361A-43B8AE3F08A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot6_0crvShape" -p "legFront_L0_foot";
	rename -uid "2D8AD8F7-4C9D-ABCF-956B-0F9DD7B0683A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_foot6_1crvShape" -p "legFront_L0_foot";
	rename -uid "32C1045B-4BD5-118E-646B-2D9C64C4801F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FA123C3F-4CDE-040C-7AB8-6AB532481F42";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 8.6042284408449632e-016 0.59657797851921135 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legFront_L0_effShape" -p "legFront_L0_eff";
	rename -uid "41E9DEB1-4990-6BCE-E79D-8A8B15A1BB0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff4Shape" -p "legFront_L0_eff";
	rename -uid "EB2601FB-43B2-8230-0A70-13826CF825E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legFront_L0_eff5Shape" -p "legFront_L0_eff";
	rename -uid "306BFB4E-4588-5678-21FA-30814CD8865D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legFront_L0_eff6Shape" -p "legFront_L0_eff";
	rename -uid "7D1CB814-4F03-FB73-BFA7-B6B886DFFC56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff6_0crvShape" -p "legFront_L0_eff";
	rename -uid "B0314861-4507-FD81-4386-5CB29D014F09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legFront_L0_eff6_1crvShape" -p "legFront_L0_eff";
	rename -uid "8382508E-4323-4021-387E-36B11E014FF7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E85F9848-412E-3C8E-3A71-1CBB5191F669";
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
	setAttr ".t" -type "double3" 1.7763568394002505e-015 7.4940054162198066e-016 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.31499517602514104 0.31499517602514104 0.31499517602514099 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footFront";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "frontLegUI_C0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footFront_L0_rootShape" -p "footFront_L0_root";
	rename -uid "C0B8715D-46CA-5869-D144-E89B004AF5C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_root4Shape" -p "footFront_L0_root";
	rename -uid "2AE584DE-4DFB-04CB-FE3E-D180369D581D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_root5Shape" -p "footFront_L0_root";
	rename -uid "B2F6FBBB-4701-4F5B-8A14-BA9B3C817321";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_root6Shape" -p "footFront_L0_root";
	rename -uid "C415F1EE-466A-691C-A579-398D1EACE395";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "DB8FCD8F-4DD4-C2B1-7CAB-B486751D2B29";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 2.2204460492503131e-016 0.7599619087351428 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_0_locShape" -p "footFront_L0_0_loc";
	rename -uid "AB464B36-43F6-10FC-DE78-26AE5AB98AEE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc4Shape" -p "footFront_L0_0_loc";
	rename -uid "880ED6B5-483D-CDCC-7C24-748D946E126F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc5Shape" -p "footFront_L0_0_loc";
	rename -uid "66D91010-4E31-A5FF-E963-61933923ABB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_0_loc6Shape" -p "footFront_L0_0_loc";
	rename -uid "A05E10D0-4AF9-BA67-6315-129680016B8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc6_0crvShape" -p "footFront_L0_0_loc";
	rename -uid "695E3947-4C29-F529-3E52-AC800D49D8E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_0_loc6_1crvShape" -p "footFront_L0_0_loc";
	rename -uid "916C5B2F-4482-A51E-BCAE-C1B5795F1784";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D870B6F6-4037-0989-B816-B481EE4EB76B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 -0.31771180755405043 0.73937999249396213 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000007 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_1_locShape" -p "footFront_L0_1_loc";
	rename -uid "4E658202-4544-BB65-3F21-EB886DA6A247";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc4Shape" -p "footFront_L0_1_loc";
	rename -uid "3BC0FDD7-475E-0623-1537-9BA58ADFB29A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc5Shape" -p "footFront_L0_1_loc";
	rename -uid "CA0CB1AE-41F1-CAE8-2A84-AAB0B8688E92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_1_loc6Shape" -p "footFront_L0_1_loc";
	rename -uid "AC23F43B-4E3D-2A44-3D0D-6DA47DBD8BEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc6_0crvShape" -p "footFront_L0_1_loc";
	rename -uid "69D2E887-4630-95D9-3975-70B86C8E6B45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_1_loc6_1crvShape" -p "footFront_L0_1_loc";
	rename -uid "75508C1D-4DCC-F8A7-733B-AEAE51B1358F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7E738376-4EB8-4222-83BE-5FBC2D9BBCD4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373435 -0.60300743522685707 -16.239037496288901 ;
	setAttr ".s" -type "double3" 7.943170164814803 7.9431701648148048 7.943170164814803 ;
createNode nurbsCurve -n "footFront_L0_crvShape" -p "footFront_L0_crv";
	rename -uid "A823D177-49F6-B9D1-1A1E-42969AEF7833";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_crvShapeOrig" -p "footFront_L0_crv";
	rename -uid "97CE6E2B-45DD-BF85-1254-8BB2FDB09BD2";
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
	rename -uid "87472BD1-40C5-C1CA-D429-389664135AD0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -0.31771180755405082 -0.067899908672114151 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_heelShape" -p "footFront_L0_heel";
	rename -uid "CD6AA3CA-4C31-201C-0124-B0B172177330";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel4Shape" -p "footFront_L0_heel";
	rename -uid "EF96BE85-42D0-835A-B77C-68A8605A3FA4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_heel5Shape" -p "footFront_L0_heel";
	rename -uid "E44AC79F-4FD8-61BC-E8B7-E29C69C1B3E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_heel6Shape" -p "footFront_L0_heel";
	rename -uid "8624D864-4B20-897D-E86A-3496DFF08771";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel6_0crvShape" -p "footFront_L0_heel";
	rename -uid "E4323131-412F-9F60-7489-1AB29DA60731";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_heel6_1crvShape" -p "footFront_L0_heel";
	rename -uid "1A7B2E8B-4B79-9559-8B4F-60AFEE5C7ADF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A526DFE1-4726-9B96-C75A-2C9A44302241";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1000376131120602 -0.31771180755404937 0.69157185350463379 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_outpivotShape" -p "footFront_L0_outpivot";
	rename -uid "B553CC20-4275-7267-2952-99BC0F1C4AF0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot4Shape" -p "footFront_L0_outpivot";
	rename -uid "B3C7C97C-468D-9269-B07E-27A036790A96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot5Shape" -p "footFront_L0_outpivot";
	rename -uid "61E74B82-44EB-998D-BF2D-248658F39CD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_outpivot6Shape" -p "footFront_L0_outpivot";
	rename -uid "42B46295-4610-DF71-E537-3F9DD096CFF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot6_0crvShape" -p "footFront_L0_outpivot";
	rename -uid "1625C8A2-4287-0E37-694C-6BBCE71C9934";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_outpivot6_1crvShape" -p "footFront_L0_outpivot";
	rename -uid "05B6FD2F-4529-7165-5200-EF8B39D3760D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D5B98DF6-4AC5-CEFA-6786-9BA44166D717";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.016243928872302 -0.31771180755405165 0.86340011285661689 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footFront_L0_inpivotShape" -p "footFront_L0_inpivot";
	rename -uid "E92A8186-442E-7B74-EF7A-1F8DF7826D07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot4Shape" -p "footFront_L0_inpivot";
	rename -uid "7DFDE061-4B09-736D-1BE1-53A7593D3C2D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot5Shape" -p "footFront_L0_inpivot";
	rename -uid "BE249348-44CB-D131-FC99-DDAD1C439EE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footFront_L0_inpivot6Shape" -p "footFront_L0_inpivot";
	rename -uid "08E2B13D-4943-2B4A-7332-CA9D01A01A6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot6_0crvShape" -p "footFront_L0_inpivot";
	rename -uid "BAE97CEC-456B-7D4F-8326-0CA3C003F1B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footFront_L0_inpivot6_1crvShape" -p "footFront_L0_inpivot";
	rename -uid "ED6E0340-49FF-8F0A-1E51-F7A6AEF3EB0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E14D1F45-4C31-BACF-1104-188C2736EBF7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.3687973355373435 -0.60300743522685707 -16.239037496288901 ;
	setAttr ".s" -type "double3" 7.943170164814803 7.9431701648148048 7.943170164814803 ;
createNode nurbsCurve -n "footFront_L0_Shape1" -p "footFront_L0_1";
	rename -uid "CFF32A43-4225-40AB-91B9-EB87461DE696";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footFront_L0_Shape1Orig" -p "footFront_L0_1";
	rename -uid "F59B7F1B-4CB2-341F-41D6-6DBED92FA7DA";
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
createNode transform -n "legFront_L0_crv1" -p "legFront_L0_root";
	rename -uid "A12D3FF7-477C-077B-E680-30A6541C8BDF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3211356138011654 -5.8086248814742696 -5.5045062328919325 ;
	setAttr ".s" -type "double3" 2.5020602842634885 2.502060284263488 2.5020602842634885 ;
createNode nurbsCurve -n "legFront_L0_crvShape1" -p "legFront_L0_crv1";
	rename -uid "3627F1FA-48F3-148B-EEBC-678521CC65D8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legFront_L0_crvShape1Orig" -p "legFront_L0_crv1";
	rename -uid "ABCE3CF3-46C5-D771-1870-ECAD8B7DA19C";
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
	rename -uid "27BE29B3-4144-6E26-4973-22AB7368A60E";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "38D6BAE4-45B0-4F10-1FF2-9591D6D5EEFD";
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
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint2" -p "shoulder_L0_blade";
	rename -uid "FAEBDD29-453B-8AE3-C69F-20B68C055DCC";
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
	setAttr ".rsrr" -type "double3" 3.3599751382067979 -13.536129435773089 -14.081236533000451 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint2" -p "shoulder_L0_blade";
	rename -uid "0C55C765-4473-7A31-83F8-BC98CFE2448C";
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
	rename -uid "2C994F3C-46C7-7217-5695-32910D7F7F33";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.095164109147560849 -2.5303629060493176 -1.9933533667490368 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "A05C63F2-4FAF-11C6-0F09-9AB56EE01931";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "60B274D6-460C-94BE-60A7-99B7E1926B3E";
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
	rename -uid "5C4291D6-48C0-443A-8BC5-419BDC95F27D";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "8FD74073-42EA-0573-53E0-37BC52605EF6";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint2" -p "spine_C0_blade";
	rename -uid "C5F5A276-4C46-0AC6-9B30-C397CBBEA759";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint2" -p "spine_C0_blade";
	rename -uid "BBD9E85B-4426-CF32-CD34-7D866B1EEAFB";
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
	rename -uid "648A63CB-4F03-D6C7-EAE2-3A968D7564BA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.1074785620942285 2.6024712577026077 -3.4239055234572094e-015 ;
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 2.1102915763618237 2.1102915763618237 2.1102915763618237 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "DE0F05C1-47C4-39F6-28CB-EEB20174C200";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "4BF76BC3-4F52-130E-5357-878152408EEE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "legBack_R0_root" -p "spine_C0_root";
	rename -uid "17B4C9F3-4F0D-B159-1DF8-98953E3F4455";
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
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21090213141048153 -0.097927178047040986 2.6808811877076884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 -89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.4927195488403602 1.4927195488403604 -1.4927195488403604 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_3jnt_01";
	setAttr ".comp_name" -type "string" "legBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "backLegUI_C0_root";
	setAttr ".blend" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legBack_R0_rootShape" -p "legBack_R0_root";
	rename -uid "F44ABC60-48F6-C883-3944-729942848AD8";
	setAttr -k off ".v";
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
	rename -uid "E4F4ABFB-49C7-2677-6875-1CB3638E1B82";
	setAttr -k off ".v";
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
	rename -uid "CACCE167-45C4-40CC-7EA0-3E87A0AC035B";
	setAttr -k off ".v";
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
	rename -uid "978D8379-40FA-581C-C4C1-A3928AFE8A77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "25E148AC-42E7-752F-CB93-638EE838CFF9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.886579864025407e-015 -1.1559508743798532 0.33714517700502111 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_kneeShape" -p "legBack_R0_knee";
	rename -uid "67401AB2-446C-8069-6C4B-D5AE24131B67";
	setAttr -k off ".v";
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
	rename -uid "0E02C183-4F6A-0077-31EB-0ABB9220607D";
	setAttr -k off ".v";
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
	rename -uid "6004339A-4766-DDD0-9FBB-A48FB7AE694F";
	setAttr -k off ".v";
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
	rename -uid "A4FC7099-4E63-BE3F-74D8-02AC5F0F432E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C829B5B2-461C-B9CF-C588-EE8824145144";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3C766BC5-4692-E924-BBFC-EFA84C5EF8A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C1DFF390-46E4-75BD-F61E-438A113971AE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -1.4950431842245451 -0.57333193410462546 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_ankleShape" -p "legBack_R0_ankle";
	rename -uid "8A239B45-441F-BEEA-900B-7CA055521F3B";
	setAttr -k off ".v";
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
	rename -uid "C8570E77-4AA2-E70B-E27B-C48A57671A92";
	setAttr -k off ".v";
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
	rename -uid "18256AAF-455B-8BE7-2996-95A2420E2C92";
	setAttr -k off ".v";
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
	rename -uid "76F30215-4432-C951-D386-A7BB501F4BDF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "63543D8C-40B4-FF43-E4E1-D0B432C501BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3CC7194C-40A0-CE6F-264C-BA87FD7F2B7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C2D32956-4F42-7C26-4DE3-E58190DB02D5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.4424906541753444e-015 -0.54805580751979133 0.15050522089872964 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_footShape" -p "legBack_R0_foot";
	rename -uid "11B0432C-44D9-9121-EA07-DFB83465AD09";
	setAttr -k off ".v";
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
	rename -uid "F99531C8-44E6-0E35-54FE-87972A5C7387";
	setAttr -k off ".v";
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
	rename -uid "66831378-4701-BF9E-8D27-64BD3FF46C2F";
	setAttr -k off ".v";
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
	rename -uid "675B76D1-43B6-6CB2-FFC6-CBA6F99CF91F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "74F180E7-4FB9-657E-6179-DD82C2F4DC9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F67ECBC6-4D40-8E58-2E6E-7E990EB3464A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1EC271A2-4EE5-6BDA-FCD7-31B8BD0E30A8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 8.3266726846886741e-017 0.28135643819707568 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_R0_effShape" -p "legBack_R0_eff";
	rename -uid "114AE9B1-4D3F-885D-E6F0-D4B0B86087DD";
	setAttr -k off ".v";
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
	rename -uid "964073A3-4AED-ACEC-492F-1D95B53234F0";
	setAttr -k off ".v";
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
	rename -uid "05263E4A-49AF-8EDF-9B1F-119B338E5308";
	setAttr -k off ".v";
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
	rename -uid "CF9D2726-4D79-BA4A-E88E-3EA14B9DE0EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "71E1C7EF-4DF2-C911-491D-9C808CE496A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9D2B99E2-414B-3084-E333-FAB826AABD8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D5CCFCD1-4575-3BC7-A71D-748C050FF056";
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
	setAttr ".t" -type "double3" -4.4408920985006262e-016 1.5265566588595902e-016 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398101 0.16356254765398101 0.16356254765398101 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_C0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footBack_R0_rootShape" -p "footBack_R0_root";
	rename -uid "DC9C215D-403C-7639-4F76-3DA5B1BF37B0";
	setAttr -k off ".v";
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
	rename -uid "9A845EDA-40D3-8A6C-0351-DEB361FC1104";
	setAttr -k off ".v";
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
	rename -uid "A31F8B02-4D60-4851-E2F0-38A19A82ABFE";
	setAttr -k off ".v";
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
	rename -uid "B36A712A-4574-3ED8-AE89-79BC2460207B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "BF6746F4-4418-7813-622C-4A92A59C0F7C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-015 -5.5511151231257827e-017 0.54565565303279762 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_0_locShape" -p "footBack_R0_0_loc";
	rename -uid "77804E3F-4F74-DEA6-BF06-FB9FD85B0174";
	setAttr -k off ".v";
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
	rename -uid "90A1D355-42AD-AA33-DCBE-B7B35BBC84A1";
	setAttr -k off ".v";
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
	rename -uid "74E5F148-4009-2BE4-DCD5-E58745A2E338";
	setAttr -k off ".v";
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
	rename -uid "5AFABEDD-47F9-5701-B896-F38016DF06F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1A833DA5-4692-7BF8-C587-3DB3C0BA16A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7C77C24E-4B7A-1442-B1A4-CB9D401EDEFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AA521EB5-4593-2EE1-1E61-C1B4994DA4B0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-015 -0.34547277013915556 0.77046072389792464 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_1_locShape" -p "footBack_R0_1_loc";
	rename -uid "BEFD0A63-4F7E-A0AB-192A-F9BACA609A45";
	setAttr -k off ".v";
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
	rename -uid "1E63BA73-43CF-3587-E8E3-FEA0A2585CA5";
	setAttr -k off ".v";
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
	rename -uid "CF7E1316-4413-D5D3-360F-A8A5AF14BFD8";
	setAttr -k off ".v";
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
	rename -uid "EE042EF2-48E0-017E-5421-87A691B68730";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F70F806A-48F5-575A-55C5-9081703BC063";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B859D835-48A0-8714-45AE-E9AE7FF57666";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "33BB864C-4C3C-8488-2FFE-2B940E3279A7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718958 -0.49678747209357765 11.584116504196615 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 -8.6433157474725775 ;
createNode nurbsCurve -n "footBack_R0_crvShape" -p "footBack_R0_crv";
	rename -uid "B0BA6114-42BE-148A-6289-1E89D6D54727";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_crvShapeOrig" -p "footBack_R0_crv";
	rename -uid "D768407D-4BF1-8E35-2D49-B6BE7EE95B59";
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
	rename -uid "614A0791-4EC8-DC9B-1A47-C5A32836A8F7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-015 -0.345472770139156 -0.37260003933978503 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_heelShape" -p "footBack_R0_heel";
	rename -uid "36296AA3-4308-2710-F0DB-53A12F1C06BD";
	setAttr -k off ".v";
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
	rename -uid "4A1B3658-4351-9F69-547A-E684DAB84A2A";
	setAttr -k off ".v";
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
	rename -uid "07235442-4320-B034-1A58-72B457F7C517";
	setAttr -k off ".v";
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
	rename -uid "F27DD199-402F-0DC1-EC64-3AAB462EDFEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2D537CDD-4386-31AC-0731-8B86947E4435";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E22084DF-43CE-3E58-A9AD-08AE348D2C19";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D4495C04-4FA1-770A-ED8F-FEB4487334EE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139868 -0.34547277013915595 0.11497296198779061 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_outpivotShape" -p "footBack_R0_outpivot";
	rename -uid "1C126C58-4A6B-E4A6-D820-05A16DC8E501";
	setAttr -k off ".v";
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
	rename -uid "130AAD7C-4A58-2AD2-6A6D-ACBB21F54412";
	setAttr -k off ".v";
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
	rename -uid "CCCF323B-4D37-F352-FF38-4AB671BCC840";
	setAttr -k off ".v";
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
	rename -uid "C204F1C1-4C13-FAF3-83D3-CE851B26E20D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BC4A73CE-4A7F-AD26-A9AB-AC91B0C80DA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ACEB8799-4B18-1FE5-E295-538DD65AE283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EB280F67-45B0-83B8-7D4A-9BBE641A6032";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215583 -0.34547277013915612 0.21228136011732168 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_R0_inpivotShape" -p "footBack_R0_inpivot";
	rename -uid "16A638A8-4469-3EC0-5330-CC9861CCF747";
	setAttr -k off ".v";
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
	rename -uid "1F29C58C-4CCA-8D94-C102-7FA4218A55AB";
	setAttr -k off ".v";
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
	rename -uid "B89435EF-442F-574F-CB9F-2284E298FF0E";
	setAttr -k off ".v";
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
	rename -uid "6B3368BB-4027-0E8E-6147-D69EB7B90F96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4BD43669-4990-C9C9-94D6-879BDA2D0497";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "56F6DDB2-49C8-B823-28DC-84B4B9106190";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E51F176B-44AF-05E1-1D67-38B00E32BA19";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718958 -0.49678747209357765 11.584116504196615 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 8.6433157474725757 8.6433157474725757 -8.6433157474725775 ;
createNode nurbsCurve -n "footBack_R0_Shape1" -p "footBack_R0_1";
	rename -uid "CFFD424D-4575-3100-686C-9888AFA2001F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_R0_Shape1Orig" -p "footBack_R0_1";
	rename -uid "F19B661D-4AA4-A902-BB2D-1FA5C6A0DCBD";
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
createNode transform -n "legBack_R0_crv1" -p "legBack_R0_root";
	rename -uid "633371BB-4EC0-5AED-0C07-88B59F490D0E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807553 -3.280305690702396 1.8090460715460521 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.4137227438343882 1.4137227438343878 -1.4137227438343878 ;
createNode nurbsCurve -n "legBack_R0_crvShape1" -p "legBack_R0_crv1";
	rename -uid "8189A024-486D-F6A4-9EBC-3EA0879FEF70";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_R0_crvShape1Orig" -p "legBack_R0_crv1";
	rename -uid "E448D64D-47A7-E0B9-76F3-26822343E882";
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
createNode transform -n "legBack_L0_root" -p "spine_C0_root";
	rename -uid "5ED74D13-482F-2437-B325-E7923D1AD507";
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
	addAttr -ci true -k true -sn "ikSolver" -ln "ikSolver" -min 0 -max 1 -en "IK Spring:IK Rotation Plane" 
		-at "enum";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div2" -ln "div2" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21090213141047975 -0.09792717804704365 -2.6808811877076884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -89.999999999999986 89.999999999999957 0 ;
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
	setAttr ".ui_host" -type "string" "backLegUI_C0_root";
	setAttr ".blend" 1;
	setAttr ".ikrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr ".div2" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legBack_L0_rootShape" -p "legBack_L0_root";
	rename -uid "81FBC92C-4077-74B6-C3AB-E4B9C0AA5644";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_root4Shape" -p "legBack_L0_root";
	rename -uid "3AD9CEEF-48E1-953C-F91D-B881BD178F57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_root5Shape" -p "legBack_L0_root";
	rename -uid "A1DCB661-4AB7-7EF4-C1F9-AA83C5DE52D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_root6Shape" -p "legBack_L0_root";
	rename -uid "DC85A188-44A2-8BF8-05F7-9183871B8235";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "84190C54-4A3C-A718-0651-BD99E228C270";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.8849813083506888e-015 -1.1559508743798523 0.33714517700502156 ;
	setAttr -l on -k off -cb on ".tx";
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
createNode nurbsCurve -n "legBack_L0_kneeShape" -p "legBack_L0_knee";
	rename -uid "65C4D49D-44F3-2142-6B7A-869F1A0F81FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee4Shape" -p "legBack_L0_knee";
	rename -uid "C1C20EA2-496E-6952-A5B6-8D86F55E5A30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_knee5Shape" -p "legBack_L0_knee";
	rename -uid "EA3667CF-4C56-A2A8-FDBA-29A7B701CAE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_knee6Shape" -p "legBack_L0_knee";
	rename -uid "52BE85DA-4135-B2CB-681C-CDBA177DA4B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee6_0crvShape" -p "legBack_L0_knee";
	rename -uid "F5FD9FD9-4C2F-533D-8E5C-B09B9B75A020";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_knee6_1crvShape" -p "legBack_L0_knee";
	rename -uid "B443FF5B-4F3A-19BF-2CA3-02AE919315EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B3545512-4100-635C-5C5E-068064D6D4E5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1086244689504383e-015 -1.4950431842245455 -0.57333193410462435 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_ankleShape" -p "legBack_L0_ankle";
	rename -uid "9679072B-46EF-F114-8FAC-EF9C2020916F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle4Shape" -p "legBack_L0_ankle";
	rename -uid "954E60D5-4DF4-7654-C0C8-30B07A6EFBA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_ankle5Shape" -p "legBack_L0_ankle";
	rename -uid "873FE5C2-4A62-F8A5-8570-568D8DFA8A64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_ankle6Shape" -p "legBack_L0_ankle";
	rename -uid "CBD390C3-4450-2E7C-A82A-0E9293B3CC89";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle6_0crvShape" -p "legBack_L0_ankle";
	rename -uid "763F304A-4F45-CB46-E29F-5F99616C00D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_ankle6_1crvShape" -p "legBack_L0_ankle";
	rename -uid "67274D07-490F-6F1B-DFD2-CA93CB48B9FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "38473823-4A7A-6322-3BDA-CD9F4E47B129";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.6645352591003757e-015 -0.54805580751979188 0.15050522089872942 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_footShape" -p "legBack_L0_foot";
	rename -uid "D0BA7194-43E5-3672-FB91-30B5C3EFBB9C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot4Shape" -p "legBack_L0_foot";
	rename -uid "E24D2EEB-406E-8E2D-83BC-A2ACF921B345";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_foot5Shape" -p "legBack_L0_foot";
	rename -uid "860B8F19-4CF7-3061-934E-49BEC2996F6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_foot6Shape" -p "legBack_L0_foot";
	rename -uid "84E8FCD8-4081-A3C6-DC30-FDA24B037CF5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot6_0crvShape" -p "legBack_L0_foot";
	rename -uid "9759CD82-4AE0-A30A-D2C8-98979FBA2E6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_foot6_1crvShape" -p "legBack_L0_foot";
	rename -uid "AFDBCD14-471A-1403-5175-ACA0DF9B283A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7C13FA72-415A-C0CC-051E-18A16B3E7290";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 2.6367796834847468e-016 0.28135643819707523 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "legBack_L0_effShape" -p "legBack_L0_eff";
	rename -uid "71E5DCA9-44A2-7C96-9DD7-73B22BD1C2E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff4Shape" -p "legBack_L0_eff";
	rename -uid "F9341269-457D-8E75-297D-20B6FDF8ED36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legBack_L0_eff5Shape" -p "legBack_L0_eff";
	rename -uid "4C848651-41B0-2322-88C6-D1B87A827934";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legBack_L0_eff6Shape" -p "legBack_L0_eff";
	rename -uid "2888E9F5-4636-653B-3106-B6AC3135A1AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff6_0crvShape" -p "legBack_L0_eff";
	rename -uid "D993AABF-479A-3794-7413-0CB430B8BDD1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "legBack_L0_eff6_1crvShape" -p "legBack_L0_eff";
	rename -uid "57BD7B49-4750-1BBB-9C93-C29D31D428EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "49C5480A-49AC-168D-E1FA-42A174EFE070";
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
	setAttr ".t" -type "double3" 2.2204460492503131e-016 2.7755575615628914e-016 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.16356254765398098 0.16356254765398096 0.16356254765398093 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "footBack";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_3jnt_01";
	setAttr ".ui_host" -type "string" "backLegUI_C0_root";
	setAttr ".useRollCtl" yes;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "footBack_L0_rootShape" -p "footBack_L0_root";
	rename -uid "DBC3A17F-4134-28C3-7613-D9BA2EFE2873";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_root4Shape" -p "footBack_L0_root";
	rename -uid "CA5B051C-4A22-DBD9-50CE-8DAD7AFABCC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_root5Shape" -p "footBack_L0_root";
	rename -uid "D32C31BA-4CA7-BE3B-1507-FE8C10F961DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_root6Shape" -p "footBack_L0_root";
	rename -uid "F4B12CE1-484E-B708-FFF1-DC8C1BAB3CEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F6168B3D-43DB-21F7-416B-E896435EF7B3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 5.5511151231257827e-017 0.54565565303280117 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_0_locShape" -p "footBack_L0_0_loc";
	rename -uid "8BF904F7-4DA2-4533-1102-BE8604322409";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc4Shape" -p "footBack_L0_0_loc";
	rename -uid "9BEF759C-4BCB-B239-C1FF-BBB8F946769B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc5Shape" -p "footBack_L0_0_loc";
	rename -uid "E5F30412-4354-ED54-1B86-6FB76A6FC190";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_0_loc6Shape" -p "footBack_L0_0_loc";
	rename -uid "5EE767B9-41D8-9392-308C-8F95CA95C6E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc6_0crvShape" -p "footBack_L0_0_loc";
	rename -uid "675EE800-4B70-9217-D596-C9A2B7700029";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_0_loc6_1crvShape" -p "footBack_L0_0_loc";
	rename -uid "71E9D4DF-4A39-619C-A331-00965A4D7889";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "929425A3-4F74-5955-159B-619DD97984ED";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -0.34547277013915556 0.77046072389792286 ;
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
createNode nurbsCurve -n "footBack_L0_1_locShape" -p "footBack_L0_1_loc";
	rename -uid "875A0408-45AB-A459-C082-258AC5927107";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc4Shape" -p "footBack_L0_1_loc";
	rename -uid "ADC343F0-4DDF-96C0-A9C6-16A290F9EDE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc5Shape" -p "footBack_L0_1_loc";
	rename -uid "C4A41F05-42AC-A6CF-80D4-D9BD55D90557";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_1_loc6Shape" -p "footBack_L0_1_loc";
	rename -uid "A59A788B-4FF7-E271-4E8B-C89AC849936B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc6_0crvShape" -p "footBack_L0_1_loc";
	rename -uid "D1015735-4E21-EEAF-555D-FAA33FD6604B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_1_loc6_1crvShape" -p "footBack_L0_1_loc";
	rename -uid "A5491EB9-4826-CE83-D793-C0BD9150BEDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CDFAF82A-4990-02B6-56CD-B49406CCED64";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718949 -0.49678747209358565 11.584116504196629 ;
	setAttr ".s" -type "double3" 8.6433157474725792 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_crvShape" -p "footBack_L0_crv";
	rename -uid "7DB01680-469B-0CE7-868B-B68E7C0FDB07";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_crvShapeOrig" -p "footBack_L0_crv";
	rename -uid "76C2B07A-49B2-CF80-2F49-75B0F8D9DEA6";
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
	rename -uid "77CC6D40-40D9-9568-B70B-E3971F36B1EA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -0.34547277013915623 -0.37260003933978147 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_heelShape" -p "footBack_L0_heel";
	rename -uid "CD9E57DF-4A4F-7458-87A9-A093E602B7FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel4Shape" -p "footBack_L0_heel";
	rename -uid "50EA716B-4BAE-F5D4-DAC3-F4B3F9BD9E12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_heel5Shape" -p "footBack_L0_heel";
	rename -uid "602C70E2-4C43-6796-636A-CEB091D528CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_heel6Shape" -p "footBack_L0_heel";
	rename -uid "95CCB22E-455E-DFFD-5ABC-F48FEB93308A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel6_0crvShape" -p "footBack_L0_heel";
	rename -uid "F2816320-4A2D-DE75-81E4-DBA327560A2D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_heel6_1crvShape" -p "footBack_L0_heel";
	rename -uid "33227AED-4776-567F-86C6-16B90BE854D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0B2E4D4E-46C0-6C74-4CC8-AF8F24AE3207";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0422206583139904 -0.34547277013915501 0.11497296198779239 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_outpivotShape" -p "footBack_L0_outpivot";
	rename -uid "A233E24A-4629-2E5A-5B0A-8A94000D5ECA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot4Shape" -p "footBack_L0_outpivot";
	rename -uid "5B960950-443C-A4C7-F5C2-1BBF15E519A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot5Shape" -p "footBack_L0_outpivot";
	rename -uid "FC207B5E-406B-D4C6-C04C-22BB1C7A929E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_outpivot6Shape" -p "footBack_L0_outpivot";
	rename -uid "D110A5AD-4663-9129-169E-178E17B89544";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot6_0crvShape" -p "footBack_L0_outpivot";
	rename -uid "A4A2EB4F-414C-9AE8-D928-96A06C6682CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_outpivot6_1crvShape" -p "footBack_L0_outpivot";
	rename -uid "F655BC9E-4632-BA47-E3AB-E2908ED7CADB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "46F333F2-4BF9-0D40-97C7-17AE3FC91FAC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1682146826215583 -0.34547277013915728 0.21228136011732701 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "footBack_L0_inpivotShape" -p "footBack_L0_inpivot";
	rename -uid "881A52DF-48D8-4AA7-4178-42B7B16E7892";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot4Shape" -p "footBack_L0_inpivot";
	rename -uid "1F1C916A-48B3-C4EB-DEA9-388ACCA12DCB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot5Shape" -p "footBack_L0_inpivot";
	rename -uid "77786163-4E9E-E58A-8E62-23B46D30AD9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "footBack_L0_inpivot6Shape" -p "footBack_L0_inpivot";
	rename -uid "E73A0037-41F5-C726-BA2E-789416DE8BBD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot6_0crvShape" -p "footBack_L0_inpivot";
	rename -uid "4C3A2D2A-45F3-66F8-D064-6ABD8F75E6CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "footBack_L0_inpivot6_1crvShape" -p "footBack_L0_inpivot";
	rename -uid "876683FC-47B2-424C-FB63-BAAB06867EA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "39C9EC95-4CD0-B1CC-C6E1-FDAF5EDABDFB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.980332218718949 -0.49678747209358565 11.584116504196629 ;
	setAttr ".s" -type "double3" 8.6433157474725792 8.6433157474725757 8.6433157474725792 ;
createNode nurbsCurve -n "footBack_L0_Shape1" -p "footBack_L0_1";
	rename -uid "A786445E-4468-C4A3-3A41-F680706B1DA5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "footBack_L0_Shape1Orig" -p "footBack_L0_1";
	rename -uid "B28107AD-41D3-73B0-B872-2FB10C3EAC1C";
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
createNode transform -n "legBack_L0_crv1" -p "legBack_L0_root";
	rename -uid "9C090348-4E1E-1C42-9868-DF90C33DE3D0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7959711117807495 -3.2803056907023969 1.8090460715460546 ;
	setAttr ".s" -type "double3" 1.413722743834388 1.4137227438343878 1.4137227438343878 ;
createNode nurbsCurve -n "legBack_L0_crvShape1" -p "legBack_L0_crv1";
	rename -uid "CCDBB02C-403A-82F7-0F19-B980678A8463";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "legBack_L0_crvShape1Orig" -p "legBack_L0_crv1";
	rename -uid "0635B463-423A-848D-6A39-ECBDDB4DD9D7";
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
	rename -uid "1D8276A1-4FEB-7A58-19A7-838F979DD098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	rename -uid "D6BFCE6A-4434-6E40-3CFB-6A9D0BD5A673";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "neck_C0_root_st_profile1";
	rename -uid "C9190EE0-441C-1911-4C94-57989CD45DBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	rename -uid "A0E57DE7-47A0-E0B0-8CB9-E29CFF6CFE7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns37";
	rename -uid "2A31ED2C-4158-5DDF-4804-6AA92234D54D";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns37Set";
	rename -uid "6D7F08F0-44C5-B8B0-C127-D3A34EECADED";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns37GroupId";
	rename -uid "F9F1BD68-403C-A6EA-5AC5-52AA22D7FFE0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns37GroupParts";
	rename -uid "BA5815E8-44A0-82D2-971D-1687CCB41AA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak37";
	rename -uid "51DB9251-4E62-B873-AC29-239E9551B97A";
createNode objectSet -n "tweakSet37";
	rename -uid "B36BEFB8-45A8-534F-46F5-71A023E249BD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId74";
	rename -uid "871645C7-4D70-511D-89D7-C0B1BD05495B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "D7626FE8-4DD8-3BCF-0D3F-ECAB37E3D9E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns38";
	rename -uid "FE141357-4E3B-1729-F080-899DC48F31C9";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns38Set";
	rename -uid "BF303779-480F-60CF-35A3-DF9746FA01FB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns38GroupId";
	rename -uid "383B052A-4B0B-AB9A-D008-B79634911B10";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns38GroupParts";
	rename -uid "0B998B54-42DB-CFA0-B9C3-469DFF7EC723";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak38";
	rename -uid "17A7A8DF-4F86-6C01-5D2A-62A2351F74DE";
createNode objectSet -n "tweakSet38";
	rename -uid "5357EF14-480D-811A-3EA4-68B8671F9657";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId76";
	rename -uid "3F9BACC1-4256-47C2-B285-AB95353630B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "B44FCAAE-4752-0A5A-6BA6-3C8112AE0340";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns36";
	rename -uid "AF1A77E4-44DC-16AA-A0E9-52A5305D676F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns36Set";
	rename -uid "D3EA07EB-45A5-C669-4945-2FA14056F2DC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns36GroupId";
	rename -uid "6C6B0E26-48EA-12A5-E6E8-5CBAA81BCE51";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns36GroupParts";
	rename -uid "175699E6-4213-CEF0-839C-9B8B8497BDEC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak36";
	rename -uid "A824153C-4B55-6272-D5E7-2782C1C17BAA";
createNode objectSet -n "tweakSet36";
	rename -uid "F54A3D3F-49E6-7B4A-94CA-DB81E04AE6D9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId72";
	rename -uid "22E378C2-4821-1E74-3DD0-0195A62EB842";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "7D85052A-4DD5-D95D-C46F-EBBBF762F505";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns39";
	rename -uid "01448052-483C-7EE6-49AF-75A4685D63A1";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns39Set";
	rename -uid "1464124C-4565-D55F-2D38-85918BDEE99E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns39GroupId";
	rename -uid "5259E2F0-4020-7132-7562-3E93244EDC9B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns39GroupParts";
	rename -uid "E4450294-4761-B692-3E7B-D7A68085FCBE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak39";
	rename -uid "E9C71EFD-4B2C-301C-5B23-09BE10CF23E8";
createNode objectSet -n "tweakSet39";
	rename -uid "06B67A08-4078-D431-E413-65958CB64F9A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId78";
	rename -uid "EA1E4FF3-4F59-9B4B-FDB7-8DABEB66E2ED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "5CB5DC9B-4D8D-E4B3-7A43-1FB476199A6F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns40";
	rename -uid "B1674232-47A5-C1A7-C1B1-5E9279478D87";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns40Set";
	rename -uid "CECF60E4-47E7-FA2B-EBAE-A49F5C6E85DD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns40GroupId";
	rename -uid "131FB652-47C0-1A1F-AC74-6C8AD85A588B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns40GroupParts";
	rename -uid "EB4AA83B-46B4-7B14-4D38-17A33CCB323D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak40";
	rename -uid "340CB49A-4A4B-5522-B9F2-278232C4B7EE";
createNode objectSet -n "tweakSet40";
	rename -uid "7CA452EF-45FF-578F-19FF-8FBFB92C01A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId80";
	rename -uid "F82251C6-40D9-81FF-7720-DD9722C7741D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "EAB04323-43DC-C03A-36B5-B68618C1B790";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns41";
	rename -uid "B93DEC9D-4561-AC7A-9758-DB820B412C25";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns41Set";
	rename -uid "0A9F81BB-43A3-5ECF-FDB8-5DA7F8150285";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns41GroupId";
	rename -uid "F0B906CF-4942-C07E-2D9F-06A439577D96";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns41GroupParts";
	rename -uid "A36A7A6A-4ACF-A57D-EA2B-048FA1A176EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak41";
	rename -uid "2992F380-4AE9-2FC0-A82B-11805F2A05CD";
createNode objectSet -n "tweakSet41";
	rename -uid "A5C94EEE-47A3-2BFB-FCD7-99B3FFD1452C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId82";
	rename -uid "156F3DA4-4BC4-24EE-547D-6991EA1B9FA3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	rename -uid "DE771B98-439F-CB57-E9A8-C6A553B70EC7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns35";
	rename -uid "A686A458-4FD3-0023-46D3-EEA80005D5B1";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns35Set";
	rename -uid "0F6014C7-4C2F-E3D7-4B40-B0A33C874E8B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns35GroupId";
	rename -uid "E5D066DC-452D-0519-5763-C388E932C8BA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns35GroupParts";
	rename -uid "6A8A7D1E-494C-1C18-74A9-0CBDE46F5F95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak35";
	rename -uid "4C463DCB-4BE3-2AF4-9326-9D9EC064365C";
createNode objectSet -n "tweakSet35";
	rename -uid "9D4D00CF-48C3-6A86-D526-BA87CA37D55D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId70";
	rename -uid "B30021DA-4E48-14A7-177E-F9B1C38CC720";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "D4F91768-4439-13FD-D514-54BDDCFF4FE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion8";
	rename -uid "161E3F31-4AAD-8EF3-4A3F-64B0CFFD70FB";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns34";
	rename -uid "49FBE5BF-44C4-0469-AE70-EE861A148560";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns34Set";
	rename -uid "A95A786C-419D-21E8-257C-05BD6A50A9D7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns34GroupId";
	rename -uid "96307024-4F88-07F1-8D76-A19CFA9AEB5E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns34GroupParts";
	rename -uid "54A04198-41E6-DA62-BA86-F09A17EC5127";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak34";
	rename -uid "CC1841EE-4948-4FCA-86D1-B297AC140064";
createNode objectSet -n "tweakSet34";
	rename -uid "3623F87D-439A-1645-3EB6-F88EB521615B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId68";
	rename -uid "5E9B504D-435B-B685-6D9B-B69D2504A7EB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "9C9D415A-45EF-A935-58B7-B194800FC7C3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_R0_root_st_profile1";
	rename -uid "F38B1714-40DF-FD64-C3A1-94BD7FFC52A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_R0_root_sq_profile1";
	rename -uid "0A604A02-4535-73AC-523D-57A17C61026E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns44";
	rename -uid "B3A6E646-4302-3CC2-93B2-A1AE0981DBA0";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns44Set";
	rename -uid "21569469-4B7D-C0E5-2DEE-9AA36A440F9A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns44GroupId";
	rename -uid "822D8AA0-42E2-D75E-619F-7DAA5638B9D5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns44GroupParts";
	rename -uid "32F9AD34-45A1-1CB4-249A-A6948C186DA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak44";
	rename -uid "DE662A2B-4F01-4FD6-49B5-33BC06E1FE1E";
createNode objectSet -n "tweakSet44";
	rename -uid "A8295E9E-4E1E-B3C5-1F99-FAA94DD6373E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId88";
	rename -uid "F714DEF2-4664-E5C3-B2DA-8897581E09FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	rename -uid "CA415A78-4ECE-34E6-E9A1-698BBD618629";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns45";
	rename -uid "8B020D49-4CAC-7D97-89FD-258CDBBEEB14";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns45Set";
	rename -uid "492F2AB0-4F50-0F71-F4BE-319F49B6DEB6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns45GroupId";
	rename -uid "A155D576-4DC2-57DC-9CB8-B49F95DF95D8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns45GroupParts";
	rename -uid "B2B27DE2-4520-084C-F224-90B7EA116F90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak45";
	rename -uid "309A39EB-4E50-0C30-09B6-1C942E6C2F3C";
createNode objectSet -n "tweakSet45";
	rename -uid "101A76CE-49C5-F0A6-57F3-05B057935023";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId90";
	rename -uid "30338FD8-4E35-B900-A8E5-7A87B8E6E7FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	rename -uid "E3AB4035-456C-7807-1882-7E8E4C9F57BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns43";
	rename -uid "D6D22E9A-4058-076B-920C-DFA8C2A87AFF";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns43Set";
	rename -uid "182E82A8-44EE-1912-A666-2F89121926F3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns43GroupId";
	rename -uid "9A56E9E6-400D-BDAC-8A83-058B98BE03B3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns43GroupParts";
	rename -uid "CF21C332-4BA5-955D-B01D-E196794E696E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak43";
	rename -uid "1F1A7322-4ADF-147D-1724-1291F3B9281B";
createNode objectSet -n "tweakSet43";
	rename -uid "BD987147-47E5-71D5-899C-E99C6A601C20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId86";
	rename -uid "C07B8B04-47CB-A512-526F-528F4D6AABA3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	rename -uid "E0BFA53B-4805-BA75-86D5-F1ADCA0EA8D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion9";
	rename -uid "4B1D4623-479E-3E2B-04B2-26B050924273";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns42";
	rename -uid "A3454C0C-4E8A-31CB-F875-55B83AC6C4A9";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns42Set";
	rename -uid "180922BC-4C0A-3B79-FE5B-F3BFB111FFCE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns42GroupId";
	rename -uid "3FBE55ED-461D-D180-0C50-73BDE9AC994B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns42GroupParts";
	rename -uid "812DF184-415D-2FDA-8A7F-24A90E4AEA09";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak42";
	rename -uid "ADFBE2D3-4F3D-DC8F-DDC4-5F9CDCB13C52";
createNode objectSet -n "tweakSet42";
	rename -uid "9BCD1912-4036-D21D-C594-E982207A723B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId84";
	rename -uid "6E3D56AE-4951-2CFC-716F-588F5BAE6C04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	rename -uid "06EB2817-4F5E-25C9-68D1-AAB31DB36414";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legFront_L0_root_st_profile1";
	rename -uid "2E8B6A91-477A-49CD-27FA-54A2B6CF7FCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legFront_L0_root_sq_profile1";
	rename -uid "3C6D7F60-4419-F573-8C34-C1A57A36C64F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns48";
	rename -uid "A3EFA30F-400E-26B4-5EAD-07ABB5EC0B07";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns48Set";
	rename -uid "4B69CA86-45D8-395A-EF67-E49CABFD39E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns48GroupId";
	rename -uid "F574F677-4E4C-955B-792C-B1861834F7DC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns48GroupParts";
	rename -uid "E1BA9EE8-4AF8-7389-638F-A2A2AD601936";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak48";
	rename -uid "581F1EF6-4304-9843-469E-689311FB0A6B";
createNode objectSet -n "tweakSet48";
	rename -uid "7F407764-4599-63AD-FC80-858B3D1476AF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId96";
	rename -uid "F409247C-45D5-A97F-6EBF-A18C429D212D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	rename -uid "EDF095AA-4941-A963-3352-D38718E813F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns49";
	rename -uid "A2D49E0E-4A78-F608-6D3F-EBAD49080F87";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns49Set";
	rename -uid "F7DD1369-4F2B-98DE-417D-FEAB6D720C28";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns49GroupId";
	rename -uid "AEEFB7C6-4733-2218-C532-1BB4904E6390";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns49GroupParts";
	rename -uid "F122A6C8-494D-9575-9534-E7BB42837873";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak49";
	rename -uid "912FC017-41B7-A7FB-1AD6-BD9413A1E295";
createNode objectSet -n "tweakSet49";
	rename -uid "F8D56452-4870-9D82-3C5D-17B20D00CE34";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId98";
	rename -uid "84040AEC-42AA-8202-73C4-BEBDEE7248BB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	rename -uid "5FA4CDD5-4B4C-8D4B-2E63-EB9EE8F965D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns47";
	rename -uid "1E71D629-4D33-C16E-DB60-C7833F933A44";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns47Set";
	rename -uid "D67B8D6D-4852-B256-C1C8-C5A6F6B6294A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns47GroupId";
	rename -uid "371CC7F2-4EF4-D3E0-00B7-AA930117847E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns47GroupParts";
	rename -uid "F57DBDBE-439A-58C0-28B9-45BD48BB8DAA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak47";
	rename -uid "1DEC2BAA-43BF-990C-5690-A6B1C6D1BFCD";
createNode objectSet -n "tweakSet47";
	rename -uid "82D287A2-42A0-1F7E-8D92-3B8AB498ABC7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId94";
	rename -uid "BB4783BF-4EA3-25E4-F7F5-218E696422F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	rename -uid "01D1DE1A-4599-C017-5323-4E80B59D492E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion10";
	rename -uid "B0E84B75-42EE-6C42-1DC0-7383A26ACE3A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns46";
	rename -uid "51FBA513-4BF5-5DBD-4E1D-91B4C7F137DC";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns46Set";
	rename -uid "01AB0DCF-4873-92B0-C1C4-D797CF90B42F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns46GroupId";
	rename -uid "762FC7F9-4EC4-4E1D-EA6D-60AC773D1633";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns46GroupParts";
	rename -uid "710BDB1B-4124-1D55-F10E-4E9C2CF407A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak46";
	rename -uid "2A523204-431F-1DCF-BF05-8D8D80E8D096";
createNode objectSet -n "tweakSet46";
	rename -uid "41FE2AEB-4AD6-D9CB-89D2-D9A2ECFF7E7C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId92";
	rename -uid "3CA1892F-4085-4FB0-0460-07A1D2B7B20A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	rename -uid "4E76326D-4ED3-4C38-F11A-509CEFDF4DA2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion7";
	rename -uid "7F88A75B-44C4-0F84-F588-38A176816B93";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns33";
	rename -uid "AF2BE745-4F83-8C11-29D1-609B586FD4D0";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns33Set";
	rename -uid "B3A1900B-4984-DF4F-669C-A79B473D8014";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns33GroupId";
	rename -uid "718D5D31-4887-80C7-7750-BCA6F31C2D40";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns33GroupParts";
	rename -uid "63DD36B2-4C0D-C47D-337F-29A45A29B166";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak33";
	rename -uid "ED9B9F4A-40E4-0575-0466-F5A3F634ABEF";
createNode objectSet -n "tweakSet33";
	rename -uid "283ACFB3-4AB5-72F3-A517-51BB09D62CE4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId66";
	rename -uid "205BC8E7-420D-39F5-18AE-08BFF3A86CFA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "A06EB880-47F0-9F9F-F212-FCB0FE92B968";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_R0_root_st_profile1";
	rename -uid "A3A0835F-470F-7E12-A6C2-D09C9C7F0E58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_R0_root_sq_profile1";
	rename -uid "FE942E9A-4DF9-B420-705A-B9807EF13792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns51";
	rename -uid "69E0A043-4E89-FCE2-5F57-0585CD1106E4";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns51Set";
	rename -uid "C489C640-474D-D2E6-F8D2-5792FCE2B208";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns51GroupId";
	rename -uid "709126B5-4729-B663-DA19-0991E956DF59";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns51GroupParts";
	rename -uid "2E0E6424-44BE-53B5-3BA6-379D26806946";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak51";
	rename -uid "0DB909A0-4D63-98ED-5636-80A8BE7ACEA8";
createNode objectSet -n "tweakSet51";
	rename -uid "6BB3FB5C-456F-4775-9230-20887D26B547";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId102";
	rename -uid "0D6007EE-4C62-F295-B868-40B7B32480A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	rename -uid "1BA80266-4A43-41BD-3D0C-B5B1E0AABA43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns52";
	rename -uid "2A05BFC6-40EE-B0A9-037F-56BF23E31A19";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns52Set";
	rename -uid "3DF62426-4DFF-E4E2-1590-13B3075397DF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns52GroupId";
	rename -uid "544EFCB1-4FC9-4E61-31EE-509D11803BC9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns52GroupParts";
	rename -uid "1676B849-4201-0636-A9F2-D49896E9A2A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak52";
	rename -uid "DDEA119C-45A4-8448-2198-E697FCCD7370";
createNode objectSet -n "tweakSet52";
	rename -uid "B6917E49-48FA-B9CA-7A6B-2BB7B69E903B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId104";
	rename -uid "79ACD6D3-4857-AD72-55D9-2CB17F706F98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	rename -uid "BD7234C6-4CEF-793F-B8AC-1D9605F4B009";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns50";
	rename -uid "F2A7EC96-44FD-9AA3-42B5-E29045E67F10";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns50Set";
	rename -uid "1B5F1C95-4FEA-202D-CD08-F98FBF7480EF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns50GroupId";
	rename -uid "E03315C1-400A-F251-4CDF-729B5A263C21";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns50GroupParts";
	rename -uid "6715A696-4B72-B32F-C444-9A8F31EED7CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak50";
	rename -uid "D6A2E365-4B4B-5A7F-47AD-87AB85AABA6B";
createNode objectSet -n "tweakSet50";
	rename -uid "8AE0C897-4447-A4EC-6CE4-41A68B7667B0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId100";
	rename -uid "4EBC6F3B-4EFF-75DD-600B-1793B202C2D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	rename -uid "0CE4BF50-4BE7-201C-5557-73A193D7AB9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "legBack_L0_root_st_profile1";
	rename -uid "4E883723-4F22-3253-B506-DFADD1D37C07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "legBack_L0_root_sq_profile1";
	rename -uid "847F2C9A-4D37-9666-352F-B198AEB804AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns54";
	rename -uid "528B7E83-439E-AB52-16A4-73859F41A852";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns54Set";
	rename -uid "C95C1915-43B5-4C1A-5FD1-E1B98CA33DCB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns54GroupId";
	rename -uid "CE5890AB-4D1B-DD19-5E6A-BD9C047C56A4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns54GroupParts";
	rename -uid "E3869BFB-46C1-3107-68D7-408723C29F28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak54";
	rename -uid "CE65FC32-4BA8-6BDF-0D9B-43BD48B41E93";
createNode objectSet -n "tweakSet54";
	rename -uid "78B6BC59-44AE-8481-65F4-EAABC60F2131";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId108";
	rename -uid "708E7E7C-43E7-984F-C3B6-DB9043722FF6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	rename -uid "5432E320-46F1-EC6A-2BB1-E2987C8F8085";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns55";
	rename -uid "7AC9F840-470D-4F52-FFBB-E2A31899044F";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns55Set";
	rename -uid "635E2F46-4809-CC27-02C7-BE9F4D297CFD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns55GroupId";
	rename -uid "01954198-426D-D4EF-247F-93A134EDC17F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns55GroupParts";
	rename -uid "45422EDF-4D2A-4D6B-64EF-8AAECEA70077";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak55";
	rename -uid "B7B84D3F-4D8E-32BB-4404-A5AC3617AF19";
createNode objectSet -n "tweakSet55";
	rename -uid "A22256C0-442E-5099-D514-459C67D8D0F1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId110";
	rename -uid "C0EB9B89-4D79-A492-1E60-0DA4A94FB7FE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts110";
	rename -uid "E696B045-4371-4070-3694-2EB8E8D955D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns53";
	rename -uid "8830B7B2-4C06-7155-32DF-6A9B37CF05DA";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns53Set";
	rename -uid "F80EB96C-48E1-702F-5A27-DBAC8C126CB6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns53GroupId";
	rename -uid "46215C86-4044-4DE8-FB3A-FF8CD6833030";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns53GroupParts";
	rename -uid "4671699A-4FFC-4564-CA2F-E8BE4ACE0478";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak53";
	rename -uid "9D2EEAE1-40E1-31D9-9D67-ABB6EE4717BF";
createNode objectSet -n "tweakSet53";
	rename -uid "ADB3C6BB-41DB-3BD3-FC97-5CAF1A393DEA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId106";
	rename -uid "CD8947AD-47ED-EF54-F575-72BB9476D0C4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	rename -uid "850AC2AA-4E5A-6BB8-A09B-0DA1AD2F5330";
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
	setAttr -s 2 ".r";
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
connectAttr "spine_C0_root_st_profile1.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile1.o" "spine_C0_root.sq_profile";
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns37.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak37.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns37GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns37Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId74.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet37.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns38.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak38.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns38GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns38Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId76.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet38.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns36.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak36.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns36GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns36Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId72.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet36.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns39.og[0]" "mouth_C0_crv2Shape.cr";
connectAttr "tweak39.pl[0].cp[0]" "mouth_C0_crv2Shape.twl";
connectAttr "mgear_curveCns39GroupId.id" "mouth_C0_crv2Shape.iog.og[0].gid";
connectAttr "mgear_curveCns39Set.mwc" "mouth_C0_crv2Shape.iog.og[0].gco";
connectAttr "groupId78.id" "mouth_C0_crv2Shape.iog.og[1].gid";
connectAttr "tweakSet39.mwc" "mouth_C0_crv2Shape.iog.og[1].gco";
connectAttr "mgear_curveCns40.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak40.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns40GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns40Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId80.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet40.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns41.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak41.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns41GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns41Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId82.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet41.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns35.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak35.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns35GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns35Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId70.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet35.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion8.o" "neck_C0_blade_aimConstraint2.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint2.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint2.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint2.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint2.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint2.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint2.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint2.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint2.w0" "neck_C0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns34.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak34.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns34GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns34Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId68.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet34.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "legFront_R0_root_st_profile1.o" "legFront_R0_root.st_profile";
connectAttr "legFront_R0_root_sq_profile1.o" "legFront_R0_root.sq_profile";
connectAttr "mgear_curveCns44.og[0]" "footFront_R0_crvShape.cr";
connectAttr "tweak44.pl[0].cp[0]" "footFront_R0_crvShape.twl";
connectAttr "mgear_curveCns44GroupId.id" "footFront_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns44Set.mwc" "footFront_R0_crvShape.iog.og[0].gco";
connectAttr "groupId88.id" "footFront_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet44.mwc" "footFront_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns45.og[0]" "footFront_R0_Shape1.cr";
connectAttr "tweak45.pl[0].cp[0]" "footFront_R0_Shape1.twl";
connectAttr "mgear_curveCns45GroupId.id" "footFront_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns45Set.mwc" "footFront_R0_Shape1.iog.og[0].gco";
connectAttr "groupId90.id" "footFront_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet45.mwc" "footFront_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns43.og[0]" "legFront_R0_crvShape1.cr";
connectAttr "tweak43.pl[0].cp[0]" "legFront_R0_crvShape1.twl";
connectAttr "mgear_curveCns43GroupId.id" "legFront_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns43Set.mwc" "legFront_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId86.id" "legFront_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet43.mwc" "legFront_R0_crvShape1.iog.og[1].gco";
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
connectAttr "unitConversion9.o" "shoulder_R0_blade_aimConstraint2.ox";
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
connectAttr "mgear_curveCns42.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak42.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns42GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns42Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId84.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet42.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "legFront_L0_root_st_profile1.o" "legFront_L0_root.st_profile";
connectAttr "legFront_L0_root_sq_profile1.o" "legFront_L0_root.sq_profile";
connectAttr "mgear_curveCns48.og[0]" "footFront_L0_crvShape.cr";
connectAttr "tweak48.pl[0].cp[0]" "footFront_L0_crvShape.twl";
connectAttr "mgear_curveCns48GroupId.id" "footFront_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns48Set.mwc" "footFront_L0_crvShape.iog.og[0].gco";
connectAttr "groupId96.id" "footFront_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet48.mwc" "footFront_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns49.og[0]" "footFront_L0_Shape1.cr";
connectAttr "tweak49.pl[0].cp[0]" "footFront_L0_Shape1.twl";
connectAttr "mgear_curveCns49GroupId.id" "footFront_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns49Set.mwc" "footFront_L0_Shape1.iog.og[0].gco";
connectAttr "groupId98.id" "footFront_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet49.mwc" "footFront_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns47.og[0]" "legFront_L0_crvShape1.cr";
connectAttr "tweak47.pl[0].cp[0]" "legFront_L0_crvShape1.twl";
connectAttr "mgear_curveCns47GroupId.id" "legFront_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns47Set.mwc" "legFront_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId94.id" "legFront_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet47.mwc" "legFront_L0_crvShape1.iog.og[1].gco";
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
connectAttr "shoulder_L0_0_loc.t" "shoulder_L0_blade_aimConstraint2.tg[0].tt";
connectAttr "shoulder_L0_0_loc.rp" "shoulder_L0_blade_aimConstraint2.tg[0].trp";
connectAttr "shoulder_L0_0_loc.rpt" "shoulder_L0_blade_aimConstraint2.tg[0].trt"
		;
connectAttr "shoulder_L0_0_loc.pm" "shoulder_L0_blade_aimConstraint2.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint2.w0" "shoulder_L0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint2.wum";
connectAttr "unitConversion10.o" "shoulder_L0_blade_aimConstraint2.ox";
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
connectAttr "mgear_curveCns46.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak46.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns46GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns46Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId92.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet46.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion7.o" "spine_C0_blade_aimConstraint2.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint2.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint2.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint2.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint2.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint2.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint2.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint2.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint2.w0" "spine_C0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns33.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak33.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns33GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns33Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId66.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet33.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "legBack_R0_root_st_profile1.o" "legBack_R0_root.st_profile";
connectAttr "legBack_R0_root_sq_profile1.o" "legBack_R0_root.sq_profile";
connectAttr "mgear_curveCns51.og[0]" "footBack_R0_crvShape.cr";
connectAttr "tweak51.pl[0].cp[0]" "footBack_R0_crvShape.twl";
connectAttr "mgear_curveCns51GroupId.id" "footBack_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns51Set.mwc" "footBack_R0_crvShape.iog.og[0].gco";
connectAttr "groupId102.id" "footBack_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet51.mwc" "footBack_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns52.og[0]" "footBack_R0_Shape1.cr";
connectAttr "tweak52.pl[0].cp[0]" "footBack_R0_Shape1.twl";
connectAttr "mgear_curveCns52GroupId.id" "footBack_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns52Set.mwc" "footBack_R0_Shape1.iog.og[0].gco";
connectAttr "groupId104.id" "footBack_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet52.mwc" "footBack_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns50.og[0]" "legBack_R0_crvShape1.cr";
connectAttr "tweak50.pl[0].cp[0]" "legBack_R0_crvShape1.twl";
connectAttr "mgear_curveCns50GroupId.id" "legBack_R0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns50Set.mwc" "legBack_R0_crvShape1.iog.og[0].gco";
connectAttr "groupId100.id" "legBack_R0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet50.mwc" "legBack_R0_crvShape1.iog.og[1].gco";
connectAttr "legBack_L0_root_st_profile1.o" "legBack_L0_root.st_profile";
connectAttr "legBack_L0_root_sq_profile1.o" "legBack_L0_root.sq_profile";
connectAttr "mgear_curveCns54.og[0]" "footBack_L0_crvShape.cr";
connectAttr "tweak54.pl[0].cp[0]" "footBack_L0_crvShape.twl";
connectAttr "mgear_curveCns54GroupId.id" "footBack_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns54Set.mwc" "footBack_L0_crvShape.iog.og[0].gco";
connectAttr "groupId108.id" "footBack_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet54.mwc" "footBack_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns55.og[0]" "footBack_L0_Shape1.cr";
connectAttr "tweak55.pl[0].cp[0]" "footBack_L0_Shape1.twl";
connectAttr "mgear_curveCns55GroupId.id" "footBack_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns55Set.mwc" "footBack_L0_Shape1.iog.og[0].gco";
connectAttr "groupId110.id" "footBack_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet55.mwc" "footBack_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns53.og[0]" "legBack_L0_crvShape1.cr";
connectAttr "tweak53.pl[0].cp[0]" "legBack_L0_crvShape1.twl";
connectAttr "mgear_curveCns53GroupId.id" "legBack_L0_crvShape1.iog.og[0].gid";
connectAttr "mgear_curveCns53Set.mwc" "legBack_L0_crvShape1.iog.og[0].gco";
connectAttr "groupId106.id" "legBack_L0_crvShape1.iog.og[1].gid";
connectAttr "tweakSet53.mwc" "legBack_L0_crvShape1.iog.og[1].gco";
connectAttr "mgear_curveCns37GroupParts.og" "mgear_curveCns37.ip[0].ig";
connectAttr "mgear_curveCns37GroupId.id" "mgear_curveCns37.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns37.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns37.inputs[1]";
connectAttr "mgear_curveCns37GroupId.msg" "mgear_curveCns37Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns37Set.dsm"
		 -na;
connectAttr "mgear_curveCns37.msg" "mgear_curveCns37Set.ub[0]";
connectAttr "tweak37.og[0]" "mgear_curveCns37GroupParts.ig";
connectAttr "mgear_curveCns37GroupId.id" "mgear_curveCns37GroupParts.gi";
connectAttr "groupParts74.og" "tweak37.ip[0].ig";
connectAttr "groupId74.id" "tweak37.ip[0].gi";
connectAttr "groupId74.msg" "tweakSet37.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet37.dsm"
		 -na;
connectAttr "tweak37.msg" "tweakSet37.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts74.ig"
		;
connectAttr "groupId74.id" "groupParts74.gi";
connectAttr "mgear_curveCns38GroupParts.og" "mgear_curveCns38.ip[0].ig";
connectAttr "mgear_curveCns38GroupId.id" "mgear_curveCns38.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns38.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns38.inputs[1]";
connectAttr "mgear_curveCns38GroupId.msg" "mgear_curveCns38Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns38Set.dsm"
		 -na;
connectAttr "mgear_curveCns38.msg" "mgear_curveCns38Set.ub[0]";
connectAttr "tweak38.og[0]" "mgear_curveCns38GroupParts.ig";
connectAttr "mgear_curveCns38GroupId.id" "mgear_curveCns38GroupParts.gi";
connectAttr "groupParts76.og" "tweak38.ip[0].ig";
connectAttr "groupId76.id" "tweak38.ip[0].gi";
connectAttr "groupId76.msg" "tweakSet38.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet38.dsm"
		 -na;
connectAttr "tweak38.msg" "tweakSet38.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts76.ig"
		;
connectAttr "groupId76.id" "groupParts76.gi";
connectAttr "mgear_curveCns36GroupParts.og" "mgear_curveCns36.ip[0].ig";
connectAttr "mgear_curveCns36GroupId.id" "mgear_curveCns36.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns36.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns36.inputs[1]";
connectAttr "mgear_curveCns36GroupId.msg" "mgear_curveCns36Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns36Set.dsm"
		 -na;
connectAttr "mgear_curveCns36.msg" "mgear_curveCns36Set.ub[0]";
connectAttr "tweak36.og[0]" "mgear_curveCns36GroupParts.ig";
connectAttr "mgear_curveCns36GroupId.id" "mgear_curveCns36GroupParts.gi";
connectAttr "groupParts72.og" "tweak36.ip[0].ig";
connectAttr "groupId72.id" "tweak36.ip[0].gi";
connectAttr "groupId72.msg" "tweakSet36.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet36.dsm"
		 -na;
connectAttr "tweak36.msg" "tweakSet36.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts72.ig"
		;
connectAttr "groupId72.id" "groupParts72.gi";
connectAttr "mgear_curveCns39GroupParts.og" "mgear_curveCns39.ip[0].ig";
connectAttr "mgear_curveCns39GroupId.id" "mgear_curveCns39.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns39.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns39.inputs[1]";
connectAttr "mgear_curveCns39GroupId.msg" "mgear_curveCns39Set.gn" -na;
connectAttr "mouth_C0_crv2Shape.iog.og[0]" "mgear_curveCns39Set.dsm" -na;
connectAttr "mgear_curveCns39.msg" "mgear_curveCns39Set.ub[0]";
connectAttr "tweak39.og[0]" "mgear_curveCns39GroupParts.ig";
connectAttr "mgear_curveCns39GroupId.id" "mgear_curveCns39GroupParts.gi";
connectAttr "groupParts78.og" "tweak39.ip[0].ig";
connectAttr "groupId78.id" "tweak39.ip[0].gi";
connectAttr "groupId78.msg" "tweakSet39.gn" -na;
connectAttr "mouth_C0_crv2Shape.iog.og[1]" "tweakSet39.dsm" -na;
connectAttr "tweak39.msg" "tweakSet39.ub[0]";
connectAttr "mouth_C0_crv2ShapeOrig.ws" "groupParts78.ig";
connectAttr "groupId78.id" "groupParts78.gi";
connectAttr "mgear_curveCns40GroupParts.og" "mgear_curveCns40.ip[0].ig";
connectAttr "mgear_curveCns40GroupId.id" "mgear_curveCns40.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns40.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns40.inputs[1]";
connectAttr "mgear_curveCns40GroupId.msg" "mgear_curveCns40Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns40Set.dsm" -na;
connectAttr "mgear_curveCns40.msg" "mgear_curveCns40Set.ub[0]";
connectAttr "tweak40.og[0]" "mgear_curveCns40GroupParts.ig";
connectAttr "mgear_curveCns40GroupId.id" "mgear_curveCns40GroupParts.gi";
connectAttr "groupParts80.og" "tweak40.ip[0].ig";
connectAttr "groupId80.id" "tweak40.ip[0].gi";
connectAttr "groupId80.msg" "tweakSet40.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet40.dsm" -na;
connectAttr "tweak40.msg" "tweakSet40.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts80.ig";
connectAttr "groupId80.id" "groupParts80.gi";
connectAttr "mgear_curveCns41GroupParts.og" "mgear_curveCns41.ip[0].ig";
connectAttr "mgear_curveCns41GroupId.id" "mgear_curveCns41.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns41.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns41.inputs[1]";
connectAttr "mgear_curveCns41GroupId.msg" "mgear_curveCns41Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns41Set.dsm" -na;
connectAttr "mgear_curveCns41.msg" "mgear_curveCns41Set.ub[0]";
connectAttr "tweak41.og[0]" "mgear_curveCns41GroupParts.ig";
connectAttr "mgear_curveCns41GroupId.id" "mgear_curveCns41GroupParts.gi";
connectAttr "groupParts82.og" "tweak41.ip[0].ig";
connectAttr "groupId82.id" "tweak41.ip[0].gi";
connectAttr "groupId82.msg" "tweakSet41.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet41.dsm" -na;
connectAttr "tweak41.msg" "tweakSet41.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts82.ig";
connectAttr "groupId82.id" "groupParts82.gi";
connectAttr "mgear_curveCns35GroupParts.og" "mgear_curveCns35.ip[0].ig";
connectAttr "mgear_curveCns35GroupId.id" "mgear_curveCns35.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns35.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns35.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns35.inputs[2]";
connectAttr "mgear_curveCns35GroupId.msg" "mgear_curveCns35Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns35Set.dsm" -na;
connectAttr "mgear_curveCns35.msg" "mgear_curveCns35Set.ub[0]";
connectAttr "tweak35.og[0]" "mgear_curveCns35GroupParts.ig";
connectAttr "mgear_curveCns35GroupId.id" "mgear_curveCns35GroupParts.gi";
connectAttr "groupParts70.og" "tweak35.ip[0].ig";
connectAttr "groupId70.id" "tweak35.ip[0].gi";
connectAttr "groupId70.msg" "tweakSet35.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet35.dsm" -na;
connectAttr "tweak35.msg" "tweakSet35.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts70.ig";
connectAttr "groupId70.id" "groupParts70.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion8.i";
connectAttr "mgear_curveCns34GroupParts.og" "mgear_curveCns34.ip[0].ig";
connectAttr "mgear_curveCns34GroupId.id" "mgear_curveCns34.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns34.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns34.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns34.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns34.inputs[3]";
connectAttr "mgear_curveCns34GroupId.msg" "mgear_curveCns34Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns34Set.dsm" -na;
connectAttr "mgear_curveCns34.msg" "mgear_curveCns34Set.ub[0]";
connectAttr "tweak34.og[0]" "mgear_curveCns34GroupParts.ig";
connectAttr "mgear_curveCns34GroupId.id" "mgear_curveCns34GroupParts.gi";
connectAttr "groupParts68.og" "tweak34.ip[0].ig";
connectAttr "groupId68.id" "tweak34.ip[0].gi";
connectAttr "groupId68.msg" "tweakSet34.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet34.dsm" -na;
connectAttr "tweak34.msg" "tweakSet34.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts68.ig";
connectAttr "groupId68.id" "groupParts68.gi";
connectAttr "mgear_curveCns44GroupParts.og" "mgear_curveCns44.ip[0].ig";
connectAttr "mgear_curveCns44GroupId.id" "mgear_curveCns44.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns44.inputs[0]";
connectAttr "footFront_R0_0_loc.wm" "mgear_curveCns44.inputs[1]";
connectAttr "footFront_R0_1_loc.wm" "mgear_curveCns44.inputs[2]";
connectAttr "mgear_curveCns44GroupId.msg" "mgear_curveCns44Set.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[0]" "mgear_curveCns44Set.dsm" -na;
connectAttr "mgear_curveCns44.msg" "mgear_curveCns44Set.ub[0]";
connectAttr "tweak44.og[0]" "mgear_curveCns44GroupParts.ig";
connectAttr "mgear_curveCns44GroupId.id" "mgear_curveCns44GroupParts.gi";
connectAttr "groupParts88.og" "tweak44.ip[0].ig";
connectAttr "groupId88.id" "tweak44.ip[0].gi";
connectAttr "groupId88.msg" "tweakSet44.gn" -na;
connectAttr "footFront_R0_crvShape.iog.og[1]" "tweakSet44.dsm" -na;
connectAttr "tweak44.msg" "tweakSet44.ub[0]";
connectAttr "footFront_R0_crvShapeOrig.ws" "groupParts88.ig";
connectAttr "groupId88.id" "groupParts88.gi";
connectAttr "mgear_curveCns45GroupParts.og" "mgear_curveCns45.ip[0].ig";
connectAttr "mgear_curveCns45GroupId.id" "mgear_curveCns45.ip[0].gi";
connectAttr "footFront_R0_root.wm" "mgear_curveCns45.inputs[0]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns45.inputs[1]";
connectAttr "footFront_R0_outpivot.wm" "mgear_curveCns45.inputs[2]";
connectAttr "footFront_R0_heel.wm" "mgear_curveCns45.inputs[3]";
connectAttr "footFront_R0_inpivot.wm" "mgear_curveCns45.inputs[4]";
connectAttr "mgear_curveCns45GroupId.msg" "mgear_curveCns45Set.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[0]" "mgear_curveCns45Set.dsm" -na;
connectAttr "mgear_curveCns45.msg" "mgear_curveCns45Set.ub[0]";
connectAttr "tweak45.og[0]" "mgear_curveCns45GroupParts.ig";
connectAttr "mgear_curveCns45GroupId.id" "mgear_curveCns45GroupParts.gi";
connectAttr "groupParts90.og" "tweak45.ip[0].ig";
connectAttr "groupId90.id" "tweak45.ip[0].gi";
connectAttr "groupId90.msg" "tweakSet45.gn" -na;
connectAttr "footFront_R0_Shape1.iog.og[1]" "tweakSet45.dsm" -na;
connectAttr "tweak45.msg" "tweakSet45.ub[0]";
connectAttr "footFront_R0_Shape1Orig.ws" "groupParts90.ig";
connectAttr "groupId90.id" "groupParts90.gi";
connectAttr "mgear_curveCns43GroupParts.og" "mgear_curveCns43.ip[0].ig";
connectAttr "mgear_curveCns43GroupId.id" "mgear_curveCns43.ip[0].gi";
connectAttr "legFront_R0_root.wm" "mgear_curveCns43.inputs[0]";
connectAttr "legFront_R0_knee.wm" "mgear_curveCns43.inputs[1]";
connectAttr "legFront_R0_ankle.wm" "mgear_curveCns43.inputs[2]";
connectAttr "legFront_R0_foot.wm" "mgear_curveCns43.inputs[3]";
connectAttr "legFront_R0_eff.wm" "mgear_curveCns43.inputs[4]";
connectAttr "mgear_curveCns43GroupId.msg" "mgear_curveCns43Set.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[0]" "mgear_curveCns43Set.dsm" -na;
connectAttr "mgear_curveCns43.msg" "mgear_curveCns43Set.ub[0]";
connectAttr "tweak43.og[0]" "mgear_curveCns43GroupParts.ig";
connectAttr "mgear_curveCns43GroupId.id" "mgear_curveCns43GroupParts.gi";
connectAttr "groupParts86.og" "tweak43.ip[0].ig";
connectAttr "groupId86.id" "tweak43.ip[0].gi";
connectAttr "groupId86.msg" "tweakSet43.gn" -na;
connectAttr "legFront_R0_crvShape1.iog.og[1]" "tweakSet43.dsm" -na;
connectAttr "tweak43.msg" "tweakSet43.ub[0]";
connectAttr "legFront_R0_crvShape1Orig.ws" "groupParts86.ig";
connectAttr "groupId86.id" "groupParts86.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion9.i";
connectAttr "mgear_curveCns42GroupParts.og" "mgear_curveCns42.ip[0].ig";
connectAttr "mgear_curveCns42GroupId.id" "mgear_curveCns42.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns42.inputs[0]";
connectAttr "shoulder_R0_0_loc.wm" "mgear_curveCns42.inputs[1]";
connectAttr "mgear_curveCns42GroupId.msg" "mgear_curveCns42Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns42Set.dsm" -na;
connectAttr "mgear_curveCns42.msg" "mgear_curveCns42Set.ub[0]";
connectAttr "tweak42.og[0]" "mgear_curveCns42GroupParts.ig";
connectAttr "mgear_curveCns42GroupId.id" "mgear_curveCns42GroupParts.gi";
connectAttr "groupParts84.og" "tweak42.ip[0].ig";
connectAttr "groupId84.id" "tweak42.ip[0].gi";
connectAttr "groupId84.msg" "tweakSet42.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet42.dsm" -na;
connectAttr "tweak42.msg" "tweakSet42.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts84.ig";
connectAttr "groupId84.id" "groupParts84.gi";
connectAttr "mgear_curveCns48GroupParts.og" "mgear_curveCns48.ip[0].ig";
connectAttr "mgear_curveCns48GroupId.id" "mgear_curveCns48.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns48.inputs[0]";
connectAttr "footFront_L0_0_loc.wm" "mgear_curveCns48.inputs[1]";
connectAttr "footFront_L0_1_loc.wm" "mgear_curveCns48.inputs[2]";
connectAttr "mgear_curveCns48GroupId.msg" "mgear_curveCns48Set.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[0]" "mgear_curveCns48Set.dsm" -na;
connectAttr "mgear_curveCns48.msg" "mgear_curveCns48Set.ub[0]";
connectAttr "tweak48.og[0]" "mgear_curveCns48GroupParts.ig";
connectAttr "mgear_curveCns48GroupId.id" "mgear_curveCns48GroupParts.gi";
connectAttr "groupParts96.og" "tweak48.ip[0].ig";
connectAttr "groupId96.id" "tweak48.ip[0].gi";
connectAttr "groupId96.msg" "tweakSet48.gn" -na;
connectAttr "footFront_L0_crvShape.iog.og[1]" "tweakSet48.dsm" -na;
connectAttr "tweak48.msg" "tweakSet48.ub[0]";
connectAttr "footFront_L0_crvShapeOrig.ws" "groupParts96.ig";
connectAttr "groupId96.id" "groupParts96.gi";
connectAttr "mgear_curveCns49GroupParts.og" "mgear_curveCns49.ip[0].ig";
connectAttr "mgear_curveCns49GroupId.id" "mgear_curveCns49.ip[0].gi";
connectAttr "footFront_L0_root.wm" "mgear_curveCns49.inputs[0]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns49.inputs[1]";
connectAttr "footFront_L0_outpivot.wm" "mgear_curveCns49.inputs[2]";
connectAttr "footFront_L0_heel.wm" "mgear_curveCns49.inputs[3]";
connectAttr "footFront_L0_inpivot.wm" "mgear_curveCns49.inputs[4]";
connectAttr "mgear_curveCns49GroupId.msg" "mgear_curveCns49Set.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[0]" "mgear_curveCns49Set.dsm" -na;
connectAttr "mgear_curveCns49.msg" "mgear_curveCns49Set.ub[0]";
connectAttr "tweak49.og[0]" "mgear_curveCns49GroupParts.ig";
connectAttr "mgear_curveCns49GroupId.id" "mgear_curveCns49GroupParts.gi";
connectAttr "groupParts98.og" "tweak49.ip[0].ig";
connectAttr "groupId98.id" "tweak49.ip[0].gi";
connectAttr "groupId98.msg" "tweakSet49.gn" -na;
connectAttr "footFront_L0_Shape1.iog.og[1]" "tweakSet49.dsm" -na;
connectAttr "tweak49.msg" "tweakSet49.ub[0]";
connectAttr "footFront_L0_Shape1Orig.ws" "groupParts98.ig";
connectAttr "groupId98.id" "groupParts98.gi";
connectAttr "mgear_curveCns47GroupParts.og" "mgear_curveCns47.ip[0].ig";
connectAttr "mgear_curveCns47GroupId.id" "mgear_curveCns47.ip[0].gi";
connectAttr "legFront_L0_root.wm" "mgear_curveCns47.inputs[0]";
connectAttr "legFront_L0_knee.wm" "mgear_curveCns47.inputs[1]";
connectAttr "legFront_L0_ankle.wm" "mgear_curveCns47.inputs[2]";
connectAttr "legFront_L0_foot.wm" "mgear_curveCns47.inputs[3]";
connectAttr "legFront_L0_eff.wm" "mgear_curveCns47.inputs[4]";
connectAttr "mgear_curveCns47GroupId.msg" "mgear_curveCns47Set.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[0]" "mgear_curveCns47Set.dsm" -na;
connectAttr "mgear_curveCns47.msg" "mgear_curveCns47Set.ub[0]";
connectAttr "tweak47.og[0]" "mgear_curveCns47GroupParts.ig";
connectAttr "mgear_curveCns47GroupId.id" "mgear_curveCns47GroupParts.gi";
connectAttr "groupParts94.og" "tweak47.ip[0].ig";
connectAttr "groupId94.id" "tweak47.ip[0].gi";
connectAttr "groupId94.msg" "tweakSet47.gn" -na;
connectAttr "legFront_L0_crvShape1.iog.og[1]" "tweakSet47.dsm" -na;
connectAttr "tweak47.msg" "tweakSet47.ub[0]";
connectAttr "legFront_L0_crvShape1Orig.ws" "groupParts94.ig";
connectAttr "groupId94.id" "groupParts94.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion10.i";
connectAttr "mgear_curveCns46GroupParts.og" "mgear_curveCns46.ip[0].ig";
connectAttr "mgear_curveCns46GroupId.id" "mgear_curveCns46.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns46.inputs[0]";
connectAttr "shoulder_L0_0_loc.wm" "mgear_curveCns46.inputs[1]";
connectAttr "mgear_curveCns46GroupId.msg" "mgear_curveCns46Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns46Set.dsm" -na;
connectAttr "mgear_curveCns46.msg" "mgear_curveCns46Set.ub[0]";
connectAttr "tweak46.og[0]" "mgear_curveCns46GroupParts.ig";
connectAttr "mgear_curveCns46GroupId.id" "mgear_curveCns46GroupParts.gi";
connectAttr "groupParts92.og" "tweak46.ip[0].ig";
connectAttr "groupId92.id" "tweak46.ip[0].gi";
connectAttr "groupId92.msg" "tweakSet46.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet46.dsm" -na;
connectAttr "tweak46.msg" "tweakSet46.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts92.ig";
connectAttr "groupId92.id" "groupParts92.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion7.i";
connectAttr "mgear_curveCns33GroupParts.og" "mgear_curveCns33.ip[0].ig";
connectAttr "mgear_curveCns33GroupId.id" "mgear_curveCns33.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns33.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns33.inputs[1]";
connectAttr "mgear_curveCns33GroupId.msg" "mgear_curveCns33Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns33Set.dsm" -na;
connectAttr "mgear_curveCns33.msg" "mgear_curveCns33Set.ub[0]";
connectAttr "tweak33.og[0]" "mgear_curveCns33GroupParts.ig";
connectAttr "mgear_curveCns33GroupId.id" "mgear_curveCns33GroupParts.gi";
connectAttr "groupParts66.og" "tweak33.ip[0].ig";
connectAttr "groupId66.id" "tweak33.ip[0].gi";
connectAttr "groupId66.msg" "tweakSet33.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet33.dsm" -na;
connectAttr "tweak33.msg" "tweakSet33.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts66.ig";
connectAttr "groupId66.id" "groupParts66.gi";
connectAttr "mgear_curveCns51GroupParts.og" "mgear_curveCns51.ip[0].ig";
connectAttr "mgear_curveCns51GroupId.id" "mgear_curveCns51.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns51.inputs[0]";
connectAttr "footBack_R0_0_loc.wm" "mgear_curveCns51.inputs[1]";
connectAttr "footBack_R0_1_loc.wm" "mgear_curveCns51.inputs[2]";
connectAttr "mgear_curveCns51GroupId.msg" "mgear_curveCns51Set.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[0]" "mgear_curveCns51Set.dsm" -na;
connectAttr "mgear_curveCns51.msg" "mgear_curveCns51Set.ub[0]";
connectAttr "tweak51.og[0]" "mgear_curveCns51GroupParts.ig";
connectAttr "mgear_curveCns51GroupId.id" "mgear_curveCns51GroupParts.gi";
connectAttr "groupParts102.og" "tweak51.ip[0].ig";
connectAttr "groupId102.id" "tweak51.ip[0].gi";
connectAttr "groupId102.msg" "tweakSet51.gn" -na;
connectAttr "footBack_R0_crvShape.iog.og[1]" "tweakSet51.dsm" -na;
connectAttr "tweak51.msg" "tweakSet51.ub[0]";
connectAttr "footBack_R0_crvShapeOrig.ws" "groupParts102.ig";
connectAttr "groupId102.id" "groupParts102.gi";
connectAttr "mgear_curveCns52GroupParts.og" "mgear_curveCns52.ip[0].ig";
connectAttr "mgear_curveCns52GroupId.id" "mgear_curveCns52.ip[0].gi";
connectAttr "footBack_R0_root.wm" "mgear_curveCns52.inputs[0]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns52.inputs[1]";
connectAttr "footBack_R0_outpivot.wm" "mgear_curveCns52.inputs[2]";
connectAttr "footBack_R0_heel.wm" "mgear_curveCns52.inputs[3]";
connectAttr "footBack_R0_inpivot.wm" "mgear_curveCns52.inputs[4]";
connectAttr "mgear_curveCns52GroupId.msg" "mgear_curveCns52Set.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[0]" "mgear_curveCns52Set.dsm" -na;
connectAttr "mgear_curveCns52.msg" "mgear_curveCns52Set.ub[0]";
connectAttr "tweak52.og[0]" "mgear_curveCns52GroupParts.ig";
connectAttr "mgear_curveCns52GroupId.id" "mgear_curveCns52GroupParts.gi";
connectAttr "groupParts104.og" "tweak52.ip[0].ig";
connectAttr "groupId104.id" "tweak52.ip[0].gi";
connectAttr "groupId104.msg" "tweakSet52.gn" -na;
connectAttr "footBack_R0_Shape1.iog.og[1]" "tweakSet52.dsm" -na;
connectAttr "tweak52.msg" "tweakSet52.ub[0]";
connectAttr "footBack_R0_Shape1Orig.ws" "groupParts104.ig";
connectAttr "groupId104.id" "groupParts104.gi";
connectAttr "mgear_curveCns50GroupParts.og" "mgear_curveCns50.ip[0].ig";
connectAttr "mgear_curveCns50GroupId.id" "mgear_curveCns50.ip[0].gi";
connectAttr "legBack_R0_root.wm" "mgear_curveCns50.inputs[0]";
connectAttr "legBack_R0_knee.wm" "mgear_curveCns50.inputs[1]";
connectAttr "legBack_R0_ankle.wm" "mgear_curveCns50.inputs[2]";
connectAttr "legBack_R0_foot.wm" "mgear_curveCns50.inputs[3]";
connectAttr "legBack_R0_eff.wm" "mgear_curveCns50.inputs[4]";
connectAttr "mgear_curveCns50GroupId.msg" "mgear_curveCns50Set.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[0]" "mgear_curveCns50Set.dsm" -na;
connectAttr "mgear_curveCns50.msg" "mgear_curveCns50Set.ub[0]";
connectAttr "tweak50.og[0]" "mgear_curveCns50GroupParts.ig";
connectAttr "mgear_curveCns50GroupId.id" "mgear_curveCns50GroupParts.gi";
connectAttr "groupParts100.og" "tweak50.ip[0].ig";
connectAttr "groupId100.id" "tweak50.ip[0].gi";
connectAttr "groupId100.msg" "tweakSet50.gn" -na;
connectAttr "legBack_R0_crvShape1.iog.og[1]" "tweakSet50.dsm" -na;
connectAttr "tweak50.msg" "tweakSet50.ub[0]";
connectAttr "legBack_R0_crvShape1Orig.ws" "groupParts100.ig";
connectAttr "groupId100.id" "groupParts100.gi";
connectAttr "mgear_curveCns54GroupParts.og" "mgear_curveCns54.ip[0].ig";
connectAttr "mgear_curveCns54GroupId.id" "mgear_curveCns54.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns54.inputs[0]";
connectAttr "footBack_L0_0_loc.wm" "mgear_curveCns54.inputs[1]";
connectAttr "footBack_L0_1_loc.wm" "mgear_curveCns54.inputs[2]";
connectAttr "mgear_curveCns54GroupId.msg" "mgear_curveCns54Set.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[0]" "mgear_curveCns54Set.dsm" -na;
connectAttr "mgear_curveCns54.msg" "mgear_curveCns54Set.ub[0]";
connectAttr "tweak54.og[0]" "mgear_curveCns54GroupParts.ig";
connectAttr "mgear_curveCns54GroupId.id" "mgear_curveCns54GroupParts.gi";
connectAttr "groupParts108.og" "tweak54.ip[0].ig";
connectAttr "groupId108.id" "tweak54.ip[0].gi";
connectAttr "groupId108.msg" "tweakSet54.gn" -na;
connectAttr "footBack_L0_crvShape.iog.og[1]" "tweakSet54.dsm" -na;
connectAttr "tweak54.msg" "tweakSet54.ub[0]";
connectAttr "footBack_L0_crvShapeOrig.ws" "groupParts108.ig";
connectAttr "groupId108.id" "groupParts108.gi";
connectAttr "mgear_curveCns55GroupParts.og" "mgear_curveCns55.ip[0].ig";
connectAttr "mgear_curveCns55GroupId.id" "mgear_curveCns55.ip[0].gi";
connectAttr "footBack_L0_root.wm" "mgear_curveCns55.inputs[0]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns55.inputs[1]";
connectAttr "footBack_L0_outpivot.wm" "mgear_curveCns55.inputs[2]";
connectAttr "footBack_L0_heel.wm" "mgear_curveCns55.inputs[3]";
connectAttr "footBack_L0_inpivot.wm" "mgear_curveCns55.inputs[4]";
connectAttr "mgear_curveCns55GroupId.msg" "mgear_curveCns55Set.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[0]" "mgear_curveCns55Set.dsm" -na;
connectAttr "mgear_curveCns55.msg" "mgear_curveCns55Set.ub[0]";
connectAttr "tweak55.og[0]" "mgear_curveCns55GroupParts.ig";
connectAttr "mgear_curveCns55GroupId.id" "mgear_curveCns55GroupParts.gi";
connectAttr "groupParts110.og" "tweak55.ip[0].ig";
connectAttr "groupId110.id" "tweak55.ip[0].gi";
connectAttr "groupId110.msg" "tweakSet55.gn" -na;
connectAttr "footBack_L0_Shape1.iog.og[1]" "tweakSet55.dsm" -na;
connectAttr "tweak55.msg" "tweakSet55.ub[0]";
connectAttr "footBack_L0_Shape1Orig.ws" "groupParts110.ig";
connectAttr "groupId110.id" "groupParts110.gi";
connectAttr "mgear_curveCns53GroupParts.og" "mgear_curveCns53.ip[0].ig";
connectAttr "mgear_curveCns53GroupId.id" "mgear_curveCns53.ip[0].gi";
connectAttr "legBack_L0_root.wm" "mgear_curveCns53.inputs[0]";
connectAttr "legBack_L0_knee.wm" "mgear_curveCns53.inputs[1]";
connectAttr "legBack_L0_ankle.wm" "mgear_curveCns53.inputs[2]";
connectAttr "legBack_L0_foot.wm" "mgear_curveCns53.inputs[3]";
connectAttr "legBack_L0_eff.wm" "mgear_curveCns53.inputs[4]";
connectAttr "mgear_curveCns53GroupId.msg" "mgear_curveCns53Set.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[0]" "mgear_curveCns53Set.dsm" -na;
connectAttr "mgear_curveCns53.msg" "mgear_curveCns53Set.ub[0]";
connectAttr "tweak53.og[0]" "mgear_curveCns53GroupParts.ig";
connectAttr "mgear_curveCns53GroupId.id" "mgear_curveCns53GroupParts.gi";
connectAttr "groupParts106.og" "tweak53.ip[0].ig";
connectAttr "groupId106.id" "tweak53.ip[0].gi";
connectAttr "groupId106.msg" "tweakSet53.gn" -na;
connectAttr "legBack_L0_crvShape1.iog.og[1]" "tweakSet53.dsm" -na;
connectAttr "tweak53.msg" "tweakSet53.ub[0]";
connectAttr "legBack_L0_crvShape1Orig.ws" "groupParts106.ig";
connectAttr "groupId106.id" "groupParts106.gi";
// End of quadruped.ma
