//Maya ASCII 2015ff05 scene
//Name: biped_guide.ma
//Last modified: Sun, Nov 20, 2016 11:44:39 PM
//Codeset: 1252
requires maya "2015ff05";
requires -nodeType "mgear_curveCns" "mgear_solvers" "1.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201503261530-955654-1";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -n "biped_guide";
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
	setAttr ".L_color_ik" 5;
	setAttr ".R_color_fk" 30;
	setAttr ".R_color_ik" 9;
	setAttr ".C_color_fk" 13;
	setAttr ".C_color_ik" 4;
	setAttr ".joint_rig" yes;
	setAttr ".synoptic" -type "string" "";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "mc";
	setAttr ".date" -type "string" "2016-10-08 23:00:10.329000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.0.2";
createNode transform -n "controllers_org" -p "biped_guide";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "local_C0_root" -p "biped_guide";
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "local_C0_rootShape" -p "local_C0_root";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" 0 11.390533694690754 0.19144303592045675 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.9535389960287539 1.9535389960287499 1.9535389960287539 ;
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "body_C0_root7Shape" -p "body_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "body_C0_root8Shape" -p "body_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "body_C0_root9Shape" -p "body_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -1.3877787807814457e-017 2.6645352591003757e-015 -1.2325951644078309e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410492 0.51189149642410448 0.51189149642410359 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_root7Shape" -p "spine_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_root8Shape" -p "spine_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_root9Shape" -p "spine_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" 2.3760066881565169 -1.7208456881689926e-015 9.8607613152626476e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999944 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_eff7Shape" -p "spine_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_eff8Shape" -p "spine_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_eff9Shape" -p "spine_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "spine_C0_eff9_0crvShape" -p "spine_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "spine_C0_eff9_1crvShape" -p "spine_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 3.2578484988603424 0.60394549966678457 -1.9764781265571725 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.88775990675476157 0.88775990675475969 0.88775990675475858 ;
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spineUI_C0_root7Shape" -p "spineUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spineUI_C0_root8Shape" -p "spineUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spineUI_C0_root9Shape" -p "spineUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" 1.7395848890977437 -0.016853043661003181 -0.11673327753265002 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000013 0.99999999999999889 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_root7Shape" -p "shoulder_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_root8Shape" -p "shoulder_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_root9Shape" -p "shoulder_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285644429 -0.91350954729966916 -1.5239746815175867 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999722 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip7Shape" -p "shoulder_L0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_tip8Shape" -p "shoulder_L0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_tip9Shape" -p "shoulder_L0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip9_0crvShape" -p "shoulder_L0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip9_1crvShape" -p "shoulder_L0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 1.4210854715202004e-014 -1.1102230246251565e-016 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386933 44.411212983179922 -5.4710434405384314 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999856 0.99999999999999967 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_root7Shape" -p "arm_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_root8Shape" -p "arm_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_root9Shape" -p "arm_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323381 7.1054273576010019e-015 0.078976790252909934 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784274 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow7Shape" -p "arm_L0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_elbow8Shape" -p "arm_L0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_elbow9Shape" -p "arm_L0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow9_0crvShape" -p "arm_L0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow9_1crvShape" -p "arm_L0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496801 -5.3290705182007514e-015 -0.11960611218230502 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist7Shape" -p "arm_L0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_wrist8Shape" -p "arm_L0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_wrist9Shape" -p "arm_L0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist9_0crvShape" -p "arm_L0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist9_1crvShape" -p "arm_L0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308268 3.5527136788005009e-015 1.5265566588595902e-016 ;
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
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_eff7Shape" -p "arm_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_eff8Shape" -p "arm_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_eff9Shape" -p "arm_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_eff9_0crvShape" -p "arm_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_eff9_1crvShape" -p "arm_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" -1.2124561875008162 0.5607311476451855 -0.29276117198398854 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1.0000000000000007 ;
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "armUI_L0_rootShape" -p "armUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_L0_root7Shape" -p "armUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_L0_root8Shape" -p "armUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_L0_root9Shape" -p "armUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -1.0556240028445774 -0.075350553640966211 0.3529622528885028 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008864455 93.717381466937297 86.467960127478165 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716886 0.30838721081716897 0.30838721081716902 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_root7Shape" -p "meta_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_root8Shape" -p "meta_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_root9Shape" -p "meta_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617696 -7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc7Shape" -p "meta_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_0_loc8Shape" -p "meta_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_0_loc9Shape" -p "meta_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc9_0crvShape" -p "meta_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc9_1crvShape" -p "meta_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618273 1.4210854715202004e-014 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc7Shape" -p "meta_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_1_loc8Shape" -p "meta_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_1_loc9Shape" -p "meta_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc9_0crvShape" -p "meta_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc9_1crvShape" -p "meta_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618539 0 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc7Shape" -p "meta_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_2_loc8Shape" -p "meta_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_2_loc9Shape" -p "meta_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc9_0crvShape" -p "meta_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc9_1crvShape" -p "meta_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 0.27518484001103527 -0.17360051577789193 2.4946799341790182 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878606643 -68.587073855452161 -5.8163374181255465 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.292966824566179 1.2929668245661807 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_root7Shape" -p "finger_L3_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_root8Shape" -p "finger_L3_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_root9Shape" -p "finger_L3_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830562822 1.0658141036401503e-014 -1.5543122344752192e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc7Shape" -p "finger_L3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_0_loc8Shape" -p "finger_L3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_0_loc9Shape" -p "finger_L3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc9_0crvShape" -p "finger_L3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc9_1crvShape" -p "finger_L3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070874352 -1.0658141036401503e-014 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc7Shape" -p "finger_L3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_1_loc8Shape" -p "finger_L3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_1_loc9Shape" -p "finger_L3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc9_0crvShape" -p "finger_L3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc9_1crvShape" -p "finger_L3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259195055 3.5527136788005009e-015 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000011 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc7Shape" -p "finger_L3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_2_loc8Shape" -p "finger_L3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_2_loc9Shape" -p "finger_L3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc9_0crvShape" -p "finger_L3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc9_1crvShape" -p "finger_L3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
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
createNode aimConstraint -n "finger_L3_blade_aimConstraint3" -p "finger_L3_blade";
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
createNode pointConstraint -n "finger_L3_blade_pointConstraint3" -p "finger_L3_blade";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 7.1054273576010019e-015 
		-2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754568 -29.032786855763568 1.4804327725025985 ;
	setAttr ".r" -type "double3" -7.579166539411565 -14.304244378904277 49.348303523761153 ;
	setAttr ".s" -type "double3" 2.632098310678614 2.6320983106786024 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
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
	setAttr ".t" -type "double3" 0.21404201232122189 -0.17620518664717366 2.8414845756647438 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121380087 -82.086889237978156 -14.829711404971786 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_root7Shape" -p "finger_L2_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_root8Shape" -p "finger_L2_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_root9Shape" -p "finger_L2_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406929 -2.4868995751603507e-014 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc7Shape" -p "finger_L2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_0_loc8Shape" -p "finger_L2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_0_loc9Shape" -p "finger_L2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc9_0crvShape" -p "finger_L2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc9_1crvShape" -p "finger_L2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176 7.1054273576010019e-015 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc7Shape" -p "finger_L2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_1_loc8Shape" -p "finger_L2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_1_loc9Shape" -p "finger_L2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc9_0crvShape" -p "finger_L2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc9_1crvShape" -p "finger_L2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914555 -3.5527136788005009e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000004 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc7Shape" -p "finger_L2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_2_loc8Shape" -p "finger_L2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_2_loc9Shape" -p "finger_L2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc9_0crvShape" -p "finger_L2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc9_1crvShape" -p "finger_L2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
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
createNode aimConstraint -n "finger_L2_blade_aimConstraint3" -p "finger_L2_blade";
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
createNode pointConstraint -n "finger_L2_blade_pointConstraint3" -p "finger_L2_blade";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -3.5527136788005009e-015 
		-2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309171 -29.023661369441875 1.4173349723022832 ;
	setAttr ".r" -type "double3" -0.54140613098245327 -1.5904804996592219 47.737641631363743 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.632098310678602 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
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
	setAttr ".t" -type "double3" -0.0077643969605953878 -0.123584066967247 2.9483952421545716 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870185 -79.977014017420899 -112.77222628638027 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661803 1.2929668245661803 1.2929668245661807 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_root7Shape" -p "finger_L1_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_root8Shape" -p "finger_L1_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_root9Shape" -p "finger_L1_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000018 -1.0658141036401503e-014 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc7Shape" -p "finger_L1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_0_loc8Shape" -p "finger_L1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_0_loc9Shape" -p "finger_L1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc9_0crvShape" -p "finger_L1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc9_1crvShape" -p "finger_L1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414017196 1.4210854715202004e-014 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc7Shape" -p "finger_L1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_1_loc8Shape" -p "finger_L1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_1_loc9Shape" -p "finger_L1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc9_0crvShape" -p "finger_L1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc9_1crvShape" -p "finger_L1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 -7.1054273576010019e-015 1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc7Shape" -p "finger_L1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_2_loc8Shape" -p "finger_L1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_2_loc9Shape" -p "finger_L1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc9_0crvShape" -p "finger_L1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc9_1crvShape" -p "finger_L1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999944 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
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
createNode aimConstraint -n "finger_L1_blade_aimConstraint3" -p "finger_L1_blade";
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
createNode pointConstraint -n "finger_L1_blade_pointConstraint3" -p "finger_L1_blade";
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
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-015 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153198 -28.040620010901257 1.1418187531115904 ;
	setAttr ".r" -type "double3" 5.8484943948517749 9.9768879508783765 54.111347352877793 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786016 2.6320983106786091 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
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
createNode aimConstraint -n "meta_L0_blade_aimConstraint3" -p "meta_L0_blade";
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
createNode pointConstraint -n "meta_L0_blade_pointConstraint3" -p "meta_L0_blade";
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
	setAttr ".rst" -type "double3" -8.8817841970012523e-016 0 -5.3290705182007514e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400833 -38.076493243285462 11.714163621935104 ;
	setAttr ".r" -type "double3" -81.59564568243151 -44.654258545704785 89.275820115296455 ;
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041202 3.403215794704129 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
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
	setAttr ".t" -type "double3" 0.16562611832586205 -0.22654222078975295 0.11369679418112533 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -120.73252624368615 -40.113048083815123 -140.23760680970571 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6654124751949606 1.6654124751949591 1.6654124751949602 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_root7Shape" -p "thumb_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_root8Shape" -p "thumb_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_root9Shape" -p "thumb_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469851 0.0024095775966914701 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060869 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc7Shape" -p "thumb_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc8Shape" -p "thumb_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_0_loc9Shape" -p "thumb_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc9_0crvShape" -p "thumb_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc9_1crvShape" -p "thumb_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145521966 -3.5527136788005009e-015 1.7763568394002505e-014 ;
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
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc7Shape" -p "thumb_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc8Shape" -p "thumb_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_1_loc9Shape" -p "thumb_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc9_0crvShape" -p "thumb_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc9_1crvShape" -p "thumb_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5948211491551163 8.8817841970012523e-016 0 ;
	setAttr -k off -cb on ".tx";
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
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc7Shape" -p "thumb_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc8Shape" -p "thumb_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_2_loc9Shape" -p "thumb_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc9_0crvShape" -p "thumb_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc9_1crvShape" -p "thumb_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.99924748511697636 0 0
		0 0.33308249503899212 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint3" -p "thumb_L0_blade";
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
createNode pointConstraint -n "thumb_L0_blade_pointConstraint3" -p "thumb_L0_blade";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 3.5527136788005009e-015 -3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688556 -7.1018915006055634 17.729458649684073 ;
	setAttr ".r" -type "double3" -124.44302205362696 63.100734454449288 -77.281354162701362 ;
	setAttr ".s" -type "double3" 2.0434672163157299 2.043467216315721 2.0434672163157268 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
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
	setAttr ".t" -type "double3" -0.1840372367976304 -0.30586006047061431 2.7614233959505672 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808372 -71.606679450096095 -133.79382708612891 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661805 1.2929668245661816 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_root7Shape" -p "finger_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_root8Shape" -p "finger_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_root9Shape" -p "finger_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000053 3.5527136788005009e-015 4.4408920985006262e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc7Shape" -p "finger_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_0_loc8Shape" -p "finger_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_0_loc9Shape" -p "finger_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc9_0crvShape" -p "finger_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc9_1crvShape" -p "finger_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080926364 -3.5527136788005009e-015 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc7Shape" -p "finger_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_1_loc8Shape" -p "finger_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_1_loc9Shape" -p "finger_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc9_0crvShape" -p "finger_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc9_1crvShape" -p "finger_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392369608 -7.1054273576010019e-015 -3.5527136788005009e-015 ;
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
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc7Shape" -p "finger_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_2_loc8Shape" -p "finger_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_2_loc9Shape" -p "finger_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc9_0crvShape" -p "finger_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc9_1crvShape" -p "finger_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
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
createNode aimConstraint -n "finger_L0_blade_aimConstraint3" -p "finger_L0_blade";
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
createNode pointConstraint -n "finger_L0_blade_pointConstraint3" -p "finger_L0_blade";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -3.5527136788005009e-015 
		1.3322676295501878e-015 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713105 -27.336008057181012 2.4648652761320697 ;
	setAttr ".r" -type "double3" 9.1654334880161521 22.111176212559393 57.120615095544132 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786002 2.6320983106786064 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200365 -11.862061807473035 1.156441220564852 ;
	setAttr ".r" -type "double3" -2.1534408611045475 -4.1959370793366988 45.437740049298213 ;
	setAttr ".s" -type "double3" 1.0495082267377434 1.0495082267377389 1.0495082267377409 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.999999999999997 0.99999999999999822 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
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
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint3" -p "shoulder_L0_blade";
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
	setAttr ".o" -type "double3" 90 179.99999999999974 180.00000000000011 ;
	setAttr ".rsrr" -type "double3" 23.38626228647243 122.53864021838235 110.03040021520718 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint3" -p "shoulder_L0_blade";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 1.9081958235744878e-017 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509838 0.0092761897382756999 0.11673327753265013 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377376 1.049508226737738 ;
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
createNode transform -n "neck_C0_root" -p "spine_C0_eff";
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
	setAttr ".t" -type "double3" 2.2667429610648515 0.53748181085566271 -4.2147015411630233e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -180 -7.0622500768802529e-031 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.59839228104243436 0.59839228104243181 0.59839228104243136 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_root7Shape" -p "neck_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_root8Shape" -p "neck_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_root9Shape" -p "neck_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -0.66811733981641308 2.4674946259578086 -4.5053279032235316e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999811 0.99999999999999778 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_neck7Shape" -p "neck_C0_neck";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_neck8Shape" -p "neck_C0_neck";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_neck9Shape" -p "neck_C0_neck";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_neck9_0crvShape" -p "neck_C0_neck";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_neck9_1crvShape" -p "neck_C0_neck";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 8.3266726846886741e-017 0.10000000000002984 -1.2246467991478089e-017 ;
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
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_head7Shape" -p "neck_C0_head";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_head8Shape" -p "neck_C0_head";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_head9Shape" -p "neck_C0_head";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_head9_0crvShape" -p "neck_C0_head";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_head9_1crvShape" -p "neck_C0_head";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 1.1657341758564144e-015 3.074620997828184 -5.1714255998345906e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_eff7Shape" -p "neck_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_eff8Shape" -p "neck_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_eff9Shape" -p "neck_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_eff9_0crvShape" -p "neck_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_eff9_1crvShape" -p "neck_C0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 2.0261570199409107e-015 1.3604681763869877 3.8724144241713499e-016 ;
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
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "faceUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "faceUI_C0_rootShape" -p "faceUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "faceUI_C0_root7Shape" -p "faceUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "faceUI_C0_root8Shape" -p "faceUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "faceUI_C0_root9Shape" -p "faceUI_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.6042284408449632e-016 -2.1316282072803006e-014 1.7723706024535412e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009501 0.95913545105009324 0.95913545105008979 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_root7Shape" -p "mouth_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_root8Shape" -p "mouth_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_root9Shape" -p "mouth_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -7.2428430311320054e-016 -0.62123610319594391 1.8022590188867595 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 1.0000000000000002 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter7Shape" -p "mouth_C0_rotcenter";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter8Shape" -p "mouth_C0_rotcenter";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_rotcenter9Shape" -p "mouth_C0_rotcenter";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter9_0crvShape" -p "mouth_C0_rotcenter";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter9_1crvShape" -p "mouth_C0_rotcenter";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" -1.2010424947933656e-016 0.12388352783450074 0.23628786867351481 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup7Shape" -p "mouth_C0_lipup";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_lipup8Shape" -p "mouth_C0_lipup";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_lipup9Shape" -p "mouth_C0_lipup";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup9_0crvShape" -p "mouth_C0_lipup";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup9_1crvShape" -p "mouth_C0_lipup";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 4.0900352252046082e-015 -30.11503766976147 -2.1322109539326473 ;
	setAttr ".s" -type "double3" 1.8286050763007571 1.8286050763007582 1.8286050763007591 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
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
	setAttr ".t" -type "double3" -6.2824283908838643e-017 -0.14678247393468169 0.18194531820222393 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow7Shape" -p "mouth_C0_liplow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_liplow8Shape" -p "mouth_C0_liplow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_liplow9Shape" -p "mouth_C0_liplow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow9_0crvShape" -p "mouth_C0_liplow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow9_1crvShape" -p "mouth_C0_liplow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 4.0327552596341111e-015 -29.844371667992284 -2.0778684034613559 ;
	setAttr ".s" -type "double3" 1.8286050763007571 1.8286050763007582 1.8286050763007591 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
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
	setAttr ".t" -type "double3" -7.4610183244844764e-016 -1.4111110000775042 2.0692083234973317 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 1.0000000000000002 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw7Shape" -p "mouth_C0_jaw";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_jaw8Shape" -p "mouth_C0_jaw";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_jaw9Shape" -p "mouth_C0_jaw";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw9_0crvShape" -p "mouth_C0_jaw";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw9_1crvShape" -p "mouth_C0_jaw";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 6.1819112026352578e-016 0.86108709817294482 -1.6295011454214583 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700591 0.17172273903700602 0.17172273903700611 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_root7Shape" -p "tongue_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_root8Shape" -p "tongue_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_root9Shape" -p "tongue_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180638014e-016 -2.8421709430404007e-014 1.5794817263027467 ;
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
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc7Shape" -p "tongue_C0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc8Shape" -p "tongue_C0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_0_loc9Shape" -p "tongue_C0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc9_0crvShape" -p "tongue_C0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc9_1crvShape" -p "tongue_C0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.8115477919836306e-016 -0.1655662075150417 1.5794817263027401 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc7Shape" -p "tongue_C0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc8Shape" -p "tongue_C0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_1_loc9Shape" -p "tongue_C0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc9_0crvShape" -p "tongue_C0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc9_1crvShape" -p "tongue_C0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.6341326816636192e-016 -0.31043663909071029 1.5794817263027472 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc7Shape" -p "tongue_C0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc8Shape" -p "tongue_C0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_2_loc9Shape" -p "tongue_C0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc9_0crvShape" -p "tongue_C0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc9_1crvShape" -p "tongue_C0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -6.9382728707838281e-016 -0.062087327818204585 1.5794817263027419 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc7Shape" -p "tongue_C0_3_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc8Shape" -p "tongue_C0_3_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_3_loc9Shape" -p "tongue_C0_3_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc9_0crvShape" -p "tongue_C0_3_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc9_1crvShape" -p "tongue_C0_3_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.10303364342220354 0 0
		0 0.034344547807401184 0
		0 0 0
		;
createNode aimConstraint -n "tongue_C0_blade_aimConstraint3" -p "tongue_C0_blade";
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
	setAttr ".rsrr" -type "double3" 0 -89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint3" -p "tongue_C0_blade";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9645373721123773e-014 -175.06339877760718 -3.1060024283289853 ;
	setAttr ".s" -type "double3" 10.648590201596399 10.648590201596402 10.648590201596399 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.2456466726120648e-015 -30.612390245122924 -0.093664066372369875 ;
	setAttr ".s" -type "double3" 1.828605076300754 1.8286050763007591 1.8286050763007569 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv3" -p "mouth_C0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.2456466726120648e-015 -30.612390245122924 -0.093664066372369875 ;
	setAttr ".s" -type "double3" 1.828605076300754 1.8286050763007591 1.8286050763007569 ;
createNode nurbsCurve -n "mouth_C0_crv3Shape" -p "mouth_C0_crv3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv3ShapeOrig" -p "mouth_C0_crv3";
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
	setAttr ".t" -type "double3" -5.261399266628966 0.71045535901633983 -3.487072258509914e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932592 1.6711445512932543 1.6711445512932501 ;
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "eyeslook_C0_rootShape" -p "eyeslook_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eyeslook_C0_root7Shape" -p "eyeslook_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eyeslook_C0_root8Shape" -p "eyeslook_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eyeslook_C0_root9Shape" -p "eyeslook_C0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -1.4961368484464257 0.70921581084615681 -0.51425464314724423 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 -0.99999999999999944 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -2.2204460492503131e-016 -1.0658141036401503e-014 3.769784225717919 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" -0.51425464314724634 -30.070644536323631 -1.5859733749936766 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.753879954650218 1.7538799546502193 -1.7538799546502115 ;
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
createNode transform -n "eye_L0_root" -p "neck_C0_head";
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
	setAttr ".t" -type "double3" -1.4961368484464257 0.70921581084615681 0.51425464314724223 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999978 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_root7Shape" -p "eye_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_root8Shape" -p "eye_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_root9Shape" -p "eye_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -1.1102230246251565e-016 -1.4210854715202004e-014 3.7697842257179164 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999789 0.99999999999999967 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_look7Shape" -p "eye_L0_look";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_look8Shape" -p "eye_L0_look";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_look9Shape" -p "eye_L0_look";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_L0_look9_0crvShape" -p "eye_L0_look";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_L0_look9_1crvShape" -p "eye_L0_look";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" -0.51425464314723845 -30.070644536323631 -1.5859733749936749 ;
	setAttr ".s" -type "double3" 1.7538799546502166 1.7538799546502191 1.7538799546502102 ;
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
createNode transform -n "neck_C0_tan1" -p "neck_C0_neck";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.09787009621156316 -0.34322132772768654 6.3764016887352616e-017 ;
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
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape6" -p "neck_C0_tan1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape7" -p "neck_C0_tan1";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan6_0crvShape" -p "neck_C0_tan1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan6_1crvShape" -p "neck_C0_tan1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 0.089836526547249523 -29.261428725477426 3.0985443072730531e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502193 1.7538799546502184 1.7538799546502113 ;
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
	setAttr ".t" -type "double3" -0.076579783198172158 0.45329667709500043 -7.2516960172334946e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999811 0.99999999999999778 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape5" -p "neck_C0_tan0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape6" -p "neck_C0_tan0";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan5_0crvShape" -p "neck_C0_tan0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "neck_C0_tan5_1crvShape" -p "neck_C0_tan0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".s" -type "double3" 1.6711445512932515 1.6711445512932492 1.6711445512932452 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546059 0 0
		0 0.11967845620848687 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint3" -p "neck_C0_blade";
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
	setAttr ".rsrr" -type "double3" -180 -3.8842375422841395e-029 459.58898802263519 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint3" -p "neck_C0_blade";
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
	setAttr ".rst" -type "double3" 1.1102230246251565e-016 0 3.9443045261050599e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.5782808132691637 -26.793934099519554 2.6480115169506983e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502184 1.7538799546502144 1.7538799546502075 ;
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
createNode transform -n "shoulder_R0_root" -p "spine_C0_eff";
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
	setAttr ".t" -type "double3" 1.7395848890977472 -0.016853043661003125 0.11673327753265005 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000013 -0.99999999999999878 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999689 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip9_0crvShape" -p "shoulder_R0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip9_1crvShape" -p "shoulder_R0_tip";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 1.5987211554602254e-014 -1.3322676295501878e-015 -2.2204460492503131e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386919 44.41121298318005 -5.471043440538538 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000011 1.0000000000000009 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323417 -1.2434497875801753e-014 0.078976790252912377 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784261 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.999999999999998 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow9_0crvShape" -p "arm_R0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow9_1crvShape" -p "arm_R0_elbow";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496725 3.5527136788005009e-015 -0.11960611218230241 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist9_0crvShape" -p "arm_R0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist9_1crvShape" -p "arm_R0_wrist";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308308 -5.3290705182007514e-015 9.9920072216264089e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_eff9_0crvShape" -p "arm_R0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_eff9_1crvShape" -p "arm_R0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" -1.2124561875008166 0.56073114764519083 -0.29276117198399043 ;
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
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "armUI_R0_rootShape" -p "armUI_R0_root";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".t" -type "double3" -1.0556240028445805 -0.075350553640964435 0.35296225288850253 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008864328 93.717381466937368 86.467960127478833 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.3083872108171688 0.30838721081716919 0.30838721081716924 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617784 -1.4210854715202004e-014 5.3290705182007514e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc9_0crvShape" -p "meta_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc9_1crvShape" -p "meta_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618273 1.4210854715202004e-014 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc9_0crvShape" -p "meta_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc9_1crvShape" -p "meta_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618539 7.1054273576010019e-015 1.7763568394002505e-015 ;
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
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc9_0crvShape" -p "meta_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc9_1crvShape" -p "meta_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 0.27518484001103438 -0.17360051577792035 2.4946799341790147 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878638297 -68.587073855452076 -5.8163374181277927 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661812 1.2929668245661781 1.292966824566181 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.847662098305622 7.1054273576010019e-015 -2.886579864025407e-015 ;
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
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc9_0crvShape" -p "finger_R3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc9_1crvShape" -p "finger_R3_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070874797 -1.4210854715202004e-014 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc9_0crvShape" -p "finger_R3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc9_1crvShape" -p "finger_R3_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259194167 0 -1.3322676295501878e-015 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc9_0crvShape" -p "finger_R3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc9_1crvShape" -p "finger_R3_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970866 0 0
		0 0.2585933649132362 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint3" -p "finger_R3_blade";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 0 6.6613381477509392e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754106 -29.032786855763558 1.4804327725029889 ;
	setAttr ".r" -type "double3" 7.5791665394120713 165.69575562109631 49.348303523761217 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786007 -2.6320983106786064 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
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
	setAttr ".t" -type "double3" 0.21404201232122277 -0.17620518664720919 2.8414845756647473 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121388248 -82.086889237977871 -14.829711404978049 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661812 1.2929668245661798 1.2929668245661807 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406041 -1.4210854715202004e-014 6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999922 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc9_0crvShape" -p "finger_R2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc9_1crvShape" -p "finger_R2_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176532 -3.5527136788005009e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc9_0crvShape" -p "finger_R2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc9_1crvShape" -p "finger_R2_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.674570266749142 0 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000004 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc9_0crvShape" -p "finger_R2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc9_1crvShape" -p "finger_R2_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999922 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970866 0 0
		0 0.2585933649132362 0
		0 0 0
		;
createNode aimConstraint -n "finger_R2_blade_aimConstraint3" -p "finger_R2_blade";
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
	setAttr ".rst" -type "double3" -5.3290705182007514e-015 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931308993 -29.02366136944179 1.4173349723032362 ;
	setAttr ".r" -type "double3" 0.54140613098374457 178.40951950034216 47.737641631363708 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786002 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
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
	setAttr ".t" -type "double3" -0.0077643969605962759 -0.12358406696726121 2.9483952421545592 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398869959 -79.977014017420046 -112.77222628637848 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661801 1.2929668245661801 1.2929668245661832 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999467 -2.1316282072803006e-014 1.5543122344752192e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc9_0crvShape" -p "finger_R1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc9_1crvShape" -p "finger_R1_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414018617 1.7763568394002505e-014 -2.2204460492503131e-015 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc9_0crvShape" -p "finger_R1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc9_1crvShape" -p "finger_R1_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 -3.5527136788005009e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc9_0crvShape" -p "finger_R1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc9_1crvShape" -p "finger_R1_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
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
createNode aimConstraint -n "finger_R1_blade_aimConstraint3" -p "finger_R1_blade";
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -3.5527136788005009e-015 
		2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.2224332251532 -28.040620010901279 1.1418187531113857 ;
	setAttr ".r" -type "double3" 174.15150560514795 -9.9768879508780675 -125.88865264712216 ;
	setAttr ".s" -type "double3" 2.6320983106786122 2.6320983106786016 -2.6320983106786042 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030127 0 0
		0 0.061677442163433759 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint3" -p "meta_R0_blade";
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
	setAttr ".rst" -type "double3" -4.4408920985006262e-016 0 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400571 -38.076493243285618 11.714163621934482 ;
	setAttr ".r" -type "double3" -98.404354317568462 44.654258545705773 -90.724179884703631 ;
	setAttr ".s" -type "double3" 3.4032157947041322 3.4032157947041184 -3.4032157947041277 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
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
	setAttr ".t" -type "double3" 0.16562611832586027 -0.22654222078976005 0.11369679418112 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -120.73252624368722 -40.113048083814519 -140.23760680970523 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6654124751949588 1.6654124751949593 1.6654124751949582 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469851 0.002409577596686141 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060922 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc9_0crvShape" -p "thumb_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc9_1crvShape" -p "thumb_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145521788 -3.5527136788005009e-015 1.0658141036401503e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc9_0crvShape" -p "thumb_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc9_1crvShape" -p "thumb_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510387 3.5527136788005009e-015 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc9_0crvShape" -p "thumb_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc9_1crvShape" -p "thumb_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999944 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.99924748511697525 0 0
		0 0.33308249503899173 0
		0 0 0
		;
createNode aimConstraint -n "thumb_R0_blade_aimConstraint3" -p "thumb_R0_blade";
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
	setAttr ".rsrr" -type "double3" 9.9349754488831852e-016 7.0962606763074883e-013 
		0.16043147703802385 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint3" -p "thumb_R0_blade";
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
	setAttr ".rst" -type "double3" 0 0 3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688536 -7.1018915006056291 17.729458649684062 ;
	setAttr ".r" -type "double3" -55.556977946373308 -63.100734454449466 102.71864583729884 ;
	setAttr ".s" -type "double3" 2.0434672163157304 2.0434672163157215 -2.0434672163157273 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
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
	setAttr ".t" -type "double3" -0.18403723679762996 -0.30586006047065695 2.7614233959505547 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808119 -71.606679450095442 -133.79382708612695 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661814 1.2929668245661801 1.2929668245661812 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000036 7.1054273576010019e-015 -2.2204460492503131e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 0.99999999999999911 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc9_0crvShape" -p "finger_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc9_1crvShape" -p "finger_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927785 1.4210854715202004e-014 0 ;
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
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc9_0crvShape" -p "finger_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc9_1crvShape" -p "finger_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392368365 -1.4210854715202004e-014 4.4408920985006262e-016 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc9_0crvShape" -p "finger_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc9_1crvShape" -p "finger_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 0.99999999999999911 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
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
createNode aimConstraint -n "finger_R0_blade_aimConstraint3" -p "finger_R0_blade";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713101 -27.336008057181012 2.4648652761318655 ;
	setAttr ".r" -type "double3" 170.83456651198361 -22.111176212559034 -122.87938490445583 ;
	setAttr ".s" -type "double3" 2.6320983106786113 2.6320983106785998 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200134 -11.862061807473031 1.1564412205648802 ;
	setAttr ".r" -type "double3" 2.1534408611046545 175.80406292066334 45.437740049297929 ;
	setAttr ".s" -type "double3" 1.0495082267377425 1.0495082267377385 -1.0495082267377405 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
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
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999722 0.99999999999999756 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
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
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint3" -p "shoulder_R0_blade";
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
	setAttr ".o" -type "double3" 90 179.99999999999986 180 ;
	setAttr ".rsrr" -type "double3" 23.386262286472686 122.53864021838251 110.03040021520745 ;
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -3.8163916471489756e-017 
		-2.7755575615628914e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.50752147050984 0.009276189738275837 0.11673327753265024 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377376 -1.0495082267377378 ;
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
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999967 0.99999999999999867 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint3" -p "spine_C0_blade";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint3" -p "spine_C0_blade";
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
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690754 0.19144303592045889 -4.2508893276606353e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377402 1.0495082267377387 ;
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
createNode transform -n "leg_L0_root" -p "spine_C0_root";
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
	setAttr ".t" -type "double3" -1.1814583394588141 1.1102230246251565e-016 -1.0212680564255752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0.2931438622701828 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999833 1 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_root7Shape" -p "leg_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_root8Shape" -p "leg_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_root9Shape" -p "leg_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303934 0.38838644346805845 -2.3314683517128287e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999833 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_knee7Shape" -p "leg_L0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_knee8Shape" -p "leg_L0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_knee9Shape" -p "leg_L0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_knee9_0crvShape" -p "leg_L0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_knee9_1crvShape" -p "leg_L0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-016 -4.5414075240554208 -0.74630601922779871 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999989 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle7Shape" -p "leg_L0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_ankle8Shape" -p "leg_L0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_ankle9Shape" -p "leg_L0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle9_0crvShape" -p "leg_L0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle9_1crvShape" -p "leg_L0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 1.3322676295501878e-015 2.1377206638691337 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999956 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_eff7Shape" -p "leg_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_eff8Shape" -p "leg_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_eff9Shape" -p "leg_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_eff9_0crvShape" -p "leg_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_eff9_1crvShape" -p "leg_L0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 4.4408920985006262e-016 0 1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426093 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.9997975226851844 0.99979752268518418 0.99979752268518285 ;
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_root7Shape" -p "foot_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_root8Shape" -p "foot_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_root9Shape" -p "foot_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763243 -0.774231992211173 -0.00087398468478316893 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.49024465344802 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc7Shape" -p "foot_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_0_loc8Shape" -p "foot_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_0_loc9Shape" -p "foot_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc9_0crvShape" -p "foot_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc9_1crvShape" -p "foot_L0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444293 0.052400542543841522 0.00053566803260896023 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448023 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc7Shape" -p "foot_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_1_loc8Shape" -p "foot_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_1_loc9Shape" -p "foot_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc9_0crvShape" -p "foot_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc9_1crvShape" -p "foot_L0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518466 -0.34355031336095365 -0.0018389437992687441 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc7Shape" -p "foot_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_2_loc8Shape" -p "foot_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_2_loc9Shape" -p "foot_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc9_0crvShape" -p "foot_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc9_1crvShape" -p "foot_L0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415488 1.0591437062861169 ;
	setAttr ".r" -type "double3" 2.8990169397258407 84.223472754416591 2.9137877746396685 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343358 -1.288332366546225 -0.0019628851482431653 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_heel7Shape" -p "foot_L0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_heel8Shape" -p "foot_L0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_heel9Shape" -p "foot_L0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_heel9_0crvShape" -p "foot_L0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_heel9_1crvShape" -p "foot_L0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991015 -1.2852474767223814 -0.5448357892327973 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot7Shape" -p "foot_L0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_outpivot8Shape" -p "foot_L0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_outpivot9Shape" -p "foot_L0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot9_0crvShape" -p "foot_L0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot9_1crvShape" -p "foot_L0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991017 -1.2905939540073477 0.65234269833768477 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot7Shape" -p "foot_L0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_inpivot8Shape" -p "foot_L0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_inpivot9Shape" -p "foot_L0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot9_0crvShape" -p "foot_L0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot9_1crvShape" -p "foot_L0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415488 1.0591437062861169 ;
	setAttr ".r" -type "double3" 2.8990169397258407 84.223472754416591 2.9137877746396685 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig" -p "foot_L0_1";
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
	setAttr ".t" -type "double3" 0.5990855265032945 0.51029795172993775 -1.4395512694570032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999911 ;
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legUI_L0_rootShape" -p "legUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_L0_root7Shape" -p "legUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_L0_root8Shape" -p "legUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_L0_root9Shape" -p "legUI_L0_root";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209223 0.19144303592045908 0.96902196420373676 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729844 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377376 1.0495082267377402 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
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
	setAttr ".t" -type "double3" -1.1814583394588123 6.3837823915946501e-016 1.0212680564255754 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303969 0.38838644346805845 -3.7747582837255322e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999929 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999856 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_knee9_0crvShape" -p "leg_R0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_knee9_1crvShape" -p "leg_R0_knee";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6629367034256575e-015 -4.541407524055419 -0.74630601922779827 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999978 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle9_0crvShape" -p "leg_R0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle9_1crvShape" -p "leg_R0_ankle";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 9.9920072216264089e-016 2.2204460492503131e-015 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_eff9_0crvShape" -p "leg_R0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_eff9_1crvShape" -p "leg_R0_eff";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".t" -type "double3" 3.3306690738754696e-016 4.4408920985006262e-016 1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426093 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518429 0.99979752268518463 0.99979752268518329 ;
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763239 -0.77423199221117278 -0.00087398468478316893 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448038 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999911 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc9_0crvShape" -p "foot_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc9_1crvShape" -p "foot_R0_0_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5724162416244436 0.052400542543842632 0.00053566803260807205 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448034 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc9_0crvShape" -p "foot_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc9_1crvShape" -p "foot_R0_1_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518399 -0.34355031336095387 -0.0018389437992683 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000007 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc9_0crvShape" -p "foot_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc9_1crvShape" -p "foot_R0_2_loc";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687139 -1.2934842521415473 1.0591437062861164 ;
	setAttr ".r" -type "double3" 177.10098306027444 -84.223472754416576 -177.0862122253607 ;
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343313 -1.2883323665462241 -0.0019628851482420551 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_heel9_0crvShape" -p "foot_R0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_heel9_1crvShape" -p "foot_R0_heel";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991006 -1.2852474767223812 -0.54483578923279685 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot9_0crvShape" -p "foot_R0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot9_1crvShape" -p "foot_R0_outpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991011 -1.2905939540073468 0.65234269833768499 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot9_0crvShape" -p "foot_R0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot9_1crvShape" -p "foot_R0_inpivot";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687139 -1.2934842521415473 1.0591437062861164 ;
	setAttr ".r" -type "double3" 177.10098306027444 -84.223472754416576 -177.0862122253607 ;
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
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
	setAttr ".t" -type "double3" 0.59908552650329483 0.51029795172993686 -1.4395512694570027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999956 0.99999999999999944 ;
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "legUI_R0_rootShape" -p "legUI_R0_root";
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
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
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209226 0.19144303592045853 0.96902196420373465 ;
	setAttr ".r" -type "double3" 90 -89.706856137729929 -179.99999999999818 ;
	setAttr ".s" -type "double3" 1.0495082267377402 1.0495082267377378 -1.0495082267377402 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
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
createNode animCurveUU -n "spine_C0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion32";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns207";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns207Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns207GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns207GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak355";
createNode objectSet -n "tweakSet355";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8279";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts710";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns208";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns208Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns208GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns208GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak356";
createNode objectSet -n "tweakSet356";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8281";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts712";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns209";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns209Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns209GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns209GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak357";
createNode objectSet -n "tweakSet357";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8283";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts714";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion31";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns206";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns206Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns206GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns206GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak354";
createNode objectSet -n "tweakSet354";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8277";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts708";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion35";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns210";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns210Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns210GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns210GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak358";
createNode objectSet -n "tweakSet358";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8285";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts716";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion36";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns211";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns211Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns211GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns211GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak359";
createNode objectSet -n "tweakSet359";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8287";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts718";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns205";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns205Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns205GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns205GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak353";
createNode objectSet -n "tweakSet353";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8275";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts706";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion30";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns204";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns204Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns204GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns204GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak352";
createNode objectSet -n "tweakSet352";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8273";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts704";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns215";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns215Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns215GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns215GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak363";
createNode objectSet -n "tweakSet363";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8295";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts726";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns216";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns216Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns216GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns216GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak364";
createNode objectSet -n "tweakSet364";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8297";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts728";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion38";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns218";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns218Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns218GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns218GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak366";
createNode objectSet -n "tweakSet366";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8301";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts732";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns214";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns214Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns214GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns214GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak362";
createNode objectSet -n "tweakSet362";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8293";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts724";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns217";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns217Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns217GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns217GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak365";
createNode objectSet -n "tweakSet365";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8299";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts730";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns219";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns219Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns219GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns219GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak367";
createNode objectSet -n "tweakSet367";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8303";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts734";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns220";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns220Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns220GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns220GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak368";
createNode objectSet -n "tweakSet368";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8305";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts736";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns213";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns213Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns213GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns213GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak361";
createNode objectSet -n "tweakSet361";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8291";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts722";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion37";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns212";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns212Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns212GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns212GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak360";
createNode objectSet -n "tweakSet360";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8289";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts720";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion41";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns224";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns224Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns224GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns224GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak372";
createNode objectSet -n "tweakSet372";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8313";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts744";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion42";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns225";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns225Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns225GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns225GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak373";
createNode objectSet -n "tweakSet373";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8315";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts746";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion43";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns226";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns226Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns226GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns226GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak374";
createNode objectSet -n "tweakSet374";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8317";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts748";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion40";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns223";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns223Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns223GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns223GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak371";
createNode objectSet -n "tweakSet371";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8311";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts742";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion44";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns227";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns227Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns227GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns227GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak375";
createNode objectSet -n "tweakSet375";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8319";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts750";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion45";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns228";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns228Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns228GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns228GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak376";
createNode objectSet -n "tweakSet376";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8321";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts752";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns222";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns222Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns222GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns222GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak370";
createNode objectSet -n "tweakSet370";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8309";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts740";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion39";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns221";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns221Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns221GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns221GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak369";
createNode objectSet -n "tweakSet369";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8307";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts738";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion29";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns203";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns203Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns203GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns203GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak351";
createNode objectSet -n "tweakSet351";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8271";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts702";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns230";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns230Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns230GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns230GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak378";
createNode objectSet -n "tweakSet378";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8325";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts756";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns231";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns231Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns231GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns231GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak379";
createNode objectSet -n "tweakSet379";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8327";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts758";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns229";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns229Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns229GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns229GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak377";
createNode objectSet -n "tweakSet377";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8323";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts754";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns233";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns233Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns233GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns233GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak381";
createNode objectSet -n "tweakSet381";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8331";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts762";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns234";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns234Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns234GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns234GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak382";
createNode objectSet -n "tweakSet382";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8333";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts764";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns232";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns232Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns232GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns232GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak380";
createNode objectSet -n "tweakSet380";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8329";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts760";
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
connectAttr "spine_C0_root_st_profile1.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile1.o" "spine_C0_root.sq_profile";
connectAttr "arm_L0_root_st_profile1.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile1.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint3.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint3.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint3.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint3.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint3.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint3.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint3.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint3.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint3.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint3.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint3.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint3.w0" "finger_L3_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint3.wum";
connectAttr "unitConversion32.o" "finger_L3_blade_aimConstraint3.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint3.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint3.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint3.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint3.w0" "finger_L3_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns207.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak355.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns207GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns207Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8279.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet355.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint3.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint3.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint3.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint3.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint3.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint3.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint3.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint3.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint3.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint3.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint3.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint3.w0" "finger_L2_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint3.wum";
connectAttr "unitConversion33.o" "finger_L2_blade_aimConstraint3.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint3.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint3.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint3.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint3.w0" "finger_L2_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns208.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak356.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns208GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns208Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8281.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet356.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint3.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint3.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint3.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint3.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint3.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint3.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint3.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint3.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint3.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint3.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint3.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint3.w0" "finger_L1_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint3.wum";
connectAttr "unitConversion34.o" "finger_L1_blade_aimConstraint3.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint3.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint3.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint3.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint3.w0" "finger_L1_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns209.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak357.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns209GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns209Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8283.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet357.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint3.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint3.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint3.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint3.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint3.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint3.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint3.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint3.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint3.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint3.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint3.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint3.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint3.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint3.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint3.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint3.w0" "meta_L0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint3.wum";
connectAttr "unitConversion31.o" "meta_L0_blade_aimConstraint3.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint3.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint3.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint3.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint3.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint3.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint3.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint3.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint3.w0" "meta_L0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns206.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak354.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns206GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns206Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8277.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet354.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint3.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint3.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint3.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint3.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint3.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint3.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint3.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint3.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint3.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint3.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint3.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint3.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint3.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint3.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint3.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint3.w0" "thumb_L0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint3.wum";
connectAttr "unitConversion35.o" "thumb_L0_blade_aimConstraint3.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint3.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint3.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint3.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint3.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint3.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint3.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint3.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint3.w0" "thumb_L0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns210.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak358.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns210GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns210Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8285.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet358.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint3.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint3.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint3.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint3.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint3.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint3.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint3.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint3.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint3.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint3.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint3.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint3.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint3.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint3.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint3.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint3.w0" "finger_L0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint3.wum";
connectAttr "unitConversion36.o" "finger_L0_blade_aimConstraint3.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint3.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint3.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint3.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint3.w0" "finger_L0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns211.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak359.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns211GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns211Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8287.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet359.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns205.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak353.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns205GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns205Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8275.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet353.mwc" "arm_L0_crvShape.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint3.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint3.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint3.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint3.crx" "shoulder_L0_blade.rx" -l on;
connectAttr "shoulder_L0_blade_aimConstraint3.cry" "shoulder_L0_blade.ry" -l on;
connectAttr "shoulder_L0_blade_aimConstraint3.crz" "shoulder_L0_blade.rz" -l on;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint3.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint3.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint3.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint3.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint3.cro";
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint3.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint3.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint3.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint3.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint3.w0" "shoulder_L0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint3.wum";
connectAttr "unitConversion30.o" "shoulder_L0_blade_aimConstraint3.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint3.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint3.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint3.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint3.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint3.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint3.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint3.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint3.w0" "shoulder_L0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns204.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak352.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns204GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns204Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8273.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet352.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns215.og[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak363.pl[0].cp[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns215GroupId.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns215Set.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8295.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet363.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns216.og[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak364.pl[0].cp[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns216GroupId.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns216Set.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8297.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet364.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint3.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint3.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint3.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint3.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint3.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint3.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint3.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint3.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint3.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint3.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint3.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint3.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint3.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint3.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint3.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint3.w0" "tongue_C0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint3.wum";
connectAttr "unitConversion38.o" "tongue_C0_blade_aimConstraint3.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint3.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint3.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint3.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint3.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint3.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint3.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint3.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint3.w0" "tongue_C0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns218.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak366.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns218GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns218Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8301.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet366.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns214.og[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak362.pl[0].cp[0]" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns214GroupId.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns214Set.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8293.id" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet362.mwc" "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns217.og[0]" "mouth_C0_crv3Shape.cr";
connectAttr "tweak365.pl[0].cp[0]" "mouth_C0_crv3Shape.twl";
connectAttr "mgear_curveCns217GroupId.id" "mouth_C0_crv3Shape.iog.og[0].gid";
connectAttr "mgear_curveCns217Set.mwc" "mouth_C0_crv3Shape.iog.og[0].gco";
connectAttr "groupId8299.id" "mouth_C0_crv3Shape.iog.og[1].gid";
connectAttr "tweakSet365.mwc" "mouth_C0_crv3Shape.iog.og[1].gco";
connectAttr "mgear_curveCns219.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak367.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns219GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns219Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8303.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet367.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns220.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak368.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns220GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns220Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8305.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet368.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns213.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak361.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns213GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns213Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8291.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet361.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint3.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint3.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint3.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint3.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint3.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint3.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint3.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint3.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint3.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint3.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint3.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint3.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint3.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint3.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint3.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint3.w0" "neck_C0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint3.wum";
connectAttr "unitConversion37.o" "neck_C0_blade_aimConstraint3.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint3.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint3.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint3.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint3.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint3.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint3.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint3.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint3.w0" "neck_C0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns212.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak360.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns212GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns212Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8289.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet360.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion41.o" "finger_R3_blade_aimConstraint3.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint3.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint3.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint3.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint3.w0" "finger_R3_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns224.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak372.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns224GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns224Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8313.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet372.mwc" "finger_R3_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion42.o" "finger_R2_blade_aimConstraint3.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint3.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint3.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint3.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint3.w0" "finger_R2_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns225.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak373.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns225GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns225Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8315.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet373.mwc" "finger_R2_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion43.o" "finger_R1_blade_aimConstraint3.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint3.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint3.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint3.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint3.w0" "finger_R1_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns226.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak374.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns226GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns226Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8317.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet374.mwc" "finger_R1_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion40.o" "meta_R0_blade_aimConstraint3.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint3.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint3.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint3.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint3.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint3.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint3.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint3.w0" "meta_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns223.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak371.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns223GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns223Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8311.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet371.mwc" "meta_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion44.o" "thumb_R0_blade_aimConstraint3.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint3.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint3.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint3.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint3.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint3.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint3.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint3.w0" "thumb_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns227.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak375.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns227GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns227Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8319.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet375.mwc" "thumb_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion45.o" "finger_R0_blade_aimConstraint3.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint3.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint3.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint3.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint3.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint3.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint3.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint3.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint3.w0" "finger_R0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns228.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak376.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns228GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns228Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8321.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet376.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns222.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak370.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns222GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns222Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8309.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet370.mwc" "arm_R0_crvShape.iog.og[1].gco";
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
connectAttr "mgear_curveCns221.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak369.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns221GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns221Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8307.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet369.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint3.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint3.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint3.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint3.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint3.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint3.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint3.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint3.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint3.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint3.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint3.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint3.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint3.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint3.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint3.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint3.w0" "spine_C0_blade_aimConstraint3.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint3.wum";
connectAttr "unitConversion29.o" "spine_C0_blade_aimConstraint3.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint3.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint3.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint3.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint3.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint3.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint3.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint3.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint3.w0" "spine_C0_blade_pointConstraint3.tg[0].tw"
		;
connectAttr "mgear_curveCns203.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak351.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns203GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns203Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8271.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet351.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile1.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile1.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns230.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak378.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns230GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns230Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8325.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet378.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns231.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak379.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns231GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns231Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8327.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet379.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns229.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak377.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns229GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns229Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8323.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet377.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns233.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak381.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns233GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns233Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8331.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet381.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns234.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak382.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns234GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns234Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8333.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet382.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns232.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak380.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns232GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns232Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8329.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet380.mwc" "leg_R0_crvShape.iog.og[1].gco";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion32.i";
connectAttr "mgear_curveCns207GroupParts.og" "mgear_curveCns207.ip[0].ig";
connectAttr "mgear_curveCns207GroupId.id" "mgear_curveCns207.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns207.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns207.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns207.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns207.inputs[3]";
connectAttr "mgear_curveCns207GroupId.msg" "mgear_curveCns207Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns207Set.dsm" -na;
connectAttr "mgear_curveCns207.msg" "mgear_curveCns207Set.ub[0]";
connectAttr "tweak355.og[0]" "mgear_curveCns207GroupParts.ig";
connectAttr "mgear_curveCns207GroupId.id" "mgear_curveCns207GroupParts.gi";
connectAttr "groupParts710.og" "tweak355.ip[0].ig";
connectAttr "groupId8279.id" "tweak355.ip[0].gi";
connectAttr "groupId8279.msg" "tweakSet355.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet355.dsm" -na;
connectAttr "tweak355.msg" "tweakSet355.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts710.ig";
connectAttr "groupId8279.id" "groupParts710.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion33.i";
connectAttr "mgear_curveCns208GroupParts.og" "mgear_curveCns208.ip[0].ig";
connectAttr "mgear_curveCns208GroupId.id" "mgear_curveCns208.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns208.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns208.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns208.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns208.inputs[3]";
connectAttr "mgear_curveCns208GroupId.msg" "mgear_curveCns208Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns208Set.dsm" -na;
connectAttr "mgear_curveCns208.msg" "mgear_curveCns208Set.ub[0]";
connectAttr "tweak356.og[0]" "mgear_curveCns208GroupParts.ig";
connectAttr "mgear_curveCns208GroupId.id" "mgear_curveCns208GroupParts.gi";
connectAttr "groupParts712.og" "tweak356.ip[0].ig";
connectAttr "groupId8281.id" "tweak356.ip[0].gi";
connectAttr "groupId8281.msg" "tweakSet356.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet356.dsm" -na;
connectAttr "tweak356.msg" "tweakSet356.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts712.ig";
connectAttr "groupId8281.id" "groupParts712.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion34.i";
connectAttr "mgear_curveCns209GroupParts.og" "mgear_curveCns209.ip[0].ig";
connectAttr "mgear_curveCns209GroupId.id" "mgear_curveCns209.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns209.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns209.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns209.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns209.inputs[3]";
connectAttr "mgear_curveCns209GroupId.msg" "mgear_curveCns209Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns209Set.dsm" -na;
connectAttr "mgear_curveCns209.msg" "mgear_curveCns209Set.ub[0]";
connectAttr "tweak357.og[0]" "mgear_curveCns209GroupParts.ig";
connectAttr "mgear_curveCns209GroupId.id" "mgear_curveCns209GroupParts.gi";
connectAttr "groupParts714.og" "tweak357.ip[0].ig";
connectAttr "groupId8283.id" "tweak357.ip[0].gi";
connectAttr "groupId8283.msg" "tweakSet357.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet357.dsm" -na;
connectAttr "tweak357.msg" "tweakSet357.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts714.ig";
connectAttr "groupId8283.id" "groupParts714.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion31.i";
connectAttr "mgear_curveCns206GroupParts.og" "mgear_curveCns206.ip[0].ig";
connectAttr "mgear_curveCns206GroupId.id" "mgear_curveCns206.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns206.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns206.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns206.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns206.inputs[3]";
connectAttr "mgear_curveCns206GroupId.msg" "mgear_curveCns206Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns206Set.dsm" -na;
connectAttr "mgear_curveCns206.msg" "mgear_curveCns206Set.ub[0]";
connectAttr "tweak354.og[0]" "mgear_curveCns206GroupParts.ig";
connectAttr "mgear_curveCns206GroupId.id" "mgear_curveCns206GroupParts.gi";
connectAttr "groupParts708.og" "tweak354.ip[0].ig";
connectAttr "groupId8277.id" "tweak354.ip[0].gi";
connectAttr "groupId8277.msg" "tweakSet354.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet354.dsm" -na;
connectAttr "tweak354.msg" "tweakSet354.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts708.ig";
connectAttr "groupId8277.id" "groupParts708.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion35.i";
connectAttr "mgear_curveCns210GroupParts.og" "mgear_curveCns210.ip[0].ig";
connectAttr "mgear_curveCns210GroupId.id" "mgear_curveCns210.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns210.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns210.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns210.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns210.inputs[3]";
connectAttr "mgear_curveCns210GroupId.msg" "mgear_curveCns210Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns210Set.dsm" -na;
connectAttr "mgear_curveCns210.msg" "mgear_curveCns210Set.ub[0]";
connectAttr "tweak358.og[0]" "mgear_curveCns210GroupParts.ig";
connectAttr "mgear_curveCns210GroupId.id" "mgear_curveCns210GroupParts.gi";
connectAttr "groupParts716.og" "tweak358.ip[0].ig";
connectAttr "groupId8285.id" "tweak358.ip[0].gi";
connectAttr "groupId8285.msg" "tweakSet358.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet358.dsm" -na;
connectAttr "tweak358.msg" "tweakSet358.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts716.ig";
connectAttr "groupId8285.id" "groupParts716.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion36.i";
connectAttr "mgear_curveCns211GroupParts.og" "mgear_curveCns211.ip[0].ig";
connectAttr "mgear_curveCns211GroupId.id" "mgear_curveCns211.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns211.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns211.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns211.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns211.inputs[3]";
connectAttr "mgear_curveCns211GroupId.msg" "mgear_curveCns211Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns211Set.dsm" -na;
connectAttr "mgear_curveCns211.msg" "mgear_curveCns211Set.ub[0]";
connectAttr "tweak359.og[0]" "mgear_curveCns211GroupParts.ig";
connectAttr "mgear_curveCns211GroupId.id" "mgear_curveCns211GroupParts.gi";
connectAttr "groupParts718.og" "tweak359.ip[0].ig";
connectAttr "groupId8287.id" "tweak359.ip[0].gi";
connectAttr "groupId8287.msg" "tweakSet359.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet359.dsm" -na;
connectAttr "tweak359.msg" "tweakSet359.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts718.ig";
connectAttr "groupId8287.id" "groupParts718.gi";
connectAttr "mgear_curveCns205GroupParts.og" "mgear_curveCns205.ip[0].ig";
connectAttr "mgear_curveCns205GroupId.id" "mgear_curveCns205.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns205.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns205.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns205.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns205.inputs[3]";
connectAttr "mgear_curveCns205GroupId.msg" "mgear_curveCns205Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns205Set.dsm" -na;
connectAttr "mgear_curveCns205.msg" "mgear_curveCns205Set.ub[0]";
connectAttr "tweak353.og[0]" "mgear_curveCns205GroupParts.ig";
connectAttr "mgear_curveCns205GroupId.id" "mgear_curveCns205GroupParts.gi";
connectAttr "groupParts706.og" "tweak353.ip[0].ig";
connectAttr "groupId8275.id" "tweak353.ip[0].gi";
connectAttr "groupId8275.msg" "tweakSet353.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet353.dsm" -na;
connectAttr "tweak353.msg" "tweakSet353.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts706.ig";
connectAttr "groupId8275.id" "groupParts706.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion30.i";
connectAttr "mgear_curveCns204GroupParts.og" "mgear_curveCns204.ip[0].ig";
connectAttr "mgear_curveCns204GroupId.id" "mgear_curveCns204.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns204.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns204.inputs[1]";
connectAttr "mgear_curveCns204GroupId.msg" "mgear_curveCns204Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns204Set.dsm" -na;
connectAttr "mgear_curveCns204.msg" "mgear_curveCns204Set.ub[0]";
connectAttr "tweak352.og[0]" "mgear_curveCns204GroupParts.ig";
connectAttr "mgear_curveCns204GroupId.id" "mgear_curveCns204GroupParts.gi";
connectAttr "groupParts704.og" "tweak352.ip[0].ig";
connectAttr "groupId8273.id" "tweak352.ip[0].gi";
connectAttr "groupId8273.msg" "tweakSet352.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet352.dsm" -na;
connectAttr "tweak352.msg" "tweakSet352.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts704.ig";
connectAttr "groupId8273.id" "groupParts704.gi";
connectAttr "mgear_curveCns215GroupParts.og" "mgear_curveCns215.ip[0].ig";
connectAttr "mgear_curveCns215GroupId.id" "mgear_curveCns215.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns215.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns215.inputs[1]";
connectAttr "mgear_curveCns215GroupId.msg" "mgear_curveCns215Set.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns215Set.dsm"
		 -na;
connectAttr "mgear_curveCns215.msg" "mgear_curveCns215Set.ub[0]";
connectAttr "tweak363.og[0]" "mgear_curveCns215GroupParts.ig";
connectAttr "mgear_curveCns215GroupId.id" "mgear_curveCns215GroupParts.gi";
connectAttr "groupParts726.og" "tweak363.ip[0].ig";
connectAttr "groupId8295.id" "tweak363.ip[0].gi";
connectAttr "groupId8295.msg" "tweakSet363.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet363.dsm"
		 -na;
connectAttr "tweak363.msg" "tweakSet363.ub[0]";
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts726.ig"
		;
connectAttr "groupId8295.id" "groupParts726.gi";
connectAttr "mgear_curveCns216GroupParts.og" "mgear_curveCns216.ip[0].ig";
connectAttr "mgear_curveCns216GroupId.id" "mgear_curveCns216.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns216.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns216.inputs[1]";
connectAttr "mgear_curveCns216GroupId.msg" "mgear_curveCns216Set.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns216Set.dsm"
		 -na;
connectAttr "mgear_curveCns216.msg" "mgear_curveCns216Set.ub[0]";
connectAttr "tweak364.og[0]" "mgear_curveCns216GroupParts.ig";
connectAttr "mgear_curveCns216GroupId.id" "mgear_curveCns216GroupParts.gi";
connectAttr "groupParts728.og" "tweak364.ip[0].ig";
connectAttr "groupId8297.id" "tweak364.ip[0].gi";
connectAttr "groupId8297.msg" "tweakSet364.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet364.dsm"
		 -na;
connectAttr "tweak364.msg" "tweakSet364.ub[0]";
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts728.ig"
		;
connectAttr "groupId8297.id" "groupParts728.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion38.i";
connectAttr "mgear_curveCns218GroupParts.og" "mgear_curveCns218.ip[0].ig";
connectAttr "mgear_curveCns218GroupId.id" "mgear_curveCns218.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns218.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns218.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns218.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns218.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns218.inputs[4]";
connectAttr "mgear_curveCns218GroupId.msg" "mgear_curveCns218Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns218Set.dsm" -na;
connectAttr "mgear_curveCns218.msg" "mgear_curveCns218Set.ub[0]";
connectAttr "tweak366.og[0]" "mgear_curveCns218GroupParts.ig";
connectAttr "mgear_curveCns218GroupId.id" "mgear_curveCns218GroupParts.gi";
connectAttr "groupParts732.og" "tweak366.ip[0].ig";
connectAttr "groupId8301.id" "tweak366.ip[0].gi";
connectAttr "groupId8301.msg" "tweakSet366.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet366.dsm" -na;
connectAttr "tweak366.msg" "tweakSet366.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts732.ig";
connectAttr "groupId8301.id" "groupParts732.gi";
connectAttr "mgear_curveCns214GroupParts.og" "mgear_curveCns214.ip[0].ig";
connectAttr "mgear_curveCns214GroupId.id" "mgear_curveCns214.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns214.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns214.inputs[1]";
connectAttr "mgear_curveCns214GroupId.msg" "mgear_curveCns214Set.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns214Set.dsm"
		 -na;
connectAttr "mgear_curveCns214.msg" "mgear_curveCns214Set.ub[0]";
connectAttr "tweak362.og[0]" "mgear_curveCns214GroupParts.ig";
connectAttr "mgear_curveCns214GroupId.id" "mgear_curveCns214GroupParts.gi";
connectAttr "groupParts724.og" "tweak362.ip[0].ig";
connectAttr "groupId8293.id" "tweak362.ip[0].gi";
connectAttr "groupId8293.msg" "tweakSet362.gn" -na;
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet362.dsm"
		 -na;
connectAttr "tweak362.msg" "tweakSet362.ub[0]";
connectAttr "|biped_guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts724.ig"
		;
connectAttr "groupId8293.id" "groupParts724.gi";
connectAttr "mgear_curveCns217GroupParts.og" "mgear_curveCns217.ip[0].ig";
connectAttr "mgear_curveCns217GroupId.id" "mgear_curveCns217.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns217.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns217.inputs[1]";
connectAttr "mgear_curveCns217GroupId.msg" "mgear_curveCns217Set.gn" -na;
connectAttr "mouth_C0_crv3Shape.iog.og[0]" "mgear_curveCns217Set.dsm" -na;
connectAttr "mgear_curveCns217.msg" "mgear_curveCns217Set.ub[0]";
connectAttr "tweak365.og[0]" "mgear_curveCns217GroupParts.ig";
connectAttr "mgear_curveCns217GroupId.id" "mgear_curveCns217GroupParts.gi";
connectAttr "groupParts730.og" "tweak365.ip[0].ig";
connectAttr "groupId8299.id" "tweak365.ip[0].gi";
connectAttr "groupId8299.msg" "tweakSet365.gn" -na;
connectAttr "mouth_C0_crv3Shape.iog.og[1]" "tweakSet365.dsm" -na;
connectAttr "tweak365.msg" "tweakSet365.ub[0]";
connectAttr "mouth_C0_crv3ShapeOrig.ws" "groupParts730.ig";
connectAttr "groupId8299.id" "groupParts730.gi";
connectAttr "mgear_curveCns219GroupParts.og" "mgear_curveCns219.ip[0].ig";
connectAttr "mgear_curveCns219GroupId.id" "mgear_curveCns219.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns219.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns219.inputs[1]";
connectAttr "mgear_curveCns219GroupId.msg" "mgear_curveCns219Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns219Set.dsm" -na;
connectAttr "mgear_curveCns219.msg" "mgear_curveCns219Set.ub[0]";
connectAttr "tweak367.og[0]" "mgear_curveCns219GroupParts.ig";
connectAttr "mgear_curveCns219GroupId.id" "mgear_curveCns219GroupParts.gi";
connectAttr "groupParts734.og" "tweak367.ip[0].ig";
connectAttr "groupId8303.id" "tweak367.ip[0].gi";
connectAttr "groupId8303.msg" "tweakSet367.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet367.dsm" -na;
connectAttr "tweak367.msg" "tweakSet367.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts734.ig";
connectAttr "groupId8303.id" "groupParts734.gi";
connectAttr "mgear_curveCns220GroupParts.og" "mgear_curveCns220.ip[0].ig";
connectAttr "mgear_curveCns220GroupId.id" "mgear_curveCns220.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns220.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns220.inputs[1]";
connectAttr "mgear_curveCns220GroupId.msg" "mgear_curveCns220Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns220Set.dsm" -na;
connectAttr "mgear_curveCns220.msg" "mgear_curveCns220Set.ub[0]";
connectAttr "tweak368.og[0]" "mgear_curveCns220GroupParts.ig";
connectAttr "mgear_curveCns220GroupId.id" "mgear_curveCns220GroupParts.gi";
connectAttr "groupParts736.og" "tweak368.ip[0].ig";
connectAttr "groupId8305.id" "tweak368.ip[0].gi";
connectAttr "groupId8305.msg" "tweakSet368.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet368.dsm" -na;
connectAttr "tweak368.msg" "tweakSet368.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts736.ig";
connectAttr "groupId8305.id" "groupParts736.gi";
connectAttr "mgear_curveCns213GroupParts.og" "mgear_curveCns213.ip[0].ig";
connectAttr "mgear_curveCns213GroupId.id" "mgear_curveCns213.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns213.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns213.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns213.inputs[2]";
connectAttr "mgear_curveCns213GroupId.msg" "mgear_curveCns213Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns213Set.dsm" -na;
connectAttr "mgear_curveCns213.msg" "mgear_curveCns213Set.ub[0]";
connectAttr "tweak361.og[0]" "mgear_curveCns213GroupParts.ig";
connectAttr "mgear_curveCns213GroupId.id" "mgear_curveCns213GroupParts.gi";
connectAttr "groupParts722.og" "tweak361.ip[0].ig";
connectAttr "groupId8291.id" "tweak361.ip[0].gi";
connectAttr "groupId8291.msg" "tweakSet361.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet361.dsm" -na;
connectAttr "tweak361.msg" "tweakSet361.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts722.ig";
connectAttr "groupId8291.id" "groupParts722.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion37.i";
connectAttr "mgear_curveCns212GroupParts.og" "mgear_curveCns212.ip[0].ig";
connectAttr "mgear_curveCns212GroupId.id" "mgear_curveCns212.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns212.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns212.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns212.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns212.inputs[3]";
connectAttr "mgear_curveCns212GroupId.msg" "mgear_curveCns212Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns212Set.dsm" -na;
connectAttr "mgear_curveCns212.msg" "mgear_curveCns212Set.ub[0]";
connectAttr "tweak360.og[0]" "mgear_curveCns212GroupParts.ig";
connectAttr "mgear_curveCns212GroupId.id" "mgear_curveCns212GroupParts.gi";
connectAttr "groupParts720.og" "tweak360.ip[0].ig";
connectAttr "groupId8289.id" "tweak360.ip[0].gi";
connectAttr "groupId8289.msg" "tweakSet360.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet360.dsm" -na;
connectAttr "tweak360.msg" "tweakSet360.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts720.ig";
connectAttr "groupId8289.id" "groupParts720.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion41.i";
connectAttr "mgear_curveCns224GroupParts.og" "mgear_curveCns224.ip[0].ig";
connectAttr "mgear_curveCns224GroupId.id" "mgear_curveCns224.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns224.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns224.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns224.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns224.inputs[3]";
connectAttr "mgear_curveCns224GroupId.msg" "mgear_curveCns224Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns224Set.dsm" -na;
connectAttr "mgear_curveCns224.msg" "mgear_curveCns224Set.ub[0]";
connectAttr "tweak372.og[0]" "mgear_curveCns224GroupParts.ig";
connectAttr "mgear_curveCns224GroupId.id" "mgear_curveCns224GroupParts.gi";
connectAttr "groupParts744.og" "tweak372.ip[0].ig";
connectAttr "groupId8313.id" "tweak372.ip[0].gi";
connectAttr "groupId8313.msg" "tweakSet372.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet372.dsm" -na;
connectAttr "tweak372.msg" "tweakSet372.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts744.ig";
connectAttr "groupId8313.id" "groupParts744.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion42.i";
connectAttr "mgear_curveCns225GroupParts.og" "mgear_curveCns225.ip[0].ig";
connectAttr "mgear_curveCns225GroupId.id" "mgear_curveCns225.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns225.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns225.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns225.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns225.inputs[3]";
connectAttr "mgear_curveCns225GroupId.msg" "mgear_curveCns225Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns225Set.dsm" -na;
connectAttr "mgear_curveCns225.msg" "mgear_curveCns225Set.ub[0]";
connectAttr "tweak373.og[0]" "mgear_curveCns225GroupParts.ig";
connectAttr "mgear_curveCns225GroupId.id" "mgear_curveCns225GroupParts.gi";
connectAttr "groupParts746.og" "tweak373.ip[0].ig";
connectAttr "groupId8315.id" "tweak373.ip[0].gi";
connectAttr "groupId8315.msg" "tweakSet373.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet373.dsm" -na;
connectAttr "tweak373.msg" "tweakSet373.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts746.ig";
connectAttr "groupId8315.id" "groupParts746.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion43.i";
connectAttr "mgear_curveCns226GroupParts.og" "mgear_curveCns226.ip[0].ig";
connectAttr "mgear_curveCns226GroupId.id" "mgear_curveCns226.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns226.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns226.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns226.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns226.inputs[3]";
connectAttr "mgear_curveCns226GroupId.msg" "mgear_curveCns226Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns226Set.dsm" -na;
connectAttr "mgear_curveCns226.msg" "mgear_curveCns226Set.ub[0]";
connectAttr "tweak374.og[0]" "mgear_curveCns226GroupParts.ig";
connectAttr "mgear_curveCns226GroupId.id" "mgear_curveCns226GroupParts.gi";
connectAttr "groupParts748.og" "tweak374.ip[0].ig";
connectAttr "groupId8317.id" "tweak374.ip[0].gi";
connectAttr "groupId8317.msg" "tweakSet374.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet374.dsm" -na;
connectAttr "tweak374.msg" "tweakSet374.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts748.ig";
connectAttr "groupId8317.id" "groupParts748.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion40.i";
connectAttr "mgear_curveCns223GroupParts.og" "mgear_curveCns223.ip[0].ig";
connectAttr "mgear_curveCns223GroupId.id" "mgear_curveCns223.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns223.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns223.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns223.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns223.inputs[3]";
connectAttr "mgear_curveCns223GroupId.msg" "mgear_curveCns223Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns223Set.dsm" -na;
connectAttr "mgear_curveCns223.msg" "mgear_curveCns223Set.ub[0]";
connectAttr "tweak371.og[0]" "mgear_curveCns223GroupParts.ig";
connectAttr "mgear_curveCns223GroupId.id" "mgear_curveCns223GroupParts.gi";
connectAttr "groupParts742.og" "tweak371.ip[0].ig";
connectAttr "groupId8311.id" "tweak371.ip[0].gi";
connectAttr "groupId8311.msg" "tweakSet371.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet371.dsm" -na;
connectAttr "tweak371.msg" "tweakSet371.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts742.ig";
connectAttr "groupId8311.id" "groupParts742.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion44.i";
connectAttr "mgear_curveCns227GroupParts.og" "mgear_curveCns227.ip[0].ig";
connectAttr "mgear_curveCns227GroupId.id" "mgear_curveCns227.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns227.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns227.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns227.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns227.inputs[3]";
connectAttr "mgear_curveCns227GroupId.msg" "mgear_curveCns227Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns227Set.dsm" -na;
connectAttr "mgear_curveCns227.msg" "mgear_curveCns227Set.ub[0]";
connectAttr "tweak375.og[0]" "mgear_curveCns227GroupParts.ig";
connectAttr "mgear_curveCns227GroupId.id" "mgear_curveCns227GroupParts.gi";
connectAttr "groupParts750.og" "tweak375.ip[0].ig";
connectAttr "groupId8319.id" "tweak375.ip[0].gi";
connectAttr "groupId8319.msg" "tweakSet375.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet375.dsm" -na;
connectAttr "tweak375.msg" "tweakSet375.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts750.ig";
connectAttr "groupId8319.id" "groupParts750.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion45.i";
connectAttr "mgear_curveCns228GroupParts.og" "mgear_curveCns228.ip[0].ig";
connectAttr "mgear_curveCns228GroupId.id" "mgear_curveCns228.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns228.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns228.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns228.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns228.inputs[3]";
connectAttr "mgear_curveCns228GroupId.msg" "mgear_curveCns228Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns228Set.dsm" -na;
connectAttr "mgear_curveCns228.msg" "mgear_curveCns228Set.ub[0]";
connectAttr "tweak376.og[0]" "mgear_curveCns228GroupParts.ig";
connectAttr "mgear_curveCns228GroupId.id" "mgear_curveCns228GroupParts.gi";
connectAttr "groupParts752.og" "tweak376.ip[0].ig";
connectAttr "groupId8321.id" "tweak376.ip[0].gi";
connectAttr "groupId8321.msg" "tweakSet376.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet376.dsm" -na;
connectAttr "tweak376.msg" "tweakSet376.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts752.ig";
connectAttr "groupId8321.id" "groupParts752.gi";
connectAttr "mgear_curveCns222GroupParts.og" "mgear_curveCns222.ip[0].ig";
connectAttr "mgear_curveCns222GroupId.id" "mgear_curveCns222.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns222.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns222.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns222.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns222.inputs[3]";
connectAttr "mgear_curveCns222GroupId.msg" "mgear_curveCns222Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns222Set.dsm" -na;
connectAttr "mgear_curveCns222.msg" "mgear_curveCns222Set.ub[0]";
connectAttr "tweak370.og[0]" "mgear_curveCns222GroupParts.ig";
connectAttr "mgear_curveCns222GroupId.id" "mgear_curveCns222GroupParts.gi";
connectAttr "groupParts740.og" "tweak370.ip[0].ig";
connectAttr "groupId8309.id" "tweak370.ip[0].gi";
connectAttr "groupId8309.msg" "tweakSet370.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet370.dsm" -na;
connectAttr "tweak370.msg" "tweakSet370.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts740.ig";
connectAttr "groupId8309.id" "groupParts740.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion39.i";
connectAttr "mgear_curveCns221GroupParts.og" "mgear_curveCns221.ip[0].ig";
connectAttr "mgear_curveCns221GroupId.id" "mgear_curveCns221.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns221.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns221.inputs[1]";
connectAttr "mgear_curveCns221GroupId.msg" "mgear_curveCns221Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns221Set.dsm" -na;
connectAttr "mgear_curveCns221.msg" "mgear_curveCns221Set.ub[0]";
connectAttr "tweak369.og[0]" "mgear_curveCns221GroupParts.ig";
connectAttr "mgear_curveCns221GroupId.id" "mgear_curveCns221GroupParts.gi";
connectAttr "groupParts738.og" "tweak369.ip[0].ig";
connectAttr "groupId8307.id" "tweak369.ip[0].gi";
connectAttr "groupId8307.msg" "tweakSet369.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet369.dsm" -na;
connectAttr "tweak369.msg" "tweakSet369.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts738.ig";
connectAttr "groupId8307.id" "groupParts738.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion29.i";
connectAttr "mgear_curveCns203GroupParts.og" "mgear_curveCns203.ip[0].ig";
connectAttr "mgear_curveCns203GroupId.id" "mgear_curveCns203.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns203.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns203.inputs[1]";
connectAttr "mgear_curveCns203GroupId.msg" "mgear_curveCns203Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns203Set.dsm" -na;
connectAttr "mgear_curveCns203.msg" "mgear_curveCns203Set.ub[0]";
connectAttr "tweak351.og[0]" "mgear_curveCns203GroupParts.ig";
connectAttr "mgear_curveCns203GroupId.id" "mgear_curveCns203GroupParts.gi";
connectAttr "groupParts702.og" "tweak351.ip[0].ig";
connectAttr "groupId8271.id" "tweak351.ip[0].gi";
connectAttr "groupId8271.msg" "tweakSet351.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet351.dsm" -na;
connectAttr "tweak351.msg" "tweakSet351.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts702.ig";
connectAttr "groupId8271.id" "groupParts702.gi";
connectAttr "mgear_curveCns230GroupParts.og" "mgear_curveCns230.ip[0].ig";
connectAttr "mgear_curveCns230GroupId.id" "mgear_curveCns230.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns230.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns230.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns230.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns230.inputs[3]";
connectAttr "mgear_curveCns230GroupId.msg" "mgear_curveCns230Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns230Set.dsm" -na;
connectAttr "mgear_curveCns230.msg" "mgear_curveCns230Set.ub[0]";
connectAttr "tweak378.og[0]" "mgear_curveCns230GroupParts.ig";
connectAttr "mgear_curveCns230GroupId.id" "mgear_curveCns230GroupParts.gi";
connectAttr "groupParts756.og" "tweak378.ip[0].ig";
connectAttr "groupId8325.id" "tweak378.ip[0].gi";
connectAttr "groupId8325.msg" "tweakSet378.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet378.dsm" -na;
connectAttr "tweak378.msg" "tweakSet378.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts756.ig";
connectAttr "groupId8325.id" "groupParts756.gi";
connectAttr "mgear_curveCns231GroupParts.og" "mgear_curveCns231.ip[0].ig";
connectAttr "mgear_curveCns231GroupId.id" "mgear_curveCns231.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns231.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns231.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns231.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns231.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns231.inputs[4]";
connectAttr "mgear_curveCns231GroupId.msg" "mgear_curveCns231Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns231Set.dsm" -na;
connectAttr "mgear_curveCns231.msg" "mgear_curveCns231Set.ub[0]";
connectAttr "tweak379.og[0]" "mgear_curveCns231GroupParts.ig";
connectAttr "mgear_curveCns231GroupId.id" "mgear_curveCns231GroupParts.gi";
connectAttr "groupParts758.og" "tweak379.ip[0].ig";
connectAttr "groupId8327.id" "tweak379.ip[0].gi";
connectAttr "groupId8327.msg" "tweakSet379.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet379.dsm" -na;
connectAttr "tweak379.msg" "tweakSet379.ub[0]";
connectAttr "foot_L0_Shape1Orig.ws" "groupParts758.ig";
connectAttr "groupId8327.id" "groupParts758.gi";
connectAttr "mgear_curveCns229GroupParts.og" "mgear_curveCns229.ip[0].ig";
connectAttr "mgear_curveCns229GroupId.id" "mgear_curveCns229.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns229.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns229.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns229.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns229.inputs[3]";
connectAttr "mgear_curveCns229GroupId.msg" "mgear_curveCns229Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns229Set.dsm" -na;
connectAttr "mgear_curveCns229.msg" "mgear_curveCns229Set.ub[0]";
connectAttr "tweak377.og[0]" "mgear_curveCns229GroupParts.ig";
connectAttr "mgear_curveCns229GroupId.id" "mgear_curveCns229GroupParts.gi";
connectAttr "groupParts754.og" "tweak377.ip[0].ig";
connectAttr "groupId8323.id" "tweak377.ip[0].gi";
connectAttr "groupId8323.msg" "tweakSet377.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet377.dsm" -na;
connectAttr "tweak377.msg" "tweakSet377.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts754.ig";
connectAttr "groupId8323.id" "groupParts754.gi";
connectAttr "mgear_curveCns233GroupParts.og" "mgear_curveCns233.ip[0].ig";
connectAttr "mgear_curveCns233GroupId.id" "mgear_curveCns233.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns233.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns233.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns233.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns233.inputs[3]";
connectAttr "mgear_curveCns233GroupId.msg" "mgear_curveCns233Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns233Set.dsm" -na;
connectAttr "mgear_curveCns233.msg" "mgear_curveCns233Set.ub[0]";
connectAttr "tweak381.og[0]" "mgear_curveCns233GroupParts.ig";
connectAttr "mgear_curveCns233GroupId.id" "mgear_curveCns233GroupParts.gi";
connectAttr "groupParts762.og" "tweak381.ip[0].ig";
connectAttr "groupId8331.id" "tweak381.ip[0].gi";
connectAttr "groupId8331.msg" "tweakSet381.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet381.dsm" -na;
connectAttr "tweak381.msg" "tweakSet381.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts762.ig";
connectAttr "groupId8331.id" "groupParts762.gi";
connectAttr "mgear_curveCns234GroupParts.og" "mgear_curveCns234.ip[0].ig";
connectAttr "mgear_curveCns234GroupId.id" "mgear_curveCns234.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns234.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns234.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns234.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns234.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns234.inputs[4]";
connectAttr "mgear_curveCns234GroupId.msg" "mgear_curveCns234Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns234Set.dsm" -na;
connectAttr "mgear_curveCns234.msg" "mgear_curveCns234Set.ub[0]";
connectAttr "tweak382.og[0]" "mgear_curveCns234GroupParts.ig";
connectAttr "mgear_curveCns234GroupId.id" "mgear_curveCns234GroupParts.gi";
connectAttr "groupParts764.og" "tweak382.ip[0].ig";
connectAttr "groupId8333.id" "tweak382.ip[0].gi";
connectAttr "groupId8333.msg" "tweakSet382.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet382.dsm" -na;
connectAttr "tweak382.msg" "tweakSet382.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts764.ig";
connectAttr "groupId8333.id" "groupParts764.gi";
connectAttr "mgear_curveCns232GroupParts.og" "mgear_curveCns232.ip[0].ig";
connectAttr "mgear_curveCns232GroupId.id" "mgear_curveCns232.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns232.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns232.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns232.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns232.inputs[3]";
connectAttr "mgear_curveCns232GroupId.msg" "mgear_curveCns232Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns232Set.dsm" -na;
connectAttr "mgear_curveCns232.msg" "mgear_curveCns232Set.ub[0]";
connectAttr "tweak380.og[0]" "mgear_curveCns232GroupParts.ig";
connectAttr "mgear_curveCns232GroupId.id" "mgear_curveCns232GroupParts.gi";
connectAttr "groupParts760.og" "tweak380.ip[0].ig";
connectAttr "groupId8329.id" "tweak380.ip[0].gi";
connectAttr "groupId8329.msg" "tweakSet380.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet380.dsm" -na;
connectAttr "tweak380.msg" "tweakSet380.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts760.ig";
connectAttr "groupId8329.id" "groupParts760.gi";
// End of biped_guide.ma
