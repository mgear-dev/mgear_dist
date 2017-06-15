//Maya ASCII 2016ff07 scene
//Name: biped_guide.ma
//Last modified: Thu, Jun 15, 2017 05:33:49 PM
//Codeset: 932
requires maya "2016ff07";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260-1";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "guide";
	rename -uid "D73CA02F-47BE-1026-AD4D-6FB9A9842789";
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
	setAttr ".synoptic" -type "string" "";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-06-14 15:56:14.971000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.1.1";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "1838548E-4DBE-BBEC-20AB-1E98EFB6A160";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "8884EEAD-4A5B-8673-4157-F6A73647A530";
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
	rename -uid "1D748FAC-47F3-F9F3-66D8-C2A8EB40FCAF";
	setAttr -k off ".v";
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
	rename -uid "29B857A1-4510-828D-0B1A-7AB3A0A97BE2";
	setAttr -k off ".v";
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
	rename -uid "49512104-4607-A98B-A0D2-F7872A92FF64";
	setAttr -k off ".v";
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
	rename -uid "3A59ED71-4078-563E-6CDF-35B8D23D27B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "616C469B-457D-A3FF-C97B-ECA5FDC6E9CA";
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
	setAttr ".s" -type "double3" 1.953538996028755 1.9535389960287501 1.953538996028755 ;
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
	rename -uid "ED8ACB27-42A8-979C-F3B9-71AAC2BBB11E";
	setAttr -k off ".v";
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
	rename -uid "8B68F52E-4C45-9211-604A-6F9D5A459C7F";
	setAttr -k off ".v";
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
	rename -uid "D71DD72C-4594-F53B-F980-DF9D182294E7";
	setAttr -k off ".v";
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
	rename -uid "AE4164CF-4AC4-36BC-4DB9-0BB05F1C268E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "892F38BB-4078-F8BE-9FCA-81B8694EA66E";
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
	setAttr ".t" -type "double3" -2.7755575615628914e-017 2.6645352591003757e-015 -1.5407439555097887e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.3611093629270367e-015 1.4124500153760471e-030 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410481 0.51189149642410414 0.51189149642410325 ;
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
	setAttr ".autoBend" yes;
	setAttr ".centralTangent" yes;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "2ED79006-4DE0-BD1D-42E6-E38E7949232E";
	setAttr -k off ".v";
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
	rename -uid "DE9B7EF9-4A25-8372-D7C5-48AA3DB737D4";
	setAttr -k off ".v";
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
	rename -uid "A1ECC727-43EA-DC16-39B5-1CAA2F90F56B";
	setAttr -k off ".v";
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
	rename -uid "4C267B89-48D7-A92E-B816-F0BF79FDA354";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "A83BF933-45D5-FA1B-D8C7-E98514FA7476";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3760066881565205 -1.7486012637846216e-015 1.1709654061874394e-031 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.3611093629270477e-015 1.4124500153760508e-030 -6.3611093629270548e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999967 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "F26DF573-4981-6E5D-A881-BCBC16C41D8E";
	setAttr -k off ".v";
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
	rename -uid "C31AB12B-4038-963F-BFEF-D487E013BC39";
	setAttr -k off ".v";
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
	rename -uid "5FBAFAB3-4355-3345-5DA6-25A53C0295E7";
	setAttr -k off ".v";
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
	rename -uid "5293552D-45CE-B9AC-1A33-22B8A5691C8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B24E5479-4478-DCEB-28CB-538029CF4B1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B1012FA7-4A49-BCEC-3B97-12813AB7EA13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5F4D03C0-476A-3A31-9433-BFAE26CF6F06";
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
	setAttr ".t" -type "double3" 3.2578484988603424 0.60394549966678457 -1.9764781265571723 ;
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
	rename -uid "CD4012B7-4B60-1AB7-3023-2A92A213627E";
	setAttr -k off ".v";
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
	rename -uid "087A94AC-4B13-0AFE-98CF-CF9536AB5322";
	setAttr -k off ".v";
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
	rename -uid "DBA1A7AD-410A-6F95-33AF-5A8F3DA2C6AA";
	setAttr -k off ".v";
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
	rename -uid "22B1B2F8-4A5F-66C4-B0D7-CE82FD8D97F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "AE7D84F2-4576-B106-D715-A6AC7D2BE8D9";
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
	setAttr ".r" -type "double3" -6.3623615605976521e-015 1.784934097048785e-016 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000016 0.99999999999999878 ;
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
	rename -uid "790E4001-4479-CEE2-A3BF-0CB29DB5C189";
	setAttr -k off ".v";
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
	rename -uid "1A274934-432E-BBCD-557A-6AB805CC2071";
	setAttr -k off ".v";
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
	rename -uid "F8ABC09B-48AC-4536-C92D-9F882A5BF744";
	setAttr -k off ".v";
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
	rename -uid "7D220F87-4D4D-2B82-6233-E69CF788DB7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "2305EA02-49A9-80A4-0E23-3CB432925CCA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285644962 -0.91350954729966893 -1.5239746815175865 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.3623615605976687e-015 1.7849340970487909e-016 4.2738703532166073e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 0.999999999999997 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "5C152660-4414-C82F-FF47-1BAC32739D5C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip10Shape" -p "shoulder_L0_tip";
	rename -uid "5F012185-4B0A-1982-0F8E-D8966AFD1AAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_tip11Shape" -p "shoulder_L0_tip";
	rename -uid "679E8457-4A38-E5BF-59E2-35B97A02CC63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_tip12Shape" -p "shoulder_L0_tip";
	rename -uid "4DCADF8F-421E-7118-CC5E-46A9095E7214";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip12_0crvShape" -p "shoulder_L0_tip";
	rename -uid "FBB24F1C-48BF-0AF5-0E1C-B181ACF2E3F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip12_1crvShape" -p "shoulder_L0_tip";
	rename -uid "B7979679-4AE7-FB46-73D7-20868A19B3B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "84B801BE-45C0-89CF-7B01-EEAAECBAE53F";
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
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.2434497875801753e-014 -1.1102230246251565e-016 -1.1102230246251565e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.411212983179908 -5.4710434405384278 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999845 0.99999999999999956 ;
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
	setAttr ".pinrefarray" -type "string" "";
	setAttr ".maxstretch" 1.5;
	setAttr ".ikTR" yes;
	setAttr ".div0" 5;
	setAttr ".div1" 5;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "E359121A-40A2-66E5-18C4-C387CE5E31AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_root10Shape" -p "arm_L0_root";
	rename -uid "98242862-4EA0-AE14-B24D-518D5365CDE4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_root11Shape" -p "arm_L0_root";
	rename -uid "B16C07D4-4060-BB30-1CA9-21AE830F9099";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_root12Shape" -p "arm_L0_root";
	rename -uid "5651355E-4F37-E83E-8A6F-A194D1BDA383";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0A251EFD-4817-8E21-5C38-23B587EB36B2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.828333598232339 5.3290705182007514e-015 0.078976790252910156 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 4.6527758326223415e-015 -10.688700162784281 2.5792561680841237e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "242B9CEC-48C0-9386-A783-829B0BF30FAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow10Shape" -p "arm_L0_elbow";
	rename -uid "1BF62945-4292-8A16-F523-429133F1E122";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_elbow11Shape" -p "arm_L0_elbow";
	rename -uid "740F614E-4B07-FFB3-26F8-E0AC7C7226E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_elbow12Shape" -p "arm_L0_elbow";
	rename -uid "DD23BC48-4391-5F83-4784-4AB01EAA3B5C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow12_0crvShape" -p "arm_L0_elbow";
	rename -uid "F9D3A8A3-4B04-BE77-C781-9F880516BF07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow12_1crvShape" -p "arm_L0_elbow";
	rename -uid "A1E63DCE-40EE-AB81-DD7F-7C905373987D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "08D7C4DF-4266-76CC-42BD-F9B8583AFC47";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496814 -3.5527136788005009e-015 -0.1196061121823051 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.5582455498873053e-014 -2.3854160110976376e-015 2.8500751715926981e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000011 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "8B9598E7-421E-ECFF-24F8-A8882DA1214C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist10Shape" -p "arm_L0_wrist";
	rename -uid "03A84564-4D11-7164-B507-BB8DB3934944";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_wrist11Shape" -p "arm_L0_wrist";
	rename -uid "4A5E6667-4B36-CBAC-009F-7B97428951C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_wrist12Shape" -p "arm_L0_wrist";
	rename -uid "75D69A7D-42D4-8381-05AE-3981BAB2CFA4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist12_0crvShape" -p "arm_L0_wrist";
	rename -uid "6D2C9B82-46FA-5F00-0B4C-7DB230C98237";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist12_1crvShape" -p "arm_L0_wrist";
	rename -uid "718AAF0E-4D68-5EB1-92F9-E28735D2A4A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B8F6AD97-45AB-3D9C-3EC9-43840D89CCD7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308237 8.8817841970012523e-015 7.2164496600635175e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.5582455498873098e-014 -2.3854160110976368e-015 2.2313578937142479e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "031FE3B7-4047-1483-52CE-03A6EA24046C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_eff10Shape" -p "arm_L0_eff";
	rename -uid "EB26FA91-40AD-CFFD-51F5-59A69D048DE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_eff11Shape" -p "arm_L0_eff";
	rename -uid "94489DE5-4E69-E882-109E-888C2B1587A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_eff12Shape" -p "arm_L0_eff";
	rename -uid "0DA8D9F7-4728-716E-49A0-8E84563B873C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_eff12_0crvShape" -p "arm_L0_eff";
	rename -uid "43B6841E-45F0-72F1-1635-8E8F7A21CBE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_eff12_1crvShape" -p "arm_L0_eff";
	rename -uid "1858A98B-42F8-84B2-E537-E48EC173079D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6815085C-4ED7-0CEE-F864-CE82A8B3190B";
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
	setAttr ".t" -type "double3" -1.2124561875008144 0.56073114764518017 -0.29276117198398899 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.6178809501647501e-014 -7.951386703658788e-016 2.2189338519897802e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000011 ;
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
	rename -uid "FAF40B35-4B66-7112-622F-3CAC3B409658";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_L0_root10Shape" -p "armUI_L0_root";
	rename -uid "018A22AD-43F5-C604-B7C4-8A97F87B02ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_L0_root11Shape" -p "armUI_L0_root";
	rename -uid "C57393FB-4379-91D0-367A-81A2164E1257";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_L0_root12Shape" -p "armUI_L0_root";
	rename -uid "B1219246-401B-3F64-11BD-4CA483D27656";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "8671AE64-4AEA-C55A-5A89-1C944BDBAE06";
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
	setAttr ".t" -type "double3" -1.0556240028445756 -0.075350553640969764 0.35296225288850253 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008864654 93.717381466937283 86.467960127478023 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716897 0.30838721081716902 0.30838721081716913 ;
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
	rename -uid "41EE0834-469B-086D-9D00-3A82F67C4DD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_root10Shape" -p "meta_L0_root";
	rename -uid "540F5E54-42EB-FCB5-E999-E18F7B9C4B69";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_root11Shape" -p "meta_L0_root";
	rename -uid "DA41526E-457C-59EA-20CE-5ABB80D5409F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_root12Shape" -p "meta_L0_root";
	rename -uid "FD59C430-4EDC-189B-DAAC-61BB246D03AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "92B9DFD6-4DB7-7733-81D4-6D84AF679169";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617651 -7.1054273576010019e-015 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.6755285037662745e-013 -3.975693351829396e-015 -5.5659706925611543e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "6EC68DC3-44A9-5D0C-1FE6-3F8589129267";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc10Shape" -p "meta_L0_0_loc";
	rename -uid "83F8D809-4C91-9B9C-E6FF-6C9A53A459E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_0_loc11Shape" -p "meta_L0_0_loc";
	rename -uid "DAAAC29E-4D2B-71B0-CEC6-2FA784450FF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_0_loc12Shape" -p "meta_L0_0_loc";
	rename -uid "8BB1B004-4D11-2A40-DE82-D48FD5F657AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc12_0crvShape" -p "meta_L0_0_loc";
	rename -uid "197E5118-4063-DB92-F61F-8982B2A8E611";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc12_1crvShape" -p "meta_L0_0_loc";
	rename -uid "AFC5BFB3-416D-3C7E-A939-568D5E02EB74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6B6D3C52-44A6-4BE1-B3E3-D3AC7CDCCD7E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618229 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.6119174101370062e-013 -3.1805546814635176e-015 -5.5659706925611559e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "C2DB5B36-44B9-EF97-8959-29A452F80886";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc10Shape" -p "meta_L0_1_loc";
	rename -uid "50A5506D-4F0D-E145-383D-DD854FD1D74E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_1_loc11Shape" -p "meta_L0_1_loc";
	rename -uid "7994F2FA-4569-31BE-8933-D48C76331C0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_1_loc12Shape" -p "meta_L0_1_loc";
	rename -uid "3D88261C-45F6-6044-C3BD-C4A6E3DB08C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc12_0crvShape" -p "meta_L0_1_loc";
	rename -uid "1451CE58-4DD1-E9DA-F21C-CCBD8F6D80DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc12_1crvShape" -p "meta_L0_1_loc";
	rename -uid "BB4C65FB-45DE-F643-AEAD-F799EBD8D087";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4F03D266-48BE-A703-3155-E4A4F0982DF2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618539 7.1054273576010019e-015 -5.3290705182007514e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.6725467337524062e-013 -3.180554681463516e-015 -5.5659706925611528e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "1C215570-4F3F-5DC2-3F80-17A500A868D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc10Shape" -p "meta_L0_2_loc";
	rename -uid "4395803E-46E2-70F1-AF26-4D9048EDE1E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_2_loc11Shape" -p "meta_L0_2_loc";
	rename -uid "7B4568D6-4F19-F060-14E5-6F851BF9905C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_2_loc12Shape" -p "meta_L0_2_loc";
	rename -uid "8890141D-4722-B194-B856-3986D62EA01E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc12_0crvShape" -p "meta_L0_2_loc";
	rename -uid "9E3851B2-474B-622A-07FD-6E8A04A701AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc12_1crvShape" -p "meta_L0_2_loc";
	rename -uid "21AB02D1-4287-3063-1097-29BE74CF3DF3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "082F0295-43CF-AE23-DAD4-F28749CAF089";
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
	setAttr ".t" -type "double3" 0.27518484001103438 -0.17360051577788482 2.4946799341790218 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878603525 -68.587073855452218 -5.8163374181246512 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661785 1.2929668245661805 ;
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
	rename -uid "38F92ACB-4351-64EA-1BAD-45B50A5851A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_root10Shape" -p "finger_L3_root";
	rename -uid "02694543-4638-0AF6-0F28-4FB48A0BA35E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_root11Shape" -p "finger_L3_root";
	rename -uid "FDE4C148-43F0-9968-6A08-BE8E16F99B37";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_root12Shape" -p "finger_L3_root";
	rename -uid "3DA0ECF0-4892-02DD-F3F7-158905B3E60D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F35DAF92-4545-3AF4-4250-2685CB35FB6E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830562911 1.7763568394002505e-014 -3.3306690738754696e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.0032969612623853e-013 1.272221872585407e-014 -4.5720473546038059e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "290FB125-4939-AE01-32BD-1A94DBA55DC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc10Shape" -p "finger_L3_0_loc";
	rename -uid "3413C49C-47EC-7B5A-CA55-CA8341E4AF86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_0_loc11Shape" -p "finger_L3_0_loc";
	rename -uid "05AEE7E1-46A8-4D56-95C4-0BAB46852451";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_0_loc12Shape" -p "finger_L3_0_loc";
	rename -uid "2FC25633-432D-0904-3F8F-FA9A1AB7840A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc12_0crvShape" -p "finger_L3_0_loc";
	rename -uid "D17953F3-4FD2-6FA8-BE72-8780D8F48062";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc12_1crvShape" -p "finger_L3_0_loc";
	rename -uid "58AEF82F-4E54-9131-5110-CA90EBABC3D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0E901D7C-4648-F740-0CD0-09A5C1B93E0D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070874175 -1.0658141036401503e-014 8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.0191997346697089e-013 1.2722218725854067e-014 -8.9453100416161403e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "4BB93CF3-402E-977B-F95D-85AC3882567C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc10Shape" -p "finger_L3_1_loc";
	rename -uid "5A594BB1-429A-EDD8-5F6E-359805FD9AC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_1_loc11Shape" -p "finger_L3_1_loc";
	rename -uid "336FC216-4D7C-FD6C-5B8C-10876C0AECEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_1_loc12Shape" -p "finger_L3_1_loc";
	rename -uid "7FCCBFA9-4469-3595-ED9F-D285C7FBDB76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc12_0crvShape" -p "finger_L3_1_loc";
	rename -uid "61E80855-4E92-E146-93A6-A38FD9DD1F24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc12_1crvShape" -p "finger_L3_1_loc";
	rename -uid "B3F1F48F-4DD3-1451-834C-D8A5C6712562";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "92CFDCCC-481E-61A7-50FA-7A96FDB1FCC8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259195055 7.1054273576010019e-015 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.0351025080770154e-013 1.5902773407317571e-014 -6.3611093629270304e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000016 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "D8DFDF63-41B0-D7EA-B2BC-8D85B71327AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc10Shape" -p "finger_L3_2_loc";
	rename -uid "8AE81A98-4894-2411-D9A1-A28B64AE60C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_2_loc11Shape" -p "finger_L3_2_loc";
	rename -uid "AF565518-4070-63FE-D54D-86AAB6AE3297";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_2_loc12Shape" -p "finger_L3_2_loc";
	rename -uid "5AFB5245-4B63-C350-227E-F199C55035E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc12_0crvShape" -p "finger_L3_2_loc";
	rename -uid "0932DB81-4DE9-169E-F862-E9BFF03707F6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc12_1crvShape" -p "finger_L3_2_loc";
	rename -uid "EF1AC906-4F0F-FB36-9102-A896E36E37D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D91AA7AD-4450-E3F2-E3EE-018EB8423AEA";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "0EAB8376-46E9-F780-4C0C-B9BECFE99C9A";
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
createNode aimConstraint -n "finger_L3_blade_aimConstraint4" -p "finger_L3_blade";
	rename -uid "BD093A2E-4020-D578-6D4E-2AA0610B0285";
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
createNode pointConstraint -n "finger_L3_blade_pointConstraint4" -p "finger_L3_blade";
	rename -uid "72D48064-4828-4DE7-6CA0-00BCF40C86DD";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "1B03E8B7-413D-24A7-9781-92AB229BBD3B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754533 -29.032786855763558 1.4804327725029334 ;
	setAttr ".r" -type "double3" -7.5791665394120038 -14.304244378903769 49.348303523761253 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.6320983106786024 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "B06FC312-44B7-7EA5-6914-2385ED11021B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "72B4AA72-445F-3BA9-8ED8-0D97025B110A";
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
	rename -uid "AD06B37F-4BE2-91CD-3792-8D988E536B79";
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
	setAttr ".t" -type "double3" 0.21404201232122233 -0.17620518664715235 2.8414845756647402 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121379206 -82.086889237978255 -14.82971140496935 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661803 1.292966824566179 1.2929668245661805 ;
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
	rename -uid "91920371-4DFE-63F4-3E72-429375ABD0C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_root10Shape" -p "finger_L2_root";
	rename -uid "D87A131E-453D-13D3-191C-D0824EA94860";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_root11Shape" -p "finger_L2_root";
	rename -uid "7019F42E-40CA-7DAD-46F6-63B5A05485C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_root12Shape" -p "finger_L2_root";
	rename -uid "5BF133BE-4FF5-F17D-FACF-05A4CAA6F3F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "477AEA53-46F0-1662-4441-008AD299447A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406929 -2.4868995751603507e-014 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.5815308153577326e-012 0 9.4733318149059841e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "123061E5-4538-3620-6C47-2BAF8FF2F551";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc10Shape" -p "finger_L2_0_loc";
	rename -uid "FD0858AD-492D-0E78-1A36-158B242FB340";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_0_loc11Shape" -p "finger_L2_0_loc";
	rename -uid "6BF19B47-4DF0-54C8-E445-E783F2734ECF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_0_loc12Shape" -p "finger_L2_0_loc";
	rename -uid "4F496C7B-421A-7826-9A73-9BA4E0BD789A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc12_0crvShape" -p "finger_L2_0_loc";
	rename -uid "01E9E264-4689-7479-0E5A-92AD0713BDF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc12_1crvShape" -p "finger_L2_0_loc";
	rename -uid "5EFD38DE-4FDE-DE6D-B31D-AABE23FA08EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "81DE2AF1-45A4-B148-0921-E2BEE0EDF256";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176 1.0658141036401503e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.581332030690143e-012 1.9878466759146985e-016 4.1092518003674151e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "5134ABBC-44B7-707D-0D07-94A413DB2597";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc10Shape" -p "finger_L2_1_loc";
	rename -uid "888AC36A-4246-8192-CE50-E39020A77EDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_1_loc11Shape" -p "finger_L2_1_loc";
	rename -uid "86E92ED9-43EA-BE7B-5147-3A91DE4B51D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_1_loc12Shape" -p "finger_L2_1_loc";
	rename -uid "1AAF77C6-41FF-062F-5157-149D99FF56BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc12_0crvShape" -p "finger_L2_1_loc";
	rename -uid "9BD36E7F-4564-1918-ACE9-DAAA947964C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc12_1crvShape" -p "finger_L2_1_loc";
	rename -uid "C755DAE2-4F47-18E9-C39A-F09FAEEFE69D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "07705680-4271-AFBE-EB44-69AB4AA32800";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914733 -3.5527136788005009e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.5815308153577326e-012 0 9.3180312933501501e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000007 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "96853D7C-478B-225F-8E98-4B9ED508EE2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc10Shape" -p "finger_L2_2_loc";
	rename -uid "E9A896D0-41D5-65A7-6DA5-7396CA0FF4E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_2_loc11Shape" -p "finger_L2_2_loc";
	rename -uid "E78B3A8A-4B32-71A1-069C-BE8E5731CDEB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_2_loc12Shape" -p "finger_L2_2_loc";
	rename -uid "91FCBC17-40B4-9C87-901B-40B72EA74769";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc12_0crvShape" -p "finger_L2_2_loc";
	rename -uid "D1801429-4663-4682-0F18-A7BCB8003130";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc12_1crvShape" -p "finger_L2_2_loc";
	rename -uid "1C35308A-421E-D6DB-9838-3F8B88722880";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "43B4BBED-4568-DDD2-82ED-218D32C8016A";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000007 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "1190AC0D-411F-962B-2F97-99948F86F246";
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
createNode aimConstraint -n "finger_L2_blade_aimConstraint4" -p "finger_L2_blade";
	rename -uid "34629B50-4911-5502-5972-26BA50134DB7";
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
createNode pointConstraint -n "finger_L2_blade_pointConstraint4" -p "finger_L2_blade";
	rename -uid "A6640515-4651-7179-E1EA-34BCB7F1079B";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 0 -2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "1BC6A38C-44FC-FB74-4B58-6EAFA4F18164";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309135 -29.023661369441829 1.4173349723030875 ;
	setAttr ".r" -type "double3" -0.54140613098352164 -1.5904804996580479 47.737641631363751 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786016 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "E6CC5C22-49A2-A808-AF80-5ABBFF25233E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "5297F6B6-49B6-54A0-0868-CEA8483646A8";
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
	rename -uid "B9611CAC-4C2C-B440-7D18-73AE95436BF3";
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
	setAttr ".t" -type "double3" -0.0077643969605958318 -0.12358406696723279 2.9483952421545752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870179 -79.977014017421226 -112.77222628638098 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661794 1.2929668245661798 1.2929668245661803 ;
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
	rename -uid "724F34DC-4CE6-C73F-00E9-0CAFE8C92777";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_root10Shape" -p "finger_L1_root";
	rename -uid "72FF36B9-4327-ECE3-9FDE-99B966358EF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_root11Shape" -p "finger_L1_root";
	rename -uid "5F152906-43BC-9718-6635-68BCB1A69AA4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_root12Shape" -p "finger_L1_root";
	rename -uid "AF8D8842-4A80-D424-883F-509558A8739A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0C62B530-43FE-4E23-4859-DCB67786884D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999645 3.5527136788005009e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.1482966465892575e-013 -9.5416640443905471e-015 1.0933156717530836e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "A4A3044E-4DA4-A7D4-BBCB-F5A2B33250A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc10Shape" -p "finger_L1_0_loc";
	rename -uid "7C2E227A-44E8-20E8-35CE-E3958EC2BC69";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_0_loc11Shape" -p "finger_L1_0_loc";
	rename -uid "1641A9D6-4C40-85B7-A611-E7A925C99908";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_0_loc12Shape" -p "finger_L1_0_loc";
	rename -uid "3C043956-4DC0-E3F2-E2BA-A1A92D70D6B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc12_0crvShape" -p "finger_L1_0_loc";
	rename -uid "CE056B22-4C05-AB25-E07E-2CABA64D3693";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc12_1crvShape" -p "finger_L1_0_loc";
	rename -uid "1117699D-4CDF-2C2C-9A21-50A343DA5854";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "867BE0B5-4DF9-E40F-CACE-0A8A4E9D4896";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414017196 7.1054273576010019e-015 2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.1562480332929168e-013 -9.5416640443905471e-015 8.2495637050459953e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "798F73BF-44F2-D2A6-C7DB-3CA91E349652";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc10Shape" -p "finger_L1_1_loc";
	rename -uid "B167AAE2-44AC-B666-FA2D-D1A181D85E7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_1_loc11Shape" -p "finger_L1_1_loc";
	rename -uid "7AE87416-4C94-F648-08DB-5A980B7FE8A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_1_loc12Shape" -p "finger_L1_1_loc";
	rename -uid "5758DEE1-40F2-5750-F6C3-6DB7CF189788";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc12_0crvShape" -p "finger_L1_1_loc";
	rename -uid "2D09FC21-4821-FC37-BE0D-14BD51F2B821";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc12_1crvShape" -p "finger_L1_1_loc";
	rename -uid "F5955B1B-42F8-D88B-6162-2BAADB06C3B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9E2D9C5C-4F6D-C502-64A6-8FBB1D2B515A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 -1.0658141036401503e-014 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.1801021934038856e-013 -1.4312496066585827e-014 5.5659706925611543e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "2F41B249-4D85-3DAE-7436-B4A89739FA2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc10Shape" -p "finger_L1_2_loc";
	rename -uid "3053B13C-43AC-BB15-DC34-7E9D6420E93D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_2_loc11Shape" -p "finger_L1_2_loc";
	rename -uid "9E640D57-4C6E-F7EC-57E0-2AAEB57A9B49";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_2_loc12Shape" -p "finger_L1_2_loc";
	rename -uid "5262E217-4023-992B-D248-28B15539D272";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc12_0crvShape" -p "finger_L1_2_loc";
	rename -uid "D029CA55-476C-FCF0-6B72-68AFAC567EC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc12_1crvShape" -p "finger_L1_2_loc";
	rename -uid "597961F3-4539-97F3-92EA-B1A6CF6505F6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E10568DA-4BE0-3433-13FD-10A3C17C8B7C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "ED87D9B2-4E69-C74D-9B42-FAB17389FEB1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970766 0 0
		0 0.25859336491323587 0
		0 0 0
		;
createNode aimConstraint -n "finger_L1_blade_aimConstraint4" -p "finger_L1_blade";
	rename -uid "201A856F-475F-2FF8-67BE-B8A2B15147CC";
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
createNode pointConstraint -n "finger_L1_blade_pointConstraint4" -p "finger_L1_blade";
	rename -uid "51C5EC0B-4A40-5F71-85C3-DC9BFEC9D7EC";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 7.1054273576010019e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "34CD198C-46E9-A37C-57C3-ED94B05BDABD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153205 -28.040620010901261 1.1418187531112221 ;
	setAttr ".r" -type "double3" 5.8484943948522119 9.9768879508777513 54.111347352877907 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.632098310678602 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "E3E05B07-47E2-10A7-D434-B0A39A93A5B4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "8B2C76F5-46D3-44A5-C9D5-9ABB3B229938";
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
	rename -uid "C3FA1AC4-4F46-42DE-9DBA-F4A5933F534B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "86437929-4272-D1B7-7968-90A81B7854C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030138 0 0
		0 0.061677442163433793 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint4" -p "meta_L0_blade";
	rename -uid "096438AA-4B4E-D7C6-5CDD-0EBA75DF623E";
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
createNode pointConstraint -n "meta_L0_blade_pointConstraint4" -p "meta_L0_blade";
	rename -uid "B10E1CBD-483A-8588-589E-33B6C36494F1";
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
	setAttr ".rst" -type "double3" 8.8817841970012523e-016 -7.1054273576010019e-015 
		1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "A32CA885-4DF8-0ED9-A90A-10960F1474E4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400736 -38.076493243285398 11.714163621935336 ;
	setAttr ".r" -type "double3" -81.595645682431524 -44.654258545704437 89.275820115296426 ;
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041202 3.4032157947041277 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "1B472F51-4479-AED2-97A3-678F65E38884";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "82D1B348-4D97-90C0-40B0-1AA6FC4685A8";
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
	rename -uid "1534210A-43E4-142F-39F5-18A7295B45CC";
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
	setAttr ".t" -type "double3" -0.18403723679763084 -0.305860060470593 2.761423395950569 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808389 -71.606679450096337 -133.79382708612962 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661807 1.2929668245661818 ;
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
	rename -uid "E216E8EC-4DB2-D9C0-4DEC-CE8C2940A455";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_root10Shape" -p "finger_L0_root";
	rename -uid "54EB4868-4282-1431-6F2E-16AA60F961FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_root11Shape" -p "finger_L0_root";
	rename -uid "03FAB698-414E-437E-B59F-55AA5F5C560B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_root12Shape" -p "finger_L0_root";
	rename -uid "93B174EC-481E-2B14-8F99-C18B92C15350";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "A7E8D3DC-466F-C46F-8EA0-BC9A33C609B3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1 3.5527136788005009e-015 5.773159728050814e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 4.8980542094538197e-013 1.9083328088781113e-014 3.1805546814635187e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999944 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "84B926B4-4D60-D541-3C8C-718D26E88705";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc10Shape" -p "finger_L0_0_loc";
	rename -uid "FEF16CB0-4446-BF6A-2AC8-2298F6B4115E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_0_loc11Shape" -p "finger_L0_0_loc";
	rename -uid "F54AFED0-4D67-9B1D-1F11-1C9E09350369";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_0_loc12Shape" -p "finger_L0_0_loc";
	rename -uid "5EF83EAF-4914-5D10-FCCB-C89F8A03D398";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc12_0crvShape" -p "finger_L0_0_loc";
	rename -uid "5E614983-4F5D-0F1D-0B7B-BE8885B0F792";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc12_1crvShape" -p "finger_L0_0_loc";
	rename -uid "18A53A2A-4592-C91E-6127-11AAD2CDD0A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FB0391E9-4A9A-CFC4-4B9A-07AECDF744EA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080926719 -3.5527136788005009e-015 8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 4.8503458892318618e-013 1.2722218725854067e-014 -3.1805546814635168e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "A99BD12D-4A40-EB19-4DDF-B28FF01BCC1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc10Shape" -p "finger_L0_1_loc";
	rename -uid "CA7C78D6-410A-3835-27B8-1F9D99CF47FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_1_loc11Shape" -p "finger_L0_1_loc";
	rename -uid "F9C84375-461F-3B6B-4F3E-73938C353727";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_1_loc12Shape" -p "finger_L0_1_loc";
	rename -uid "02B529E7-47B4-6C84-A6B8-01A9CBB38631";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc12_0crvShape" -p "finger_L0_1_loc";
	rename -uid "73B4206C-4E3C-26AA-F393-418042551B41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc12_1crvShape" -p "finger_L0_1_loc";
	rename -uid "FA0183AE-4BCB-3E48-A77A-0C915F8C032E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "399E45AF-4158-4459-8DC6-E9995E483D6C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392369253 0 -3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 4.8503458892318628e-013 9.5416640443905503e-015 -2.3854160110976376e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "1302349D-4C58-9DA5-BA04-1585FC18D6C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc10Shape" -p "finger_L0_2_loc";
	rename -uid "7AB55C84-4324-ECA9-1E9D-19A9FDDF9ED3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_2_loc11Shape" -p "finger_L0_2_loc";
	rename -uid "C59A98BF-4852-F9EF-77CB-BAB24951EDC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_2_loc12Shape" -p "finger_L0_2_loc";
	rename -uid "DAD88AF2-454A-9245-E072-5B9A75415506";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc12_0crvShape" -p "finger_L0_2_loc";
	rename -uid "F57583AC-4E21-A135-D10D-A2A1B130D4E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc12_1crvShape" -p "finger_L0_2_loc";
	rename -uid "309918BA-4871-F972-05FE-18913C4E0A0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E112D294-4083-1B9E-394A-3FB131F2FD59";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999944 0.99999999999999944 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "2181E6BF-4530-DB5F-7B77-8495E0A7B91D";
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
createNode aimConstraint -n "finger_L0_blade_aimConstraint4" -p "finger_L0_blade";
	rename -uid "05C4593A-44A5-60AA-1CB3-EAAFD0E0C58F";
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
createNode pointConstraint -n "finger_L0_blade_pointConstraint4" -p "finger_L0_blade";
	rename -uid "18F0CE7B-44CE-6AEC-10E9-11A184A6B245";
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
	setAttr ".rst" -type "double3" -5.3290705182007514e-015 -3.5527136788005009e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "1CD2E415-4E21-F023-CBD4-13AA2E60F06D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713105 -27.336008057181026 2.4648652761317988 ;
	setAttr ".r" -type "double3" 9.1654334880164896 22.111176212558927 57.120615095544252 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106786002 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "5F68F33C-4440-9436-843B-44864EB7D8FF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "18E1049D-4D3C-23C5-09DF-48A1E5CBEC98";
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
	rename -uid "5770AC07-4136-0F64-7B10-30AD6D41579E";
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
	setAttr ".t" -type "double3" 0.21303623709073621 -0.2248912578980248 0.13070337452154618 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848166195 -84.001563523231468 11.009204406893071 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041202 3.4032157947041277 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "thumbRoll";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "sphere";
	setAttr ".ikrefarray" -type "string" "";
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "thumbRoll_L0_rootShape" -p "thumbRoll_L0_root";
	rename -uid "56B23336-4F7A-19AE-802B-6DBE80094A5A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root1Shape" -p "thumbRoll_L0_root";
	rename -uid "F8040941-48D2-F91E-FFD1-FABE7A4A8A9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root2Shape" -p "thumbRoll_L0_root";
	rename -uid "25FD2CEE-4BF9-C494-5025-7F9DBD0E612F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_L0_root3Shape" -p "thumbRoll_L0_root";
	rename -uid "7F3619AF-42A3-5BE3-93B2-DA95A238C70A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumb_L0_root" -p "thumbRoll_L0_root";
	rename -uid "A4703B9B-4954-82F4-4509-D59C561C515B";
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
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913329 -43.900240512230823 -37.623269198289577 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511072 0.48936434703510967 0.48936434703511122 ;
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
	rename -uid "055C34D6-4F0E-E78D-92CD-D0A6794B17F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_root10Shape" -p "thumb_L0_root";
	rename -uid "AC1E14F8-4AA0-F141-697E-4A811C928201";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_root11Shape" -p "thumb_L0_root";
	rename -uid "C80FC573-47BE-E538-546B-DBB7134E83FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_root12Shape" -p "thumb_L0_root";
	rename -uid "8476F561-4388-3961-E63A-D69FAAD51340";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "68E595F8-4967-959B-20F1-B782623B3AA3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469851 0.0024095775966932464 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.4471523800659016e-013 -6.3611093629270391e-015 -4.238425749806078 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999922 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "BDE6BEB9-484C-7873-7FBB-EAB963512030";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc10Shape" -p "thumb_L0_0_loc";
	rename -uid "B4B63F54-4EF4-66C6-B693-B2B81AA16038";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc11Shape" -p "thumb_L0_0_loc";
	rename -uid "8F40448C-4EC6-65BD-368E-329FCD710BC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_0_loc12Shape" -p "thumb_L0_0_loc";
	rename -uid "4D65DA04-453F-F5CE-B66A-8BBAB66FF4F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc12_0crvShape" -p "thumb_L0_0_loc";
	rename -uid "6BF00ED9-4C7D-F7B1-A0EE-D1A64B12E063";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc12_1crvShape" -p "thumb_L0_0_loc";
	rename -uid "30E5AE6A-437A-A9BE-A445-35B5D8A177D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "69DAEC1A-4AA2-B038-C05D-CA92F940A40E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.7644258014552161 -2.6645352591003757e-015 2.1316282072803006e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.2563190991780891e-013 0 -1.5902773407317587e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "1C93385B-437D-7180-496A-8FAA0EF973F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc10Shape" -p "thumb_L0_1_loc";
	rename -uid "C2CA58E1-40D2-0585-5ABF-D385A5CC8C00";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc11Shape" -p "thumb_L0_1_loc";
	rename -uid "1742DF55-477C-17B3-7784-E1ADFFE52A45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_1_loc12Shape" -p "thumb_L0_1_loc";
	rename -uid "D6730757-47B5-789E-78BA-4FAE4B6F8270";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc12_0crvShape" -p "thumb_L0_1_loc";
	rename -uid "9A176663-434A-F393-1051-9081C162C8AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc12_1crvShape" -p "thumb_L0_1_loc";
	rename -uid "D638AE74-46D8-314B-B4AD-8EBAA13BD747";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3979C455-4F46-626D-D420-C1B34DC48834";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915511275 4.4408920985006262e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.2722218725854065e-013 3.1805546814635176e-015 -1.272221872585407e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "DB828D64-4A4A-4BBE-073D-488AFAF924F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc10Shape" -p "thumb_L0_2_loc";
	rename -uid "2BDD5968-4A58-522B-1F36-DE9038036C4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc11Shape" -p "thumb_L0_2_loc";
	rename -uid "560E862B-4BE6-9915-91B5-BAADCCD61387";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_2_loc12Shape" -p "thumb_L0_2_loc";
	rename -uid "111E341C-4478-57D8-1217-23B29B43D1AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc12_0crvShape" -p "thumb_L0_2_loc";
	rename -uid "4807751B-43B2-9B8B-E313-D08166EBD698";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc12_1crvShape" -p "thumb_L0_2_loc";
	rename -uid "766C714D-46BC-0F8D-FF6B-24A4FA295DA8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E6F06AAA-4DD9-7689-2F4D-8F92EC538401";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999889 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "6A8C1FB5-401C-7856-E7F7-1CB2B07D0877";
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
createNode aimConstraint -n "thumb_L0_blade_aimConstraint4" -p "thumb_L0_blade";
	rename -uid "B72AFD20-4E2B-C0B8-C025-E8BE79724558";
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
	setAttr ".rsrr" -type "double3" -3.3116584830499673e-016 -2.3654202254658364e-013 
		0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint4" -p "thumb_L0_blade";
	rename -uid "15C83622-4399-D2AF-A5D5-AA9185D56966";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 8.8817841970012523e-016 -3.5527136788005009e-015 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "147A68B2-4056-3584-7625-7B8E1C69B454";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688552 -7.1018915006055883 17.729458649684059 ;
	setAttr ".r" -type "double3" -124.44302205362686 63.10073445444938 -77.281354162701334 ;
	setAttr ".s" -type "double3" 2.043467216315729 2.0434672163157206 2.043467216315725 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "11B4093E-4DF9-3882-8984-A1B26E54FBCC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "3FF3C206-4F3A-FEE2-6B56-F296DB3BCEF9";
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
	rename -uid "736BAA06-45DF-9789-4140-F3A6C7FBD7EF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648558 ;
	setAttr ".r" -type "double3" -2.1534408611045621 -4.1959370793366944 45.437740049298249 ;
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377391 1.0495082267377411 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "76BCB25E-4FE4-6027-E33A-CCBD4FD5B4C8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "5BCD5ED3-4BD8-AA3E-2096-6CB13F19BB31";
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
	rename -uid "8359B9E4-4D66-CA66-9EE9-61B541BADE4F";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999667 0.99999999999999811 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "CBB37B51-458A-C806-BEAE-E98EC35AC704";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000087 0 0
		0 0.20000000000000029 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint4" -p "shoulder_L0_blade";
	rename -uid "2BC5F276-4A7D-2968-67B3-C39BAC9DC839";
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
	setAttr ".o" -type "double3" 90 179.99999999999966 180.00000000000011 ;
	setAttr ".rsrr" -type "double3" 23.386262286472611 122.53864021838233 110.03040021520729 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint4" -p "shoulder_L0_blade";
	rename -uid "9383FD42-47DB-0A36-32EF-418A25B15522";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 1.7347234759768071e-017 1.3877787807814457e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "3C4F035F-4FB1-CF3C-DCA8-5B9EE1A5F3D8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509834 0.0092761897382757259 0.11673327753265011 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377369 1.0495082267377376 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "5EDE599E-4C7D-9E15-AC2B-F68E23014976";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "32D504E4-44C5-4AD6-1C9D-569B89AD66D2";
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
	rename -uid "1AAE0395-4847-CF47-FE40-E990C22E5CB7";
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
	setAttr ".t" -type "double3" 2.2667429610648515 0.53748181085566271 -4.2147015411630238e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 2.5444437451708156e-014 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.59839228104243458 0.59839228104243192 0.59839228104243136 ;
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
	rename -uid "7991EC95-499C-815F-C399-CAA1C1441E7E";
	setAttr -k off ".v";
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
	rename -uid "26B90772-43F3-8CEE-3432-3492B6C84F75";
	setAttr -k off ".v";
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
	rename -uid "7841E72B-4206-C6AE-BE2D-2CBFC7AA37EA";
	setAttr -k off ".v";
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
	rename -uid "0218990F-4E82-1669-AF17-32948B972386";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "D1018E60-4668-2A45-3F8A-46AE1DED47B6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981641286 2.4674946259578014 1.5382908879615225e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.0167092985348846e-015 -2.5444437451708298e-014 -4.0275061421835592e-029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999789 0.99999999999999767 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "F0DD36E8-46F0-956B-E3D8-468270EC29B0";
	setAttr -k off ".v";
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
	rename -uid "B296A638-429A-C20B-B2AF-2DACC88A5636";
	setAttr -k off ".v";
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
	rename -uid "AB0FA585-41B1-DAFC-3342-B081E206587B";
	setAttr -k off ".v";
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
	rename -uid "DB3FAF71-48B4-2F8E-7A6C-C7B3237CA738";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7899D6B8-46AC-2624-E0B7-778041C9DE6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "89F53668-4DB0-FD8D-A9D0-C8984F468E2E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FEEE54AB-4D70-AF96-D13D-22820E3ACAA6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 9.7144514654701197e-017 0.1000000000000334 1.2246467991476512e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.0167092985348689e-015 -2.5444437451708248e-014 -4.0275061421835603e-029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "7FFC2799-4B88-3A1E-13F7-A4AB4092B75D";
	setAttr -k off ".v";
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
	rename -uid "BE5561A1-41BE-997D-534E-599F980AEE58";
	setAttr -k off ".v";
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
	rename -uid "DD8384B6-40D1-9EBA-2814-4292808975CA";
	setAttr -k off ".v";
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
	rename -uid "B576705F-40AD-953A-6FF1-C4A0CB475215";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E06584DC-48BB-A623-2267-AC860CB97167";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "640AAF0E-45DA-E47E-4082-3FAF62189D05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "70512021-4584-07D7-E299-A58C69723B29";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1657341758564144e-015 3.0746209978281804 2.3592239273284419e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.0167092985348618e-015 -2.5444437451708226e-014 -4.0275061421835614e-029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "C6187C2C-4A5A-E544-66A6-2899266E8945";
	setAttr -k off ".v";
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
	rename -uid "6BB5CBC6-49AE-DA30-8EF5-859FAE0C8F22";
	setAttr -k off ".v";
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
	rename -uid "CD341B24-46AB-1601-F267-28A522F4BE88";
	setAttr -k off ".v";
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
	rename -uid "AAFCA1A4-462F-15BE-685F-93A2EB2D2DBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2EECA7BD-41ED-77F5-065D-889B22F2A038";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2C379F85-4831-09DE-807B-71AB042494CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CC73273E-4ECC-8C73-275A-99991274CF4D";
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
	setAttr ".t" -type "double3" 2.0122792321330962e-015 1.3604681763870019 7.2046004192796646e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.0167092985348649e-015 -2.5444437451708241e-014 -4.0275061421835614e-029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
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
	rename -uid "CB9B6EB8-47B2-BA7D-09F7-EBBFEE538424";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "faceUI_C0_root10Shape" -p "faceUI_C0_root";
	rename -uid "A5E9BA80-4FD1-7887-3BA6-9495C8099A98";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "faceUI_C0_root11Shape" -p "faceUI_C0_root";
	rename -uid "0F8AEB3D-4AA0-FAF1-682D-CEA5521DD4BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "faceUI_C0_root12Shape" -p "faceUI_C0_root";
	rename -uid "A2029759-44ED-0FFD-8DA8-15A3C7ABAC07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "8173D30F-482F-6CED-3398-D1B5E1A093AF";
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
	setAttr ".t" -type "double3" 8.6042284408449632e-016 -2.1316282072803006e-014 1.7723706024529101e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.8717038977768635e-029 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009501 0.95913545105009312 0.9591354510500899 ;
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
	rename -uid "7835F7BB-4186-35F8-12D0-EEAE11BBC729";
	setAttr -k off ".v";
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
	rename -uid "08232D09-4535-72F7-A54C-6A923229338C";
	setAttr -k off ".v";
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
	rename -uid "EBC97716-4034-23C7-5FB5-EEA38D7E03AE";
	setAttr -k off ".v";
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
	rename -uid "AE97DFB8-4A03-EB5F-3B54-94B53FD03397";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F69ECD61-4DF1-9162-0D74-9CA5A94E2296";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193656e-016 -0.62123610319594391 1.8022590188867593 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1.0000000000000004 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "7C472C44-4C72-C16F-21A2-C59D3D8DFC15";
	setAttr -k off ".v";
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
	rename -uid "247E4EF0-4059-911F-EEB5-BDA287748D84";
	setAttr -k off ".v";
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
	rename -uid "53107AEF-4D55-FADD-C516-0197FD776348";
	setAttr -k off ".v";
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
	rename -uid "5A2C962D-4921-962E-98DD-01A2C8F95EC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "86A065BC-4F8B-2951-6443-02B13FCA4C1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C8B95C5A-41B5-824F-1FBC-239EABCB8CCA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "98AB2C56-4FB7-40D3-100A-74B9ABBE5E8B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.9761536313414973e-017 0.12388352783450074 0.23628786867351481 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585402e-014 -2.5444437451708207e-014 -7.0167092985348957e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "956CC4DB-4786-1940-3031-DDB10F9BC145";
	setAttr -k off ".v";
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
	rename -uid "18DF984B-4001-5EB6-C3C9-90A66A954032";
	setAttr -k off ".v";
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
	rename -uid "D1A331FA-488B-3EC9-9C4B-44A164940334";
	setAttr -k off ".v";
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
	rename -uid "F6CFFC98-4BD3-B9A7-BF2C-0F9DEFC337BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D118CDFD-45CA-2512-268F-1DAEA82188F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6013EEEA-442E-7AC9-52B0-2A9E482FA8D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "84B146B5-4A93-4988-F24E-A3AEE1E4BFEE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904467e-015 -30.11503766976147 -2.1322109539326473 ;
	setAttr ".r" -type "double3" -1.2722218725854028e-014 -2.5444437451708207e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007573 1.8286050763007582 1.8286050763007593 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "8BDAA086-4750-C6CB-86C9-F8B376A1290F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "FBE79D06-4586-08C2-48C8-62A711772E5E";
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
	rename -uid "BFE470C3-449F-14B8-CCF0-3597AE95E2B4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.877562128384509e-017 -0.14678247393468169 0.18194531820222393 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585402e-014 -2.5444437451708207e-014 -7.0167092985348957e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "541B1533-42EB-2E76-2F12-138938E2823A";
	setAttr -k off ".v";
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
	rename -uid "1F6AAABB-4764-D225-11D2-64AA67873ECD";
	setAttr -k off ".v";
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
	rename -uid "D94EB2C0-4A29-F1DD-5C20-C7BE313B4361";
	setAttr -k off ".v";
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
	rename -uid "1BB4C2ED-4210-36D9-7183-D0B5BE4AFAA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "139891E0-46B2-D0DA-E5CB-B8B0BE7C8484";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5B8D192F-424F-DF9F-F6B9-77AC5461AEAE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "13D43DC0-415C-5A09-A1AA-A7838F8393B3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200166e-015 -29.844371667992284 -2.0778684034613564 ;
	setAttr ".r" -type "double3" -1.2722218725854028e-014 -2.5444437451708207e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007573 1.8286050763007582 1.8286050763007593 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "0E1E3E8C-4A7D-5AD0-7259-B4A59FA0C976";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "77BA4D71-42F1-4566-003F-7B9A6DC91402";
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
	rename -uid "AC76A272-408F-98EB-C52D-95918978E8AD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0917243463457525e-015 -1.4111110000775078 2.0692083234973313 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1.0000000000000004 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "0C495E6D-44CA-9561-A0F6-C2BF35198919";
	setAttr -k off ".v";
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
	rename -uid "025BA533-4B73-18D7-07BE-2C8CC35F2262";
	setAttr -k off ".v";
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
	rename -uid "94FF2537-478C-6D1B-651E-20B3D9FF2E9A";
	setAttr -k off ".v";
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
	rename -uid "375E62D0-45B9-4960-C94A-798349CB7331";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C3882AAC-4B4B-9B30-8C22-BEB773005E66";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5D2C87A7-406E-5423-B2BA-60BA7A046347";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C06EB658-48A4-8156-827C-069BF6FA4F13";
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
	setAttr ".t" -type "double3" 8.2909663197644151e-016 0.86108709817295193 -1.6295011454214583 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.272221872585402e-014 -2.54444374517082e-014 -7.0167092985348949e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700591 0.17172273903700599 0.17172273903700608 ;
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
	rename -uid "ABCB2456-43A5-C322-5DAC-2DABA3EB5CF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_root10Shape" -p "tongue_C0_root";
	rename -uid "ED7A5D8E-4A83-F6F1-CA13-FA93B96DD7AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_root11Shape" -p "tongue_C0_root";
	rename -uid "5C5E5332-4F0F-CA72-7F3F-D1BCBB14C276";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_root12Shape" -p "tongue_C0_root";
	rename -uid "592DB0B2-4241-1215-ECBB-F692ECA41852";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B60818C5-4339-8CFB-4DF7-E793D7CF339E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180639276e-016 -5.6843418860808015e-014 1.5794817263027467 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854012e-014 -2.5444437451708185e-014 -7.0167092985348933e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "CECA3B09-473D-E2CA-0F95-52985F47D24B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc10Shape" -p "tongue_C0_0_loc";
	rename -uid "1DEE1B9D-44EC-2425-6131-78A75B8EABD5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc11Shape" -p "tongue_C0_0_loc";
	rename -uid "0FB285F8-4620-2114-BFFA-1FA498B6C78E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_0_loc12Shape" -p "tongue_C0_0_loc";
	rename -uid "067D2BCB-4946-098D-EBEC-B986DB0BE5DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc12_0crvShape" -p "tongue_C0_0_loc";
	rename -uid "A7673396-4D37-52F9-3762-A084B77D1F6D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc12_1crvShape" -p "tongue_C0_0_loc";
	rename -uid "7265B895-4872-D1BE-BB95-8CB835D5DD29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3531E570-45A9-1CE5-62DC-4B92C5378D6A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.2170680441440984e-016 -0.1655662075150417 1.5794817263027401 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854007e-014 -2.5444437451708175e-014 -7.0167092985348902e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999978 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "9FFAFF23-4122-7D2C-3210-9AAF2CFB8E53";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc10Shape" -p "tongue_C0_1_loc";
	rename -uid "59BF59C6-4D22-E5C4-29D7-B6A0B760B420";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc11Shape" -p "tongue_C0_1_loc";
	rename -uid "459C92D2-41F1-A584-FB34-A6A9055E9A2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_1_loc12Shape" -p "tongue_C0_1_loc";
	rename -uid "2E45C8A8-4606-0C5E-4B7A-DFBF6C10B5A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc12_0crvShape" -p "tongue_C0_1_loc";
	rename -uid "22EDAB4F-49C3-D429-5204-7286269B74AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc12_1crvShape" -p "tongue_C0_1_loc";
	rename -uid "125AA46E-401B-8C65-8A9E-57B3A0BF9ABC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EAB84B42-4705-E710-CDE6-FD998CB28097";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544645832e-016 -0.31043663909068187 1.5794817263027472 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854015e-014 -2.5444437451708191e-014 -7.0167092985348917e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "55AF173D-427C-09B3-D7B4-1C8A6F555F05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc10Shape" -p "tongue_C0_2_loc";
	rename -uid "64C004B8-4DEE-0664-DB8B-F58C4916157F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc11Shape" -p "tongue_C0_2_loc";
	rename -uid "7DE24D90-4D6E-881D-26EA-6E842221AFCF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_2_loc12Shape" -p "tongue_C0_2_loc";
	rename -uid "78F79DE2-4D5B-EDB0-5649-678690209BB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc12_0crvShape" -p "tongue_C0_2_loc";
	rename -uid "101A8ED8-4E88-5B7B-F543-F4B8E9B621B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc12_1crvShape" -p "tongue_C0_2_loc";
	rename -uid "34C8F70B-4874-F228-0BD0-179FA5E75DE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4A0066B0-4671-8AAF-BB36-48A10663995D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.090342965344185e-016 -0.062087327818204585 1.5794817263027419 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725854007e-014 -2.5444437451708169e-014 -7.0167092985348933e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "00753F80-4CAB-3C7E-4B32-B1BD1B619B08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc10Shape" -p "tongue_C0_3_loc";
	rename -uid "8418BE7A-42DA-6E49-B720-3088B4390AE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc11Shape" -p "tongue_C0_3_loc";
	rename -uid "3B54B7D7-4716-C4A0-DBAF-B9AF07FD21C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_3_loc12Shape" -p "tongue_C0_3_loc";
	rename -uid "F8D59A37-41EE-8246-3C0E-F88F036D0B8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc12_0crvShape" -p "tongue_C0_3_loc";
	rename -uid "FB1155B4-490C-C3C2-68B6-6E91D67C5735";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc12_1crvShape" -p "tongue_C0_3_loc";
	rename -uid "B4E730F9-493A-ECDC-ACBB-66ADA0AA2E27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0565825B-441D-C837-47F3-2E8D48293834";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "069D4B22-4B7D-71A0-74F2-2B8409E8513F";
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
createNode aimConstraint -n "tongue_C0_blade_aimConstraint4" -p "tongue_C0_blade";
	rename -uid "A29EBC50-4966-632A-B6FA-C9ADFAF46C96";
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
	setAttr ".rsrr" -type "double3" -1.0309989471807224e-012 -89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint4" -p "tongue_C0_blade";
	rename -uid "90AE1D9C-4172-E35E-B93B-CE8A91405537";
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
	setAttr ".rst" -type "double3" -6.3108872417680944e-030 -2.8421709430404007e-014 
		-4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "41F776AA-4B9F-F01D-B31F-12A2F2F8187E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046809e-014 -175.06339877760723 -3.1060024283289871 ;
	setAttr ".r" -type "double3" -1.272221872585401e-014 -2.5444437451708185e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 10.6485902015964 10.648590201596406 10.648590201596402 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "6A9A39C0-44B9-8A37-F46D-CA978A4916C5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "FCE0EAEF-4FA4-4845-2EF8-2C935FBEB694";
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
	rename -uid "A1B23144-40A2-BD1D-26E7-92BEA975F0EE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757915e-015 -30.612390245122928 -0.093664066372369834 ;
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.8286050763007562 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "E0848BEE-40C2-C1B0-A337-D9AB8F705727";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "027C3BEF-4E46-14BB-E0F0-6AABD479736F";
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
	rename -uid "BFF5E4B3-4F94-0198-BF56-FFB557FC560E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757915e-015 -30.612390245122928 -0.093664066372369834 ;
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.8286050763007562 ;
createNode nurbsCurve -n "mouth_C0_crv4Shape" -p "mouth_C0_crv4";
	rename -uid "DA40A1AE-4A6F-9A96-D4DC-6A9F0ED8FFE1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv4ShapeOrig" -p "mouth_C0_crv4";
	rename -uid "1C3A3308-4109-8F89-9159-BE9D5E6CB48B";
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
	rename -uid "37E253F9-47D6-72A9-CE8C-50B3A666D2B7";
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
	setAttr ".t" -type "double3" -5.2613992666289651 0.71045535901633627 -3.3130608822386256e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.8717038977768635e-029 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932592 1.6711445512932541 1.6711445512932506 ;
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
	rename -uid "80C5AAC4-423F-31AD-51A3-7DB745B7DBFF";
	setAttr -k off ".v";
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
	rename -uid "0FF28691-4ADA-6E26-DB47-E884CF2FEA77";
	setAttr -k off ".v";
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
	rename -uid "D1B1FD30-49D3-0325-6BCB-B4A6A1107AD9";
	setAttr -k off ".v";
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
	rename -uid "9B17240F-471A-8AC7-979E-0EA9BBD2BF09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B62B5948-4CA0-4BEB-E9A6-4DBE100138C3";
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
	setAttr ".t" -type "double3" -1.4961368484464257 0.70921581084615326 -0.51425464314724401 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 4.2692382924202436e-029 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999944 -0.99999999999999944 ;
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
	rename -uid "D78452D1-44E8-F7FF-1632-BCB04D56D1DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_root10Shape" -p "eye_R0_root";
	rename -uid "660CA4E0-42FC-1014-6B39-2BB14069CFBC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_root11Shape" -p "eye_R0_root";
	rename -uid "520A24AE-49BB-F245-801E-288A7D8EF156";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_root12Shape" -p "eye_R0_root";
	rename -uid "D9134A89-475E-94BC-25B7-F1845EE54A76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "D570FE10-403B-3C61-E6F1-5D9189861127";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 -1.0658141036401503e-014 3.7697842257179204 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.3147434281047592e-014 6.5559993560766987e-016 7.0167092985348949e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "C324652A-420B-FC37-A266-F58E4637DB74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_look10Shape" -p "eye_R0_look";
	rename -uid "57BD8654-4979-6A0A-F37F-9FB3E9919E59";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_look11Shape" -p "eye_R0_look";
	rename -uid "0EBC73B7-4412-7519-B24B-36BA0B2D2AB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_look12Shape" -p "eye_R0_look";
	rename -uid "F9740F7A-46B7-DAAE-55C6-CB9DDC2CE262";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_R0_look12_0crvShape" -p "eye_R0_look";
	rename -uid "1DECF7B5-4A35-CB13-A323-E69D567C3768";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_R0_look12_1crvShape" -p "eye_R0_look";
	rename -uid "D5E6D1E5-4A5A-1B4E-ACCC-7A9988188100";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "468D36F5-43B0-7ACA-F8E7-348D86BA3020";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723901 -30.070644536323638 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.753879954650218 1.7538799546502197 -1.7538799546502115 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "FFB515BA-44E7-35B9-F2CB-AE95BFE10B6E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "C6141A36-4327-6F51-E0E1-6AB76B224B4E";
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
	rename -uid "01471E0F-43E9-E544-61FC-5B9E8ADAC14C";
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
	setAttr ".t" -type "double3" -1.4961368484464257 0.70921581084615326 0.51425464314724212 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.8717038977768635e-029 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1 ;
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
	rename -uid "0E7E4A8B-43AE-5245-FCC2-1A9671088B22";
	setAttr -k off ".v";
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
	rename -uid "D5E128CD-4AD4-194D-E7EA-4B8B3F739ECD";
	setAttr -k off ".v";
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
	rename -uid "2DFB183A-41CD-2E64-AB46-23A53F04DBDF";
	setAttr -k off ".v";
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
	rename -uid "85EE6191-4493-2EC5-3FA2-EE88F64B9E55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "71EA8E00-4835-9E34-2675-2AA39AEA73B1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-014 3.769784225717915 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.2722218725853952e-014 -2.5444437451708087e-014 -7.0167092985349004e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999767 0.99999999999999967 0.99999999999999822 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "3FED8365-450A-A46C-608C-4A8ED165E86E";
	setAttr -k off ".v";
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
	rename -uid "C574DCBD-45DE-70FB-8043-D2B023F04097";
	setAttr -k off ".v";
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
	rename -uid "A1F1EE90-4C1F-FDEA-3391-29ABABB66E4A";
	setAttr -k off ".v";
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
	rename -uid "FEE9A281-479A-E65D-44CE-EE9B0344A787";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BD8B4F40-42A4-0C76-E45C-6B885788966B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "70033A41-45AA-D46E-EB22-8C831B957BE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D7771076-4B38-ED07-5A9F-6291F5C7E368";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724567 -30.070644536323634 -1.5859733749936746 ;
	setAttr ".r" -type "double3" -1.2722218725853952e-014 -2.5444437451708084e-014 -7.0167092985348988e-015 ;
	setAttr ".s" -type "double3" 1.7538799546502166 1.7538799546502193 1.7538799546502097 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "41AF6A10-4F74-4F0E-610E-A995982186E3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "80657099-4469-F8DD-E776-37B8E548B3AD";
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
	rename -uid "6CF8CC23-4E69-09D9-15E1-C092B60C229C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211563146 -0.34322132772768299 -2.0300963192810955e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.0167092985348689e-015 -2.5444437451708248e-014 -4.0275061421835603e-029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "A653FCC6-411D-D6AA-CD8A-D7B9A1B34C27";
	setAttr -k off ".v";
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
	rename -uid "FB257253-4383-1E73-852C-47A98ADF896E";
	setAttr -k off ".v";
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
	rename -uid "D9E7366F-4AF0-9387-80D1-C5913AF5FDC1";
	setAttr -k off ".v";
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
	rename -uid "E82D890F-44C2-C281-C7DD-719573E5DCE1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7D5559DF-4E1F-EFE0-1B52-55BD0C17A0BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5FF83773-44BF-DA8E-2665-0CA53312FAFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3AD3CC35-46D7-5005-D900-22AA9097645E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547249509 -29.261428725477426 -4.0684386981538104e-015 ;
	setAttr ".r" -type "double3" -3.8717038977768618e-029 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502186 1.7538799546502182 1.7538799546502106 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "BD3019B7-4649-391D-9FCC-B984419FC37B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "58193AC1-46C9-F8E1-05E4-4FA4E360AFFC";
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
	rename -uid "B990F1FF-49C3-EF13-D50D-C983221AEAD3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198172158 0.45329667709499333 3.8508704761369719e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.0167092985348846e-015 -2.5444437451708298e-014 -4.0275061421835592e-029 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999789 0.99999999999999767 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "069CA7F1-464A-B580-7C9E-49B56F784C6B";
	setAttr -k off ".v";
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
	rename -uid "79C939C9-4E74-63CB-E341-75BD48C87F25";
	setAttr -k off ".v";
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
	rename -uid "E2F2182B-49BE-E54F-2897-A59F8AD31206";
	setAttr -k off ".v";
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
	rename -uid "83E8D2F5-4862-D5BF-49C0-BF9B7BC7385F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EE911693-4CCD-A9DC-D95F-2B9A03A8ADEE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6CE7C44D-48FB-4C90-BF95-87897CAE186E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "489E5CA6-448E-140D-83B7-32AB74548948";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932515 1.6711445512932488 1.6711445512932457 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 360;
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "2474EDF0-4421-0088-B2D7-77BD5810BE19";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546076 0 0
		0 0.11967845620848692 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint4" -p "neck_C0_blade";
	rename -uid "4C2CDB09-48ED-7369-BF1B-0FBD8352B427";
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
	setAttr ".o" -type "double3" 360 0 359.99999999999983 ;
	setAttr ".rsrr" -type "double3" 540 2.406790253807873e-021 459.58898802263519 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint4" -p "neck_C0_blade";
	rename -uid "41CBC6B7-43BC-4475-3355-328B26A4ABC0";
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
	setAttr ".rst" -type "double3" 1.1102230246251565e-016 0 -7.8886090522101181e-031 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "2614042F-40A1-E837-DD98-EAA84D5DB940";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916358 -26.793934099519557 -3.9146096093576574e-015 ;
	setAttr ".r" -type "double3" -3.8717038977768607e-029 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502186 1.7538799546502142 1.7538799546502071 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "AEA6B13D-4D32-ED95-C513-26AAC19071FC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "D9EF0B2A-4C3F-14A0-476A-F59EB12CFA68";
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
	rename -uid "CDE8E8E4-43FF-934B-0F8D-3E9865B582DD";
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
	setAttr ".t" -type "double3" 1.7395848890977454 -0.016853043661003125 0.11673327753265005 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.8165403979891624e-014 1.2900712135558964e-014 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000018 -0.99999999999999878 ;
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
	rename -uid "B85A97F7-4D11-2F34-A737-04BBFE34E792";
	setAttr -k off ".v";
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
	rename -uid "E402B414-440F-0176-3324-4080A0CFA931";
	setAttr -k off ".v";
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
	rename -uid "1EA62368-418C-E579-4610-63A203BDE899";
	setAttr -k off ".v";
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
	rename -uid "4BDEBF58-4DD1-DC9C-F232-4C98E5AF14A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5F638BB9-4BF4-F6E8-0158-1690E00235A8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645495 -0.91350954729966938 -1.5239746815175861 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.8163969647897151e-014 -1.2995405052580617e-014 -1.9878466759147011e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 0.99999999999999645 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "8437BE96-452E-0D15-38FA-5086DAF962B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip1Shape" -p "shoulder_R0_tip";
	rename -uid "C211EC5C-45EF-B31C-26EE-F786058EC548";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_tip2Shape" -p "shoulder_R0_tip";
	rename -uid "4BBB783F-4853-A8E0-D9B2-D680F21FB312";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_tip3Shape" -p "shoulder_R0_tip";
	rename -uid "26AF4EF4-4A0B-CC7C-9015-D7BCDE4B25E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip3_0crvShape" -p "shoulder_R0_tip";
	rename -uid "497E3FD4-4ABA-330A-988D-02B5B79B1E98";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip3_1crvShape" -p "shoulder_R0_tip";
	rename -uid "042A80CE-4964-0B95-4C23-01AB9563A03C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "37D5A912-4DDC-957E-A17D-3583C607A6FC";
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
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0658141036401503e-014 -2.2204460492503131e-016 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386933 44.411212983179908 -5.4710434405384794 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999833 1 ;
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
	setAttr ".pinrefarray" -type "string" "";
	setAttr ".maxstretch" 1.5;
	setAttr ".ikTR" yes;
	setAttr ".div0" 5;
	setAttr ".div1" 5;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "83F55BB1-45C0-B697-93C3-6B8375CE0C64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_root1Shape" -p "arm_R0_root";
	rename -uid "4D118EEF-46E5-6388-B44F-4EB09678116E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_root2Shape" -p "arm_R0_root";
	rename -uid "0D3E8391-4FF1-F8CD-D1A7-67AE5814003D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_root3Shape" -p "arm_R0_root";
	rename -uid "D88E85A2-47A2-1807-7710-B5BBC77EAA8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "3450CC63-4EDD-C6F3-6049-C9AF5415794A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323381 3.5527136788005009e-015 0.078976790252910378 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -2.0027165540417907e-014 -10.688700162784277 -2.1038638547509726e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "D820ADE9-431C-3797-2811-E5AF24F00F88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow1Shape" -p "arm_R0_elbow";
	rename -uid "C5CFACCF-4E19-F105-A552-0293944CADC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_elbow2Shape" -p "arm_R0_elbow";
	rename -uid "4173232D-4E72-DB3E-5639-5B8E307F9F26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_elbow3Shape" -p "arm_R0_elbow";
	rename -uid "5A18AC2A-4B05-469B-F7B3-E2BB9061AFB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow3_0crvShape" -p "arm_R0_elbow";
	rename -uid "D47CB804-4978-4A3E-FE5F-56BA6832AF26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow3_1crvShape" -p "arm_R0_elbow";
	rename -uid "2354AF89-4826-586C-A13B-009BF07554DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F99361E0-4200-33ED-97C7-2B935E6B3228";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496836 -3.5527136788005009e-015 -0.11960611218230438 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.903904627466645e-014 -1.5902773407317584e-015 -1.7368810330804673e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "1701C7B7-4530-3486-0CAC-54826F0E0A97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist1Shape" -p "arm_R0_wrist";
	rename -uid "B119A015-42DA-D2F0-8D1D-FD833255493B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_wrist2Shape" -p "arm_R0_wrist";
	rename -uid "0323FEFA-4076-0F66-2D88-A0BA71F373E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_wrist3Shape" -p "arm_R0_wrist";
	rename -uid "B42CA02C-464E-846B-A238-08B9DC83C59A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist3_0crvShape" -p "arm_R0_wrist";
	rename -uid "6EA9A71A-4F70-CDB0-EE6D-679EC3BADF4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist3_1crvShape" -p "arm_R0_wrist";
	rename -uid "844FF2D3-4250-7EC0-DF8A-1FB88CB81C6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6AAEEFAD-43C3-CD32-DD98-4591EF4CE640";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308224 8.8817841970012523e-015 9.4368957093138306e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.9039046274666538e-014 -1.5902773407317584e-015 2.1120870931593667e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "95D9B6D9-4A8E-23E4-5161-C1B204A56029";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_eff1Shape" -p "arm_R0_eff";
	rename -uid "8228AA81-46F6-52A3-EDCA-68B377EA2ACD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_eff2Shape" -p "arm_R0_eff";
	rename -uid "3AF5B7DF-4DF6-7CA8-055B-7F86CF15BDA8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_eff3Shape" -p "arm_R0_eff";
	rename -uid "C2B1A747-4682-6F7B-B394-228FEC17169B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_eff3_0crvShape" -p "arm_R0_eff";
	rename -uid "1B3D4724-4BCC-D8AE-F1AC-EBA649C1B211";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_R0_eff3_1crvShape" -p "arm_R0_eff";
	rename -uid "48440D44-4FD4-5A3F-FA9A-84AAB0592A9C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CA319555-4AC1-A18E-23A2-3FBC20F45168";
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
	setAttr ".t" -type "double3" -1.2124561875008157 0.56073114764518017 -0.2927611719839896 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.9436615609849465e-014 -1.5902773407317574e-015 4.994464773235675e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000011 ;
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
	rename -uid "A94F16E2-450B-6691-2AA7-CEB2DDCC256A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_R0_root1Shape" -p "armUI_R0_root";
	rename -uid "5970742D-4BB0-5C80-CFBF-77965187304F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_R0_root2Shape" -p "armUI_R0_root";
	rename -uid "5585F2CA-4930-B3B9-74A7-2286B55703D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_R0_root3Shape" -p "armUI_R0_root";
	rename -uid "C4803573-4837-553B-BE4B-6D9297DB679B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "2AE7B383-4CE0-26C0-9AC5-CA888E014B78";
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
	setAttr ".t" -type "double3" -1.0556240028445765 -0.075350553640967988 0.35296225288850225 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008865265 93.717381466937312 86.46796012747825 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716897 0.30838721081716902 0.30838721081716924 ;
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
	rename -uid "4AABD786-4C63-0B29-83F5-E4B4BDAE1AEB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_root1Shape" -p "meta_R0_root";
	rename -uid "157A23A8-4B75-871A-6CA0-AC9E6AD5A843";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_root2Shape" -p "meta_R0_root";
	rename -uid "59866315-4C82-724E-E421-DC866DD0C1E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_root3Shape" -p "meta_R0_root";
	rename -uid "DEEDD8D7-411B-26C7-93EC-25A92061EAE4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "946A4EF1-4904-279E-47C6-89810C4CDB24";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617651 -7.1054273576010019e-015 3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.1646519080561978e-013 8.7465253740246703e-015 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "C12FE6B6-449E-9F64-A126-C9AF05F1E37B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc1Shape" -p "meta_R0_0_loc";
	rename -uid "CDE7CFEE-4D9E-E831-6CEA-B087E6DE06F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_0_loc2Shape" -p "meta_R0_0_loc";
	rename -uid "92CE55D4-48E3-92A5-C993-17A6218298D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_0_loc3Shape" -p "meta_R0_0_loc";
	rename -uid "784F1385-4270-29A6-E44B-919055EA6A7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc3_0crvShape" -p "meta_R0_0_loc";
	rename -uid "CBC88FFC-4656-705A-C715-65B9366C916F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc3_1crvShape" -p "meta_R0_0_loc";
	rename -uid "27DED546-416A-2847-26CD-90A13FC68D4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B61F4EF9-4E44-A6A1-C032-BDA3A7C454C6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6632084735361814 7.1054273576010019e-015 1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.1656458313941566e-013 9.5416640443905503e-015 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "24FA2B85-420D-A071-FF74-F7BEB7C2584C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc1Shape" -p "meta_R0_1_loc";
	rename -uid "CCE2D046-4B39-ECC4-75F3-EBA215F8CC56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_1_loc2Shape" -p "meta_R0_1_loc";
	rename -uid "EF008D89-470C-0DDF-0802-6E8C3DB47A91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_1_loc3Shape" -p "meta_R0_1_loc";
	rename -uid "9F4BE391-4E8E-7B82-41C6-23A24AA038F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc3_0crvShape" -p "meta_R0_1_loc";
	rename -uid "BA9EA7BF-44E3-FE15-FF84-27989D70DF71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc3_1crvShape" -p "meta_R0_1_loc";
	rename -uid "D2AD8161-4181-7371-732D-EEA293075F61";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C0F9F1D1-4FB7-F474-A76A-CC8A4645E200";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618539 0 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.128870667889736e-013 7.1562480332929135e-015 -7.9513867036587919e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "7E420E21-4006-170E-CD36-F3A31C7C4561";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc1Shape" -p "meta_R0_2_loc";
	rename -uid "85D2D694-43EF-A0AF-8A7D-9CBBA2A79A3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_2_loc2Shape" -p "meta_R0_2_loc";
	rename -uid "D0768950-4601-A892-665A-DFB1E6F7B383";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_2_loc3Shape" -p "meta_R0_2_loc";
	rename -uid "BF193542-4DAB-C18F-3CE9-87B9D5650FA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc3_0crvShape" -p "meta_R0_2_loc";
	rename -uid "C8A888D3-473E-F3CA-E48B-0A997EFCBB1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc3_1crvShape" -p "meta_R0_2_loc";
	rename -uid "31B2623F-46B1-32EF-E1AD-3D8BBFF6E04F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A6BCC25E-4EC5-5FAB-C454-9EB52D8A592E";
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
	setAttr ".t" -type "double3" 0.27518484001103549 -0.17360051577787061 2.4946799341790218 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878599431 -68.587073855452246 -5.8163374181236787 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661787 1.2929668245661807 ;
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
	rename -uid "1020E9E4-4A21-B3E3-E9F0-A6AFFECB6ED6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_root1Shape" -p "finger_R3_root";
	rename -uid "837941D7-4520-B828-C233-BB8291236AF6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_root2Shape" -p "finger_R3_root";
	rename -uid "99DD0D9D-41CA-C490-637E-89B73392A872";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_root3Shape" -p "finger_R3_root";
	rename -uid "E565C9E5-4C64-03C2-7A1B-CBADA0248C00";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "430FAFD3-43A7-5C5B-CE15-7ABD92443079";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830562378 2.1316282072803006e-014 -3.7747582837255322e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.0271511213733612e-013 1.4312496066585827e-014 6.5598940305185035e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "441D8B91-42B5-60AA-1135-93BB095ACF89";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc1Shape" -p "finger_R3_0_loc";
	rename -uid "262DBE86-4D49-5A95-1635-E5A76B685983";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_0_loc2Shape" -p "finger_R3_0_loc";
	rename -uid "F445FF44-4EEA-6E57-D4AC-4798D4975CEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_0_loc3Shape" -p "finger_R3_0_loc";
	rename -uid "AA51F263-43CE-E1FA-B041-70ACAD8CACF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc3_0crvShape" -p "finger_R3_0_loc";
	rename -uid "8ABF51CF-4352-9435-A48E-49B0EB187BDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc3_1crvShape" -p "finger_R3_0_loc";
	rename -uid "65A8187E-485A-86EE-AD3B-4A976080809F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "04665F0F-4699-0766-C351-F1A2944008E1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070874619 -7.1054273576010019e-015 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.995345574558734e-013 1.4312496066585827e-014 1.1927080055488188e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999911 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "513AF06E-4131-7398-1E08-2283FFD4D260";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc1Shape" -p "finger_R3_1_loc";
	rename -uid "0EFF44E4-462D-FBAE-1703-5A9A1B1F3253";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_1_loc2Shape" -p "finger_R3_1_loc";
	rename -uid "E696827C-4160-71BC-C7D3-2BA8A64479B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_1_loc3Shape" -p "finger_R3_1_loc";
	rename -uid "FD370A6E-484E-9ECE-98E7-D48F1551B705";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc3_0crvShape" -p "finger_R3_1_loc";
	rename -uid "B9B7306B-4178-B3C7-0B96-37AE082747DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc3_1crvShape" -p "finger_R3_1_loc";
	rename -uid "C19E3389-4731-C8FB-BAF4-5EAAF387CB18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9BCFE17C-420B-89D3-AF27-8EB0BD002444";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259195499 0 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.0112483479660355e-013 1.5902773407317571e-014 1.5902773407317574e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000018 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "3FCF5E48-4A88-5B95-2428-96B3D8BA873A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc1Shape" -p "finger_R3_2_loc";
	rename -uid "AE9933EB-461A-33E3-FE38-519AC1F6EC4E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_2_loc2Shape" -p "finger_R3_2_loc";
	rename -uid "E91B2E7C-4BE8-5C6C-E664-86A67164355A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_2_loc3Shape" -p "finger_R3_2_loc";
	rename -uid "E58D6BCF-4EA7-EC48-ECF3-D28A3413C0C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc3_0crvShape" -p "finger_R3_2_loc";
	rename -uid "3F7302E2-4D0B-4657-9836-C29A14776B95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc3_1crvShape" -p "finger_R3_2_loc";
	rename -uid "729E5731-487C-296E-E398-6BBBE3E6ADB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DE95E4FF-4DCE-628D-C179-7296E79452C9";
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
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "23E2A794-4242-F135-238A-8CB6E67E20BC";
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
createNode aimConstraint -n "finger_R3_blade_aimConstraint1" -p "finger_R3_blade";
	rename -uid "FA500FFC-4A98-2A71-FFBC-12BE54B717BF";
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
createNode pointConstraint -n "finger_R3_blade_pointConstraint1" -p "finger_R3_blade";
	rename -uid "E9B13CBF-40D9-20A5-87EA-AA87103F28E5";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 -3.5527136788005009e-015 
		-6.6613381477509392e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "0629F66F-47D1-E3FC-13D0-CC8D85EB7278";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754586 -29.032786855763536 1.480432772503266 ;
	setAttr ".r" -type "double3" 7.5791665394124275 165.69575562109674 49.348303523761373 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786029 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "4AF1852A-45AC-E2D9-CD97-628212F1402A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "B7480F48-4ECA-99F4-8E52-038AAC572098";
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
	rename -uid "D4A1775A-40A3-BA95-39DD-7D8DCA13EE38";
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
	setAttr ".t" -type "double3" 0.21404201232122322 -0.17620518664713813 2.8414845756647438 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121378009 -82.086889237978326 -14.829711404966741 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661805 1.2929668245661787 1.2929668245661803 ;
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
	rename -uid "BCC3F656-4980-7C15-0883-438F3563718C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_root1Shape" -p "finger_R2_root";
	rename -uid "9F076F86-40C8-5056-7E1C-48AD75930310";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_root2Shape" -p "finger_R2_root";
	rename -uid "2C853BDC-460F-5CD4-0DDB-4BB8FA178758";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_root3Shape" -p "finger_R2_root";
	rename -uid "D9358086-4CC2-694A-E142-428691F51D57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "7FD144D9-41AE-4BBE-9EB2-058F1B1DAEC4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406663 -1.7763568394002505e-014 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.4458602797265539e-012 3.3793393490549879e-015 1.8117358844703812e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000011 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "92D3E468-4DBE-F41E-BFBB-1F8ECCC67DDE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc1Shape" -p "finger_R2_0_loc";
	rename -uid "F1E7E429-4EDC-31D3-1039-D2B7EE3C70EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_0_loc2Shape" -p "finger_R2_0_loc";
	rename -uid "C7A3B898-4EBE-548A-D594-50997B0D30D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_0_loc3Shape" -p "finger_R2_0_loc";
	rename -uid "630CC7B0-417D-E354-3A8B-32B7AEB36F25";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc3_0crvShape" -p "finger_R2_0_loc";
	rename -uid "605D9D5F-4C57-A892-B0E5-A996BBD3E9CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc3_1crvShape" -p "finger_R2_0_loc";
	rename -uid "35E27AB2-47DE-4B93-3F6C-CD8050C2FFAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "020D9F7E-47F3-588B-19D6-8E94806DC7A5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176177 7.1054273576010019e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.4455621027251693e-012 3.1805546814635183e-015 8.5477407064332051e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "992C95E6-4843-2A74-12AC-0DAFB20304DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc1Shape" -p "finger_R2_1_loc";
	rename -uid "DFF5E03F-4FFE-9911-E0BA-54B5CA16E584";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_1_loc2Shape" -p "finger_R2_1_loc";
	rename -uid "9648CA72-41B0-A454-5528-CC9B58C7DEF5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_1_loc3Shape" -p "finger_R2_1_loc";
	rename -uid "093F9E4B-4DEE-973E-00AC-89936BAD60D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc3_0crvShape" -p "finger_R2_1_loc";
	rename -uid "C7857872-4FEE-6676-BD92-B0BABEAD73AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc3_1crvShape" -p "finger_R2_1_loc";
	rename -uid "AAE87C48-4EDA-D907-D2B8-DAB4C29CC8F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BA4C485A-4D6D-2812-AC5F-F79FB1F61C23";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914289 0 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.4454627103913718e-012 3.1805546814635183e-015 1.8101828792548226e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "C376356A-4C8B-2789-C41F-75B7834A20EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc1Shape" -p "finger_R2_2_loc";
	rename -uid "00C05D07-4BD5-6E3F-D31C-69AE3BB2D9F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_2_loc2Shape" -p "finger_R2_2_loc";
	rename -uid "CCED6FDD-4FB2-7F43-01DA-47914F041F45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_2_loc3Shape" -p "finger_R2_2_loc";
	rename -uid "181B258A-4EF4-D0A5-D27D-E0B6DBCB3F37";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc3_0crvShape" -p "finger_R2_2_loc";
	rename -uid "DE57C0AA-4049-0E9C-F2F6-DD9915871BF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc3_1crvShape" -p "finger_R2_2_loc";
	rename -uid "B0DE7270-4C21-6160-7548-5B9456F8DF90";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "56C28BC9-41BD-FC39-489A-0BBFB33ADC19";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000011 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "3E948EE5-44DE-2B61-FBC1-38B81257B032";
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
createNode aimConstraint -n "finger_R2_blade_aimConstraint1" -p "finger_R2_blade";
	rename -uid "40362641-4861-FF55-4AB1-CF94927E626D";
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
createNode pointConstraint -n "finger_R2_blade_pointConstraint1" -p "finger_R2_blade";
	rename -uid "917C324F-441C-5E1D-6606-F59390CA38B4";
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
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "DAE591EF-4118-7813-A742-8EBE7BE56805";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309188 -29.023661369441797 1.4173349723038271 ;
	setAttr ".r" -type "double3" 0.54140613098450785 178.40951950034301 47.737641631363815 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.632098310678602 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "C2C822DC-4106-9C75-254D-E3BFA5C40848";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "D7E1CAEA-48EB-D713-7FD2-148B5854D621";
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
	rename -uid "1FD847AF-4816-CFFA-FD73-3F9038F384C0";
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
	setAttr ".t" -type "double3" -0.0077643969605958318 -0.12358406696721858 2.9483952421545769 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870178 -79.977014017421595 -112.77222628638168 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.2929668245661801 1.2929668245661805 ;
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
	rename -uid "FA982BE7-4C76-8FBC-0843-2E82827417BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_root1Shape" -p "finger_R1_root";
	rename -uid "47EC8C51-4335-2705-3F1E-51B654CDAF03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_root2Shape" -p "finger_R1_root";
	rename -uid "DC0B6F74-4332-8C42-0BF6-0887C02DD8C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_root3Shape" -p "finger_R1_root";
	rename -uid "0E44BFD8-4C48-B28F-731A-30A47999DA43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "AC2CE63A-477B-5AAA-5567-E887D2445A61";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999289 3.5527136788005009e-015 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5757968039258239e-013 0 -4.8702243559910078e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "0D3D503F-4B74-A07D-02F5-A695AC00C0D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc1Shape" -p "finger_R1_0_loc";
	rename -uid "07A3A755-4B40-D94D-ADE6-CFB5458F1B0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_0_loc2Shape" -p "finger_R1_0_loc";
	rename -uid "D8F42A35-4C83-F473-74E4-8BAF0B809EAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_0_loc3Shape" -p "finger_R1_0_loc";
	rename -uid "7F483F4F-43F2-50E0-C8C6-0C90511273AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc3_0crvShape" -p "finger_R1_0_loc";
	rename -uid "6F7A091C-4E06-99BE-E3CB-23A6EF6ACD3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc3_1crvShape" -p "finger_R1_0_loc";
	rename -uid "85FFA736-4373-A0AE-6566-6CB3BA95227A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "179DBA59-4799-A605-58DB-5D843E78424B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414017373 7.1054273576010019e-015 2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.5757968039258259e-013 -3.1805546814635168e-015 -3.975693351829396e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "DDE09E2C-4552-F11A-73C7-6F90AA2FB894";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc1Shape" -p "finger_R1_1_loc";
	rename -uid "1012AB13-4266-2286-0A33-BAABE25B80CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_1_loc2Shape" -p "finger_R1_1_loc";
	rename -uid "C49E1AB9-472C-1527-FE33-D291D17A7D21";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_1_loc3Shape" -p "finger_R1_1_loc";
	rename -uid "785C8637-406F-EA65-1C4E-B8BB10AD3409";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc3_0crvShape" -p "finger_R1_1_loc";
	rename -uid "6AC83086-4482-A1ED-AA22-4FB6E8688A7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc3_1crvShape" -p "finger_R1_1_loc";
	rename -uid "3317A1C3-41C2-C52E-40A1-2881D5430FAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A2CCDF47-49C0-96FB-F062-55B0857C79BF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 -1.0658141036401503e-014 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.607602350740453e-013 -4.7708320221952752e-015 6.4605016967227685e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "7E86C8C1-40B9-7876-EE43-8DB6D0899770";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc1Shape" -p "finger_R1_2_loc";
	rename -uid "37DBAF00-488B-7D4C-1505-6A865C5F88A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_2_loc2Shape" -p "finger_R1_2_loc";
	rename -uid "343ADA59-4CED-5558-9179-A094A0F28430";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_2_loc3Shape" -p "finger_R1_2_loc";
	rename -uid "0403A065-43F8-4992-A5AF-CABC9EB77E2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc3_0crvShape" -p "finger_R1_2_loc";
	rename -uid "50C67F9D-4C9F-342F-9853-9181556211AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc3_1crvShape" -p "finger_R1_2_loc";
	rename -uid "22E6FBFA-4DFF-CD9F-4402-DAAEDED1B726";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1C203891-4241-BD1D-5562-ED9ADB255DAE";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "A1938CB9-43DA-860F-1EA7-068099898812";
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
createNode aimConstraint -n "finger_R1_blade_aimConstraint1" -p "finger_R1_blade";
	rename -uid "B54E2FA0-430C-6207-9DAD-A69CA0BAA3AE";
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
createNode pointConstraint -n "finger_R1_blade_pointConstraint1" -p "finger_R1_blade";
	rename -uid "BA5AEF93-4C6F-1C1F-47C6-C7B8D12167E6";
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
	setAttr ".rst" -type "double3" 0 0 2.2204460492503131e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "7E5FDAB4-4B83-833E-D76A-4CA7C9415907";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.22243322515321 -28.040620010901279 1.1418187531108759 ;
	setAttr ".r" -type "double3" 174.15150560514738 -9.9768879508771722 -125.88865264712203 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786024 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "AF4AB906-441D-8D1D-AB48-41AF799D9195";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "BF90D78B-49C4-1D16-2041-DD8991B5DEC7";
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
	rename -uid "F6817F55-46E4-A5DB-C352-99BD324780B7";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "ED11E06B-431E-AA46-4645-7A9F1100609D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030138 0 0
		0 0.061677442163433793 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint1" -p "meta_R0_blade";
	rename -uid "097AB38C-48F7-7345-CFF5-80B49BE349E3";
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
createNode pointConstraint -n "meta_R0_blade_pointConstraint1" -p "meta_R0_blade";
	rename -uid "996AB163-4DB7-CBFD-D9A2-71B214FFF968";
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
	setAttr ".rst" -type "double3" 0 0 5.3290705182007514e-015 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "57A47F7A-4AE3-DBDE-4043-F8B3572CC00D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400629 -38.076493243285306 11.71416362193559 ;
	setAttr ".r" -type "double3" -98.404354317568462 44.65425854570406 -90.724179884703602 ;
	setAttr ".s" -type "double3" 3.4032157947041322 3.4032157947041184 -3.4032157947041277 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "FC153B4A-481E-B244-EAF1-65969A2B4BE5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "78417D94-4FFF-7751-8B47-0D869B1CA268";
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
	rename -uid "3C3F4764-42EB-0CF6-B04A-01A8CD498D19";
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
	setAttr ".t" -type "double3" -0.18403723679763084 -0.30586006047057879 2.7614233959505814 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808418 -71.606679450096593 -133.79382708613045 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661805 1.2929668245661823 ;
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
	rename -uid "4BC67991-474F-1BE7-D2B4-E98125CFC928";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_root1Shape" -p "finger_R0_root";
	rename -uid "790DE482-43E7-070A-D590-5784C3400D11";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_root2Shape" -p "finger_R0_root";
	rename -uid "D2AD7C61-409A-B0ED-562F-7EBC10207FB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_root3Shape" -p "finger_R0_root";
	rename -uid "711C8EE1-471E-A68C-FC4F-298786BE8549";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "850D2687-4141-0D50-BB7D-EAA5A7C5E919";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999645 0 7.9936057773011271e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.2002069041928541e-013 0 -7.9513867036587951e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999922 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "38A4B0F0-43F9-5C6D-8022-0B8FC672DAF6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc1Shape" -p "finger_R0_0_loc";
	rename -uid "C6B08BA1-4725-4AE2-B693-BAB60A3240F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_0_loc2Shape" -p "finger_R0_0_loc";
	rename -uid "90C96B73-458C-1523-16FC-F38F03DD9D0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_0_loc3Shape" -p "finger_R0_0_loc";
	rename -uid "FC52510E-4705-6E55-00EB-FEB54FFDAE10";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc3_0crvShape" -p "finger_R0_0_loc";
	rename -uid "2ECD12BA-4272-35BB-CBDB-E68BD25EED8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc3_1crvShape" -p "finger_R0_0_loc";
	rename -uid "79F4C4D7-44D7-7D98-35F1-7C8A0BA5D714";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C2FF4641-4E4E-7E1A-2AB5-E897B60E7387";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080926541 -7.1054273576010019e-015 8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.1843041307855294e-013 3.1805546814635176e-015 -2.3854160110976384e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "7174FFE4-46A9-906D-7FE6-8095F3641B40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc1Shape" -p "finger_R0_1_loc";
	rename -uid "F07FB8CF-403F-BF77-619C-26904A144CBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_1_loc2Shape" -p "finger_R0_1_loc";
	rename -uid "89D18BFD-4871-0978-6F3C-EDA4D6F3442C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_1_loc3Shape" -p "finger_R0_1_loc";
	rename -uid "B4D20E43-431A-DA83-EF22-7B9286BEC1A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc3_0crvShape" -p "finger_R0_1_loc";
	rename -uid "B386FA33-4698-5C16-6B17-F18FA97079D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc3_1crvShape" -p "finger_R0_1_loc";
	rename -uid "44E66F6B-46DB-06FC-3890-17A303E5E9A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BB6A0921-4A28-CEAD-7F4C-5792ED3AB291";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392369253 3.5527136788005009e-015 -3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.1684013573782158e-013 0 7.9513867036587935e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "07A4F2FC-4EED-DF0B-D60A-AD94562900A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc1Shape" -p "finger_R0_2_loc";
	rename -uid "703DDC3F-4E24-9A43-BD4E-4AB502E68C9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_2_loc2Shape" -p "finger_R0_2_loc";
	rename -uid "16FD8074-48CE-DDE9-02EB-3184722C688E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_2_loc3Shape" -p "finger_R0_2_loc";
	rename -uid "5DD7648D-422F-675D-8667-5EACEA996EBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc3_0crvShape" -p "finger_R0_2_loc";
	rename -uid "2A6045FB-4F11-35BB-1317-C78DE8A02653";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc3_1crvShape" -p "finger_R0_2_loc";
	rename -uid "B6C3BF11-4ED7-FDCF-7844-148BE22AF056";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FB9850F9-4410-40B1-1D14-FDB3A27A5D65";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999922 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "E03ABCD2-49E8-A686-8396-97AA23495B26";
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
createNode aimConstraint -n "finger_R0_blade_aimConstraint1" -p "finger_R0_blade";
	rename -uid "8781B15B-4B4C-E3D3-7418-DF8720192186";
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
createNode pointConstraint -n "finger_R0_blade_pointConstraint1" -p "finger_R0_blade";
	rename -uid "E75D11E7-43AE-CA77-2710-6DB797A07863";
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
	setAttr ".rst" -type "double3" 0 0 8.8817841970012523e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "DF1F7053-4D60-159E-E19E-05B5862A0F27";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713103 -27.336008057181051 2.4648652761315182 ;
	setAttr ".r" -type "double3" 170.83456651198318 -22.11117621255843 -122.87938490445563 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106786002 -2.6320983106786047 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "197E6083-49EF-D749-8A91-7C984BA2CF62";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "81478B0A-41D2-BE23-3BAF-CC811D2978CC";
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
	rename -uid "3F1200D8-4A7F-F201-1A8C-FF96582A0C09";
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
	setAttr ".t" -type "double3" 0.21303623709073571 -0.22489125789802245 0.13070337452155556 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848178621 -84.001563523231368 11.009204406896595 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041193 3.4032157947041273 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "thumbRoll";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".icon" -type "string" "sphere";
	setAttr ".ikrefarray" -type "string" "";
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
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "thumbRoll_R0_rootShape" -p "thumbRoll_R0_root";
	rename -uid "39435641-4926-3784-548F-429FBF0F7073";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root1Shape" -p "thumbRoll_R0_root";
	rename -uid "4FE74367-4A31-F9BB-33FC-4EBCA3408A8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root2Shape" -p "thumbRoll_R0_root";
	rename -uid "3DAF78A0-494E-BCE6-18D6-4CB73C3D56BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_R0_root3Shape" -p "thumbRoll_R0_root";
	rename -uid "3B29AFA8-43A8-3F1B-0911-FDBA848DA8CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumb_R0_root" -p "thumbRoll_R0_root";
	rename -uid "FF845BD1-4AE1-3580-6FB1-DEA518C3BE9C";
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
	setAttr ".t" -type "double3" -2.2204460492503131e-015 -1.7763568394002505e-015 -5.5511151231257827e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913076 -43.900240512232244 -37.623269198287851 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511084 0.48936434703510973 0.48936434703511128 ;
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
	rename -uid "DCD87A73-4791-B177-47F0-51A6440BFE1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_root1Shape" -p "thumb_R0_root";
	rename -uid "D8BB8D37-4031-594C-9C03-0EB1E358F718";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_root2Shape" -p "thumb_R0_root";
	rename -uid "D912A882-4827-0BDE-2167-4DB763524F1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_root3Shape" -p "thumb_R0_root";
	rename -uid "782AD27D-418C-9123-5382-B083F44EB14C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "E4604142-4EE0-AA16-F2DE-0DA60A86C3B0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469673 0.0024095775966941346 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.8288189418415237e-013 4.7708320221952807e-015 -4.2384257498060922 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 0.99999999999999911 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "5227A89D-410B-5CBC-A106-0F82EF5FFD4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc1Shape" -p "thumb_R0_0_loc";
	rename -uid "6FE9E17E-4A07-3ED1-FE50-64A1632EDC3C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc2Shape" -p "thumb_R0_0_loc";
	rename -uid "99AB62A8-4BE3-733F-3788-D8A87D0BF40A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_0_loc3Shape" -p "thumb_R0_0_loc";
	rename -uid "3BFED781-44AD-07A9-6A55-31846E29F977";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc3_0crvShape" -p "thumb_R0_0_loc";
	rename -uid "89D65413-46FE-A8F3-5A3A-3EBBB4B7F15F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc3_1crvShape" -p "thumb_R0_0_loc";
	rename -uid "83C1E5A1-4892-D2D4-2D43-C38AC7491248";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6E483E72-444B-CC68-BF2F-5590977C6BCA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522143 -3.5527136788005009e-015 2.1316282072803006e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.8447217152488398e-013 1.2722218725854073e-014 9.541664044390555e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "56733C4D-48F9-9067-6D6B-91A63482D722";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc1Shape" -p "thumb_R0_1_loc";
	rename -uid "387F7396-4F99-ACC4-9B46-8A8C2BA6FF54";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc2Shape" -p "thumb_R0_1_loc";
	rename -uid "48C404B1-450C-7E4F-D024-CF8271B9FF92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_1_loc3Shape" -p "thumb_R0_1_loc";
	rename -uid "2A4172B9-409A-98A7-2C5A-1E95712788E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc3_0crvShape" -p "thumb_R0_1_loc";
	rename -uid "ABB8ED49-4C2B-6325-3C8F-C0BD9CE84703";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc3_1crvShape" -p "thumb_R0_1_loc";
	rename -uid "35752918-4703-38F5-5F20-29A795E06BEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5FEDC72A-464E-2BA9-514F-D382795A3609";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5948211491551092 2.6645352591003757e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.7811106216195684e-013 1.2722218725854067e-014 9.5416640443905503e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "E2312A85-447D-C1B2-8165-AB9F8B79E400";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc1Shape" -p "thumb_R0_2_loc";
	rename -uid "61F8B07A-4ED6-4735-989A-5AA71F335F67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc2Shape" -p "thumb_R0_2_loc";
	rename -uid "32BB573B-433E-B657-FE80-AB941BFC9584";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_2_loc3Shape" -p "thumb_R0_2_loc";
	rename -uid "D2C2759A-4BB5-71E0-533B-D79F4A23C2DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc3_0crvShape" -p "thumb_R0_2_loc";
	rename -uid "3955832C-466F-50D5-A5EE-1C9BFDE7013D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc3_1crvShape" -p "thumb_R0_2_loc";
	rename -uid "1E800D38-4BA1-C2B8-BA59-8499AA2039B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D36C7A77-4E96-43E4-EA93-34A215A7A76A";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.999999999999999 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "6F6664E7-43A0-C8CC-0EF1-7E871C0ACFA8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.2936186082210665 0 0
		0 0.097872869407022167 0
		0 0 0
		;
createNode aimConstraint -n "thumb_R0_blade_aimConstraint1" -p "thumb_R0_blade";
	rename -uid "FEC5218C-4A7E-F6C4-1D45-B1BECE79FD50";
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
	setAttr ".rsrr" -type "double3" 9.9349754491352479e-016 7.0962606763870448e-013 
		0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint1" -p "thumb_R0_blade";
	rename -uid "7AF0E0A9-4D4B-50AF-C711-6BB2A93FF314";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 1.7763568394002505e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "38352203-43F2-B45E-455A-DE910F865D09";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042892 -7.0737929587543196 17.725867635512845 ;
	setAttr ".r" -type "double3" -55.556977946373202 -63.100734454449608 102.71864583729834 ;
	setAttr ".s" -type "double3" 2.0434672163157268 2.0434672163157215 -2.0434672163157264 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "C104762B-4617-5DDE-7BA4-B88060231384";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "9FD13F05-43AB-2F2C-0B33-698BA4595134";
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
	rename -uid "19386F16-46B9-5E16-E95E-FA8D0548CCAD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648682 ;
	setAttr ".r" -type "double3" 2.1534408611046039 175.80406292066331 45.437740049298235 ;
	setAttr ".s" -type "double3" 1.0495082267377434 1.0495082267377396 -1.0495082267377409 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "A105D718-4D8A-231A-B435-59ADF2EE24F0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "BAE6FAE8-4588-E619-513A-FCB470B41221";
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
	rename -uid "42917914-4EC2-2ED5-F1E0-73A1BC543036";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999689 0.99999999999999811 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "A2FE20D7-43E0-D955-97E6-6DB24C266E4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000087 0 0
		0 0.20000000000000029 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint1" -p "shoulder_R0_blade";
	rename -uid "1BA89ECB-43BB-6C3E-51E6-079E0CB8C9D3";
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
	setAttr ".o" -type "double3" 90 179.99999999999957 180.00000000000014 ;
	setAttr ".rsrr" -type "double3" 23.386262286472636 122.53864021838231 110.03040021520734 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint1" -p "shoulder_R0_blade";
	rename -uid "7A06567E-4798-690C-9879-5BBB0EB0AB34";
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
	setAttr ".rst" -type "double3" 0 1.214306433183765e-017 -2.7755575615628914e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "9E9B4D82-4F74-FEC3-85F6-6189E16310E5";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.50752147050984 0.0092761897382758873 0.11673327753265024 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377371 -1.0495082267377371 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "D9F25522-4CFE-A05D-18C0-F0976C17DE93";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "15AB0156-4A59-DEF6-9A2B-67AFF0C23844";
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
	rename -uid "BC0F6D12-485C-26F9-05DC-F68DD30B29D9";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999989 0.99999999999999889 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "0F098E46-4570-C3E4-3D5D-7D896FA75586";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.30713489785446285 0 0
		0 0.10237829928482095 0
		0 0 0
		;
createNode aimConstraint -n "spine_C0_blade_aimConstraint4" -p "spine_C0_blade";
	rename -uid "9E144C67-4D50-49DB-600D-CE82EE02246E";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint4" -p "spine_C0_blade";
	rename -uid "A2DA8EB5-4571-345C-9F10-75AD9A6C1A53";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 0 1.2325951644078309e-032 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "52B7AB47-4790-EF71-58BC-9D82CB15F4C0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690754 0.19144303592045891 -4.2508893276606347e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377405 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "4BEE1DB7-4E19-2C25-A7BF-FB9C6B1F9FA9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "663843A9-4D4C-F429-A0A3-A39E354DAAB1";
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
	rename -uid "3C555483-4EB2-6F9A-B8D5-A19975447CB2";
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
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588105 1.1102230246251565e-016 -1.0212680564255754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.1805963102694697e-015 0.29314386227018269 -9.6067139966324249e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000027 0.99999999999999856 1.0000000000000002 ;
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
	setAttr ".pinrefarray" -type "string" "";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "leg_L0_rootShape" -p "leg_L0_root";
	rename -uid "5D2C5CA4-4109-B491-F543-799255273FD3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_root10Shape" -p "leg_L0_root";
	rename -uid "D06E099A-4B80-888D-0716-C3ABFD08BA9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_root11Shape" -p "leg_L0_root";
	rename -uid "234A3E42-4154-8564-084F-56BB516AD892";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_root12Shape" -p "leg_L0_root";
	rename -uid "69FCA5CD-4A5B-E75C-E7F5-4E9C3200269C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "A5342B74-441E-4A1D-5E64-B68E41EEA882";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303969 0.3883864434680584 -2.2204460492503131e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999867 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "BD28CF70-4EC2-EF3B-2E10-20A01C9CF394";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_knee10Shape" -p "leg_L0_knee";
	rename -uid "EE1057BF-4D56-4F58-137C-20B86C85337A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_knee11Shape" -p "leg_L0_knee";
	rename -uid "137521C6-47BC-688E-465D-158AA7171243";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_knee12Shape" -p "leg_L0_knee";
	rename -uid "AB52201E-4225-B31A-173A-BCA16C55A063";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_knee12_0crvShape" -p "leg_L0_knee";
	rename -uid "26F09057-40E6-194F-323D-07B63E69A282";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_knee12_1crvShape" -p "leg_L0_knee";
	rename -uid "77DD55F8-429B-D247-570E-9AB627C8EAFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "31251B27-4AE7-E71E-38BC-1282AC18B48D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-016 -4.5414075240554199 -0.7463060192277986 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.4924216061122252e-017 -6.2958521207772524e-015 -1.4908850069360215e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999978 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "6FE9C794-4395-9E0D-4B72-AFA784EC4181";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle10Shape" -p "leg_L0_ankle";
	rename -uid "30829EC0-4F20-DCD4-2CD6-71BA035806FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_ankle11Shape" -p "leg_L0_ankle";
	rename -uid "8BB27C5F-4EAC-A77C-1864-3AB38D90B526";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_ankle12Shape" -p "leg_L0_ankle";
	rename -uid "C1F8A656-43AA-8206-B98A-0B836A66C331";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle12_0crvShape" -p "leg_L0_ankle";
	rename -uid "C18FEDD0-44A5-25AF-3DBD-FF90419BCE22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle12_1crvShape" -p "leg_L0_ankle";
	rename -uid "FDBC32D5-45AD-25FC-1A4C-75AA548A89D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AE8A3E31-47AC-9DD3-6D59-21BE4B44506C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 2.4424906541753444e-015 2.1377206638691333 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -4.9696166897865231e-017 -90 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999933 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "827BA601-4633-5282-4AE3-E2ABD2273D0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_eff10Shape" -p "leg_L0_eff";
	rename -uid "07066FFB-47EB-9716-3FE9-B4B1FE0B8121";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_eff11Shape" -p "leg_L0_eff";
	rename -uid "F6965D90-4FAF-7FB9-FF6C-62AA0D8C0DF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_eff12Shape" -p "leg_L0_eff";
	rename -uid "6B0A0367-4B77-19BA-007E-58B6D8D4B6D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_eff12_0crvShape" -p "leg_L0_eff";
	rename -uid "5A49C812-4920-830F-7FBE-50BAEA4436C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_eff12_1crvShape" -p "leg_L0_eff";
	rename -uid "CB5B13F0-4423-D667-E16B-9B92BA36E288";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0274B16B-4CDF-ECB4-A875-C1B99D76AA37";
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
	setAttr ".t" -type "double3" 4.4408920985006262e-016 1.1102230246251565e-015 1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 8.930798601583896e-016 -84.230890510426093 -1.8565342907927246e-016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518429 0.99979752268518385 0.99979752268518252 ;
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
	rename -uid "8CE4C1E1-4D3A-5044-EB8F-CD95CD89D647";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_root10Shape" -p "foot_L0_root";
	rename -uid "5D346D85-4B2B-8F57-1F3B-6D86939D0A4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_root11Shape" -p "foot_L0_root";
	rename -uid "E855F90B-4160-28C0-8DAA-0E934B9D12A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_root12Shape" -p "foot_L0_root";
	rename -uid "F1948263-4304-B19F-BCFC-2DA614711462";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "D8592635-49BA-0EF8-5F56-128689AD7937";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763245 -0.77423199221117323 -0.00087398468478316893 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 2.0673605429512867e-014 -7.1562480332929104e-015 -22.490244653448013 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999956 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "AA2D822D-4DE7-C04B-8C87-858FDF7CC3E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc10Shape" -p "foot_L0_0_loc";
	rename -uid "00D0615A-4F01-28C5-30AE-678E30A5BD7E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_0_loc11Shape" -p "foot_L0_0_loc";
	rename -uid "C65C50D6-4EF3-9372-6B84-54B38ADDD057";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_0_loc12Shape" -p "foot_L0_0_loc";
	rename -uid "EFE7DEE8-4083-33D4-6061-7F909FA1A63D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc12_0crvShape" -p "foot_L0_0_loc";
	rename -uid "16330705-45EB-51EE-42FF-E79365473CC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc12_1crvShape" -p "foot_L0_0_loc";
	rename -uid "E7D79BBB-4C6A-93E0-7E9E-61AAFA0EB797";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "02D4D5F7-4062-834D-10AC-828EE4C2938C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444293 0.0524005425438413 0.00053566803260896023 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.0888430167322755e-013 -1.5902773407317592e-015 22.490244653448006 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "A2FCDAE6-44DF-5669-613B-C3A2F3B7DF7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc10Shape" -p "foot_L0_1_loc";
	rename -uid "F51BE627-444A-407B-3866-28A2939FD39F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_1_loc11Shape" -p "foot_L0_1_loc";
	rename -uid "AA5D5E7A-48BD-BF92-D7B1-F58D95C3DD1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_1_loc12Shape" -p "foot_L0_1_loc";
	rename -uid "002EB0C5-48B3-FB02-08DB-28B577E26099";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc12_0crvShape" -p "foot_L0_1_loc";
	rename -uid "D2F020FB-4F88-B0A9-E5BC-978F7D455C91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc12_1crvShape" -p "foot_L0_1_loc";
	rename -uid "5FCC231F-4283-770E-4FAF-ED852A72318C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2825A86C-4799-F2D5-5551-BAB763B459C3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518466 -0.34355031336095376 -0.0018389437992687441 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -1.0290205330935905e-014 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "8DC06C1B-4070-AEEE-658D-15A570E96F8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc10Shape" -p "foot_L0_2_loc";
	rename -uid "7314235F-4142-591D-A300-3B94121A7BAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_2_loc11Shape" -p "foot_L0_2_loc";
	rename -uid "8B75B64E-4D42-15FC-9E2B-F0926A3907EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_2_loc12Shape" -p "foot_L0_2_loc";
	rename -uid "E5FF9DD7-4795-166D-CA4E-509B64299DA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc12_0crvShape" -p "foot_L0_2_loc";
	rename -uid "4F4AF58B-4DB7-FBFC-17E4-49B350A832FA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc12_1crvShape" -p "foot_L0_2_loc";
	rename -uid "81E82109-4688-DD41-9A43-90B7942FF83E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "77A7D6A1-4415-B114-181E-13B1748C5E21";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 2.8990169397258372 84.223472754416576 2.9137877746396641 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "B8748698-4AFF-1E07-75EA-AB8505A1DACA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "3978B461-45D0-28AF-6EB2-5D8667540D87";
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
	rename -uid "C37CB16C-4E56-DF16-09E2-4487813D96EA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343369 -1.2883323665462252 -0.0019628851482431653 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.6753022597364627e-014 3.1805546814635176e-015 2.2013714238361614e-017 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "5937A649-4672-1058-2404-7EA66274C491";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_heel10Shape" -p "foot_L0_heel";
	rename -uid "40E11FB2-458B-FFAD-5F92-8D85E8F8525A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_heel11Shape" -p "foot_L0_heel";
	rename -uid "54F37A21-4775-7CF9-A140-1BA73877ADE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_heel12Shape" -p "foot_L0_heel";
	rename -uid "A573F7F8-4CB5-9093-668E-8B9376385D68";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_heel12_0crvShape" -p "foot_L0_heel";
	rename -uid "4EB26352-4A3E-F269-E7EE-4D815FD986C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_heel12_1crvShape" -p "foot_L0_heel";
	rename -uid "CA175D0E-4234-A8EF-4677-409C3DE28AD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C7A7FDFC-4E36-33B5-85D9-4D81E139CD14";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991017 -1.2852474767223816 -0.54483578923279752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.6753022597364627e-014 3.1805546814635176e-015 2.2013714238361614e-017 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "FC0EF37F-498C-0E14-A0F8-91B172430CFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot10Shape" -p "foot_L0_outpivot";
	rename -uid "F25F7716-4462-F787-50F8-F7A8B412A3DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_outpivot11Shape" -p "foot_L0_outpivot";
	rename -uid "2CAAE53C-4BD5-FFBB-B307-98BA5BE74AD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_outpivot12Shape" -p "foot_L0_outpivot";
	rename -uid "FF8BD957-4B00-4C16-D613-909C383587AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot12_0crvShape" -p "foot_L0_outpivot";
	rename -uid "0625BD37-4F36-D69B-4171-8FAB9F0ED711";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot12_1crvShape" -p "foot_L0_outpivot";
	rename -uid "AD10E94A-4B79-22F3-6842-929E2ACFE1F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C9D296C9-436C-B41D-58C3-54AD8ACE1C26";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991019 -1.2905939540073479 0.65234269833768488 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.6753022597364627e-014 3.1805546814635176e-015 2.2013714238361614e-017 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "F0CD074C-4142-38BC-58FB-BFACE841CEC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot10Shape" -p "foot_L0_inpivot";
	rename -uid "093FC878-492F-F0F5-9586-1483A21EEFB6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_inpivot11Shape" -p "foot_L0_inpivot";
	rename -uid "11E6D8A9-401B-1EB6-9724-AFB18EE08FE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_inpivot12Shape" -p "foot_L0_inpivot";
	rename -uid "6C7914AF-49DA-3CB9-FB74-EF9549976039";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot12_0crvShape" -p "foot_L0_inpivot";
	rename -uid "035E7EBD-4C1C-D46C-CE0F-939A1B107078";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot12_1crvShape" -p "foot_L0_inpivot";
	rename -uid "B44B0254-4BE4-6CAF-23EF-1C9951F4CB6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "200F2D87-4362-DC37-E6D1-9F99FAD621BF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 2.8990169397258372 84.223472754416576 2.9137877746396641 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "B2DAB2CB-4AD3-9A99-D7DA-D9B84D66C567";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig" -p "foot_L0_1";
	rename -uid "E59E6BE0-4172-5213-C543-0F9B08B319FE";
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
	rename -uid "7FC8460C-4AED-B48A-A348-70A7C595BAF0";
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
	setAttr ".t" -type "double3" 0.59908552650329439 0.51029795172993753 -1.4395512694570034 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.4819721285200412e-015 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1 0.99999999999999911 ;
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
	rename -uid "03E28FAF-4A0A-1030-7223-2195CC76424E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_L0_root10Shape" -p "legUI_L0_root";
	rename -uid "CE318A5C-4E78-1990-A551-138E7B2BDC75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_L0_root11Shape" -p "legUI_L0_root";
	rename -uid "ED824138-46AC-2F3D-FE53-32BD52D725D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_L0_root12Shape" -p "legUI_L0_root";
	rename -uid "D794D508-48B1-6203-AEBA-75B5E7B6F5F0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "CD57EDB0-4D9F-E47F-EDA6-2C95F4C58E5F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209228 0.19144303592045905 0.96902196420373699 ;
	setAttr ".r" -type "double3" 89.999999999997527 89.706856137729829 -2.4866037227258996e-012 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377378 1.0495082267377405 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "80CB689B-4E7C-E75E-EE74-FE92FF55565D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "260902DF-4410-CC1E-449C-AF9415FE217F";
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
	rename -uid "116CA0A6-4D78-7A19-D79E-C9A761966A60";
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
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1 -min 1 -at "double";
	addAttr -ci true -sn "div0" -ln "div0" -dv 1 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 1 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588087 6.106226635438361e-016 1.0212680564255756 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.1805963102694634e-015 -0.29314386227019551 -1.5837723455075733e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999878 -1.0000000000000002 ;
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
	setAttr ".pinrefarray" -type "string" "";
	setAttr ".maxstretch" 1.5;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "leg_R0_rootShape" -p "leg_R0_root";
	rename -uid "D0261F6C-4F2A-5430-FF94-F7A15FADF351";
	setAttr -k off ".v";
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
	rename -uid "632A637D-4750-53EC-6338-E389FEB122F8";
	setAttr -k off ".v";
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
	rename -uid "E562E0A5-4086-F894-6592-50AE225363BD";
	setAttr -k off ".v";
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
	rename -uid "F0D67E1E-4FAD-406D-B4E0-83A36EB22341";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "588DF586-4139-0D7E-0DCC-83B322371753";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772304031 0.38838644346805851 -3.8857805861880479e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999878 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "0E94C16E-4A15-80E8-9DA8-CBB8E6CD61DF";
	setAttr -k off ".v";
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
	rename -uid "995901F2-43F9-69A6-E47B-9A857796B22E";
	setAttr -k off ".v";
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
	rename -uid "5A0D7460-49F2-71F8-6590-F08DE9B02EBE";
	setAttr -k off ".v";
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
	rename -uid "6AAA4997-4A98-A75E-75C9-A09C20EDB876";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_knee12_0crvShape" -p "leg_R0_knee";
	rename -uid "B863BA60-4906-DEEA-7168-6D9DA649A97B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_knee12_1crvShape" -p "leg_R0_knee";
	rename -uid "AD63E823-4C53-DBA3-1227-AEBC593CC083";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2235347F-4CB1-D65A-BA2C-808119C18F84";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.9976021664879227e-015 -4.5414075240554173 -0.74630601922779927 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.2451895656583474e-014 -8.8195353889727033e-015 2.9370434636639619e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999978 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "F0DB7D5B-4581-AAB7-9ACB-2087A20FF974";
	setAttr -k off ".v";
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
	rename -uid "AF397FC3-48F6-0F02-6CB9-69954AE30A38";
	setAttr -k off ".v";
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
	rename -uid "C07E3960-4D7C-FD2D-6859-5892F5639583";
	setAttr -k off ".v";
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
	rename -uid "9DA0C177-449D-3C23-8A0C-1B98F8121699";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle12_0crvShape" -p "leg_R0_ankle";
	rename -uid "E79C494F-4785-D952-76C8-B5828DB4D4BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle12_1crvShape" -p "leg_R0_ankle";
	rename -uid "3BAA6161-4C76-4943-5EAB-FC9673826D30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AEB1BAA3-4EF1-7098-7EB9-E3A292C6354F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-015 1.9984014443252818e-015 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.9182720422576804e-014 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "A05FDA55-4B02-7E44-2CBF-709B96ED7866";
	setAttr -k off ".v";
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
	rename -uid "02A851AD-4F90-A6FC-AD2C-CC98156DD181";
	setAttr -k off ".v";
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
	rename -uid "2F002636-4C73-30BD-2E80-AEBA38182C89";
	setAttr -k off ".v";
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
	rename -uid "7A21542A-4F23-5BD2-EA75-3BB234C162C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_eff12_0crvShape" -p "leg_R0_eff";
	rename -uid "0701A3CE-41E7-5EA4-C919-75AB4BF7B92A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_eff12_1crvShape" -p "leg_R0_eff";
	rename -uid "DF3219FF-46CC-6E8A-19FA-1985DEF3FE14";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0CD862DE-42E6-7E94-3861-C8BEE5D181DB";
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
	setAttr ".t" -type "double3" 4.4408920985006262e-016 2.2204460492503131e-016 1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 1.8040147541008563e-013 -84.230890510426093 -3.2707984053505592e-014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518429 0.99979752268518451 0.99979752268518329 ;
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
	rename -uid "E06C1EDE-479E-009E-6717-688B955A806B";
	setAttr -k off ".v";
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
	rename -uid "42991DB7-47FB-0DEB-3143-ED8F4218B45D";
	setAttr -k off ".v";
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
	rename -uid "DEE1ECE4-459B-C1F8-4822-049C981A96F8";
	setAttr -k off ".v";
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
	rename -uid "30F4B6AB-4387-E7C9-6A30-7CA530B6D302";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "DAB062E6-4C53-457C-15B5-6E99F268563F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763237 -0.77423199221117278 -0.00087398468478339097 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.5383670831281659e-014 1.0336802714756438e-014 -22.490244653448041 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999922 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "575FF75A-4CFA-2B6D-E461-20BB66F9A31A";
	setAttr -k off ".v";
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
	rename -uid "4BC783E8-4919-7AAD-17AC-FFBAA2BADE8C";
	setAttr -k off ".v";
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
	rename -uid "89F347B7-47DE-C761-5B5A-2CBCD2754AD6";
	setAttr -k off ".v";
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
	rename -uid "D8D76C4B-43F9-A308-E2A4-4C8B2F5C60E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc12_0crvShape" -p "foot_R0_0_loc";
	rename -uid "F68F6068-4151-7E14-A199-5CAC148A69B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc12_1crvShape" -p "foot_R0_0_loc";
	rename -uid "2AC3F726-4FE3-06E7-0B67-9CAD212B719B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "860D7D06-4D85-5222-BD5D-1C9D1DE41A37";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444338 0.052400542543842743 0.00053566803260785001 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -4.1692586300411844e-014 1.1131941385122306e-014 22.49024465344803 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "5B6880E1-43B9-7161-C523-F18DA7FE2251";
	setAttr -k off ".v";
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
	rename -uid "00A7E2AE-4900-9296-4B8D-16B26B2F1CF1";
	setAttr -k off ".v";
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
	rename -uid "16CE89EB-465A-3573-829F-2A88C9EC7249";
	setAttr -k off ".v";
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
	rename -uid "BB4C41F3-41DE-9B59-529F-DC835709E929";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc12_0crvShape" -p "foot_R0_1_loc";
	rename -uid "28EA72CE-4451-3E82-3862-39AA1D1AFD92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc12_1crvShape" -p "foot_R0_1_loc";
	rename -uid "38D569B5-4397-1B94-1B67-E6B1AE13C05F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9D71E3B6-4670-B622-1753-2C83723B937E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518377 -0.34355031336095387 -0.0018389437992683 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.1764777382430168e-015 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000004 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "1D139781-40FE-8464-C394-988E572166B1";
	setAttr -k off ".v";
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
	rename -uid "19A2823E-41F4-E8D1-1F33-00BFE9078D9F";
	setAttr -k off ".v";
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
	rename -uid "1D039713-4810-5938-203C-8995766C70D6";
	setAttr -k off ".v";
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
	rename -uid "DAD7EF54-4784-D44E-0C28-AA965FCE4E26";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc12_0crvShape" -p "foot_R0_2_loc";
	rename -uid "CCC6CBE5-44BC-7E5D-B5CD-9D895EA19339";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc12_1crvShape" -p "foot_R0_2_loc";
	rename -uid "3441E132-41E1-C602-0674-3A9383F0CCAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F22B3504-4AD3-05D7-3FCD-49BAF961EF09";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415475 1.059143706286116 ;
	setAttr ".r" -type "double3" 177.10098306027425 -84.223472754416591 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "9FCDE99E-441F-0A03-3247-0EA3548BE2E5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "191F7539-4C02-789E-32E2-27989F2D15E8";
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
	rename -uid "714470B6-4562-9287-AA0C-188D58F3BC85";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343313 -1.2883323665462239 -0.0019628851482424992 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.2700077818796802e-014 9.5416640443905535e-015 -3.3048305975336063e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "F86267F6-493C-5CAE-3E42-01A1D9BACF59";
	setAttr -k off ".v";
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
	rename -uid "639E4D7D-4A8E-19AD-6F03-1A9B99A2BD33";
	setAttr -k off ".v";
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
	rename -uid "8B4F187B-4451-7F71-37CB-6AB01E5031E7";
	setAttr -k off ".v";
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
	rename -uid "CABD3251-4008-DCFC-DDA4-089ECA27D9A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_heel12_0crvShape" -p "foot_R0_heel";
	rename -uid "87453DCB-44D4-109D-259C-DDA3AF49447E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_heel12_1crvShape" -p "foot_R0_heel";
	rename -uid "DAAB7E35-4B21-6915-87DC-B8824A51C3D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "22513AD5-4678-3EAE-F120-FAAA176B558E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991006 -1.2852474767223807 -0.54483578923279752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.2700077818796802e-014 9.5416640443905535e-015 -3.3048305975336063e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "0C9D275D-4055-D797-4AE3-46868D8E229E";
	setAttr -k off ".v";
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
	rename -uid "91007C99-4ABB-CA2F-B6BF-649A6689552A";
	setAttr -k off ".v";
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
	rename -uid "A93CB6B0-453D-261F-5AAF-F9B96045D4D3";
	setAttr -k off ".v";
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
	rename -uid "E4B27BC8-4EBD-8381-A496-8487031A9BD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot12_0crvShape" -p "foot_R0_outpivot";
	rename -uid "E8960647-4C84-D4E6-1E74-4881E9D84AA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot12_1crvShape" -p "foot_R0_outpivot";
	rename -uid "356A5E7D-4D7D-CC06-3859-2C84DD1ABE60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4E1791A6-45C0-D1F5-CC3A-7D93CB2F6F93";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991011 -1.290593954007347 0.65234269833768455 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.2700077818796802e-014 9.5416640443905535e-015 -3.3048305975336063e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "223CC2E2-43FB-6FAC-813E-56964DEE175F";
	setAttr -k off ".v";
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
	rename -uid "D16D802C-45C4-D5F8-8185-B28D4E9EF2FD";
	setAttr -k off ".v";
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
	rename -uid "F309073C-4971-5405-08F2-C28814BBC691";
	setAttr -k off ".v";
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
	rename -uid "49298B60-41F0-6F3B-2D47-F69D4B97565C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot12_0crvShape" -p "foot_R0_inpivot";
	rename -uid "A470D9B7-48C1-FF16-7914-C993E4265EB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot12_1crvShape" -p "foot_R0_inpivot";
	rename -uid "77B21F16-41BA-0B8E-8586-13AF896C1FDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7D6271C0-43E1-395A-0BB0-C286E43DAB72";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415475 1.059143706286116 ;
	setAttr ".r" -type "double3" 177.10098306027425 -84.223472754416591 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "5C0B8689-4178-2428-92F1-59858E862A62";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
	rename -uid "97B7E9AF-403F-2C96-6F40-C58A98BBC73E";
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
	rename -uid "992B8ABD-41BC-FD86-DD3B-D38E2A3D4F75";
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
	setAttr ".t" -type "double3" 0.59908552650329483 0.51029795172993753 -1.4395512694570023 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 3.3234666601203085e-015 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999956 0.99999999999999989 ;
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
	rename -uid "1F7C0F1A-49FB-B81D-EAFD-0686CE1A9F22";
	setAttr -k off ".v";
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
	rename -uid "8AD9F30E-4194-75EB-A975-8B8C1E2F50A7";
	setAttr -k off ".v";
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
	rename -uid "313885D7-46E5-1990-93D6-73BDDE3D90B7";
	setAttr -k off ".v";
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
	rename -uid "064FC1D8-4BDB-43FA-79F7-D1947D914102";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "33296423-49C0-D605-C545-44827C9BE775";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.21416685220923 0.19144303592045855 0.96902196420373488 ;
	setAttr ".r" -type "double3" 89.999999999997513 -89.706856137729943 -179.99999999999739 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377378 -1.0495082267377402 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "608B4751-4962-4595-54C2-CEB85999EDA1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "141984CA-4899-DA48-5239-BF8186601BBF";
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
	rename -uid "AF8991C7-4D8E-6CEE-485E-B2943514F8C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "C13C48F2-4B47-EFF6-555A-0FB6A43F93F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "FB418DC1-409C-7285-22E7-B699D5CEF068";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "A00B1919-48F9-4E19-ECCB-0A87F48A882A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion49";
	rename -uid "E1F44320-44A7-B916-21A5-3DA238EAAE30";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns239";
	rename -uid "946AF2A7-4BCF-FDDE-D451-BFAA9360C6A3";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns239Set";
	rename -uid "F216C461-474D-0E4F-6350-12B4146627F4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns239GroupId";
	rename -uid "CBC7EDE9-4498-D7E5-8538-73A860FBC1EC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns239GroupParts";
	rename -uid "F90CF13C-4500-FEB2-EDD0-73B90270D847";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak387";
	rename -uid "373A2DE8-4756-2BAF-66B7-0583A95DC7E7";
createNode objectSet -n "tweakSet387";
	rename -uid "99A442DC-4B12-EEC8-848B-4BB4120DA2AA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8343";
	rename -uid "83665406-4E7C-2276-1790-D2A76D4F613B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts774";
	rename -uid "50492B89-4731-F39B-2393-2CA6703DE3AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion50";
	rename -uid "E678913C-4655-B650-3DD1-9F8BA88743F8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns240";
	rename -uid "73B0E06A-4A2D-9537-E1C5-A88BFBC07E71";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns240Set";
	rename -uid "B3FA290F-4666-8237-A4CC-8E816E12701E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns240GroupId";
	rename -uid "4134BF79-43F2-FE15-327F-C18AAB8F78CB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns240GroupParts";
	rename -uid "ED19BD29-4262-61E1-E841-11B7A56D1E15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak388";
	rename -uid "A502FD61-45BC-0E22-07AB-04A7F2ED81BF";
createNode objectSet -n "tweakSet388";
	rename -uid "C8D05C60-4816-E257-7D13-4BB4807F2701";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8345";
	rename -uid "D587DE3A-4823-7EE3-3856-7A9B01D0D10D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts776";
	rename -uid "98A92B8E-4D63-BFB6-895E-42947C3CBB16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion51";
	rename -uid "C99506D8-4838-B8FC-8473-F99E8451362F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns241";
	rename -uid "56598F13-48AB-E070-DDB3-15B27ADD6FBC";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns241Set";
	rename -uid "33BDE6F8-4054-99FD-6014-4C8A9CC4F284";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns241GroupId";
	rename -uid "4099DD67-448A-ECB8-50C3-789A7A7D8E84";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns241GroupParts";
	rename -uid "E9D8782E-4ED0-B961-F5CB-2BA96C0E4A6E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak389";
	rename -uid "24D0BEA9-42EB-977A-7378-E28DAA209638";
createNode objectSet -n "tweakSet389";
	rename -uid "DEFFD3F5-4FCC-BE9F-6DD3-B281F6A62067";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8347";
	rename -uid "2661F175-4823-F3E5-2890-A5A632696DB3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts778";
	rename -uid "C0E5F2BD-4E1E-899B-B3FE-32810D9B7B41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion48";
	rename -uid "3588D38F-4035-162B-A69A-52AA77EDC2E2";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns238";
	rename -uid "08715CC5-4829-D215-BA2F-98AB3B945ACD";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns238Set";
	rename -uid "F5042D25-4383-86E5-A4BF-E98B6CF611F8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns238GroupId";
	rename -uid "A02D6B0B-44C9-16CA-4460-C1A95A256D1D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns238GroupParts";
	rename -uid "ACA04A96-486D-B1C8-7352-5499A261A759";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak386";
	rename -uid "25CEFCC3-4B69-BB53-95B3-A3A0B90E231F";
createNode objectSet -n "tweakSet386";
	rename -uid "F82F00F4-485D-B82B-35D8-2DA12C8AFC3F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8341";
	rename -uid "4E7484AD-4A76-31D5-4B70-B892F7D36926";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts772";
	rename -uid "D522D0EF-436C-B0A9-0509-9BABB7271C9F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion53";
	rename -uid "1A86CCC2-424E-27D9-020E-10ACFAB4831F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns243";
	rename -uid "28785507-40C3-427F-6EF1-B0911ADF4374";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns243Set";
	rename -uid "81CB5A28-46A2-A00D-8988-94839AD7C271";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns243GroupId";
	rename -uid "B31B686C-41ED-2FEF-290F-8AAD0CFD3E53";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns243GroupParts";
	rename -uid "33F1F414-46EF-89E6-2A63-D9B3FAC3AB3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak391";
	rename -uid "7686A15F-4794-7603-1B4E-C0A0C9862EF9";
createNode objectSet -n "tweakSet391";
	rename -uid "0F982126-49CF-1C47-07CB-6C901468F577";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8351";
	rename -uid "6FEC1A54-477E-14E7-4C0E-DFA3ED32D25E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts782";
	rename -uid "F18A5BAF-424E-3146-619F-22967B7ADAE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion52";
	rename -uid "33E07BBF-4B74-6545-A0FC-7E88F80DB368";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns242";
	rename -uid "A0DDE85B-4BF1-0C1A-CB2A-77999D5079F7";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns242Set";
	rename -uid "2996C621-4EB1-0AA8-5D27-469E5FCC2018";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns242GroupId";
	rename -uid "87E9A399-4A35-42FB-2FE0-49B879CB9A4A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns242GroupParts";
	rename -uid "65066DDF-407E-09C6-45B5-09A564C39A72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak390";
	rename -uid "A22F9B5C-4088-AC7D-F60D-5080D75CC1CB";
createNode objectSet -n "tweakSet390";
	rename -uid "93B07C98-419B-90DC-6226-C38B6087E000";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8349";
	rename -uid "5894FFBC-43AF-2CAD-E792-5D802EECD79C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts780";
	rename -uid "57233982-4775-DE9D-7E53-12A0BDEDAF31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns237";
	rename -uid "78AD874B-483A-A862-E397-3C8D8367D749";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns237Set";
	rename -uid "90920271-4BCE-29C5-9268-159C83332F1E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns237GroupId";
	rename -uid "3EE9BC21-4EAD-F40A-40F2-D2BBB6911E8E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns237GroupParts";
	rename -uid "07C8AAD4-43FE-51CA-8EF6-709C9A5330B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak385";
	rename -uid "6E122486-45BD-21CB-AE12-759B19DF0A7A";
createNode objectSet -n "tweakSet385";
	rename -uid "729C79CC-4938-3B8D-91BA-16BF72731BFE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8339";
	rename -uid "139CA156-4A87-E653-146A-149730783845";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts770";
	rename -uid "B4DD668A-4792-2170-7F77-F9A4C4921321";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion47";
	rename -uid "82BD3BDD-49B5-097C-3FFF-CF89CF728501";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns236";
	rename -uid "A3485DCD-4B4D-8AF3-59A4-42B0A6A76055";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns236Set";
	rename -uid "0E017433-4EC8-3D4F-871C-CB846BAFA4F9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns236GroupId";
	rename -uid "D73FAFCD-46C7-72DC-A7BB-34A93F3CC644";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns236GroupParts";
	rename -uid "F92024BC-4B23-631B-769D-EBB2B411754E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak384";
	rename -uid "876ACB06-4D74-D509-E22B-5D86443F0439";
createNode objectSet -n "tweakSet384";
	rename -uid "1A46AE64-4B2C-8BB6-2A43-0F9D88128C16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8337";
	rename -uid "60BEB95E-4D47-80CC-85A8-48B8BAA8E237";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts768";
	rename -uid "2EBCA124-4F83-0A64-8D0E-148CF63560E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "C905CA2C-4C11-6CD1-2D0E-6BA4586A9788";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "A2E77783-49A2-75A3-9376-2993E2356756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns247";
	rename -uid "9AAD0F50-462A-1473-418F-8EB8E93F6008";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns247Set";
	rename -uid "1CD25AB7-46AD-40E5-ED91-DEA7FB6C0E2E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns247GroupId";
	rename -uid "096AED77-4E68-FF7F-A40D-D7A5A6817BF6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns247GroupParts";
	rename -uid "BB42F631-4C51-57B7-F31D-E4930EF37892";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak395";
	rename -uid "9FC4BD26-4F23-1A69-FFF0-D2B433122D00";
createNode objectSet -n "tweakSet395";
	rename -uid "A366E753-467D-22B0-9B61-939179460227";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8359";
	rename -uid "FD69670B-44B9-E389-13B3-4BBDA9BECBA2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts790";
	rename -uid "C0783F01-48A0-436E-2B05-F5AAF2EE992D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns248";
	rename -uid "5A120073-4606-7859-31B4-90BF145E9D82";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns248Set";
	rename -uid "BB1DE888-4612-2524-5CE9-779C23720811";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns248GroupId";
	rename -uid "ECCCCAF4-4667-7908-BA2B-F3B264F804BD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns248GroupParts";
	rename -uid "0A88DB52-4C18-9B2F-ED9A-63B61348F2C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak396";
	rename -uid "B9C0B70F-4160-BF25-DD88-53853956E7E4";
createNode objectSet -n "tweakSet396";
	rename -uid "1A8A43E3-4F9A-896B-4841-809EAB799D75";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8361";
	rename -uid "150FFA0F-46F7-C511-51D8-69A3B8FF62F3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts792";
	rename -uid "24F00D3C-49E2-3BB5-42E9-ECAE04C5E7D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion55";
	rename -uid "A372AAC3-4CED-E9C3-5796-AEA1C13A84D9";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns250";
	rename -uid "53A724DC-428F-5BA3-8E8B-F79AB28F8CD4";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns250Set";
	rename -uid "71B166E0-43E2-53B4-02ED-968EC2E5CF85";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns250GroupId";
	rename -uid "4B73FF75-47BD-8945-8F63-A794DA4E3EB8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns250GroupParts";
	rename -uid "059636FF-4B0A-0756-9E9F-3595B30E21CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak398";
	rename -uid "E4AE9D55-4115-2EAB-7675-FCBA042E0ECC";
createNode objectSet -n "tweakSet398";
	rename -uid "A2428A19-4708-1BA9-D77C-FDA9DB2794B1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8365";
	rename -uid "5A65D0D7-4A0D-7B52-5CD9-A0840219CF51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts796";
	rename -uid "28883AC4-42A5-C834-C253-45AD31B20A93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns246";
	rename -uid "357ABCED-44B9-DA12-4066-3093F0FD485A";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns246Set";
	rename -uid "86F169B0-4ED7-FE53-7751-0DB38C1BBEE0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns246GroupId";
	rename -uid "1AAF15DD-460E-CECC-7DA2-FEA5DDD66B71";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns246GroupParts";
	rename -uid "EAB28393-421B-8C7A-7575-AD9DB83FB98B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak394";
	rename -uid "7E99AA02-4F0D-58E7-1FBF-8793BE8B76BA";
createNode objectSet -n "tweakSet394";
	rename -uid "C4F19BBB-4615-7586-0A2D-768ADA75403C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8357";
	rename -uid "48AECF9E-4886-186B-7B37-169897B10233";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts788";
	rename -uid "ED57BD69-4372-0586-AC44-27B6BF18D8EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns249";
	rename -uid "49700455-4C42-E639-2BDF-56BC84DD0841";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns249Set";
	rename -uid "A04092C0-4DE1-B57D-68D0-DF95C74AD8EF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns249GroupId";
	rename -uid "F8C01023-43A2-20F6-AF5B-D08C21592582";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns249GroupParts";
	rename -uid "DC368DA5-4519-A4DC-F420-30B0E5486E28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak397";
	rename -uid "1A535BF4-4A7A-72FA-50FA-518CDF9EC095";
createNode objectSet -n "tweakSet397";
	rename -uid "5D3AF0F1-4232-5FC3-BD0E-009D9DB0DF27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8363";
	rename -uid "D3D214F9-4442-B28D-6692-7E999721E60C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts794";
	rename -uid "CFD28EA1-4304-5D78-5F87-A396F18C34B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns251";
	rename -uid "00ED6E41-4E6B-3DB2-2047-8697391C3D33";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns251Set";
	rename -uid "5C02DBEF-4355-0F9C-0A59-3C99F066B1C7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns251GroupId";
	rename -uid "499E0E31-4EE4-0F28-55FF-7DA6ACC6EBF9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns251GroupParts";
	rename -uid "C9593204-4397-4CF3-25C6-7198B3E3284B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak399";
	rename -uid "F126EC70-4A54-813A-2109-E086418C1B9C";
createNode objectSet -n "tweakSet399";
	rename -uid "08AECAF5-4091-9782-EC8E-1EB3705A3ED1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8367";
	rename -uid "6977DB36-43AB-B254-884B-C5B37E56D160";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts798";
	rename -uid "5D0A3871-46F4-B4E8-883E-6AAD7963C173";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns252";
	rename -uid "12BFE221-4BCD-1C46-010A-C6A96347C562";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns252Set";
	rename -uid "90754009-4320-0B6B-8D71-B39159056A50";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns252GroupId";
	rename -uid "6F9B3699-4632-0729-BB1C-F4A596E0C9F3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns252GroupParts";
	rename -uid "D85E7919-4258-0152-7B29-AC99EC7B22FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak400";
	rename -uid "B47DB2E2-4F77-D9CF-7812-E890C6C6BED2";
createNode objectSet -n "tweakSet400";
	rename -uid "8124BBB9-491B-7CB2-A219-A0A50FD9A056";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8369";
	rename -uid "B68AF40D-42B3-6ABC-4EAD-908EB8B1D243";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts800";
	rename -uid "4179AF62-4AF9-C461-7487-74BC10598943";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns245";
	rename -uid "E5721B85-4DAC-A94D-3E8E-08A26893736A";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns245Set";
	rename -uid "EA661DF4-441C-F862-8436-BBA77BD41CA9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns245GroupId";
	rename -uid "B919B7BC-419C-CB92-6FF8-D89161C6F7AE";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns245GroupParts";
	rename -uid "243C310D-477A-16D2-DC27-4CB43DF20F10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak393";
	rename -uid "9277A1FD-4B61-3100-5571-079A8566EC5C";
createNode objectSet -n "tweakSet393";
	rename -uid "95B010E4-41A2-45C0-AC2F-A5AD07F5F5A2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8355";
	rename -uid "99F4598A-4264-93CD-C519-4D964D4C5628";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts786";
	rename -uid "C7C3817F-436F-6DF5-93F8-EDB196843875";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion54";
	rename -uid "7C2AA32D-4B56-52E8-4175-BDAE2AF5F161";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns244";
	rename -uid "0F904935-455E-57FA-3A5C-50AD3C0714D7";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns244Set";
	rename -uid "538F4CF0-4422-F750-B148-87A2ABC1A82B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns244GroupId";
	rename -uid "44694192-47FF-3795-C367-DA9C381195A1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns244GroupParts";
	rename -uid "9B895CAD-4EC4-7B2F-35E5-88A78E8C1686";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak392";
	rename -uid "0520CA8B-47F8-7714-F0AE-19829D3E48E5";
createNode objectSet -n "tweakSet392";
	rename -uid "33D7D3D7-40AD-F320-1577-4789ABFE3E5D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8353";
	rename -uid "C0DD87F4-4AD8-2031-9F5A-1393309BFED1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts784";
	rename -uid "BCEB5D4D-4B6F-1B7A-920C-F59738075DA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	rename -uid "47B60AE1-4262-6353-4453-A99892442D04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	rename -uid "0D658043-4C68-4D24-E164-DEA32590FE68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion58";
	rename -uid "702DFF01-4719-E696-4B9B-2D8B0452A454";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns270";
	rename -uid "37F124E1-4149-1892-8105-8FB82E6AF2E2";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns270Set";
	rename -uid "8D7D1808-4C58-DF88-6B5B-8CB07533C53C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns270GroupId";
	rename -uid "976EF078-4A6F-2F25-5753-848DEA7B0AF8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns270GroupParts";
	rename -uid "F63686EE-4E06-7295-5B62-C7AFEC27C839";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak418";
	rename -uid "CD0D1193-44C0-42F2-3636-A8967AD4537E";
createNode objectSet -n "tweakSet418";
	rename -uid "827E854E-4B69-3E54-B22A-7A9B352BFC6E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8405";
	rename -uid "A51829B7-42FB-7EAD-F94E-4881BE877ABC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts836";
	rename -uid "96D882CD-434E-E069-104D-E586F6F76DBA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion59";
	rename -uid "045AE3B7-4EA0-3BFD-88B5-11B1DDB0DC65";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns271";
	rename -uid "DABF3F6B-49EF-5121-620C-BAAD18CB98EA";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns271Set";
	rename -uid "4ECBF841-4AB9-2706-895B-C38A312F0AD0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns271GroupId";
	rename -uid "4412A766-4D7C-95AD-FA32-F981AC4AA8E0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns271GroupParts";
	rename -uid "FE80F8E6-4D3D-09BF-EB40-908AADBC916D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak419";
	rename -uid "87B9A5A0-4437-3D28-9F0F-3F8F820A99A8";
createNode objectSet -n "tweakSet419";
	rename -uid "158BDE57-4498-31EF-86C7-D797D40787EB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8407";
	rename -uid "95F9775D-48E1-FC6E-C763-818EB145EA05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts838";
	rename -uid "23E0A5E5-4AB4-5406-D1A4-B6B1F360775E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion60";
	rename -uid "0309C339-43C1-A608-96AA-A097DB9F3D55";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns272";
	rename -uid "007E254F-4985-AC3D-E91A-FCAA3E694C80";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns272Set";
	rename -uid "576657CF-4992-D304-01EE-C5BF78FCB1A0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns272GroupId";
	rename -uid "812DF806-468A-233A-19AF-968C57F42774";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns272GroupParts";
	rename -uid "289C3DDD-4A37-8CD9-A3B0-87A058B5BA0E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak420";
	rename -uid "83C3F410-4E90-DAE6-A01B-62A7411FEC24";
createNode objectSet -n "tweakSet420";
	rename -uid "51185DF0-4007-FAEE-254D-0CBE5F825937";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8409";
	rename -uid "0DB390B0-4406-3B88-00C0-BA8030A630B5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts840";
	rename -uid "B7978450-445B-1CA5-8097-99BE90D89065";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion57";
	rename -uid "90964DC5-47C5-80B1-DDFB-A8A35B968495";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns269";
	rename -uid "D5E7E9A8-4AFE-D75F-29AA-FDBFBD4DE154";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns269Set";
	rename -uid "9D9A579D-4975-4840-3E33-3A8F22A97759";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns269GroupId";
	rename -uid "E831C10B-4C00-2E77-B0E0-6E8E5D2B0F48";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns269GroupParts";
	rename -uid "057CAE50-42F8-2785-2DCA-B2B5DE804BC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak417";
	rename -uid "506F1AD4-4247-3C03-A7A7-5F93D15AF661";
createNode objectSet -n "tweakSet417";
	rename -uid "76E295DC-4909-E96A-5D45-7BBA30B71E18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8403";
	rename -uid "A3BD5E6D-4C49-ECB1-372E-7D8FA278D78D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts834";
	rename -uid "1A721E2F-4044-30CE-D718-1FAAC389E6C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion61";
	rename -uid "D237E1DB-4FED-6131-4B30-809AEDB1D449";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns273";
	rename -uid "C01439DF-47EA-BD12-18C9-439AF585A5E9";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns273Set";
	rename -uid "2F7233E0-4A48-EE9C-A3DE-0389098131D7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns273GroupId";
	rename -uid "F7552809-4F7B-0560-E9A2-4296A42F373F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns273GroupParts";
	rename -uid "459BE2C3-4017-031C-9A55-78813E570A9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak421";
	rename -uid "2A695585-4BD2-0A50-8D85-DE82B42551B6";
createNode objectSet -n "tweakSet421";
	rename -uid "50C72BAE-4A15-DC70-7207-1C8DB961A346";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8411";
	rename -uid "88D8392E-4907-2D3C-7687-EB8A66006ACC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts842";
	rename -uid "10ECADE3-4394-DEA6-81BB-EB9E99715C2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion62";
	rename -uid "F5F26566-458A-0BC8-5141-BEA437FA172F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns274";
	rename -uid "127B61AE-4267-BB47-5B9D-288A5FAF6DB5";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns274Set";
	rename -uid "0CF45A17-47FB-FF64-632E-C98599F957D5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns274GroupId";
	rename -uid "1BFCEF45-4C88-4AAF-31DF-159617198815";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns274GroupParts";
	rename -uid "F8495975-4384-BAE2-DC2C-2CA0BC77C02D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak422";
	rename -uid "554E80FD-4733-2B03-A54C-CEACC76D8E3C";
createNode objectSet -n "tweakSet422";
	rename -uid "004BE7F3-469B-BBED-65A9-CDAD779F59BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8413";
	rename -uid "4285A726-46DB-18C0-B093-E78ECDC48B6C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts844";
	rename -uid "F3A14212-451A-7B24-B33E-0C9B69112274";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns268";
	rename -uid "0C539780-44E3-A033-5529-DFB27C4757FA";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns268Set";
	rename -uid "C5712CE2-4709-1FE6-82FB-0E94FC5318C5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns268GroupId";
	rename -uid "E3355C19-4833-6E53-C404-E1B655E33070";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns268GroupParts";
	rename -uid "31B108C1-4594-D2DC-89F1-0AA9B0F3907F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak416";
	rename -uid "90DDCBD8-4703-5B25-1EBD-CA98C22F3D57";
createNode objectSet -n "tweakSet416";
	rename -uid "77CF0138-4DA6-649F-C50A-E69E67CE3FD7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8401";
	rename -uid "7A9EB76C-43FB-BD28-4587-77B9842DF0A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts832";
	rename -uid "7E7AC853-4DAC-EBFE-1E00-279672682A18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion56";
	rename -uid "194D31EA-4E9F-FB03-C157-0EB22FF24C01";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns267";
	rename -uid "BB73B235-4228-77A7-5E78-A9AC9B49AB45";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns267Set";
	rename -uid "9B164DAA-4351-CD4E-7B75-47B69F85F1BA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns267GroupId";
	rename -uid "997ED071-4C47-A389-58D1-039BC419A542";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns267GroupParts";
	rename -uid "5EF71585-4EF9-BA77-2B6A-BFB3727AA921";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak415";
	rename -uid "00F61662-4B75-F36D-C9BB-6699158AE348";
createNode objectSet -n "tweakSet415";
	rename -uid "2229896A-46CB-73C0-F4BE-61ABE08BC49E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8399";
	rename -uid "6A32DEA3-4956-522A-6533-569D7FAF16B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts830";
	rename -uid "08E74E5A-44E0-304E-249B-28943E5C3F5F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion46";
	rename -uid "AE243BC6-47F4-FF26-C24A-C4B2AE06058C";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns235";
	rename -uid "B40156B2-4988-396B-978A-9E84023EC9A6";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns235Set";
	rename -uid "13DCBCA7-45F1-AD5F-05D7-FFBB50C03116";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns235GroupId";
	rename -uid "E47B745E-4F85-8E44-82CC-238826355C8F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns235GroupParts";
	rename -uid "C7B95067-494E-92F5-81E0-BD8ED5EC2051";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak383";
	rename -uid "356B3D34-4309-F1F8-456D-D2A5DF469EA7";
createNode objectSet -n "tweakSet383";
	rename -uid "C1C09040-4F82-2257-B2E3-3FA0B38D9721";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8335";
	rename -uid "1BE32E14-43CA-7DD8-DBFE-F7B0A689197F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts766";
	rename -uid "12240336-4F43-C122-1B6A-89B2F546E37E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "2B6DD583-406A-9471-DBF6-48A9CAB2EDB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "85E2079C-45B1-E71C-E8BE-70AE9B5EF00E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns262";
	rename -uid "BF3E2073-446C-8358-4C65-40AEF2C88BEC";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns262Set";
	rename -uid "A212B40F-49BC-46AC-C4E0-CA99C00A02E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns262GroupId";
	rename -uid "BB68460C-4684-2623-24CA-D0870CAB2F1F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns262GroupParts";
	rename -uid "7D139E98-4DCD-8FC4-9FA6-44B2FE396343";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak410";
	rename -uid "384CBA64-4585-2A9E-044F-1F89E1EEFE46";
createNode objectSet -n "tweakSet410";
	rename -uid "EDD670A3-41D3-E968-7BEA-9EA6FCC5B602";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8389";
	rename -uid "0E988B5F-412D-B0EF-3389-1F82EE273789";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts820";
	rename -uid "EBEB491B-4511-44D9-4D57-E8A7F26B0752";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns263";
	rename -uid "919CFC65-4E19-AA5B-A72D-0697FA0C50AF";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns263Set";
	rename -uid "21A35733-433E-54CE-9277-8281D226F179";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns263GroupId";
	rename -uid "638CD187-4130-2A12-32F1-829A21F0A115";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns263GroupParts";
	rename -uid "C7EBD9DD-4DBE-BC96-5276-34B8C2EF7C71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak411";
	rename -uid "A9CF30B1-4D44-0622-61C2-9FBBF731A4A0";
createNode objectSet -n "tweakSet411";
	rename -uid "D78753DC-4D43-507E-4FC6-A9AB3DCF7E14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8391";
	rename -uid "9AEF22E9-4263-3F23-1CE4-2B9EA1E9EDFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts822";
	rename -uid "E2CD5081-431B-E3B3-1B20-32AFE07A6F81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns261";
	rename -uid "33F97914-4ADF-B470-F36F-C880F4303C82";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns261Set";
	rename -uid "3E6BE159-4363-1B90-2424-6BB0788FF28A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns261GroupId";
	rename -uid "9AC0D3B3-4153-88DE-A3E7-92A414FC6207";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns261GroupParts";
	rename -uid "E8A64C91-473C-2123-BD41-94953980E01D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak409";
	rename -uid "F65ADCCD-45A5-7176-DE5C-EF8F3E543D6B";
createNode objectSet -n "tweakSet409";
	rename -uid "273064B4-4658-71C5-BD97-CA8C44849157";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8387";
	rename -uid "63F249B9-49D1-7B1D-ABE0-FFA1887985A9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts818";
	rename -uid "E038844B-4F94-A590-9404-A4BB2B413067";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile1";
	rename -uid "3BCBCD93-4712-69CB-278C-828DA274E157";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile1";
	rename -uid "17864321-4002-0B99-9874-C098F5C39348";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns265";
	rename -uid "F6C27F02-4A21-9777-A455-468D070FBB74";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns265Set";
	rename -uid "40200A5B-4599-9E4C-E7EF-55B0533CB7A1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns265GroupId";
	rename -uid "ADBF0C97-4827-2917-089C-2E8158945D5E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns265GroupParts";
	rename -uid "95B23E41-4073-69F2-D704-C6BF3E244D2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak413";
	rename -uid "D880E7CC-496A-FFD0-14A6-3DA07EF6A1D9";
createNode objectSet -n "tweakSet413";
	rename -uid "7E6F2D69-475D-DEB5-3DE7-1FA5246928B4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8395";
	rename -uid "66A6749A-4F2D-FC92-964F-08A49DD7760A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts826";
	rename -uid "606AA385-4EB7-0FD2-B25F-BA8F7BB76A0C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns266";
	rename -uid "AE185E6F-4C15-1A32-9A2A-64A5976F43D1";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns266Set";
	rename -uid "D134D011-463F-05B7-E73D-428A6AB770A3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns266GroupId";
	rename -uid "D0AE5FC9-4874-09A6-8F09-C1A1279B15EA";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns266GroupParts";
	rename -uid "5C09B170-41F8-1D4F-FB2A-678D7368C502";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak414";
	rename -uid "66D5B6A2-4AF7-8F32-3F71-F795DE52D2E3";
createNode objectSet -n "tweakSet414";
	rename -uid "752D0C83-4E91-5D99-A2D7-B7BD4F3F6DD1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8397";
	rename -uid "CE7E4A8C-4E2E-4215-FBAF-31A0C519D557";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts828";
	rename -uid "1B37219B-4A20-DB2A-FC3F-9B83F6B3AED2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns264";
	rename -uid "CC7E6AB4-41E8-E365-36B9-EDA1AF51FED3";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns264Set";
	rename -uid "6600F6FC-4462-E78C-72B9-CEA0D3FA1029";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns264GroupId";
	rename -uid "6E49A201-4576-7182-78FF-E6AD4B6F70E9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns264GroupParts";
	rename -uid "7D987C54-4189-EDB6-0FC1-6DA6C8A721B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak412";
	rename -uid "F81CDF9A-4A75-34DB-6D1F-91BCA34410CC";
createNode objectSet -n "tweakSet412";
	rename -uid "3A3258C2-43C8-5D0A-3575-C0B42E10354B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8393";
	rename -uid "2367D140-4560-6810-9149-FBB8079F4375";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts824";
	rename -uid "602B3EE4-4351-6B70-BE25-6BB01310F23B";
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
connectAttr "arm_L0_root_st_profile.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint4.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint4.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint4.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint4.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint4.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint4.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint4.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint4.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint4.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint4.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint4.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint4.w0" "finger_L3_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint4.wum";
connectAttr "unitConversion49.o" "finger_L3_blade_aimConstraint4.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint4.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint4.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint4.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint4.w0" "finger_L3_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns239.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak387.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns239GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns239Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8343.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet387.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint4.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint4.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint4.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint4.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint4.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint4.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint4.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint4.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint4.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint4.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint4.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint4.w0" "finger_L2_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint4.wum";
connectAttr "unitConversion50.o" "finger_L2_blade_aimConstraint4.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint4.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint4.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint4.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint4.w0" "finger_L2_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns240.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak388.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns240GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns240Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8345.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet388.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint4.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint4.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint4.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint4.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint4.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint4.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint4.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint4.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint4.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint4.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint4.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint4.w0" "finger_L1_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint4.wum";
connectAttr "unitConversion51.o" "finger_L1_blade_aimConstraint4.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint4.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint4.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint4.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint4.w0" "finger_L1_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns241.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak389.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns241GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns241Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8347.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet389.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint4.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint4.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint4.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint4.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint4.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint4.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint4.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint4.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint4.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint4.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint4.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint4.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint4.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint4.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint4.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint4.w0" "meta_L0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint4.wum";
connectAttr "unitConversion48.o" "meta_L0_blade_aimConstraint4.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint4.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint4.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint4.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint4.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint4.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint4.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint4.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint4.w0" "meta_L0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns238.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak386.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns238GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns238Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8341.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet386.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint4.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint4.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint4.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint4.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint4.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint4.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint4.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint4.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint4.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint4.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint4.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint4.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint4.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint4.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint4.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint4.w0" "finger_L0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint4.wum";
connectAttr "unitConversion53.o" "finger_L0_blade_aimConstraint4.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint4.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint4.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint4.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint4.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint4.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint4.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint4.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint4.w0" "finger_L0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns243.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak391.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns243GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns243Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8351.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet391.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint4.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint4.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint4.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint4.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint4.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint4.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint4.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint4.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint4.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint4.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint4.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint4.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint4.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint4.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint4.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint4.w0" "thumb_L0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint4.wum";
connectAttr "unitConversion52.o" "thumb_L0_blade_aimConstraint4.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint4.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint4.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint4.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint4.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint4.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint4.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint4.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint4.w0" "thumb_L0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns242.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak390.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns242GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns242Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8349.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet390.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns237.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak385.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns237GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns237Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8339.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet385.mwc" "arm_L0_crvShape.iog.og[1].gco";
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
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint4.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint4.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint4.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint4.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint4.w0" "shoulder_L0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint4.wum";
connectAttr "unitConversion47.o" "shoulder_L0_blade_aimConstraint4.ox";
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
connectAttr "mgear_curveCns236.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak384.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns236GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns236Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8337.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet384.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns247.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak395.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns247GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns247Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8359.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet395.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns248.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak396.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns248GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns248Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8361.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet396.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint4.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint4.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint4.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint4.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint4.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint4.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint4.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint4.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint4.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint4.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint4.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint4.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint4.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint4.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint4.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint4.w0" "tongue_C0_blade_aimConstraint4.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint4.wum";
connectAttr "unitConversion55.o" "tongue_C0_blade_aimConstraint4.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint4.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint4.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint4.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint4.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint4.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint4.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint4.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint4.w0" "tongue_C0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns250.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak398.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns250GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns250Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8365.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet398.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns246.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak394.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns246GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns246Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8357.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet394.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns249.og[0]" "mouth_C0_crv4Shape.cr";
connectAttr "tweak397.pl[0].cp[0]" "mouth_C0_crv4Shape.twl";
connectAttr "mgear_curveCns249GroupId.id" "mouth_C0_crv4Shape.iog.og[0].gid";
connectAttr "mgear_curveCns249Set.mwc" "mouth_C0_crv4Shape.iog.og[0].gco";
connectAttr "groupId8363.id" "mouth_C0_crv4Shape.iog.og[1].gid";
connectAttr "tweakSet397.mwc" "mouth_C0_crv4Shape.iog.og[1].gco";
connectAttr "mgear_curveCns251.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak399.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns251GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns251Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8367.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet399.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns252.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak400.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns252GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns252Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8369.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet400.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns245.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak393.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns245GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns245Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8355.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet393.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion54.o" "neck_C0_blade_aimConstraint4.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint4.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint4.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint4.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint4.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint4.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint4.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint4.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint4.w0" "neck_C0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns244.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak392.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns244GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns244Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8353.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet392.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "arm_R0_root_st_profile.o" "arm_R0_root.st_profile";
connectAttr "arm_R0_root_sq_profile.o" "arm_R0_root.sq_profile";
connectAttr "finger_R3_blade_pointConstraint1.ctx" "finger_R3_blade.tx" -l on;
connectAttr "finger_R3_blade_pointConstraint1.cty" "finger_R3_blade.ty" -l on;
connectAttr "finger_R3_blade_pointConstraint1.ctz" "finger_R3_blade.tz" -l on;
connectAttr "finger_R3_blade_aimConstraint1.crx" "finger_R3_blade.rx" -l on;
connectAttr "finger_R3_blade_aimConstraint1.cry" "finger_R3_blade.ry" -l on;
connectAttr "finger_R3_blade_aimConstraint1.crz" "finger_R3_blade.rz" -l on;
connectAttr "finger_R3_blade.pim" "finger_R3_blade_aimConstraint1.cpim";
connectAttr "finger_R3_blade.t" "finger_R3_blade_aimConstraint1.ct";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_aimConstraint1.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_aimConstraint1.crt";
connectAttr "finger_R3_blade.ro" "finger_R3_blade_aimConstraint1.cro";
connectAttr "finger_R3_0_loc.t" "finger_R3_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R3_0_loc.rp" "finger_R3_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R3_0_loc.rpt" "finger_R3_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R3_0_loc.pm" "finger_R3_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R3_blade_aimConstraint1.w0" "finger_R3_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R3_root.wm" "finger_R3_blade_aimConstraint1.wum";
connectAttr "unitConversion58.o" "finger_R3_blade_aimConstraint1.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint1.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint1.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint1.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint1.w0" "finger_R3_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns270.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak418.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns270GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns270Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8405.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet418.mwc" "finger_R3_crvShape.iog.og[1].gco";
connectAttr "finger_R2_blade_pointConstraint1.ctx" "finger_R2_blade.tx" -l on;
connectAttr "finger_R2_blade_pointConstraint1.cty" "finger_R2_blade.ty" -l on;
connectAttr "finger_R2_blade_pointConstraint1.ctz" "finger_R2_blade.tz" -l on;
connectAttr "finger_R2_blade_aimConstraint1.crx" "finger_R2_blade.rx" -l on;
connectAttr "finger_R2_blade_aimConstraint1.cry" "finger_R2_blade.ry" -l on;
connectAttr "finger_R2_blade_aimConstraint1.crz" "finger_R2_blade.rz" -l on;
connectAttr "finger_R2_blade.pim" "finger_R2_blade_aimConstraint1.cpim";
connectAttr "finger_R2_blade.t" "finger_R2_blade_aimConstraint1.ct";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_aimConstraint1.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_aimConstraint1.crt";
connectAttr "finger_R2_blade.ro" "finger_R2_blade_aimConstraint1.cro";
connectAttr "finger_R2_0_loc.t" "finger_R2_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R2_0_loc.rp" "finger_R2_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R2_0_loc.rpt" "finger_R2_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R2_0_loc.pm" "finger_R2_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R2_blade_aimConstraint1.w0" "finger_R2_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R2_root.wm" "finger_R2_blade_aimConstraint1.wum";
connectAttr "unitConversion59.o" "finger_R2_blade_aimConstraint1.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint1.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint1.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint1.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint1.w0" "finger_R2_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns271.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak419.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns271GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns271Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8407.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet419.mwc" "finger_R2_crvShape.iog.og[1].gco";
connectAttr "finger_R1_blade_pointConstraint1.ctx" "finger_R1_blade.tx" -l on;
connectAttr "finger_R1_blade_pointConstraint1.cty" "finger_R1_blade.ty" -l on;
connectAttr "finger_R1_blade_pointConstraint1.ctz" "finger_R1_blade.tz" -l on;
connectAttr "finger_R1_blade_aimConstraint1.crx" "finger_R1_blade.rx" -l on;
connectAttr "finger_R1_blade_aimConstraint1.cry" "finger_R1_blade.ry" -l on;
connectAttr "finger_R1_blade_aimConstraint1.crz" "finger_R1_blade.rz" -l on;
connectAttr "finger_R1_blade.pim" "finger_R1_blade_aimConstraint1.cpim";
connectAttr "finger_R1_blade.t" "finger_R1_blade_aimConstraint1.ct";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_aimConstraint1.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_aimConstraint1.crt";
connectAttr "finger_R1_blade.ro" "finger_R1_blade_aimConstraint1.cro";
connectAttr "finger_R1_0_loc.t" "finger_R1_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R1_0_loc.rp" "finger_R1_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R1_0_loc.rpt" "finger_R1_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R1_0_loc.pm" "finger_R1_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R1_blade_aimConstraint1.w0" "finger_R1_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R1_root.wm" "finger_R1_blade_aimConstraint1.wum";
connectAttr "unitConversion60.o" "finger_R1_blade_aimConstraint1.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint1.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint1.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint1.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint1.w0" "finger_R1_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns272.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak420.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns272GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns272Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8409.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet420.mwc" "finger_R1_crvShape.iog.og[1].gco";
connectAttr "meta_R0_blade_pointConstraint1.ctx" "meta_R0_blade.tx" -l on;
connectAttr "meta_R0_blade_pointConstraint1.cty" "meta_R0_blade.ty" -l on;
connectAttr "meta_R0_blade_pointConstraint1.ctz" "meta_R0_blade.tz" -l on;
connectAttr "meta_R0_blade_aimConstraint1.crx" "meta_R0_blade.rx" -l on;
connectAttr "meta_R0_blade_aimConstraint1.cry" "meta_R0_blade.ry" -l on;
connectAttr "meta_R0_blade_aimConstraint1.crz" "meta_R0_blade.rz" -l on;
connectAttr "meta_R0_blade.pim" "meta_R0_blade_aimConstraint1.cpim";
connectAttr "meta_R0_blade.t" "meta_R0_blade_aimConstraint1.ct";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_aimConstraint1.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_aimConstraint1.crt";
connectAttr "meta_R0_blade.ro" "meta_R0_blade_aimConstraint1.cro";
connectAttr "meta_R0_0_loc.t" "meta_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "meta_R0_0_loc.rp" "meta_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "meta_R0_0_loc.rpt" "meta_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "meta_R0_0_loc.pm" "meta_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "meta_R0_blade_aimConstraint1.w0" "meta_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "meta_R0_root.wm" "meta_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion57.o" "meta_R0_blade_aimConstraint1.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint1.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint1.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint1.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint1.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint1.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint1.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint1.w0" "meta_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns269.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak417.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns269GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns269Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8403.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet417.mwc" "meta_R0_crvShape.iog.og[1].gco";
connectAttr "finger_R0_blade_pointConstraint1.ctx" "finger_R0_blade.tx" -l on;
connectAttr "finger_R0_blade_pointConstraint1.cty" "finger_R0_blade.ty" -l on;
connectAttr "finger_R0_blade_pointConstraint1.ctz" "finger_R0_blade.tz" -l on;
connectAttr "finger_R0_blade_aimConstraint1.crx" "finger_R0_blade.rx" -l on;
connectAttr "finger_R0_blade_aimConstraint1.cry" "finger_R0_blade.ry" -l on;
connectAttr "finger_R0_blade_aimConstraint1.crz" "finger_R0_blade.rz" -l on;
connectAttr "finger_R0_blade.pim" "finger_R0_blade_aimConstraint1.cpim";
connectAttr "finger_R0_blade.t" "finger_R0_blade_aimConstraint1.ct";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_aimConstraint1.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_aimConstraint1.crt";
connectAttr "finger_R0_blade.ro" "finger_R0_blade_aimConstraint1.cro";
connectAttr "finger_R0_0_loc.t" "finger_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R0_0_loc.rp" "finger_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R0_0_loc.rpt" "finger_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R0_0_loc.pm" "finger_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R0_blade_aimConstraint1.w0" "finger_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R0_root.wm" "finger_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion61.o" "finger_R0_blade_aimConstraint1.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint1.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint1.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint1.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint1.w0" "finger_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns273.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak421.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns273GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns273Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8411.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet421.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "thumb_R0_blade_pointConstraint1.ctx" "thumb_R0_blade.tx" -l on;
connectAttr "thumb_R0_blade_pointConstraint1.cty" "thumb_R0_blade.ty" -l on;
connectAttr "thumb_R0_blade_pointConstraint1.ctz" "thumb_R0_blade.tz" -l on;
connectAttr "thumb_R0_blade_aimConstraint1.crx" "thumb_R0_blade.rx" -l on;
connectAttr "thumb_R0_blade_aimConstraint1.cry" "thumb_R0_blade.ry" -l on;
connectAttr "thumb_R0_blade_aimConstraint1.crz" "thumb_R0_blade.rz" -l on;
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_aimConstraint1.cpim";
connectAttr "thumb_R0_blade.t" "thumb_R0_blade_aimConstraint1.ct";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_aimConstraint1.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_aimConstraint1.crt";
connectAttr "thumb_R0_blade.ro" "thumb_R0_blade_aimConstraint1.cro";
connectAttr "thumb_R0_0_loc.t" "thumb_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "thumb_R0_0_loc.rp" "thumb_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "thumb_R0_0_loc.rpt" "thumb_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "thumb_R0_0_loc.pm" "thumb_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "thumb_R0_blade_aimConstraint1.w0" "thumb_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "thumb_R0_root.wm" "thumb_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion62.o" "thumb_R0_blade_aimConstraint1.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint1.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint1.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint1.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint1.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint1.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint1.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint1.w0" "thumb_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns274.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak422.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns274GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns274Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8413.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet422.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns268.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak416.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns268GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns268Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8401.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet416.mwc" "arm_R0_crvShape.iog.og[1].gco";
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
connectAttr "shoulder_R0_tip.t" "shoulder_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "shoulder_R0_tip.rp" "shoulder_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "shoulder_R0_tip.rpt" "shoulder_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "shoulder_R0_tip.pm" "shoulder_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint1.w0" "shoulder_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion56.o" "shoulder_R0_blade_aimConstraint1.ox";
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
connectAttr "mgear_curveCns267.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak415.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns267GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns267Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8399.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet415.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion46.o" "spine_C0_blade_aimConstraint4.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint4.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint4.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint4.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint4.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint4.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint4.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint4.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint4.w0" "spine_C0_blade_pointConstraint4.tg[0].tw"
		;
connectAttr "mgear_curveCns235.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak383.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns235GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns235Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8335.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet383.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns262.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak410.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns262GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns262Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8389.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet410.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns263.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak411.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns263GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns263Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8391.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet411.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns261.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak409.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns261GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns261Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8387.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet409.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile1.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile1.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns265.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak413.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns265GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns265Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8395.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet413.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns266.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak414.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns266GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns266Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8397.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet414.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns264.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak412.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns264GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns264Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8393.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet412.mwc" "leg_R0_crvShape.iog.og[1].gco";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion49.i";
connectAttr "mgear_curveCns239GroupParts.og" "mgear_curveCns239.ip[0].ig";
connectAttr "mgear_curveCns239GroupId.id" "mgear_curveCns239.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns239.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns239.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns239.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns239.inputs[3]";
connectAttr "mgear_curveCns239GroupId.msg" "mgear_curveCns239Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns239Set.dsm" -na;
connectAttr "mgear_curveCns239.msg" "mgear_curveCns239Set.ub[0]";
connectAttr "tweak387.og[0]" "mgear_curveCns239GroupParts.ig";
connectAttr "mgear_curveCns239GroupId.id" "mgear_curveCns239GroupParts.gi";
connectAttr "groupParts774.og" "tweak387.ip[0].ig";
connectAttr "groupId8343.id" "tweak387.ip[0].gi";
connectAttr "groupId8343.msg" "tweakSet387.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet387.dsm" -na;
connectAttr "tweak387.msg" "tweakSet387.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts774.ig";
connectAttr "groupId8343.id" "groupParts774.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion50.i";
connectAttr "mgear_curveCns240GroupParts.og" "mgear_curveCns240.ip[0].ig";
connectAttr "mgear_curveCns240GroupId.id" "mgear_curveCns240.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns240.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns240.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns240.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns240.inputs[3]";
connectAttr "mgear_curveCns240GroupId.msg" "mgear_curveCns240Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns240Set.dsm" -na;
connectAttr "mgear_curveCns240.msg" "mgear_curveCns240Set.ub[0]";
connectAttr "tweak388.og[0]" "mgear_curveCns240GroupParts.ig";
connectAttr "mgear_curveCns240GroupId.id" "mgear_curveCns240GroupParts.gi";
connectAttr "groupParts776.og" "tweak388.ip[0].ig";
connectAttr "groupId8345.id" "tweak388.ip[0].gi";
connectAttr "groupId8345.msg" "tweakSet388.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet388.dsm" -na;
connectAttr "tweak388.msg" "tweakSet388.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts776.ig";
connectAttr "groupId8345.id" "groupParts776.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion51.i";
connectAttr "mgear_curveCns241GroupParts.og" "mgear_curveCns241.ip[0].ig";
connectAttr "mgear_curveCns241GroupId.id" "mgear_curveCns241.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns241.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns241.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns241.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns241.inputs[3]";
connectAttr "mgear_curveCns241GroupId.msg" "mgear_curveCns241Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns241Set.dsm" -na;
connectAttr "mgear_curveCns241.msg" "mgear_curveCns241Set.ub[0]";
connectAttr "tweak389.og[0]" "mgear_curveCns241GroupParts.ig";
connectAttr "mgear_curveCns241GroupId.id" "mgear_curveCns241GroupParts.gi";
connectAttr "groupParts778.og" "tweak389.ip[0].ig";
connectAttr "groupId8347.id" "tweak389.ip[0].gi";
connectAttr "groupId8347.msg" "tweakSet389.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet389.dsm" -na;
connectAttr "tweak389.msg" "tweakSet389.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts778.ig";
connectAttr "groupId8347.id" "groupParts778.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion48.i";
connectAttr "mgear_curveCns238GroupParts.og" "mgear_curveCns238.ip[0].ig";
connectAttr "mgear_curveCns238GroupId.id" "mgear_curveCns238.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns238.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns238.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns238.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns238.inputs[3]";
connectAttr "mgear_curveCns238GroupId.msg" "mgear_curveCns238Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns238Set.dsm" -na;
connectAttr "mgear_curveCns238.msg" "mgear_curveCns238Set.ub[0]";
connectAttr "tweak386.og[0]" "mgear_curveCns238GroupParts.ig";
connectAttr "mgear_curveCns238GroupId.id" "mgear_curveCns238GroupParts.gi";
connectAttr "groupParts772.og" "tweak386.ip[0].ig";
connectAttr "groupId8341.id" "tweak386.ip[0].gi";
connectAttr "groupId8341.msg" "tweakSet386.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet386.dsm" -na;
connectAttr "tweak386.msg" "tweakSet386.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts772.ig";
connectAttr "groupId8341.id" "groupParts772.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion53.i";
connectAttr "mgear_curveCns243GroupParts.og" "mgear_curveCns243.ip[0].ig";
connectAttr "mgear_curveCns243GroupId.id" "mgear_curveCns243.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns243.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns243.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns243.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns243.inputs[3]";
connectAttr "mgear_curveCns243GroupId.msg" "mgear_curveCns243Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns243Set.dsm" -na;
connectAttr "mgear_curveCns243.msg" "mgear_curveCns243Set.ub[0]";
connectAttr "tweak391.og[0]" "mgear_curveCns243GroupParts.ig";
connectAttr "mgear_curveCns243GroupId.id" "mgear_curveCns243GroupParts.gi";
connectAttr "groupParts782.og" "tweak391.ip[0].ig";
connectAttr "groupId8351.id" "tweak391.ip[0].gi";
connectAttr "groupId8351.msg" "tweakSet391.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet391.dsm" -na;
connectAttr "tweak391.msg" "tweakSet391.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts782.ig";
connectAttr "groupId8351.id" "groupParts782.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion52.i";
connectAttr "mgear_curveCns242GroupParts.og" "mgear_curveCns242.ip[0].ig";
connectAttr "mgear_curveCns242GroupId.id" "mgear_curveCns242.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns242.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns242.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns242.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns242.inputs[3]";
connectAttr "mgear_curveCns242GroupId.msg" "mgear_curveCns242Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns242Set.dsm" -na;
connectAttr "mgear_curveCns242.msg" "mgear_curveCns242Set.ub[0]";
connectAttr "tweak390.og[0]" "mgear_curveCns242GroupParts.ig";
connectAttr "mgear_curveCns242GroupId.id" "mgear_curveCns242GroupParts.gi";
connectAttr "groupParts780.og" "tweak390.ip[0].ig";
connectAttr "groupId8349.id" "tweak390.ip[0].gi";
connectAttr "groupId8349.msg" "tweakSet390.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet390.dsm" -na;
connectAttr "tweak390.msg" "tweakSet390.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts780.ig";
connectAttr "groupId8349.id" "groupParts780.gi";
connectAttr "mgear_curveCns237GroupParts.og" "mgear_curveCns237.ip[0].ig";
connectAttr "mgear_curveCns237GroupId.id" "mgear_curveCns237.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns237.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns237.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns237.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns237.inputs[3]";
connectAttr "mgear_curveCns237GroupId.msg" "mgear_curveCns237Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns237Set.dsm" -na;
connectAttr "mgear_curveCns237.msg" "mgear_curveCns237Set.ub[0]";
connectAttr "tweak385.og[0]" "mgear_curveCns237GroupParts.ig";
connectAttr "mgear_curveCns237GroupId.id" "mgear_curveCns237GroupParts.gi";
connectAttr "groupParts770.og" "tweak385.ip[0].ig";
connectAttr "groupId8339.id" "tweak385.ip[0].gi";
connectAttr "groupId8339.msg" "tweakSet385.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet385.dsm" -na;
connectAttr "tweak385.msg" "tweakSet385.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts770.ig";
connectAttr "groupId8339.id" "groupParts770.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion47.i";
connectAttr "mgear_curveCns236GroupParts.og" "mgear_curveCns236.ip[0].ig";
connectAttr "mgear_curveCns236GroupId.id" "mgear_curveCns236.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns236.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns236.inputs[1]";
connectAttr "mgear_curveCns236GroupId.msg" "mgear_curveCns236Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns236Set.dsm" -na;
connectAttr "mgear_curveCns236.msg" "mgear_curveCns236Set.ub[0]";
connectAttr "tweak384.og[0]" "mgear_curveCns236GroupParts.ig";
connectAttr "mgear_curveCns236GroupId.id" "mgear_curveCns236GroupParts.gi";
connectAttr "groupParts768.og" "tweak384.ip[0].ig";
connectAttr "groupId8337.id" "tweak384.ip[0].gi";
connectAttr "groupId8337.msg" "tweakSet384.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet384.dsm" -na;
connectAttr "tweak384.msg" "tweakSet384.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts768.ig";
connectAttr "groupId8337.id" "groupParts768.gi";
connectAttr "mgear_curveCns247GroupParts.og" "mgear_curveCns247.ip[0].ig";
connectAttr "mgear_curveCns247GroupId.id" "mgear_curveCns247.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns247.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns247.inputs[1]";
connectAttr "mgear_curveCns247GroupId.msg" "mgear_curveCns247Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns247Set.dsm"
		 -na;
connectAttr "mgear_curveCns247.msg" "mgear_curveCns247Set.ub[0]";
connectAttr "tweak395.og[0]" "mgear_curveCns247GroupParts.ig";
connectAttr "mgear_curveCns247GroupId.id" "mgear_curveCns247GroupParts.gi";
connectAttr "groupParts790.og" "tweak395.ip[0].ig";
connectAttr "groupId8359.id" "tweak395.ip[0].gi";
connectAttr "groupId8359.msg" "tweakSet395.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet395.dsm"
		 -na;
connectAttr "tweak395.msg" "tweakSet395.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts790.ig"
		;
connectAttr "groupId8359.id" "groupParts790.gi";
connectAttr "mgear_curveCns248GroupParts.og" "mgear_curveCns248.ip[0].ig";
connectAttr "mgear_curveCns248GroupId.id" "mgear_curveCns248.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns248.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns248.inputs[1]";
connectAttr "mgear_curveCns248GroupId.msg" "mgear_curveCns248Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns248Set.dsm"
		 -na;
connectAttr "mgear_curveCns248.msg" "mgear_curveCns248Set.ub[0]";
connectAttr "tweak396.og[0]" "mgear_curveCns248GroupParts.ig";
connectAttr "mgear_curveCns248GroupId.id" "mgear_curveCns248GroupParts.gi";
connectAttr "groupParts792.og" "tweak396.ip[0].ig";
connectAttr "groupId8361.id" "tweak396.ip[0].gi";
connectAttr "groupId8361.msg" "tweakSet396.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet396.dsm"
		 -na;
connectAttr "tweak396.msg" "tweakSet396.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts792.ig"
		;
connectAttr "groupId8361.id" "groupParts792.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion55.i";
connectAttr "mgear_curveCns250GroupParts.og" "mgear_curveCns250.ip[0].ig";
connectAttr "mgear_curveCns250GroupId.id" "mgear_curveCns250.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns250.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns250.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns250.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns250.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns250.inputs[4]";
connectAttr "mgear_curveCns250GroupId.msg" "mgear_curveCns250Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns250Set.dsm" -na;
connectAttr "mgear_curveCns250.msg" "mgear_curveCns250Set.ub[0]";
connectAttr "tweak398.og[0]" "mgear_curveCns250GroupParts.ig";
connectAttr "mgear_curveCns250GroupId.id" "mgear_curveCns250GroupParts.gi";
connectAttr "groupParts796.og" "tweak398.ip[0].ig";
connectAttr "groupId8365.id" "tweak398.ip[0].gi";
connectAttr "groupId8365.msg" "tweakSet398.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet398.dsm" -na;
connectAttr "tweak398.msg" "tweakSet398.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts796.ig";
connectAttr "groupId8365.id" "groupParts796.gi";
connectAttr "mgear_curveCns246GroupParts.og" "mgear_curveCns246.ip[0].ig";
connectAttr "mgear_curveCns246GroupId.id" "mgear_curveCns246.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns246.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns246.inputs[1]";
connectAttr "mgear_curveCns246GroupId.msg" "mgear_curveCns246Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns246Set.dsm"
		 -na;
connectAttr "mgear_curveCns246.msg" "mgear_curveCns246Set.ub[0]";
connectAttr "tweak394.og[0]" "mgear_curveCns246GroupParts.ig";
connectAttr "mgear_curveCns246GroupId.id" "mgear_curveCns246GroupParts.gi";
connectAttr "groupParts788.og" "tweak394.ip[0].ig";
connectAttr "groupId8357.id" "tweak394.ip[0].gi";
connectAttr "groupId8357.msg" "tweakSet394.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet394.dsm"
		 -na;
connectAttr "tweak394.msg" "tweakSet394.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts788.ig"
		;
connectAttr "groupId8357.id" "groupParts788.gi";
connectAttr "mgear_curveCns249GroupParts.og" "mgear_curveCns249.ip[0].ig";
connectAttr "mgear_curveCns249GroupId.id" "mgear_curveCns249.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns249.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns249.inputs[1]";
connectAttr "mgear_curveCns249GroupId.msg" "mgear_curveCns249Set.gn" -na;
connectAttr "mouth_C0_crv4Shape.iog.og[0]" "mgear_curveCns249Set.dsm" -na;
connectAttr "mgear_curveCns249.msg" "mgear_curveCns249Set.ub[0]";
connectAttr "tweak397.og[0]" "mgear_curveCns249GroupParts.ig";
connectAttr "mgear_curveCns249GroupId.id" "mgear_curveCns249GroupParts.gi";
connectAttr "groupParts794.og" "tweak397.ip[0].ig";
connectAttr "groupId8363.id" "tweak397.ip[0].gi";
connectAttr "groupId8363.msg" "tweakSet397.gn" -na;
connectAttr "mouth_C0_crv4Shape.iog.og[1]" "tweakSet397.dsm" -na;
connectAttr "tweak397.msg" "tweakSet397.ub[0]";
connectAttr "mouth_C0_crv4ShapeOrig.ws" "groupParts794.ig";
connectAttr "groupId8363.id" "groupParts794.gi";
connectAttr "mgear_curveCns251GroupParts.og" "mgear_curveCns251.ip[0].ig";
connectAttr "mgear_curveCns251GroupId.id" "mgear_curveCns251.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns251.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns251.inputs[1]";
connectAttr "mgear_curveCns251GroupId.msg" "mgear_curveCns251Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns251Set.dsm" -na;
connectAttr "mgear_curveCns251.msg" "mgear_curveCns251Set.ub[0]";
connectAttr "tweak399.og[0]" "mgear_curveCns251GroupParts.ig";
connectAttr "mgear_curveCns251GroupId.id" "mgear_curveCns251GroupParts.gi";
connectAttr "groupParts798.og" "tweak399.ip[0].ig";
connectAttr "groupId8367.id" "tweak399.ip[0].gi";
connectAttr "groupId8367.msg" "tweakSet399.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet399.dsm" -na;
connectAttr "tweak399.msg" "tweakSet399.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts798.ig";
connectAttr "groupId8367.id" "groupParts798.gi";
connectAttr "mgear_curveCns252GroupParts.og" "mgear_curveCns252.ip[0].ig";
connectAttr "mgear_curveCns252GroupId.id" "mgear_curveCns252.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns252.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns252.inputs[1]";
connectAttr "mgear_curveCns252GroupId.msg" "mgear_curveCns252Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns252Set.dsm" -na;
connectAttr "mgear_curveCns252.msg" "mgear_curveCns252Set.ub[0]";
connectAttr "tweak400.og[0]" "mgear_curveCns252GroupParts.ig";
connectAttr "mgear_curveCns252GroupId.id" "mgear_curveCns252GroupParts.gi";
connectAttr "groupParts800.og" "tweak400.ip[0].ig";
connectAttr "groupId8369.id" "tweak400.ip[0].gi";
connectAttr "groupId8369.msg" "tweakSet400.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet400.dsm" -na;
connectAttr "tweak400.msg" "tweakSet400.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts800.ig";
connectAttr "groupId8369.id" "groupParts800.gi";
connectAttr "mgear_curveCns245GroupParts.og" "mgear_curveCns245.ip[0].ig";
connectAttr "mgear_curveCns245GroupId.id" "mgear_curveCns245.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns245.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns245.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns245.inputs[2]";
connectAttr "mgear_curveCns245GroupId.msg" "mgear_curveCns245Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns245Set.dsm" -na;
connectAttr "mgear_curveCns245.msg" "mgear_curveCns245Set.ub[0]";
connectAttr "tweak393.og[0]" "mgear_curveCns245GroupParts.ig";
connectAttr "mgear_curveCns245GroupId.id" "mgear_curveCns245GroupParts.gi";
connectAttr "groupParts786.og" "tweak393.ip[0].ig";
connectAttr "groupId8355.id" "tweak393.ip[0].gi";
connectAttr "groupId8355.msg" "tweakSet393.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet393.dsm" -na;
connectAttr "tweak393.msg" "tweakSet393.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts786.ig";
connectAttr "groupId8355.id" "groupParts786.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion54.i";
connectAttr "mgear_curveCns244GroupParts.og" "mgear_curveCns244.ip[0].ig";
connectAttr "mgear_curveCns244GroupId.id" "mgear_curveCns244.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns244.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns244.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns244.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns244.inputs[3]";
connectAttr "mgear_curveCns244GroupId.msg" "mgear_curveCns244Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns244Set.dsm" -na;
connectAttr "mgear_curveCns244.msg" "mgear_curveCns244Set.ub[0]";
connectAttr "tweak392.og[0]" "mgear_curveCns244GroupParts.ig";
connectAttr "mgear_curveCns244GroupId.id" "mgear_curveCns244GroupParts.gi";
connectAttr "groupParts784.og" "tweak392.ip[0].ig";
connectAttr "groupId8353.id" "tweak392.ip[0].gi";
connectAttr "groupId8353.msg" "tweakSet392.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet392.dsm" -na;
connectAttr "tweak392.msg" "tweakSet392.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts784.ig";
connectAttr "groupId8353.id" "groupParts784.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion58.i";
connectAttr "mgear_curveCns270GroupParts.og" "mgear_curveCns270.ip[0].ig";
connectAttr "mgear_curveCns270GroupId.id" "mgear_curveCns270.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns270.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns270.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns270.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns270.inputs[3]";
connectAttr "mgear_curveCns270GroupId.msg" "mgear_curveCns270Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns270Set.dsm" -na;
connectAttr "mgear_curveCns270.msg" "mgear_curveCns270Set.ub[0]";
connectAttr "tweak418.og[0]" "mgear_curveCns270GroupParts.ig";
connectAttr "mgear_curveCns270GroupId.id" "mgear_curveCns270GroupParts.gi";
connectAttr "groupParts836.og" "tweak418.ip[0].ig";
connectAttr "groupId8405.id" "tweak418.ip[0].gi";
connectAttr "groupId8405.msg" "tweakSet418.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet418.dsm" -na;
connectAttr "tweak418.msg" "tweakSet418.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts836.ig";
connectAttr "groupId8405.id" "groupParts836.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion59.i";
connectAttr "mgear_curveCns271GroupParts.og" "mgear_curveCns271.ip[0].ig";
connectAttr "mgear_curveCns271GroupId.id" "mgear_curveCns271.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns271.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns271.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns271.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns271.inputs[3]";
connectAttr "mgear_curveCns271GroupId.msg" "mgear_curveCns271Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns271Set.dsm" -na;
connectAttr "mgear_curveCns271.msg" "mgear_curveCns271Set.ub[0]";
connectAttr "tweak419.og[0]" "mgear_curveCns271GroupParts.ig";
connectAttr "mgear_curveCns271GroupId.id" "mgear_curveCns271GroupParts.gi";
connectAttr "groupParts838.og" "tweak419.ip[0].ig";
connectAttr "groupId8407.id" "tweak419.ip[0].gi";
connectAttr "groupId8407.msg" "tweakSet419.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet419.dsm" -na;
connectAttr "tweak419.msg" "tweakSet419.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts838.ig";
connectAttr "groupId8407.id" "groupParts838.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion60.i";
connectAttr "mgear_curveCns272GroupParts.og" "mgear_curveCns272.ip[0].ig";
connectAttr "mgear_curveCns272GroupId.id" "mgear_curveCns272.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns272.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns272.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns272.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns272.inputs[3]";
connectAttr "mgear_curveCns272GroupId.msg" "mgear_curveCns272Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns272Set.dsm" -na;
connectAttr "mgear_curveCns272.msg" "mgear_curveCns272Set.ub[0]";
connectAttr "tweak420.og[0]" "mgear_curveCns272GroupParts.ig";
connectAttr "mgear_curveCns272GroupId.id" "mgear_curveCns272GroupParts.gi";
connectAttr "groupParts840.og" "tweak420.ip[0].ig";
connectAttr "groupId8409.id" "tweak420.ip[0].gi";
connectAttr "groupId8409.msg" "tweakSet420.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet420.dsm" -na;
connectAttr "tweak420.msg" "tweakSet420.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts840.ig";
connectAttr "groupId8409.id" "groupParts840.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion57.i";
connectAttr "mgear_curveCns269GroupParts.og" "mgear_curveCns269.ip[0].ig";
connectAttr "mgear_curveCns269GroupId.id" "mgear_curveCns269.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns269.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns269.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns269.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns269.inputs[3]";
connectAttr "mgear_curveCns269GroupId.msg" "mgear_curveCns269Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns269Set.dsm" -na;
connectAttr "mgear_curveCns269.msg" "mgear_curveCns269Set.ub[0]";
connectAttr "tweak417.og[0]" "mgear_curveCns269GroupParts.ig";
connectAttr "mgear_curveCns269GroupId.id" "mgear_curveCns269GroupParts.gi";
connectAttr "groupParts834.og" "tweak417.ip[0].ig";
connectAttr "groupId8403.id" "tweak417.ip[0].gi";
connectAttr "groupId8403.msg" "tweakSet417.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet417.dsm" -na;
connectAttr "tweak417.msg" "tweakSet417.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts834.ig";
connectAttr "groupId8403.id" "groupParts834.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion61.i";
connectAttr "mgear_curveCns273GroupParts.og" "mgear_curveCns273.ip[0].ig";
connectAttr "mgear_curveCns273GroupId.id" "mgear_curveCns273.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns273.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns273.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns273.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns273.inputs[3]";
connectAttr "mgear_curveCns273GroupId.msg" "mgear_curveCns273Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns273Set.dsm" -na;
connectAttr "mgear_curveCns273.msg" "mgear_curveCns273Set.ub[0]";
connectAttr "tweak421.og[0]" "mgear_curveCns273GroupParts.ig";
connectAttr "mgear_curveCns273GroupId.id" "mgear_curveCns273GroupParts.gi";
connectAttr "groupParts842.og" "tweak421.ip[0].ig";
connectAttr "groupId8411.id" "tweak421.ip[0].gi";
connectAttr "groupId8411.msg" "tweakSet421.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet421.dsm" -na;
connectAttr "tweak421.msg" "tweakSet421.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts842.ig";
connectAttr "groupId8411.id" "groupParts842.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion62.i";
connectAttr "mgear_curveCns274GroupParts.og" "mgear_curveCns274.ip[0].ig";
connectAttr "mgear_curveCns274GroupId.id" "mgear_curveCns274.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns274.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns274.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns274.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns274.inputs[3]";
connectAttr "mgear_curveCns274GroupId.msg" "mgear_curveCns274Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns274Set.dsm" -na;
connectAttr "mgear_curveCns274.msg" "mgear_curveCns274Set.ub[0]";
connectAttr "tweak422.og[0]" "mgear_curveCns274GroupParts.ig";
connectAttr "mgear_curveCns274GroupId.id" "mgear_curveCns274GroupParts.gi";
connectAttr "groupParts844.og" "tweak422.ip[0].ig";
connectAttr "groupId8413.id" "tweak422.ip[0].gi";
connectAttr "groupId8413.msg" "tweakSet422.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet422.dsm" -na;
connectAttr "tweak422.msg" "tweakSet422.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts844.ig";
connectAttr "groupId8413.id" "groupParts844.gi";
connectAttr "mgear_curveCns268GroupParts.og" "mgear_curveCns268.ip[0].ig";
connectAttr "mgear_curveCns268GroupId.id" "mgear_curveCns268.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns268.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns268.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns268.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns268.inputs[3]";
connectAttr "mgear_curveCns268GroupId.msg" "mgear_curveCns268Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns268Set.dsm" -na;
connectAttr "mgear_curveCns268.msg" "mgear_curveCns268Set.ub[0]";
connectAttr "tweak416.og[0]" "mgear_curveCns268GroupParts.ig";
connectAttr "mgear_curveCns268GroupId.id" "mgear_curveCns268GroupParts.gi";
connectAttr "groupParts832.og" "tweak416.ip[0].ig";
connectAttr "groupId8401.id" "tweak416.ip[0].gi";
connectAttr "groupId8401.msg" "tweakSet416.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet416.dsm" -na;
connectAttr "tweak416.msg" "tweakSet416.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts832.ig";
connectAttr "groupId8401.id" "groupParts832.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion56.i";
connectAttr "mgear_curveCns267GroupParts.og" "mgear_curveCns267.ip[0].ig";
connectAttr "mgear_curveCns267GroupId.id" "mgear_curveCns267.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns267.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns267.inputs[1]";
connectAttr "mgear_curveCns267GroupId.msg" "mgear_curveCns267Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns267Set.dsm" -na;
connectAttr "mgear_curveCns267.msg" "mgear_curveCns267Set.ub[0]";
connectAttr "tweak415.og[0]" "mgear_curveCns267GroupParts.ig";
connectAttr "mgear_curveCns267GroupId.id" "mgear_curveCns267GroupParts.gi";
connectAttr "groupParts830.og" "tweak415.ip[0].ig";
connectAttr "groupId8399.id" "tweak415.ip[0].gi";
connectAttr "groupId8399.msg" "tweakSet415.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet415.dsm" -na;
connectAttr "tweak415.msg" "tweakSet415.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts830.ig";
connectAttr "groupId8399.id" "groupParts830.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion46.i";
connectAttr "mgear_curveCns235GroupParts.og" "mgear_curveCns235.ip[0].ig";
connectAttr "mgear_curveCns235GroupId.id" "mgear_curveCns235.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns235.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns235.inputs[1]";
connectAttr "mgear_curveCns235GroupId.msg" "mgear_curveCns235Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns235Set.dsm" -na;
connectAttr "mgear_curveCns235.msg" "mgear_curveCns235Set.ub[0]";
connectAttr "tweak383.og[0]" "mgear_curveCns235GroupParts.ig";
connectAttr "mgear_curveCns235GroupId.id" "mgear_curveCns235GroupParts.gi";
connectAttr "groupParts766.og" "tweak383.ip[0].ig";
connectAttr "groupId8335.id" "tweak383.ip[0].gi";
connectAttr "groupId8335.msg" "tweakSet383.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet383.dsm" -na;
connectAttr "tweak383.msg" "tweakSet383.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts766.ig";
connectAttr "groupId8335.id" "groupParts766.gi";
connectAttr "mgear_curveCns262GroupParts.og" "mgear_curveCns262.ip[0].ig";
connectAttr "mgear_curveCns262GroupId.id" "mgear_curveCns262.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns262.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns262.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns262.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns262.inputs[3]";
connectAttr "mgear_curveCns262GroupId.msg" "mgear_curveCns262Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns262Set.dsm" -na;
connectAttr "mgear_curveCns262.msg" "mgear_curveCns262Set.ub[0]";
connectAttr "tweak410.og[0]" "mgear_curveCns262GroupParts.ig";
connectAttr "mgear_curveCns262GroupId.id" "mgear_curveCns262GroupParts.gi";
connectAttr "groupParts820.og" "tweak410.ip[0].ig";
connectAttr "groupId8389.id" "tweak410.ip[0].gi";
connectAttr "groupId8389.msg" "tweakSet410.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet410.dsm" -na;
connectAttr "tweak410.msg" "tweakSet410.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts820.ig";
connectAttr "groupId8389.id" "groupParts820.gi";
connectAttr "mgear_curveCns263GroupParts.og" "mgear_curveCns263.ip[0].ig";
connectAttr "mgear_curveCns263GroupId.id" "mgear_curveCns263.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns263.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns263.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns263.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns263.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns263.inputs[4]";
connectAttr "mgear_curveCns263GroupId.msg" "mgear_curveCns263Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns263Set.dsm" -na;
connectAttr "mgear_curveCns263.msg" "mgear_curveCns263Set.ub[0]";
connectAttr "tweak411.og[0]" "mgear_curveCns263GroupParts.ig";
connectAttr "mgear_curveCns263GroupId.id" "mgear_curveCns263GroupParts.gi";
connectAttr "groupParts822.og" "tweak411.ip[0].ig";
connectAttr "groupId8391.id" "tweak411.ip[0].gi";
connectAttr "groupId8391.msg" "tweakSet411.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet411.dsm" -na;
connectAttr "tweak411.msg" "tweakSet411.ub[0]";
connectAttr "foot_L0_Shape1Orig.ws" "groupParts822.ig";
connectAttr "groupId8391.id" "groupParts822.gi";
connectAttr "mgear_curveCns261GroupParts.og" "mgear_curveCns261.ip[0].ig";
connectAttr "mgear_curveCns261GroupId.id" "mgear_curveCns261.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns261.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns261.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns261.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns261.inputs[3]";
connectAttr "mgear_curveCns261GroupId.msg" "mgear_curveCns261Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns261Set.dsm" -na;
connectAttr "mgear_curveCns261.msg" "mgear_curveCns261Set.ub[0]";
connectAttr "tweak409.og[0]" "mgear_curveCns261GroupParts.ig";
connectAttr "mgear_curveCns261GroupId.id" "mgear_curveCns261GroupParts.gi";
connectAttr "groupParts818.og" "tweak409.ip[0].ig";
connectAttr "groupId8387.id" "tweak409.ip[0].gi";
connectAttr "groupId8387.msg" "tweakSet409.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet409.dsm" -na;
connectAttr "tweak409.msg" "tweakSet409.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts818.ig";
connectAttr "groupId8387.id" "groupParts818.gi";
connectAttr "mgear_curveCns265GroupParts.og" "mgear_curveCns265.ip[0].ig";
connectAttr "mgear_curveCns265GroupId.id" "mgear_curveCns265.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns265.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns265.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns265.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns265.inputs[3]";
connectAttr "mgear_curveCns265GroupId.msg" "mgear_curveCns265Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns265Set.dsm" -na;
connectAttr "mgear_curveCns265.msg" "mgear_curveCns265Set.ub[0]";
connectAttr "tweak413.og[0]" "mgear_curveCns265GroupParts.ig";
connectAttr "mgear_curveCns265GroupId.id" "mgear_curveCns265GroupParts.gi";
connectAttr "groupParts826.og" "tweak413.ip[0].ig";
connectAttr "groupId8395.id" "tweak413.ip[0].gi";
connectAttr "groupId8395.msg" "tweakSet413.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet413.dsm" -na;
connectAttr "tweak413.msg" "tweakSet413.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts826.ig";
connectAttr "groupId8395.id" "groupParts826.gi";
connectAttr "mgear_curveCns266GroupParts.og" "mgear_curveCns266.ip[0].ig";
connectAttr "mgear_curveCns266GroupId.id" "mgear_curveCns266.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns266.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns266.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns266.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns266.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns266.inputs[4]";
connectAttr "mgear_curveCns266GroupId.msg" "mgear_curveCns266Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns266Set.dsm" -na;
connectAttr "mgear_curveCns266.msg" "mgear_curveCns266Set.ub[0]";
connectAttr "tweak414.og[0]" "mgear_curveCns266GroupParts.ig";
connectAttr "mgear_curveCns266GroupId.id" "mgear_curveCns266GroupParts.gi";
connectAttr "groupParts828.og" "tweak414.ip[0].ig";
connectAttr "groupId8397.id" "tweak414.ip[0].gi";
connectAttr "groupId8397.msg" "tweakSet414.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet414.dsm" -na;
connectAttr "tweak414.msg" "tweakSet414.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts828.ig";
connectAttr "groupId8397.id" "groupParts828.gi";
connectAttr "mgear_curveCns264GroupParts.og" "mgear_curveCns264.ip[0].ig";
connectAttr "mgear_curveCns264GroupId.id" "mgear_curveCns264.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns264.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns264.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns264.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns264.inputs[3]";
connectAttr "mgear_curveCns264GroupId.msg" "mgear_curveCns264Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns264Set.dsm" -na;
connectAttr "mgear_curveCns264.msg" "mgear_curveCns264Set.ub[0]";
connectAttr "tweak412.og[0]" "mgear_curveCns264GroupParts.ig";
connectAttr "mgear_curveCns264GroupId.id" "mgear_curveCns264GroupParts.gi";
connectAttr "groupParts824.og" "tweak412.ip[0].ig";
connectAttr "groupId8393.id" "tweak412.ip[0].gi";
connectAttr "groupId8393.msg" "tweakSet412.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet412.dsm" -na;
connectAttr "tweak412.msg" "tweakSet412.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts824.ig";
connectAttr "groupId8393.id" "groupParts824.gi";
// End of biped_guide.ma
