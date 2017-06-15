//Maya ASCII 2016ff07 scene
//Name: biped_guide.ma
//Last modified: Thu, Jun 15, 2017 06:31:56 PM
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
	rename -uid "E74F30FA-4B82-4536-C034-C2BBBF624FE4";
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
	setAttr ".synoptic" -type "string" "biped_body";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-06-14 15:56:14.971000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.1.1";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "BC191508-45CD-F1A8-E8B8-91AE7ED0A6C3";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "D5B55B92-4169-36B2-1958-61BF1BDF3C3E";
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
	rename -uid "39922C99-410F-9578-0ECA-6BB9C46200BB";
	setAttr -k off ".v";
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
	rename -uid "F3946CA9-4D39-0D03-AC53-C58E11E7AC92";
	setAttr -k off ".v";
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
	rename -uid "D29F0D62-43BD-E3B8-841C-74BF7381AB43";
	setAttr -k off ".v";
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
	rename -uid "48424C0C-4598-2211-7405-0BBCAB961F22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "8272041B-4E80-1C78-FF44-9DB7746168B0";
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
	rename -uid "AB0A8A32-4C9A-694B-ED27-F6ADE02B37FA";
	setAttr -k off ".v";
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
	rename -uid "80197FB3-4D8A-48F4-59B5-C6B57377CBF1";
	setAttr -k off ".v";
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
	rename -uid "27ED67CC-4C99-C9B8-E4F7-A892D1D211BF";
	setAttr -k off ".v";
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
	rename -uid "9D1B7FB6-4E8D-BE5D-1935-D1BF04F5471A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B5EEE046-499D-E778-46F9-18AC68C3842D";
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
	rename -uid "EDBD72CF-47A0-8C3E-52F0-10BE9A134EAF";
	setAttr -k off ".v";
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
	rename -uid "685912EC-4AFD-65C7-165B-B1908279C869";
	setAttr -k off ".v";
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
	rename -uid "747FDF98-4460-6E1E-0BB5-46B001E69DF5";
	setAttr -k off ".v";
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
	rename -uid "E9916B72-447C-1CAE-68D4-47848BA13606";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "6DDF0779-468D-0569-A5C5-B38B80D853C8";
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
	rename -uid "F14652B9-43EE-B65F-5800-5894A1FBCCB8";
	setAttr -k off ".v";
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
	rename -uid "E7852130-4A85-A66E-E61B-999887C2C016";
	setAttr -k off ".v";
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
	rename -uid "CA59E920-4064-FA70-80D8-BFAA4DE96F64";
	setAttr -k off ".v";
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
	rename -uid "214AB977-42B7-2ED8-29D2-678324C983A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7F9EC8EC-47BE-6CB9-5C93-3F9AB06B5C75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "32CC5626-4C55-65F3-EE86-05A69937401B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "882A514B-44EA-F3E5-F19E-FEA6FBC9E293";
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
	rename -uid "FE39E903-4A4C-6ECB-587D-839B2356AD82";
	setAttr -k off ".v";
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
	rename -uid "D0D895ED-434E-3ED3-73E7-6AADE804160D";
	setAttr -k off ".v";
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
	rename -uid "E6360BA6-41C9-B51B-3E5E-60B73733F6B2";
	setAttr -k off ".v";
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
	rename -uid "20941739-4F54-6B16-6838-66BE5E771EB0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "993E75DF-46E4-7EB2-D636-39B6D2BF76D0";
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
	rename -uid "8DD76A42-456F-C330-5F9F-E5B6466E7818";
	setAttr -k off ".v";
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
	rename -uid "81D0A3CC-4021-E5E2-6422-84B58968037B";
	setAttr -k off ".v";
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
	rename -uid "3D69930C-425E-0636-4E9E-459B3913A8AC";
	setAttr -k off ".v";
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
	rename -uid "0B130E66-44DD-20F8-E9D1-E6A6234D3177";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "06CD15BA-4BB7-80DB-D3EB-F3B3EA72C8AF";
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
	rename -uid "588444D6-4547-D4CA-D652-438562FAAE17";
	setAttr -k off ".v";
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
	rename -uid "9930B39C-4C1C-2BEC-1D7C-06A6FDD38408";
	setAttr -k off ".v";
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
	rename -uid "ABD36AFD-4814-5057-0C9D-B29EA082A3B9";
	setAttr -k off ".v";
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
	rename -uid "266F1F3A-4674-1D82-7677-9AB60B4BCFED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C1AD956F-44F1-2FAA-A6CB-F4BBAE596A29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ECB1E2D6-4FFA-1EBD-1971-5DAFBFB33665";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "21C80E6D-4D2E-3810-2F3E-C0BA079D0F76";
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
	rename -uid "88C16EAE-4D96-1F4D-65DE-50AF5047CF5C";
	setAttr -k off ".v";
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
	rename -uid "72CAF4A5-489D-229F-F3DA-A8A1ABE139B7";
	setAttr -k off ".v";
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
	rename -uid "DE216A72-49D6-91B9-404D-6C9D5900B5A0";
	setAttr -k off ".v";
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
	rename -uid "1C77EFBC-4086-377D-B311-7FB226051C53";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "832E3832-4BE1-F048-0EE6-49B857B71305";
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
	rename -uid "A5340CBA-46A1-5EAA-9D5D-74876C746F19";
	setAttr -k off ".v";
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
	rename -uid "134376AC-406C-BA50-DC89-73A99899F0DD";
	setAttr -k off ".v";
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
	rename -uid "B4739449-4663-1B44-1E99-5F9491759AF6";
	setAttr -k off ".v";
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
	rename -uid "C56B7B32-4A1F-86E7-3204-51ABFD1D02D5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2A7970DE-4598-3803-9E87-BDABD8257464";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B049D9BB-4E89-B8D6-7B7D-3C8B4380B803";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8C8EE8EB-4B5A-8007-5031-C99B5CB3E450";
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
	rename -uid "A743AB53-40F7-1CA9-73DD-E69058F383E9";
	setAttr -k off ".v";
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
	rename -uid "91D8976A-41C9-3456-AF28-94AF50606304";
	setAttr -k off ".v";
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
	rename -uid "F2D346A1-4334-BDBF-13FA-22A8535A8FCE";
	setAttr -k off ".v";
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
	rename -uid "77BD83A1-4D86-6D8D-DC55-5FB852B8EB7E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6680826C-4B3A-F26B-5E25-2284C08660DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7F47592A-458E-E320-36AF-58A9A77E7818";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B3BA1FD2-46E9-CB0D-1F18-48A4FD2783F6";
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
	rename -uid "8992A03C-43C1-66E8-66C1-16A9BD622EDD";
	setAttr -k off ".v";
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
	rename -uid "1BA61978-4C1E-56E2-A08F-8197C020402B";
	setAttr -k off ".v";
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
	rename -uid "5770016B-4383-DABA-727F-DFA3E0B8D84B";
	setAttr -k off ".v";
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
	rename -uid "F37D9863-4AC8-5792-2974-05BBBD0E54CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5B1496C0-423F-EF9A-A759-56A8A3AE7D24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F30A6048-476B-23B0-8EFB-DEB4FBB7A3D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B3CB9580-43FA-1B03-73FB-F3AE83C374C8";
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
	rename -uid "5689DE91-44EC-C211-F695-EF9F57FC9A29";
	setAttr -k off ".v";
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
	rename -uid "CAEB4849-4F1F-03DF-5E30-CD954C9815E3";
	setAttr -k off ".v";
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
	rename -uid "0BE6F5D8-4F7A-ECA8-A69C-218FF414DBED";
	setAttr -k off ".v";
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
	rename -uid "49A8B87C-4055-D5B4-4A41-C09955E4D070";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "44FF8532-4311-ED21-3792-F2992FD90446";
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
	rename -uid "22482AD6-4C8E-0EA0-DD22-F6A7D3A37728";
	setAttr -k off ".v";
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
	rename -uid "6329328C-462A-A956-2155-AFABF11EB0B1";
	setAttr -k off ".v";
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
	rename -uid "C86C78B1-4A1E-C40C-1740-D6968B388CA5";
	setAttr -k off ".v";
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
	rename -uid "AA84F854-4437-C31B-A7A8-19B8D1781422";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "382449EE-4704-FD7E-A9A4-5EAF6E8A088B";
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
	rename -uid "0578D797-45A5-8588-2F93-C19ECE01ABF4";
	setAttr -k off ".v";
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
	rename -uid "019627F7-4FB1-544F-0890-22928C87220A";
	setAttr -k off ".v";
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
	rename -uid "EFDFD14C-401C-EF26-00EF-1DAB68FD465B";
	setAttr -k off ".v";
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
	rename -uid "1FFA2304-40B6-7938-A556-0AAC513AE5DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A3B4CC38-45DA-6DDD-8EF8-CCA10B0E29DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7D634C6A-49EF-6403-D30C-71A027A892A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B9EEBE4D-4137-2991-52EA-BCAB2948C236";
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
	rename -uid "EB896784-4754-CF0C-7BCB-CC98334DC84F";
	setAttr -k off ".v";
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
	rename -uid "611CBCD6-42A9-5443-EECB-89AC51D136C7";
	setAttr -k off ".v";
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
	rename -uid "C0A477D6-42A0-E873-BFE0-BF883438DC98";
	setAttr -k off ".v";
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
	rename -uid "0C20A639-479B-106D-81B3-EAABF6E3E46C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3325018F-4E1D-4E05-8C5F-4DBB72477CD8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AD264FDE-43B5-1866-2599-19911A69FA02";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "926338AD-4E7B-4F09-B304-27B328B7DFE6";
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
	rename -uid "DBCE76D3-41A3-BD9C-1CD3-1C9F15E59602";
	setAttr -k off ".v";
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
	rename -uid "AE856A56-4D1A-F8FA-31B2-68844DD1D04A";
	setAttr -k off ".v";
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
	rename -uid "78E329DB-42FD-7EED-55A5-45B044E946AE";
	setAttr -k off ".v";
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
	rename -uid "FB7F2640-449C-2BAF-DADE-9E8F66B49B88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "606D18B8-4607-57E2-4E37-FDBDA7A9C4E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "71BD1E15-45E9-414A-736C-7A9AD3B7786A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A43E5941-4CCE-0543-9075-E88B1839DFA2";
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
	rename -uid "E2860B22-432A-9E16-2F64-3D809E90EC4B";
	setAttr -k off ".v";
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
	rename -uid "FE570DEF-447D-72C7-5D98-17A493AA12F0";
	setAttr -k off ".v";
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
	rename -uid "6033C5F3-426B-8B66-7E2C-2E94505269E7";
	setAttr -k off ".v";
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
	rename -uid "A6AF34FB-4027-3138-E3A8-899379679522";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "44254DB7-4E70-FD64-1273-CEB60EB8BF49";
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
	rename -uid "0396579A-4FFE-C89F-0BAB-7C99DB05ACCD";
	setAttr -k off ".v";
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
	rename -uid "1272E7D4-4D48-8260-79CD-2A877BAD174E";
	setAttr -k off ".v";
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
	rename -uid "7BA4AA99-4E13-EBA6-93DA-E3A764191772";
	setAttr -k off ".v";
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
	rename -uid "60E60820-4B9B-695D-3CF1-8A8A6F06B96B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4C2084E3-4985-4478-074E-6EAF3F78D66A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7405D2D1-4153-1312-7962-4982BCC5A0AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "26217E86-477E-17B4-6B1E-16893DB3474B";
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
	rename -uid "FAF59A93-4965-E02B-6424-5BAED100268D";
	setAttr -k off ".v";
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
	rename -uid "847B9936-4199-646B-28ED-359EB6B63B3A";
	setAttr -k off ".v";
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
	rename -uid "BDF6F730-4E2A-ACC0-550F-2FA3E0D178FD";
	setAttr -k off ".v";
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
	rename -uid "23FDB8C7-4F3D-5369-71B5-DD9A9C11AADA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C3695527-4118-8594-FEB9-ADABC375DA46";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B726C94E-4640-2CCC-664B-599C0DA50D86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "339A7B04-43DF-5A94-C464-8E806B6D981C";
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
	rename -uid "B317889F-4BFD-6C04-E9DB-7AA03E66CBEE";
	setAttr -k off ".v";
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
	rename -uid "9A190F64-4F4C-5FE7-6751-73AB56564AA7";
	setAttr -k off ".v";
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
	rename -uid "D298CB26-4BFA-1B25-8AAE-C892F8CC61E6";
	setAttr -k off ".v";
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
	rename -uid "4E7E250D-4FF4-A64B-2AC7-3CA35ACAFBA9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3F25D6A9-4788-4053-D677-2C9CC27F6589";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A9CADACA-49C7-7E7A-DA61-A7A880494AA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "49174A41-4D19-C8FC-C69C-789E4364CBD4";
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
	rename -uid "F34DC23F-4A15-4035-C7FE-7CB43CEB7EF5";
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
	rename -uid "E4B04ECF-4153-FD6F-9616-DD98906570C0";
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
	rename -uid "6C852429-40BB-50DC-0706-609F06370D42";
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
	rename -uid "2272B263-4FFF-8F9F-3576-06B27FCD43E7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754533 -29.032786855763558 1.4804327725029334 ;
	setAttr ".r" -type "double3" -7.5791665394120038 -14.304244378903769 49.348303523761253 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.6320983106786024 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "76CCE1BC-4F65-C25F-48A9-A3859DA5C231";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "68C4E319-4A04-92B1-D37F-5DA2FAAE4BF0";
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
	rename -uid "438107E0-45B5-4E3E-8661-3DAEEE57E1FE";
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
	rename -uid "6F422C73-49E2-EA3D-79C1-CFA73C1D85FF";
	setAttr -k off ".v";
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
	rename -uid "10005EFF-466A-AEC4-B491-79ADC6805E4D";
	setAttr -k off ".v";
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
	rename -uid "2248D813-40A9-474A-5BDE-70BDEA5B690B";
	setAttr -k off ".v";
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
	rename -uid "CFE5AD52-4807-06EF-F731-43B0ED7B5A5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "D0D4903A-4DED-658D-9C94-64A44F65037C";
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
	rename -uid "B7967A2D-48F2-4C8A-1EAA-25A59D202750";
	setAttr -k off ".v";
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
	rename -uid "8F62375B-4FA4-C1E7-0951-DBAFC0762854";
	setAttr -k off ".v";
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
	rename -uid "728A3F85-422C-9B6B-E4E7-EEA0E6CFFFA6";
	setAttr -k off ".v";
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
	rename -uid "5CADBA04-4577-08AD-7A11-83B7BF1B971A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F39ECB4B-4A23-5B29-951D-AB98E9835CFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ADA352B1-4317-DEE9-58D5-A69E84CCA73D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E573418A-4C7E-D048-9366-7FB682611446";
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
	rename -uid "C89C3C4E-4CC7-D0FF-034F-51B384A111BC";
	setAttr -k off ".v";
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
	rename -uid "A7C5F8CA-42C2-8522-8BF0-2384B472C1F7";
	setAttr -k off ".v";
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
	rename -uid "C8B38FB1-4B54-972C-5F9D-8ABE640C50AC";
	setAttr -k off ".v";
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
	rename -uid "354AE9D3-4489-CF5B-DB5F-FDB7305E2E85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "323AF61D-4724-5F97-7FFE-98BF3D84A8BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "015C0129-4DB6-9E9F-E407-F985A6667FB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3CE5149A-4AFD-EEA8-EBBB-7EB02775E7E2";
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
	rename -uid "51FDC201-4BBA-FBD7-2446-35A5B458F116";
	setAttr -k off ".v";
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
	rename -uid "8AA56D2A-474C-1065-DB9A-8587270C9D85";
	setAttr -k off ".v";
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
	rename -uid "74E9F417-4FDF-FF70-9D02-458D26D87D61";
	setAttr -k off ".v";
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
	rename -uid "D971F856-402C-0F0C-5C36-09BCDAB3D76A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "94AAFC99-4D0E-4D66-C3D7-259D87756B98";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5B5E9893-4E80-248E-A095-A3AD217D1993";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AB79ED79-4B07-826E-8CB6-129E6211FA4F";
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
	rename -uid "00D08B9B-42E0-58E0-0DF4-8AB6601D8EF6";
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
	rename -uid "71DE6988-4C93-0702-110E-5A89A1C97B47";
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
	rename -uid "B4388283-4899-FF49-59BF-4F8459D4666E";
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
	rename -uid "12FC7964-4F09-E899-9BFE-95B3C4991FC7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309135 -29.023661369441829 1.4173349723030875 ;
	setAttr ".r" -type "double3" -0.54140613098352164 -1.5904804996580479 47.737641631363751 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786016 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "D9F55E0B-4096-67D9-570A-A1899AA34D27";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "236BFFB8-4AC2-F086-B902-FD9E3DBE7592";
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
	rename -uid "6F5D6C61-4303-67B9-CF1D-1592CE7C8733";
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
	rename -uid "96E7E679-469E-30D5-8D13-1FA78415450F";
	setAttr -k off ".v";
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
	rename -uid "17177D2B-4164-2DEA-4CE9-2DABB9AB84A7";
	setAttr -k off ".v";
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
	rename -uid "EC71D4AB-482A-DE78-645D-4DAFAC1E626A";
	setAttr -k off ".v";
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
	rename -uid "55B70C92-4AA6-BBC3-0697-C8859F1B5939";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "6B4095EC-46C1-493B-4478-BB914CF5F84D";
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
	rename -uid "C015DD36-4F9B-E0B3-D32E-778D9F127DAC";
	setAttr -k off ".v";
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
	rename -uid "37BB380A-4F0A-545B-884A-D19427455112";
	setAttr -k off ".v";
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
	rename -uid "2E851FBF-4930-C46C-0DCA-529C7A7AC566";
	setAttr -k off ".v";
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
	rename -uid "D119B4AE-4BFF-7649-D9F8-288A17699354";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AFCDCA87-46E0-D833-D1CE-A486F57DBAD2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6B22407D-4E91-877F-0BAD-29991EB659FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E5297598-47E7-E659-81ED-538C49B692B6";
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
	rename -uid "E6B7C652-4894-7707-95B2-12BF2EE9FFD8";
	setAttr -k off ".v";
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
	rename -uid "3C6D05DD-41F7-0A57-CB87-1AB792DAE20A";
	setAttr -k off ".v";
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
	rename -uid "3BAA87E1-4F48-D537-1629-8BA44E39C0E3";
	setAttr -k off ".v";
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
	rename -uid "90315ACB-4CDE-7063-9327-44BB551342F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EFC697D8-43F1-FECE-792B-0BA08D6F7097";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E65BE7C0-483F-932E-50FB-1D9FE9D89BFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1EB9A606-4656-846E-6C17-ACAA3F530F3D";
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
	rename -uid "A3613385-4042-6824-F5B5-A1A2FBB2BD91";
	setAttr -k off ".v";
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
	rename -uid "307C773D-4BBB-3F99-3048-2EBA2065F9DB";
	setAttr -k off ".v";
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
	rename -uid "1EF975F6-4328-ADA9-9E06-ED937A190C88";
	setAttr -k off ".v";
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
	rename -uid "389B2332-4C90-81A8-28E3-479CB7AB92F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D2386CB1-4403-748B-0027-D98F2BC7379A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3FB6E4BB-4305-3C31-00AA-DFA5CA3061B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F491C65B-4EE9-3074-8DFC-DD86E523ACF8";
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
	rename -uid "A5E98E5A-4BBD-AD6F-F9CC-50AC39448D25";
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
	rename -uid "48A5664B-426E-60F1-A741-B49E174D837F";
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
	rename -uid "1E1D9060-4BF7-E2FB-47F8-5284DBC5811C";
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
	rename -uid "1D2A0BDE-4ADD-1EB4-2355-ECBEBD040099";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153205 -28.040620010901261 1.1418187531112221 ;
	setAttr ".r" -type "double3" 5.8484943948522119 9.9768879508777513 54.111347352877907 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.632098310678602 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "D2E97C45-46EB-6C6A-5C7C-12A85851AF09";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "2B71AB42-4E78-147F-4C05-23BCEDE3D4E8";
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
	rename -uid "0DDC8023-40A2-1A19-5559-C6ACDA42B6E4";
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
	rename -uid "A8180387-4659-7050-310F-BB966860A429";
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
	rename -uid "F4C03760-45D7-CA98-B541-2B87E3F56A7C";
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
	rename -uid "DE1E556F-43F3-45FE-C296-5AA24C1F9053";
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
	rename -uid "42184E13-4FD0-EE8D-E6DD-BCB39B132B5F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400736 -38.076493243285398 11.714163621935336 ;
	setAttr ".r" -type "double3" -81.595645682431524 -44.654258545704437 89.275820115296426 ;
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041202 3.4032157947041277 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "1D14B718-4DBE-0923-31E2-C69D5B317926";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "8DD29038-4085-B63C-5675-769E4E02B8B5";
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
	rename -uid "88C81844-4F03-3B8C-F018-2EAE2036E293";
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
	rename -uid "785F3BC1-4DEE-D515-2955-EEBE949DF650";
	setAttr -k off ".v";
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
	rename -uid "1E80F42E-4AC7-90D3-E715-B18AD8D66476";
	setAttr -k off ".v";
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
	rename -uid "D28A379A-4573-337C-3EC9-E197B771BEBD";
	setAttr -k off ".v";
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
	rename -uid "00BC688F-46AE-4921-CEB3-A5BB03CC0B25";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "477D00EC-4DAA-580A-AB64-578C85127838";
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
	rename -uid "BF4CFE08-463C-3992-366C-72A07CBFDF92";
	setAttr -k off ".v";
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
	rename -uid "69453B5C-4B04-77F5-9502-1C87036ADDC2";
	setAttr -k off ".v";
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
	rename -uid "FA68CA93-4F28-29A7-1F1A-E088CE38BCF6";
	setAttr -k off ".v";
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
	rename -uid "98D812F8-4EA0-3131-D51F-4BA69B21D303";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "390A0606-4D6A-0791-4F1A-398DF2A32C4F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1C894755-40AE-2F1E-6364-91A49BE5A6F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E55491B3-49CC-19E3-2134-2A8BE9CAB03C";
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
	rename -uid "0053C3CB-4780-D5B1-993B-9AA31E43D951";
	setAttr -k off ".v";
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
	rename -uid "C9019823-4C94-5ED3-D7DF-DAA73DC463F5";
	setAttr -k off ".v";
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
	rename -uid "55170478-4A80-A88A-4C66-CD866AF86231";
	setAttr -k off ".v";
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
	rename -uid "61E99338-49EA-3D9A-2960-0AAA378D2242";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "63C20B50-4E8A-C516-4D35-AC9F37C4D87E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A617DB1B-4713-1BDA-CCA9-1281BC43006A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3740A23D-4696-A9EA-EB7C-A0B0BA21FC44";
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
	rename -uid "DAC2C100-41E8-26FF-A60B-14B53B089C18";
	setAttr -k off ".v";
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
	rename -uid "AE14D4FE-4ED3-C59C-ABE4-898E5AB95781";
	setAttr -k off ".v";
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
	rename -uid "EBFDAA0A-4F35-3E01-E196-239EED1CCBD8";
	setAttr -k off ".v";
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
	rename -uid "FA348E39-42CC-B82C-5A07-11AE2C6D61C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "14C28C96-4FB9-EC93-660A-49B172302EA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "49D6062B-4098-4CA6-6D54-BAB22B8A0608";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3CD312D6-47E9-73A2-FB6A-B19E307136C7";
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
	rename -uid "ED6C295D-46A3-69EC-0223-4EB6EAFFB4D1";
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
	rename -uid "91B0D37B-4554-AD99-B070-DF8FE84AF112";
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
	rename -uid "9AD78A81-484C-751E-EBF0-97AF18D5B722";
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
	rename -uid "3A4A399F-4E81-8690-56A1-D0883728CD5E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713105 -27.336008057181026 2.4648652761317988 ;
	setAttr ".r" -type "double3" 9.1654334880164896 22.111176212558927 57.120615095544252 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106786002 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "978D63CF-400E-D34D-3CB1-95981DA20BD3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "0ABFAB1B-49B2-0A59-A451-0BB5533241FE";
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
	rename -uid "6983AF58-49E6-D582-7DE7-EF96D8AB3B42";
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
	rename -uid "A9C4DFCB-430D-86FA-7CCF-25A693FE0B56";
	setAttr -k off ".v";
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
	rename -uid "B0D05764-4488-65AE-972D-61B7F41A1435";
	setAttr -k off ".v";
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
	rename -uid "38C7FDB8-47EF-E3B3-66C1-6CAE207F77A9";
	setAttr -k off ".v";
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
	rename -uid "17A91BB8-448F-AAD7-2761-8BA67854095D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0C0894A6-4BBE-3529-CCC6-5A9926B1D929";
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
	rename -uid "AF31CB6C-4E7C-AF3E-BD47-27AE67049A27";
	setAttr -k off ".v";
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
	rename -uid "B7CFFC27-487B-5B52-C086-86A2D69366AE";
	setAttr -k off ".v";
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
	rename -uid "01610474-4016-5AA3-6FD7-94874CFD58E7";
	setAttr -k off ".v";
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
	rename -uid "A2C985C1-442D-6DCF-C26C-83879B92D768";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "FE44DECA-4EA8-717C-C318-168753D5343F";
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
	rename -uid "8BE65706-45B6-0BB2-3939-1E8F2EDE5784";
	setAttr -k off ".v";
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
	rename -uid "8EF59F21-4156-15A0-1B02-48A9C7810134";
	setAttr -k off ".v";
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
	rename -uid "C7CE5B6A-4ADB-7D5B-ADF7-C2A1E621C274";
	setAttr -k off ".v";
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
	rename -uid "43E900DB-454B-A1E6-B5BE-C39E75787478";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D7F1C5D6-41C4-1815-DA4B-DBB9E8E97E78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6BFC1249-4A9F-981F-C8F2-60A785305498";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E06A1C4B-4421-E8D6-082F-E5B690BD5C85";
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
	rename -uid "3962FE49-4B49-A3D6-5F77-009066C6EC70";
	setAttr -k off ".v";
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
	rename -uid "BCD28B4E-4273-756F-6674-9DBA5A807F71";
	setAttr -k off ".v";
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
	rename -uid "D1E32EE5-4997-29CA-57FE-A4AF426B5E12";
	setAttr -k off ".v";
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
	rename -uid "D5C9BE3F-4ADA-45D8-4B5D-65811F4CB88C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "13BCFDE8-4202-F6FB-AE25-CB93FD6799BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B8557FF7-4316-3B7C-F8EC-1C82897D4D64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0FDE0900-446F-4C5E-8895-76838396B3C1";
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
	rename -uid "AC54BDA5-47C3-4A52-B7E3-ABB4A7F9EAEC";
	setAttr -k off ".v";
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
	rename -uid "74BCD59F-4373-6EF8-AC5F-40ACCDD8B9A3";
	setAttr -k off ".v";
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
	rename -uid "E145C672-4DEE-F669-385F-0A8A7D5F752D";
	setAttr -k off ".v";
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
	rename -uid "6C263567-465F-1CC7-28A4-07A8A62CBFA0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "44665795-4981-29D6-A49D-B187A770C0D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D673D338-4727-DDF4-12C5-B9BFA58FCAB1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F0785F01-4E41-A8B9-ED64-3FACABD7FA3C";
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
	rename -uid "3692600E-4E8F-89E6-4735-ACAE66371763";
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
	rename -uid "4F2CE223-45DD-D75E-F9E1-C59F296901E3";
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
	rename -uid "500F39EA-40E0-2D77-3F20-C691C565C94F";
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
	rename -uid "824A2CBF-49AC-8804-91F9-5587B92DFAA1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.319512699688552 -7.1018915006055883 17.729458649684059 ;
	setAttr ".r" -type "double3" -124.44302205362686 63.10073445444938 -77.281354162701334 ;
	setAttr ".s" -type "double3" 2.043467216315729 2.0434672163157206 2.043467216315725 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "87E3CCE5-4EB2-D789-06CE-6AB7AFA12E76";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "92DEF9F2-4B1E-5050-331D-ED835B0BA5A1";
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
	rename -uid "17CF90CD-4930-25A2-0DEF-27A15E529DFB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648558 ;
	setAttr ".r" -type "double3" -2.1534408611045621 -4.1959370793366944 45.437740049298249 ;
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377391 1.0495082267377411 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "484DEA12-4F3E-FC61-ECB7-019E02AC8B2F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "0B7E579A-4891-115D-29DC-E1BF0FE130EC";
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
	rename -uid "E02BFBD1-4B50-C347-4DAD-E299A6C2463E";
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
	rename -uid "C208FBBC-41D6-7C23-732C-808489E4B77F";
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
	rename -uid "77978801-41C5-2C95-84A2-A5BD87E5A8DC";
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
	rename -uid "E8B8E67F-4669-EC02-424C-E69372D83B1C";
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
	rename -uid "58206605-4C97-360F-15ED-F3A40827CEA6";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509834 0.0092761897382757259 0.11673327753265011 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377369 1.0495082267377376 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "DE880DBC-4E4B-682B-8DEF-E7ABBB67B135";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "239A736B-4FFE-5D6A-BCEA-A2AB060C1F1F";
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
	rename -uid "6394FF09-4203-9756-A182-47AEEE88BF78";
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
	rename -uid "0370EE12-4FC1-F373-2ADC-18B150D68311";
	setAttr -k off ".v";
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
	rename -uid "D2EB9345-4DD9-3F60-384E-45ABC0BB7611";
	setAttr -k off ".v";
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
	rename -uid "FACF10D4-4CE2-2B64-3990-29B117C538A5";
	setAttr -k off ".v";
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
	rename -uid "358A1ADC-431E-739D-538C-9D8590D1A9A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0460478B-4745-5B44-334A-DB99B156F04D";
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
	rename -uid "FEBB9CB3-4340-5114-FE39-3486C3ED6805";
	setAttr -k off ".v";
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
	rename -uid "897660C6-4048-B39D-885C-EE96ADE4C83F";
	setAttr -k off ".v";
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
	rename -uid "7F71BF8F-4B2D-68C4-A472-939246A10789";
	setAttr -k off ".v";
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
	rename -uid "23F946DD-4EF3-B540-9E6E-7EB1FD8C7B53";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C7FCA659-4FC4-70BF-87B1-989EBC55EDBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "80AB6122-4CB8-D545-CA40-52937260AFDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "58E8BE38-4DFD-A4F4-C09B-BF86D92ABA17";
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
	rename -uid "980C3CAB-463A-9F11-1D0F-CAB3291920A9";
	setAttr -k off ".v";
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
	rename -uid "A9D61DC7-4260-958A-0FD9-519085C00F53";
	setAttr -k off ".v";
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
	rename -uid "D9E3E47A-4964-A003-024B-91B67ACF8F7F";
	setAttr -k off ".v";
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
	rename -uid "9E1ED80F-4504-5024-9C50-DBA1B431B507";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DB0BAA35-45A5-ED4D-DF1E-2894368A2603";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9630F596-48FD-D9C4-3D60-46886AD977DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "882282FF-4214-1E7B-4483-3C94EE4F5181";
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
	rename -uid "A9EAAD7B-4550-3023-3D0A-2FB50235C215";
	setAttr -k off ".v";
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
	rename -uid "381DF9A7-4B7B-44D2-CFC8-6AB088EE2DD2";
	setAttr -k off ".v";
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
	rename -uid "3E883477-4135-9B14-9627-8FA120FDE699";
	setAttr -k off ".v";
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
	rename -uid "0865A498-4F93-B23D-1728-2FBBCB28C0C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "55F3F8AB-415C-6850-DB61-E287C0822279";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1A50483D-431B-2421-C5AD-169D96C892B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "74D7856A-456B-F724-4C17-0396CEAD1413";
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
	rename -uid "E34CEA39-4DE8-CF38-885C-F0800987607E";
	setAttr -k off ".v";
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
	rename -uid "A18EEF9C-48A5-DDE9-E4BB-2BA0B5761ED6";
	setAttr -k off ".v";
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
	rename -uid "2C27C4E0-4F7B-7731-5E04-DF8C68805775";
	setAttr -k off ".v";
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
	rename -uid "51F31251-49EC-8197-3588-4B851ADF03E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "81CBB99C-4AC7-4BA2-F12E-F38152354A04";
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
	rename -uid "D63E567E-4C8C-84E8-DDF7-7A837E777332";
	setAttr -k off ".v";
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
	rename -uid "5548027C-472D-3278-C3E4-57AB3B3C91C4";
	setAttr -k off ".v";
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
	rename -uid "0A68A64C-4448-7B1F-F905-81B65AE47B2E";
	setAttr -k off ".v";
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
	rename -uid "DA2D16AA-4A16-F604-B083-2783B1847F9E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "2D615E05-414D-F7D4-5384-F1B3323976D3";
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
	rename -uid "185B9A69-4910-0955-3A0F-D7B290D1B60E";
	setAttr -k off ".v";
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
	rename -uid "C06BD993-4D83-94E3-5907-57B1D8C17258";
	setAttr -k off ".v";
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
	rename -uid "33D53351-44A9-D606-20C0-EF9B725DA03B";
	setAttr -k off ".v";
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
	rename -uid "159017AA-47EA-5065-00E1-888589150EA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2233A2A2-4D74-D09E-D20E-26A727D5D345";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9D54ECFD-4BF3-4A6C-5046-0C8902DCB9FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ED411E7B-424C-0256-8415-B5ADFE4ADA95";
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
	rename -uid "529705B1-4724-4C20-6D18-57AF0B79C830";
	setAttr -k off ".v";
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
	rename -uid "3CE6B74E-4692-71B9-B8DC-89B0F3F05383";
	setAttr -k off ".v";
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
	rename -uid "BC5255DA-4649-9077-F45B-EEA660691894";
	setAttr -k off ".v";
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
	rename -uid "FC89415B-4626-E14B-6623-669202661640";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "95E083F1-48D2-60F5-16F6-51932E56E945";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5F7374B4-4DA7-2167-B34F-B1B71414D215";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C069712C-48EB-0EA3-B8D5-F09A80D280ED";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904467e-015 -30.11503766976147 -2.1322109539326473 ;
	setAttr ".r" -type "double3" -1.2722218725854028e-014 -2.5444437451708207e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007573 1.8286050763007582 1.8286050763007593 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "7072FE67-43EA-57A6-9946-CDA60EE6A0AB";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "2685E51B-4558-AD4F-9E94-23B0041064F4";
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
	rename -uid "8EA0C5A6-4FF8-80D9-B703-CABA26DB19AD";
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
	rename -uid "C1E913E1-4800-2D18-CBE2-1CB78929CD08";
	setAttr -k off ".v";
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
	rename -uid "01BFB58A-4BC9-F4E8-EEDA-C4AA59640587";
	setAttr -k off ".v";
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
	rename -uid "3A9907B9-44A5-338D-9CCE-83B17EEEB6FD";
	setAttr -k off ".v";
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
	rename -uid "02DC9E83-44C2-12CC-43FA-17A6E804A19E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8FB3F144-46F1-194F-93E6-DDBC97927B61";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DE38C831-4FFC-990A-ED40-E0BE8FD81A01";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A2C2F334-48BC-9256-94D9-1BB1CA540274";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200166e-015 -29.844371667992284 -2.0778684034613564 ;
	setAttr ".r" -type "double3" -1.2722218725854028e-014 -2.5444437451708207e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007573 1.8286050763007582 1.8286050763007593 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "B7CD530A-4585-5397-2B8E-D387BAE73C14";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "DFFED860-4B37-B46A-2209-279B4E573B80";
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
	rename -uid "F2D42495-473E-36AB-B55C-D98337495E25";
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
	rename -uid "2BACB21C-4DDE-A163-8A99-FE8A21000BB9";
	setAttr -k off ".v";
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
	rename -uid "4030C9BC-4DA4-AE9F-013A-9CBFD379F6E0";
	setAttr -k off ".v";
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
	rename -uid "C0082E6E-4267-2467-B347-0E8724121E54";
	setAttr -k off ".v";
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
	rename -uid "5548505B-4127-CF70-51C8-45908926F2C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BBA9B0DF-4EA9-2C1E-27D1-8F8D50C0F1FC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7DB29337-4038-A9A1-4191-8C93D115A999";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "67842B51-4F45-E8E1-031C-3BB32A29E3FB";
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
	rename -uid "5657F917-4060-9012-4547-A6B04E24C43E";
	setAttr -k off ".v";
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
	rename -uid "DB416520-4CD9-659D-664A-75BC23F867B2";
	setAttr -k off ".v";
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
	rename -uid "3D1CF697-495E-1607-8FAF-28B38BF65A94";
	setAttr -k off ".v";
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
	rename -uid "0EE1B15B-49FE-9650-4375-699C06CFFF95";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5748243A-477C-F2E1-093D-F5AC99033467";
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
	rename -uid "0E8B6819-4286-1845-14EA-D59EFEBBCBCA";
	setAttr -k off ".v";
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
	rename -uid "6322E3DA-4681-E189-9A12-71B81C898377";
	setAttr -k off ".v";
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
	rename -uid "ED1E7618-4863-AC8F-D2F6-08AC3D0285F6";
	setAttr -k off ".v";
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
	rename -uid "85284A8D-4449-C692-3966-3197645A8E51";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E4BC87BD-4CF1-F2F2-495C-209E43FEC46A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "715B1E78-434C-43D2-1470-F0B318612283";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7BD427F8-4517-5F0F-F21A-E184E7A2DE5E";
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
	rename -uid "4D362A2F-4B31-C99A-C274-A7B1DB4CF265";
	setAttr -k off ".v";
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
	rename -uid "106B1DF0-4D55-8D4B-F9BA-19B120EA86F9";
	setAttr -k off ".v";
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
	rename -uid "1140B25E-4337-F4E9-3948-83826F5175D7";
	setAttr -k off ".v";
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
	rename -uid "B7A9CDC2-4B20-CA45-35D4-4099F576B809";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D3400E69-4C9C-742B-9C18-08BD955EE184";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "70CF1E81-4971-F917-1462-E7BDA08CCDDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4C0DE72C-4D09-186F-F0A1-AB8A2EDF052C";
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
	rename -uid "EF790040-48C9-C94E-4CD4-CBAC78336DC1";
	setAttr -k off ".v";
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
	rename -uid "CA3CBB20-4589-4A22-2679-7FA06DF642C3";
	setAttr -k off ".v";
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
	rename -uid "FDFF499F-4D90-D09B-56AE-1884AE7B640B";
	setAttr -k off ".v";
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
	rename -uid "F225C05D-4758-889A-20CE-37987221AF56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BC4A9EA5-4FAA-56F7-114D-309FC087DC08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "372FCE77-440A-B7C2-1944-FF8E6921EBEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6891AF96-4547-C9CB-AC24-B48E6A9DBC98";
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
	rename -uid "95B38715-4A35-22C1-9FCA-ED93D1A6EB35";
	setAttr -k off ".v";
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
	rename -uid "86843B21-4BA4-06A2-7CFE-BB9824571C99";
	setAttr -k off ".v";
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
	rename -uid "AAFE75BA-4024-7546-9C6C-50A01C3D61FE";
	setAttr -k off ".v";
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
	rename -uid "CFA96469-4405-AE7A-6572-CC994A009B58";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F0ECDE1F-4A26-07F4-51E0-5CB05EADEA47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3F8790B0-4353-84DB-CB7A-01939A388362";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B5401C35-4129-0548-5856-DFBC7B5FBE06";
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
	rename -uid "B1EC2A94-48B4-418B-A2D2-1684F8CB081F";
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
	rename -uid "4FE9C762-4B03-8A68-EC5F-54B13D3C3C10";
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
	rename -uid "00E516F7-451F-4D0E-66A8-CBA0F48412E8";
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
	rename -uid "00B3FE23-412D-D5BA-0582-309350FE5F29";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046809e-014 -175.06339877760723 -3.1060024283289871 ;
	setAttr ".r" -type "double3" -1.272221872585401e-014 -2.5444437451708185e-014 -7.0167092985348917e-015 ;
	setAttr ".s" -type "double3" 10.6485902015964 10.648590201596406 10.648590201596402 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "BD8AE965-4763-B861-9987-BC97AADE7424";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "3C8C66FB-4D7B-AB53-8B02-3A9EF336042C";
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
	rename -uid "1CB38AD2-4C01-C635-AFD1-AB90AC84BE83";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757915e-015 -30.612390245122928 -0.093664066372369834 ;
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.8286050763007562 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "47AD8955-4011-C2D6-ECB8-A191913493AD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "70CC1D2E-4F11-AB1B-0F4B-F9835C411531";
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
	rename -uid "6876A528-4714-31D1-F630-93AA330C140C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757915e-015 -30.612390245122928 -0.093664066372369834 ;
	setAttr ".r" -type "double3" -1.2722218725853996e-014 -2.5444437451708226e-014 -7.0167092985349099e-015 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.8286050763007562 ;
createNode nurbsCurve -n "mouth_C0_crv4Shape" -p "mouth_C0_crv4";
	rename -uid "C5FD0B9A-4175-217B-B7C8-EA93BD041DE9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv4ShapeOrig" -p "mouth_C0_crv4";
	rename -uid "C8B334DB-4167-3C88-9368-02B1C0DA9691";
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
	rename -uid "005C4EE2-4568-FB6C-0ED2-56A0C5CFEDB5";
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
	rename -uid "9F643B2A-4CF7-0054-66C1-CFAF699025C3";
	setAttr -k off ".v";
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
	rename -uid "2DE06D66-4093-F818-2753-72A4E4034882";
	setAttr -k off ".v";
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
	rename -uid "DC2F4B91-498B-166D-0CBF-418F84C0BF94";
	setAttr -k off ".v";
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
	rename -uid "40C43A6C-409F-D3AE-6F9D-06B8F51B3D2F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "FE6A0E86-4F11-01C4-F195-4D98D95F1285";
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
	rename -uid "D2243E0B-4EE0-4D36-66C0-B4B4CD8F9D8E";
	setAttr -k off ".v";
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
	rename -uid "44577C09-4800-91B0-BFDD-F69DB1835746";
	setAttr -k off ".v";
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
	rename -uid "E143AC3A-40AD-8A08-87FE-6E8397934EF2";
	setAttr -k off ".v";
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
	rename -uid "E247078E-4C17-A213-950D-EC85ED9199E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5250E8A2-4916-2D89-C4A0-22AAE5805E99";
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
	rename -uid "95475B82-4775-C995-5AE1-828F04529573";
	setAttr -k off ".v";
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
	rename -uid "43B11A85-4EE1-0772-0F29-3CA803072C96";
	setAttr -k off ".v";
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
	rename -uid "3BAE6141-4175-CC91-8DE5-109AC40E79BE";
	setAttr -k off ".v";
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
	rename -uid "A48C9D80-4490-8BB8-247E-0B9AD7FAE31F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A667AFBE-4ECD-1BCE-26B9-BBBE0F61A2AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3DE851A3-4399-E22D-AD76-C68AC8766668";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EA71C551-4278-7ABA-6AC8-5AAA29E699A2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723901 -30.070644536323638 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.753879954650218 1.7538799546502197 -1.7538799546502115 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "F5EC1FE1-4747-D4B1-8A06-F1847E88E35F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "BB0756B9-4721-21EE-4404-46A1B849B5FB";
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
	rename -uid "E8DC962A-4024-BD3C-597C-5493A4D16D2B";
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
	rename -uid "9D47DC1C-4B9F-4FDD-6309-888E1D75A861";
	setAttr -k off ".v";
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
	rename -uid "29873878-4B1C-2FA1-065C-3EBA61C61BD5";
	setAttr -k off ".v";
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
	rename -uid "9FF3F024-4176-836D-9D17-40A05F3095E8";
	setAttr -k off ".v";
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
	rename -uid "64E7093F-4145-FD42-025C-BB990D299EA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "0F605E33-4867-2A62-EAD5-98BE6E15EFBA";
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
	rename -uid "898710F6-4983-2E56-7886-BEAB829DE4CE";
	setAttr -k off ".v";
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
	rename -uid "6B29FBA8-47A1-2D98-9635-7E89D88AA056";
	setAttr -k off ".v";
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
	rename -uid "41A1F3A0-4499-C758-55B7-59A8AD1D758E";
	setAttr -k off ".v";
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
	rename -uid "8915C086-42C9-DF13-9918-7F863B2F0BCB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "88EFCE50-4FF4-E957-EB8E-16AE64D4C77A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CB98C31D-45AA-908E-3591-7188530BBD25";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F280A926-4A1E-EAD2-B6C0-9D94FF8F95CD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724567 -30.070644536323634 -1.5859733749936746 ;
	setAttr ".r" -type "double3" -1.2722218725853952e-014 -2.5444437451708084e-014 -7.0167092985348988e-015 ;
	setAttr ".s" -type "double3" 1.7538799546502166 1.7538799546502193 1.7538799546502097 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "CE490A85-4FFD-CB9D-8253-CABFDFCBCBAD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "2E3C4937-4B9A-3142-C116-AAB8CCA19E36";
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
	rename -uid "C15E58A6-4344-1F9A-57F1-6D8193C2C9A7";
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
	rename -uid "715DE2A0-4F74-CDBA-E656-119813FBA6D7";
	setAttr -k off ".v";
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
	rename -uid "1EA56755-4E19-6FDC-E4F3-DBB9D30154DA";
	setAttr -k off ".v";
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
	rename -uid "FA645207-4772-0C78-DC06-D18C77AE1554";
	setAttr -k off ".v";
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
	rename -uid "46968CEA-4D37-D0C2-4987-D4B85C1CF151";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E79DD93D-46F1-2553-9E36-4E99C5AFC9B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6F8EB4DD-4A1D-363B-DD53-44A67FB9B9F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B229023C-41A3-DE29-F543-E8BCFDC5D579";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547249509 -29.261428725477426 -4.0684386981538104e-015 ;
	setAttr ".r" -type "double3" -3.8717038977768618e-029 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502186 1.7538799546502182 1.7538799546502106 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "71944014-41A4-2776-B4E5-5F83937872A6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "08B5D7DD-43F0-1534-3145-60B728BCC3F5";
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
	rename -uid "A54557C8-4842-40FF-66E4-CC9EAD1B2050";
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
	rename -uid "DF0569F7-4F0A-199C-F8DB-398A94CECEA7";
	setAttr -k off ".v";
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
	rename -uid "688CF9DB-4D4A-91A5-BC13-C0A437C98353";
	setAttr -k off ".v";
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
	rename -uid "1B0857FE-4571-E861-7AA8-80BB8455AF42";
	setAttr -k off ".v";
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
	rename -uid "A4CDFA53-4B1C-B14B-EC94-5EBA4A085E1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5FADE9B3-4F49-8365-080D-52AE25D2BE3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F2A7E85A-4BCA-2A91-A592-508F1A57D480";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "165CF26D-4071-29E3-96E7-6586846D0513";
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
	rename -uid "FF75EF55-4EBD-C65F-3C3F-24B68B6BDB2E";
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
	rename -uid "836BEA73-404B-A077-32EE-D9BB12C538F5";
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
	rename -uid "C4BD89E1-499B-D254-6EF4-E4950F7BADF5";
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
	rename -uid "581E3ECC-47C4-7985-A585-B590FAFA210F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916358 -26.793934099519557 -3.9146096093576574e-015 ;
	setAttr ".r" -type "double3" -3.8717038977768607e-029 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502186 1.7538799546502142 1.7538799546502071 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "C65C2339-4FEA-ED2E-E553-479A24EC0AB6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "9BEA8198-4CE5-4CD0-ED9E-30B2E453AAD1";
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
	rename -uid "B5831246-4A8E-84EA-2EC2-1F862EAB711A";
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
	rename -uid "FD9DC1AF-4074-7EAA-C3A9-94966F68DFCB";
	setAttr -k off ".v";
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
	rename -uid "615786FF-40F3-8747-5D42-0F9253BC9C9F";
	setAttr -k off ".v";
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
	rename -uid "EC968E39-4EB1-8162-27EB-FE852E6511B6";
	setAttr -k off ".v";
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
	rename -uid "3B185E6D-4035-F7D7-2B96-39B2E4A12A31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F4FCD4E3-470B-549C-6C5A-258A520E4353";
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
	rename -uid "D30CA279-4D5D-43B3-8636-AB9F61BDF233";
	setAttr -k off ".v";
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
	rename -uid "837D15BB-4D4A-06E0-B4EE-44A1A3F8D1D6";
	setAttr -k off ".v";
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
	rename -uid "7E03CE70-4F71-DA4D-194B-53BD434F2AE8";
	setAttr -k off ".v";
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
	rename -uid "AD4A8BB2-48D0-DEC8-1740-A29F88E569AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "18AA4CD9-4D4E-7DF1-68DC-0CBE90514255";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BCFF3061-43E7-10A8-915D-31AD86D7BDF3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "126EB2F5-4A5C-052E-DEFE-92B68E552E30";
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
	rename -uid "99A1F6C9-4566-7C4A-209C-739565E61B08";
	setAttr -k off ".v";
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
	rename -uid "899306A5-44A8-4A13-95AC-9D95403C09DC";
	setAttr -k off ".v";
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
	rename -uid "DB55B493-4A4C-E393-AACD-1E97C8948F98";
	setAttr -k off ".v";
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
	rename -uid "4DF147BD-4F5E-6C27-3662-43A749C09D1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "BEFB3DF5-404C-B6C7-D05B-09A5BB502F17";
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
	rename -uid "DFA18028-49B1-A0F2-507D-269BDBB04E48";
	setAttr -k off ".v";
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
	rename -uid "8AEF3AD2-4729-F14B-781C-08BF5FC236B5";
	setAttr -k off ".v";
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
	rename -uid "3A7462C3-4402-59EE-F492-4C8C6E6BF4DC";
	setAttr -k off ".v";
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
	rename -uid "52619D30-43E0-6D13-7019-5680BEF8E904";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "27E33B12-4EE7-0DFC-FD6E-CF84C816833A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "16D947D9-4DF5-5188-7724-D592A6E651CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ED828F1F-4072-D759-4882-EFBC4BB61741";
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
	rename -uid "706C69B1-4A65-4E3C-8BC6-FF859AA49322";
	setAttr -k off ".v";
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
	rename -uid "6BB192F7-4601-1151-93C7-019BB91549C7";
	setAttr -k off ".v";
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
	rename -uid "5A9D3885-4C6B-8653-804E-258FDC1E7604";
	setAttr -k off ".v";
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
	rename -uid "416A16BE-43B8-5455-D6F3-6E80734D34A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "80316960-49B9-6978-D321-26B096761E50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8DCC0E4B-4CF5-A8EE-DC17-F3AB197D49A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "17D9F2B8-4A2D-705D-FF5E-FAA7705A293F";
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
	rename -uid "8C8A2D0C-45C2-D606-97DD-08BBF79B7B2F";
	setAttr -k off ".v";
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
	rename -uid "223DAC4E-4D83-8929-3A3A-11A91B4AC90E";
	setAttr -k off ".v";
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
	rename -uid "AAB85705-473E-73B3-1B84-588AC9A7783D";
	setAttr -k off ".v";
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
	rename -uid "45EE0DDF-4374-3BAA-7C37-4EA31D643C77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A4C547D0-45EF-D8DF-D784-31AED22D00B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "94414B03-4AAA-DB4B-ED42-41951E0E665F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9DF9AE5E-4391-3BF7-434E-C884221057EB";
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
	rename -uid "BD673D23-475E-C2C7-16A2-1BA6981A3AB5";
	setAttr -k off ".v";
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
	rename -uid "E629FA17-4479-425B-22F2-FEBAF671A748";
	setAttr -k off ".v";
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
	rename -uid "ED8468E2-4312-8E24-4B68-09970BC8358A";
	setAttr -k off ".v";
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
	rename -uid "4B0A19DF-4C51-E3F2-16FF-B5AE68B04E3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "3087D544-4750-3A3C-2B35-8FB4A0C1D06E";
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
	rename -uid "81823591-4C76-44C9-0886-A9917D56248A";
	setAttr -k off ".v";
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
	rename -uid "3299B8AF-449A-812D-8370-9996E75093B3";
	setAttr -k off ".v";
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
	rename -uid "0613DF7D-4D7C-CB59-549B-87BF71A6D4DD";
	setAttr -k off ".v";
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
	rename -uid "DE570F8C-4D8E-81E6-7841-889096B56A24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5AA19B44-4538-7318-1DF4-9ABC630B8116";
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
	rename -uid "80E36320-48A1-C862-10FE-C0B8645420AF";
	setAttr -k off ".v";
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
	rename -uid "8AC205E7-4FD6-5228-D0F7-F7AFB7077E0B";
	setAttr -k off ".v";
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
	rename -uid "6CA5DC49-479A-5236-4F09-3F901D9004B7";
	setAttr -k off ".v";
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
	rename -uid "61705FCE-4590-5EA2-59AD-C9926E98D49E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "27D034E6-4637-72A9-F88A-0DAAE8EE74A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "279AC4BE-4E66-B257-33B7-4593D7CE45C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "93EFA739-48DD-EF5D-8635-7D85B54FB780";
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
	rename -uid "6936762D-4F44-DB74-400B-AFB9E17AF751";
	setAttr -k off ".v";
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
	rename -uid "E07C05A7-43C8-8E04-386E-D29212C4C149";
	setAttr -k off ".v";
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
	rename -uid "FD0EE50B-4E91-2827-77E9-D1AA3EC1982A";
	setAttr -k off ".v";
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
	rename -uid "F7D21855-47AD-06DD-92C6-BFB01A4F4805";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "04853807-4DD6-CEC9-7A5B-AFB04A7AB327";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8BCE15BF-4B31-0DF5-AAAC-AA8C4AA3E147";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "730B933B-4D73-A58D-1AD4-9EB898BC78F4";
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
	rename -uid "D2D559D5-46BA-CDB8-BDEE-3DB9F213774E";
	setAttr -k off ".v";
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
	rename -uid "E456585A-4459-EEB8-2533-DA961A0B74AF";
	setAttr -k off ".v";
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
	rename -uid "C8E4EF56-47A3-3F51-8185-328A9694D70D";
	setAttr -k off ".v";
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
	rename -uid "C99B242D-479F-C156-C343-6BA418C86C31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "28995E50-478B-28BB-1297-2A8A26C082BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "17CCCEBB-49B8-58BC-BF45-81AFC7230815";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7304D52F-4ED8-A19D-4C06-D285065B706A";
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
	rename -uid "442878EE-405D-48B7-B73E-77BB6AF211B6";
	setAttr -k off ".v";
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
	rename -uid "BE871988-4956-FA5E-AEC0-0B9BCE3ACA1F";
	setAttr -k off ".v";
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
	rename -uid "C71E3A64-4532-14CF-6EEC-74B19A51F4EF";
	setAttr -k off ".v";
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
	rename -uid "0229692E-4D89-BCEE-96E6-2DA0EDBB1B6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "4087B2FD-4C2F-5EB3-1F5D-BCB83731E04F";
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
	rename -uid "90C9DD30-4FD9-B739-886D-B2867308A2AB";
	setAttr -k off ".v";
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
	rename -uid "A6B2F494-491E-6439-C86E-72945661F6FB";
	setAttr -k off ".v";
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
	rename -uid "4D1971D2-4579-DF8A-3BB8-079C5FEA4C1E";
	setAttr -k off ".v";
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
	rename -uid "6632B0B2-4ED9-9AB4-DAA4-9AAD283C6147";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2D71AFF8-4D71-97C8-F5AF-50A0F1F59680";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1BC5998F-406C-67D1-B5BD-26938FB09B21";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D34A966B-46B1-08A6-1BF3-32AE20285B67";
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
	rename -uid "46C58BE6-4103-CC18-69BB-DBB46B1B3EBA";
	setAttr -k off ".v";
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
	rename -uid "95016EF7-41A8-B2B4-1BC2-D5B383103A19";
	setAttr -k off ".v";
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
	rename -uid "CDC2D418-4BC8-4118-0A1B-D795CFE6EFA1";
	setAttr -k off ".v";
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
	rename -uid "2F01223A-4315-E114-A7CA-7190CDED73A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "047D7AA5-4702-349A-7BBF-3BB1A22BE4DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7BC6FA61-45B7-058E-340A-2C92FBB555BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "27E28870-485C-CC9E-62BC-3CA2820E633E";
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
	rename -uid "53479D97-423B-0F1D-6A4B-74A6F05C2045";
	setAttr -k off ".v";
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
	rename -uid "DD2331DF-4518-1491-074C-189B57CD8223";
	setAttr -k off ".v";
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
	rename -uid "96A15491-4009-2A96-86B9-DFB23863363B";
	setAttr -k off ".v";
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
	rename -uid "DC83922D-46ED-E651-B773-EEAE917DF6C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DF9E9F2C-4E6F-9F29-B78C-FCBA2CCF5DD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F808BFFA-4C74-6638-DC45-A2BA22ED9677";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "59DA644D-46EA-8484-4AFA-44B89FF931F0";
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
	rename -uid "16A6065E-4ADF-12C9-20F0-9A97DD214C90";
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
	rename -uid "F74D6F78-4C36-8ECF-C459-AD886D464792";
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
	rename -uid "148735AB-4D6B-7A31-935F-8D9D1B11328D";
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
	rename -uid "BF1E5DF4-44E5-CB33-96F1-D4BB15D84B1F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754586 -29.032786855763536 1.480432772503266 ;
	setAttr ".r" -type "double3" 7.5791665394124275 165.69575562109674 49.348303523761373 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786029 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "38F2DCAE-4A69-F03E-D9A5-DBA171147F49";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "C820EAE8-4DBF-3A5F-D6D9-33A3490DB0C3";
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
	rename -uid "5AA18969-4D2F-483A-0A38-EAB216976EFB";
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
	rename -uid "E93A46C2-44CE-A439-B281-CA864E1B63EB";
	setAttr -k off ".v";
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
	rename -uid "1550088A-446E-00E2-38F0-4BB534090535";
	setAttr -k off ".v";
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
	rename -uid "ADE4535A-45A1-692C-C2B9-1AA9680A5858";
	setAttr -k off ".v";
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
	rename -uid "755030EF-4221-086C-6441-728DB8A14484";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F4B71B02-461C-3636-1D30-7EBAC65DE9B7";
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
	rename -uid "86C6A8BD-4FA4-85E2-15C3-ACBE8116E3BC";
	setAttr -k off ".v";
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
	rename -uid "3EFA44AC-4B88-B01D-3552-0FA5C375BE47";
	setAttr -k off ".v";
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
	rename -uid "D46F57A1-4219-A510-9E8A-F3A610942252";
	setAttr -k off ".v";
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
	rename -uid "B80537FD-405C-D2C5-46BF-23B147F2755D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2B91837C-4ABA-9061-4B09-A8A11A9D0037";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "12086D18-4597-0128-B74A-C28DAA6D8BCA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FD4A5224-49BC-DC31-16F4-E495B84D20AA";
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
	rename -uid "EAC86671-4F03-9062-255A-D1B1DE86B4A8";
	setAttr -k off ".v";
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
	rename -uid "A88735BF-44D9-6C77-FEB7-6DA2F3F87C85";
	setAttr -k off ".v";
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
	rename -uid "5FF26A99-46D5-10A9-3E6A-EB9C7025CB25";
	setAttr -k off ".v";
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
	rename -uid "F9E0AB45-4810-5624-C342-4C8457ABB4D9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0F65D21B-45CF-FD18-CEF4-F48772071145";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C69CEB57-4A8C-CBA1-1ED9-9FB7938119D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "01DEBE71-44A1-0C96-3D00-BBA6CCA24BFE";
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
	rename -uid "4FD2A8F7-4EDB-D3AC-C4FB-0EA5A9CEBD38";
	setAttr -k off ".v";
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
	rename -uid "4380CC03-4D93-8629-ED20-F3AF8A87C4FF";
	setAttr -k off ".v";
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
	rename -uid "2AEB4A6C-470D-B546-FFA2-818279476707";
	setAttr -k off ".v";
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
	rename -uid "8348501B-4610-0E3A-5DB4-1E9EC0E46FEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "41C45F45-4103-72B7-A9C6-8586C650DDD0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FF6E9F92-43DE-0375-86D3-5FAA638F344C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FA8DECC2-4A5D-4BC9-3DF0-7F94164AB8D6";
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
	rename -uid "A80C969F-4AA3-29E2-5F6E-4D92E717ED99";
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
	rename -uid "EB78444A-4A10-0E99-F9E0-17A8A9406F39";
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
	rename -uid "88715021-42EE-E0C8-B0A5-0CB8197F458C";
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
	rename -uid "DC090AA6-4052-1530-E8CA-3B9801E21B59";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309188 -29.023661369441797 1.4173349723038271 ;
	setAttr ".r" -type "double3" 0.54140613098450785 178.40951950034301 47.737641631363815 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.632098310678602 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "B8605BDD-4E89-D13B-E522-CBA4AFC7CADD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "DF560D60-4EDF-3E04-6828-86BEB6661B56";
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
	rename -uid "C495205B-48C2-C2DE-E555-16A513F6C5D7";
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
	rename -uid "3A0F9C99-41FD-5257-A5EC-E69C273D2DB9";
	setAttr -k off ".v";
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
	rename -uid "0CA7853F-456C-685E-9C6B-6D9C68FC40D7";
	setAttr -k off ".v";
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
	rename -uid "BCC9C0F8-4F6E-7A24-14E4-B88BE7707B15";
	setAttr -k off ".v";
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
	rename -uid "43401890-42C9-F970-46E8-B3BFDC0754C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "818F8311-4CB6-17E0-561A-97B33E79F96B";
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
	rename -uid "BD64BC4E-4DC6-ADC5-B94D-AA8350DC3668";
	setAttr -k off ".v";
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
	rename -uid "CDCBC9F0-46C8-3835-6622-E4B44FEAFD9B";
	setAttr -k off ".v";
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
	rename -uid "255061D4-4F0F-824D-53C3-4FBAB3729664";
	setAttr -k off ".v";
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
	rename -uid "7590F8D8-4FBA-AD5B-1FA7-C08B7DB04D55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DB9CD3F8-427B-7DAD-2F95-F48F3ED15AC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "830E4BC7-4D37-3FAD-744B-8EAE89517CCA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "769E744E-4C5A-52D4-DD2B-E9B27BE46FA4";
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
	rename -uid "95425791-4832-A50D-44DB-BA9C0CF34C3D";
	setAttr -k off ".v";
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
	rename -uid "2580F08B-4543-4D6A-BEBD-8AB16ECD25FE";
	setAttr -k off ".v";
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
	rename -uid "17E86934-4063-9303-AE5E-FCB573027551";
	setAttr -k off ".v";
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
	rename -uid "989D46A0-4614-AEA4-E919-53B92490BC16";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "50F5897A-4A24-AB8D-771B-E5A653C989D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C4633EA8-46B0-3519-276C-4BA7B1FE1E67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0DBC768F-4FE8-2548-0574-4893B5CA8C95";
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
	rename -uid "E91DDC4A-4FC4-BE6E-AE97-9AB6CB45F1E9";
	setAttr -k off ".v";
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
	rename -uid "7CDE41ED-49E2-6D09-3DE0-DC952C33EBD7";
	setAttr -k off ".v";
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
	rename -uid "88F777B0-4B66-B5B0-E84D-86A46B52C85A";
	setAttr -k off ".v";
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
	rename -uid "4862DC0D-4DD2-3922-4537-A3A376886DE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "94F43636-433E-71C8-6040-11A62E2BE26B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6763C262-49DC-F380-1A7D-22B5B1C9CE90";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "00768E56-419E-0B33-BB7A-DA9CF21A2ABA";
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
	rename -uid "3D14FDDF-46C5-6A1C-D17C-0CBF2129AC06";
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
	rename -uid "9BB49A9E-4137-8C06-83FA-4BA7473CDB0B";
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
	rename -uid "618EF1ED-40F1-BAF4-889B-3CB2D309CE09";
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
	rename -uid "4CABF35E-4E3F-7681-11B4-679EB9802504";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.22243322515321 -28.040620010901279 1.1418187531108759 ;
	setAttr ".r" -type "double3" 174.15150560514738 -9.9768879508771722 -125.88865264712203 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786024 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "82D435E2-4A27-9C54-B5B5-B2888398D957";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "6D1D1EF8-4640-B191-7925-1AA4E89EE1DC";
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
	rename -uid "70B5D8DB-4C34-6C6B-EB63-6CA45EAC43A5";
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
	rename -uid "9CB23AA9-4DB7-B927-8EAD-63801470644C";
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
	rename -uid "3B4ED685-4D6A-8728-03DB-98B2C875020F";
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
	rename -uid "AD74B0A0-4CE3-4C80-D433-3FB5C96EF7C4";
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
	rename -uid "0A9A3842-4B18-307D-584B-AFBA9D720AE8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400629 -38.076493243285306 11.71416362193559 ;
	setAttr ".r" -type "double3" -98.404354317568462 44.65425854570406 -90.724179884703602 ;
	setAttr ".s" -type "double3" 3.4032157947041322 3.4032157947041184 -3.4032157947041277 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "D3A6E887-4C6F-3BF0-14D8-EAAFE3B01ED1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "90C4D8B5-4C87-92AC-018A-DDA8A51A3BFA";
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
	rename -uid "3BE8752B-41A7-8C37-431C-939E0559F917";
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
	rename -uid "D9956D4F-4594-F9A2-A30B-478AE3986B01";
	setAttr -k off ".v";
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
	rename -uid "C7713713-4F8E-7D93-732B-F1996AD011D5";
	setAttr -k off ".v";
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
	rename -uid "E0AB4CC0-4B27-2B6E-A1BE-9C89F1C8D65E";
	setAttr -k off ".v";
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
	rename -uid "E3856953-4793-A209-F1AB-00ACD2C0C868";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "9D59E89B-420E-40E9-7ABA-5B93FFDCC953";
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
	rename -uid "334A7F8D-474A-7E63-5617-A69C63B07C55";
	setAttr -k off ".v";
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
	rename -uid "DAC3A39C-4326-C4DF-7985-91A6FED6AE69";
	setAttr -k off ".v";
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
	rename -uid "23CD483A-4030-8202-D9AF-EC842C01562D";
	setAttr -k off ".v";
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
	rename -uid "F697CD1B-4729-5574-1832-24AD767D4862";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DBF3BEFC-4E67-B0E6-A229-299E06625539";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4AA08DC0-4FA0-CD38-5E2B-EA909DEF9075";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4CC7884C-4793-2D50-00E4-AAB57E2C4BD8";
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
	rename -uid "816B04EF-48D4-8A21-F649-2A94D9EB0363";
	setAttr -k off ".v";
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
	rename -uid "E945F222-4CA5-7766-324F-35BBCA85F9D5";
	setAttr -k off ".v";
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
	rename -uid "121572ED-4A30-AA69-080B-A5A1BE300887";
	setAttr -k off ".v";
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
	rename -uid "D32C44C8-4B43-C0E0-8DEC-8E88D29E1584";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DB7B1840-42A6-CE2E-A9C8-22A4CB3B93E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EC570D74-4747-1E62-A6D5-E18C04C2F0C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1BFD6ABD-46E4-962D-3754-5A8128E9AC4A";
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
	rename -uid "A0681EFE-4F7F-8600-C8B9-39BCD63F8A87";
	setAttr -k off ".v";
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
	rename -uid "7FA4BC0B-4CBD-F24F-B493-EDA42F25DF4C";
	setAttr -k off ".v";
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
	rename -uid "74DB6FE8-4806-E600-E5D3-26B3ED0CE32E";
	setAttr -k off ".v";
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
	rename -uid "5A301CCC-4855-B652-197C-DC946B2F7AB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "775BF84B-4686-D7CA-52C5-5EACAADAD1C4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "33F73DBE-43B1-372D-3877-299438F6E4C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FD273D71-44FC-6427-1581-7293F919AAC4";
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
	rename -uid "B363ACF8-4CFD-E793-620C-B7B269D2DBFE";
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
	rename -uid "2E73D849-47E0-8BD5-2B9D-94A04F9AA024";
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
	rename -uid "EA688BFD-4537-8FCA-8672-379B8366516A";
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
	rename -uid "E444FA7D-4845-21B6-21D6-058C00E41D49";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713103 -27.336008057181051 2.4648652761315182 ;
	setAttr ".r" -type "double3" 170.83456651198321 -22.11117621255843 -122.87938490445563 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106786002 -2.6320983106786047 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "765E17A2-4815-3C6B-15C7-36AD91F1C9BD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "B0CC10ED-4773-CF1A-5420-6BBA3AC5FD06";
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
	rename -uid "C9CB2197-45E1-56F1-A888-7AA8ABC23B9E";
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
	rename -uid "318E0F01-4B45-FE55-E46A-BA8A265EEE88";
	setAttr -k off ".v";
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
	rename -uid "B8A172F9-4465-5CC1-0021-3EBF087CF392";
	setAttr -k off ".v";
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
	rename -uid "4F2C78E8-4031-29BC-D35F-B0A45632D303";
	setAttr -k off ".v";
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
	rename -uid "03B43732-445C-B941-1A1F-A2907F888D44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "2CD16A13-4B53-789A-B528-81972726708F";
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
	rename -uid "A72E3888-4513-6548-A6EA-92B0C5856534";
	setAttr -k off ".v";
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
	rename -uid "BF32E66B-4437-C294-66FC-98A4A459BABD";
	setAttr -k off ".v";
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
	rename -uid "1F19DA58-472F-A534-49E1-0FABA87CF008";
	setAttr -k off ".v";
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
	rename -uid "150D29F8-435C-E0AC-269F-BC90F7F0E095";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F7973521-4C75-2C85-871F-DBBC6D42994F";
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
	rename -uid "6373EC7E-4C38-54D5-E7D9-6CB3259326AB";
	setAttr -k off ".v";
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
	rename -uid "DCD5103B-41F6-60DC-94E5-2E89330AFA3D";
	setAttr -k off ".v";
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
	rename -uid "83A84E76-47FD-DDAF-AF2B-FEA614E03B00";
	setAttr -k off ".v";
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
	rename -uid "B2D2EAAF-4334-D382-018D-E0B5D092BD66";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7BD23F26-4430-20BC-1359-799A757B2EAB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "30F06A49-41EE-65C5-0D3D-689CB50E13D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1A5CEE87-472C-791A-A41C-E88DCC01CAC4";
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
	rename -uid "C53478BA-4DBB-8F25-1F3B-BD818C874703";
	setAttr -k off ".v";
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
	rename -uid "19B08CAF-41BD-25E9-2123-8089183AE661";
	setAttr -k off ".v";
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
	rename -uid "A96ABF1E-4A60-221E-D34D-C68FFA5A2AC4";
	setAttr -k off ".v";
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
	rename -uid "40A0B434-4DFF-0D3E-7D55-2FA8BD4FEC45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "810FDFFE-4009-50E4-B05F-468A71251C03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D99BF4B8-4FD4-28F2-790D-8695340F789F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "627ECE33-479A-EDBB-E3D8-49A4C4609ED3";
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
	rename -uid "5A048187-4FCB-FF2C-4DAF-468E800DAA5F";
	setAttr -k off ".v";
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
	rename -uid "0D0BBB13-4412-4869-8E8F-619902FAE556";
	setAttr -k off ".v";
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
	rename -uid "D29AFBDD-43F4-E466-D868-32A8F76CAE96";
	setAttr -k off ".v";
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
	rename -uid "BCE2FBD1-4D4A-2432-972C-5786916018D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C16A113C-472F-7101-DE96-119A502FE22F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4F8489FA-49A9-EFC2-8A55-3A84448FD662";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B9B99B0B-425E-7047-1062-5AA40CCF4DBD";
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
	rename -uid "1656AB44-4E1F-8258-DCF9-1D9839FA2239";
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
	rename -uid "4CE2DAED-465F-AD52-1063-F3B3512B06B4";
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
	rename -uid "1530683B-42E0-7AE3-0A69-CA8BD2FA17F9";
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
	rename -uid "9A85CF73-486E-95F8-4C61-28AEED939EEA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042892 -7.0737929587543196 17.725867635512845 ;
	setAttr ".r" -type "double3" -55.556977946373202 -63.100734454449608 102.71864583729834 ;
	setAttr ".s" -type "double3" 2.0434672163157268 2.0434672163157215 -2.0434672163157264 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "FB225DB9-491D-A24A-518C-A6A20C41D6BD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "68E94335-4991-94A8-DA26-C38B0EDF2A30";
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
	rename -uid "38FEDF13-4780-D870-0A3D-2888139E45B2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648682 ;
	setAttr ".r" -type "double3" 2.1534408611046039 175.80406292066331 45.437740049298235 ;
	setAttr ".s" -type "double3" 1.0495082267377434 1.0495082267377396 -1.0495082267377409 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "F686AE72-4DA1-29FB-D94F-28B39814DA09";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "CAD64089-4EA2-F3A4-92C1-228E54A1D5C1";
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
	rename -uid "A645371E-4044-357B-46CD-57AD85197601";
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
	rename -uid "BFBB404A-4FBD-256E-6F2B-A2B0A55FD16C";
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
	rename -uid "FE5561BD-43CE-AB9D-E445-4AB10726F072";
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
	rename -uid "23745646-4AC9-DDBA-7D2E-2495EF29EA3C";
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
	rename -uid "857D5AFE-4F2D-2E6F-F7CE-DBB441EA50CE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.50752147050984 0.0092761897382758873 0.11673327753265024 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377371 -1.0495082267377371 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "9ECD7A6C-4049-4202-8610-AE9E8AAEDBA1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "E3A1C839-47F3-A80C-B52F-A093F7C41D39";
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
	rename -uid "D36EF4D0-4F10-FD36-817E-E988CD99181C";
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
	rename -uid "6848BC42-46C5-53CF-B8DD-D9962360FE1A";
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
	rename -uid "558B131F-495B-F2A9-E1D2-ED9668AF55C5";
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
	rename -uid "234CA631-4DDC-42AF-848D-17B126356F72";
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
	rename -uid "ED832498-4329-0648-05AF-7F93E069C0A7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690754 0.19144303592045891 -4.2508893276606347e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377405 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "77DA93C0-42C0-D194-EC5F-19B1F532F681";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "D0D05548-4834-4A3F-1546-B8BD4775CE6F";
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
	rename -uid "753C7B93-46A2-28FF-0466-AEA7BE9CD67B";
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
	rename -uid "3E8E4198-4A6B-86AE-F049-0A83C44435BF";
	setAttr -k off ".v";
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
	rename -uid "B121D67B-4E8B-6730-93E6-ABAA5591E27B";
	setAttr -k off ".v";
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
	rename -uid "836B988C-485B-36E5-6351-D990A63DE907";
	setAttr -k off ".v";
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
	rename -uid "E26683C3-43AC-B1E7-7BE0-6EB11EE4F21A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B4AAD797-4159-C806-54D7-0D93420BA433";
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
	rename -uid "CD2E1508-40A9-FE1A-0B2E-9F98EBF6ACF2";
	setAttr -k off ".v";
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
	rename -uid "C2A8FCEB-43E4-328A-2643-A1BBE732A5FF";
	setAttr -k off ".v";
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
	rename -uid "D1FBA685-4026-A89F-E8C1-86BB6F5776BD";
	setAttr -k off ".v";
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
	rename -uid "2AAA4DD4-4430-557B-2887-4392D2604B83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0A3DB2A6-4FE1-E3F8-2C7D-5F94F0192A55";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "82431097-49A6-929F-7D59-3ABACE0CAB06";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "89F4546C-4DE2-8C07-F09B-DDA02AEAEF84";
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
	rename -uid "4DBA2115-4E46-428B-CD7E-E49C0B97A1E7";
	setAttr -k off ".v";
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
	rename -uid "91ABBEFF-4C0B-1073-15CF-CCB85098AAB8";
	setAttr -k off ".v";
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
	rename -uid "D9AE1E5A-48CF-D2F1-BEF3-E4AD16D18E43";
	setAttr -k off ".v";
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
	rename -uid "98DE23ED-43BD-BAD3-BEE6-D2B020AF0F9C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EF6FEB59-43D2-E030-6945-FBA03FBCB635";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3DA2FED2-4788-0FF4-4264-DAA028E8C69D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "80E194A1-4335-795B-AFF8-D08FF104B334";
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
	rename -uid "B78A62E0-4E09-408C-8E56-5591D40E377E";
	setAttr -k off ".v";
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
	rename -uid "E5A2BB4C-49CF-BD41-4C3B-E48A6F47BF1D";
	setAttr -k off ".v";
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
	rename -uid "39F75C9C-491C-4D9F-DF94-51902B63DAD8";
	setAttr -k off ".v";
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
	rename -uid "67C57E59-4F28-8FAA-7C9C-EAA5FEB63D08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "03F02E91-4FE8-A89C-082F-D1B2DC74F379";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "75A2B685-415F-6A99-3637-7F96F19AF32F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4EE20186-4DC1-2098-6001-98B0B9394A70";
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
	rename -uid "5A7F8F71-4667-727C-8FEA-B789282D9F76";
	setAttr -k off ".v";
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
	rename -uid "42839822-47A5-8E69-8B05-C3BA948F4DC3";
	setAttr -k off ".v";
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
	rename -uid "91E35C44-432E-DC48-BB35-4F9537FF301D";
	setAttr -k off ".v";
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
	rename -uid "9181D285-4254-F7E7-9B19-04823A59972C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B5A7E273-4F94-C441-058E-95855C784FD7";
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
	rename -uid "C7A7FF91-4690-A219-C677-2EA43AEEB704";
	setAttr -k off ".v";
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
	rename -uid "878A3C64-4C6B-1C2C-DF58-6796C966D735";
	setAttr -k off ".v";
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
	rename -uid "A7EFDF49-4F70-452D-4886-31B9BB2F5354";
	setAttr -k off ".v";
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
	rename -uid "7F394F79-403D-6C84-69CF-CC9C3104F4B9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "813D8509-48F2-6CC4-984C-5D9984235D09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EF54377D-4724-41DA-D265-B8A849A62F3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "228284FA-4BF5-B920-B3B0-7DBE6FEE8BED";
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
	rename -uid "9B6F2B56-44DC-82A1-9299-FB848F511170";
	setAttr -k off ".v";
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
	rename -uid "1ECF13B3-4AD6-8F91-7F90-BFA31C3A5880";
	setAttr -k off ".v";
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
	rename -uid "A9CDC323-4A85-794A-480D-97AA1F5AB52D";
	setAttr -k off ".v";
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
	rename -uid "BFE3D04F-4A4B-1662-0296-8C9174FAB344";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E77BC84A-4194-8C47-5D7D-8DAFDA99F1A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CA223ACD-48D9-429E-4CE0-D08289BBE63A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C218EB6E-4306-6707-92E8-6795164B60AC";
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
	rename -uid "D2C1C76B-4F4F-538F-A540-26BEA70A318A";
	setAttr -k off ".v";
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
	rename -uid "50D60DED-4D47-6524-27C2-C6B1F0CF351C";
	setAttr -k off ".v";
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
	rename -uid "11B592B7-4C9D-D0A1-A21F-DEA2CB265FA5";
	setAttr -k off ".v";
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
	rename -uid "AD1352DE-4E43-7CE4-4D68-C6AA81FF8894";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "52E2A44A-4063-927E-71E3-3486ADE4D74A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FE714A0A-488C-7679-DFF8-76B42BFF7BC8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D071CBEF-4AA2-0731-8369-6B8879247436";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 2.8990169397258372 84.223472754416576 2.9137877746396641 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "EB30BAC2-463D-D851-03B4-CD8F6E6B3B69";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "71B2DD52-49B1-86EA-92B7-29AF8039EB7B";
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
	rename -uid "F7F2C2C2-4EAC-E49C-960E-86AF91299347";
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
	rename -uid "72B15837-4218-4468-E42E-61966D88D2BD";
	setAttr -k off ".v";
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
	rename -uid "4032A457-40C3-9BD6-6A08-AEB026CE3EA0";
	setAttr -k off ".v";
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
	rename -uid "D1AA1E8E-41F9-B7A9-AEBC-B382B36D18A0";
	setAttr -k off ".v";
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
	rename -uid "D7EA9E5F-4A20-FA3E-F81D-3683D52451D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D5233AF7-4A0F-61AC-13BB-CAA76F406699";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "970F8B07-4465-649D-94D0-68A8CB61891E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F8D2D592-4675-4466-48BD-F8AFFCF5E68E";
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
	rename -uid "AC8E8133-4D93-D4AF-F219-13809F74181E";
	setAttr -k off ".v";
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
	rename -uid "53CFFDA5-4CDB-89C4-7BE0-A79F0AE19E9F";
	setAttr -k off ".v";
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
	rename -uid "D08C9DA9-445D-1372-5B2B-40B406EA0B13";
	setAttr -k off ".v";
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
	rename -uid "DB5FA47D-4F41-D8AB-706E-F0A285773D86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6632D454-47EA-A7A0-A119-688C31D38F1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8BFB6AC1-4D45-A9B8-96BD-3C8E1DCB2B2E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "01C95E1C-4B37-7FB6-9F9A-A1B1AE3C2B8C";
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
	rename -uid "2D2945C1-4BE0-01AE-7E77-DCB519F901FD";
	setAttr -k off ".v";
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
	rename -uid "F00B48BB-40CD-CC4B-2B73-AD91D38EB8DF";
	setAttr -k off ".v";
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
	rename -uid "4E67A862-4CF1-B383-E25E-D79CEDCFAE46";
	setAttr -k off ".v";
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
	rename -uid "8A0325BC-4A0F-19C6-5811-E0A0DED6FC29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F7F23279-4A72-6745-9C99-CFBD19CD8162";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4FB846AF-4054-4242-7D4C-6E815C4240C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1083B98D-4E80-0BDF-355E-769C8D15706E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687106 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 2.8990169397258372 84.223472754416576 2.9137877746396641 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "854CA9FF-4A6B-54E2-2A9F-D89DBE72E936";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig1" -p "foot_L0_1";
	rename -uid "32DAFE85-457A-4CE7-C6E2-D185CB266D6E";
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
	rename -uid "89E67DBF-4926-C382-31B4-8A891F0BE0C8";
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
	rename -uid "C5B1389C-4432-EAF4-8D1C-FDBCFDD6EA43";
	setAttr -k off ".v";
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
	rename -uid "424ACDA3-46DD-E031-3822-6DAAF0F75511";
	setAttr -k off ".v";
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
	rename -uid "BAEB383A-4B78-0F28-1784-8390F5E80C0E";
	setAttr -k off ".v";
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
	rename -uid "00CCA5AE-431D-54AD-B8DD-958C61C631CF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "50DCF618-47DD-6812-4393-849635113B57";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209228 0.19144303592045905 0.96902196420373699 ;
	setAttr ".r" -type "double3" 89.999999999997527 89.706856137729829 -2.4866037227258996e-012 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377378 1.0495082267377405 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "6E06F349-403B-F4E4-1CE0-B0A17E12BCFD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "AE88B3A3-4B5D-7B6B-9594-7EAAE7217CF3";
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
	rename -uid "1D39AC4A-4735-8705-52ED-A2A2E6D2831B";
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
	rename -uid "3FCCF49C-488D-C0F7-2021-CF8D3498AA5A";
	setAttr -k off ".v";
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
	rename -uid "69058F36-4E5F-C368-7222-078BF1E7A43C";
	setAttr -k off ".v";
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
	rename -uid "708061B9-4608-C54B-D6FD-27B8C5E5BE44";
	setAttr -k off ".v";
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
	rename -uid "E023FC6E-4FA6-26BA-3CAC-7BBBB97F0CEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "96CFE3FC-4732-A952-D4A6-F1ACD484F366";
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
	rename -uid "3F4F4E89-4617-98B6-DA7B-718101594E97";
	setAttr -k off ".v";
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
	rename -uid "3976D1D0-4EED-B10D-D5ED-91B726C73DA0";
	setAttr -k off ".v";
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
	rename -uid "7E8047AA-424A-8487-2092-F09403AFEA61";
	setAttr -k off ".v";
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
	rename -uid "9A496AE4-4BBF-8503-B922-D8A521BA3D19";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "688471B5-4C01-DD43-FBE6-3987C747CC8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2A6D5815-4693-C031-BDF8-41B737896DE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "37F24DE9-4360-1BD7-ACD6-65AFA67C7E48";
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
	rename -uid "8FC7CC53-435F-9CF9-3E26-CEA27EA429E0";
	setAttr -k off ".v";
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
	rename -uid "17181F14-43A4-FADA-5C65-6C9F945703A4";
	setAttr -k off ".v";
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
	rename -uid "4E453464-4CBC-7ED7-2184-128124503A85";
	setAttr -k off ".v";
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
	rename -uid "2BA96756-47C0-E255-B51C-AA80C1485A31";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A2798F95-4E5E-4ADC-2922-3F86F6F7F158";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B05EF599-460D-4E21-ADAD-6D990B2C04C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F9A06DF2-4534-3A8D-E9D5-0781555C6164";
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
	rename -uid "667ED0D4-4C97-5FB6-7C93-F29AFB8A0E57";
	setAttr -k off ".v";
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
	rename -uid "92ED5BA3-4F36-3BDE-1E4E-29B8314297EA";
	setAttr -k off ".v";
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
	rename -uid "35E38539-49C0-B04B-20C1-69A8338FDB07";
	setAttr -k off ".v";
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
	rename -uid "968CAAF7-4C6C-A3B9-C00F-D494C103A6CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C5AD2809-40D0-B617-9843-B2B61E57701F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6D9CD701-4695-2146-8FEE-0595DD7CD15F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B5EF2A80-49F9-AB01-609E-F4AA3FCB8FE9";
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
	rename -uid "65246E87-42E8-6332-A533-9EB255887618";
	setAttr -k off ".v";
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
	rename -uid "69032D0E-4970-8702-93B3-28A46988C57C";
	setAttr -k off ".v";
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
	rename -uid "4EA14390-409D-5717-ECAA-E2B9BCB6DC86";
	setAttr -k off ".v";
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
	rename -uid "CF806A51-413A-800C-742C-52B30AB79885";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5BEDC899-4A0C-25A8-DC8B-96B724AA34ED";
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
	rename -uid "CBD7B292-4864-6EEA-1EEF-74BFA1433F99";
	setAttr -k off ".v";
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
	rename -uid "3688237B-4822-425C-BC89-188B4CA19ACC";
	setAttr -k off ".v";
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
	rename -uid "12F30428-4605-C7DB-0EEE-C28A77ED0433";
	setAttr -k off ".v";
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
	rename -uid "BD720FDA-4F81-86E0-230A-46A1C6D83007";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "521B970A-4DD7-FB37-952A-93B3EF485C47";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C6D862A1-4665-C5A9-2AA9-6F8E378343B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "926A0426-4E05-92AB-C0EB-6BB8108B1CA3";
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
	rename -uid "59FFCC66-4CAC-1B3D-3266-FDBCA30CB466";
	setAttr -k off ".v";
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
	rename -uid "FD1E8346-4647-B3B0-A4BC-FF835B60A02C";
	setAttr -k off ".v";
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
	rename -uid "AA41306E-47CC-0682-C6E1-C5A5332ADA1A";
	setAttr -k off ".v";
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
	rename -uid "BABF086A-46C3-62AB-A0DE-99B375084352";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "67AB3092-4337-B6AB-80DE-A18DEC05CD30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "57189E7D-4402-9E96-64B5-09AA648224A0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "522C2465-4D21-ED7D-931D-13B5CE451C2A";
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
	rename -uid "5B34F224-4EA3-F15D-8483-BE8F32589C85";
	setAttr -k off ".v";
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
	rename -uid "38FE482A-41EB-69B4-6A36-BB8B93331857";
	setAttr -k off ".v";
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
	rename -uid "5A8E749C-4B0A-6C5E-48F6-A7BA00641125";
	setAttr -k off ".v";
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
	rename -uid "6CBEAAF7-4BCE-BEED-C65B-5DAD833880AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AD521CAA-4212-B237-6F6C-E0BEE22D8AA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F7EB895A-40D8-2407-71CB-3AA213A3880E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FD2498C1-4FE5-A3A4-CFA6-F68DE60DE45F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415475 1.059143706286116 ;
	setAttr ".r" -type "double3" 177.10098306027425 -84.223472754416591 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "5A67D53F-4698-639E-2788-8CA123A2F7A8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "FFF35A6A-432B-A54E-212A-D5AFD9FCF7DB";
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
	rename -uid "5E9BD3E4-4755-3579-830B-A79CF5FA7C99";
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
	rename -uid "5B9367E3-40EB-7F2C-B94D-4384976F06C7";
	setAttr -k off ".v";
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
	rename -uid "24354EAF-4F6C-F279-D862-C0A7CA4886F7";
	setAttr -k off ".v";
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
	rename -uid "2F4ED157-4BD3-1746-7DF0-9E8417948197";
	setAttr -k off ".v";
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
	rename -uid "AE65E03C-4662-EF14-B562-6AAE46E71490";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9DF1E84A-49B5-1371-D9E4-4B84758071DD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3F8F857F-4241-52D3-E2EC-0896E177C579";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5C88F34D-4141-2289-F0D7-91BD4389DE6C";
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
	rename -uid "BC011E40-4E11-92D3-C570-DD974FD95F27";
	setAttr -k off ".v";
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
	rename -uid "452DC80C-456E-9D67-7223-2F90F4751121";
	setAttr -k off ".v";
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
	rename -uid "FB4D0ED3-4C7B-6E5E-2A57-B5940944381A";
	setAttr -k off ".v";
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
	rename -uid "9665D347-4259-7804-4B91-318A18BBCFF5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4C8313A7-4DA0-CC90-19E3-419898784154";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F9DCBE2F-454A-5340-CD30-0199719CCFC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "871E9E48-4BFD-F298-5AAC-639ABF04AEE4";
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
	rename -uid "50516155-45B0-4C4B-BA9C-59B60DE6C180";
	setAttr -k off ".v";
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
	rename -uid "A2C2635A-4795-F26E-1A11-1688EA18ED5E";
	setAttr -k off ".v";
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
	rename -uid "B79D543E-433A-B360-726B-68A8C16704C1";
	setAttr -k off ".v";
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
	rename -uid "877D53F7-49C1-A81C-1DCD-F694182AC7C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "58AEB92D-4795-6DE9-A761-15921413F1AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1973F8EB-49FB-A0E3-6F64-F482CD97929D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "93952B96-4DB6-806A-E59D-A69CB7C30913";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415475 1.059143706286116 ;
	setAttr ".r" -type "double3" 177.10098306027425 -84.223472754416591 -177.08621222536053 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "B05DA3AF-4FC4-E80C-A3F4-838906F0F22E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig1" -p "foot_R0_1";
	rename -uid "6240D2F2-4C8F-7EB3-45A6-208D03A652BB";
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
	rename -uid "D02E5901-470A-7132-512C-BD9C6A05A304";
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
	rename -uid "21993926-4AED-E87A-4EC1-B2802C3B834E";
	setAttr -k off ".v";
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
	rename -uid "DA8975A8-4CDF-117D-082C-58B554CA899A";
	setAttr -k off ".v";
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
	rename -uid "45C82426-42A5-998E-6C4A-7EBC21EB4321";
	setAttr -k off ".v";
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
	rename -uid "48EBEE2F-4D66-46DD-6F26-1EBDA1F27CED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "79CE3C9D-4142-BC15-DC8C-9C80E0B69DB1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.21416685220923 0.19144303592045855 0.96902196420373488 ;
	setAttr ".r" -type "double3" 89.999999999997513 -89.706856137729943 -179.99999999999739 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377378 -1.0495082267377402 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "CE0808DF-4DBD-73DD-6EF9-EFADB6CA50B5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "0FE0A05F-4210-EA0C-8A01-D385C51420A7";
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
	rename -uid "DB0D822B-4D97-38E9-910E-5FAB216A262A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "BB6976AE-46BE-3873-2438-73B3148A7B7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "1FC4F2EF-414F-D450-4A04-80A39262ACA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "6242EB46-4132-37E0-9EE5-4797BDD4E6EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion49";
	rename -uid "AEE27911-4F1D-F479-AF2A-57BAEC4352EB";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns239";
	rename -uid "203C9947-453F-6F39-27BC-BFBBF4285427";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns239Set";
	rename -uid "14ED90FF-4B2C-35C1-436F-36B3892B2297";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns239GroupId";
	rename -uid "708833A8-43E6-09AF-F96B-D194B1D1AB16";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns239GroupParts";
	rename -uid "65761953-493A-D6B4-117F-29861357B7EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak387";
	rename -uid "9085B75A-407D-B8FE-3E35-F7AF45974556";
createNode objectSet -n "tweakSet387";
	rename -uid "005CA7CE-4306-79A2-67DE-E8A335A3EF37";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8343";
	rename -uid "BE5F63A5-4875-7372-927C-748E9DAB6F70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts774";
	rename -uid "CC3B1D3E-4B20-FAE7-6BA6-70B8ACB31F00";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion50";
	rename -uid "159012D1-4961-179C-6393-BC97658BDF4A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns240";
	rename -uid "0D2E3422-4E62-3370-87B8-6C993CA62453";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns240Set";
	rename -uid "4C71F0FD-4018-313E-5C62-CFBB6952602D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns240GroupId";
	rename -uid "63B65767-4648-8744-ACBB-DB83649516D9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns240GroupParts";
	rename -uid "99C2B100-44D0-EC66-2EBB-3BB57673AE28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak388";
	rename -uid "9A2BE1EE-4315-0DB6-9F3E-4599E7A6DF59";
createNode objectSet -n "tweakSet388";
	rename -uid "EDA3A0C3-4D73-1B61-911C-6DB5DB11AC04";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8345";
	rename -uid "A073C1AA-4D02-D8E7-926D-438276858ACB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts776";
	rename -uid "5E98B4A3-4593-0E53-DB70-78945D5B97B8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion51";
	rename -uid "17339028-49C1-734E-37C0-AAAB069CD053";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns241";
	rename -uid "574EBE41-4AA6-50AD-9057-27BFF09BF5E2";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns241Set";
	rename -uid "35DE89AA-4FD5-7B03-4C59-D18A0E7C71EC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns241GroupId";
	rename -uid "881FC96B-485B-C46B-C3EF-6AA67AAC305D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns241GroupParts";
	rename -uid "6C2C7ECC-488C-19E4-DC96-0CB5D5A51DCA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak389";
	rename -uid "18CBDA5F-407B-0D66-DFC3-B6963E902F8A";
createNode objectSet -n "tweakSet389";
	rename -uid "0BDB4CE4-415A-C6A0-AB94-48AB710AC358";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8347";
	rename -uid "A2497E39-4293-F334-0991-B59F47A3442E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts778";
	rename -uid "AA0777FD-40B2-A6FE-EC97-339A0169A897";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion48";
	rename -uid "2EEE42FD-4900-A6D3-7C43-3FB09DBDA393";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns238";
	rename -uid "A5F71B5A-419F-518C-BDEC-03B46BCC5548";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns238Set";
	rename -uid "F9B34C54-4D8A-32B8-AA0E-2B952A1CBEE7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns238GroupId";
	rename -uid "55BB776A-4030-F673-72AC-DA80A24839A5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns238GroupParts";
	rename -uid "64B427F3-473B-223C-E647-828512AF903A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak386";
	rename -uid "FC62C9EE-487E-E4EE-6EAB-0285BB914767";
createNode objectSet -n "tweakSet386";
	rename -uid "E610AA31-41E3-DCE6-090D-5C91E6729E96";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8341";
	rename -uid "F280FC20-4E62-EDA7-0C6C-47A54421FA6C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts772";
	rename -uid "3B4A894C-4636-2060-6989-0F852F2A30BB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion53";
	rename -uid "DFD2C10E-4012-3388-00A2-E88BFB42F553";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns243";
	rename -uid "B3F22631-4868-687B-095D-259CA4D3D2B4";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns243Set";
	rename -uid "CA13CE15-41B5-FCF2-BE66-5ABFDF51B27D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns243GroupId";
	rename -uid "18704B15-47A9-0425-5429-81AF3DAC6960";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns243GroupParts";
	rename -uid "0521E296-4593-30CB-1A66-AFA8F3601365";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak391";
	rename -uid "0554411D-424E-D21A-CA6C-7D93EB5883AE";
createNode objectSet -n "tweakSet391";
	rename -uid "37FA9849-438B-5204-126A-B8A624F4F9A5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8351";
	rename -uid "6C404A8C-4925-09BB-C234-1AA941278F62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts782";
	rename -uid "A76D305F-447D-6C9B-A9BF-FBADDCF9DD20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion52";
	rename -uid "D0308AAA-4391-D298-CC42-01887405AF4C";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns242";
	rename -uid "A7ABD9A7-4657-C9D2-5078-1497E9DB10DF";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns242Set";
	rename -uid "72807963-450D-B118-5CC0-E6AC6516DCE1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns242GroupId";
	rename -uid "018B8180-4CDD-4080-0B9D-5C9ED4F9EC28";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns242GroupParts";
	rename -uid "58ED4E68-4D8A-4FC0-0439-5DA16A7725C3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak390";
	rename -uid "CDDA4066-416D-9843-24C3-458594D3215A";
createNode objectSet -n "tweakSet390";
	rename -uid "0746D96E-4257-5C99-5686-92A6620031AB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8349";
	rename -uid "72EC93DD-4A8B-9999-1CD3-41AC1F6C68F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts780";
	rename -uid "5351F498-461A-070E-66A8-69917D03421F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns237";
	rename -uid "D7DC40FE-49B1-3364-D342-79ACD3984075";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns237Set";
	rename -uid "83DAB443-42B4-9F4F-8A3E-539B499D9B15";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns237GroupId";
	rename -uid "6E27AC57-40B7-B6FA-B7BF-588374E53114";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns237GroupParts";
	rename -uid "BE4F0CA0-4B21-9BC2-7981-01B4DF4D6078";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak385";
	rename -uid "A792F2B7-44DC-E1D0-2A4D-4398187D4042";
createNode objectSet -n "tweakSet385";
	rename -uid "982AFE87-428B-B863-4B0E-B1A042AA53B2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8339";
	rename -uid "B023509D-4546-EC16-956D-A5B5D67A2B39";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts770";
	rename -uid "68D79D64-40EB-5DD4-E590-89B31680A040";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion47";
	rename -uid "10BFCE36-4B02-BDD6-6736-1B9DE3148963";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns236";
	rename -uid "6401E83C-48B5-4B96-13DA-AE9893888188";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns236Set";
	rename -uid "A24A4A7F-4DDF-7C02-6899-BDAB8AF092D4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns236GroupId";
	rename -uid "EE5C74B0-48D8-3E62-CE4A-5DB35398A1F3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns236GroupParts";
	rename -uid "C54BD9EF-4E09-480A-2261-7B917DAF49FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak384";
	rename -uid "637E19F2-4676-0DF7-F4CA-BA9CD2209A5C";
createNode objectSet -n "tweakSet384";
	rename -uid "C830433F-474F-619E-1C8A-C6AF985024AD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8337";
	rename -uid "67E679DC-4EA9-27FE-A560-CE86DA13FBF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts768";
	rename -uid "11BBA18C-4A38-06A4-223E-B993E1C762DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "9DC4BCE5-4A5D-E910-7C07-3899B81EE29B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "17334751-43D7-C287-3CD7-28BDBEA55668";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns247";
	rename -uid "2C2828D1-4886-5F09-7EBF-A8B2592AE05B";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns247Set";
	rename -uid "46DDA8E2-44A7-93D8-C064-FDB7F2DDBDD1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns247GroupId";
	rename -uid "B85BA228-452B-F4A5-F4B1-DABDA47AF7C8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns247GroupParts";
	rename -uid "D7F0EE2A-43D5-6FD4-C2F0-B48BC5F9224F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak395";
	rename -uid "C512FFF6-4AF7-53EB-E703-C489E4DBCA79";
createNode objectSet -n "tweakSet395";
	rename -uid "8415241B-4ACA-85B1-6224-119C689B2747";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8359";
	rename -uid "9DB22B98-4C39-696D-370E-26B7DB0523EB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts790";
	rename -uid "1698CE38-40DF-C505-E191-3682C5C14F2B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns248";
	rename -uid "3A3CA07A-4390-1575-408F-8CBE26EBE53A";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns248Set";
	rename -uid "99DAE5B4-4236-14D5-2747-878DD6A325CF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns248GroupId";
	rename -uid "0285C06C-48F8-6239-471B-A88E1601C3BB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns248GroupParts";
	rename -uid "40989ABE-41B9-58D1-C56A-B281E956A83A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak396";
	rename -uid "6C8488BD-4429-DB18-5666-8DAE8C5E8FF6";
createNode objectSet -n "tweakSet396";
	rename -uid "1640D5F7-470B-7482-ABB2-BABC4A6A2C54";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8361";
	rename -uid "B80EDB5A-4775-7A04-A9DB-BC8153682C2F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts792";
	rename -uid "FF84335F-47C4-27D6-BC2A-2CAB047D1880";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion55";
	rename -uid "1ED6DFA5-42A6-6834-633D-E5A24E7E1E63";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns250";
	rename -uid "81DBDE4E-4C7B-9022-EAE3-7B9B0C5D2648";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns250Set";
	rename -uid "B5630813-42F2-3305-ECEE-D98E486CEA5C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns250GroupId";
	rename -uid "748D50E1-4FA4-A595-5ADE-FA8A1B5508E0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns250GroupParts";
	rename -uid "99B5F910-41CF-9F9A-209F-4490F8D4DA06";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak398";
	rename -uid "BD17B1E3-44F3-84F4-4E3D-4AB05FEF17CA";
createNode objectSet -n "tweakSet398";
	rename -uid "5B9FE9E3-4660-548C-277A-B1B0C0AF30CA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8365";
	rename -uid "254B81D5-417F-035B-1349-CAB559D8B2B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts796";
	rename -uid "C032B3D3-4E26-DD44-0FE9-E8979A4C6814";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns246";
	rename -uid "A191DB03-4EF3-6AB0-0DC2-E6825044BDE6";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns246Set";
	rename -uid "D8652E9D-4A1E-A7F5-A504-7DB8535A6031";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns246GroupId";
	rename -uid "3C3669C4-4D70-5EB8-B6A3-99B92CF84CD4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns246GroupParts";
	rename -uid "1DF1F414-4D47-E180-DC9B-62866B9147F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak394";
	rename -uid "50CA979E-4E44-C3CB-E145-57BD4982B5C9";
createNode objectSet -n "tweakSet394";
	rename -uid "A8469D28-4E1F-C4F4-266C-BD882DAA4E91";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8357";
	rename -uid "2A6029E2-4059-526E-95D1-AB8658FC6EA9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts788";
	rename -uid "E9B7B85E-4BFC-738A-33BF-0BA4AAFDB798";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns249";
	rename -uid "F259D5C9-4B13-62E2-0655-ECAD0671764F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns249Set";
	rename -uid "EE5C276A-473B-84C4-1730-029689AEAFC1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns249GroupId";
	rename -uid "1AE3F322-4C56-FACB-8829-94B3ECBE215B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns249GroupParts";
	rename -uid "A9834041-4046-E52A-4E61-779C2276B44B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak397";
	rename -uid "EF885B3D-4C19-83F0-7785-D7806E3053A1";
createNode objectSet -n "tweakSet397";
	rename -uid "C2F72D7F-47D8-265F-DFF2-E09DF7933A0C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8363";
	rename -uid "BECF7CA4-4F79-B7C2-BB00-DFBB029C8214";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts794";
	rename -uid "F8FE2362-4B1E-896D-4F06-6FB875223869";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns251";
	rename -uid "782A5D0D-43F1-9222-5AA7-52B6185EDB48";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns251Set";
	rename -uid "8B6126E0-43CB-4E6F-F064-CDB54BDD41F5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns251GroupId";
	rename -uid "1FDBDE54-4232-8B67-40D9-B79A82C321D3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns251GroupParts";
	rename -uid "3719B2B3-41DD-B983-2214-F4A7B7FD67D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak399";
	rename -uid "30472488-4791-DF5C-C37C-7BB4151DFA1C";
createNode objectSet -n "tweakSet399";
	rename -uid "DA593417-4D8B-2445-C257-D7B9886D3054";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8367";
	rename -uid "AADD8535-4464-80BF-FFF5-F9B2535391B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts798";
	rename -uid "FEC08764-4807-C30A-3489-FAADBF3F4740";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns252";
	rename -uid "E8316996-4FED-A120-9B45-1D81D252650B";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns252Set";
	rename -uid "962B9EFE-4E2D-CA15-9343-38A38CBB1E6B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns252GroupId";
	rename -uid "50A96F8A-4B34-1350-4793-A2B191462500";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns252GroupParts";
	rename -uid "6CB0EF47-4362-BCB4-07CA-85B17BC934AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak400";
	rename -uid "507C5B6E-4E17-83A2-5A32-D584D9595A89";
createNode objectSet -n "tweakSet400";
	rename -uid "65BB47B3-44DF-6B53-2292-698BCA9A6C51";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8369";
	rename -uid "994074E5-486D-54C1-7BF8-ACBE2646139D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts800";
	rename -uid "4501C141-4339-1F90-F79D-398F55C0C669";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns245";
	rename -uid "56F20C82-43A8-BF46-8A0D-4D9826952924";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns245Set";
	rename -uid "A2E35CCF-4955-A674-F5E8-8D9FD8C7609F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns245GroupId";
	rename -uid "49BD599C-4ECE-D51B-8E67-FBBA37ED0E3C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns245GroupParts";
	rename -uid "9DC61FA4-4524-7E6A-8C0C-43B310B9DB51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak393";
	rename -uid "9BD0DD98-49A7-8D72-617F-91AE1E7B5F7F";
createNode objectSet -n "tweakSet393";
	rename -uid "05993016-4973-0516-DC68-80A6BC6CB0C1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8355";
	rename -uid "0D907B1B-4EBE-6863-315B-DF86B2EA30AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts786";
	rename -uid "FAAE7022-40AD-0E16-772F-1FAEEEE9647A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion54";
	rename -uid "CDE57BF7-4D37-2BA5-4881-8C829FAD6E21";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns244";
	rename -uid "DFC5DCE7-4709-A77E-3B25-9081C63CA034";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns244Set";
	rename -uid "1EA3C210-4B35-49ED-9BB8-83AC62B0CA20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns244GroupId";
	rename -uid "61AE74F0-437C-09C6-91E4-84ADB289BF3B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns244GroupParts";
	rename -uid "90E06A74-4236-38A6-1EAC-FB8D2CAB6FA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak392";
	rename -uid "8B4A2601-4FF1-FD9F-300B-BAB7207F209B";
createNode objectSet -n "tweakSet392";
	rename -uid "70AE206E-4134-1A4F-5161-4EB6201CB399";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8353";
	rename -uid "A9CDEF20-419A-5F64-2F48-D98161C0445D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts784";
	rename -uid "295A8F23-41E5-0565-C59D-649D5769525F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	rename -uid "57E5A601-477C-EFAA-9B5A-228EBD002E2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	rename -uid "3397EFE1-4480-1B0A-5914-88BC20802FDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion58";
	rename -uid "177ADF9A-4070-7365-356E-BEB6948E084B";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns270";
	rename -uid "6478564F-4D18-4E64-967C-DDB5BEBDEF79";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns270Set";
	rename -uid "CEB854B2-4B84-B149-17AF-73927D72BAD4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns270GroupId";
	rename -uid "E03F0781-43F2-66F5-E733-15A985E9F3E6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns270GroupParts";
	rename -uid "C1FBEE92-4A2F-615F-56AD-208CF5A9B824";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak418";
	rename -uid "A513C0E4-4F3E-9EE4-123E-63BFDF56F148";
createNode objectSet -n "tweakSet418";
	rename -uid "A6DAC60C-4FF4-CEB4-3825-09B12E29DD2B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8405";
	rename -uid "67DBD848-4CAA-CE59-1FA4-418E7F6645F6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts836";
	rename -uid "07197E04-4831-494E-80B6-C4A98186738D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion59";
	rename -uid "BF3B40E9-4671-E564-F7A0-D5AF04D379F2";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns271";
	rename -uid "813D3F8A-401C-B76A-5725-179D5701C4A8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns271Set";
	rename -uid "9AE6140C-4ADC-4476-6C4C-D490EC525DE6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns271GroupId";
	rename -uid "4F7AABB5-4200-B94B-5704-C1814A39BBDB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns271GroupParts";
	rename -uid "E939DF5E-4792-FE5E-99A0-5B98D9E9E8E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak419";
	rename -uid "280F6172-4459-121F-7CE8-EDA8AA004D13";
createNode objectSet -n "tweakSet419";
	rename -uid "849905DF-4007-6DB8-7598-78BE3F8CDC53";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8407";
	rename -uid "FC9D8B8E-4DA9-20A2-1A50-689E9960DEAF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts838";
	rename -uid "E1B70275-49FC-F274-C9AE-60BB6F4D067F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion60";
	rename -uid "95D7CFA6-4887-407E-7943-3CB104FA0A50";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns272";
	rename -uid "FF273533-43BF-A6AE-C6E1-C584BBA2D0E7";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns272Set";
	rename -uid "C2FF49D7-41E9-33DC-3CA0-F28A5F6BAFFD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns272GroupId";
	rename -uid "3A8DD9A4-4BC1-B5B0-FDF6-6F98E14CDE6A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns272GroupParts";
	rename -uid "96057E10-46F4-B8A4-3F44-E8815C72D8E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak420";
	rename -uid "16A57159-49E7-A50C-4714-E291E1BEBFBA";
createNode objectSet -n "tweakSet420";
	rename -uid "43000120-413A-2768-07EF-CCB96E0E3455";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8409";
	rename -uid "511ECE69-4E0C-867A-5C87-15ACC9824E4A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts840";
	rename -uid "A65E10E8-4BAF-AB12-56A9-4FA3959A7730";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion57";
	rename -uid "22762671-48C3-58FB-60A7-4DA1774042F4";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns269";
	rename -uid "0717AE99-4C19-5D43-65F5-2384541A2497";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns269Set";
	rename -uid "8515AEE1-45B0-3CED-68E5-96A74DF8CDAD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns269GroupId";
	rename -uid "38AC3CE0-4CAE-085D-2FD2-95A8BE676C2B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns269GroupParts";
	rename -uid "D6CCEA44-4CC9-1FC6-DAAB-53A3F796F1FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak417";
	rename -uid "D3BA8DA5-48FF-5143-0C0D-219CF0CAFF18";
createNode objectSet -n "tweakSet417";
	rename -uid "7B21F28C-45B5-EEE2-0AFC-C39662AB818E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8403";
	rename -uid "93B04E0A-4809-FA72-BF98-67BA70A33146";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts834";
	rename -uid "50DADDF4-49C7-406E-39D6-038A96B63F16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion61";
	rename -uid "23CEC3FE-4390-DD56-5126-FD958C9D27FC";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns273";
	rename -uid "0F18FE45-45D2-E824-F8C8-21AD5B63F238";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns273Set";
	rename -uid "46D41E6A-496F-B43B-5FA3-A8B778E9C6DF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns273GroupId";
	rename -uid "E507E6F9-4338-B474-7656-32A86AAD4999";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns273GroupParts";
	rename -uid "51CEA8A7-474E-0E2E-CE72-8A858A331E9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak421";
	rename -uid "DA20B7A4-498E-DDD0-EA5A-7EA975B89B37";
createNode objectSet -n "tweakSet421";
	rename -uid "E79927BE-4226-2D61-CF47-92AD8B5EC211";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8411";
	rename -uid "B8CE43F3-4E31-896C-0C2B-E584BE2D048E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts842";
	rename -uid "00F25DF5-4D57-1562-7C83-63991248EDD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion62";
	rename -uid "A680C49A-4FFA-B3E8-2C14-31A807E0A43B";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns274";
	rename -uid "7F9340F5-4E70-8E87-DC1B-C38145BB8BF8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns274Set";
	rename -uid "86F4A25B-4B5B-D2CF-0D48-0F966B4E8437";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns274GroupId";
	rename -uid "ADEF5AA9-44B7-DBD3-BF4B-EF91FB66DEE0";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns274GroupParts";
	rename -uid "01D334EA-462C-CEFD-6166-0A91BFEA36CD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak422";
	rename -uid "CE646425-47A2-5B0C-7E02-D09E2CBC2471";
createNode objectSet -n "tweakSet422";
	rename -uid "CE0BFC2E-4222-4139-269B-FDAC69A2A5DC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8413";
	rename -uid "D01F5552-4FBF-3E96-5CA3-58A30F40226A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts844";
	rename -uid "0C2E4537-4032-24A4-1141-A4B6A3D33A4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns268";
	rename -uid "5F4A92A5-4B55-D8EB-8F9A-6C8D12B66263";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns268Set";
	rename -uid "BC4183BB-4299-DBB0-2D60-F0B9860A8E5A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns268GroupId";
	rename -uid "9DC270E9-42E7-363A-3AD3-26ABDDCC741E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns268GroupParts";
	rename -uid "8E66344F-405D-2DC7-7290-F48D0AB6BE36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak416";
	rename -uid "1684F3EC-456C-6E3C-33A0-CCA460A5F66C";
createNode objectSet -n "tweakSet416";
	rename -uid "9435125D-455E-7F8B-7106-B8A30C4C9DCE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8401";
	rename -uid "1F114538-4D94-8A1F-6EEF-568346B3DB8D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts832";
	rename -uid "393E224B-44B5-8CF5-E1E5-63B0033FD614";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion56";
	rename -uid "82AEAF15-45E9-574B-5C63-719605E0F64A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns267";
	rename -uid "0F248370-4F39-52B1-DE85-56ACAAAC5C2F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns267Set";
	rename -uid "F9A0899A-4BCE-09E0-DE65-1F8E2942ACA9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns267GroupId";
	rename -uid "2D674D99-477E-E93D-B3FF-B78EAC7598A7";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns267GroupParts";
	rename -uid "BC272D92-4259-C2A7-4F58-9CB149CF29C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak415";
	rename -uid "FA663EA3-4314-EFE2-C588-529D032F8EB0";
createNode objectSet -n "tweakSet415";
	rename -uid "BEC6B2C2-4CEA-0223-EAC5-CC8C02E8E04F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8399";
	rename -uid "DF6D1639-40FA-ABB1-D0E3-E78FED5A878F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts830";
	rename -uid "B2C5F19A-4DE9-AB73-1BAE-35A483A44005";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion46";
	rename -uid "5DC7BF21-4F04-69DC-C239-188AE251EE89";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns235";
	rename -uid "325C7433-49DC-9EDB-2BF9-FA8E6741DDC3";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns235Set";
	rename -uid "1FDCB301-44FC-E95C-9C2C-CC99DBC5BED4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns235GroupId";
	rename -uid "B7C77AF2-4040-21F0-A292-DD852E52A541";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns235GroupParts";
	rename -uid "564010B7-4187-1D49-BD0B-9684D9FF7687";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak383";
	rename -uid "E354C8CE-44BE-5700-E7C1-4D9E61F3174C";
createNode objectSet -n "tweakSet383";
	rename -uid "DE7AD5CB-4329-8FF7-9360-3AB224491FAB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8335";
	rename -uid "4B2C97A5-4DD8-457E-4018-D59F922BE03D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts766";
	rename -uid "14B487C2-4600-2562-497A-06B39821FA48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "CEDC3956-4ED1-AD85-1D7E-74BAE192932F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "860ECDC4-47E3-5D92-3AD0-EA9771F27D20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns262";
	rename -uid "0873120F-4DE2-89B2-3F25-7B88F158A063";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns262Set";
	rename -uid "E4673699-4CD2-43F6-F393-54B5D9043602";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns262GroupId";
	rename -uid "31BD8C57-479E-6B82-78DA-6DA1CD93804C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns262GroupParts";
	rename -uid "8F0D6705-4F70-5C32-8211-7CA99B3627BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak410";
	rename -uid "711F33F8-42E0-9091-9DE5-C4B17FDF6F0C";
createNode objectSet -n "tweakSet410";
	rename -uid "9B8ADADD-4406-4CDA-F62D-3FBFA41B1D14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8389";
	rename -uid "9C0F686B-4989-9AE2-71F9-E59147CC8CB0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts820";
	rename -uid "961EB653-494D-4FDE-A8A8-16870E62AA75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns263";
	rename -uid "FFC9F9A4-44CF-3E3D-593D-45B944B6A350";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns263Set";
	rename -uid "9289DEEF-44F8-B72D-B239-7BAA100C1938";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns263GroupId";
	rename -uid "B6E9DCAE-4843-CAC8-1958-5695D733D78D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns263GroupParts";
	rename -uid "88AA67D4-4542-AF78-6CD3-479942D98BF4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak411";
	rename -uid "79D2264C-4F6A-0C73-3DE4-F09E06F6E98E";
createNode objectSet -n "tweakSet411";
	rename -uid "67EC977A-465A-F2F3-64F2-1C8765DD2F9A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8391";
	rename -uid "EA6F877A-420F-D51D-0D0F-22A1EC95AD1F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts822";
	rename -uid "501CE169-4E3A-29B6-3FCA-15BF1E56B546";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns261";
	rename -uid "2C8AB6B1-4F49-5438-4679-8DB16726394A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns261Set";
	rename -uid "A3FFEA8C-4199-5933-0E3F-7DAF512282ED";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns261GroupId";
	rename -uid "5776F8EE-42AD-F60F-C3BB-4C8F29AF7C17";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns261GroupParts";
	rename -uid "32D393E0-4768-A293-EBA8-25BEB8F9C7FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak409";
	rename -uid "AC15C7FE-43D7-860C-BD93-A386DCBBA927";
createNode objectSet -n "tweakSet409";
	rename -uid "D10C3658-450C-9EB0-E933-0B9DBDA8DAB0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8387";
	rename -uid "861B5E05-490E-575F-431B-84BA69F7F5AA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts818";
	rename -uid "238034C9-48CA-8E71-7A03-1294DC8EDBA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile1";
	rename -uid "C05412F4-454A-1CF5-4881-6DA90AA35C59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile1";
	rename -uid "7D294BC3-4DFC-1910-6805-05A71D018045";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns265";
	rename -uid "84AF4621-41AE-5F0D-9BFC-BA89A19D9CBE";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns265Set";
	rename -uid "F7CCFA30-404B-AEEE-F6AB-CFA928184E23";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns265GroupId";
	rename -uid "102A1870-43E1-F0C0-F343-70A40B583D65";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns265GroupParts";
	rename -uid "C43ED428-4B38-B9E9-1356-809CAE551F94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak413";
	rename -uid "D97DF999-4761-C142-2C5B-2E80E243CC1B";
createNode objectSet -n "tweakSet413";
	rename -uid "241036F6-4C91-B592-1D91-85AACC6D7E50";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8395";
	rename -uid "386DE98C-4E24-8253-A214-D891CC046B1B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts826";
	rename -uid "1C6C81E5-40D9-5427-EAA4-269CFD1E3FF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns266";
	rename -uid "6E8B1A61-4748-74F1-2CA4-A1B70B6C56D0";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns266Set";
	rename -uid "B46CEBC3-4B8C-7D7C-9957-B4825F2D3058";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns266GroupId";
	rename -uid "C2C155A3-4461-823E-3F53-8E8595076BF6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns266GroupParts";
	rename -uid "5CC61897-4F3A-4800-93AF-7EA5AC12C887";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak414";
	rename -uid "09CB88BA-4EB1-C878-78BA-AEA2F6B46A56";
createNode objectSet -n "tweakSet414";
	rename -uid "C31495F6-48B2-DB9A-1A5F-7DA60DF37FEB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8397";
	rename -uid "8F0177D2-4E9D-D6D0-D2F2-10AD531E4C1D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts828";
	rename -uid "F296C5A0-42F2-086E-0ABD-95B4D7B49E26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns264";
	rename -uid "174C361B-4E7E-2509-4BDA-ECBDD1B0050A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns264Set";
	rename -uid "EA57710C-4641-2BEE-8BF1-AE898AF216CB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns264GroupId";
	rename -uid "E47EBCBF-4476-4E20-F44F-EBAD74A1343D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns264GroupParts";
	rename -uid "4A776612-4E1B-4161-FF4D-0EA8F4B2D404";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak412";
	rename -uid "17B10F76-4925-BC15-E4DA-D4B6F8938D29";
createNode objectSet -n "tweakSet412";
	rename -uid "76E700C6-4FDF-1C1C-97E8-19B18E9E05AA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8393";
	rename -uid "EF38FCF8-45AC-59C7-2461-65851BD77CE7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts824";
	rename -uid "CD26CF94-42D3-EEDE-5621-BC85FCD6A387";
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
