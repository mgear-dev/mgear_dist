//Maya ASCII 2016ff07 scene
//Name: biped_guide.ma
//Last modified: Fri, Jun 16, 2017 05:05:48 PM
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
	rename -uid "F7907F40-45D6-3DF2-94F4-818FF2011091";
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
	setAttr ".synoptic" -type "string" "biped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-06-14 15:56:14.971000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.1.1";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "92E493F2-4612-C80A-9B96-46979D9E0877";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "FE526003-43BC-F14E-0C85-BDB4B235E836";
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
	rename -uid "9E7B1DB1-4A08-94D0-4BD4-8A8A8B57F945";
	setAttr -k off ".v";
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
	rename -uid "CCBE9430-43A9-790D-54AF-55BC83956898";
	setAttr -k off ".v";
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
	rename -uid "4DE2B4D9-414B-398A-3288-F8BD26731483";
	setAttr -k off ".v";
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
	rename -uid "2B536E05-4FB4-D582-A641-EDBB0EF3CF68";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B0EB9B8A-4AFC-9270-76A4-D980FA6883D8";
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
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".k_tx" yes;
	setAttr ".k_ty" yes;
	setAttr ".k_tz" yes;
	setAttr ".k_ro" yes;
	setAttr ".k_rx" yes;
	setAttr ".k_ry" yes;
	setAttr ".k_rz" yes;
	setAttr ".default_rotorder" 2;
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 3;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	rename -uid "A08676F0-431B-5D8F-3DBE-04B7C0589977";
	setAttr -k off ".v";
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
	rename -uid "8AA67CAE-4654-461B-8454-2592D60955A3";
	setAttr -k off ".v";
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
	rename -uid "A2AB2501-49C4-87D3-E6DB-F7BCA5706977";
	setAttr -k off ".v";
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
	rename -uid "32143106-4D66-8EEE-9C47-AF82FF0EB091";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "31B9C3E1-4270-D62E-04E0-83A89DB1A28A";
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
	rename -uid "AD8787B9-4346-980D-11B6-7B86D8860F35";
	setAttr -k off ".v";
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
	rename -uid "9F9769DC-43D1-98BB-1937-DF987E79BD9E";
	setAttr -k off ".v";
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
	rename -uid "A9E6C633-44BD-3135-221A-CEBF3B05A31A";
	setAttr -k off ".v";
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
	rename -uid "18D272DE-4221-A00F-34CC-2FB29AC87198";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "480BF6A1-47B2-12DE-2446-1FB2B427C505";
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
	rename -uid "9D130ADD-4F38-D9EE-6FA9-9E89B3847C96";
	setAttr -k off ".v";
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
	rename -uid "9A822320-4AC0-0C9A-DBBA-A698D4150F74";
	setAttr -k off ".v";
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
	rename -uid "89B3E405-4691-AB18-776B-88B6BE4592AC";
	setAttr -k off ".v";
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
	rename -uid "E8EFF3C3-4772-B45A-D2EE-BFAA3E43D994";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "592C3EFE-4EE9-0519-D4B3-9AAB771A5CA6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ED843BAE-4F4B-61AE-CCF1-5E83AA5E8C48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A6F5B6F1-4F59-D141-FC43-618A368E2153";
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
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
	rename -uid "EE3E0B68-4243-28FA-5675-BDBB973F2637";
	setAttr -k off ".v";
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
	rename -uid "FD655E9F-466C-7240-DF0B-AE8AF26B2B11";
	setAttr -k off ".v";
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
	rename -uid "AC1916E3-414F-BD52-DD02-4F9DA11AFF01";
	setAttr -k off ".v";
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
	rename -uid "B2E03391-44ED-C243-BC47-D98422328A0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "CAC7E602-42AF-1073-08B6-C19458109477";
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
	rename -uid "D6BA3F56-45C4-4545-71D0-23B39558A5C6";
	setAttr -k off ".v";
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
	rename -uid "4D919BD4-46E2-370B-747E-6A93AEFFD507";
	setAttr -k off ".v";
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
	rename -uid "FC03F334-40EB-4C24-56FF-10AD94AB82F9";
	setAttr -k off ".v";
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
	rename -uid "8CC548B2-4885-D861-065F-91AA6AB73E2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "2DEEDD95-4975-A617-4954-7A915827EC3E";
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
	rename -uid "96B683E2-4712-4EF6-480B-3BBFDEDE6094";
	setAttr -k off ".v";
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
	rename -uid "BAE6C107-4BFF-3C24-2B47-358D9A915DD0";
	setAttr -k off ".v";
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
	rename -uid "630855C8-47DC-189E-6869-50B90561A8EB";
	setAttr -k off ".v";
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
	rename -uid "0535B092-4DD4-EEE5-836C-F28E1A587706";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "27398093-4664-14FE-1F68-969F7946C06B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0BC9EC5A-4D49-F808-CFED-F18180D3C901";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "932859A7-4393-23CA-09AB-C1942E04BD49";
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
	setAttr ".pinrefarray" -type "string" "local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".ikTR" yes;
	setAttr ".mirrorMid" yes;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "66F96BE5-409F-37CB-B38D-29B9C2432D14";
	setAttr -k off ".v";
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
	rename -uid "8B569B39-4D73-0BBB-7005-D38CBBCA738F";
	setAttr -k off ".v";
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
	rename -uid "909FA89E-4BD2-B73B-A4F4-9894E30EC3C4";
	setAttr -k off ".v";
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
	rename -uid "387B691F-4FF2-B530-EBB5-8F8E3152AB60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "53CC8503-47B1-ADAE-0B64-ED8F49DDA3F1";
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
	rename -uid "8D5382E4-41F5-CA93-F270-87A4E33691C0";
	setAttr -k off ".v";
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
	rename -uid "B067F998-42F4-54F0-D358-31AA9090243C";
	setAttr -k off ".v";
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
	rename -uid "281505F0-454F-6870-ADE2-5EA0AC690B63";
	setAttr -k off ".v";
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
	rename -uid "74EDDE62-46C3-841F-AA83-35AE1C28E073";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FBF8D00E-4CA6-6E4B-0912-4CBFEF4EACE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A85AD8B3-4B10-5507-27A6-C0994379C441";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0F23DD85-48B4-A0AB-C744-49A7B1C6F8BD";
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
	rename -uid "F0B390D9-48EA-2A7E-4540-0C9ABC613F43";
	setAttr -k off ".v";
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
	rename -uid "B1C536E5-4E8A-CD09-D28F-868F6F762153";
	setAttr -k off ".v";
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
	rename -uid "BD7DF32C-452C-BB98-0746-B8872F5DB751";
	setAttr -k off ".v";
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
	rename -uid "2E728947-43B5-DEDC-5627-238966B07179";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "487FC778-4A70-A6D8-96AA-6DB30371BFFC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2885F322-4859-E3EB-27E0-37A8220DD412";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "281BFE1D-4721-1C53-C3A6-C0B96F183215";
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
	rename -uid "8B1A0186-4627-3FFD-A002-5E8882664B09";
	setAttr -k off ".v";
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
	rename -uid "98448060-4D75-02FA-06D9-40BD07E8D238";
	setAttr -k off ".v";
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
	rename -uid "9F91EB88-4E04-FF9E-8E75-B8BFE5683070";
	setAttr -k off ".v";
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
	rename -uid "3EC68683-4BA9-90A9-6BE2-8AA90B077C72";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BC2A0F35-4BF3-D50B-08BB-8F86FBE916C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6B8A7A89-4B14-EC6A-5830-E8B1553155D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7BD7986E-4A35-4E88-5D5A-8AA7325DAFE0";
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
	rename -uid "3E777E10-48CC-409D-6BE6-EC9E62E90AC1";
	setAttr -k off ".v";
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
	rename -uid "AFCD4B57-49DB-1A2A-C63A-28B17CA1ADB0";
	setAttr -k off ".v";
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
	rename -uid "FA0AF38A-4B7C-3D9B-0184-019F1C83E26B";
	setAttr -k off ".v";
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
	rename -uid "93048776-4523-9AEF-2239-83AB5C9F0533";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0A376FCD-4A7B-E67E-54A5-9B87DC549BD6";
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
	rename -uid "0CD18169-48E2-60A9-E12D-B982B8A103D5";
	setAttr -k off ".v";
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
	rename -uid "03ABC806-4A1B-430D-2CFF-62AFB31280E9";
	setAttr -k off ".v";
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
	rename -uid "ECED35BC-4CBD-D4B8-1E8A-EAB5A352B002";
	setAttr -k off ".v";
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
	rename -uid "6568DCA2-4FDB-98E4-CCBD-4599037B3081";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "06558A52-4A20-BA31-422E-C887A67E99F2";
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
	rename -uid "0E57F895-489E-C84B-21DE-E68F69BF6357";
	setAttr -k off ".v";
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
	rename -uid "657E4F80-4F4D-83B6-2820-C78B63B26DDB";
	setAttr -k off ".v";
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
	rename -uid "916A2A3D-4F2C-FF9F-B290-428DC9BAA986";
	setAttr -k off ".v";
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
	rename -uid "3CDC8F65-497F-E537-148C-AA852E25EFF7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DD316B05-4265-8CC3-70A0-A68D0F5327DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2A31D4ED-42F2-6D10-7D4A-D3964B0DA5CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7F7AE839-4D37-0F96-D53E-4CAB4BBBEACE";
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
	rename -uid "6320746D-4FC3-8F70-C3FE-E5A33D7325DD";
	setAttr -k off ".v";
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
	rename -uid "C23838FC-41F1-D2C8-45FE-99BC3B002499";
	setAttr -k off ".v";
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
	rename -uid "B4575F09-4255-AA39-E1E0-CBBDAAF91491";
	setAttr -k off ".v";
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
	rename -uid "EEFC5741-4B0C-45DB-5083-52AC5F166178";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4462D4D5-4E01-7FAA-306C-1B9139200E13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "76E7D1C7-42E6-A562-C46F-7798DB9BBE7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1F979D1C-457B-641D-0A56-2EBA74985725";
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
	rename -uid "F013B12E-4B00-C7E6-1CB2-AD85226F7846";
	setAttr -k off ".v";
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
	rename -uid "0EBA4091-432B-7A1D-8427-07B92963325E";
	setAttr -k off ".v";
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
	rename -uid "6A7FD974-4396-C90C-BF34-E3ADB6765839";
	setAttr -k off ".v";
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
	rename -uid "BA9EA7BE-4997-46E5-35A9-9BA77B88BA0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F9408037-4CAF-F4FF-EB45-6FB13BBC54BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6CE786A9-4AB4-8ABB-1CC7-10AE0EE1E907";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F6E3A906-45CD-BBED-6ECA-77A84680A49C";
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
	rename -uid "CE5A4982-4770-E0CF-EDB3-9F826B75641F";
	setAttr -k off ".v";
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
	rename -uid "18741CB0-4549-0FF1-F548-5C9A33B69B22";
	setAttr -k off ".v";
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
	rename -uid "BD5853EF-4CFA-3ABE-1E5D-9BA5E9890100";
	setAttr -k off ".v";
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
	rename -uid "4B63A537-4249-9445-0525-A4AAF064FA48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "62A966C3-45EF-E66F-F119-A58EE810FBEF";
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
	rename -uid "D3307B93-43B3-999C-50D4-4CB2092960E5";
	setAttr -k off ".v";
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
	rename -uid "34D19361-4878-F289-2DC6-4FBFA6EE87B5";
	setAttr -k off ".v";
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
	rename -uid "E023D5C2-4BF5-35B1-1B69-C1ABAC00EEEE";
	setAttr -k off ".v";
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
	rename -uid "D39DD5F8-444F-9931-E631-B8874B98C6AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "43BE491B-4A43-0D62-AC36-85AEF0DF09C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FD81DD40-40ED-F613-310A-0985204BC0FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FE5B9BE4-4B61-447B-6A84-D4A94D018D5A";
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
	rename -uid "454D5893-488C-C3DC-2E35-489E8F1388B4";
	setAttr -k off ".v";
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
	rename -uid "E550D77E-4A20-3629-452B-E28A858950F3";
	setAttr -k off ".v";
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
	rename -uid "06ED406E-43A2-D0E0-4BB4-24A8038D67AC";
	setAttr -k off ".v";
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
	rename -uid "558F44EB-4A8C-A6F2-F23E-BC8AE5A91534";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "539CE169-4CE1-97A9-66CF-E2AD8959E5E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "25F058F6-4DD3-4515-FE47-44AD8EAC064B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "646CCBFE-413C-79FA-B6AA-3CA7D998E418";
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
	rename -uid "44B07D06-498D-0815-03DA-0A97EBB534AD";
	setAttr -k off ".v";
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
	rename -uid "5CD129A7-49DE-ABAF-8CB6-BE9F5C4346BD";
	setAttr -k off ".v";
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
	rename -uid "50598F9A-4486-49BD-BF80-06AC4E455BF6";
	setAttr -k off ".v";
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
	rename -uid "CA00E6B0-43DB-3C5F-1B1E-279325F15E0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D84955D6-4625-0FD8-D29F-70927B4414FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7150DD6A-4F5F-2312-25CF-4B972966006A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3E89AFBB-412C-72C9-2395-30A1BEF82E13";
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
	rename -uid "FC375C45-44EB-EFDF-E7E4-DAB882435F26";
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
	rename -uid "A6F217EB-4A1E-1ECE-33CF-1FB366ACA49A";
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
	rename -uid "4B963B24-4C14-67D2-CA0F-74AC189759B4";
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
	rename -uid "B86D97C3-451E-1521-6EEE-5A96A42BBA16";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754533 -29.032786855763558 1.4804327725029334 ;
	setAttr ".r" -type "double3" -7.5791665394120038 -14.304244378903769 49.348303523761253 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.6320983106786024 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "6253976E-450F-FC07-A0DC-EA931F10368C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "ACAE1004-49D7-3F86-4665-12BFE009061D";
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
	rename -uid "A9CBD08F-4F19-A9F8-1B4D-ACAB49EFD506";
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
	rename -uid "60400FE7-4028-04E5-B67D-649B0465D3F2";
	setAttr -k off ".v";
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
	rename -uid "30B5FC56-48F6-9700-CE34-6BB842E03CBC";
	setAttr -k off ".v";
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
	rename -uid "B5240A61-4F4D-14DC-C7F4-1BBFC1B8E612";
	setAttr -k off ".v";
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
	rename -uid "EF31E0C6-44B6-B356-F85C-73B109AC74C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "BEBD701A-4715-123B-6666-BFA81C831438";
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
	rename -uid "33C2BC7C-493D-B90A-02A3-C0853F2C125B";
	setAttr -k off ".v";
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
	rename -uid "553FCF23-422D-05D7-21FF-9AABD036391C";
	setAttr -k off ".v";
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
	rename -uid "6E77A70E-4A47-7E81-1CD6-E3B9C713BEB0";
	setAttr -k off ".v";
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
	rename -uid "3A529CE3-491C-7931-FCDA-F98FE5BDC6B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9135D0A0-4E6F-C877-FADA-6899E382EECF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7B9A9460-4CEF-0B01-0AE0-4088C2E20C1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4D480189-4ACC-51FE-2606-568E7935C8BE";
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
	rename -uid "6DF973BB-413D-5CE0-E960-4C9A0E59C9A2";
	setAttr -k off ".v";
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
	rename -uid "F12E5C1F-425D-1E01-E464-B1B9CB71FC7E";
	setAttr -k off ".v";
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
	rename -uid "7569143E-48BD-E787-B163-8CB930E6DC5F";
	setAttr -k off ".v";
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
	rename -uid "6ADFB912-48B3-FCC6-0B02-75AD7263285D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B0661443-4F4C-5DAA-3077-E39F26B2858F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "38BED339-4B61-61A8-D720-9A91DC64F84F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "457DD684-408A-3689-4207-7BA88B51ECFF";
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
	rename -uid "46125B9E-4846-3DEB-7390-F98A41DEE010";
	setAttr -k off ".v";
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
	rename -uid "942A7575-446E-79F4-15AE-179A30983452";
	setAttr -k off ".v";
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
	rename -uid "49EDEB96-4AF3-BCD5-D961-999F8ED33E6F";
	setAttr -k off ".v";
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
	rename -uid "B08D572A-4AAB-CDC9-2F7E-BD986B5112D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E8A4A7F2-45CC-2098-4A25-3386AB6CA184";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E196FFD3-407C-5B27-497E-CF9E880E2BF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "341A82E2-4FE8-1F53-F25A-A696C1820E58";
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
	rename -uid "9686A2DE-4581-C58F-67C9-FA849A7A43C9";
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
	rename -uid "BAAD3DCE-48A6-0C5D-00BD-18A674430D0B";
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
	rename -uid "2BFD07FE-4314-3922-37B9-7796AC2389CA";
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
	rename -uid "CF886274-472A-CF55-F86A-018E3A0DF829";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309135 -29.023661369441829 1.4173349723030875 ;
	setAttr ".r" -type "double3" -0.54140613098352164 -1.5904804996580479 47.737641631363751 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786016 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "8DFFBD1C-4DC0-261A-F329-5EBA81E0A420";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "AF799B1C-4726-F884-C5BF-838179354A4D";
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
	rename -uid "0975C458-4E17-A4D2-CF41-6CB874C6DE4F";
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
	rename -uid "A25E5152-4F52-8490-F0AC-969C057D9E79";
	setAttr -k off ".v";
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
	rename -uid "9D688C92-41AB-601B-8393-79AA8CE4988F";
	setAttr -k off ".v";
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
	rename -uid "97058826-4C23-050A-16B7-618A32F762EF";
	setAttr -k off ".v";
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
	rename -uid "97110035-4779-3E76-63E1-03B3F484BCBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "9BCDC1CC-4871-AAD1-1670-C8906F33C370";
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
	rename -uid "868EA07B-47EA-8164-0E51-9CA3F1C09878";
	setAttr -k off ".v";
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
	rename -uid "FBDF806C-4658-59BE-55B3-E79A3F816B90";
	setAttr -k off ".v";
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
	rename -uid "CFB9B2AC-4DBC-1F2F-D030-21A1F5455F07";
	setAttr -k off ".v";
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
	rename -uid "47D26EDC-4CA4-5083-A5C9-F6BAAE4B6D24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F0518F34-43F7-0ED4-233D-D7B2362D20E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C05E4376-487A-3657-2BFD-56973E44F3A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4BBF5CAB-4084-B19C-1369-B4919BCA8640";
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
	rename -uid "DE977F1B-4024-28E6-4B6E-77868AB52B40";
	setAttr -k off ".v";
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
	rename -uid "0023AF1E-4D18-9DEF-0F3F-9B8F3B72C435";
	setAttr -k off ".v";
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
	rename -uid "660967DE-4674-3B4A-7940-68AD66D8C985";
	setAttr -k off ".v";
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
	rename -uid "22A20E45-4313-68B7-8D6C-FA8F7693523B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3B0DD993-4295-7CC5-EEA0-6990638F02AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7772FC40-4E89-058A-98F0-60B247BE951D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "25C4F700-4AC0-A3D2-AE2B-CFB5BAE2C5DE";
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
	rename -uid "4C3A0100-43C2-91EF-2800-0FA6E2F8FE0A";
	setAttr -k off ".v";
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
	rename -uid "CA813E32-4BB0-D2B3-9D20-12B983F7074E";
	setAttr -k off ".v";
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
	rename -uid "873374F6-4DF6-5F68-7CC3-10867A708936";
	setAttr -k off ".v";
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
	rename -uid "3321127F-427B-9F0B-CBC1-A585180C193A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1CB4A0F2-4F27-05E9-78DA-2D84C583FCE7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8A7AB03B-4FD9-A3CC-902A-E3831794FBD6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1F58F37B-4A4C-0533-589C-B28F222CAE9C";
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
	rename -uid "12AEE4F1-4F9E-705B-6944-ABA4747898C6";
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
	rename -uid "6F102D08-44B3-52FB-1B66-3C90496EF387";
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
	rename -uid "49C1715E-41DB-13D1-14C4-B1B1FE075104";
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
	rename -uid "55E12C85-43DE-066F-65DF-8CBCE04D8C07";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153205 -28.040620010901261 1.1418187531112221 ;
	setAttr ".r" -type "double3" 5.8484943948522119 9.9768879508777513 54.111347352877907 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.632098310678602 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "8FF2D7CF-4D1F-86A8-78A0-848B372CF948";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "C546DB84-47ED-1A8D-F92A-E8A393391EE4";
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
	rename -uid "EB47B33A-41F9-1832-D6F7-8CAEBD98897D";
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
	rename -uid "DE669CCB-406A-7697-C265-DEB42F6C082F";
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
	rename -uid "D2300C42-4BE8-48B5-263A-E58F9050C1E7";
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
	rename -uid "7EE061A4-4C66-6C0A-5918-2FB2709591B5";
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
	rename -uid "B683075F-4A38-4D1C-B7EC-C6949ADE3B7E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400736 -38.076493243285398 11.714163621935336 ;
	setAttr ".r" -type "double3" -81.595645682431524 -44.654258545704437 89.275820115296426 ;
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041202 3.4032157947041277 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "CDA32F4F-4A15-B089-240D-0383347BD164";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "F788891C-45DA-8007-F92B-4BA0E10D8E5C";
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
	rename -uid "9EA5B445-4755-2918-BE64-D59C4BB30102";
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
	rename -uid "D3D2E68E-44FB-1795-6D13-CB86E830A057";
	setAttr -k off ".v";
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
	rename -uid "5D9CBB34-4EAF-99A1-75BD-72BF38E69CF7";
	setAttr -k off ".v";
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
	rename -uid "90E95CEE-4615-9FD9-C25A-C99FA3B42683";
	setAttr -k off ".v";
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
	rename -uid "ACF2EB9E-4E80-5837-8404-B7814FA7984B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "AD807CC1-457E-38D4-8AE5-68B722374813";
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
	rename -uid "C3BA463B-4414-FA8B-4CB1-41A31F931B27";
	setAttr -k off ".v";
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
	rename -uid "4BDB6E54-4C49-F25F-4A3F-1D94BE44E60E";
	setAttr -k off ".v";
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
	rename -uid "EB9676FD-4E98-0374-74E9-408D0FC5E00A";
	setAttr -k off ".v";
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
	rename -uid "6E945522-41EC-CC6D-B33D-4DACE14B9133";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "93F46844-4654-439A-655F-92A0EF48C422";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "00EC9BA1-47BA-4FFB-B1AE-17ACE31E1B99";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "376CA8E6-4AEC-C89B-FDE9-6F96710C07FD";
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
	rename -uid "FF0E2049-479B-B800-065B-EB8DA37FB7F3";
	setAttr -k off ".v";
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
	rename -uid "9395CAAC-4036-2E05-7B28-118671706E5E";
	setAttr -k off ".v";
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
	rename -uid "008E2085-4828-9E9F-FDE0-419EA13070C4";
	setAttr -k off ".v";
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
	rename -uid "88920654-4CC9-34AE-B219-A6B54282B416";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E56B8590-4D42-AF22-D502-D69A9F6C91F6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2A7E6F0D-4302-ACF6-3BAE-1BA57F594A60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FE73F953-47BE-5FB6-DE5B-A180266740B5";
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
	rename -uid "F345EB7F-48F5-5F4C-FA9C-1DAC559443B1";
	setAttr -k off ".v";
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
	rename -uid "EFC5F1F4-44F3-595F-DB0A-45A556067412";
	setAttr -k off ".v";
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
	rename -uid "E83A8907-4BAD-CBA6-F43A-498D70FB9132";
	setAttr -k off ".v";
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
	rename -uid "5AF13089-4D80-9AF1-2F39-DCBD4FF931D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "62F46D8C-42C6-BF32-4A6A-858FACFBB23D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0638D4E8-4708-7F4C-2EB3-D8899D4120DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6F6CDFAD-439F-69DB-746A-FEB0838E3F21";
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
	rename -uid "4D22E0F2-4174-04B3-57F5-B49D8239408A";
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
	rename -uid "50A87827-4F33-A4CD-41F4-20ADCC440795";
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
	rename -uid "E522C094-48D1-0291-4691-609688FDFBF5";
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
	rename -uid "4D3BB1D8-4178-6E69-BB5D-DCA421DBD7A9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713105 -27.336008057181026 2.4648652761317988 ;
	setAttr ".r" -type "double3" 9.1654334880164896 22.111176212558927 57.120615095544252 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106786002 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "C09FF631-4C6B-C245-9844-95AB173A1D57";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "DCA7D1F1-425C-1F3C-9F96-A4A8366EB9D8";
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
	rename -uid "F00F53E9-4F70-1FA6-05FB-5CAFF98D1612";
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
	setAttr ".ctlSize" 0.7;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "thumbRoll_L0_rootShape" -p "thumbRoll_L0_root";
	rename -uid "B4DB32BF-41AB-0F70-18D4-99AD4DFE9F26";
	setAttr -k off ".v";
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
	rename -uid "E4226F38-44FB-AD4F-0E89-66AF7483B1F3";
	setAttr -k off ".v";
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
	rename -uid "3DD9B450-4A32-4531-9EC5-B49BA8BE2D1C";
	setAttr -k off ".v";
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
	rename -uid "FF6BDD5E-49CA-37E8-B9C4-B9B008CA2B63";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "83427E35-49C1-8A8E-5B4D-0A9DE6D7C21C";
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
	rename -uid "C548129D-4E18-30F8-16C4-B8B0608B96BB";
	setAttr -k off ".v";
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
	rename -uid "DABF77DF-4E6A-C7E6-0C22-6CA036370A3C";
	setAttr -k off ".v";
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
	rename -uid "3FEF46F4-4C58-09AC-0436-8293B7AE80DD";
	setAttr -k off ".v";
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
	rename -uid "81A31C5B-42F6-2797-9FDF-2CB7A2FCB3A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "427210EE-451B-26D1-4A92-F6B47C3B9CB0";
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
	rename -uid "8EB7A65E-4604-3720-C9E8-D099F611FDA8";
	setAttr -k off ".v";
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
	rename -uid "AF143DAB-4F5A-324F-5A42-488C2A7A7BEA";
	setAttr -k off ".v";
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
	rename -uid "9992887E-4FA1-79B1-0B49-B6919091CFE4";
	setAttr -k off ".v";
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
	rename -uid "ACB1F6CD-477B-8868-C395-F798B33D75D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "121679C7-40D3-4EB4-8FA0-67A5E50E67C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "324B6125-4CC7-A79F-DBC1-1EAE140D2358";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "63BBA2D0-4274-1715-4285-10B2C221B809";
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
	rename -uid "9B103A04-44B9-40EC-3746-8C819EAA21AA";
	setAttr -k off ".v";
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
	rename -uid "ED4445B3-4E02-6A31-00C8-8D837426612C";
	setAttr -k off ".v";
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
	rename -uid "BD78EBC8-4FBC-9B2A-86B6-979914E277B2";
	setAttr -k off ".v";
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
	rename -uid "5684FF5C-4C1B-2533-3E5C-6C82D0377CF2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "44485F87-45DC-3DD5-21A9-539806687B30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "25043B99-4912-8681-2168-A2B2CD12827D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BCA62EDF-4979-6EDA-18C6-438DC808E12D";
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
	rename -uid "B8FDF3E4-4DC1-A5CD-4F9F-26AB4CE24834";
	setAttr -k off ".v";
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
	rename -uid "E4B40E1B-4B82-7EE4-8F38-8CB4784C6E7B";
	setAttr -k off ".v";
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
	rename -uid "972EA29A-4E90-4C43-4AB1-AFA66E032F6B";
	setAttr -k off ".v";
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
	rename -uid "3EEF1119-4260-6A5A-B25F-06A8F5D39EEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "071271F8-4E88-F27A-0AAA-769270005686";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "01B0903D-48AD-B583-AD26-4C92A6BED827";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7A2A8685-4730-AA66-0FE6-2F896C55C1A8";
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
	rename -uid "12AC55FB-4755-51F3-D2C2-EC807B194885";
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
	rename -uid "977D0C9A-4F2A-4620-C772-C6B2AC659CDC";
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
	rename -uid "7A3D86AD-42DE-777A-4A0E-589F151AEF7E";
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
	rename -uid "381166BA-4B45-69E1-3186-2D974727DD98";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688552 -7.1018915006055883 17.729458649684059 ;
	setAttr ".r" -type "double3" -124.44302205362686 63.10073445444938 -77.281354162701334 ;
	setAttr ".s" -type "double3" 2.043467216315729 2.0434672163157206 2.043467216315725 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "AB9C7795-4BDB-2A72-A255-50AE1E66E2F3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "E6BC7784-41C1-985B-9991-389D9743FAEB";
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
	rename -uid "2546A2BD-45AC-A957-95ED-09A7CABEB85C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648558 ;
	setAttr ".r" -type "double3" -2.1534408611045621 -4.1959370793366944 45.437740049298249 ;
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377391 1.0495082267377411 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "D21246BE-4079-8C58-74E7-E09040A6A12F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "5AE5E944-417F-873E-11F1-2BB0E3F3A03A";
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
	rename -uid "93C6F3E9-4556-B73A-87C3-D2AF69A4A70B";
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
	rename -uid "3EE8A202-4234-F907-8254-F4888F68DE92";
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
	rename -uid "C5FCF247-4F50-0955-D742-AC93419456BA";
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
	rename -uid "A00CE166-4444-F5B0-CAE5-F79C7A4F2C63";
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
	rename -uid "14E40065-446F-2972-FBF5-9998D64608FC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509834 0.0092761897382757259 0.11673327753265011 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377369 1.0495082267377376 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "468B9935-4EA0-9B46-AB07-18BE00028EEC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "3883FFD4-47DF-7DE4-06BE-2A9A58C833FE";
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
	rename -uid "2B33924A-4910-53FB-730D-FE8EF23A0B67";
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
	rename -uid "E2A9951B-4DBD-D4F5-B8DB-9BA68CF42312";
	setAttr -k off ".v";
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
	rename -uid "CD1B8523-4E72-FF8E-79D4-428A0A5687C8";
	setAttr -k off ".v";
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
	rename -uid "D030A56F-44AA-C467-A876-72A8917352FB";
	setAttr -k off ".v";
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
	rename -uid "BAFC50E1-4BE2-4628-43CE-EDB22FE6E931";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "654F95E8-4EE0-659A-A866-79A5E4647D48";
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
	rename -uid "0E1C5C29-4F4A-8E3D-CE1D-16A721A126B5";
	setAttr -k off ".v";
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
	rename -uid "CE02DF38-4A38-1FD9-1153-758B77C6A241";
	setAttr -k off ".v";
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
	rename -uid "987DF7B8-445C-4527-1E11-D1A210304DEA";
	setAttr -k off ".v";
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
	rename -uid "1239B5E9-4547-BD8D-8F8E-5CAF3192D7C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D8C5D64B-43DE-BCF2-6B46-76A113EFA903";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2A560B12-4196-4D87-1E48-91AF34E1B2FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "67AC0980-4EAF-CA7F-1CE5-C49BB58B856F";
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
	rename -uid "2D9C7530-4923-22D6-284A-3BB162ED58B9";
	setAttr -k off ".v";
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
	rename -uid "6568F4DC-4BE0-E2DF-DFB9-44AF7FB8092D";
	setAttr -k off ".v";
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
	rename -uid "E469B647-47A7-CAE9-AC18-49A13AA0D88E";
	setAttr -k off ".v";
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
	rename -uid "3A6DEFF1-4E9F-0993-2416-7CA6B4DD24DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "365A3060-401E-FCD7-9C3F-E7B347D1CFA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7C7822B4-4F93-9122-F31E-5CA33607FBA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BD91CCA4-435E-A8FB-BE4D-3CA314B83C75";
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
	rename -uid "92E7B304-4CBE-45FC-4FA2-12811B8BE7AF";
	setAttr -k off ".v";
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
	rename -uid "8BC01EBD-4A11-B249-0295-72BD4983774A";
	setAttr -k off ".v";
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
	rename -uid "A3669F5D-41C7-AC78-9918-71B3CD4A1AE8";
	setAttr -k off ".v";
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
	rename -uid "8F4756B7-4CEC-CAE7-78E0-EAA1ABD768EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F163968F-4CF0-E6FD-C1F5-C9A16500BE61";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6FF4F6F9-4716-792A-E8B8-36A1ADCC3070";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4269CE25-4086-027B-689C-75A56B34CEB0";
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
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".neutralRotation" yes;
	setAttr ".ctlSize" 1;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "faceUI_C0_rootShape" -p "faceUI_C0_root";
	rename -uid "362700A8-487E-5703-ED5C-CA9E3460BC42";
	setAttr -k off ".v";
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
	rename -uid "B2763CDE-43D3-E641-7A38-1DA0E2E413FA";
	setAttr -k off ".v";
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
	rename -uid "6A61F58B-41BA-C615-9B29-F2925F2F2FE5";
	setAttr -k off ".v";
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
	rename -uid "6077013B-42DF-3782-001E-57BE5A3F38DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "CAB22BBF-48F0-EFCF-6673-EB9C64832F3F";
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
	rename -uid "7B8567AA-4138-F5B1-C75D-2A880D7427EB";
	setAttr -k off ".v";
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
	rename -uid "CB0A3E1E-45F0-B4DE-EA54-469A93792482";
	setAttr -k off ".v";
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
	rename -uid "EFAC2DC0-4752-EF71-B160-3296913964F4";
	setAttr -k off ".v";
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
	rename -uid "EB1B47DF-46F6-32A3-A137-ABBB6A7E03AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "02D91D54-4983-4617-7823-649849C5ADD5";
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
	rename -uid "B5834066-4AF4-6E90-213F-C6AA44B8E248";
	setAttr -k off ".v";
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
	rename -uid "02F3ABDF-4105-F375-AE5A-7FA30C9391F3";
	setAttr -k off ".v";
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
	rename -uid "6EBAB20F-4AD7-76C5-D2AB-059C8558960B";
	setAttr -k off ".v";
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
	rename -uid "130E843A-4845-07B1-BC1B-4DB950E5FD1B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1FFA9B82-4662-B3F2-CDC4-C58128F999DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "40E0EA4F-4EE3-D545-1ADC-BC9114BFBD2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4286E995-43F4-3C87-E4CE-EC95EF69709D";
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
	rename -uid "8F96EF35-401D-7BD7-DF53-B2B5B5951970";
	setAttr -k off ".v";
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
	rename -uid "36FE9ED6-44E6-99FE-3A87-C1A25EF7BA4B";
	setAttr -k off ".v";
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
	rename -uid "DF50A843-443F-4899-9B81-37BEA9ACC85E";
	setAttr -k off ".v";
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
	rename -uid "10972023-4558-5091-E5C4-ADA9B33C1747";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B1431BEA-4086-322E-74BC-8998E653F74E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "067A10BB-458F-CEAB-2292-6F8E7F9B9886";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F8887563-45E2-6216-3779-C2B6977BDC77";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904467e-015 -30.11503766976147 -2.1322109539326473 ;
	setAttr ".r" -type "double3" -1.2722218725854028e-014 -2.5444437451708207e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007573 1.8286050763007582 1.8286050763007593 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "0FCCFD48-4387-01F0-71C8-BFBB5E7A0121";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "C1648BBD-4DA8-5254-AE3D-6B91E7662116";
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
	rename -uid "0B3B013C-4AEA-6D69-B367-3483CF553DBF";
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
	rename -uid "6DB34D69-40CD-E55F-63A7-75AC9040A1CF";
	setAttr -k off ".v";
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
	rename -uid "43B2D418-493A-DF20-8D29-C2B62B481A54";
	setAttr -k off ".v";
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
	rename -uid "77C5A69E-4606-A7B7-68FA-489B0BC8E34F";
	setAttr -k off ".v";
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
	rename -uid "F21CCD82-47AD-1D46-0920-46AB303FE304";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BD1DE1F6-463C-4970-4DFD-419D9DE482AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C46DA552-4671-C905-EFE5-2CA07A794105";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "755C1D67-4EFE-63B1-2FC6-53A54C55B572";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200166e-015 -29.844371667992284 -2.0778684034613564 ;
	setAttr ".r" -type "double3" -1.2722218725854028e-014 -2.5444437451708207e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007573 1.8286050763007582 1.8286050763007593 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "CF1B5784-41FD-1BE5-ECBB-08A4C63F0530";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "1342D660-4954-4942-2FA5-F0AE868617CD";
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
	rename -uid "6D42C239-47CA-0061-378D-2386EF6DE5F6";
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
	rename -uid "2D1D5F18-4A6D-298C-A2EF-46BE17815774";
	setAttr -k off ".v";
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
	rename -uid "48D96EF2-4FBB-F736-4F7F-679D69405772";
	setAttr -k off ".v";
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
	rename -uid "BE0A02EC-4693-003B-0487-0897231C151A";
	setAttr -k off ".v";
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
	rename -uid "FD43B19A-442C-7666-97C6-C686DCA087E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D605E2FB-4115-4BFC-3FC4-01A55934068E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D1EB689C-4271-A75A-B4B1-3691F4CEF1DE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DC827FEB-4B87-9C62-2C43-1D9B43BF0025";
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
	rename -uid "44DA7E32-4577-AC9B-01DC-85A6F0258712";
	setAttr -k off ".v";
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
	rename -uid "48C7B45A-47F6-0D61-BF8E-70BC6402F664";
	setAttr -k off ".v";
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
	rename -uid "DBF4BD80-4D4B-9CA4-2531-90A1FB53F52B";
	setAttr -k off ".v";
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
	rename -uid "3AD964B3-4D3B-6F07-7C7A-F69F9CDF681C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "3297C015-4492-46CC-11F5-4DA0D1B51A8C";
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
	rename -uid "86CE0E87-47C2-838F-B8AA-77916C748376";
	setAttr -k off ".v";
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
	rename -uid "FB125FAF-449F-5FBF-CF04-25B454FA953C";
	setAttr -k off ".v";
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
	rename -uid "65DB88FB-431B-2F75-FAFF-688C5D0D86E7";
	setAttr -k off ".v";
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
	rename -uid "1FF174FF-4030-E3AD-FAAE-AD9A4F52A24B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5920D2F2-474A-C108-8307-0796372127FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "58B44F03-4BD9-336D-4C20-64ABC2D26115";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6D851E41-488B-B2A3-AD61-32AFC73458A9";
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
	rename -uid "0F229E50-4D9A-1BF4-87CD-8CA4C0D4043B";
	setAttr -k off ".v";
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
	rename -uid "23605360-4ECF-AC7C-6039-0494426CEBED";
	setAttr -k off ".v";
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
	rename -uid "929B27BE-42AB-3064-7E34-DCBDAB72FB07";
	setAttr -k off ".v";
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
	rename -uid "47BE18F5-4387-549E-5534-FC8FD849FE38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "127E6FE7-40F4-18A9-5E9B-EE8218E9DE2A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BA31DA4E-4A25-DA4A-B51B-D8A71391A39F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D248DA71-40AF-6FFE-DE42-1E86D23DFBF3";
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
	rename -uid "BF62AF59-45E2-452B-F33C-F480A104EED4";
	setAttr -k off ".v";
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
	rename -uid "D228B0D4-4947-257A-AEDB-F78243F25064";
	setAttr -k off ".v";
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
	rename -uid "A34962E6-4AC5-37DD-1301-8DAB01F35FF9";
	setAttr -k off ".v";
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
	rename -uid "DF798D5A-4A02-8D38-D233-42B0BD08CA71";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F63A824A-49DB-C576-70F1-C5B67603D1EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "22A8ECD7-476F-AEAF-59C7-6EA1E269FC6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D939AB0B-40B9-A0AF-D62A-A39C1CF5E58B";
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
	rename -uid "D56E97A5-4565-4909-761C-1C8063927C1D";
	setAttr -k off ".v";
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
	rename -uid "8F6861AC-4852-C72E-49EE-139B889BF9D7";
	setAttr -k off ".v";
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
	rename -uid "BFBBF858-4DCA-9B41-F2C2-9A8294E15829";
	setAttr -k off ".v";
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
	rename -uid "6283A6C5-4023-7D03-CA71-ABB826C519CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AE0363BE-41B1-45F8-E8D1-3AB765948838";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "63E08678-466C-2E7C-66FA-F9AA19B2BF6E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5FBFA506-4EA0-D670-A11A-C7BBB94D0571";
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
	rename -uid "ACD96DA5-4A97-E074-BE73-B789223AE685";
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
	rename -uid "A8B64FFD-4919-B386-494B-4297B91172A8";
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
	rename -uid "533E533D-405F-2BDB-AF75-9394A11E1695";
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
	rename -uid "5F410181-4727-FE33-8D2B-41874EFCE36D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046809e-014 -175.06339877760723 -3.1060024283289871 ;
	setAttr ".r" -type "double3" -1.272221872585401e-014 -2.5444437451708185e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 10.6485902015964 10.648590201596406 10.648590201596402 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "FD590B03-46BD-DCD3-5DEE-9B8EAD96F7E1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "A75130E1-4C12-6EAE-2D36-B595DA842557";
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
	rename -uid "0222E7B5-40DF-1EBD-0EF4-029AB8D09B0C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757915e-015 -30.612390245122928 -0.093664066372369834 ;
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.8286050763007562 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "D6BF9864-4E42-5326-3ACD-AFA269B8DD43";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "249CFECA-4C7A-AA1F-CA39-DEAE11C69DBB";
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
	rename -uid "21CBAA89-4529-BF63-5E5E-F2909811D9B0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757915e-015 -30.612390245122928 -0.093664066372369834 ;
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.8286050763007562 ;
createNode nurbsCurve -n "mouth_C0_crv4Shape" -p "mouth_C0_crv4";
	rename -uid "2DA0A034-4F26-02BD-E5E7-11BB11D4545C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv4ShapeOrig" -p "mouth_C0_crv4";
	rename -uid "EFF80918-4A5E-E814-6371-F5B3E56B0863";
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
	rename -uid "6EE0E732-4219-664C-BD69-41AF3151DEF4";
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
	rename -uid "A6310A72-41D8-8643-1D55-54828C044A74";
	setAttr -k off ".v";
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
	rename -uid "11D446BC-44F6-EBBF-AA69-D89938DB49E2";
	setAttr -k off ".v";
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
	rename -uid "4D2A59B9-4886-936C-D4F9-F4AD619014D2";
	setAttr -k off ".v";
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
	rename -uid "41DFC604-43D5-B4F3-54C3-708528096BA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "6CCBD797-44EC-7A5D-B6ED-A2B301E28345";
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
	rename -uid "C0A24761-469C-5982-1C9A-BCA817498EC2";
	setAttr -k off ".v";
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
	rename -uid "8BCFADC8-4D01-18FA-458D-78B73C5D93EB";
	setAttr -k off ".v";
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
	rename -uid "F27376A9-4554-56A6-832B-A89B3FC9DF28";
	setAttr -k off ".v";
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
	rename -uid "51E9AC76-405A-9918-8DCA-D1A8CFB30054";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "3A52B127-4CB0-0270-E311-3A8F405219CD";
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
	rename -uid "2F3B0ECA-41E2-CF58-79BF-BCBBE7FD2AF9";
	setAttr -k off ".v";
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
	rename -uid "AB2B02B8-49A9-E6CF-BE43-119BBADDC04E";
	setAttr -k off ".v";
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
	rename -uid "173E58AD-44A2-27DC-B485-3A83D392880D";
	setAttr -k off ".v";
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
	rename -uid "ECB9C803-446C-8CEE-3991-83B79031092E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C2A2D6D7-4E84-20A4-A5D3-43938621CC78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A43B0F7F-4406-F4E1-5612-69A289D77F9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DB1D1DA2-40CB-9036-CE9C-E899F970305B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723901 -30.070644536323638 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.753879954650218 1.7538799546502197 -1.7538799546502115 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "D65FEEC4-4037-C758-5707-85BE103E277D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "9D7B9764-4005-5CD7-C884-D3AD36799C76";
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
	rename -uid "6395C560-44DD-26C2-6392-B999A64A9B8E";
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
	rename -uid "DC675EEE-4294-1552-5F86-C9A6A2CFC084";
	setAttr -k off ".v";
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
	rename -uid "0FB3E5EC-4328-C8F1-70D4-A7958AC378B3";
	setAttr -k off ".v";
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
	rename -uid "A22E7463-4129-BA3A-D7F5-D4BD32C177F9";
	setAttr -k off ".v";
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
	rename -uid "901339EE-4CA1-6796-2ED7-68B1D2595688";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "32577C3B-49C3-05DF-C616-28BF1EFEE514";
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
	rename -uid "99ECF45D-42F8-4AA6-8FEF-6DAEFB060D0B";
	setAttr -k off ".v";
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
	rename -uid "354770F9-4BA2-5981-E300-87AB507CE14A";
	setAttr -k off ".v";
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
	rename -uid "22561AD0-4859-D210-AD86-BDB80C89DCC3";
	setAttr -k off ".v";
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
	rename -uid "043B6B2D-4B46-5F10-AD32-3B8E0170EF74";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E77FAF7D-418C-3516-D7A1-DCBA3A079746";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FA66447D-4DD5-BC2F-CA6A-33A4ECA72297";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7D168361-4A01-0336-A83C-A58B85242F9F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724567 -30.070644536323634 -1.5859733749936746 ;
	setAttr ".r" -type "double3" -1.2722218725853952e-014 -2.5444437451708084e-014 -7.0167092985348988e-015 ;
	setAttr ".s" -type "double3" 1.7538799546502166 1.7538799546502193 1.7538799546502097 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "54826B4B-48BE-7561-D57A-95BC2FBAC8E9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "96353F01-4ECA-4914-0ED9-2598C09B7AD9";
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
	rename -uid "6B9C472D-48EB-6360-6714-968BA011E2DB";
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
	rename -uid "F7869515-435E-E74F-DD6B-2D9FA621A962";
	setAttr -k off ".v";
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
	rename -uid "80343258-4F5D-5A59-8F94-B596FE84E177";
	setAttr -k off ".v";
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
	rename -uid "35FE19C8-4187-F15D-45A5-E88CF6E3E435";
	setAttr -k off ".v";
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
	rename -uid "CBC5D66C-4905-44B2-930A-BB9BDAB42FBE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BE379770-4BEA-02D8-F460-F6A78CFEA85F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "892D6E8F-436F-CDC9-2BA9-8EB4A17941AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7AB927F2-4D3A-2FEB-65D7-9A8B6C0D63B7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547249509 -29.261428725477426 -4.0684386981538104e-015 ;
	setAttr ".r" -type "double3" -3.8717038977768618e-029 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502186 1.7538799546502182 1.7538799546502106 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "BB70334B-4835-A903-7601-5E90FE11C6D2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "E3B16556-43F5-FE83-9C0C-E395146A287E";
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
	rename -uid "B65385F8-431B-DAFC-3768-8E96416A9BE9";
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
	rename -uid "FE8BECD2-485D-E749-87D9-7297C8A3BC8B";
	setAttr -k off ".v";
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
	rename -uid "5A8694D8-477F-DC86-1DB8-71AE55172AF0";
	setAttr -k off ".v";
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
	rename -uid "00FBFBB8-4AD6-F14A-806C-ACBD682F4025";
	setAttr -k off ".v";
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
	rename -uid "2ECE0CFB-48C9-3E0A-220F-97825B8AD79B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4E5F21A6-4204-D11A-6137-468F074D298D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "217DA846-4134-89F4-9D4C-F4BB81271DEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "606DB73F-493F-059E-A4FD-FEA3B3B7B91F";
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
	rename -uid "52220076-4E68-8E5B-2914-938DCEADEDEF";
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
	rename -uid "81458525-4D38-5E0A-4E65-C883CD2463D4";
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
	rename -uid "B4B57641-4EC4-1713-A27B-3383F0334948";
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
	rename -uid "72C0AAA4-46CF-7789-EB13-9FB84F23C746";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916358 -26.793934099519557 -3.9146096093576574e-015 ;
	setAttr ".r" -type "double3" -3.8717038977768607e-029 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502186 1.7538799546502142 1.7538799546502071 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "D6552E34-44E4-7F5F-5C9B-0B9A61200D2E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "D8DC1902-49E9-97F0-63D1-0FACF5B9CC68";
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
	rename -uid "E76B80B6-4D41-613B-C32C-4781757FA070";
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
	rename -uid "9CD30008-450E-876C-A781-10A3B46DD813";
	setAttr -k off ".v";
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
	rename -uid "130CC863-474B-3264-F2FD-FEB19A53DF98";
	setAttr -k off ".v";
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
	rename -uid "4CFC517B-42AD-D0BF-DBEE-7DBB1299A2DD";
	setAttr -k off ".v";
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
	rename -uid "8A222505-4F9B-8929-BED7-FBB317321C22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "52470809-43FE-6875-FED8-A082A1922A46";
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
	rename -uid "4B20AF49-46F1-F568-F25A-4987F6784547";
	setAttr -k off ".v";
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
	rename -uid "293428A4-422E-3FDC-9DE2-348C88A3E645";
	setAttr -k off ".v";
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
	rename -uid "0713A3A7-4011-01C8-0649-589E44E5FCF9";
	setAttr -k off ".v";
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
	rename -uid "67017FE9-4202-C3FC-14CE-31A8C79B23AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A1676B8B-43B5-3959-2080-D38C2F98E814";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "867295F7-49A0-2033-CBED-6BBEFFBA26A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ED6FD29A-4BB9-7EE7-7A19-EE89EDD38FEB";
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
	setAttr ".pinrefarray" -type "string" "local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root";
	setAttr ".maxstretch" 1.5;
	setAttr ".ikTR" yes;
	setAttr ".mirrorMid" yes;
	setAttr ".div0" 2;
	setAttr ".div1" 2;
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "29DA592E-45B4-6F7A-BA06-BEBEFBB8F5EC";
	setAttr -k off ".v";
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
	rename -uid "FCD68BB4-42B1-460F-5BEB-DF91B312C0EE";
	setAttr -k off ".v";
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
	rename -uid "A2EEC428-4C0A-8739-82D8-F988F3016AC0";
	setAttr -k off ".v";
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
	rename -uid "15450366-4511-B4F0-D812-178D7A092A1F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B272C7AC-4D98-70BE-3863-B98840461FD8";
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
	rename -uid "A440B8B6-4BF9-B70F-4C10-D080B89CA46B";
	setAttr -k off ".v";
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
	rename -uid "9985B119-4488-02EE-9F21-4BB05D0585AA";
	setAttr -k off ".v";
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
	rename -uid "0B88FAF7-4226-732D-322B-ACA397E4F469";
	setAttr -k off ".v";
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
	rename -uid "8DABFFCF-4453-0787-4A63-17B22C6962BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FBA56654-439F-2F7D-2AF1-2C837B53C16D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8CC27656-4EB4-97E3-23BB-F5A06AE3140D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4B2DD905-4F28-6CD1-B18D-4888CF257A1D";
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
	rename -uid "ACEF9559-4ED4-2D9C-F92E-3292319F4375";
	setAttr -k off ".v";
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
	rename -uid "B8D76634-4BFC-A3F9-7286-DCBFA424FC26";
	setAttr -k off ".v";
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
	rename -uid "D7F67F3A-4A05-28BA-94E6-28AAD0587386";
	setAttr -k off ".v";
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
	rename -uid "F44B80DB-4BB5-4BE6-F8B3-6494D4ED201A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F0968A1E-454F-07E8-BA50-A1BFE10DF22E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6E798FA6-4101-45F2-AA83-389BA6C0BE53";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DF1755E5-4B51-DE37-1DBD-32B32AFED302";
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
	rename -uid "B24214E2-484E-4064-B750-AA8BB2616E13";
	setAttr -k off ".v";
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
	rename -uid "611497FB-4D03-FB44-D0E8-D7AD3557BBB5";
	setAttr -k off ".v";
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
	rename -uid "74396641-4D84-0384-F4DB-AEB9864E0D06";
	setAttr -k off ".v";
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
	rename -uid "F748EA2B-436A-90B1-7731-1E8F2561A995";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6F8342F0-4CD6-A60A-8F8C-E4B9E3D7EFE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B3CD5DD1-4652-D851-1509-EAAB89A235D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7A31101B-4566-E4F4-1C8E-E5BD7A5CB7EE";
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
	setAttr ".r" -type "double3" -5.9436615609849465e-014 -1.5902773407317576e-015 4.994464773235675e-015 ;
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
	rename -uid "053F3768-4A7C-5BD2-5F2A-F2AEFC43EE34";
	setAttr -k off ".v";
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
	rename -uid "E97F1C38-4FAB-B91F-E3DB-D0B9DE54EAE2";
	setAttr -k off ".v";
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
	rename -uid "FB3DED1A-4FEE-3547-1D2F-AAAC154811A8";
	setAttr -k off ".v";
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
	rename -uid "538AD172-464E-01C0-F641-94B8F0DF7C9B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F838F516-4D01-3DF5-3245-3DB7D2C1FA4F";
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
	setAttr ".r" -type "double3" 86.350349008865265 93.717381466937326 86.46796012747825 ;
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
	rename -uid "A7F485F9-40F8-B427-D0CB-A5BF3220182D";
	setAttr -k off ".v";
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
	rename -uid "C091FBFA-44E7-DA6F-C401-74AD432834B2";
	setAttr -k off ".v";
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
	rename -uid "B4BA8B5A-4729-D440-7CCF-679919E2F5FA";
	setAttr -k off ".v";
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
	rename -uid "C12727C7-47E1-3A8E-4242-CD932F31CDF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "7D56AEBE-43E1-2AB9-4AB7-479A8F60C930";
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
	rename -uid "7A0C893A-476E-AB39-9E60-8D92F624455B";
	setAttr -k off ".v";
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
	rename -uid "CFC2B270-477A-3AAC-0C49-4788B7EEC8EE";
	setAttr -k off ".v";
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
	rename -uid "C32B952C-4BEC-D15D-A85B-4F8755989F8B";
	setAttr -k off ".v";
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
	rename -uid "116DD2BC-43A5-CC7D-FF20-399A797CD811";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "335B8336-436F-DBC9-795B-8F93580CA2E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C4E2B855-4146-3316-188E-F28D12CCB510";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "176C2BA5-4249-2B6E-E2E7-20A4ADC6EC0E";
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
	rename -uid "7564489D-4A1B-FE56-EE82-69B0A54A2620";
	setAttr -k off ".v";
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
	rename -uid "E602C342-4727-C808-1E2E-D8A3467A235B";
	setAttr -k off ".v";
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
	rename -uid "CC5481EE-4718-D7AD-E382-2F8E9293C9D2";
	setAttr -k off ".v";
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
	rename -uid "E2A47269-4C40-3587-8E86-B4BEF16D57AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7B3F50A7-480B-AC4C-9584-4593DF2FAF59";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B59F121F-40CC-AAD2-CCE0-6E8123060F43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3E305848-44F3-E617-AA21-3E938FEA3FE7";
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
	rename -uid "B1489747-4777-BB6F-23A1-B0B241494C81";
	setAttr -k off ".v";
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
	rename -uid "3AC849DF-4EB5-C736-767D-0FA8F5A7A5E1";
	setAttr -k off ".v";
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
	rename -uid "3224CCBF-4446-F84A-A345-2AB910FB9BDD";
	setAttr -k off ".v";
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
	rename -uid "FF0E56B3-4BCB-F6D6-1A96-D3A873D4E5B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E1092E6F-4CDA-3E49-06F3-C589A9358560";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C588233E-4725-528C-61C5-2FA6C219C2C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CBCA64D1-4BB3-0C9A-D867-8987A29903C3";
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
	setAttr ".r" -type "double3" 5.4173319878599431 -68.58707385545226 -5.8163374181236787 ;
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
	rename -uid "1D597457-4098-77C8-3D1A-5C839DB856A6";
	setAttr -k off ".v";
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
	rename -uid "16FDC2E1-4AE6-9613-41CD-0F921E554554";
	setAttr -k off ".v";
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
	rename -uid "E035C6BA-4A12-2A99-957D-61B167145006";
	setAttr -k off ".v";
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
	rename -uid "D19BFA68-4C6F-7BCD-DB12-B8AF661C3A72";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "95245D8D-4BA4-AA0B-836C-2AA80715892C";
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
	rename -uid "9A2124FE-4A44-4E32-3D01-4E9895FA4DB9";
	setAttr -k off ".v";
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
	rename -uid "68236DF1-4FAA-25AC-F90F-9D9F678F9A79";
	setAttr -k off ".v";
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
	rename -uid "FD20B7DC-431B-EC39-36C7-27BDA98C3FBC";
	setAttr -k off ".v";
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
	rename -uid "F1623EBF-40BD-C0A5-A7CF-F2A0B9937C33";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6BA2373D-4669-20F7-8CB3-3CBD8D6D16F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ED8FFA85-405F-A612-904D-749279B16294";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1A5EA3FF-4D74-2C85-A6A1-76BA708307AC";
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
	rename -uid "DF75FA04-415E-6C54-0C35-858EF3F39DAB";
	setAttr -k off ".v";
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
	rename -uid "8E726184-47F5-1F94-F2E3-719A96A0684C";
	setAttr -k off ".v";
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
	rename -uid "02985458-4F45-EE12-3F95-52B883613457";
	setAttr -k off ".v";
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
	rename -uid "23DB4EBF-4B96-9A98-9546-0FBF9FD2BDD7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6964ECD6-408E-ABEF-7FB7-30BF88A27D0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "516E97C2-4239-0F71-F981-51B79E08B497";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "143374C5-4E75-7A18-1AF9-FEBF2913AEB8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259195499 0 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.0112483479660355e-013 1.5902773407317571e-014 1.5902773407317576e-015 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000018 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "DFE6A366-40F3-CAD4-6A81-6DA4B314B8D9";
	setAttr -k off ".v";
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
	rename -uid "0F7048C3-434E-28B5-97F5-E6992411BCB5";
	setAttr -k off ".v";
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
	rename -uid "20A2AE0D-437B-3920-E8CE-1ABD026ACF2E";
	setAttr -k off ".v";
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
	rename -uid "594E7D97-4A27-FB14-617B-ACBCC89C9832";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F8685F59-41B6-473D-9342-A5B76DA80ECF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AA152E54-48BC-A100-4AE9-D29CBCB2681B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EE60E67D-4549-3863-B9E4-7E8E60F7FCDC";
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
	rename -uid "F6F3133F-46CF-A5D6-EABF-808957C478F6";
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
	rename -uid "B0C8C1D2-48CE-34C9-5220-F8BBEE4E73F3";
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
	rename -uid "BDBC9F82-45EC-4A62-F4AC-AAA5EFE086CC";
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
	rename -uid "845D86D4-429A-D654-2B4D-8AAEDB000AA8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754586 -29.032786855763536 1.480432772503266 ;
	setAttr ".r" -type "double3" 7.5791665394124275 165.69575562109674 49.348303523761373 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786029 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "DC7C12E9-4D07-EE7C-80E9-EE9CC9B7542D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "173DBC5E-4CA9-A36C-7AB7-15B8233B25D2";
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
	rename -uid "6018939F-42A3-1829-71B4-8BB4411FC60A";
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
	rename -uid "490F5DA9-4342-2650-418F-CBBF84B64347";
	setAttr -k off ".v";
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
	rename -uid "E6C0EDB9-4BD6-60C1-A515-0EBB00D43828";
	setAttr -k off ".v";
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
	rename -uid "ECA7586C-493C-2A9B-5992-458A949449CE";
	setAttr -k off ".v";
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
	rename -uid "E30A376A-432D-FDD6-0154-D08DA86228F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "755596C9-4922-A338-7C21-478C0F127A8E";
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
	rename -uid "9C1103E9-48A7-FC5D-01EA-96A2EA60A6C5";
	setAttr -k off ".v";
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
	rename -uid "D52A8B8E-4003-FEE9-672D-658C50BD53CD";
	setAttr -k off ".v";
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
	rename -uid "B610C400-4BC4-38F1-02A2-EABCD53629AF";
	setAttr -k off ".v";
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
	rename -uid "9B38A54E-43E4-C1D2-EDC8-89BE49CA9EDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "59BD8176-40F5-5E46-A805-AD8EC1AF370E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8326AE99-4154-9777-2AB7-6BA9CEF42F77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A5D11AF7-4894-9610-1458-38B398889C55";
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
	rename -uid "E4EEE874-4E08-6CA1-1BB3-D7A437E3767B";
	setAttr -k off ".v";
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
	rename -uid "6018AB5E-4F02-E48B-B9C6-8CB3610C7F7B";
	setAttr -k off ".v";
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
	rename -uid "4AAA3F01-41C0-0E40-E6C2-918A986F08C8";
	setAttr -k off ".v";
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
	rename -uid "781EB33F-4972-A500-8540-C09BBAC01842";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4FE23494-4E1F-9F6D-693F-89A42879ABE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "555294B1-4C49-3FAE-C587-AA8416609B43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "283D8D5C-42F1-7B26-9790-6F888D569745";
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
	rename -uid "BA7C5ECC-4B70-818F-7457-8DBA517651B9";
	setAttr -k off ".v";
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
	rename -uid "96456B07-4593-6333-C7CA-5F898EF0DF35";
	setAttr -k off ".v";
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
	rename -uid "984496A3-4360-607C-83B2-BBBCFCD4769F";
	setAttr -k off ".v";
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
	rename -uid "FCF51934-47EC-996C-4D01-7BAEDE2DEAC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E1B83977-406E-D44F-F4B9-C984D8E53B50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E3852770-4A55-4E34-2D58-109B36D00D65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D941FA35-4B5F-5E8D-0985-8EA60447EF16";
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
	rename -uid "A29D68C2-43F5-7464-63E7-63B69290BB01";
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
	rename -uid "4F230F63-449F-DFF2-53B4-76980C63120A";
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
	rename -uid "F8A87A7B-4272-B634-0BCC-F0AB931346F3";
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
	rename -uid "A1901CF8-4963-4035-25A6-DA93208D6B7F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309188 -29.023661369441797 1.4173349723038271 ;
	setAttr ".r" -type "double3" 0.54140613098450785 178.40951950034301 47.737641631363815 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.632098310678602 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "0248F980-4B81-18BF-8DBF-A98E6B21D76B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "D2599587-409B-CCDF-6F28-CCB87CDDE668";
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
	rename -uid "5783C90B-4567-8E82-443C-99996F19D1F2";
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
	rename -uid "D6AF1359-4BDF-9C02-14BE-F19D773916F6";
	setAttr -k off ".v";
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
	rename -uid "72F409AE-41E5-C1E6-52B2-8B9FDD966C39";
	setAttr -k off ".v";
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
	rename -uid "ED2DA9AE-47D7-7B0B-8ACB-FD813A647346";
	setAttr -k off ".v";
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
	rename -uid "DF75B9E4-455A-BB6C-C467-9888C1B2AC3A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0E1DCDD2-4246-A1AA-42A2-8CA65B620424";
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
	rename -uid "81241CAB-4886-8B93-FAD8-5E8F50E6E9A4";
	setAttr -k off ".v";
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
	rename -uid "2838D35A-4EBD-3666-888F-5284DBDAE1F7";
	setAttr -k off ".v";
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
	rename -uid "BD43323B-41BB-9410-ED5D-D996CDE95DE2";
	setAttr -k off ".v";
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
	rename -uid "70EA77FB-4905-22D7-AB96-D2AA8C018A40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "752E5EFF-4B6E-8CD3-A29D-96AF1349E19D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BCFD9568-41A0-96CD-6FC8-7A9F31EBF299";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "07D4EB70-4844-0661-FB7D-FF8D289094BF";
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
	rename -uid "7DBD2067-4E9F-FDFA-9A81-768D50D135F6";
	setAttr -k off ".v";
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
	rename -uid "51D09F16-410F-6473-4FAC-FABAE9049D3D";
	setAttr -k off ".v";
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
	rename -uid "D7DCB010-43A6-F5B8-C55B-C0988138FA80";
	setAttr -k off ".v";
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
	rename -uid "FD02C47C-4149-6297-4A42-F78526D90B35";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "001D4EB8-44C1-7C98-9FC9-479870961411";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F26F290C-4B69-AF2F-A8D8-BB84C101C5AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F1053DBD-4024-8ED6-47A3-5B98CB191E79";
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
	rename -uid "E89A954D-4311-BEB6-359F-E0A1169240BC";
	setAttr -k off ".v";
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
	rename -uid "4626151E-4964-AD75-554C-009A32D712CD";
	setAttr -k off ".v";
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
	rename -uid "E409A574-4A8F-301E-538A-0687E8C60B46";
	setAttr -k off ".v";
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
	rename -uid "181A5449-4F52-6F6F-3FDF-D9A344588A83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8BB4D6EF-43B9-B955-36F0-CEA4CE92937A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7724C4CD-44E8-AC0D-EEC4-67A6091F2DE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ABF0430B-47AE-D4F3-7A95-ED9EADE91A0C";
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
	rename -uid "2568AA0C-4920-FE03-961E-1FA8EA77031C";
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
	rename -uid "7B59E224-43EE-53C1-073C-EA98A7954224";
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
	rename -uid "529958E0-4DE8-31B1-45E3-9CADA96FB3F8";
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
	rename -uid "534C2BF9-4B45-7345-D843-669295DEBD71";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.22243322515321 -28.040620010901279 1.1418187531108759 ;
	setAttr ".r" -type "double3" 174.15150560514738 -9.9768879508771722 -125.88865264712203 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786024 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "0E98DF43-41D4-1474-7807-D096333ED26D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "74A396F2-4689-77AA-5668-1EA497D3BC08";
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
	rename -uid "F85481B4-4886-27E9-B6A5-AF867023472A";
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
	rename -uid "BA5A32F6-4E4F-CF37-84FD-8595902A983D";
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
	rename -uid "F4197B2B-4642-C076-FBF5-9D93CFF76F8A";
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
	rename -uid "27A4A9D1-442C-52BA-FAD0-3981206B87DA";
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
	rename -uid "DDDB5274-4E8A-556B-9087-809418623B29";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400629 -38.076493243285306 11.71416362193559 ;
	setAttr ".r" -type "double3" -98.404354317568462 44.65425854570406 -90.724179884703602 ;
	setAttr ".s" -type "double3" 3.4032157947041322 3.4032157947041184 -3.4032157947041277 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "CD43D9F9-4F7B-6CA6-D325-559EB7547DB4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "8905CC7B-45D6-5C90-DD46-1DA1E91D8CE9";
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
	rename -uid "2F063D6D-4EB3-3786-AD44-BFB44846FC68";
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
	rename -uid "30109377-4100-1FF5-1F3E-DFB82860C238";
	setAttr -k off ".v";
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
	rename -uid "B6574F27-408B-B299-5826-CFA96AB490BE";
	setAttr -k off ".v";
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
	rename -uid "874BFC3A-4F9D-FF70-8855-309E093F148A";
	setAttr -k off ".v";
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
	rename -uid "A42779FC-4F12-6A7A-2401-1AAB43C2E53A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F7C52453-49CA-2AF8-97A5-6D911D71E4BF";
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
	rename -uid "7E7BC058-4DDD-B5E7-7E6F-EF8351B64B4C";
	setAttr -k off ".v";
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
	rename -uid "012A22F4-4E82-CBD2-6155-1397D726CBBC";
	setAttr -k off ".v";
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
	rename -uid "00617CC3-4F1A-578A-D1C8-DB8831E1D05D";
	setAttr -k off ".v";
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
	rename -uid "43B15A4C-46CC-DA1C-DCE4-07B9C794E662";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F281701C-4CCD-3F4A-9632-1894E591B9E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C2FB869D-41DE-D9F2-B489-C09128BD1D0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8D63BB76-4A65-C131-AD61-09A495DF617D";
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
	rename -uid "5CBA20AE-40D5-66E3-3291-DFB6F178FEE9";
	setAttr -k off ".v";
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
	rename -uid "4DA41C13-4C30-DE07-28B1-119548B45350";
	setAttr -k off ".v";
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
	rename -uid "9FB30A2C-4DAA-3DCD-4B57-049114994936";
	setAttr -k off ".v";
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
	rename -uid "4FA17A2D-483A-5A35-498E-6CB8A00ADCD1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9A1BB48E-4E77-343C-7AAA-048088AB4FCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A2D0E539-4596-4EF1-F815-B99DC2DC0E2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BB59EEE0-4C43-4E37-F576-43841139B240";
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
	rename -uid "ECBD624A-4F9F-AEB1-EEE9-3892D4EC703E";
	setAttr -k off ".v";
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
	rename -uid "222DB569-46E3-8FEB-9A67-6B981F412E86";
	setAttr -k off ".v";
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
	rename -uid "5ED43C48-41C1-5946-E776-A9801A871360";
	setAttr -k off ".v";
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
	rename -uid "42511E4F-4965-444D-6FA4-EC8831F4AB3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "17193EED-4A5A-B57D-061A-F096149BBD7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "45F71E08-4998-26F8-2DF5-719929141B9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6DEA1120-4599-57E7-DA8A-B3886EE7AF52";
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
	rename -uid "6E931180-4F27-DF46-443D-EFB8F00142F5";
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
	rename -uid "312E6972-4460-45CD-1B75-83ADC070D6FF";
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
	rename -uid "6E3CE413-4200-CDAA-7F57-BC859C30E093";
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
	rename -uid "B2995D35-4BF8-B3B4-D65B-3FA94D9A6A5E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713103 -27.336008057181051 2.4648652761315182 ;
	setAttr ".r" -type "double3" 170.83456651198321 -22.11117621255843 -122.87938490445563 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106786002 -2.6320983106786047 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "75B6EFED-4983-678E-715E-FC9658DE68E0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "2F03FD45-4547-F049-B34E-23893CEE9E3B";
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
	rename -uid "77015299-4B01-9323-8C24-0580BC8CE2BC";
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
	setAttr ".ctlSize" 0.7;
	setAttr ".parentJointIndex" -1;
createNode nurbsCurve -n "thumbRoll_R0_rootShape" -p "thumbRoll_R0_root";
	rename -uid "9B325775-4F47-418B-E550-A79B537E79C9";
	setAttr -k off ".v";
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
	rename -uid "955D7CC7-4B92-255C-D621-40A7EFD8A9EE";
	setAttr -k off ".v";
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
	rename -uid "E4BEB1CD-4395-F4CD-494F-B1A27B5CBB4F";
	setAttr -k off ".v";
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
	rename -uid "5705CDA6-463D-4A0A-F54A-849813384237";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "C73B6C46-48AB-E835-F349-63A595C72CC5";
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
	rename -uid "9010D224-46BF-0FD8-8A90-F1A3DE25969B";
	setAttr -k off ".v";
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
	rename -uid "0A8C769A-4586-9105-6380-12AB9049C8AD";
	setAttr -k off ".v";
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
	rename -uid "8DE51A42-4803-E946-3FFD-118BAF511424";
	setAttr -k off ".v";
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
	rename -uid "5F49FE18-4730-2547-20FB-FE81116949B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "46E20FD9-4BBE-F808-57FF-109B6EA5BE35";
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
	rename -uid "23D97CFB-427A-5D98-0CE2-1A824FBEBA28";
	setAttr -k off ".v";
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
	rename -uid "89834681-49B0-1244-3D36-36B86D30FE16";
	setAttr -k off ".v";
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
	rename -uid "AA2FF7F3-4040-1C43-6D65-23B9AD85F0D7";
	setAttr -k off ".v";
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
	rename -uid "E56CAF7E-429D-604F-A0DA-B293307FDA44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "043B6AF6-4826-358B-B84C-68AF3BD2F51D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "07A62E51-49F1-3581-447B-CD838202B6D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BFB9370E-404D-58BC-1AD7-86999EA42538";
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
	rename -uid "7FF0C3E4-4CD8-7110-7B15-AC80517D0A25";
	setAttr -k off ".v";
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
	rename -uid "39FC7B96-4FBF-6750-2777-E98FBF874745";
	setAttr -k off ".v";
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
	rename -uid "92989952-4D42-BE39-2FF8-129EC95942B7";
	setAttr -k off ".v";
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
	rename -uid "F32E4109-4DA6-3901-5C74-74BC40CE02D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BFA003A3-479F-C5C7-F478-3CBC50CF6C72";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "219B75C6-4BCB-974E-2139-B897C70FFB18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AF6FF5A5-4AFC-FB23-F880-F993304EAE48";
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
	rename -uid "7ED3FF7F-4942-E016-A78A-B48D9A572F46";
	setAttr -k off ".v";
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
	rename -uid "1F6ED47C-4D55-4CA3-2DB6-1C965F9B0CDC";
	setAttr -k off ".v";
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
	rename -uid "C2BF25E8-4B12-3D3A-EF13-5A91747480EF";
	setAttr -k off ".v";
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
	rename -uid "C4740658-4AFD-1481-B432-779E2B1532BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1D3177CB-4CE9-2AB9-1087-52906FD3BB38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "78A4CA1A-4143-055A-939E-638F572D9C50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A542D5CC-4E1C-9912-7E1B-3F8761202055";
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
	rename -uid "DA356DB0-4C42-FB19-C0CD-038624E12C6C";
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
	rename -uid "2668916F-4C60-5AFB-138C-ABADB3C41A51";
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
	rename -uid "6B9B1C0B-447F-0836-4919-239339E8C0B5";
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
	rename -uid "A7B873E1-4DE9-E7D9-8505-3684C6118229";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042892 -7.0737929587543196 17.725867635512845 ;
	setAttr ".r" -type "double3" -55.556977946373202 -63.100734454449608 102.71864583729834 ;
	setAttr ".s" -type "double3" 2.0434672163157268 2.0434672163157215 -2.0434672163157264 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "0CDB41CD-4EE5-0942-4047-F48DD0726AAD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "F8CED864-4B39-7E6C-EDCC-CDB5A3102CEE";
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
	rename -uid "6EF39A61-44FA-4D70-C35B-70B9310EE689";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648682 ;
	setAttr ".r" -type "double3" 2.1534408611046039 175.80406292066331 45.437740049298235 ;
	setAttr ".s" -type "double3" 1.0495082267377434 1.0495082267377396 -1.0495082267377409 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "E9435BCF-4B8A-7A69-B311-D3AA42109BB1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "A0295380-4104-EE61-ED32-9CBD6378E70D";
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
	rename -uid "F6B14FDE-495D-28CC-CF2E-BD8B828FDD5A";
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
	rename -uid "8A7F9A92-44FA-E7F3-08C2-F58A95079990";
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
	rename -uid "41FFB1DA-4A30-015C-80FD-48AB2509C2CB";
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
	rename -uid "96BD4865-4854-53C4-8ABB-F1A8ED2FE70E";
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
	rename -uid "30FA9A10-4B69-F93E-C651-E28C8B30F02E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.50752147050984 0.0092761897382758873 0.11673327753265024 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377371 -1.0495082267377371 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "D8E63296-4A44-7055-2F2D-CD92492806C0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "896494F4-4085-ECC1-4739-C3B8F95BB9AC";
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
	rename -uid "FCECD9DF-491C-CC39-4848-3B9B9FF02900";
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
	rename -uid "E6D94031-4D55-EF10-89FC-ECB9FD12EF34";
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
	rename -uid "E6F14927-4FF0-73BB-1436-F687AE2189AD";
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
	rename -uid "A267C78A-47EE-20F3-D6D1-9C873A44DDF7";
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
	rename -uid "1DF14567-4906-AD5B-9996-3A8A17CD7220";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690754 0.19144303592045891 -4.2508893276606347e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377405 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "A9552C53-4F74-8B05-FBC3-44AACE25FC86";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "D748D88D-4262-F630-0313-EE94D4DBF958";
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
	rename -uid "1EEAE431-430B-3DAD-FB67-C7B669F227E3";
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
	rename -uid "0BF4B457-428B-1E9B-5E28-3384C5FD47B2";
	setAttr -k off ".v";
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
	rename -uid "4EDEF979-446B-F2E0-049D-FC95CA789C5D";
	setAttr -k off ".v";
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
	rename -uid "D70EE216-4CDD-182F-6385-56A5B293B70A";
	setAttr -k off ".v";
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
	rename -uid "4F288EDE-41FA-B3E1-B245-B0A6A99F180F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "461BB4D4-496E-BBF8-F661-FA998425BF0C";
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
	rename -uid "4830732F-4139-7EAC-B81D-E480A266DAAF";
	setAttr -k off ".v";
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
	rename -uid "A50B0663-447C-63CA-EFA4-09B202501FB2";
	setAttr -k off ".v";
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
	rename -uid "13E7D2C6-4478-AB43-8A72-C9AFC344CD9C";
	setAttr -k off ".v";
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
	rename -uid "ED11FFB2-4AE3-8F44-E9CF-9DB699151191";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9F811C8F-4E21-701F-BAD6-249B40A85CED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CEC6F76B-4219-CC77-A890-60B60B6A176F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "86BEBDFA-4ACB-631A-357B-5FA592A9C7EE";
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
	rename -uid "B80E2425-4ADB-0AD2-122D-4E8A547365BE";
	setAttr -k off ".v";
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
	rename -uid "57E689DC-4E36-C407-622E-3C86E4626FAB";
	setAttr -k off ".v";
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
	rename -uid "66A82CF9-46DA-5E32-ADC2-9DA5B2647F15";
	setAttr -k off ".v";
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
	rename -uid "92962A5B-444A-BD8A-CC6A-7FB611BF45FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "02068777-4C01-52D9-CD99-E5B9C788C4C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5F9BE004-4B01-AF4C-EE75-BCB68882FED2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9C21FCF4-4A8C-A3B3-8FE4-AD99D6B57FE6";
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
	rename -uid "D117A59F-4C7E-357D-FF67-21897DB9EACB";
	setAttr -k off ".v";
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
	rename -uid "6A100A26-412A-4BD9-C8ED-0DAD86393A04";
	setAttr -k off ".v";
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
	rename -uid "CD2833D8-478B-8F2A-C20A-3EA01583C771";
	setAttr -k off ".v";
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
	rename -uid "0CDEC338-4AB1-4DEA-4170-CB9A1DAE632B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0917CE09-4A9E-E229-0F46-75A04DF2D0B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "646B54A7-4603-CD02-3E3E-A89E436EC1E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D8493110-4D06-85D4-5F49-C189A1294DD4";
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
	rename -uid "046811E7-4D6E-D4DF-4301-00AFE8415745";
	setAttr -k off ".v";
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
	rename -uid "E667938F-471C-1013-297C-D294BB3EA3A4";
	setAttr -k off ".v";
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
	rename -uid "D4EFD3B1-4557-22A7-299D-28B7DBE5941C";
	setAttr -k off ".v";
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
	rename -uid "62521FC9-42B2-FB5F-537A-509F5930BFAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "1BCD1828-4586-85C8-40FC-F8B97A662EEB";
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
	rename -uid "C93B8539-46DC-62E4-5FFE-4FB9617F10B2";
	setAttr -k off ".v";
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
	rename -uid "D6695E13-4EC2-6D8F-2801-DFA6159B1EC8";
	setAttr -k off ".v";
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
	rename -uid "53195F8A-44B0-CE3F-D248-86BB3FAC773A";
	setAttr -k off ".v";
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
	rename -uid "5A872461-4E8F-94B5-BB4B-DA9F73857113";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "248E2F04-47A9-8434-0D43-4AB398EA7145";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1117F740-4B2C-24E5-02BB-428E7BFCF286";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C1FFDB4A-4B38-1861-A479-4D880AFACB90";
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
	rename -uid "19F63789-45BC-A21F-326B-8A914B5E155E";
	setAttr -k off ".v";
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
	rename -uid "88912A42-4B40-3DD8-8D00-C5BB6EFA1F42";
	setAttr -k off ".v";
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
	rename -uid "475BA0E2-4229-EC94-966D-51874878BBC6";
	setAttr -k off ".v";
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
	rename -uid "6BC0A484-4AD0-4B0C-65D1-DAA012C32259";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BCB4E287-48D8-3988-A2A2-0DB739397A77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0961DC4B-4AB0-E985-F369-A3802BA85FD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "10D5C16F-4CC4-D0D6-55D7-A38011762051";
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
	rename -uid "EB956678-42EE-01B0-4AC2-FF9732028802";
	setAttr -k off ".v";
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
	rename -uid "A6CE5F4D-4619-1620-6110-81B004902DA7";
	setAttr -k off ".v";
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
	rename -uid "B3C6B565-4A57-6D00-3ECE-FC8EEC2876B4";
	setAttr -k off ".v";
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
	rename -uid "5D25DDEC-4DE0-57E8-3158-F68B23C5CD76";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "83C36287-4D05-1D5A-3168-4FBF655D551E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6CD0023B-41BD-3172-F077-69B6D10DAB41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6F639EA6-4614-EE41-2ED1-FCBC9CC6F00A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 2.8990169397258372 84.223472754416576 2.9137877746396641 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "877467F0-44CC-0C41-8F64-C5A8DA53AB63";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "571465A7-4D53-CA3D-796C-4F8D6D94FA29";
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
	rename -uid "3DEF8A70-46F5-1FA8-292A-5484098E34B8";
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
	rename -uid "38F04D24-416B-89B0-FF8D-978A09F0FB0F";
	setAttr -k off ".v";
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
	rename -uid "1C7187C4-4B10-A271-DDA0-CEAD83B93934";
	setAttr -k off ".v";
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
	rename -uid "AF822E32-4DAB-7F9F-9E9D-FF8D10C0B3DB";
	setAttr -k off ".v";
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
	rename -uid "4F5FD9E9-4F58-B2CA-2145-AA8B3BC9E7BF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "61296967-4D72-F108-4AB8-668E1E3EF64F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "35E0F30C-4B20-F0B6-7FC8-39AA69162664";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "18BBF016-4B3B-EDF8-3119-1FBF99FD1F8F";
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
	rename -uid "5100B6DF-4A73-D56A-AE67-AF922E83CF8C";
	setAttr -k off ".v";
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
	rename -uid "514C2371-44DF-54CB-563D-D38BDEDBC948";
	setAttr -k off ".v";
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
	rename -uid "0FC1EEBC-4185-CFDD-D711-95895DBD612B";
	setAttr -k off ".v";
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
	rename -uid "9D80E7EB-4607-8244-D08D-9EBBD6CC327F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8CFB04F3-45D6-ADD6-79D4-119743047912";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7EE49263-4096-D869-5646-1BB1D7D814D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4245279E-4EE2-3005-E12E-F580EDA7807D";
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
	rename -uid "B5B857C9-4453-9155-8396-A18BF726C684";
	setAttr -k off ".v";
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
	rename -uid "2F5E3CBE-4F04-C143-799A-3A9DF55AA810";
	setAttr -k off ".v";
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
	rename -uid "C4C64A5B-47F5-D820-9F4B-588CC54ADC4C";
	setAttr -k off ".v";
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
	rename -uid "A8765B16-4430-8DD0-9FE6-D8BD8A779452";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1B586CB5-446C-568C-0A7D-FAB1EC63CAE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9A10B137-4F79-BC64-F54E-20A7DFA9D7CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6416CC6D-4BB0-44CF-37E5-E6A10D887FFC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 2.8990169397258372 84.223472754416576 2.9137877746396641 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "8DADEC5D-447C-92C0-B027-398E7D06BBEE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig1" -p "foot_L0_1";
	rename -uid "BB0F598C-4FBE-DC60-F0D8-E1B7A679BFD1";
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
	rename -uid "1650B8D0-4F5E-CD68-D92E-E8971DE4515A";
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
	rename -uid "8D059E2A-4ED1-6DB3-7D7E-94A3A92E723D";
	setAttr -k off ".v";
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
	rename -uid "5D10869B-414D-4484-8C40-A8A790C7A95F";
	setAttr -k off ".v";
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
	rename -uid "4C0BFA42-4AEC-46C9-DBDB-C0A78CCF2A9E";
	setAttr -k off ".v";
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
	rename -uid "7E5A134E-47C2-4907-AE40-7F8CEDD8D04E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F34BE052-44CE-F59D-6263-8EBBC4F02288";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209228 0.19144303592045905 0.96902196420373699 ;
	setAttr ".r" -type "double3" 89.999999999997527 89.706856137729829 -2.4866037227258996e-012 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377378 1.0495082267377405 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "26F3C266-4CFF-0B4B-55A4-8DA4B880414D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "7F0F79AB-46A2-B2B2-5B95-4EAF10CA6DE6";
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
	rename -uid "75EFB0A8-4B24-9D06-14B0-4DA3C4729F8B";
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
	rename -uid "C8E33DA2-4FE8-C037-7C9B-E8B384B65333";
	setAttr -k off ".v";
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
	rename -uid "3ECACF99-426F-A192-8B04-8DBD889021C0";
	setAttr -k off ".v";
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
	rename -uid "17D90BF9-41FD-D19A-00BA-A8B8C74F444D";
	setAttr -k off ".v";
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
	rename -uid "C0A07951-4647-F4F3-4729-9DA4DB09EC1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "81D772D5-450A-3749-6D55-0193B0FE507B";
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
	rename -uid "CD7D565B-4FDD-0EF0-48AB-179ED404C541";
	setAttr -k off ".v";
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
	rename -uid "14E9A077-49D0-482C-E1B5-07B27B4FA900";
	setAttr -k off ".v";
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
	rename -uid "97405BA2-4C65-EF27-C17D-D6AE386FF2C2";
	setAttr -k off ".v";
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
	rename -uid "6634A223-4E77-BE0D-1EA4-78A1656FCB4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ED0A9BA5-48B7-C412-4B41-6B918427E54D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B840F269-43C2-4AFE-F5D8-E7A6FD09F0AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7F828EB5-49FD-25B1-4411-18AD36682224";
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
	rename -uid "612C8260-4FCE-D632-C035-08BF74383A26";
	setAttr -k off ".v";
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
	rename -uid "F516366C-4CCA-9FE5-E8D8-B1A99F94E789";
	setAttr -k off ".v";
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
	rename -uid "3CF3918D-4277-2A3F-3D1D-8DB48823836A";
	setAttr -k off ".v";
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
	rename -uid "EEF270E8-488D-ADD6-9450-65BD3EC41346";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ECB44E90-49BE-3763-9CC0-A68B1E550236";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "14344E90-4FA3-0ABC-2734-399A14B13175";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "32625055-4C42-C698-FAB0-A4BCEC3C8D8A";
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
	rename -uid "A0F96640-457B-5D0B-5FE7-EBADCA55D7D1";
	setAttr -k off ".v";
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
	rename -uid "201CAC86-4084-5CFA-7889-618C09CA0E9C";
	setAttr -k off ".v";
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
	rename -uid "3E5F6440-4712-6178-87A6-71B694383EAD";
	setAttr -k off ".v";
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
	rename -uid "BAB6EDC8-48E7-1E6F-C419-10B0FCCD6958";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "86026D02-4B35-71FB-C1E3-B7B0500158DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B22DEBCB-47CE-062C-FCA1-83960570189D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "72E986F2-44C6-34D1-2D8F-EFA19A58065E";
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
	rename -uid "99EB09D9-462F-E7A5-3730-CD8771B8AACE";
	setAttr -k off ".v";
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
	rename -uid "1CA3E32A-42B1-9265-462E-E3AD41289765";
	setAttr -k off ".v";
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
	rename -uid "5CDE512E-4FDA-386D-B5D6-DCB8DAEFC555";
	setAttr -k off ".v";
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
	rename -uid "1BF74BCB-4267-9988-78AA-1281C3AB2B91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0644CFDD-4230-B06D-95A0-E99C868E5CAC";
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
	rename -uid "37FCAD84-4F4D-4354-E25A-D5919DBB8522";
	setAttr -k off ".v";
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
	rename -uid "CF404E71-45D2-3C30-6200-1DBCD4F9AC34";
	setAttr -k off ".v";
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
	rename -uid "F987A8D8-4514-82DB-F521-8295351C7579";
	setAttr -k off ".v";
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
	rename -uid "59D8E551-44BB-3705-210F-09A9D2BE4671";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F7CB66AF-4B01-3DA0-2BAD-2F8F3D2C6EA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "439AE7E1-4A7E-AD03-F663-5881E755AFA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2AED2071-4F43-A0BA-08CF-FD968EFFB31F";
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
	rename -uid "EC8BFCB3-473B-C691-E6D3-70A9ED1BF170";
	setAttr -k off ".v";
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
	rename -uid "83210564-4476-49AF-8140-80B561E05321";
	setAttr -k off ".v";
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
	rename -uid "90C10BEA-462C-6DD6-7780-54A4E64011AD";
	setAttr -k off ".v";
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
	rename -uid "7BE1479B-4FE6-72EE-0288-84A06F2324AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CD378678-421C-C89F-7433-62AE7E92AAA7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "987E4767-43C5-5E26-2674-5E99DB83CF5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "04DA38EE-4309-6497-4778-DD921F008A9B";
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
	rename -uid "A710DC75-40F9-5978-6178-699BAD48FAC6";
	setAttr -k off ".v";
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
	rename -uid "D4CFCB78-4129-EEED-3EF3-278EEC74DD19";
	setAttr -k off ".v";
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
	rename -uid "6E13BA96-4F58-2F9A-8B80-1EBE535D48D7";
	setAttr -k off ".v";
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
	rename -uid "27DA81C0-4E12-7634-0BEE-76A19CC0E0EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D1DB7EE6-4272-BD0B-E98A-D9B46BC23575";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "16237C91-4782-9921-4991-C5B15293B7AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "13A9D847-4076-CE70-0E57-EFB5CA5FD470";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415475 1.059143706286116 ;
	setAttr ".r" -type "double3" 177.10098306027425 -84.223472754416591 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "8DC2D90C-4E4D-8F2C-7FCE-80907B6C3885";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "0134802C-466B-E39B-BB70-20BEF4138B1A";
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
	rename -uid "E0DBBEFF-40EE-0FBD-A6EF-26BD8BE5612A";
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
	rename -uid "5C9DCC4B-4206-CCAE-EC7C-61A696491A04";
	setAttr -k off ".v";
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
	rename -uid "725F407C-45FD-CF03-3CA1-61A7526DBD70";
	setAttr -k off ".v";
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
	rename -uid "ACEE7EDB-421A-B899-A3FC-8EAE74DAC43F";
	setAttr -k off ".v";
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
	rename -uid "F70BCFBD-4758-F2B6-6D9C-CF94E616275B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "74783336-4E0A-2C45-2AEE-6F99CB1FDC08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FAD804EF-4381-FE38-CAC2-C29407C32BB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BB760DC5-46F1-5472-DE5B-4BAC958A18D8";
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
	rename -uid "16DD1F47-4ED1-629D-DC80-5ABBDBFE411E";
	setAttr -k off ".v";
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
	rename -uid "92C71CBA-4124-4749-B74A-EEABBDF601BB";
	setAttr -k off ".v";
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
	rename -uid "52F407BD-4F2A-8393-9A22-52B9862BB396";
	setAttr -k off ".v";
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
	rename -uid "AADBFAA1-4BB6-B723-FCAB-339DCD7FA4B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D15B2A30-4688-C419-E8D2-C18830D58F92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F822765B-4CEE-9A82-55E4-F4AE0625ADC8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DAA13AC8-4635-720D-A8FB-E09C4107AC02";
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
	rename -uid "607597C3-45A0-6CAC-75E3-E7B1FDFA188A";
	setAttr -k off ".v";
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
	rename -uid "EE774DB2-4457-D3CA-1CF0-E680311D3362";
	setAttr -k off ".v";
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
	rename -uid "1B5C5698-4BF1-4DAD-7287-81B6F343D664";
	setAttr -k off ".v";
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
	rename -uid "513FFA2D-466B-FB50-EB14-F08DB23CEB1E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B7AA6BF9-4A11-3B31-911B-DD975728FD43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9F459342-4A62-AD7C-B4D3-01A4FB65FA44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C0437A35-4743-745F-1E1F-3D88BB0ABD4F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415475 1.059143706286116 ;
	setAttr ".r" -type "double3" 177.10098306027425 -84.223472754416591 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "577BE9FD-4090-0F68-AECE-439634154886";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig1" -p "foot_R0_1";
	rename -uid "C83EE085-4FC6-2F19-A9D6-B185614B889B";
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
	rename -uid "F8A79AE1-4775-01E7-CAE4-04BA6DBA3C2D";
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
	rename -uid "BA07532B-48A0-4EA6-B6FF-5CAA3308C365";
	setAttr -k off ".v";
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
	rename -uid "4F14880D-41DB-AC65-DDEE-EB9EA7F663C7";
	setAttr -k off ".v";
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
	rename -uid "590F7667-41E5-6913-D013-208D0F92BD2A";
	setAttr -k off ".v";
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
	rename -uid "355A7D1F-41AF-FB7F-2835-ECB70A19011E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "49CE87E4-4012-592D-DF70-C884B92EF11C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.21416685220923 0.19144303592045855 0.96902196420373488 ;
	setAttr ".r" -type "double3" 89.999999999997513 -89.706856137729943 -179.99999999999739 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377378 -1.0495082267377402 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "8A9588F5-474D-5B1F-B87B-309ACD32B596";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "FBC27898-4EB9-B9C6-DD30-CF8C4C73901A";
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
	rename -uid "A4569B13-4E91-A805-F086-8781905B3065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "7AF82810-4563-E37B-7315-C387BA284640";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "E92BD51F-427D-176E-1D1F-0C847C07960D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "686ACABF-4E83-DC03-3775-F0A0C4C13D90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion49";
	rename -uid "C9383DB9-4CEF-45A5-F7E2-AAB6A3E140D5";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns239";
	rename -uid "5F5314F6-4DE3-7A9E-BCDC-309683BC1191";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns239Set";
	rename -uid "6277032F-422F-52F6-27CC-FC83B5548114";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns239GroupId";
	rename -uid "722DB1E7-483B-3A22-8CC2-42B9D3B10654";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns239GroupParts";
	rename -uid "FABBAA6B-4199-A627-E5C3-1D80700F0FF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak387";
	rename -uid "16BDC164-40E8-4E05-6DC8-AAA59090E503";
createNode objectSet -n "tweakSet387";
	rename -uid "27C47840-4309-5F9F-2DD1-94B51CE6EB16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8343";
	rename -uid "12EE747A-4088-4DAE-3C6F-F1AA9EC92FB3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts774";
	rename -uid "4631CA41-4662-71DF-6AFC-36AE348B8A9E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion50";
	rename -uid "A1DD3649-47AA-1466-262D-88A486132F54";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns240";
	rename -uid "F0166F7A-474C-ED28-0756-E9866F1752BC";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns240Set";
	rename -uid "65C0D529-46B7-3943-147A-A2806919EB58";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns240GroupId";
	rename -uid "4F946815-4F32-9DAC-072F-49B1F8DF1D4C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns240GroupParts";
	rename -uid "33E34376-4AB2-42CC-9890-1494EE215361";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak388";
	rename -uid "0693BEC6-44ED-48FF-E0AF-6EB86511E741";
createNode objectSet -n "tweakSet388";
	rename -uid "943E700C-4885-6532-1130-208613881FE8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8345";
	rename -uid "04FA87E7-43C2-DC86-EE54-A8961D97C63A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts776";
	rename -uid "9F023BAF-4344-8029-E4CA-9F992E6BF50E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion51";
	rename -uid "4B2437A4-4723-A9C5-3974-67ADE6D606B9";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns241";
	rename -uid "05B97890-41D8-D7DF-50CD-D2AC45D0BB30";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns241Set";
	rename -uid "1207EF11-4CE9-472D-34AC-0A943B2BCE1E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns241GroupId";
	rename -uid "148B9E81-41FE-914D-AE7B-AAB6ABE0B176";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns241GroupParts";
	rename -uid "6F164831-4D1F-7E9D-EC71-E6A8ACEA7717";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak389";
	rename -uid "19F5F0F1-4630-CC1A-40CD-C09B43D4C1E7";
createNode objectSet -n "tweakSet389";
	rename -uid "AD5097E2-4595-29B1-7945-F69F8F7C68DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8347";
	rename -uid "77DB3BD8-4CF4-7C1F-2515-469A8A2DD4A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts778";
	rename -uid "1C04C1B2-41A4-D7C5-A8F2-028DD12C3332";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion48";
	rename -uid "9DA6B1A1-45C4-327C-BC55-77AFBB1D1BA4";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns238";
	rename -uid "A74E866F-4044-B1F1-81CC-EE8D5075B027";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns238Set";
	rename -uid "757988C0-49FE-DD8D-F8B6-B2B13A526719";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns238GroupId";
	rename -uid "71D2BE2A-4BBF-BC10-672F-758FD5E065CD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns238GroupParts";
	rename -uid "8D653F1C-42F8-BD3B-D89F-D88E2495BAA0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak386";
	rename -uid "E48B892C-44E6-E723-FCD8-C794E732B5FF";
createNode objectSet -n "tweakSet386";
	rename -uid "54521D38-4E20-DECC-DC10-8B8E4E17D081";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8341";
	rename -uid "48C5425A-40D8-CA2C-B132-2A832975D8B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts772";
	rename -uid "50516B85-43F1-82CB-F635-84A7DBA0B8FB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion53";
	rename -uid "830E4F95-406C-8E00-C896-3A8B3BAB3F14";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns243";
	rename -uid "E6E0C36C-41AF-B17E-9F40-CB9EF6F195B8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns243Set";
	rename -uid "FB6B0952-4C7B-8EA0-BA56-0D82E327CE7C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns243GroupId";
	rename -uid "57A78A61-47D2-BB4D-6416-26BE03304113";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns243GroupParts";
	rename -uid "BE8AFE34-416E-3568-E54F-26BC0C3E4868";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak391";
	rename -uid "AEF03983-4913-A957-5FA3-BF9AC5AD6F1B";
createNode objectSet -n "tweakSet391";
	rename -uid "246333A9-48DB-304D-D585-40A2F65A90EA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8351";
	rename -uid "3DB6226D-4730-72AC-1492-B48433E5AB61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts782";
	rename -uid "4721AEBF-42C6-8EDA-E7BC-8A99D5B20CA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion52";
	rename -uid "7044D57B-4212-B856-A7BB-82B5BFDFD89A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns242";
	rename -uid "FA1B5903-43AC-3804-CD12-36900369FA45";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns242Set";
	rename -uid "6486D3B4-49EB-ACF5-D927-BEAC258481C3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns242GroupId";
	rename -uid "64E418C3-41FE-85A4-851C-0A81C4CBD0D8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns242GroupParts";
	rename -uid "AA1E2F7E-4EAC-9BF9-3DC9-C694E2C1C938";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak390";
	rename -uid "4BC6BF35-450C-4CA3-0A2B-92979ADB5FFC";
createNode objectSet -n "tweakSet390";
	rename -uid "394520A2-460B-9706-A772-5EB4AAD1B935";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8349";
	rename -uid "1B22E666-45DB-1E5C-1711-9D9A0A45C2CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts780";
	rename -uid "BF8E2083-4782-5BDA-8162-12A9DC5908AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns237";
	rename -uid "5B79E501-4C3F-EAE3-9B35-75BE865ECD96";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns237Set";
	rename -uid "4B274F12-438C-A243-A0F6-07A5FCD85014";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns237GroupId";
	rename -uid "E8CA75AE-4690-F92E-B0D6-939558D8DA8D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns237GroupParts";
	rename -uid "FD6A9CC4-4C18-E44D-EBEB-31A1A213848D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak385";
	rename -uid "FCDA4550-461D-4B05-BF5A-D9B17CD7B22D";
createNode objectSet -n "tweakSet385";
	rename -uid "8E496764-490B-C358-DFB5-18AE837BFEDC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8339";
	rename -uid "E2DFE693-44D4-5CE7-0C79-F498A9F9AD7E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts770";
	rename -uid "042478D4-486B-7AFB-D26B-4D9215F453F9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion47";
	rename -uid "2B8AB517-486A-ECBD-7AA1-95A9FD9649F4";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns236";
	rename -uid "9966F983-47B5-BFB1-9BDD-708315DA13B0";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns236Set";
	rename -uid "BE71EC22-4389-8E87-D307-CE9E9FDB571B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns236GroupId";
	rename -uid "A50B7DB4-4045-E5C5-C3A0-E39718EC02C6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns236GroupParts";
	rename -uid "EA5E85F4-41D5-2095-2EDE-33B1EBACE3ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak384";
	rename -uid "C588A0E6-4420-57E6-6CFB-4885875BB779";
createNode objectSet -n "tweakSet384";
	rename -uid "7E76F451-4EE0-0163-E3D3-C6AD815F1064";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8337";
	rename -uid "2165D9E8-43D3-6E11-3BC1-C09A42A65131";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts768";
	rename -uid "72A65112-4BB5-8B20-7710-96AB35952823";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "B74FED8D-41FA-FE72-2AFF-7F8CB55DA98F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "C190593E-46A1-1D25-AD62-C2820B9BA003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns247";
	rename -uid "40EB49A3-4BBD-8C91-008F-3F9825171E05";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns247Set";
	rename -uid "09957A99-44F6-235F-2065-0AA8AC0AFFB5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns247GroupId";
	rename -uid "D5BB878B-4E73-0E71-F1BD-44A78236FC56";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns247GroupParts";
	rename -uid "E2564E64-4C90-85EB-0E7F-DF8DA5697031";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak395";
	rename -uid "A173F15B-4B75-8EC2-09EA-B1B4980B303C";
createNode objectSet -n "tweakSet395";
	rename -uid "5C5A567D-47C1-90D6-AAEC-479B735BE48E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8359";
	rename -uid "51F203A3-48CA-24CE-2FAE-F382F08D745B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts790";
	rename -uid "79FE552F-40B1-967F-453A-3D9A717CA885";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns248";
	rename -uid "3E46585E-405E-9FBA-ED82-B3B1D186A4FA";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns248Set";
	rename -uid "C062287F-46C4-1C26-0C15-4AB0630651BB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns248GroupId";
	rename -uid "A4164E0F-4AB2-9993-1DFD-1895597954C4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns248GroupParts";
	rename -uid "6BA8A615-4367-4633-FFDD-1480EF735F83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak396";
	rename -uid "7CAF8B53-4994-FC8E-CDBE-1D8E10C336F7";
createNode objectSet -n "tweakSet396";
	rename -uid "EA2B7EDA-42F0-12AA-BEDD-5C867B606EB0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8361";
	rename -uid "D275F56D-4619-521D-9000-629276CC3DF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts792";
	rename -uid "BB9059CD-404A-CF9B-DB03-E1B4D0E18F59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion55";
	rename -uid "1B8C6FC8-4B0E-F6CD-731B-1F8B553338CC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns250";
	rename -uid "118E6B5E-4B18-E5D9-E787-8C8796EDB91C";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns250Set";
	rename -uid "503A4A59-48BB-60D6-DC20-1BB73958013E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns250GroupId";
	rename -uid "1A502A1E-4BA5-DCE9-D1D9-0DBADEA77B63";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns250GroupParts";
	rename -uid "1B9621B8-478D-E34B-3018-DFB98AAE9B79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak398";
	rename -uid "1862EBE6-4816-E5C0-F49C-00AE39B74BAB";
createNode objectSet -n "tweakSet398";
	rename -uid "086C2C7B-46D8-27C2-351E-469EA197A82A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8365";
	rename -uid "D4FE4539-4478-9F9B-5A79-98A73FDF775D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts796";
	rename -uid "ECB4D643-441A-9783-F6CE-BF824A2C73AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns246";
	rename -uid "29092891-407B-E612-FDAB-359D0B25AC47";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns246Set";
	rename -uid "D7B8D8FC-4537-25A9-CC52-2F9C81E89108";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns246GroupId";
	rename -uid "51343713-4355-85C3-E946-38A00FCC4540";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns246GroupParts";
	rename -uid "D1CB3729-4D3F-AEE9-8D3C-009C9915509B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak394";
	rename -uid "3F46704F-4DAD-E0A7-A411-628A195303D2";
createNode objectSet -n "tweakSet394";
	rename -uid "CE007918-47D6-7F5F-3946-6094305FDB9F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8357";
	rename -uid "38BE6DF8-4D64-4993-58E3-0AA0B0195FB6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts788";
	rename -uid "93CE2C3D-4883-7C83-E99D-40842379F1EF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns249";
	rename -uid "46A6EB87-4D77-EB31-F545-12A8C9808B9F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns249Set";
	rename -uid "5B26FB01-441B-F7CC-60B3-CDA187E8A4DC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns249GroupId";
	rename -uid "761095DD-4F30-0563-F0A2-72A4868225D6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns249GroupParts";
	rename -uid "073E3149-4DA8-37E8-F92C-CEBBFB3A2680";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak397";
	rename -uid "1CEA30E4-46E4-778F-0461-029614EE2AB4";
createNode objectSet -n "tweakSet397";
	rename -uid "E89F67D5-4860-4DD2-8A00-3AA4FCA5A8AC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8363";
	rename -uid "055E604F-447E-7E3C-C092-64929FE0155E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts794";
	rename -uid "6BF225D0-41C4-4FB9-8B70-9ABC231922D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns251";
	rename -uid "FDF7C801-4632-24C6-05E3-E9A595CFCADF";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns251Set";
	rename -uid "30FDD45A-4C12-5CDB-2EDA-2F8D8A68D8B6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns251GroupId";
	rename -uid "25FB8039-4DBC-FBA2-F2D7-4C9682939E26";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns251GroupParts";
	rename -uid "4A217000-4657-B3D7-1863-B98172791C8E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak399";
	rename -uid "4332E7B6-4573-AC83-6E12-09ABB1458F7B";
createNode objectSet -n "tweakSet399";
	rename -uid "F96A939E-4F73-FBF2-0EF5-408908319D4E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8367";
	rename -uid "E4AE3D18-4DF1-D4BC-5181-A3B2F1FE4E4C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts798";
	rename -uid "341572B4-4DFE-F5CB-6E06-9FA150B13E46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns252";
	rename -uid "FEFAC68F-4D43-A553-FC35-7398B269BB1F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns252Set";
	rename -uid "C5BE24B5-4A74-55B2-5919-31B1B4F69E13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns252GroupId";
	rename -uid "1B6BE927-4EE0-BD2E-38CB-6D8FC92EFDA4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns252GroupParts";
	rename -uid "5C594132-4D98-08C6-4369-E392D8209B3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak400";
	rename -uid "CB6E0032-4E4F-13A1-09FF-56BE517E9506";
createNode objectSet -n "tweakSet400";
	rename -uid "930719DF-4331-387A-7737-208D284F1BBA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8369";
	rename -uid "F62B504F-4F31-0B7A-4B14-138FBFA07923";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts800";
	rename -uid "D16AA947-4843-F7CA-19A5-DEA76AD081C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns245";
	rename -uid "8930C511-4E67-B5F7-8622-61BF1336713A";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns245Set";
	rename -uid "E9810E92-46D9-7B00-AAB7-89B1D9C6DBAD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns245GroupId";
	rename -uid "389F8616-4179-EF52-C335-7BBDDE4AA5D6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns245GroupParts";
	rename -uid "2610D84E-4932-2392-E228-298C9C9CDC21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak393";
	rename -uid "D68F760F-4E55-EA43-41FC-29B7E37510A4";
createNode objectSet -n "tweakSet393";
	rename -uid "3489222C-4CF4-A561-2BEF-219A426724BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8355";
	rename -uid "964E4CCF-4C48-BC7C-1DD7-329CBC7A9E41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts786";
	rename -uid "61869BF9-42CA-21A6-FC06-9789E0144518";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion54";
	rename -uid "D3A45782-4539-EB31-8CA6-73B3E6443D48";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns244";
	rename -uid "D5A849E7-4CAB-D099-691E-FB87BC52A8C8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns244Set";
	rename -uid "2EFE7445-497A-4887-BC0E-06886E0D9866";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns244GroupId";
	rename -uid "3A03A588-4043-CEF2-D979-6ABE910EAD6F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns244GroupParts";
	rename -uid "8CCA3CE1-4FB9-5202-2183-BE9F86C8DC6F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak392";
	rename -uid "7F5D099F-4BC0-0933-BE66-D3BDBEF32A1A";
createNode objectSet -n "tweakSet392";
	rename -uid "669204DD-47FD-D2B4-60C8-078B4E85094B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8353";
	rename -uid "06D4031D-427C-7C06-BCE4-528CF9B20DD3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts784";
	rename -uid "D9F07F9D-4C20-1F37-C815-809B1F5A6A02";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	rename -uid "2AF948E4-4462-77D3-CD55-11BDCF6AFEC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	rename -uid "02FA4BF4-4325-F2C6-9769-6C952F4CF5F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion58";
	rename -uid "6B82C46E-4F34-C06F-9E33-19BC95603924";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns270";
	rename -uid "38A5B9B3-44C0-2690-5600-FB9B3D3B4A7E";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns270Set";
	rename -uid "7AD12A97-4CC1-A7F4-4A0F-0E8E09F80F9C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns270GroupId";
	rename -uid "111E595F-4791-93C0-12A5-4ABEDAB9BC9F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns270GroupParts";
	rename -uid "E8B5E887-4288-EF43-5F35-6B98DB264782";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak418";
	rename -uid "5782FF9B-48E2-586F-A885-068288FC47C8";
createNode objectSet -n "tweakSet418";
	rename -uid "E21BEF08-4606-A2B2-4E22-79B0410A85F3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8405";
	rename -uid "9A68A6A0-4092-846B-A0E5-8B8BC9DB7D38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts836";
	rename -uid "C8A4D41E-4B97-D671-3A24-8F903752B4A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion59";
	rename -uid "DA258998-4EB5-AA8A-2534-85AF9EC81323";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns271";
	rename -uid "172E0102-4429-74D5-B272-39BFCF89DAEB";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns271Set";
	rename -uid "E7357687-45DC-BBD0-C332-389A40FD414D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns271GroupId";
	rename -uid "10562903-4CD7-CDBD-9312-B2BA906912A0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns271GroupParts";
	rename -uid "628D54C1-499C-2CC5-413F-AE8B8012CD4B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak419";
	rename -uid "4E9F7923-45A4-3A27-F4F9-6BA24E831A7D";
createNode objectSet -n "tweakSet419";
	rename -uid "12F691E9-4649-6130-1FC5-41BAA39E95DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8407";
	rename -uid "E4E228D8-48AE-6D8A-0823-6EA742FC7472";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts838";
	rename -uid "9E485806-47AA-2FDF-0F85-70A4E06B94A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion60";
	rename -uid "57A1A2C6-4B7A-B661-7FDA-FB9DEA95F3DC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns272";
	rename -uid "EBF85F65-4F81-4D81-69BC-AAB9CFA47E1B";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns272Set";
	rename -uid "4DAA0B22-45F8-332F-64E5-66AAD7643539";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns272GroupId";
	rename -uid "0E905372-43C0-A6CF-BB06-7B9D99664C6F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns272GroupParts";
	rename -uid "5FF32202-4E21-A93A-D19F-6799EBA5AE1B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak420";
	rename -uid "80E7E9C4-4C55-E6D0-F7C7-1A9923729DAB";
createNode objectSet -n "tweakSet420";
	rename -uid "F8F42EF8-4E96-F2E4-372A-EE86D0384531";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8409";
	rename -uid "5B846DDB-493F-7361-6275-2BBA0F578349";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts840";
	rename -uid "6D2E57F5-4E36-9E58-FCA1-378B9111A236";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion57";
	rename -uid "48A8F8F2-42E2-50D5-7BD9-2F8CC0B41196";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns269";
	rename -uid "37797D1C-4E2A-A8ED-8E09-089F3B8E3FEA";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns269Set";
	rename -uid "98C00F5D-40D4-110C-C702-8389C8A44D0F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns269GroupId";
	rename -uid "C0520E70-477D-D7C5-6CCB-CABF395CAF9D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns269GroupParts";
	rename -uid "9AC645B7-4C46-6A59-A3C5-D6BF98FAE849";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak417";
	rename -uid "B2BA5E2C-4B95-75E9-CF62-64A1FA34574E";
createNode objectSet -n "tweakSet417";
	rename -uid "71ED9223-4483-BD87-C77D-21B3CBA195EF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8403";
	rename -uid "4A7FC365-4DE3-DD63-1FF5-D79B74C850EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts834";
	rename -uid "B3ACDDE4-4520-EF29-09ED-AE96459B1C28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion61";
	rename -uid "C9C0E3F2-48A1-0FA9-7206-62A019F08BC0";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns273";
	rename -uid "38A193CB-464F-F780-C334-99BD02F0AFE4";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns273Set";
	rename -uid "44A240AB-4D41-9E8F-47B0-6D990C2D23A0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns273GroupId";
	rename -uid "39BD8F71-47BA-E718-7D7F-908F111A8376";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns273GroupParts";
	rename -uid "0176E326-4D61-BC24-9985-14B38FDA964A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak421";
	rename -uid "C9E72E17-47E9-8E6E-8077-60812960EEC2";
createNode objectSet -n "tweakSet421";
	rename -uid "8847CCD3-4FE0-6735-0E09-C7A865E07463";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8411";
	rename -uid "3798242B-4BC4-B061-D16C-E8817F6C0286";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts842";
	rename -uid "1BAC4FDF-44D3-65FC-3620-159FD1DB3A30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion62";
	rename -uid "34E49530-463C-F751-8734-40894EE0BA9E";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns274";
	rename -uid "1B326763-4F71-216D-42A8-DDAA3CFA9A01";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns274Set";
	rename -uid "582D4DF2-4673-ED36-65E6-5D8B42BDB574";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns274GroupId";
	rename -uid "0095FB4E-430D-0600-83EE-18A678421F72";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns274GroupParts";
	rename -uid "0A5CD465-4302-D28B-D7B3-B68EDFDF62E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak422";
	rename -uid "3AEBB78F-4936-20A4-8021-7C8516EAA33B";
createNode objectSet -n "tweakSet422";
	rename -uid "24CA1AFD-4B65-1BEE-62B7-C6A1B3733EB3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8413";
	rename -uid "5303A8DF-4065-1DB1-3745-EE94F2DE0886";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts844";
	rename -uid "87E1B188-40D5-DE23-23F4-B39F4E7CCCAA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns268";
	rename -uid "C5BC84ED-46F3-CD18-76BA-768236C275C3";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns268Set";
	rename -uid "4681248E-4757-FF6D-115F-E88B4A6822AE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns268GroupId";
	rename -uid "AFA23D0E-4F3F-A549-160C-EB8069507994";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns268GroupParts";
	rename -uid "848F67E7-49DF-AE4E-BE17-D89C55BC0A16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak416";
	rename -uid "0E21C20F-4B9A-12D1-1DBA-3CA3590C0960";
createNode objectSet -n "tweakSet416";
	rename -uid "A9017BDA-4840-6F52-68F1-0AA2BF751C53";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8401";
	rename -uid "CC8A2D79-4ABC-A4EB-662A-D19B581D25E3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts832";
	rename -uid "E9DC4536-45C7-8F19-0F80-AAAB57C42C26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion56";
	rename -uid "3D0D7B92-40AA-73A7-C439-3BBE4CD09EA8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns267";
	rename -uid "1CA8E970-41B4-5B8A-54B5-14B0CCB4FB50";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns267Set";
	rename -uid "7D00C521-46D5-B16E-B2B8-E9ABE1C24177";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns267GroupId";
	rename -uid "EC280262-4E9B-27DB-FA3F-9D8A100F94C7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns267GroupParts";
	rename -uid "DE35ED19-4643-56A3-0B55-3798D1A4D8F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak415";
	rename -uid "291D13BE-452F-E415-9558-8BAC0E3D8DB5";
createNode objectSet -n "tweakSet415";
	rename -uid "9D5A9CC1-4EB2-C303-E0C0-1C9EC011F390";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8399";
	rename -uid "F451A997-4EDB-AFF6-E801-79B3DC749462";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts830";
	rename -uid "281D006D-44CF-20CD-98C5-EB897787D229";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion46";
	rename -uid "27EFF863-4B17-4AA4-F96E-EDA741DCE0DD";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns235";
	rename -uid "26C9D8D2-4EA0-C2AE-674F-8E9FEDCCBBCC";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns235Set";
	rename -uid "27F4B94F-4809-884E-5134-ACA09E4C1588";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns235GroupId";
	rename -uid "A85904A9-40ED-C1F4-07D8-0A85F0DF38CE";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns235GroupParts";
	rename -uid "D414F9DD-4156-1F25-6B82-C5B7EC16C1E9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak383";
	rename -uid "1E7BB270-4BE5-CEF8-DD7F-97AA389730DE";
createNode objectSet -n "tweakSet383";
	rename -uid "3712D53F-49B4-C52A-0E80-F3A4C789D0F4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8335";
	rename -uid "04FB4B47-4EF6-DA94-2204-E6AFA938B65D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts766";
	rename -uid "60E3C514-49F2-F416-78B6-B99B0C990495";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "95D3288F-4626-355E-A601-659FF7CED286";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "32362F3C-4573-8217-D0DF-5D9BC9D64429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns262";
	rename -uid "42302631-4050-E3BB-5F2B-1B88CB0C6B9D";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns262Set";
	rename -uid "12DB978F-40D4-AE73-1400-0DAA2C52564C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns262GroupId";
	rename -uid "0C6D46F8-4A13-9B9A-B1D1-8AA31BFEBBCF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns262GroupParts";
	rename -uid "B8BF1EDA-4247-39FC-403F-838A551FE1D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak410";
	rename -uid "CBC16965-4260-2452-2C67-D6985B440DE3";
createNode objectSet -n "tweakSet410";
	rename -uid "7C4AF5C3-41BD-F280-4C42-0D874C586EA5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8389";
	rename -uid "D4F7D91C-4B18-91D3-A175-E4A22597DB21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts820";
	rename -uid "E95EFA78-4E3A-C22F-E01E-F6A6CDE6886A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns263";
	rename -uid "F8E63152-41EF-26A5-4332-AFBEDCB9C784";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns263Set";
	rename -uid "37E31B61-4130-4F1C-D4F8-55A609FFB4B6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns263GroupId";
	rename -uid "82F6653E-4824-149F-E08A-4F99F8EE8A33";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns263GroupParts";
	rename -uid "781E3AE9-4203-633F-AF28-90BBA1E4BD4D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak411";
	rename -uid "B09AD52A-4799-5D87-13E1-228B62233927";
createNode objectSet -n "tweakSet411";
	rename -uid "3EB5FA49-4009-7959-C58B-3A8FCD56A484";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8391";
	rename -uid "5AF88A87-4F6C-F1E4-7C6A-3F88A64156EE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts822";
	rename -uid "AABEB75A-4BF7-B9B8-5512-63830CB2F2E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns261";
	rename -uid "7E762F7D-4161-A7B2-30FF-59B58DC2233C";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns261Set";
	rename -uid "0F8F56C4-4968-437E-2FF2-299B47004678";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns261GroupId";
	rename -uid "125DD967-4645-0B72-BBD0-5B91D4A50452";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns261GroupParts";
	rename -uid "632762D2-44B0-A49F-4C7E-D99B6DC4BEF5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak409";
	rename -uid "A5909356-4DDB-B629-B282-3FA36EB87B8A";
createNode objectSet -n "tweakSet409";
	rename -uid "1CA7C78A-440B-09DF-1176-0B8D820FA5BD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8387";
	rename -uid "03E073D0-472C-BD45-E615-C3830E6C3CB1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts818";
	rename -uid "04FCAD5C-4B51-D791-93F3-F584FE1A6E8E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile1";
	rename -uid "1F3B2205-4BED-022B-287C-4D89F8E6D9DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile1";
	rename -uid "84051B5A-491A-CAEA-49F1-FA8F0CCD3B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns265";
	rename -uid "037C4073-4A6A-97DC-FCC7-2C925D74B09A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns265Set";
	rename -uid "25026973-486D-A0F2-458A-11AEB33E9049";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns265GroupId";
	rename -uid "560A8DC8-4DB1-8E10-C7D4-799A1BDEE345";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns265GroupParts";
	rename -uid "6153EE06-4F02-14B3-7CAF-20828AA7B09B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak413";
	rename -uid "3F770868-463D-39D8-8260-E29D2DC0055E";
createNode objectSet -n "tweakSet413";
	rename -uid "3649881A-4C40-1754-351D-AC8855A42B92";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8395";
	rename -uid "91674510-4ABD-8EAF-5A72-869419013DB2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts826";
	rename -uid "8BDAD8EA-48B6-465F-5E7B-7A99A02F8358";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns266";
	rename -uid "B2659CE8-4374-6157-F2AA-F3AFC8129AD0";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns266Set";
	rename -uid "ECD6D592-45EB-C414-632D-4CBDD2A24C38";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns266GroupId";
	rename -uid "8DC8CC2E-4D47-67B3-BA13-22A0BAFCC53C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns266GroupParts";
	rename -uid "E02A59E7-45F2-3EF8-D5D7-5B8FC5183F46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak414";
	rename -uid "E5F2DFB1-4478-FC8B-E8AF-1AA4B3AFDE6F";
createNode objectSet -n "tweakSet414";
	rename -uid "F9C757B3-42A2-3A00-6BB7-E68E73632EC5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8397";
	rename -uid "F3C4903B-4FF2-9E80-A897-AD9A3C26CA53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts828";
	rename -uid "107FB873-4D11-B8A1-912E-3283E364B8EF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns264";
	rename -uid "873CA911-41AF-6CBA-BFC9-AC9B573D779A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns264Set";
	rename -uid "C377B6CA-41F8-27C9-F600-779B5F869E9F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns264GroupId";
	rename -uid "8DA5427D-4F07-805B-A166-0988C728F7F2";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns264GroupParts";
	rename -uid "2430C2C0-4FEC-58E8-7FF0-22B79BE2A900";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak412";
	rename -uid "1D00AF42-479A-F12B-7A07-E992BAC72E1D";
createNode objectSet -n "tweakSet412";
	rename -uid "8E189E52-4FF3-7EA6-78CC-ADB50B3B7AC0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8393";
	rename -uid "BDC4EEB4-4124-D3D7-5F88-2AB09FD35FBA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts824";
	rename -uid "CC04697B-4495-FDE7-791C-73B85444CE2F";
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
connectAttr "foot_L0_Shape1Orig1.ws" "groupParts822.ig";
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
connectAttr "foot_R0_Shape1Orig1.ws" "groupParts828.ig";
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
