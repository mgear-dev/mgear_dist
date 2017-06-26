//Maya ASCII 2016R2 scene
//Name: biped_guide.ma
//Last modified: Wed, Jun 21, 2017 03:19:50 PM
//Codeset: 932
requires maya "2016R2";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016 Extension 2 SP2";
fileInfo "cutIdentifier" "201608220310-1001477-2";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "guide";
	rename -uid "A7987411-4CF5-0914-1FE4-D59E4A80ABA6";
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
	setAttr ".synoptic" -type "string" "biped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-06-14 15:56:14.971000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.1.1";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "8009EE4B-4EFF-6D1C-2F23-E884DDD61125";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "local_C0_root" -p "guide";
	rename -uid "42F349DD-439F-1AE0-0672-69B70FA7D1CF";
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
	rename -uid "78C4826E-45C6-BAA5-CD52-409EF8CBC67A";
	setAttr -k off ".v";
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
	rename -uid "94EE7AE7-4982-8CC2-8B6A-2490B6210E16";
	setAttr -k off ".v";
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
	rename -uid "5AA60A23-45D6-0054-1E57-D2B22DAFA42B";
	setAttr -k off ".v";
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
	rename -uid "517A2DAD-4D2A-6474-EDCB-E29F29FD9809";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "168A9C5B-482A-0E3B-F4F4-76AA7120AB29";
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
	setAttr ".s" -type "double3" 1.9535389960287559 1.9535389960287501 1.9535389960287559 ;
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
	rename -uid "5270059D-4E5F-9CAD-7E30-2CBA109AC549";
	setAttr -k off ".v";
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
	rename -uid "02EF33A7-4DFF-9C67-98DE-5A8F000F196E";
	setAttr -k off ".v";
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
	rename -uid "181DFAB0-4775-F61C-D92A-62B5EB13920C";
	setAttr -k off ".v";
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
	rename -uid "C1BE990D-4CF2-646A-847B-7FBC2BFCDA6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "4ADD99C5-466E-7CA1-4753-CCA557442EB2";
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
	setAttr ".t" -type "double3" -1.3877787807814457e-017 1.7763568394002505e-015 -1.5407439555097887e-032 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410481 0.51189149642410392 0.51189149642410303 ;
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
	rename -uid "5AD05BDB-49B1-4413-4234-27BDC300DB36";
	setAttr -k off ".v";
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
	rename -uid "D46499CA-4815-BB8B-EDD5-67A13E8FCDE9";
	setAttr -k off ".v";
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
	rename -uid "390A4739-4C0E-B5CC-AF38-37BDB7BFD76C";
	setAttr -k off ".v";
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
	rename -uid "49112393-4DCC-2589-FEFF-C5BF526AC474";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "9D381E88-4A3A-5344-D3CA-2B9D0C2D3964";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.376006688156524 -1.7208456881689926e-015 1.2942249226282225e-031 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999967 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "45D51398-4039-0744-951C-8D96B3436CC6";
	setAttr -k off ".v";
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
	rename -uid "EB0D6E53-4323-6756-16A3-A6A6F2612EAB";
	setAttr -k off ".v";
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
	rename -uid "5327861F-4757-465B-6797-E585A621B116";
	setAttr -k off ".v";
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
	rename -uid "A338F047-46B7-A212-56C9-00905EF290C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B31CE734-4FF3-9FF8-B16B-309DDEDF7FF1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D03F4243-4E04-F15C-0459-AE9F2F9F4205";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3FFC11F5-4633-EDE8-2D84-DC976C7CCD95";
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
	setAttr ".t" -type "double3" 3.2578484988603407 0.60394549966678457 -1.976478126557172 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.88775990675476157 0.8877599067547598 0.88775990675475858 ;
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
	rename -uid "971A91AF-4463-E942-B9D3-B79F4D1C4E80";
	setAttr -k off ".v";
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
	rename -uid "962AAAD2-4BB0-AA61-8DAB-9AB93E220280";
	setAttr -k off ".v";
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
	rename -uid "3CACF099-45EB-9F84-B593-5EB4FE34D600";
	setAttr -k off ".v";
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
	rename -uid "64CF4222-46CF-FB6B-30A9-22AA0C8BEDFA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "866F0EDF-41D0-C534-D6A7-2E9BDA7B3C2F";
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
	setAttr ".t" -type "double3" 1.7395848890977401 -0.016853043661003153 -0.11673327753265002 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000018 0.99999999999999878 ;
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
	rename -uid "11E01CD3-46FB-63E4-DDC4-9FAC764DDD19";
	setAttr -k off ".v";
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
	rename -uid "704A5395-41DA-1158-4515-AEAC9971E3ED";
	setAttr -k off ".v";
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
	rename -uid "52BC857D-4F24-4492-ED99-BC86E69A4B23";
	setAttr -k off ".v";
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
	rename -uid "FCB06078-43CF-3DB8-6892-888815EE90A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "9269DA79-4E2A-A013-633C-5E9A80C87E46";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.3330392928564514 -0.91350954729966882 -1.5239746815175863 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999678 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "BA9A0162-474E-3752-40C6-DB9EF6B663CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip13Shape" -p "shoulder_L0_tip";
	rename -uid "246D3D8C-496D-D847-28B7-3E8807970506";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_tip14Shape" -p "shoulder_L0_tip";
	rename -uid "F1C71A32-4732-20C3-8771-99BB94DD5178";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_tip15Shape" -p "shoulder_L0_tip";
	rename -uid "A0D7E8E6-4895-84CB-B1AE-07BB9DCCF70E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip15_0crvShape" -p "shoulder_L0_tip";
	rename -uid "1BC81D44-4A60-FD3E-EB93-1DBDF8ABB538";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip15_1crvShape" -p "shoulder_L0_tip";
	rename -uid "9DF99D72-44CF-93C1-05A3-168B3095FF36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3B710934-4143-D510-A0EE-EC833E386CD1";
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
	setAttr ".t" -type "double3" 1.0658141036401503e-014 0 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.41121298317988 -5.4710434405384341 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999833 0.99999999999999933 ;
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
	rename -uid "F7A76B33-4F99-A8AA-EAD4-B6B8C3940544";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_root13Shape" -p "arm_L0_root";
	rename -uid "1D80C9A0-4A4B-EC45-8A49-AE9EE1BD550F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_root14Shape" -p "arm_L0_root";
	rename -uid "F306590A-470B-1FB0-1DF5-5F8D3C232DB9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_root15Shape" -p "arm_L0_root";
	rename -uid "9A2D4D9D-446F-A4FC-1929-C78116E0294A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "2CCA4DB7-45CE-F077-E015-598D1F1CCC77";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323381 3.5527136788005009e-015 0.078976790252910156 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784281 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "3F2469D5-4EBF-571A-8D34-CF8F9B774AAF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow13Shape" -p "arm_L0_elbow";
	rename -uid "CE891599-4F20-3BE1-7061-EEBFE5A73D82";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_elbow14Shape" -p "arm_L0_elbow";
	rename -uid "24B952C8-4CBA-D9F6-85CD-2CB64EF2B74D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_elbow15Shape" -p "arm_L0_elbow";
	rename -uid "10266309-4596-4064-CE45-DD94C9BBE532";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow15_0crvShape" -p "arm_L0_elbow";
	rename -uid "E119030E-429C-3FD3-1CF8-DCB8D63EE13B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow15_1crvShape" -p "arm_L0_elbow";
	rename -uid "C362F5A0-44A3-8C78-A7D8-0D9EF953B831";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "76D31CD1-4232-7AA9-14CB-C38D11A6508F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496836 -3.5527136788005009e-015 -0.1196061121823051 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000013 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "7009D0BC-42F3-7B79-908C-1C8F9C572EE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist13Shape" -p "arm_L0_wrist";
	rename -uid "FE518E0C-4F0F-E01D-C351-FD9D8F92AD49";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_wrist14Shape" -p "arm_L0_wrist";
	rename -uid "291196E7-47F9-A0BB-B530-33A440AECAD7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_wrist15Shape" -p "arm_L0_wrist";
	rename -uid "6DCB3CFE-4408-BAFC-647D-54B37BA8CF56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist15_0crvShape" -p "arm_L0_wrist";
	rename -uid "C3E4CD56-4135-7966-F34A-0FBA910039F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist15_1crvShape" -p "arm_L0_wrist";
	rename -uid "DDEB31B6-4A69-51E6-4167-AF992F4C1331";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C581489E-48F0-3EFA-2C1B-C89E0F61B8B3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308224 1.2434497875801753e-014 1.0408340855860843e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "39C28323-4EC1-B67F-9C02-E3AF0B3777A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_eff13Shape" -p "arm_L0_eff";
	rename -uid "313CDF72-40DE-A991-418D-8CA297247E7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_eff14Shape" -p "arm_L0_eff";
	rename -uid "2583E4F6-4370-4DBC-E224-778EDE06211E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_eff15Shape" -p "arm_L0_eff";
	rename -uid "BE465EE1-4AA6-0FE8-9D26-3080B4C20806";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_eff15_0crvShape" -p "arm_L0_eff";
	rename -uid "7F6DFAEC-4704-1B20-7017-E8B8617FD24F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "arm_L0_eff15_1crvShape" -p "arm_L0_eff";
	rename -uid "5E4DB1C4-4128-FFA5-23D8-C4A17054B180";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "687175B9-43D3-EDB7-8933-23A468BA6994";
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
	setAttr ".t" -type "double3" -1.2124561875008126 0.5607311476451784 -0.2927611719839891 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999989 1.0000000000000011 ;
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
	rename -uid "A3B84B19-49A8-AFEE-E624-4EB059BACE19";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_L0_root13Shape" -p "armUI_L0_root";
	rename -uid "C84DB6B3-45A4-ECF2-96F1-7E9A0B38CB8B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_L0_root14Shape" -p "armUI_L0_root";
	rename -uid "9E6712F2-4DC6-277B-069C-16B0FB54AC9D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_L0_root15Shape" -p "armUI_L0_root";
	rename -uid "9B385FB0-4003-EAAA-4517-529B302E44B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "1A2995FD-4604-F85A-A85D-80A141860A62";
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
	setAttr ".t" -type "double3" -1.0556240028445734 -0.075350553640973317 0.35296225288850214 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008865223 93.717381466937283 86.467960127478349 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716902 0.30838721081716897 0.30838721081716913 ;
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
	rename -uid "68B2C8F6-4F62-C60B-3A24-A9B7A19E50E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_root13Shape" -p "meta_L0_root";
	rename -uid "BBA063BB-4600-380A-EA3B-31A0F7F80B13";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_root14Shape" -p "meta_L0_root";
	rename -uid "1388C541-4AB3-DCEA-C231-E980583F5162";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_root15Shape" -p "meta_L0_root";
	rename -uid "A9EAA934-4796-212A-D8ED-57949F39EB6B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "7B1D6E5A-4C6D-A99F-8C0F-759FDAC649E4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617518 -1.4210854715202004e-014 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "1A172F34-4345-27EC-CBAF-0E9DD14BFEB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc13Shape" -p "meta_L0_0_loc";
	rename -uid "B3F268B5-4E8D-F4DD-77B3-55BA560C46C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_0_loc14Shape" -p "meta_L0_0_loc";
	rename -uid "126F181D-4BB1-7F97-FABE-A3B930E12B3B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_0_loc15Shape" -p "meta_L0_0_loc";
	rename -uid "8126DB32-4329-FE54-86E5-3290425EAE43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc15_0crvShape" -p "meta_L0_0_loc";
	rename -uid "D22AA14E-41EB-F1DD-B1A1-FBA14D8AD7E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc15_1crvShape" -p "meta_L0_0_loc";
	rename -uid "F9DB1F08-4B77-1ACE-9BA7-F2A34A556599";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E917F63A-4874-4D0C-9996-EB91FA758582";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618273 2.1316282072803006e-014 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "43C1B7F2-447F-5064-7293-6482A12F3AF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc13Shape" -p "meta_L0_1_loc";
	rename -uid "15E4E0E4-4D59-F5FD-C7C0-15AC20EF7EB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_1_loc14Shape" -p "meta_L0_1_loc";
	rename -uid "0CE018D4-4F3B-2775-AB76-C29943FABF10";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_1_loc15Shape" -p "meta_L0_1_loc";
	rename -uid "09DDEFBC-4A07-EF91-B319-628C1D3EC5D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc15_0crvShape" -p "meta_L0_1_loc";
	rename -uid "D9F018AA-4F10-94DC-5CB4-E4BED072D5F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc15_1crvShape" -p "meta_L0_1_loc";
	rename -uid "079F65E8-4DB8-B6BC-86DB-47AA329A3007";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "86480691-4EC4-95E0-EA26-AD86800A6D45";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618495 0 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "17AB7F7C-45D6-45CD-F1DE-E2A4BA37B64D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc13Shape" -p "meta_L0_2_loc";
	rename -uid "6B331700-433A-DD4A-CE7F-D6BD8AC859D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_2_loc14Shape" -p "meta_L0_2_loc";
	rename -uid "C8348918-4A45-2C90-C489-6987B7FE492E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_2_loc15Shape" -p "meta_L0_2_loc";
	rename -uid "31EAAB43-405A-D56C-9BF0-50AE4388CF2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc15_0crvShape" -p "meta_L0_2_loc";
	rename -uid "D7BE9D94-4EA4-9707-8DE7-7C947E39512C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc15_1crvShape" -p "meta_L0_2_loc";
	rename -uid "A1B575E8-4966-A773-DC31-289A1CE2F8BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D2AC338D-46E0-79AD-5D37-02AD5A0E3631";
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
	setAttr ".t" -type "double3" 0.27518484001103416 -0.17360051577786351 2.4946799341790236 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878603037 -68.587073855452232 -5.8163374181240517 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.292966824566179 1.2929668245661803 ;
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
	rename -uid "FC211EDC-4DC7-660E-763B-78A57696BEB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_root13Shape" -p "finger_L3_root";
	rename -uid "38A7BB04-466D-479E-9EE7-6E81167910AC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_root14Shape" -p "finger_L3_root";
	rename -uid "B67BF6B0-45DA-2D8A-0853-EBBF163FD205";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_root15Shape" -p "finger_L3_root";
	rename -uid "1448E953-4445-3C26-C7A6-7089339360C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "01FBCAC8-44AF-B818-48E7-F5BEF14BCD7F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830562556 2.1316282072803006e-014 -1.9984014443252818e-015 ;
	setAttr -k off -cb on ".tx";
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
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "84E381B0-4431-CBF9-F1C8-FDA1F6DE9186";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc13Shape" -p "finger_L3_0_loc";
	rename -uid "1C1C332A-49A7-2316-8A20-5C8971F33916";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_0_loc14Shape" -p "finger_L3_0_loc";
	rename -uid "A2CE10A5-413F-FE99-40FA-8B8F5B19217C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_0_loc15Shape" -p "finger_L3_0_loc";
	rename -uid "D76E7E91-4F7D-1B8A-80D0-3BB3D64A933E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc15_0crvShape" -p "finger_L3_0_loc";
	rename -uid "FBC2A045-4DD9-484E-F9C2-5EB755374A96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc15_1crvShape" -p "finger_L3_0_loc";
	rename -uid "127162E7-42A3-18DF-2639-C8BE43151398";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "96ACDE25-48DB-EC99-BDA0-D7B783379036";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070875152 -1.0658141036401503e-014 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "6FEF280A-43B2-8CAA-310E-42A16D7901F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc13Shape" -p "finger_L3_1_loc";
	rename -uid "DB7B7601-4663-2150-1CE7-FDA0571C0A28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_1_loc14Shape" -p "finger_L3_1_loc";
	rename -uid "9AB19EAE-451E-D7DB-B3A1-89BF72A11596";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_1_loc15Shape" -p "finger_L3_1_loc";
	rename -uid "D3C9C602-437C-1FB5-3E2B-0CBF8145BDD9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc15_0crvShape" -p "finger_L3_1_loc";
	rename -uid "B2D9E113-44FC-199B-9C82-11A6513A1ECB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc15_1crvShape" -p "finger_L3_1_loc";
	rename -uid "B03DA3C0-4A69-EBA4-7CCF-88ABC9F572EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "ECFC38F9-433D-6D41-20DE-0593BABA1CB3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259194878 0 2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000016 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "D297AEB1-4C6D-7EDF-BB6C-19A7A85F9955";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc13Shape" -p "finger_L3_2_loc";
	rename -uid "EE5E8904-4004-8E00-057E-5EB1E8F611FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_2_loc14Shape" -p "finger_L3_2_loc";
	rename -uid "ED56B85F-422E-955B-7FDB-3B9A35D8A12B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_2_loc15Shape" -p "finger_L3_2_loc";
	rename -uid "7F08B59B-4387-2EFC-B4F8-E6A3A9F5749D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc15_0crvShape" -p "finger_L3_2_loc";
	rename -uid "7D4F2871-4C05-7A8B-7C19-4DA5A5CB40AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc15_1crvShape" -p "finger_L3_2_loc";
	rename -uid "1D3D30D0-42E6-9BB5-6D4F-5CA9CEAED18F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "509607D1-4C8A-17B2-E914-84BB7037A184";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "D8036EF3-4B7F-18AF-FBEA-F1B83C91F42C";
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
createNode aimConstraint -n "finger_L3_blade_aimConstraint5" -p "finger_L3_blade";
	rename -uid "450C6963-4405-ABA5-D71F-4F80EBEB0EF9";
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
createNode pointConstraint -n "finger_L3_blade_pointConstraint5" -p "finger_L3_blade";
	rename -uid "6C043852-4926-9812-3507-D28B8DBBDA30";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 3.5527136788005009e-015 1.5543122344752192e-015 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "712DB622-4400-AB5E-3CB1-B69001DE56F9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754657 -29.032786855763529 1.4804327725032367 ;
	setAttr ".r" -type "double3" -7.5791665394123973 -14.304244378903308 49.348303523761352 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786024 2.6320983106786073 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "774A897D-4D2E-5595-C593-30999D29A240";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "26810E78-4360-F0BB-1753-C2A663B3010F";
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
	rename -uid "6843AAA4-4EBA-6079-9176-42BAADF83359";
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
	setAttr ".t" -type "double3" 0.21404201232122322 -0.17620518664714524 2.8414845756647455 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121378904 -82.086889237978312 -14.829711404967568 ;
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
	rename -uid "9CDEA247-4014-B393-D3CB-F6A68C781544";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_root13Shape" -p "finger_L2_root";
	rename -uid "62C90DDF-46E3-D310-25A7-CDBD73B1E0F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_root14Shape" -p "finger_L2_root";
	rename -uid "418CB709-4A6F-FD65-1FC9-0DAD013BEAA6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_root15Shape" -p "finger_L2_root";
	rename -uid "C2BBD910-4E73-C78E-6402-22A4B4733487";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B4CC64F9-4FBB-C860-3BF3-3CB7F531D3AB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406396 -2.4868995751603507e-014 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "3AAC6062-4213-A3FB-A36C-5BBCF5B63422";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc13Shape" -p "finger_L2_0_loc";
	rename -uid "FC9D6A1C-4DD2-D84E-3856-999D750431E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_0_loc14Shape" -p "finger_L2_0_loc";
	rename -uid "5A4949A0-4653-B72C-8312-C7B4CDFFA91B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_0_loc15Shape" -p "finger_L2_0_loc";
	rename -uid "FB70415C-4F2E-7043-CB33-5CA07D3F2576";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc15_0crvShape" -p "finger_L2_0_loc";
	rename -uid "53279DCC-48B0-EB01-3A7B-F6A1D4F755A4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc15_1crvShape" -p "finger_L2_0_loc";
	rename -uid "1EE575BA-47A7-70B3-0D05-4386492000D7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E46A11BB-4E3D-1A6D-78DE-DAAE97238776";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176266 1.4210854715202004e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "766033EA-4D6C-01D4-8A9D-E3B1078CC07C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc13Shape" -p "finger_L2_1_loc";
	rename -uid "AE428318-4179-B4A4-0AB2-C7A322F5355C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_1_loc14Shape" -p "finger_L2_1_loc";
	rename -uid "C9A15974-4ED5-7810-8A35-C29E549EA919";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_1_loc15Shape" -p "finger_L2_1_loc";
	rename -uid "C39B09E7-4EBF-51B3-D93B-A0AF531B233C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc15_0crvShape" -p "finger_L2_1_loc";
	rename -uid "7D8A2FF8-44C4-595D-1888-5FB039DAEFFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc15_1crvShape" -p "finger_L2_1_loc";
	rename -uid "03C7741F-471C-34D7-B40B-FC987D6FC2D8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "30B4D60B-46DE-7900-CC5B-6CA9A44DF078";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914822 3.5527136788005009e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "4730A018-4492-E14A-2A95-EBA8F072BA23";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc13Shape" -p "finger_L2_2_loc";
	rename -uid "E519BA7C-4703-4FD9-B0B6-D1BB11FA289B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_2_loc14Shape" -p "finger_L2_2_loc";
	rename -uid "1C5ABA7D-463E-3099-9070-F7AD62F0ABD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_2_loc15Shape" -p "finger_L2_2_loc";
	rename -uid "A8695530-4C65-D2E0-A63D-67B7A4DBC229";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc15_0crvShape" -p "finger_L2_2_loc";
	rename -uid "75CB1F2C-438A-FD19-CA7C-74A358BC5955";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc15_1crvShape" -p "finger_L2_2_loc";
	rename -uid "2BC843FA-425B-F408-C00A-DA99EEE76917";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "36EB8F35-4327-FD1A-0F72-FC9AB41239D5";
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
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "2EEECCDB-4212-72A3-4E0E-26916B5A5C3C";
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
createNode aimConstraint -n "finger_L2_blade_aimConstraint5" -p "finger_L2_blade";
	rename -uid "84F04300-42B1-84AD-4901-F1B71AB25BFF";
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
createNode pointConstraint -n "finger_L2_blade_pointConstraint5" -p "finger_L2_blade";
	rename -uid "3AFEE298-4486-5005-A6BC-8FB1AC99E758";
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
	rename -uid "B0F97604-4EA4-A72E-6531-F6B305D3743F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309135 -29.023661369441779 1.417334972303844 ;
	setAttr ".r" -type "double3" -0.54140613098452184 -1.5904804996569348 47.737641631363779 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786016 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "1CDFDE3D-4DDB-2E8C-E592-41B6A15E8738";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "5F55A2AF-43AB-0221-D98E-D7B1A99D16F1";
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
	rename -uid "84508B51-49F6-4C18-10A5-389D952CCA6D";
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
	setAttr ".t" -type "double3" -0.0077643969605944996 -0.12358406696721147 2.9483952421545734 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870146 -79.977014017421467 -112.7722262863813 ;
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
	rename -uid "98B73248-44A6-7ECD-A66B-8F906BB418D4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_root13Shape" -p "finger_L1_root";
	rename -uid "4225BE09-48A8-B07D-DEA6-729B41E013DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_root14Shape" -p "finger_L1_root";
	rename -uid "76C7BE62-441B-EE58-94E8-5C9DA128C895";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_root15Shape" -p "finger_L1_root";
	rename -uid "E14BC854-42E7-AF47-A9C0-DAB4CAF3B591";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "BA2E3E46-4916-6BDD-B5D1-ADBF155FB1D2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999289 1.0658141036401503e-014 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "D498652F-42AF-AEA4-71A8-EC8B3F0C73B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc13Shape" -p "finger_L1_0_loc";
	rename -uid "4EE95DB9-449D-FDC5-721D-D693BC453B23";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_0_loc14Shape" -p "finger_L1_0_loc";
	rename -uid "805DE06D-42E4-BBD7-FD2D-A3BAE54EE194";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_0_loc15Shape" -p "finger_L1_0_loc";
	rename -uid "D250D150-4A8F-594A-450D-EABD286E5391";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc15_0crvShape" -p "finger_L1_0_loc";
	rename -uid "9859A64B-4C07-4172-47E6-49A0FC8AD600";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc15_1crvShape" -p "finger_L1_0_loc";
	rename -uid "9F8ABFBB-49FD-EDD4-5E5D-D0A16D44AE1A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3C5B21C0-4775-6E37-F1FF-879F08439D83";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414017551 3.5527136788005009e-015 2.4424906541753444e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "4030BCB1-4267-D9D3-16E5-B3B64B798168";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc13Shape" -p "finger_L1_1_loc";
	rename -uid "671644D6-41C9-6A4C-3E6E-2F8D935AC8A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_1_loc14Shape" -p "finger_L1_1_loc";
	rename -uid "65D666D8-478A-35D5-2245-B894569F4180";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_1_loc15Shape" -p "finger_L1_1_loc";
	rename -uid "63E0D5FD-45C1-CD69-8FF9-B7810DF42DFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc15_0crvShape" -p "finger_L1_1_loc";
	rename -uid "660DB216-4223-DF33-E6F7-5E853828C22B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc15_1crvShape" -p "finger_L1_1_loc";
	rename -uid "F500CF40-43A5-4994-F2DF-B5A5ED368E92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3903172B-4234-5735-C7DD-D085EDD7DFBB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591182 -7.1054273576010019e-015 2.2204460492503131e-016 ;
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
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "C17E3C2E-427A-DFFA-CFDF-5EAC2CA0DB03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc13Shape" -p "finger_L1_2_loc";
	rename -uid "F5058BBF-463E-62DE-5288-21933D9D122C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_2_loc14Shape" -p "finger_L1_2_loc";
	rename -uid "5EED4ACF-421C-030D-CC1F-AF8852699964";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_2_loc15Shape" -p "finger_L1_2_loc";
	rename -uid "8ED5B3F9-4845-DA72-6E89-3C91A107D264";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc15_0crvShape" -p "finger_L1_2_loc";
	rename -uid "6405ABA2-482C-D1A5-2E4D-B2973FA35DDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc15_1crvShape" -p "finger_L1_2_loc";
	rename -uid "31E2F2A5-4766-F9DD-1459-A5896002F862";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A7BFAC18-45A3-60A9-5ABB-428CA86598FC";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "BF5F4893-4DE0-C7E1-EA18-DEB3E74572CE";
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
createNode aimConstraint -n "finger_L1_blade_aimConstraint5" -p "finger_L1_blade";
	rename -uid "76CDD6CC-4840-8080-E320-0EA44CBC8322";
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
createNode pointConstraint -n "finger_L1_blade_pointConstraint5" -p "finger_L1_blade";
	rename -uid "3C663D96-45E5-AED6-1358-708CD949529B";
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 3.5527136788005009e-015 
		4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "3D440E2C-4C93-44D7-0160-649692D9F5AC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153216 -28.040620010901268 1.1418187531109059 ;
	setAttr ".r" -type "double3" 5.8484943948525965 9.976887950877229 54.111347352877985 ;
	setAttr ".s" -type "double3" 2.6320983106786122 2.632098310678602 2.6320983106786087 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "2F2FD3F2-47A7-70A9-86F6-0D924FB549E3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "F66E3D5C-4EFD-B298-1A8A-99B6404DC96B";
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
	rename -uid "E4E41604-43E9-F3AA-7DC2-938E59A523A9";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "805C097C-4769-BF98-D5AE-8995F4826334";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030141 0 0
		0 0.0616774421634338 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint5" -p "meta_L0_blade";
	rename -uid "D5D02DE9-4995-3A3A-5375-8C833730F4DD";
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
createNode pointConstraint -n "meta_L0_blade_pointConstraint5" -p "meta_L0_blade";
	rename -uid "76E5B042-49A2-5FA9-02F0-369CF380F51F";
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
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 -1.4210854715202004e-014 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "AECA316A-4EA5-DF2F-B651-AB9A340E2DA9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400776 -38.076493243285334 11.714163621935496 ;
	setAttr ".r" -type "double3" -81.59564568243151 -44.654258545704188 89.275820115296426 ;
	setAttr ".s" -type "double3" 3.4032157947041322 3.4032157947041188 3.4032157947041264 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "D6D28AAC-453B-D84F-D3EA-25868895009C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "243F56E1-4FF6-BB17-BD25-32A6C44A3700";
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
	rename -uid "861EBA1D-4638-72B8-E03C-FFB6073E9719";
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
	setAttr ".t" -type "double3" -0.18403723679762951 -0.30586006047058589 2.7614233959505654 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808392 -71.606679450096493 -133.79382708613014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661812 1.2929668245661805 1.2929668245661816 ;
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
	rename -uid "B9C4FEE5-4D8E-4A48-2BFC-DA8CF5AE006A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_root13Shape" -p "finger_L0_root";
	rename -uid "693E51D3-4652-334B-0996-C2ADC2BA906F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_root14Shape" -p "finger_L0_root";
	rename -uid "16E16A0A-403F-4EB2-50DB-FDA8A25185E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_root15Shape" -p "finger_L0_root";
	rename -uid "67DB9AD3-4BBB-565E-97AA-11A9DB5D3E04";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "9215D92F-4D98-1D05-7F96-46835E9A4FEB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000018 1.0658141036401503e-014 3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999944 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "6E08B462-4714-4274-2A34-BF8AE7E036C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc13Shape" -p "finger_L0_0_loc";
	rename -uid "C0F2BD51-4036-34D6-7816-BA8805FB00BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_0_loc14Shape" -p "finger_L0_0_loc";
	rename -uid "CBFB3812-4482-A764-5713-369C03CC3A48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_0_loc15Shape" -p "finger_L0_0_loc";
	rename -uid "49C89C23-40C1-885B-147D-EC8D5FC7B8E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc15_0crvShape" -p "finger_L0_0_loc";
	rename -uid "748D0711-40B7-5CFC-60FE-CE918935C134";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc15_1crvShape" -p "finger_L0_0_loc";
	rename -uid "04A5061E-4BC6-84E1-AB1A-E8A7E590969E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "DE0F1FA2-4DB0-7087-4A9F-44A3264975B9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080926897 -7.1054273576010019e-015 -4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "D2EF9CE3-44E3-05F2-D7C1-0C883A4819BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc13Shape" -p "finger_L0_1_loc";
	rename -uid "DFC0557F-4749-6ABA-E2AD-E2A1417E32C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_1_loc14Shape" -p "finger_L0_1_loc";
	rename -uid "E4D6FCFF-46F4-BEE6-3EDD-A69C490F50B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_1_loc15Shape" -p "finger_L0_1_loc";
	rename -uid "FF4D32C4-4D16-B6C4-252D-F6966D079BDA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc15_0crvShape" -p "finger_L0_1_loc";
	rename -uid "97519C05-4AE6-2FB1-3B99-E9A9F22B666F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc15_1crvShape" -p "finger_L0_1_loc";
	rename -uid "1763C316-494A-3CE3-E556-67B4BC7EB5E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "229F0480-43BA-0679-1FBD-3BB07DBD4478";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5843137039236872 0 -3.9968028886505635e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "714F4415-4862-DBA7-E475-A3A4A6778083";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc13Shape" -p "finger_L0_2_loc";
	rename -uid "DE54327E-4A89-F851-E4BF-3CB8C35800D6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_2_loc14Shape" -p "finger_L0_2_loc";
	rename -uid "D4E82965-4813-7410-941C-90B7239D6C9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_2_loc15Shape" -p "finger_L0_2_loc";
	rename -uid "9BF4BE0B-42EF-CB2E-C853-15B586437443";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc15_0crvShape" -p "finger_L0_2_loc";
	rename -uid "BFC9336D-466C-CAEC-0C43-129344D629D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc15_1crvShape" -p "finger_L0_2_loc";
	rename -uid "91AC6D17-411D-F244-90C5-EF9FE415B799";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6EEDB0F7-4674-3574-5670-A18389C56C50";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999944 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "752FA339-4237-B5BB-FD95-59BE8D76B148";
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
createNode aimConstraint -n "finger_L0_blade_aimConstraint5" -p "finger_L0_blade";
	rename -uid "4D0889B8-4603-CC46-1A18-2889EB90771E";
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
createNode pointConstraint -n "finger_L0_blade_pointConstraint5" -p "finger_L0_blade";
	rename -uid "BDDE843A-4D26-7578-4E43-0EA23436BF6F";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-015 3.5527136788005009e-015 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "7AA5E671-4260-30CE-90F3-488C46608C05";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713106 -27.33600805718104 2.4648652761315324 ;
	setAttr ".r" -type "double3" 9.165433488016836 22.111176212558497 57.120615095544387 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106785998 2.6320983106786051 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "F3F707DA-4919-9685-D62A-79A540D1612A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "87DD9D4C-4C16-6FCB-B50B-9686E1943D44";
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
	rename -uid "CF5BE072-43A7-B3F1-6560-FD808E21543B";
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
	setAttr ".t" -type "double3" 0.21303623709073616 -0.22489125789803666 0.13070337452154135 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848165049 -84.001563523231312 11.00920440689513 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041339 3.4032157947041188 3.4032157947041264 ;
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
	rename -uid "C569B45B-49E9-F854-3B06-579C4F2211CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root4Shape" -p "thumbRoll_L0_root";
	rename -uid "B61FADC6-4FD5-E9D6-E4F4-1F9A528690BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root5Shape" -p "thumbRoll_L0_root";
	rename -uid "C4CF5D3D-44DB-4D0F-8F0C-6FB44F847BA6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_L0_root6Shape" -p "thumbRoll_L0_root";
	rename -uid "26B8B7FF-4391-F224-7D1F-AD8EF39C08ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "EB7E84F2-46E8-56EA-5E17-10912FE61C8F";
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
	setAttr ".t" -type "double3" -4.4408920985006262e-016 5.3290705182007514e-015 -1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.801086319131 -43.900240512232251 -37.623269198287971 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511095 0.48936434703510989 0.4893643470351115 ;
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
	rename -uid "DCA44605-4146-0E13-F1A8-38B7A398AA7F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_root13Shape" -p "thumb_L0_root";
	rename -uid "FF9F728A-4E16-C673-0BFE-3397DE1BA8DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_root14Shape" -p "thumb_L0_root";
	rename -uid "475C079E-41E7-9FE8-CBCF-7BA454D816AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_root15Shape" -p "thumb_L0_root";
	rename -uid "C9BF5E07-4A2D-3A18-427A-19AA994A1CEC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "40DAC5DC-4152-9A64-3507-9C9D81061FED";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470206 0.0024095775966941346 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498061064 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "25D4D237-438B-1D3B-A1C6-CBB0E7A2B88D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc13Shape" -p "thumb_L0_0_loc";
	rename -uid "ADA1AE53-4F04-C1B9-ECDD-07B554CBC0BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc14Shape" -p "thumb_L0_0_loc";
	rename -uid "13D61006-4F8F-5D65-BC23-6C9BD1C2BD58";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_0_loc15Shape" -p "thumb_L0_0_loc";
	rename -uid "035CD10A-46F7-DDCD-CC78-3A87F867290B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc15_0crvShape" -p "thumb_L0_0_loc";
	rename -uid "006DA78E-44F5-1E1D-9F1C-2297F37BB86D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc15_1crvShape" -p "thumb_L0_0_loc";
	rename -uid "542A40BD-4FAB-54BC-16BD-ABA1B0A9F1EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BEE59FA1-4728-D72F-BF84-B08192F979F5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.7644258014552161 -7.1054273576010019e-015 2.4868995751603507e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "AF6EF721-4912-94A5-C4DD-48B1EDAC8771";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc13Shape" -p "thumb_L0_1_loc";
	rename -uid "B44EF4C6-4F0D-299C-1052-5880AE1F595F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc14Shape" -p "thumb_L0_1_loc";
	rename -uid "C6E7B157-4709-0701-C200-849852660DC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_1_loc15Shape" -p "thumb_L0_1_loc";
	rename -uid "14F544D8-4C1F-FCBA-FEC0-EA8848E9C5D0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc15_0crvShape" -p "thumb_L0_1_loc";
	rename -uid "B4CEBA66-4A36-AEC4-4064-C98156209194";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc15_1crvShape" -p "thumb_L0_1_loc";
	rename -uid "3CA0191C-4F4C-8D55-3E5A-3B8955164943";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5B23E7B1-4940-94C2-5D05-1FAE63097E3F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5948211491551092 6.2172489379008766e-015 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "738FDBA0-4F06-76B3-81BF-82A9E185C50C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc13Shape" -p "thumb_L0_2_loc";
	rename -uid "D58F84B0-4635-A68F-31B7-4290A9E8A4E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc14Shape" -p "thumb_L0_2_loc";
	rename -uid "C0396731-4A0E-24D1-8D64-B8BA0DACB6F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_2_loc15Shape" -p "thumb_L0_2_loc";
	rename -uid "909529BE-4AF7-C7E3-3CCA-DB823359F74A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc15_0crvShape" -p "thumb_L0_2_loc";
	rename -uid "2E53BF57-4062-F4E2-3239-FAB7FE477C2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc15_1crvShape" -p "thumb_L0_2_loc";
	rename -uid "D4F80C89-4952-B20C-C9BB-33938338F65A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C2A955E6-4C0B-AE81-7AE9-0DA9E04C183D";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999889 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "BE64ADF7-4963-5C26-41DF-25B945538080";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106656 0 0
		0 0.097872869407022181 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint5" -p "thumb_L0_blade";
	rename -uid "21906727-4FE9-E1E6-AF61-0EA57C066840";
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
	setAttr ".rsrr" -type "double3" 9.934975449124263e-016 7.0962606763791981e-013 0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint5" -p "thumb_L0_blade";
	rename -uid "EA0BC049-4077-04C1-B7E3-689AFFC7A6D1";
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
	setAttr ".rst" -type "double3" 3.5527136788005009e-015 2.6645352591003757e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "DC0CC675-4BB2-2FC8-687A-4191ED09C3FB";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042887 -7.0737929587543125 17.725867635512845 ;
	setAttr ".r" -type "double3" -124.44302205362683 63.100734454449558 -77.281354162701675 ;
	setAttr ".s" -type "double3" 2.0434672163157264 2.043467216315721 2.0434672163157264 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "E9F0AFA9-44DA-4EE4-1182-F394F90B114B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "0E8F5DFD-4DEF-5D3D-B216-E1B41AC617BD";
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
	rename -uid "36AB0BAA-4F49-7DA5-FC40-F7869CF199C8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200436 -11.862061807473037 1.1564412205648564 ;
	setAttr ".r" -type "double3" -2.1534408611045635 -4.1959370793366952 45.437740049298263 ;
	setAttr ".s" -type "double3" 1.0495082267377434 1.0495082267377394 1.0495082267377411 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "3549CA6A-4CAF-8406-A870-FDAFAB715983";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "FAF80C63-434E-E977-D560-37813E2F1524";
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
	rename -uid "59258A3B-4E63-D622-10CE-49AB540039A7";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999645 0.99999999999999811 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "DB599F23-424A-B869-7CA1-9386D1F9507C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000109 0 0
		0 0.20000000000000037 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint5" -p "shoulder_L0_blade";
	rename -uid "76C2A064-4C35-A319-50B5-E084A7659FE9";
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
	setAttr ".o" -type "double3" 90 179.99999999999963 180.00000000000011 ;
	setAttr ".rsrr" -type "double3" 23.386262286472583 122.53864021838231 110.03040021520729 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint5" -p "shoulder_L0_blade";
	rename -uid "8259965D-4A34-7F2F-A312-1B8F5DF0DC6C";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 -1.5612511283791264e-017 
		-1.3877787807814457e-017 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "D4202157-4213-FBF6-C5F5-78B4B5981D6C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509831 0.0092761897382757207 0.1167332775326501 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377367 1.0495082267377374 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "5B400568-4CEF-EEE8-D586-3C9CA5D7B894";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "E5966332-4B72-5E93-7D44-8AAA9DD8BB95";
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
	rename -uid "D1412460-4EDE-014C-3362-B88B777A9090";
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
	setAttr ".t" -type "double3" 2.2667429610648497 0.53748181085566271 -4.2147015411630228e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 7.062250076880252e-031 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.5983922810424348 0.59839228104243203 0.59839228104243136 ;
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
	rename -uid "9A1CB2CE-4973-A775-C84D-3BBEC4189DDE";
	setAttr -k off ".v";
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
	rename -uid "D3A94D9D-4C92-9E22-9AD7-8D9019908F0E";
	setAttr -k off ".v";
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
	rename -uid "97353396-4DFA-E9F6-7209-769BD72B2B8C";
	setAttr -k off ".v";
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
	rename -uid "A0CF88D4-40EA-4EFD-10F8-4B993A8B81C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "BC14B90F-4402-A213-F36E-0A934EDCC682";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981641264 2.4674946259578014 1.5382908879615304e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999756 0.99999999999999745 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "9C73CFFE-4E45-6C2D-0FF6-71B8D8B1A279";
	setAttr -k off ".v";
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
	rename -uid "C1A3D013-4089-00C3-A621-65967EEF4562";
	setAttr -k off ".v";
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
	rename -uid "2A241ED3-4C43-64BB-6C44-BB8B698E1A94";
	setAttr -k off ".v";
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
	rename -uid "59391088-467F-E8B6-FD2B-B6A2B8BD83A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2EF53E0C-4140-1E11-DAFB-1989671200A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E0DB2AA0-4451-0ACB-1EB9-43BD96A8D638";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0F09AA1F-483B-4E12-FAF2-8297A3A3B63E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-016 0.1000000000000334 1.2246467991476512e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "48C36F5C-43C0-8B47-71BD-B3B282AFFE18";
	setAttr -k off ".v";
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
	rename -uid "23945700-4B4B-BDD7-6848-739ECA709756";
	setAttr -k off ".v";
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
	rename -uid "53E58B58-4531-7721-AFE5-499B917D7016";
	setAttr -k off ".v";
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
	rename -uid "760104FD-46B9-270A-3704-DCB6F479110B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "980ECE2F-4555-1F23-025C-2D90869787FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "437CF87C-4DD5-E4C8-F228-088F3435DE0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "91FEA856-41EE-F1A0-B7C1-B68AF2D5B6D9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1657341758564144e-015 3.0746209978281733 2.3592239273284419e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "E26B89B6-425A-A408-363E-E18A3C6C6FF9";
	setAttr -k off ".v";
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
	rename -uid "E0D4C7A1-46FF-B69A-E456-E5BAA1F32064";
	setAttr -k off ".v";
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
	rename -uid "31FC373C-4D04-FF99-3887-3B862B47EB61";
	setAttr -k off ".v";
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
	rename -uid "0805390E-41AA-1F63-0E08-5FA46D43C321";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EAAAAAD9-42C8-3AB5-15E9-E8AD24FD10C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2FE44854-4C25-9A95-F9DA-1BB7290BF0C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "20CBC60E-4E4C-10F8-8527-33BBF2A8BD88";
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
	setAttr ".t" -type "double3" 2.0261570199409107e-015 1.360468176387009 7.2046004192796567e-016 ;
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
	rename -uid "488DAE7A-4635-87CB-42E8-949932904039";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "faceUI_C0_root13Shape" -p "faceUI_C0_root";
	rename -uid "3B176A6F-4D22-CBB8-8533-838A762A0A85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "faceUI_C0_root14Shape" -p "faceUI_C0_root";
	rename -uid "7227966E-474A-5154-A0DD-D8B8D65059AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "faceUI_C0_root15Shape" -p "faceUI_C0_root";
	rename -uid "0F0C992D-4E35-4D1C-7279-C8BD9298664F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "6FEA3AE6-462F-1CF8-CF39-02A13AA8A3DD";
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
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.9591354510500949 0.95913545105009301 0.95913545105009013 ;
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
	rename -uid "8F39EC79-48AA-1472-6E41-5B891B8621C9";
	setAttr -k off ".v";
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
	rename -uid "4810A67D-4558-2197-6F5B-2D875E210230";
	setAttr -k off ".v";
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
	rename -uid "FF681E69-4150-657A-E0F1-849D5C8E78F6";
	setAttr -k off ".v";
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
	rename -uid "2783C7D3-4B86-527B-C909-12A3F7368887";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "7FA4DDAB-4309-9E83-14AC-C797083D8A88";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193813e-016 -0.62123610319594391 1.8022590188867591 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1.0000000000000004 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "0623EC89-445C-129C-E1E4-23B8823BDDC2";
	setAttr -k off ".v";
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
	rename -uid "C194B1E4-496B-B110-6D4C-B385B5AB046B";
	setAttr -k off ".v";
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
	rename -uid "188CA03E-4666-31E8-F66B-2E903809A97E";
	setAttr -k off ".v";
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
	rename -uid "63CB95C6-4707-465F-F494-FBBC51A4B88D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A0E592A8-4178-AAC2-942E-C29CDF547BC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "78C47468-4F24-9BAC-71F5-92A23E216542";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "47134EF9-4100-F6E8-0A4F-6CAE971F3921";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.9761536313413789e-017 0.12388352783450074 0.23628786867351481 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "FAC17BB2-4C72-67FB-15AF-4E807E333253";
	setAttr -k off ".v";
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
	rename -uid "4334E3E9-404D-F7B6-F54A-41B3BD59D552";
	setAttr -k off ".v";
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
	rename -uid "0FC8F06E-4FE4-BF91-C4AB-9EBA3F7B65F0";
	setAttr -k off ".v";
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
	rename -uid "853D453B-49C4-A628-8D0F-E5AA06A9C05B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BCA117E7-4135-9F21-3751-CA8AB4230EDB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "61A77573-41F2-5F2F-EB94-6F86454ADA61";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A3F9BDE2-44F8-704C-BD94-B6A57F0AF47F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904483e-015 -30.115037669761477 -2.1322109539326481 ;
	setAttr ".s" -type "double3" 1.8286050763007575 1.8286050763007589 1.82860507630076 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "37191640-4255-5BB7-947F-4AB57F5DDA9F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "ED43A6D1-45A1-A1F7-C987-4C95ED919648";
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
	rename -uid "A8AEE589-4A05-B0CD-A47C-358041C083E9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.8775621283843907e-017 -0.14678247393468169 0.18194531820222393 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "4169303D-44C2-09F5-2F31-648F618E94EC";
	setAttr -k off ".v";
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
	rename -uid "B1F5FD4F-4FB8-7791-0F68-AEB43D75B0A2";
	setAttr -k off ".v";
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
	rename -uid "34E89E50-4C8D-E242-16CD-FBBC76E72CDD";
	setAttr -k off ".v";
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
	rename -uid "F6AE6675-41C0-2DB3-8850-4288F5FB9948";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7B830B60-4DF9-542E-1E04-A285CBB59706";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E75034BA-43A4-0482-5956-B5A72E33DA0E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A76BCD89-4E28-BC44-5844-0B90BC39019D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200185e-015 -29.844371667992295 -2.0778684034613573 ;
	setAttr ".s" -type "double3" 1.8286050763007575 1.8286050763007589 1.82860507630076 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "B30E65B3-4121-D449-4AAD-64A90F008EF5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "A116D2AE-45EF-0F7F-7276-278E9FB145F8";
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
	rename -uid "DB347250-462A-DFA7-0366-E68CED795450";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.091724346345754e-015 -1.4111110000775078 2.0692083234973309 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1.0000000000000004 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "F8735D64-4C8C-B17F-CD7F-379E1B1F30F0";
	setAttr -k off ".v";
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
	rename -uid "FD557F0F-456D-F01B-F705-D294A06D48D9";
	setAttr -k off ".v";
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
	rename -uid "688AEEC6-499C-1138-5210-358E9D7DCC25";
	setAttr -k off ".v";
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
	rename -uid "B9D2852F-41D5-0F7B-646D-5A98BD1659ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "12ECDF33-403D-8C9C-C3DC-AFA89513678E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2950736A-42AA-FC3F-F196-189348CED54A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C099960F-47CF-E65F-7BB0-31A251C73828";
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
	setAttr ".t" -type "double3" 8.290966319764427e-016 0.86108709817295193 -1.6295011454214583 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700591 0.17172273903700597 0.17172273903700605 ;
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
	rename -uid "544D6B49-4568-2041-01DC-FD9940B80037";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_root13Shape" -p "tongue_C0_root";
	rename -uid "E64F9551-478C-292B-FE2E-9398880A048F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_root14Shape" -p "tongue_C0_root";
	rename -uid "B180F8CF-4401-1A72-BBF9-7295F84340CC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_root15Shape" -p "tongue_C0_root";
	rename -uid "91C5E101-4F40-4E8D-51FB-C6AC1105DA92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "DEE79F8C-4D57-1FE1-5170-CF8D557F6EBA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180639907e-016 -8.5265128291212022e-014 1.5794817263027463 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "90545B12-4106-1EBF-361E-F3AC8A5D207D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc13Shape" -p "tongue_C0_0_loc";
	rename -uid "05018538-4D99-6977-AF5F-BF8FECB0B45D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc14Shape" -p "tongue_C0_0_loc";
	rename -uid "52602AF4-4BEC-9794-BE9D-30A89A6DDB07";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_0_loc15Shape" -p "tongue_C0_0_loc";
	rename -uid "C34AC3B6-49D6-FA02-20C4-BA863EAF6F86";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc15_0crvShape" -p "tongue_C0_0_loc";
	rename -uid "845F3077-40B9-13A2-E5B7-D798C4C53613";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc15_1crvShape" -p "tongue_C0_0_loc";
	rename -uid "A8F1BFA9-4730-5612-9167-B69A05B94526";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F9926773-4CD8-228C-63EA-91AE59185064";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.2170680441440669e-016 -0.16556620751507012 1.579481726302741 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "75D3A2F5-47FF-C7E5-2927-E1A9E436E099";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc13Shape" -p "tongue_C0_1_loc";
	rename -uid "8477E90F-471F-2196-F87F-56B047E72F40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc14Shape" -p "tongue_C0_1_loc";
	rename -uid "B5A73451-4CA2-DB31-C660-9E86AF2DBEB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_1_loc15Shape" -p "tongue_C0_1_loc";
	rename -uid "34099042-40E1-6281-41CD-96B481AADDE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc15_0crvShape" -p "tongue_C0_1_loc";
	rename -uid "150252AF-4B3D-B8CC-54D6-11965ED46E0B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc15_1crvShape" -p "tongue_C0_1_loc";
	rename -uid "2D908210-4E0A-05A7-E9C5-9E9D391E4237";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F4632FA7-4A66-4EED-1711-5C8B4D27E7F0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544645832e-016 -0.3104366390905966 1.5794817263027463 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "0C94A72E-4E32-E650-F257-7FA9AA4A0770";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc13Shape" -p "tongue_C0_2_loc";
	rename -uid "37800F83-400E-AAE1-FB37-72AE44BCBA77";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc14Shape" -p "tongue_C0_2_loc";
	rename -uid "87438020-4067-9B0B-42A8-58A1BD695FBC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_2_loc15Shape" -p "tongue_C0_2_loc";
	rename -uid "9B6A36D4-4BE6-7AE6-E1C8-AC8EED44D34A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc15_0crvShape" -p "tongue_C0_2_loc";
	rename -uid "3C89B7B7-4B87-4392-764B-C2BAEFF64E64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc15_1crvShape" -p "tongue_C0_2_loc";
	rename -uid "EAF91383-471A-ECB9-0044-00966490FA30";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C6384B6B-4A17-27D1-EECA-E7A481BEA2EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0903429653441218e-016 -0.062087327818233007 1.5794817263027419 ;
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
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "1FEF22B7-41AD-95F1-9997-4A87CD29134D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc13Shape" -p "tongue_C0_3_loc";
	rename -uid "CA6C93A9-46BF-9509-90B2-A191FD0FC5B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc14Shape" -p "tongue_C0_3_loc";
	rename -uid "8AD6585F-467A-7AAB-1E2F-9D85D62B2858";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_3_loc15Shape" -p "tongue_C0_3_loc";
	rename -uid "224F244B-465F-260A-9E3D-F2A49AF4D9B2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc15_0crvShape" -p "tongue_C0_3_loc";
	rename -uid "09ACFFCC-4D9B-9BC1-4C2B-8D86E9920BE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc15_1crvShape" -p "tongue_C0_3_loc";
	rename -uid "B6F8A949-4FBD-D7E5-C1ED-79A09BD1EFE9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6207511C-4FE3-A425-A3F2-E0808F04118C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000002 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "BB4015E2-414F-5D66-6FF0-749D0C655B46";
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
createNode aimConstraint -n "tongue_C0_blade_aimConstraint5" -p "tongue_C0_blade";
	rename -uid "EEF6360C-4747-6342-5681-2EA68DDF987E";
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
	setAttr ".rsrr" -type "double3" -1.030998947180722e-012 -89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint5" -p "tongue_C0_blade";
	rename -uid "05E3BA8F-4B56-D03D-A537-74A7E2BC59BF";
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
	setAttr ".rst" -type "double3" -3.1554436208840472e-030 -2.8421709430404007e-014 
		4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "AF647600-4D3A-A0A0-A169-D58157A15200";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046802e-014 -175.0633987776072 -3.1060024283289858 ;
	setAttr ".s" -type "double3" 10.648590201596399 10.648590201596404 10.6485902015964 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "9A6A333D-4AC7-1CFF-EF5F-76875C59571D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "1CCBA88A-4700-9CB9-5328-0299CE55F2E0";
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
	rename -uid "BACAFDC4-4169-A6FE-9CC3-5E88FCFF03D0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757931e-015 -30.612390245122928 -0.093664066372369806 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.828605076300756 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "8D8567B7-4E75-B15D-1E4E-9188E301EA28";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "7C3FC9B1-4C04-5094-410D-6689CBCABC13";
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
	rename -uid "78329D56-43DC-A868-0164-32B7025B6C52";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757931e-015 -30.612390245122928 -0.093664066372369806 ;
	setAttr ".s" -type "double3" 1.8286050763007535 1.8286050763007593 1.828605076300756 ;
createNode nurbsCurve -n "mouth_C0_crv5Shape" -p "mouth_C0_crv5";
	rename -uid "7F417629-446F-115B-30D8-7BAE076D0D10";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv5ShapeOrig" -p "mouth_C0_crv5";
	rename -uid "C2F2742B-493C-15AD-25B6-0898F361AE58";
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
	rename -uid "619AB239-4A8B-2C4C-4F13-BCAE929955BA";
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
	setAttr ".t" -type "double3" -5.2613992666289642 0.71045535901633627 -3.3130608822386244e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.671144551293259 1.6711445512932539 1.671144551293251 ;
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
	rename -uid "F0F63212-4681-5417-9689-0C9CA7094A95";
	setAttr -k off ".v";
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
	rename -uid "EEE66043-44D4-11BE-CB1B-79AD62EBEE0F";
	setAttr -k off ".v";
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
	rename -uid "BEE50E8B-49EE-E2C2-81C3-A2B90593F7BB";
	setAttr -k off ".v";
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
	rename -uid "39D3B4C1-444F-4719-43D2-869BA86BB352";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5EC8516F-4711-D74B-8BFF-FD914AFAFFFA";
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
	setAttr ".t" -type "double3" -1.4961368484464257 0.70921581084615326 -0.5142546431472439 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 -0.99999999999999944 ;
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
	rename -uid "F816495C-4C09-C349-B78C-4E890DDFF1C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_root13Shape" -p "eye_R0_root";
	rename -uid "D8C653A5-40E1-0C84-94CF-15A1DA2C8A43";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_root14Shape" -p "eye_R0_root";
	rename -uid "6ADA184E-42FE-39BF-6032-FA8F97AA7C92";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_root15Shape" -p "eye_R0_root";
	rename -uid "B35FE6A4-49AE-9494-4EFE-9E81814C20A5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "49746950-4E27-AE4C-9D11-2D9089FC3C9A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.3306690738754696e-016 -1.0658141036401503e-014 3.7697842257179213 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "30D6D657-47B4-D174-BE99-6D9A12E45DC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_look13Shape" -p "eye_R0_look";
	rename -uid "D3258D6E-47AF-C7DB-6313-D4B7FB9D246E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_look14Shape" -p "eye_R0_look";
	rename -uid "25420F1E-4E44-FDB3-A7F5-1DB0F882A031";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_look15Shape" -p "eye_R0_look";
	rename -uid "E7B862D5-4881-7E9B-7372-5EBDFD05502B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_R0_look15_0crvShape" -p "eye_R0_look";
	rename -uid "93534A89-4D17-CF0B-652E-3990DA4FF7DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "eye_R0_look15_1crvShape" -p "eye_R0_look";
	rename -uid "796EA798-4669-111E-4212-D28B70AD6339";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A15CA58B-44F4-9728-3609-D7B61115F0A2";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723912 -30.070644536323638 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.7538799546502182 1.7538799546502197 -1.7538799546502115 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "850FE894-462D-0C93-2FBE-EDB5F25D8823";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "42F5C73D-49C3-F215-8B76-31A74055E26D";
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
	rename -uid "A76DF10E-4F40-4A30-CDDB-2A97C5CEE106";
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
	setAttr ".t" -type "double3" -1.4961368484464257 0.70921581084615326 0.5142546431472419 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 1.0000000000000002 ;
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
	rename -uid "D4BF484C-4E0C-944D-D35D-D984C8DEAE8B";
	setAttr -k off ".v";
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
	rename -uid "CAE910A5-4A28-3CAC-0420-F080E7F67CED";
	setAttr -k off ".v";
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
	rename -uid "51B97B70-43F4-88EA-5050-BFBFE070E99F";
	setAttr -k off ".v";
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
	rename -uid "9D8B3112-4C92-F5A0-9805-699E171C4066";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "CA8B25BB-4E0A-7A20-F025-3F86B870A2BA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-016 -1.7763568394002505e-014 3.769784225717915 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 0.99999999999999967 0.99999999999999811 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "41B43CBA-4B95-CB47-0AF8-04BB63620F3E";
	setAttr -k off ".v";
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
	rename -uid "EC90EFFB-4BBC-08F0-9BBF-9D975827F083";
	setAttr -k off ".v";
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
	rename -uid "BD66967D-4834-190E-7D78-76B0FFFB751E";
	setAttr -k off ".v";
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
	rename -uid "C4335BDF-49E3-7F23-34C4-B7B2316414F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8B463D4D-4ECC-B1ED-60AD-609F69E5D579";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "48321A45-4575-544B-680B-7492A9DD3023";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6998FDED-477E-2C99-89C5-859C88408C58";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724567 -30.070644536323645 -1.5859733749936746 ;
	setAttr ".s" -type "double3" 1.7538799546502171 1.7538799546502197 1.7538799546502097 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "84A898A7-4994-4AA6-C462-929D715F43FD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "41EB61BE-4DE4-B8B5-3562-56BE82A7F2A8";
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
	rename -uid "0FAAF2DB-4832-AE4B-145B-B3AB809F0923";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211563146 -0.34322132772768299 -2.0300963192811744e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "53A2B029-4F98-867E-D4C6-DA965967541F";
	setAttr -k off ".v";
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
	rename -uid "D331CF96-4323-9098-6480-8C95F13C070C";
	setAttr -k off ".v";
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
	rename -uid "B54939E1-4C98-7ED1-AC8D-E0B3B98FB4E7";
	setAttr -k off ".v";
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
	rename -uid "258B83BA-4EA6-233A-AB2D-E4A3A6969910";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C6593A1B-48E8-6D57-A2DE-2998B334B220";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A2A22697-42AD-0E45-DB98-F49D9FE9C369";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "EAC5F9AF-4B3C-D79A-B953-25BF75D1030A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547249509 -29.261428725477426 -4.0684386981538104e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502184 1.7538799546502182 1.7538799546502106 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "ADCF5706-4DD3-10C6-57F3-F4BF9BF9004E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "26DAC4FB-4EA8-AC71-F3A8-04ACC647CE9A";
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
	rename -uid "C077213B-4C06-C29C-F6AB-11AA88671623";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198172269 0.45329667709498978 3.8508704761369719e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999756 0.99999999999999745 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "71B79602-4BB6-8C27-0A2B-DEABDC09454A";
	setAttr -k off ".v";
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
	rename -uid "354C57AD-4222-DDD3-54E5-BF892A858FE4";
	setAttr -k off ".v";
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
	rename -uid "147DDC11-46B8-8FC0-33D7-338E9D903D71";
	setAttr -k off ".v";
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
	rename -uid "AFBB134F-4EE5-2A9E-40F6-CAA3752D5C97";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "AD2F8FCD-46B5-3B1B-6CF6-A9B7EF5EA659";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CD8A04D8-4F57-197D-5289-42B05A575FE1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "4DBD6E30-4338-6544-DEC0-72BBEA24308E";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932512 1.6711445512932481 1.6711445512932452 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 360;
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "D912E03B-4EBA-FFAC-CE44-FFA8E4B02153";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546087 0 0
		0 0.11967845620848695 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint5" -p "neck_C0_blade";
	rename -uid "73CBF194-4AF8-6598-C9BF-3E9CFC78201C";
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
	setAttr ".o" -type "double3" 360 0 359.99999999999989 ;
	setAttr ".rsrr" -type "double3" 540 1.2712050138384458e-029 459.58898802263542 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint5" -p "neck_C0_blade";
	rename -uid "FF7A1A1F-43D4-FFCD-7812-1DAADF8C14E4";
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
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "E351EA27-4D6F-60B5-8312-BA876B74F2C0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916336 -26.79393409951955 -3.9146096093576566e-015 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502182 1.7538799546502137 1.7538799546502062 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "265B9C48-4A51-F7C9-B208-428714960E72";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "15814EDF-40B5-74C1-F703-4390F0DBE409";
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
	rename -uid "BE86A6DE-439E-25CC-C1C5-43BDB6B91426";
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
	setAttr ".t" -type "double3" 1.7395848890977437 -0.01685304366100307 0.11673327753265005 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.000000000000002 -0.99999999999999878 ;
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
	rename -uid "8F833645-4E6C-0A82-E303-48878AF5AD2F";
	setAttr -k off ".v";
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
	rename -uid "10033D5E-45B9-E199-5E86-718BD90328A5";
	setAttr -k off ".v";
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
	rename -uid "B0B08632-430D-70BC-85CD-A2A56C4517F3";
	setAttr -k off ".v";
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
	rename -uid "0EE5A3C0-4F01-670F-6C3B-658D79103302";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "A414C97A-46ED-1417-EDF0-479507FAB046";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645495 -0.91350954729966916 -1.5239746815175859 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999634 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "3EE72CD1-4958-0DC6-01DA-7FB96FB4174A";
	setAttr -k off ".v";
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
	rename -uid "811958ED-49EF-E1DE-B214-D0A8538C2DE2";
	setAttr -k off ".v";
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
	rename -uid "C10B8235-4EB2-B960-249D-5FB13879BEA9";
	setAttr -k off ".v";
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
	rename -uid "59AF4996-4595-60C1-3AB2-489311D86529";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "096F0192-4606-9810-9CCF-76936A21AC6F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9620FBD4-49D2-019E-85E9-9C860F194B0A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FC4AEE1B-4F82-6A8C-90F4-CEAA47EE0898";
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
	setAttr ".t" -type "double3" 1.2434497875801753e-014 -2.2204460492503131e-016 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.87896202338689 44.411212983179908 -5.4710434405384767 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999822 1.0000000000000004 ;
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
	rename -uid "2164D227-4053-7C5C-807B-F982726C2630";
	setAttr -k off ".v";
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
	rename -uid "835AFA81-48E2-1E71-ED58-8990EBE469D2";
	setAttr -k off ".v";
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
	rename -uid "C6CC9455-4FA8-3CC5-D4DE-00B611FDBEA0";
	setAttr -k off ".v";
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
	rename -uid "401FCE8F-49E6-4E00-7237-CC86A0B9F45D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "CCE89BE4-4F7E-D06C-1751-DC9D149B2EB7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323381 1.7763568394002505e-015 0.078976790252910378 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784274 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "D1A7536D-4F9B-B9B4-BD9C-E29BB3071CF9";
	setAttr -k off ".v";
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
	rename -uid "1DA9A28C-41B5-10F9-C1C0-F48DE9676BD1";
	setAttr -k off ".v";
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
	rename -uid "B2F930D5-499D-AC93-92C2-75B22AB60E0D";
	setAttr -k off ".v";
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
	rename -uid "6FE39E97-4EB6-A46F-AF7D-3093F86DCDC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "19E303A9-4C45-04EC-C3B6-7BA821C62411";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "545B781A-462E-EC41-4223-B38DB378D47B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D923EA5C-4D0C-A17F-0DF7-27AC0528E689";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496823 0 -0.11960611218230446 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000011 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "0F73C973-4928-FF22-5877-C099B14E3E85";
	setAttr -k off ".v";
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
	rename -uid "70994384-4139-CADE-52DD-DBBE564D339A";
	setAttr -k off ".v";
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
	rename -uid "1B936D8B-4382-3D22-73A9-B0A8248CE022";
	setAttr -k off ".v";
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
	rename -uid "F44C42B4-4657-801B-0888-2A9B3FBBC3C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7A10A23E-4715-9956-4709-7AA58F75F3F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1417FC1E-44C6-A663-2246-3BB263A93249";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "01BABBB4-4EC7-2571-1412-35B41FCC1F06";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308193 1.2434497875801753e-014 1.1796119636642288e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "BD8370A4-4734-3F8A-3E47-44933E42B45A";
	setAttr -k off ".v";
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
	rename -uid "0671D08B-408D-74E5-0438-98A9F26469F6";
	setAttr -k off ".v";
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
	rename -uid "5CC57F88-49C0-F4F3-AF7B-DEAE692E44F1";
	setAttr -k off ".v";
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
	rename -uid "5DD42CF5-4BB0-1687-03E4-F3826FEFAA09";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1D5A1A94-4A16-4118-BB3F-CD8B111AD8C1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A8D1309B-49A7-7FC0-8CC7-7499B663769E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "45AD0F94-4F38-BAF3-49A5-A8A1398C81E8";
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
	setAttr ".t" -type "double3" -1.2124561875008157 0.5607311476451784 -0.2927611719839901 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000009 ;
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
	rename -uid "DD7B6254-4E81-AB37-83A0-5E9A2DB58E0E";
	setAttr -k off ".v";
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
	rename -uid "4FBF4308-41DB-BBC4-5D18-D688029E027A";
	setAttr -k off ".v";
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
	rename -uid "8A6E4A8D-469A-EAAC-9B3C-F688BD8C9CD7";
	setAttr -k off ".v";
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
	rename -uid "3E7BB506-4800-2CD6-7F19-1C92635611C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "F0B75715-4038-C415-82D9-A593FE7798B8";
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
	setAttr ".t" -type "double3" -1.0556240028445756 -0.075350553640969764 0.35296225288850208 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.35034900886545 93.717381466937326 86.467960127477994 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716902 0.30838721081716902 0.30838721081716924 ;
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
	rename -uid "89908DD3-423D-09F5-3DBD-D28310FB6AB5";
	setAttr -k off ".v";
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
	rename -uid "5111DE68-4E5E-EE84-E563-5B8F17EA9C26";
	setAttr -k off ".v";
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
	rename -uid "B9C5806B-46C4-E966-1D7D-D6B4E583DC6A";
	setAttr -k off ".v";
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
	rename -uid "FB706716-479D-2B57-2A2A-3BA5DAC67F03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "DBC2A15F-4C0C-75CD-4252-25AC5D5E4BE8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617651 0 8.8817841970012523e-015 ;
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
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "77B5114E-43A1-1D23-FA35-00B4A2AD1FDD";
	setAttr -k off ".v";
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
	rename -uid "DF2F4381-45BC-FE59-04F1-B0A8C19DE902";
	setAttr -k off ".v";
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
	rename -uid "2E221657-4570-295D-FF51-038E90F78C18";
	setAttr -k off ".v";
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
	rename -uid "7FE83536-4F64-A29D-EB62-6DA224BCDB4D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "45FDFF00-4B14-6E53-5181-168BBACB1EB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "9BAF2531-44C7-8BE3-F338-1690B8A79445";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "678A987D-4770-9914-DDC2-9F8B8A53D73B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617962 7.1054273576010019e-015 -5.3290705182007514e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "254EAEC2-4D99-9101-4B7B-219C4874145C";
	setAttr -k off ".v";
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
	rename -uid "BB52DA9A-485F-7259-3567-728E352487DC";
	setAttr -k off ".v";
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
	rename -uid "AF34E2D4-4BEA-C530-D589-F98709210991";
	setAttr -k off ".v";
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
	rename -uid "7A2F9387-4EC2-75BB-5373-D283A7017A5E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1CF6BF8D-47CA-AFB2-C3C8-DABFE13247BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FB48E048-4C0C-EA31-4141-6895C0DBA763";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7B467C87-471E-8877-28B2-43B0340F714B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618495 0 -1.7763568394002505e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "942B780D-411B-B2F6-923D-478E5771472C";
	setAttr -k off ".v";
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
	rename -uid "99531917-48F5-A913-6726-E690F75D5DC7";
	setAttr -k off ".v";
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
	rename -uid "5D518700-4748-3814-A3F1-D5A2DB9EFE21";
	setAttr -k off ".v";
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
	rename -uid "CD01AF8F-460A-41A9-8416-B193912B6EBD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "043AB3D3-4B2D-F7AF-A5AD-1DB33D64EE3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A995AE99-461E-C8A8-065B-F7B250C6AAFE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A42CE306-45DC-ED60-DEDC-EB9BF43C0E06";
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
	setAttr ".t" -type "double3" 0.27518484001103594 -0.1736005157778493 2.4946799341790271 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878593302 -68.587073855452317 -5.8163374181224867 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661792 1.2929668245661783 1.2929668245661807 ;
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
	rename -uid "14BC2E24-488C-F46E-E42F-71B642D7CDE2";
	setAttr -k off ".v";
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
	rename -uid "1F214BD8-4EF4-8E69-74EF-39BA3AAB59E2";
	setAttr -k off ".v";
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
	rename -uid "4114FBBC-4EB3-4019-7917-E3A7F8A9319C";
	setAttr -k off ".v";
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
	rename -uid "58F8F75C-43D5-5611-D1F3-ECA1B3782FE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "EBB3D1DA-42F4-D2F5-DFEF-389E981F7C5C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830562289 2.1316282072803006e-014 -3.3306690738754696e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "89B4A43B-405B-13AD-43E3-AFA9967265D4";
	setAttr -k off ".v";
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
	rename -uid "6A8203E0-44F6-9C4E-0DFD-FF8867F8EDD4";
	setAttr -k off ".v";
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
	rename -uid "77F81D2E-4B3A-ED9B-89F8-BF8020AC175D";
	setAttr -k off ".v";
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
	rename -uid "30792DB0-4D11-4DCB-475C-87AE3D8114B1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "23A46044-4E4C-2374-2D93-BCB1AA7115A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7B6A1F62-4975-3106-BFDB-E69C02C4E4BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "285D0767-470B-0203-7BA8-ACBAAAEC9BF2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5752436107087453 -1.0658141036401503e-014 4.4408920985006262e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999911 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "893AB12D-4FF1-94B2-376F-AFB862C261CF";
	setAttr -k off ".v";
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
	rename -uid "17187D42-459A-38D5-99E7-7186DD35C35A";
	setAttr -k off ".v";
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
	rename -uid "AA2585BE-44D2-F9E8-8603-A6BF3B571F5D";
	setAttr -k off ".v";
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
	rename -uid "0149719D-4F26-F1C3-02A0-E3858B0724EC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CC433854-42E5-E566-F1A9-3F80CC3D8431";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FF68F63D-4B23-0A6D-30DC-CFA26EE706B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "35D0106D-4040-EE54-7EDF-32BD055C08CA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259195588 3.5527136788005009e-015 -6.6613381477509392e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000018 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "7A1A90F6-4894-D3E8-9898-C48B32AC3F3B";
	setAttr -k off ".v";
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
	rename -uid "8898C29E-4B63-37C9-47D3-78932ACD433F";
	setAttr -k off ".v";
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
	rename -uid "4561E8C8-43FA-F5F0-9AD5-6EB28A8BB46B";
	setAttr -k off ".v";
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
	rename -uid "A6C82091-4760-3C5F-E947-628057D2B29E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "71D9BD2B-4D62-955D-F735-64929BA6EF91";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "3A01D0B6-46BB-3F56-3227-258B1C770CC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8AA78002-4953-B6B9-0F05-7AA623FA2C6E";
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
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "A996D04C-4300-BD5C-C1FB-5AB90FEF8929";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970744 0 0
		0 0.25859336491323581 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint2" -p "finger_R3_blade";
	rename -uid "2A7203A6-4D4A-A9CF-E1D7-34A2BBA583B4";
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
	rename -uid "3C15F172-4019-8C12-67ED-40B480E85B28";
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
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-015 1.1102230246251565e-015 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "8BBAED14-44EA-60DB-B34D-B1BD3E53CF13";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754408 -29.032786855763526 1.480432772503611 ;
	setAttr ".r" -type "double3" 7.5791665394128849 165.69575562109725 49.348303523761473 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.6320983106786033 -2.6320983106786064 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "2EF4A70E-43C6-40C2-064E-299105954E9F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "8A14E672-46D6-33D7-1F48-CCA63B3BE064";
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
	rename -uid "22532CD5-4972-A157-DE58-E9B9DF9BD472";
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
	setAttr ".t" -type "double3" 0.21404201232122277 -0.17620518664711682 2.8414845756647509 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121376439 -82.08688923797844 -14.829711404963755 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.292966824566179 1.2929668245661798 ;
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
	rename -uid "D1E802DF-4FCB-2D21-A7E5-21BBE59DAC71";
	setAttr -k off ".v";
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
	rename -uid "5BA3866A-4397-AE11-BA97-228E5E531832";
	setAttr -k off ".v";
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
	rename -uid "26CA63D9-4B8C-1A7A-533B-68992152301D";
	setAttr -k off ".v";
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
	rename -uid "952B7A05-429A-61D3-0AFE-0CB8709F9B0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "B0FA2F63-4899-9AA6-C656-FFAF8D164F8D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406219 -1.7763568394002505e-014 -8.8817841970012523e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000007 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "8034CDBA-4F38-FB43-2BFE-898597114C0D";
	setAttr -k off ".v";
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
	rename -uid "3F079CAB-47A4-BFB9-7F0A-C1B0B0F4EF68";
	setAttr -k off ".v";
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
	rename -uid "6AC113DB-4185-6416-4E6A-A4BF46388D7F";
	setAttr -k off ".v";
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
	rename -uid "64A50F82-4B6A-B278-D750-97B9724C8F5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "91FF7835-45D2-7B82-8139-EDB04DA1569C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0BD7C896-40FE-E5D7-6527-18ABB3AFE58B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "939A0374-4835-57F2-DAB6-8AB1B028508B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176444 1.0658141036401503e-014 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "12321145-4BB4-C619-8EBD-B7B9AE26FB29";
	setAttr -k off ".v";
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
	rename -uid "79D6791A-4D05-4C32-047A-29A1C3515886";
	setAttr -k off ".v";
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
	rename -uid "AE01E830-4337-6DF4-A836-51ADF7DFFE37";
	setAttr -k off ".v";
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
	rename -uid "22ED7E97-4723-44C5-D290-93983950ACFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "BA045818-43EC-4376-566D-A1840FA17947";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CA6C7E64-4EF3-A017-5972-1A8CA54071CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "E0FD136F-40AC-1CA9-C0EC-379E0C944698";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914466 -7.1054273576010019e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "6D208016-40E1-2CB7-7297-51830A68A892";
	setAttr -k off ".v";
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
	rename -uid "6E67456C-4377-1A02-732B-619371F8CCDC";
	setAttr -k off ".v";
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
	rename -uid "880B0C5A-4218-4B3A-4170-6F8EE11A5181";
	setAttr -k off ".v";
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
	rename -uid "E168A0EB-4091-EF18-B4FB-D2ACFC350DAD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2B7E0F32-4BFD-8770-3962-82B4BC6AB141";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "33BAC02A-4717-322E-3DFF-06805403277F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "841C81B9-42A3-AE73-9E39-B7943A743745";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000007 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "05AA36D5-4289-71B7-82E4-2CB3443BD847";
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
createNode aimConstraint -n "finger_R2_blade_aimConstraint2" -p "finger_R2_blade";
	rename -uid "4C5EEBDC-4122-F066-46A9-8F9195F8A504";
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
	rename -uid "9A0F693E-480D-8892-AE02-F58600E87ADB";
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
	rename -uid "BE8569BF-48AF-53BD-9617-67B51A3ED65F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309348 -29.023661369441747 1.4173349723045789 ;
	setAttr ".r" -type "double3" 0.54140613098552559 178.40951950034409 47.737641631363864 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786011 -2.6320983106786082 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "8FC1BD48-4339-365E-6288-9C91708A6312";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "B219DB00-4C58-EE4E-0DA0-EFA6B4B660A0";
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
	rename -uid "00B6D765-4B28-AD09-C9F7-8EB66DAB4028";
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
	setAttr ".t" -type "double3" -0.0077643969605976082 -0.12358406696719015 2.9483952421545716 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870215 -79.977014017422022 -112.77222628638269 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661796 1.2929668245661794 1.2929668245661803 ;
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
	rename -uid "90120BC8-48A3-CA00-3067-818056354E8B";
	setAttr -k off ".v";
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
	rename -uid "387177B4-4FF7-E39A-8B45-D69A79D519D2";
	setAttr -k off ".v";
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
	rename -uid "942BAF1E-4662-908A-3567-E89CA867F2CF";
	setAttr -k off ".v";
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
	rename -uid "ABB23F5C-42C5-E2BC-2E0B-29A9B769DC60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "73A503AC-4BDA-6B6F-E05F-FEAFDE7DD612";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1 -3.5527136788005009e-015 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "EA2F6ADA-4D21-5C0C-B60B-EAA41CEAEB1D";
	setAttr -k off ".v";
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
	rename -uid "3EA3F0E0-4EE9-DD7C-0599-C6BCE43661C0";
	setAttr -k off ".v";
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
	rename -uid "3B22B15D-4BB7-5AEC-8626-48A8BCB936E4";
	setAttr -k off ".v";
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
	rename -uid "D83DA6C4-4F4E-4706-C25F-4DB59D1F0990";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F3E38738-44E6-1021-68DB-EC80529FB236";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F28E62E7-4C80-577C-289A-938D19B1FD38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F3FC5F45-4B4C-CC6B-D9A2-2DA173DEA0C6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414017018 3.5527136788005009e-015 2.6645352591003757e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "A890138B-4E86-A506-71A9-46A33332DF40";
	setAttr -k off ".v";
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
	rename -uid "C72332D9-4EDB-8DFC-FE67-99890F260240";
	setAttr -k off ".v";
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
	rename -uid "A0C37478-45D8-ED43-D42F-A3B87F668073";
	setAttr -k off ".v";
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
	rename -uid "6B269C52-44DC-4DBB-BFA7-4DBFCEF0B54D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "82E069B0-4EE5-7199-48DA-FD9F139E4799";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "74E799D9-43EA-B23D-CC06-07A240912EFF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CC8CA713-40B6-1FF5-03D0-CD9DF8E4D769";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549591893 -7.1054273576010019e-015 -2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "5DE2EDAB-4B30-6E37-9FB2-EEBC1FC77212";
	setAttr -k off ".v";
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
	rename -uid "0F398A01-4674-8CD5-269C-7A87E0C8D200";
	setAttr -k off ".v";
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
	rename -uid "46ED9C90-4346-4A63-0E27-1AAE4587436F";
	setAttr -k off ".v";
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
	rename -uid "5993F242-4B84-5BE4-5889-2E9EE01FE3B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "12E7FCC5-4891-49F9-B3C2-F58C019887BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D72C65A3-4C5D-9654-D9B7-988AD8441408";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "81F583C3-4B6A-21CE-8F01-10AD3D8BFD8C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999989 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "734F13F4-4336-0778-F43B-7DA81EBB2413";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970777 0 0
		0 0.25859336491323592 0
		0 0 0
		;
createNode aimConstraint -n "finger_R1_blade_aimConstraint2" -p "finger_R1_blade";
	rename -uid "B816A5EB-4720-FF0A-48BC-51BC75B8A08A";
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
	rename -uid "F1EAB120-4536-E2BB-5B5B-55A4379E4A47";
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 0 4.4408920985006262e-016 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "1D8036E0-440A-D948-A69A-BFB94E5FE9F3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153207 -28.040620010901296 1.1418187531105746 ;
	setAttr ".r" -type "double3" 174.15150560514701 -9.976887950876641 -125.88865264712196 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786016 -2.6320983106786064 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "DA36C318-4E7D-6317-8E64-C7871F0014E1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "562B91F4-4AA0-9268-C460-2494ABCD271D";
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
	rename -uid "6D4E1D00-47A0-8C52-9AB6-7492EF75C830";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000009 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "FC1764A1-4B47-D027-CF95-66981D4542EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030141 0 0
		0 0.0616774421634338 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint2" -p "meta_R0_blade";
	rename -uid "8DC0B718-4410-E47E-AD0C-5C9505D5ACF6";
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
	rename -uid "13A2B7A4-4489-1740-AF55-05BBE63E3775";
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
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "18606D48-48E3-CEF6-AF85-D58141452FAA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400411 -38.076493243285221 11.714163621935903 ;
	setAttr ".r" -type "double3" -98.404354317568405 44.654258545703598 -90.724179884703588 ;
	setAttr ".s" -type "double3" 3.4032157947041335 3.4032157947041197 -3.4032157947041264 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "642C8526-47B4-E99A-5592-15993702ADB2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "FB629C9A-4F65-ECC4-986F-5D93E474C6E4";
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
	rename -uid "CD65C26B-43A8-C97B-90E5-EE9671E26E4E";
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
	setAttr ".t" -type "double3" -0.18403723679763218 -0.30586006047055037 2.7614233959505849 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808463 -71.606679450096962 -133.79382708613142 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661816 1.292966824566181 1.2929668245661825 ;
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
	rename -uid "335843D4-43A0-C01D-1B58-88B57955954C";
	setAttr -k off ".v";
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
	rename -uid "DB92A629-4726-51EF-E040-85A91BC60B60";
	setAttr -k off ".v";
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
	rename -uid "8A7239F2-4925-549F-ED1D-DEA7B9026A1E";
	setAttr -k off ".v";
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
	rename -uid "F0DBE3EF-4FBF-AB6A-0306-D896B42DF097";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "9FE7AB1C-4D68-EC18-B550-05917E85A38B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999822 3.5527136788005009e-015 7.9936057773011271e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "636C6928-40E3-2794-B8D0-EA92BBF488BA";
	setAttr -k off ".v";
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
	rename -uid "E9A3E2E0-48D8-1611-6975-AF932A99E089";
	setAttr -k off ".v";
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
	rename -uid "C1ADC5F4-469C-10B2-F576-5DB829208A53";
	setAttr -k off ".v";
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
	rename -uid "777D287B-4DAF-C655-F4CC-42ABEF5A976C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1F45B516-40C9-0497-F3BD-6CA9FA253FBB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "11398DAC-4D70-05B1-E867-A0A4E8794B02";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "CC52B300-4045-DDDD-41E7-C38A901C4287";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080926186 -7.1054273576010019e-015 1.3322676295501878e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "A8316E69-49DA-4F3C-BA27-D7B637CB0C71";
	setAttr -k off ".v";
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
	rename -uid "07811F43-464F-0E6D-1010-80AD5665CD84";
	setAttr -k off ".v";
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
	rename -uid "E47B9993-4D34-B18C-F02B-F8BF7456117B";
	setAttr -k off ".v";
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
	rename -uid "B297DDE5-4D6C-8785-D62F-3BBD261B6054";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0C8613DC-488C-5544-4C56-FFB8EE97EBAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "8E9434DC-498F-F23A-D8AA-54A5A2E1EA08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A4FF8ECA-4E2E-224A-87FF-CEA571879F1E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392369786 -3.5527136788005009e-015 -5.773159728050814e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "0BE4FAA1-4C3F-9D27-82E4-D0B33F74AC5C";
	setAttr -k off ".v";
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
	rename -uid "05B52D79-4BEC-968E-CFED-83ACED5034B1";
	setAttr -k off ".v";
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
	rename -uid "150FA7D9-418A-56D3-D75B-B1A030646C4D";
	setAttr -k off ".v";
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
	rename -uid "96545AC5-4880-BA44-3E82-D4A0B33B0068";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B75BBDFC-43A8-6E4A-EB0D-C2B852C3D62C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A4161371-4AA9-52EE-11BC-4FA1DCF0C6F2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "45906C68-4E19-4F9B-F5DD-97A2606CF625";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "EE9F4FDA-4C17-D530-D5CD-9CBDFBF8A9C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970899 0 0
		0 0.25859336491323631 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint2" -p "finger_R0_blade";
	rename -uid "43B8E714-4799-3020-3D5B-C4B6B3970C18";
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
	rename -uid "5A390434-4DCB-3563-1A6C-BFB8045A72BF";
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
	rename -uid "D7015ED9-41AD-A2EF-F779-5D9BCF148140";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713096 -27.336008057181072 2.4648652761312704 ;
	setAttr ".r" -type "double3" 170.8345665119829 -22.111176212557947 -122.87938490445553 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106785998 -2.6320983106786033 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "5DBA7E6B-4AFC-64AC-003F-19A74727C23F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "0B17BE2D-4A05-DA14-EB63-DC86A32226EB";
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
	rename -uid "B113062B-40B6-909B-7E5A-5EADE7DF791C";
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
	setAttr ".t" -type "double3" 0.21303623709073483 -0.22489125789801534 0.13070337452156444 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848221626 -84.001563523231283 11.009204406900869 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041353 3.4032157947041206 3.4032157947041273 ;
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
	rename -uid "4ADBEC0D-4E85-47BD-A157-A38686057163";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root4Shape" -p "thumbRoll_R0_root";
	rename -uid "B506AA28-4E98-32E9-ADB9-D09C8BA73ABA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root5Shape" -p "thumbRoll_R0_root";
	rename -uid "A92E0329-4C62-45AC-D2A7-1DACA872D520";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_R0_root6Shape" -p "thumbRoll_R0_root";
	rename -uid "663B7754-4FBB-F472-9019-8CB74AAFC6B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "E183E680-4F5E-7EE1-BB67-ACA44EEE8841";
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
	setAttr ".t" -type "double3" -3.5527136788005009e-015 -1.7763568394002505e-015 -5.5511151231257827e-017 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913076 -43.900240512232266 -37.623269198287858 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511089 0.48936434703510973 0.48936434703511111 ;
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
	rename -uid "76A68B39-460B-26FE-2CB9-C4A9B272AD59";
	setAttr -k off ".v";
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
	rename -uid "45BBCFC3-4795-6A87-9859-F898E3A6C74A";
	setAttr -k off ".v";
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
	rename -uid "FA64E310-4927-8F04-ABB3-6CAD123A866F";
	setAttr -k off ".v";
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
	rename -uid "23A65874-427B-1F19-0045-FCAE866561E3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "FF9F4A18-4ABC-9C1B-6F7E-5EA880DA539C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703469673 0.0024095775966932464 -7.1054273576010019e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.238425749806078 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999878 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "273B3E82-4CB4-19CA-F335-30BD8705FC6F";
	setAttr -k off ".v";
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
	rename -uid "802955A1-4FBE-30B1-17B3-1596B82D41C1";
	setAttr -k off ".v";
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
	rename -uid "A7F3381C-462E-4438-853E-04AFB4D6EF98";
	setAttr -k off ".v";
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
	rename -uid "F8342AF0-4F53-2B35-3E18-93A58946928E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "1A8FDA63-497F-7356-E814-7199FEE30BB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5CE34AA4-443F-0B60-EA5A-D2A69427C789";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "FB822A91-4A49-1275-5F49-5FACA5A4DC58";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522498 -1.7763568394002505e-015 2.4868995751603507e-014 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "CC09B538-44C8-721D-EEC1-92975EC71C7C";
	setAttr -k off ".v";
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
	rename -uid "93DC2FA2-41B8-17BE-7A49-8D9D09AEC576";
	setAttr -k off ".v";
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
	rename -uid "72A831EB-4A6D-1A12-BAF2-AE99D1DC4807";
	setAttr -k off ".v";
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
	rename -uid "55195454-4D65-B906-7DBB-E691A07D327C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "2192C1B9-4920-3260-4971-28887FE5F8F5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D0C5D5F8-42D7-0572-765B-CF86E00E8083";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0C1B24A4-4210-6596-C9B8-D097C7F6C20A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510742 -1.7763568394002505e-015 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "9D90377D-446F-69E1-6C26-D3BC1079682F";
	setAttr -k off ".v";
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
	rename -uid "2E69C5C8-4B77-4BEA-CB9D-AE8C6C25B992";
	setAttr -k off ".v";
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
	rename -uid "EDCF2578-4868-8125-2F8C-0B86A11ACD62";
	setAttr -k off ".v";
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
	rename -uid "4AE18773-4C5E-7758-1D16-3589B9B25FB7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D2299A7B-475A-AFC3-9816-50B9C9B256B8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B137CC81-4804-F29E-5847-85B912DB6BB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D0C7F21D-44B3-106D-C35B-088077B2D69C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999845 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "2DF97AE3-48A2-7002-EA5E-E3B61226CD3E";
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
createNode aimConstraint -n "thumb_R0_blade_aimConstraint2" -p "thumb_R0_blade";
	rename -uid "16F852E6-436F-A046-FA3E-1B812469EB74";
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
	setAttr ".rsrr" -type "double3" 9.9349754491279253e-016 7.0962606763818144e-013 
		0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint2" -p "thumb_R0_blade";
	rename -uid "0D0EDBA4-4A3C-89DD-C4BF-C3BB2721B20B";
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-015 -8.8817841970012523e-016 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "D1D0BDF0-446C-F1C0-FD5B-8F837F4E8F09";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042895 -7.073792958754316 17.725867635512845 ;
	setAttr ".r" -type "double3" -55.556977946373188 -63.100734454449608 102.71864583729835 ;
	setAttr ".s" -type "double3" 2.0434672163157277 2.043467216315721 -2.0434672163157259 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "2BC088EF-45B0-B24C-AB01-C78D43868778";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "88AAD1E6-466F-F212-F263-418E8149D683";
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
	rename -uid "B1F9E58F-4820-0D64-C00D-1C8D171D71D1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473038 1.1564412205648729 ;
	setAttr ".r" -type "double3" 2.1534408611046039 175.80406292066334 45.437740049298206 ;
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377396 -1.0495082267377405 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "072D69ED-4F0D-19D0-9F48-9B9A0C9FC40D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "567B7F41-456D-348C-65F7-E689641EB959";
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
	rename -uid "624F5EDE-4DAB-04A1-FB04-3BBA80E0EB4E";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999667 0.99999999999999789 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset" 90;
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "DF2440B5-4856-E0E0-6767-7EB5E5C6432F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000109 0 0
		0 0.20000000000000037 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint2" -p "shoulder_R0_blade";
	rename -uid "C07ED082-4BF1-BA5C-A84E-81B85F3166B9";
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
	setAttr ".o" -type "double3" 90 179.99999999999957 180.00000000000017 ;
	setAttr ".rsrr" -type "double3" 23.386262286472913 122.53864021838231 110.03040021520754 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint2" -p "shoulder_R0_blade";
	rename -uid "4F34795F-4610-E318-A61F-9E98E3A818AB";
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
	rename -uid "7708CFA2-4FD3-2CA2-C877-43B78F754949";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509836 0.009276189738275915 0.11673327753265021 ;
	setAttr ".r" -type "double3" 90.803889228153793 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377369 -1.0495082267377371 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "97A6EFCA-45A8-A86C-B008-41B0F6BEE785";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "F352CE1F-4675-1832-A1E1-B4AC91DC41D8";
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
	rename -uid "C0CFB580-46D7-D286-F27D-CC837091A775";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999989 0.99999999999999878 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "B8FA4407-4033-8733-AB37-21AB23A0FEC0";
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
createNode aimConstraint -n "spine_C0_blade_aimConstraint5" -p "spine_C0_blade";
	rename -uid "DF861ED3-48E2-9051-CBA1-539A30DA4990";
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
createNode pointConstraint -n "spine_C0_blade_pointConstraint5" -p "spine_C0_blade";
	rename -uid "00F6EA81-4023-D76B-067B-B1B6B48C70EE";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-015 0 1.2325951644078309e-032 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "F6C61D64-4F98-84E1-ACC2-C58289CC8388";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690754 0.19144303592045894 -4.2508893276606347e-017 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377405 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "708986D1-429F-21F8-9206-F494B349EE33";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "F15B5FD8-40B4-11F2-B71C-B3B6FE0CA295";
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
	rename -uid "905EA44D-48D1-1A31-FE6A-7B8527BF311C";
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
	setAttr ".t" -type "double3" -1.181458339458807 1.6653345369377348e-016 -1.0212680564255754 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0.29314386227018269 0 ;
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
	rename -uid "E624A4AC-46DE-4DB4-4208-57946CCB5834";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_root13Shape" -p "leg_L0_root";
	rename -uid "A17D0CB4-4FA6-E597-EFCC-1A958D50BF64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_root14Shape" -p "leg_L0_root";
	rename -uid "E453A1DD-49EE-5CEA-229B-F4B40C971C7D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_root15Shape" -p "leg_L0_root";
	rename -uid "6FAEF32A-44FF-C357-B0FC-E99C75AC0359";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "EE9E1B3A-42EE-01E1-E0CE-D2B9A4DD32E2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303987 0.38838644346805828 -1.8873791418627661e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999878 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "0AE1713C-407A-71B0-3664-7D86935AB05A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_knee13Shape" -p "leg_L0_knee";
	rename -uid "81C61515-486E-C965-D40F-8A830BDDEEC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_knee14Shape" -p "leg_L0_knee";
	rename -uid "74DF6B43-4FAE-7985-78C2-B2A6DCFA05ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_knee15Shape" -p "leg_L0_knee";
	rename -uid "2F4FEEFD-439E-2F90-7A42-24A616C3FEF7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_knee15_0crvShape" -p "leg_L0_knee";
	rename -uid "5E75706E-4C00-87C1-D092-C0986A892173";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_knee15_1crvShape" -p "leg_L0_knee";
	rename -uid "9D9839FF-45CC-6850-6A21-6FB44C96F538";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "247C1E9F-4046-D2ED-FDA7-33AF8D4036CB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-016 -4.541407524055419 -0.74630601922779882 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999989 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "44C41585-4089-32F3-1CCE-C590880ECC5F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle13Shape" -p "leg_L0_ankle";
	rename -uid "1B9CF0C0-4805-0D38-9019-8DB4A812695A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_ankle14Shape" -p "leg_L0_ankle";
	rename -uid "62F175AE-468C-6354-E374-4696F7E6E2E4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_ankle15Shape" -p "leg_L0_ankle";
	rename -uid "D340F751-4E9B-56AA-F60D-269DEE40547B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle15_0crvShape" -p "leg_L0_ankle";
	rename -uid "0427A416-4416-BB05-12F5-46B082613E52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle15_1crvShape" -p "leg_L0_ankle";
	rename -uid "4DBF0CAA-43AD-5BBC-6B14-318403252AFF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "34528CC1-42D4-BD03-CE40-B099F870A7E5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 1.3322676295501878e-015 2.1377206638691337 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000027 0.99999999999999911 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "C12439AC-442B-A52B-BBCA-C2810C77F3DA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_eff13Shape" -p "leg_L0_eff";
	rename -uid "02EE399B-4F61-71DC-DA5C-7087F688BA02";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_eff14Shape" -p "leg_L0_eff";
	rename -uid "A2FD3FB5-47AD-C44A-BE1D-17A6E5A0C255";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_eff15Shape" -p "leg_L0_eff";
	rename -uid "4FB28653-4152-398F-5DFB-F4996041A355";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_eff15_0crvShape" -p "leg_L0_eff";
	rename -uid "3B09BD51-4234-74A5-1C4F-DCB9DEBF9F36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_L0_eff15_1crvShape" -p "leg_L0_eff";
	rename -uid "08B0D5F9-40D7-86BF-D4AA-70B6AC3FEEB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "B4456EDB-48D2-E690-674A-06AF9C6AD468";
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
	setAttr ".t" -type "double3" 3.3306690738754696e-016 2.2204460492503131e-016 1.1102230246251565e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426093 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.9997975226851844 0.99979752268518352 0.99979752268518229 ;
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
	rename -uid "84AA6FA4-42FC-4040-6E05-529A970EB7FB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_root13Shape" -p "foot_L0_root";
	rename -uid "69CE8242-4A8D-30AE-94B3-DA83BB998A18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_root14Shape" -p "foot_L0_root";
	rename -uid "958366AD-4B78-ED13-2D8A-FB86A154607D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_root15Shape" -p "foot_L0_root";
	rename -uid "C0911110-4B09-E599-DCAA-289147DBDC62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "5F210A7F-437C-0C8D-EDD6-779902E0822C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763245 -0.77423199221117323 -0.00087398468478316893 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999956 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "09C6A740-4365-60AE-ECE7-329D621B5258";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc13Shape" -p "foot_L0_0_loc";
	rename -uid "13C9B6D0-497C-B0A0-01E2-8C8E0E4136BE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_0_loc14Shape" -p "foot_L0_0_loc";
	rename -uid "F174113B-49D3-B840-820F-7393AB58ECC5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_0_loc15Shape" -p "foot_L0_0_loc";
	rename -uid "8821FC9D-4011-7361-E278-368B5798FA36";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc15_0crvShape" -p "foot_L0_0_loc";
	rename -uid "B2D823F2-4AA7-1E66-6A45-7E80DE26BE9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc15_1crvShape" -p "foot_L0_0_loc";
	rename -uid "3736A3BA-4370-0A0F-B365-5095CCF259D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A54A95B8-4ED6-CDF2-DDB1-01AF611574EE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444316 0.052400542543841078 0.00053566803260873819 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448006 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "CAFB992F-4EFB-4163-750F-22B3F276E476";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc13Shape" -p "foot_L0_1_loc";
	rename -uid "79250AEB-401D-7BB9-612E-2C919B76E0CE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_1_loc14Shape" -p "foot_L0_1_loc";
	rename -uid "BFD62C6F-4690-99A0-6428-1EB676F90F67";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_1_loc15Shape" -p "foot_L0_1_loc";
	rename -uid "30F6D2F4-4B48-8069-0E51-DFA21396DFC6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc15_0crvShape" -p "foot_L0_1_loc";
	rename -uid "218C6959-41DD-9D4E-13AE-BB908DB0DA0F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc15_1crvShape" -p "foot_L0_1_loc";
	rename -uid "A4C6B9FA-482A-31D9-3B18-F3B185E1776A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "248A1F3C-4283-7AE0-C35E-0AA6B151897A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518488 -0.34355031336095371 -0.001838943799268522 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "520D02E0-4A67-AD65-515A-CFB4C780B4C9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc13Shape" -p "foot_L0_2_loc";
	rename -uid "52A26A9E-4E31-05BC-A090-28A714600CA3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_2_loc14Shape" -p "foot_L0_2_loc";
	rename -uid "18E0EF9C-4255-9684-B246-E18E773DF1DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_2_loc15Shape" -p "foot_L0_2_loc";
	rename -uid "CB5CFB0C-4604-AC62-BB20-9886024D701D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc15_0crvShape" -p "foot_L0_2_loc";
	rename -uid "8B655172-4964-FF48-F156-7781CEB52A4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc15_1crvShape" -p "foot_L0_2_loc";
	rename -uid "E491D051-4B45-205D-6B34-2C8A0D281816";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F9180A25-4B95-BF24-064E-728131B24534";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687128 -1.2934842521415495 1.0591437062861175 ;
	setAttr ".r" -type "double3" 2.899016939725843 84.223472754416591 2.9137877746396716 ;
	setAttr ".s" -type "double3" 1.0497207713808365 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "B13EF49F-4605-64E5-14BA-9189EE911470";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "BFFA937A-4450-C14F-C3C4-E398C467804E";
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
	rename -uid "CE6196C4-4970-9D80-31F7-29BF028540FF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343369 -1.2883323665462252 -0.0019628851482431653 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "C236BC11-4897-F34E-C081-A0A260269D4E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_heel13Shape" -p "foot_L0_heel";
	rename -uid "8F42D05B-4E07-F9E1-8463-7EA4C9233931";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_heel14Shape" -p "foot_L0_heel";
	rename -uid "1E03B767-4AAE-D7D4-38A4-3AAD763CA8C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_heel15Shape" -p "foot_L0_heel";
	rename -uid "65C62CA4-49C5-433D-90DA-D2B8C56E79AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_heel15_0crvShape" -p "foot_L0_heel";
	rename -uid "C5AE31C9-4090-43A3-EF96-0484D4191359";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_heel15_1crvShape" -p "foot_L0_heel";
	rename -uid "13AE63ED-478C-F2CE-AC85-478B4A6D0D12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "947229D6-45A2-233A-CDED-8B8A551762B5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991019 -1.2852474767223818 -0.54483578923279774 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "296994AA-4234-622B-8E9E-DA9C45DCA162";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot13Shape" -p "foot_L0_outpivot";
	rename -uid "8CF508D5-459C-9765-63C0-7C97EAFFD42B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_outpivot14Shape" -p "foot_L0_outpivot";
	rename -uid "2209037C-4AF4-8ED0-C796-0B86B0E6F413";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_outpivot15Shape" -p "foot_L0_outpivot";
	rename -uid "EF0643F4-4348-D311-954E-93823F8AEEDD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot15_0crvShape" -p "foot_L0_outpivot";
	rename -uid "5409B730-446B-DD49-97DA-18BC2788A44A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot15_1crvShape" -p "foot_L0_outpivot";
	rename -uid "31FAA10E-4D1C-73B0-574B-CBBC33D237FD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "A6FCD3F3-481D-128C-85D0-3C8046D1CBCC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991019 -1.2905939540073481 0.65234269833768499 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "D30309F7-4C13-01D8-DF26-758FC9973E7C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot13Shape" -p "foot_L0_inpivot";
	rename -uid "07286979-4B71-479D-F035-B0A0FB5975BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_inpivot14Shape" -p "foot_L0_inpivot";
	rename -uid "4F8002D1-4AB2-AD85-FBCD-E69BD17C5D24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_inpivot15Shape" -p "foot_L0_inpivot";
	rename -uid "A9FA3299-45EF-BD2B-449E-369FE7074B59";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot15_0crvShape" -p "foot_L0_inpivot";
	rename -uid "29526697-4D0D-022D-47FC-6D87FA428269";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot15_1crvShape" -p "foot_L0_inpivot";
	rename -uid "8D3FBF13-4FEE-CE5F-BFF3-058957D3C5E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0E6D6563-480C-4D37-8D1F-209EFF0F81BD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687128 -1.2934842521415495 1.0591437062861175 ;
	setAttr ".r" -type "double3" 2.899016939725843 84.223472754416591 2.9137877746396716 ;
	setAttr ".s" -type "double3" 1.0497207713808365 1.0497207713808352 1.0497207713808356 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "E8A2E5CC-47EE-224B-FF25-1AB6D54C9B8B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig" -p "foot_L0_1";
	rename -uid "26F5E767-446E-6045-125E-2BAEF66767E8";
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
	rename -uid "1D0DE2B1-42FE-A172-1F5C-07985D4A8255";
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
	setAttr ".t" -type "double3" 0.59908552650329461 0.51029795172993753 -1.4395512694570038 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1 0.999999999999999 ;
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
	rename -uid "5166C76D-440F-3FD6-A0E7-6DACD977BC22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_L0_root13Shape" -p "legUI_L0_root";
	rename -uid "4681FCDA-480B-C920-D325-B4823FD07E4E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_L0_root14Shape" -p "legUI_L0_root";
	rename -uid "0A58B8A8-48F0-9979-A73D-409EE88C50AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_L0_root15Shape" -p "legUI_L0_root";
	rename -uid "A9A6E736-4C52-7759-8491-119928786079";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "A3487286-4C9C-DA34-9313-2AA0488786B4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209228 0.19144303592045903 0.96902196420373699 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729844 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377376 1.0495082267377402 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "2965FC31-4DE7-D4A5-EA33-139690B5F6B3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "33C19EA4-48E2-D0F8-EF85-C1B6F77F20F1";
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
	rename -uid "72673B2B-47D3-DF06-87C6-819A827F272B";
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
	setAttr ".t" -type "double3" -1.1814583394588052 6.3837823915946501e-016 1.0212680564255756 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -0.29314386227019551 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999878 -1 ;
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
	rename -uid "0F3CC03A-4013-73BB-39DD-159CC9E51F53";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_root13Shape" -p "leg_R0_root";
	rename -uid "B9C73BE1-405D-E91F-826D-FF9DE89E10FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_root14Shape" -p "leg_R0_root";
	rename -uid "F83258A4-407F-3AA0-89C3-A4A8773AE68F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_root15Shape" -p "leg_R0_root";
	rename -uid "6B883A54-4343-F903-0A19-1690B55CD0BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "7B2BEB18-4BCB-E680-2EB3-6A8F107B738E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772304067 0.38838644346805851 -3.5527136788005009e-015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999929 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999889 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "C9D634B3-4833-7339-D6F0-FA9ABFDB0CE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_knee13Shape" -p "leg_R0_knee";
	rename -uid "A5C40C8B-4A88-5323-7CA6-49B7C49A1CE8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_knee14Shape" -p "leg_R0_knee";
	rename -uid "9B0084CC-498E-39B5-844F-47992572FF28";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_knee15Shape" -p "leg_R0_knee";
	rename -uid "F6159ED7-4D78-D7F7-8872-3E89CE4329E1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_knee15_0crvShape" -p "leg_R0_knee";
	rename -uid "E49F72CA-4389-6628-9302-28AC5B72FD4C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_knee15_1crvShape" -p "leg_R0_knee";
	rename -uid "D8566D5C-4FA3-9B25-164B-D4BF0905AB22";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6C2296F3-4628-8E8B-E3C0-42BD2C0FA8DA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6629367034256575e-015 -4.5414075240554173 -0.74630601922779816 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999989 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "FDD79764-47E2-C9A7-2AC4-058CC378063D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle13Shape" -p "leg_R0_ankle";
	rename -uid "4482F5CF-4A54-7279-980C-1AA1EDB2A6EB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_ankle14Shape" -p "leg_R0_ankle";
	rename -uid "6E80A406-46F1-04AC-BC87-C59D683ABFFF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_ankle15Shape" -p "leg_R0_ankle";
	rename -uid "B7D46864-4D78-E615-F827-AB9F89C10433";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle15_0crvShape" -p "leg_R0_ankle";
	rename -uid "1792AB58-47F0-5D43-8722-8DAFF7FBABEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle15_1crvShape" -p "leg_R0_ankle";
	rename -uid "308FE260-4D59-02FA-68C7-ECB437FE9291";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "0F9041B1-469D-9746-F9BC-00B60D0B29FB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.4432899320127035e-015 3.1086244689504383e-015 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999989 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "0223E7EE-4CBF-D8EC-F3AE-7F9C7652368E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_eff13Shape" -p "leg_R0_eff";
	rename -uid "587D20F9-40C1-8510-ACF0-25AD68873A9B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_eff14Shape" -p "leg_R0_eff";
	rename -uid "1C66DF80-4CD8-7EEE-1284-40B8F72B1744";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_eff15Shape" -p "leg_R0_eff";
	rename -uid "01FD91BD-4953-B678-8201-658A8324E5F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_eff15_0crvShape" -p "leg_R0_eff";
	rename -uid "FDA7180D-4662-B60B-2E23-5F9813C95FA2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "leg_R0_eff15_1crvShape" -p "leg_R0_eff";
	rename -uid "6610AE9C-43AE-D242-F153-078F6FE0D213";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "F99BD7F4-4259-70AF-5D43-659FBCF00DCB";
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
	setAttr ".t" -type "double3" 7.7715611723760958e-016 1.1102230246251565e-015 2.2204460492503131e-016 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426093 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518429 0.99979752268518429 0.99979752268518329 ;
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
	rename -uid "D5A61405-44E3-7BB6-AA28-80A165BF5006";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_root13Shape" -p "foot_R0_root";
	rename -uid "4F9215CB-4E69-9F73-5975-A8BE762CA20E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_root14Shape" -p "foot_R0_root";
	rename -uid "6CA3374B-47E9-4C85-47CE-39A0244E962A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_root15Shape" -p "foot_R0_root";
	rename -uid "ECD024F6-4F5E-2BB4-1050-DBAA32E56BE6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "A40EFEA3-45CD-CCF2-6C1D-349E67D85E3F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763237 -0.77423199221117278 -0.00087398468478272484 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448023 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 0.99999999999999911 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "098F6A6D-46FA-7F9F-C498-E48A77503A70";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc13Shape" -p "foot_R0_0_loc";
	rename -uid "A08399DF-4702-908A-1D57-8580BE6A8FB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_0_loc14Shape" -p "foot_R0_0_loc";
	rename -uid "9A11963A-457F-F7A4-CFE5-56A206C78468";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_0_loc15Shape" -p "foot_R0_0_loc";
	rename -uid "4D29B0E6-481A-3F78-37A9-1094188B12CA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc15_0crvShape" -p "foot_R0_0_loc";
	rename -uid "94124884-4414-3AF5-4DC1-9DB2BE17A246";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc15_1crvShape" -p "foot_R0_0_loc";
	rename -uid "90B8E6F7-460D-C4A1-A33B-329633C9B209";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "C5DFCCE3-46C8-A491-C1C4-90B6890DC2CA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5724162416244436 0.052400542543842632 0.00053566803260740592 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448013 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "B1E3B013-477E-1D39-2578-C2B4A210BC05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc13Shape" -p "foot_R0_1_loc";
	rename -uid "EA070567-4D01-F8B6-9190-6BA8635E29AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_1_loc14Shape" -p "foot_R0_1_loc";
	rename -uid "E8EB3233-41D2-D58A-79CE-4E913FC2CB1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_1_loc15Shape" -p "foot_R0_1_loc";
	rename -uid "9DEF7BFC-48F0-8204-D153-858E675F23A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc15_0crvShape" -p "foot_R0_1_loc";
	rename -uid "E8497B50-4EC0-AA7F-F9BF-4984DC506463";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc15_1crvShape" -p "foot_R0_1_loc";
	rename -uid "E898B1D5-452F-1EF4-88A3-0FB14B75C666";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "6ADE5558-4780-AB9D-6A56-E298A8F76E89";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518377 -0.34355031336095393 -0.0018389437992680779 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "DAC6806B-4BD4-3A9A-DECA-DEB821DF7985";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc13Shape" -p "foot_R0_2_loc";
	rename -uid "3FB471BD-4C75-A588-844D-6593A8F80EEA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_2_loc14Shape" -p "foot_R0_2_loc";
	rename -uid "40EEB8D1-44EB-B9E6-5D2B-27B3BAECCE4F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_2_loc15Shape" -p "foot_R0_2_loc";
	rename -uid "D872D497-4C7B-B92C-0F2D-7599041A1A38";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc15_0crvShape" -p "foot_R0_2_loc";
	rename -uid "482A9276-4F75-A9C3-0DC9-31B43DC032CD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc15_1crvShape" -p "foot_R0_2_loc";
	rename -uid "70043C64-4EB1-0481-12B6-A7858F16E4AA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "7A6AA892-47D1-0EF3-7097-12834CBFCBF9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415471 1.0591437062861166 ;
	setAttr ".r" -type "double3" 177.10098306027447 -84.223472754416576 -177.0862122253607 ;
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "147F5CB8-4E1E-F160-3374-76A00480187B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "E7804FDF-442B-09F4-3F10-DFB193C42E7E";
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
	rename -uid "24FA5462-4958-B138-41EA-E89B201603AF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343291 -1.2883323665462239 -0.001962885148241611 ;
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
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "DF00219C-45A0-1D28-3B8F-108FD690AF2E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_heel13Shape" -p "foot_R0_heel";
	rename -uid "9C3C7CB4-425D-BB31-400E-39B2D5C1B6AD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_heel14Shape" -p "foot_R0_heel";
	rename -uid "ABA3AE46-4409-C87C-CC4F-8AB66435028F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_heel15Shape" -p "foot_R0_heel";
	rename -uid "6175061A-43D5-3872-64CC-71BC8FD9CA24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_heel15_0crvShape" -p "foot_R0_heel";
	rename -uid "57DC44C3-4B7D-8BBC-EB3F-54B3E910D4BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_heel15_1crvShape" -p "foot_R0_heel";
	rename -uid "62EE7134-4F34-09CA-EDDB-6B81B4D2EE56";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "779DCCEF-4BAA-E3AA-2054-209ED9B7CD39";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991006 -1.2852474767223809 -0.54483578923279641 ;
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
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "6CF7793E-47E0-9662-EAEC-6DB3BA8F6F15";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot13Shape" -p "foot_R0_outpivot";
	rename -uid "6502837A-44AC-E230-D22C-AA953EBCA6E5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_outpivot14Shape" -p "foot_R0_outpivot";
	rename -uid "7CF383CE-44C4-CC00-83CD-9682BB66F7EA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_outpivot15Shape" -p "foot_R0_outpivot";
	rename -uid "81F2D1F1-4E37-3975-3B1D-F892D1D7242F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot15_0crvShape" -p "foot_R0_outpivot";
	rename -uid "8A563F83-4A53-DE55-1A3D-F3AE2E600FAC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot15_1crvShape" -p "foot_R0_outpivot";
	rename -uid "2282300C-44F9-DD05-2C85-25838B286532";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "5B6F54B4-4E82-7087-25A4-4FBDB22C5606";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991015 -1.2905939540073468 0.65234269833768543 ;
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
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "4F6C0C68-491B-FB45-6044-75BA5395FD24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot13Shape" -p "foot_R0_inpivot";
	rename -uid "BF1F40A3-4510-A7C6-125A-78A1A13B0AB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_inpivot14Shape" -p "foot_R0_inpivot";
	rename -uid "CF3A2224-471B-27CA-25C3-3D923E0EF0E9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_inpivot15Shape" -p "foot_R0_inpivot";
	rename -uid "6D4DF621-4EDA-37F2-BFF8-7B9AB0ABB005";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		0 0.1875 0
		0.1875 0 0
		0 -0.1875 0
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot15_0crvShape" -p "foot_R0_inpivot";
	rename -uid "F6109CE9-4EB1-456E-FA20-64AE32E81794";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
		7
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		0 0 0.1875
		0.1875 0 0
		0 0 -0.1875
		-0.1875 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot15_1crvShape" -p "foot_R0_inpivot";
	rename -uid "EC31831D-49B6-8F8E-763B-00862A1BC485";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 2 no 3
		9 0 1 2 3 4 5 6 7 8
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
	rename -uid "D5773B3A-4646-3057-E238-A89E8E7D21E7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687117 -1.2934842521415471 1.0591437062861166 ;
	setAttr ".r" -type "double3" 177.10098306027447 -84.223472754416576 -177.0862122253607 ;
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808345 -1.0497207713808354 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "A6062D41-4164-0846-13FC-1FA5151D39FF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
	rename -uid "A2094EEC-4C99-42B3-11E2-3782E833CDE7";
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
	rename -uid "C3D8F06E-48CC-C5D2-DEDA-9497C6307A51";
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
	setAttr ".t" -type "double3" 0.5990855265032945 0.51029795172993708 -1.4395512694570021 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999956 1 ;
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
	rename -uid "392EDB1B-4CAF-0AEA-0157-7AAF497892ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_R0_root13Shape" -p "legUI_R0_root";
	rename -uid "526F0BE8-44EA-E653-6AB4-58A944E2A6BA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_R0_root14Shape" -p "legUI_R0_root";
	rename -uid "39BC5EFB-41FA-17FA-8596-E896A856F17D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_R0_root15Shape" -p "legUI_R0_root";
	rename -uid "2F1AACB0-4106-23DF-32E7-3BBF88699936";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
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
	rename -uid "56AD79D6-4372-C2D7-1E25-79B51A173242";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209232 0.19144303592045855 0.96902196420373499 ;
	setAttr ".r" -type "double3" 90 -89.706856137729929 -179.99999999999815 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.0495082267377378 -1.0495082267377402 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "69D44EF9-4033-B42A-9FD8-77B0FB455903";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "6F4FDB7C-4411-5A9C-F514-FC86D5B8B33E";
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
	rename -uid "28858715-4FCA-49D1-745A-4CA9AE48FCBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile1";
	rename -uid "FD1A22F8-4998-24C4-3FFF-C78C1ECA0AA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile1";
	rename -uid "322DF222-45C3-C3A1-D644-FEB6121EE7DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile1";
	rename -uid "F4F90C7A-4151-931E-C657-F7BC4EDAB3DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion66";
	rename -uid "356CF6A6-4A83-03F5-E801-5D9C79BA1804";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns279";
	rename -uid "AA496716-44A0-3E54-E483-259EC1017218";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns279Set";
	rename -uid "5AC868F4-45D9-AA7B-C3E0-C1B4DEC3DE78";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns279GroupId";
	rename -uid "A2BE8CC2-4637-8B61-332E-74A52C99375F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns279GroupParts";
	rename -uid "62B1777B-4773-E631-561A-EC85540D03E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak427";
	rename -uid "D125B027-43DD-F210-28CC-ABA6A17B4C6C";
createNode objectSet -n "tweakSet427";
	rename -uid "07A600C4-4001-A39F-5D53-7D8AD0C9947A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8423";
	rename -uid "E7933D80-4D5F-44F8-3344-B68B1CE1C166";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts854";
	rename -uid "F735376D-45E2-149B-F0A5-54B063629188";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion67";
	rename -uid "4ECCFA7F-4477-34A6-6EE7-54AEAEC65F93";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns280";
	rename -uid "A71AB98F-4775-662E-20D7-A7A9F4C74B4D";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns280Set";
	rename -uid "E7A3E547-458B-CDCB-4D09-CB85A11D6682";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns280GroupId";
	rename -uid "4538577E-461F-420A-A3A6-69B67B073EED";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns280GroupParts";
	rename -uid "1423650D-4138-6649-2408-6C99B88FDB1A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak428";
	rename -uid "B6F7BFF0-48E2-A149-C885-79B509F3C28B";
createNode objectSet -n "tweakSet428";
	rename -uid "4FCAB2C4-4E96-8942-0A03-3E9B12109961";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8425";
	rename -uid "AC6EAC57-4AB5-5AB2-E617-4C81FB95E60B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts856";
	rename -uid "2C6185AA-4F33-61C2-7524-F1B2818105D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion68";
	rename -uid "00C195DC-4F97-F96F-8F10-66B6E2714B8F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns281";
	rename -uid "BA66FA26-4B0E-B4D0-1209-A389981931DF";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns281Set";
	rename -uid "A3D3FE60-46AA-E53F-5707-C49B9EE721D3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns281GroupId";
	rename -uid "77E8739A-4091-F217-96D1-6A868D9589BF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns281GroupParts";
	rename -uid "D60CDD5B-4FD9-A5EB-8EA1-3DA775399A26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak429";
	rename -uid "490C745C-4BFE-4D84-6939-6CB374FFB8E9";
createNode objectSet -n "tweakSet429";
	rename -uid "39928FD1-44F0-2AA7-D99D-14890CF52A21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8427";
	rename -uid "9891E568-4E6D-AA17-8909-728B0C438192";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts858";
	rename -uid "9ED4B35B-4723-E839-C18F-A88F6C8803A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion65";
	rename -uid "56B60A0C-40DE-5D17-FF8F-0B96911F094B";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns278";
	rename -uid "8AFC9DF5-4629-0D11-FA88-5DADB83C8063";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns278Set";
	rename -uid "D0D92FE1-4AA9-00B7-1C3C-AFB28AAADCC0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns278GroupId";
	rename -uid "93F6D929-4EF7-3C25-4B78-82A88E11D4F6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns278GroupParts";
	rename -uid "6C063145-4047-315D-613E-9EB571E3BF90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak426";
	rename -uid "3340A441-4B39-45B3-B2FE-3A991276C609";
createNode objectSet -n "tweakSet426";
	rename -uid "D29190BE-4FC9-E9CD-8E78-6BA324E9C57C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8421";
	rename -uid "6D1C9068-402E-659C-390B-D7AAD2414B5F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts852";
	rename -uid "59283456-49EE-8101-1DA7-38AD1A59BD25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion69";
	rename -uid "9AB45455-4067-BB0D-4122-42BE2539BAF8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns282";
	rename -uid "5ACF959A-4DE4-37AD-4FE5-4E924A75EB0D";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns282Set";
	rename -uid "9F50E33B-463B-C2DF-64F8-D88C57D5486A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns282GroupId";
	rename -uid "427C64CE-439A-DC1E-F677-AE94C5AFD9B8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns282GroupParts";
	rename -uid "E24EBF70-4916-3DE6-E3FF-279BD0FB6B81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak430";
	rename -uid "0EE48E81-4995-408F-36B0-7393BB6B2BE9";
createNode objectSet -n "tweakSet430";
	rename -uid "DB32605E-4D66-DF38-ECE3-FCAF97C37CB3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8429";
	rename -uid "4233B43A-4986-01C1-0DA6-A98027348B7D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts860";
	rename -uid "E212CBAD-43DE-FB86-01A1-F59A512EB647";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion70";
	rename -uid "428EB189-4879-1483-0664-19AA00197561";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns283";
	rename -uid "F2BA9956-4F93-8EE5-0099-B89D4E631E0A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns283Set";
	rename -uid "A2F573A7-474C-A308-383B-DB8B4E35AE9F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns283GroupId";
	rename -uid "CB65C9C7-486B-527F-B32A-26A5027B3BE9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns283GroupParts";
	rename -uid "702AC710-4F5E-1579-AE84-CF908770F1D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak431";
	rename -uid "6CBB7BB6-4976-7B7C-EC10-4B8FA5B96CD6";
createNode objectSet -n "tweakSet431";
	rename -uid "79A5168D-41B0-3A10-4AC3-A1BC66B321C1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8431";
	rename -uid "1D4655A1-403B-C598-9EEE-E4BD82E4FDF0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts862";
	rename -uid "F5217E86-4BEA-0732-A28F-D2A4755B6FAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns277";
	rename -uid "87992A6F-4DA4-7E75-4DEA-51A4859AAF2F";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns277Set";
	rename -uid "40637A69-44FC-DE91-7012-DFB96F2EE5AD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns277GroupId";
	rename -uid "B4509F7C-4C45-C1C1-EFA0-B582F610545B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns277GroupParts";
	rename -uid "398801D4-4C95-7AC7-BA52-F4942B398D15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak425";
	rename -uid "656A4D06-4FD9-4E3D-F32A-47A7BD67DC1A";
createNode objectSet -n "tweakSet425";
	rename -uid "21597013-4CAB-0761-1331-BBAEC3034F18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8419";
	rename -uid "53CF0367-4028-07A2-1678-259C0E109A15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts850";
	rename -uid "F3A84173-4F37-5F78-7E03-D9AB24786469";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion64";
	rename -uid "C8E80F17-4F8B-6726-B07C-B092A9C0970B";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns276";
	rename -uid "45894964-4078-F51E-B396-A4A001D08B43";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns276Set";
	rename -uid "8056AAC6-4D00-8F02-116C-C8BD982298C1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns276GroupId";
	rename -uid "7D6EB90F-4E99-16E6-D47E-0C80BB6B0A1F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns276GroupParts";
	rename -uid "9F1E64EB-4A27-1744-C00E-51B1A168FD52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak424";
	rename -uid "24496CCC-42E6-B8B8-9C60-B0AA23296792";
createNode objectSet -n "tweakSet424";
	rename -uid "267D10C2-4DE9-E890-10A7-128A979BA7AD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8417";
	rename -uid "A9C09CAC-4243-4F56-F13F-EBA0BE3D1B90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts848";
	rename -uid "0710BC0B-446B-B094-E22E-0F8A096C3B11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile1";
	rename -uid "23D9F076-4A7F-9076-259C-A3B88325CF41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile1";
	rename -uid "0F2DC35D-4523-15E9-BB9E-92A1512BD5FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns287";
	rename -uid "ACFD15FC-4223-D9E2-267D-EE9AA937118F";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns287Set";
	rename -uid "961845BF-45BB-8FC4-F461-02A88FC0B728";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns287GroupId";
	rename -uid "A49C2875-414E-C22D-58E9-7F9075AA1922";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns287GroupParts";
	rename -uid "A53363E7-496D-DCDC-90F4-0B9BCDA6059F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak435";
	rename -uid "499C86ED-421D-1E91-289D-41A456D55D29";
createNode objectSet -n "tweakSet435";
	rename -uid "EC72E4B1-48DA-28A9-7D79-97A1D9BE4A16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8439";
	rename -uid "ACCD0963-4609-B4CD-F24B-B08B7614BD9D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts870";
	rename -uid "242E2C21-4109-2FCA-A6B1-BB95658D086E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns288";
	rename -uid "3A28012E-470B-9DCE-3BE5-09A24F615BB3";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns288Set";
	rename -uid "ED125C8A-4BF4-2491-AF66-16BF79C6A0A2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns288GroupId";
	rename -uid "42374ABA-47A6-CA7C-3039-0C9551459E9C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns288GroupParts";
	rename -uid "9722C5AF-4514-5F0B-5DD3-A49732DF98E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak436";
	rename -uid "F8018249-4486-BF10-FC26-7E80E32B283F";
createNode objectSet -n "tweakSet436";
	rename -uid "0467CA88-4A5D-4A7C-1B2A-D59EC8C06848";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8441";
	rename -uid "63B296B7-4B53-B89C-108E-AD80B5FFAA50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts872";
	rename -uid "73924CEE-46FE-1209-D656-74B5788EA596";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion72";
	rename -uid "10DA279F-41FE-319A-5085-CD8090D99CCF";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns290";
	rename -uid "D8892E77-447D-4988-6A29-529D674952BB";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns290Set";
	rename -uid "55835027-4D2A-DAC6-A121-8B9D51AA7514";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns290GroupId";
	rename -uid "F5B5574D-4123-5BC1-B791-538549D4E649";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns290GroupParts";
	rename -uid "0309F5D7-4673-5533-12A8-F5A0A9C954CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak438";
	rename -uid "24F9736D-4EE8-2832-EA9F-1DBA3E8C6C7B";
createNode objectSet -n "tweakSet438";
	rename -uid "47AC074A-4CCC-E311-0BAD-BC8584CFDA8F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8445";
	rename -uid "207D52D0-4170-1DD6-369B-BE9122B90AEE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts876";
	rename -uid "2BD3C456-447C-E814-C11A-FDBBB6883672";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns286";
	rename -uid "8238792E-4125-2526-3EBE-9DBBBC1F1529";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns286Set";
	rename -uid "383E6151-4616-65E1-3A05-8AA2DFD9EB07";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns286GroupId";
	rename -uid "9DF00749-4B0F-DF30-0AF9-1D8BF6148861";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns286GroupParts";
	rename -uid "6F506B60-402C-C06D-DD72-B4B2B29015DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak434";
	rename -uid "1A64D87A-493F-4F61-D560-538FB28D7F83";
createNode objectSet -n "tweakSet434";
	rename -uid "66C4C525-4B49-AA2C-A249-A191E7E6BA4C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8437";
	rename -uid "14915ABC-4386-1CCE-D05A-B3A1900B3498";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts868";
	rename -uid "367F40FF-4040-6FFA-6D43-9C804001FE4F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns289";
	rename -uid "ABA0EA1E-44BE-91A0-5DC1-529F84D115B1";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns289Set";
	rename -uid "EE51A38B-4952-D9C2-B84E-0E8720BE8E72";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns289GroupId";
	rename -uid "B2D79D69-4C3E-60CF-15EA-5D95A6CB7219";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns289GroupParts";
	rename -uid "12A9B15A-49A8-762C-5267-298B27E2088C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak437";
	rename -uid "6347DDA6-4824-D157-1291-E393C3039CB1";
createNode objectSet -n "tweakSet437";
	rename -uid "24A01982-431A-A59C-CA80-33AAB12DD75C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8443";
	rename -uid "9585A876-44AF-A987-B8C9-6C8D37A0AC5C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts874";
	rename -uid "BD384C2F-41AD-1FAA-C2D8-1BB89DCB860E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns291";
	rename -uid "8A50807A-4860-B925-25CD-CF92AC560144";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns291Set";
	rename -uid "9C403B90-4497-19D7-FBD4-F58BC1693390";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns291GroupId";
	rename -uid "6133321C-4D56-1620-FDD4-1C9F63BE1C49";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns291GroupParts";
	rename -uid "98560C17-405E-FD7C-F57F-7AA3820DD8C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak439";
	rename -uid "2EBF69A2-4052-ED7C-F592-C1AA5209BF44";
createNode objectSet -n "tweakSet439";
	rename -uid "C99AE535-4CDC-2A09-ABDD-33947EB4832F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8447";
	rename -uid "80FE40E6-4E96-D4DF-58E9-6A9A5BA8BBEF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts878";
	rename -uid "12193954-474E-F131-6830-7294D892674D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns292";
	rename -uid "AB5A9129-4F70-4B06-9F80-6D919392A813";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns292Set";
	rename -uid "22D6FCFE-41C2-188D-555F-B99BDA6F38D3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns292GroupId";
	rename -uid "6006CC5A-4CFF-F681-01DB-A2BDD3DC4EBF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns292GroupParts";
	rename -uid "D419ECAB-48CE-0690-07DD-288CFA103999";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak440";
	rename -uid "93E886AE-433F-FD60-5CA8-379F63E6243F";
createNode objectSet -n "tweakSet440";
	rename -uid "C2953D25-4542-EB48-7091-D4A999C44EC5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8449";
	rename -uid "5CB52D2D-49D3-5405-0D6B-8B9088C86D71";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts880";
	rename -uid "C5C8D65B-4A05-85A5-BE04-EF99EF80A3A1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns285";
	rename -uid "F3550C21-49AD-C221-3518-01AEE3086F3A";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns285Set";
	rename -uid "25CA994B-4A33-E6D6-4764-08BD858EFABD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns285GroupId";
	rename -uid "F6A7F800-408E-2A17-BCAE-97926F82C7CC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns285GroupParts";
	rename -uid "E2D42AA4-450D-0551-7165-C193EBAA8C4C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak433";
	rename -uid "E199E029-45C9-F61C-ACF2-F7988806692B";
createNode objectSet -n "tweakSet433";
	rename -uid "4161EB0A-4AF4-08C1-F8F3-37BB25226C90";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8435";
	rename -uid "6D06177B-43F9-DDDD-FCF4-B6B7B7C6C54A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts866";
	rename -uid "A5F18B40-4814-2C32-9DE0-3EAACA8E514E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion71";
	rename -uid "EA4A2973-479C-E9DA-63BD-3492939DE4CF";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns284";
	rename -uid "F44DB47A-4084-0F55-1C6D-D5ABDF3841FF";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns284Set";
	rename -uid "F650C3B4-475D-09A4-7663-56A3F6399AD1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns284GroupId";
	rename -uid "348CD579-4D4C-9406-79A4-F1B110E27C8B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns284GroupParts";
	rename -uid "B6956FC1-4800-61CB-85F9-16A4BD9D2094";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak432";
	rename -uid "4EE46EC6-4D52-4109-7F48-6E87C370CE9B";
createNode objectSet -n "tweakSet432";
	rename -uid "9F5BE0EE-4E5E-FDA2-6CBE-B7BEEEE8697D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8433";
	rename -uid "0BB1FF7C-472F-1701-852B-3CB32CB1EE52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts864";
	rename -uid "D2C204E5-4482-A7A5-590B-EE88F5BA60FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile1";
	rename -uid "CB3E6437-4C0A-C7F0-9824-AEAE173CCBF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile1";
	rename -uid "61FFAE5F-4296-8B08-7E41-FF9A7369B43E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion75";
	rename -uid "858030C1-4B0D-8013-E28F-86A03F348880";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns296";
	rename -uid "56FDF96D-4A8C-08D4-117F-8394BFDB1D9D";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns296Set";
	rename -uid "0D52F6FD-49CD-1E5E-FDBE-1CA8BF986A43";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns296GroupId";
	rename -uid "0E1B5D60-42CA-6F6B-758B-A28D50C01697";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns296GroupParts";
	rename -uid "815A37D3-451A-C666-11FA-F5A86F5C4327";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak444";
	rename -uid "7BA44183-4DCB-314B-32D6-A399952F6C41";
createNode objectSet -n "tweakSet444";
	rename -uid "C7744E8D-4527-E578-AC3D-B6912C9AD6E8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8457";
	rename -uid "3C3E6E06-4EF0-7FE0-FFFD-5FAFE92BEE6B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts888";
	rename -uid "0A0F6F15-461E-C896-F033-37B3125E1003";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion76";
	rename -uid "1759D8AF-4616-CA10-475D-9BA34B82CD64";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns297";
	rename -uid "85A5642A-4CA4-CA08-C9F1-ECA3F38370F2";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns297Set";
	rename -uid "BEC38BBE-41D5-BC5C-3915-36924872103D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns297GroupId";
	rename -uid "23102A53-48B3-042D-0545-F6A7DD45E565";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns297GroupParts";
	rename -uid "9461C9D3-4326-C0EC-68FB-5B898B5388FB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak445";
	rename -uid "96339D58-48DC-40FE-2159-FBBDDC5FDD13";
createNode objectSet -n "tweakSet445";
	rename -uid "5B5D1589-44E6-CEF5-D086-D8B3524F69C9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8459";
	rename -uid "B706B2B3-4271-BCD4-A500-B683D64B4F6F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts890";
	rename -uid "AF862635-4188-B429-7AB1-EAAE390F49C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion77";
	rename -uid "3C72C20F-4A5B-C632-1210-10B5815B3323";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns298";
	rename -uid "2B3669FD-4325-2DEB-FDB0-119046752089";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns298Set";
	rename -uid "2CD8DD0F-428E-3AB0-64A8-8F8085A12F55";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns298GroupId";
	rename -uid "94DF3BD7-48B0-129C-1B3A-A7A79E7F26D1";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns298GroupParts";
	rename -uid "4D4B4BFB-4AAA-C6ED-F20D-EAAD863BC4BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak446";
	rename -uid "009D29F6-44C6-F301-62D5-5FA1703810B2";
createNode objectSet -n "tweakSet446";
	rename -uid "00338C17-4C80-7724-8788-8A97F2FB3673";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8461";
	rename -uid "5B621706-4954-6C54-796E-F38203AC44A0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts892";
	rename -uid "CCDAFA91-451A-0E6D-D76D-4A8A147F4510";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion74";
	rename -uid "B54A59D6-4C7A-927E-F569-4FAC88AC49F7";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns295";
	rename -uid "8EB7ECA8-4128-014A-B680-D8B95CDD8E3B";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns295Set";
	rename -uid "F771DB3C-4AC4-05CC-02AF-A1928D3B6CF7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns295GroupId";
	rename -uid "0AB2EBA1-413C-4A93-05D6-828317B05326";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns295GroupParts";
	rename -uid "0442C89E-4686-C070-4418-669604C2B7D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak443";
	rename -uid "AA762365-4CC4-E4AE-556D-D08FEC5E1367";
createNode objectSet -n "tweakSet443";
	rename -uid "61AE4BEC-4D42-73D9-AB46-6D896DB4215D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8455";
	rename -uid "2958C733-4F61-CD3B-9482-9097C539E7D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts886";
	rename -uid "450F4560-4F68-84F1-0267-69A3F9EBC1D9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion78";
	rename -uid "2269C2DF-4B4C-6EAF-7CA3-E28648E46B89";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns299";
	rename -uid "2280E400-4F1C-6302-1BB9-339B8C0E7AFE";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns299Set";
	rename -uid "440483F5-417D-9991-D21A-2D8B6271ED1D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns299GroupId";
	rename -uid "89320A15-4BF3-2E7F-64A9-A68696A416E8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns299GroupParts";
	rename -uid "547C138F-4EB1-44F6-88AC-27A412B3AD54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak447";
	rename -uid "0ED67BA9-48F0-2A88-A756-04899452FA60";
createNode objectSet -n "tweakSet447";
	rename -uid "DBC42A06-4825-4307-3442-96AADDEF049A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8463";
	rename -uid "EF04E83C-4CFE-30DA-689B-6B8CEB3CFACD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts894";
	rename -uid "A3B0A726-45C0-8769-29E5-21B4064AC854";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion79";
	rename -uid "821E908D-4F97-0BE1-F973-F19D9342AAC2";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns300";
	rename -uid "D8FF0B40-4359-5D99-C1ED-DEB24301C1AA";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns300Set";
	rename -uid "A46A6D32-4224-6FE8-8E17-769A40F4FCDF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns300GroupId";
	rename -uid "035AD96E-4B6A-CE92-BB70-80814D2E344D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns300GroupParts";
	rename -uid "7F87F7D0-4347-AE84-54B7-E1AF5AED410A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak448";
	rename -uid "8595933C-4015-18EF-50DE-76AFCE254F91";
createNode objectSet -n "tweakSet448";
	rename -uid "2D92AC7E-40E5-DBC1-BBE1-248046A85E7F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8465";
	rename -uid "F588F916-4D12-F85E-9078-6BA4CB9EB25F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts896";
	rename -uid "09E46018-4EA8-FCDC-BF00-239DD6DD4D29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns294";
	rename -uid "E220BAD3-4FAF-35B1-AC96-FB9CEEF6B94A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns294Set";
	rename -uid "F54BE65C-4ADE-3776-CB50-38A055A569CF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns294GroupId";
	rename -uid "FB729FAF-473A-1C5D-1E48-EB9ADEA008CB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns294GroupParts";
	rename -uid "EFB74B95-4A2B-4252-E3F0-A3A11A7CD6FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak442";
	rename -uid "E3A77981-479F-B55C-4DB1-DAAA52332A4B";
createNode objectSet -n "tweakSet442";
	rename -uid "4EEC5BA0-434E-6135-D5CC-2AA422345EAA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8453";
	rename -uid "DC69FE74-4621-46DF-6B01-528046DF14AD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts884";
	rename -uid "00E653A4-4BC7-1737-6A2A-BAB83A37E3F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion73";
	rename -uid "476014D4-4507-16BD-CDF4-D5833310CAA6";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns293";
	rename -uid "BC4CFF1B-4B3A-28AB-3FC1-BDAA77491975";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns293Set";
	rename -uid "95E2B679-4D56-44F0-2B5B-C49CD2549FE0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns293GroupId";
	rename -uid "3A65EC89-4332-3041-CDCA-D4A619145ACF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns293GroupParts";
	rename -uid "72E3540C-4B84-D5F0-2966-A4A3D9FB820C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak441";
	rename -uid "92216288-4178-365F-6FA8-03A54AB21399";
createNode objectSet -n "tweakSet441";
	rename -uid "051649F3-4CA4-560E-95D7-23AD25B19882";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8451";
	rename -uid "0F0EA8B6-4FCD-0E17-2980-FBB99EF97911";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts882";
	rename -uid "81D9C1CC-4B30-BD4B-0CF7-5791610E45A3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion63";
	rename -uid "98BF4CF8-4DF0-F55F-31C2-6C9660930755";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns275";
	rename -uid "15ABBE92-4444-979B-03BC-B4939EE590DD";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns275Set";
	rename -uid "56A240A2-42F5-0FAF-E882-55AA4ED6544F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns275GroupId";
	rename -uid "95A6B650-411F-B3CB-81B5-11B64FFF070D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns275GroupParts";
	rename -uid "7BF06A5A-4B66-FD67-9AE2-348A6C1AAEE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak423";
	rename -uid "6749F7AE-4F63-FBD3-FE99-6AAB76057437";
createNode objectSet -n "tweakSet423";
	rename -uid "8C2F99CC-4E6B-E796-E64F-45B7BF3C1D8B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8415";
	rename -uid "7109F125-4016-095E-D1C2-9CA192F5B8AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts846";
	rename -uid "AD24481A-4D29-4DD8-D404-878030DFE8D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile1";
	rename -uid "766F97EA-4764-1B0D-C306-7FAB4DC8D6A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile1";
	rename -uid "FBB2876D-4FF1-F95A-19D7-36A893BC6E19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns302";
	rename -uid "A4693301-4938-CB5A-B1D6-86A78B94A4D7";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns302Set";
	rename -uid "8D594FC0-4BB0-5677-9DC4-648789E3120F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns302GroupId";
	rename -uid "BB22CC66-49A7-34DF-0920-B0AC322C8899";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns302GroupParts";
	rename -uid "7C10049B-492E-5F81-E36C-EBB26105588F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak450";
	rename -uid "4B62E7F9-44A0-21DC-69AF-CE922C8F1ABF";
createNode objectSet -n "tweakSet450";
	rename -uid "D026310C-43C8-EC47-B94B-CBBA431A11A9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8469";
	rename -uid "B0CB8D09-472A-A5F6-4B1F-399E7B26B0CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts900";
	rename -uid "E9D01742-418E-B115-2BFD-9CB357873D4E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns303";
	rename -uid "8C9C8A6C-4C69-A3DA-C1D6-ED9E292ABF8F";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns303Set";
	rename -uid "DFD3988F-4397-6100-5899-B09BED83777F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns303GroupId";
	rename -uid "EAEF01C6-4852-910B-16C1-BA94E57C9337";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns303GroupParts";
	rename -uid "0DD7E541-47AA-BF3C-300C-2DB8B838151B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak451";
	rename -uid "6A78ABED-40B4-418F-B33E-91A37D0D8AAB";
createNode objectSet -n "tweakSet451";
	rename -uid "3E8520FA-4704-D53B-67F0-8B8D94BAA14B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8471";
	rename -uid "CDEB98B5-4DE5-F7B2-CCBE-D5B6E2AD86DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts902";
	rename -uid "78D28E41-4256-A4A5-BC66-5486A6481E67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns301";
	rename -uid "22368A42-48E4-7BC3-43A4-928EB8FC6F98";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns301Set";
	rename -uid "4C68D8C9-4D61-44C5-78A2-A5BCD722DA75";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns301GroupId";
	rename -uid "BF991AD7-451B-4DB7-7FCA-DAA2E76071D3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns301GroupParts";
	rename -uid "523B2811-43D2-798E-33BF-80901B03BB34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak449";
	rename -uid "7FA89245-4D24-4690-6C27-349EA10B05CC";
createNode objectSet -n "tweakSet449";
	rename -uid "1E6364F0-4833-59A2-5569-E0B48F8DD093";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8467";
	rename -uid "BCB717F2-485C-45D2-0BC4-DCA93E15B748";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts898";
	rename -uid "C5B33562-4B76-E0A7-075E-2D9B5D07F2F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile";
	rename -uid "83919E71-403D-162B-D30B-17969CBD2E7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile";
	rename -uid "87B1477E-49AB-92F3-A74A-FBA3E451C098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns305";
	rename -uid "8A7CB7F5-475D-0D23-8B3F-988AB0380C48";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns305Set";
	rename -uid "6858B6CE-450D-F255-3422-FDBCD36C0056";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns305GroupId";
	rename -uid "F61C3EFD-4028-E75C-5DE3-B9B1A82FC33D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns305GroupParts";
	rename -uid "38ED400F-4165-1C72-740D-EF870A98EDF8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak453";
	rename -uid "515E773E-4907-3A70-1180-C48D7490105E";
createNode objectSet -n "tweakSet453";
	rename -uid "3014F060-42D7-A2D2-B893-1F8CDA5C067B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8475";
	rename -uid "F9235ADB-437A-CA20-C1AF-139F61E570AB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts906";
	rename -uid "012EA831-4392-833F-09E0-1EADC279C468";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns306";
	rename -uid "6F64222E-41BC-DABD-8611-65A6D1AFA3BE";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns306Set";
	rename -uid "D1507214-414E-9155-C86E-65BF0255EBD7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns306GroupId";
	rename -uid "610C33BC-4279-1FF5-F5B8-5BB1AD5A7315";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns306GroupParts";
	rename -uid "438AF378-49AE-6633-4E3C-8E984C4C878B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak454";
	rename -uid "CFB8FBC0-48E9-F013-417D-5F9F088B5844";
createNode objectSet -n "tweakSet454";
	rename -uid "1F6A47BB-41D2-36A6-A304-EE9D4E02284F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8477";
	rename -uid "CB81B389-4A0D-63A2-5987-33AA92BA9098";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts908";
	rename -uid "77BF99C0-49B8-E092-E531-09B43846C555";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns304";
	rename -uid "DB1A129B-4A84-7401-92DE-7C9579FEDE24";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns304Set";
	rename -uid "E1058B31-4A4D-4E89-E3E5-6F81122CA07F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns304GroupId";
	rename -uid "D1885B6B-49EF-7E5C-109F-BEBD020DB151";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns304GroupParts";
	rename -uid "6538FFA5-4965-FEBE-83F3-83ACEE65486C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak452";
	rename -uid "AA035308-445D-EB7F-35BE-8E82F42FFD36";
createNode objectSet -n "tweakSet452";
	rename -uid "75691093-42E7-2BCB-AAAB-0F8ACCC40BC4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8473";
	rename -uid "6D1C2FA9-4642-95B4-94B5-EC8206272172";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts904";
	rename -uid "87D7FE0D-456F-46B2-5DDC-77A00332637D";
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
connectAttr "spine_C0_root_st_profile1.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile1.o" "spine_C0_root.sq_profile";
connectAttr "arm_L0_root_st_profile1.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile1.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint5.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint5.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint5.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint5.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint5.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint5.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint5.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint5.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint5.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint5.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint5.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint5.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint5.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint5.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint5.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint5.w0" "finger_L3_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint5.wum";
connectAttr "unitConversion66.o" "finger_L3_blade_aimConstraint5.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint5.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint5.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint5.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint5.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint5.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint5.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint5.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint5.w0" "finger_L3_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns279.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak427.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns279GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns279Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8423.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet427.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint5.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint5.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint5.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint5.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint5.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint5.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint5.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint5.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint5.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint5.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint5.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint5.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint5.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint5.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint5.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint5.w0" "finger_L2_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint5.wum";
connectAttr "unitConversion67.o" "finger_L2_blade_aimConstraint5.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint5.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint5.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint5.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint5.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint5.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint5.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint5.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint5.w0" "finger_L2_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns280.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak428.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns280GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns280Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8425.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet428.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint5.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint5.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint5.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint5.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint5.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint5.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint5.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint5.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint5.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint5.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint5.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint5.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint5.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint5.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint5.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint5.w0" "finger_L1_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint5.wum";
connectAttr "unitConversion68.o" "finger_L1_blade_aimConstraint5.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint5.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint5.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint5.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint5.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint5.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint5.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint5.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint5.w0" "finger_L1_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns281.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak429.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns281GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns281Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8427.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet429.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint5.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint5.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint5.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint5.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint5.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint5.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint5.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint5.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint5.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint5.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint5.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint5.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint5.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint5.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint5.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint5.w0" "meta_L0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint5.wum";
connectAttr "unitConversion65.o" "meta_L0_blade_aimConstraint5.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint5.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint5.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint5.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint5.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint5.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint5.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint5.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint5.w0" "meta_L0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns278.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak426.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns278GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns278Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8421.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet426.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint5.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint5.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint5.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint5.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint5.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint5.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint5.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint5.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint5.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint5.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint5.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint5.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint5.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint5.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint5.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint5.w0" "finger_L0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint5.wum";
connectAttr "unitConversion69.o" "finger_L0_blade_aimConstraint5.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint5.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint5.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint5.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint5.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint5.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint5.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint5.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint5.w0" "finger_L0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns282.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak430.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns282GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns282Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8429.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet430.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint5.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint5.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint5.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint5.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint5.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint5.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint5.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint5.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint5.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint5.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint5.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint5.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint5.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint5.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint5.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint5.w0" "thumb_L0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint5.wum";
connectAttr "unitConversion70.o" "thumb_L0_blade_aimConstraint5.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint5.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint5.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint5.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint5.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint5.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint5.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint5.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint5.w0" "thumb_L0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns283.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak431.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns283GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns283Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8431.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet431.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns277.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak425.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns277GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns277Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8419.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet425.mwc" "arm_L0_crvShape.iog.og[1].gco";
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
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint5.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint5.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint5.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint5.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint5.w0" "shoulder_L0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint5.wum";
connectAttr "unitConversion64.o" "shoulder_L0_blade_aimConstraint5.ox";
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
connectAttr "mgear_curveCns276.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak424.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns276GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns276Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8417.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet424.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile1.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile1.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns287.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak435.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns287GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns287Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8439.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet435.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns288.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak436.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns288GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns288Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8441.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet436.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint5.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint5.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint5.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint5.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint5.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint5.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint5.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint5.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint5.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint5.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint5.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint5.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint5.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint5.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint5.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint5.w0" "tongue_C0_blade_aimConstraint5.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint5.wum";
connectAttr "unitConversion72.o" "tongue_C0_blade_aimConstraint5.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint5.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint5.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint5.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint5.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint5.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint5.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint5.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint5.w0" "tongue_C0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns290.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak438.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns290GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns290Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8445.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet438.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns286.og[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak434.pl[0].cp[0]" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns286GroupId.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns286Set.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8437.id" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet434.mwc" "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns289.og[0]" "mouth_C0_crv5Shape.cr";
connectAttr "tweak437.pl[0].cp[0]" "mouth_C0_crv5Shape.twl";
connectAttr "mgear_curveCns289GroupId.id" "mouth_C0_crv5Shape.iog.og[0].gid";
connectAttr "mgear_curveCns289Set.mwc" "mouth_C0_crv5Shape.iog.og[0].gco";
connectAttr "groupId8443.id" "mouth_C0_crv5Shape.iog.og[1].gid";
connectAttr "tweakSet437.mwc" "mouth_C0_crv5Shape.iog.og[1].gco";
connectAttr "mgear_curveCns291.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak439.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns291GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns291Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8447.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet439.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns292.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak440.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns292GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns292Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8449.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet440.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns285.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak433.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns285GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns285Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8435.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet433.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion71.o" "neck_C0_blade_aimConstraint5.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint5.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint5.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint5.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint5.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint5.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint5.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint5.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint5.w0" "neck_C0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns284.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak432.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns284GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns284Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8433.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet432.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion75.o" "finger_R3_blade_aimConstraint2.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint2.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint2.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint2.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint2.w0" "finger_R3_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns296.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak444.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns296GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns296Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8457.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet444.mwc" "finger_R3_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion76.o" "finger_R2_blade_aimConstraint2.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint2.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint2.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint2.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint2.w0" "finger_R2_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns297.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak445.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns297GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns297Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8459.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet445.mwc" "finger_R2_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion77.o" "finger_R1_blade_aimConstraint2.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint2.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint2.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint2.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint2.w0" "finger_R1_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns298.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak446.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns298GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns298Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8461.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet446.mwc" "finger_R1_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion74.o" "meta_R0_blade_aimConstraint2.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint2.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint2.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint2.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint2.w0" "meta_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns295.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak443.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns295GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns295Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8455.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet443.mwc" "meta_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion78.o" "finger_R0_blade_aimConstraint2.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint2.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint2.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint2.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint2.w0" "finger_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns299.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak447.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns299GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns299Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8463.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet447.mwc" "finger_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion79.o" "thumb_R0_blade_aimConstraint2.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint2.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint2.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint2.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint2.w0" "thumb_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns300.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak448.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns300GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns300Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8465.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet448.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns294.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak442.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns294GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns294Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8453.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet442.mwc" "arm_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion73.o" "shoulder_R0_blade_aimConstraint2.ox";
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
connectAttr "mgear_curveCns293.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak441.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns293GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns293Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8451.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet441.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion63.o" "spine_C0_blade_aimConstraint5.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint5.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint5.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint5.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint5.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint5.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint5.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint5.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint5.w0" "spine_C0_blade_pointConstraint5.tg[0].tw"
		;
connectAttr "mgear_curveCns275.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak423.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns275GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns275Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8415.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet423.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile1.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile1.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns302.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak450.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns302GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns302Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8469.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet450.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns303.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak451.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns303GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns303Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8471.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet451.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns301.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak449.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns301GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns301Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8467.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet449.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns305.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak453.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns305GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns305Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8475.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet453.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns306.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak454.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns306GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns306Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8477.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet454.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns304.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak452.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns304GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns304Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8473.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet452.mwc" "leg_R0_crvShape.iog.og[1].gco";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion66.i";
connectAttr "mgear_curveCns279GroupParts.og" "mgear_curveCns279.ip[0].ig";
connectAttr "mgear_curveCns279GroupId.id" "mgear_curveCns279.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns279.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns279.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns279.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns279.inputs[3]";
connectAttr "mgear_curveCns279GroupId.msg" "mgear_curveCns279Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns279Set.dsm" -na;
connectAttr "mgear_curveCns279.msg" "mgear_curveCns279Set.ub[0]";
connectAttr "tweak427.og[0]" "mgear_curveCns279GroupParts.ig";
connectAttr "mgear_curveCns279GroupId.id" "mgear_curveCns279GroupParts.gi";
connectAttr "groupParts854.og" "tweak427.ip[0].ig";
connectAttr "groupId8423.id" "tweak427.ip[0].gi";
connectAttr "groupId8423.msg" "tweakSet427.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet427.dsm" -na;
connectAttr "tweak427.msg" "tweakSet427.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts854.ig";
connectAttr "groupId8423.id" "groupParts854.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion67.i";
connectAttr "mgear_curveCns280GroupParts.og" "mgear_curveCns280.ip[0].ig";
connectAttr "mgear_curveCns280GroupId.id" "mgear_curveCns280.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns280.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns280.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns280.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns280.inputs[3]";
connectAttr "mgear_curveCns280GroupId.msg" "mgear_curveCns280Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns280Set.dsm" -na;
connectAttr "mgear_curveCns280.msg" "mgear_curveCns280Set.ub[0]";
connectAttr "tweak428.og[0]" "mgear_curveCns280GroupParts.ig";
connectAttr "mgear_curveCns280GroupId.id" "mgear_curveCns280GroupParts.gi";
connectAttr "groupParts856.og" "tweak428.ip[0].ig";
connectAttr "groupId8425.id" "tweak428.ip[0].gi";
connectAttr "groupId8425.msg" "tweakSet428.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet428.dsm" -na;
connectAttr "tweak428.msg" "tweakSet428.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts856.ig";
connectAttr "groupId8425.id" "groupParts856.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion68.i";
connectAttr "mgear_curveCns281GroupParts.og" "mgear_curveCns281.ip[0].ig";
connectAttr "mgear_curveCns281GroupId.id" "mgear_curveCns281.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns281.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns281.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns281.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns281.inputs[3]";
connectAttr "mgear_curveCns281GroupId.msg" "mgear_curveCns281Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns281Set.dsm" -na;
connectAttr "mgear_curveCns281.msg" "mgear_curveCns281Set.ub[0]";
connectAttr "tweak429.og[0]" "mgear_curveCns281GroupParts.ig";
connectAttr "mgear_curveCns281GroupId.id" "mgear_curveCns281GroupParts.gi";
connectAttr "groupParts858.og" "tweak429.ip[0].ig";
connectAttr "groupId8427.id" "tweak429.ip[0].gi";
connectAttr "groupId8427.msg" "tweakSet429.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet429.dsm" -na;
connectAttr "tweak429.msg" "tweakSet429.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts858.ig";
connectAttr "groupId8427.id" "groupParts858.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion65.i";
connectAttr "mgear_curveCns278GroupParts.og" "mgear_curveCns278.ip[0].ig";
connectAttr "mgear_curveCns278GroupId.id" "mgear_curveCns278.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns278.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns278.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns278.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns278.inputs[3]";
connectAttr "mgear_curveCns278GroupId.msg" "mgear_curveCns278Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns278Set.dsm" -na;
connectAttr "mgear_curveCns278.msg" "mgear_curveCns278Set.ub[0]";
connectAttr "tweak426.og[0]" "mgear_curveCns278GroupParts.ig";
connectAttr "mgear_curveCns278GroupId.id" "mgear_curveCns278GroupParts.gi";
connectAttr "groupParts852.og" "tweak426.ip[0].ig";
connectAttr "groupId8421.id" "tweak426.ip[0].gi";
connectAttr "groupId8421.msg" "tweakSet426.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet426.dsm" -na;
connectAttr "tweak426.msg" "tweakSet426.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts852.ig";
connectAttr "groupId8421.id" "groupParts852.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion69.i";
connectAttr "mgear_curveCns282GroupParts.og" "mgear_curveCns282.ip[0].ig";
connectAttr "mgear_curveCns282GroupId.id" "mgear_curveCns282.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns282.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns282.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns282.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns282.inputs[3]";
connectAttr "mgear_curveCns282GroupId.msg" "mgear_curveCns282Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns282Set.dsm" -na;
connectAttr "mgear_curveCns282.msg" "mgear_curveCns282Set.ub[0]";
connectAttr "tweak430.og[0]" "mgear_curveCns282GroupParts.ig";
connectAttr "mgear_curveCns282GroupId.id" "mgear_curveCns282GroupParts.gi";
connectAttr "groupParts860.og" "tweak430.ip[0].ig";
connectAttr "groupId8429.id" "tweak430.ip[0].gi";
connectAttr "groupId8429.msg" "tweakSet430.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet430.dsm" -na;
connectAttr "tweak430.msg" "tweakSet430.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts860.ig";
connectAttr "groupId8429.id" "groupParts860.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion70.i";
connectAttr "mgear_curveCns283GroupParts.og" "mgear_curveCns283.ip[0].ig";
connectAttr "mgear_curveCns283GroupId.id" "mgear_curveCns283.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns283.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns283.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns283.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns283.inputs[3]";
connectAttr "mgear_curveCns283GroupId.msg" "mgear_curveCns283Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns283Set.dsm" -na;
connectAttr "mgear_curveCns283.msg" "mgear_curveCns283Set.ub[0]";
connectAttr "tweak431.og[0]" "mgear_curveCns283GroupParts.ig";
connectAttr "mgear_curveCns283GroupId.id" "mgear_curveCns283GroupParts.gi";
connectAttr "groupParts862.og" "tweak431.ip[0].ig";
connectAttr "groupId8431.id" "tweak431.ip[0].gi";
connectAttr "groupId8431.msg" "tweakSet431.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet431.dsm" -na;
connectAttr "tweak431.msg" "tweakSet431.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts862.ig";
connectAttr "groupId8431.id" "groupParts862.gi";
connectAttr "mgear_curveCns277GroupParts.og" "mgear_curveCns277.ip[0].ig";
connectAttr "mgear_curveCns277GroupId.id" "mgear_curveCns277.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns277.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns277.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns277.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns277.inputs[3]";
connectAttr "mgear_curveCns277GroupId.msg" "mgear_curveCns277Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns277Set.dsm" -na;
connectAttr "mgear_curveCns277.msg" "mgear_curveCns277Set.ub[0]";
connectAttr "tweak425.og[0]" "mgear_curveCns277GroupParts.ig";
connectAttr "mgear_curveCns277GroupId.id" "mgear_curveCns277GroupParts.gi";
connectAttr "groupParts850.og" "tweak425.ip[0].ig";
connectAttr "groupId8419.id" "tweak425.ip[0].gi";
connectAttr "groupId8419.msg" "tweakSet425.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet425.dsm" -na;
connectAttr "tweak425.msg" "tweakSet425.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts850.ig";
connectAttr "groupId8419.id" "groupParts850.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion64.i";
connectAttr "mgear_curveCns276GroupParts.og" "mgear_curveCns276.ip[0].ig";
connectAttr "mgear_curveCns276GroupId.id" "mgear_curveCns276.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns276.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns276.inputs[1]";
connectAttr "mgear_curveCns276GroupId.msg" "mgear_curveCns276Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns276Set.dsm" -na;
connectAttr "mgear_curveCns276.msg" "mgear_curveCns276Set.ub[0]";
connectAttr "tweak424.og[0]" "mgear_curveCns276GroupParts.ig";
connectAttr "mgear_curveCns276GroupId.id" "mgear_curveCns276GroupParts.gi";
connectAttr "groupParts848.og" "tweak424.ip[0].ig";
connectAttr "groupId8417.id" "tweak424.ip[0].gi";
connectAttr "groupId8417.msg" "tweakSet424.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet424.dsm" -na;
connectAttr "tweak424.msg" "tweakSet424.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts848.ig";
connectAttr "groupId8417.id" "groupParts848.gi";
connectAttr "mgear_curveCns287GroupParts.og" "mgear_curveCns287.ip[0].ig";
connectAttr "mgear_curveCns287GroupId.id" "mgear_curveCns287.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns287.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns287.inputs[1]";
connectAttr "mgear_curveCns287GroupId.msg" "mgear_curveCns287Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns287Set.dsm"
		 -na;
connectAttr "mgear_curveCns287.msg" "mgear_curveCns287Set.ub[0]";
connectAttr "tweak435.og[0]" "mgear_curveCns287GroupParts.ig";
connectAttr "mgear_curveCns287GroupId.id" "mgear_curveCns287GroupParts.gi";
connectAttr "groupParts870.og" "tweak435.ip[0].ig";
connectAttr "groupId8439.id" "tweak435.ip[0].gi";
connectAttr "groupId8439.msg" "tweakSet435.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet435.dsm"
		 -na;
connectAttr "tweak435.msg" "tweakSet435.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts870.ig"
		;
connectAttr "groupId8439.id" "groupParts870.gi";
connectAttr "mgear_curveCns288GroupParts.og" "mgear_curveCns288.ip[0].ig";
connectAttr "mgear_curveCns288GroupId.id" "mgear_curveCns288.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns288.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns288.inputs[1]";
connectAttr "mgear_curveCns288GroupId.msg" "mgear_curveCns288Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns288Set.dsm"
		 -na;
connectAttr "mgear_curveCns288.msg" "mgear_curveCns288Set.ub[0]";
connectAttr "tweak436.og[0]" "mgear_curveCns288GroupParts.ig";
connectAttr "mgear_curveCns288GroupId.id" "mgear_curveCns288GroupParts.gi";
connectAttr "groupParts872.og" "tweak436.ip[0].ig";
connectAttr "groupId8441.id" "tweak436.ip[0].gi";
connectAttr "groupId8441.msg" "tweakSet436.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet436.dsm"
		 -na;
connectAttr "tweak436.msg" "tweakSet436.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts872.ig"
		;
connectAttr "groupId8441.id" "groupParts872.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion72.i";
connectAttr "mgear_curveCns290GroupParts.og" "mgear_curveCns290.ip[0].ig";
connectAttr "mgear_curveCns290GroupId.id" "mgear_curveCns290.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns290.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns290.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns290.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns290.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns290.inputs[4]";
connectAttr "mgear_curveCns290GroupId.msg" "mgear_curveCns290Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns290Set.dsm" -na;
connectAttr "mgear_curveCns290.msg" "mgear_curveCns290Set.ub[0]";
connectAttr "tweak438.og[0]" "mgear_curveCns290GroupParts.ig";
connectAttr "mgear_curveCns290GroupId.id" "mgear_curveCns290GroupParts.gi";
connectAttr "groupParts876.og" "tweak438.ip[0].ig";
connectAttr "groupId8445.id" "tweak438.ip[0].gi";
connectAttr "groupId8445.msg" "tweakSet438.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet438.dsm" -na;
connectAttr "tweak438.msg" "tweakSet438.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts876.ig";
connectAttr "groupId8445.id" "groupParts876.gi";
connectAttr "mgear_curveCns286GroupParts.og" "mgear_curveCns286.ip[0].ig";
connectAttr "mgear_curveCns286GroupId.id" "mgear_curveCns286.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns286.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns286.inputs[1]";
connectAttr "mgear_curveCns286GroupId.msg" "mgear_curveCns286Set.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns286Set.dsm"
		 -na;
connectAttr "mgear_curveCns286.msg" "mgear_curveCns286Set.ub[0]";
connectAttr "tweak434.og[0]" "mgear_curveCns286GroupParts.ig";
connectAttr "mgear_curveCns286GroupId.id" "mgear_curveCns286GroupParts.gi";
connectAttr "groupParts868.og" "tweak434.ip[0].ig";
connectAttr "groupId8437.id" "tweak434.ip[0].gi";
connectAttr "groupId8437.msg" "tweakSet434.gn" -na;
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet434.dsm"
		 -na;
connectAttr "tweak434.msg" "tweakSet434.ub[0]";
connectAttr "|guide|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts868.ig"
		;
connectAttr "groupId8437.id" "groupParts868.gi";
connectAttr "mgear_curveCns289GroupParts.og" "mgear_curveCns289.ip[0].ig";
connectAttr "mgear_curveCns289GroupId.id" "mgear_curveCns289.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns289.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns289.inputs[1]";
connectAttr "mgear_curveCns289GroupId.msg" "mgear_curveCns289Set.gn" -na;
connectAttr "mouth_C0_crv5Shape.iog.og[0]" "mgear_curveCns289Set.dsm" -na;
connectAttr "mgear_curveCns289.msg" "mgear_curveCns289Set.ub[0]";
connectAttr "tweak437.og[0]" "mgear_curveCns289GroupParts.ig";
connectAttr "mgear_curveCns289GroupId.id" "mgear_curveCns289GroupParts.gi";
connectAttr "groupParts874.og" "tweak437.ip[0].ig";
connectAttr "groupId8443.id" "tweak437.ip[0].gi";
connectAttr "groupId8443.msg" "tweakSet437.gn" -na;
connectAttr "mouth_C0_crv5Shape.iog.og[1]" "tweakSet437.dsm" -na;
connectAttr "tweak437.msg" "tweakSet437.ub[0]";
connectAttr "mouth_C0_crv5ShapeOrig.ws" "groupParts874.ig";
connectAttr "groupId8443.id" "groupParts874.gi";
connectAttr "mgear_curveCns291GroupParts.og" "mgear_curveCns291.ip[0].ig";
connectAttr "mgear_curveCns291GroupId.id" "mgear_curveCns291.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns291.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns291.inputs[1]";
connectAttr "mgear_curveCns291GroupId.msg" "mgear_curveCns291Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns291Set.dsm" -na;
connectAttr "mgear_curveCns291.msg" "mgear_curveCns291Set.ub[0]";
connectAttr "tweak439.og[0]" "mgear_curveCns291GroupParts.ig";
connectAttr "mgear_curveCns291GroupId.id" "mgear_curveCns291GroupParts.gi";
connectAttr "groupParts878.og" "tweak439.ip[0].ig";
connectAttr "groupId8447.id" "tweak439.ip[0].gi";
connectAttr "groupId8447.msg" "tweakSet439.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet439.dsm" -na;
connectAttr "tweak439.msg" "tweakSet439.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts878.ig";
connectAttr "groupId8447.id" "groupParts878.gi";
connectAttr "mgear_curveCns292GroupParts.og" "mgear_curveCns292.ip[0].ig";
connectAttr "mgear_curveCns292GroupId.id" "mgear_curveCns292.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns292.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns292.inputs[1]";
connectAttr "mgear_curveCns292GroupId.msg" "mgear_curveCns292Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns292Set.dsm" -na;
connectAttr "mgear_curveCns292.msg" "mgear_curveCns292Set.ub[0]";
connectAttr "tweak440.og[0]" "mgear_curveCns292GroupParts.ig";
connectAttr "mgear_curveCns292GroupId.id" "mgear_curveCns292GroupParts.gi";
connectAttr "groupParts880.og" "tweak440.ip[0].ig";
connectAttr "groupId8449.id" "tweak440.ip[0].gi";
connectAttr "groupId8449.msg" "tweakSet440.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet440.dsm" -na;
connectAttr "tweak440.msg" "tweakSet440.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts880.ig";
connectAttr "groupId8449.id" "groupParts880.gi";
connectAttr "mgear_curveCns285GroupParts.og" "mgear_curveCns285.ip[0].ig";
connectAttr "mgear_curveCns285GroupId.id" "mgear_curveCns285.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns285.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns285.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns285.inputs[2]";
connectAttr "mgear_curveCns285GroupId.msg" "mgear_curveCns285Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns285Set.dsm" -na;
connectAttr "mgear_curveCns285.msg" "mgear_curveCns285Set.ub[0]";
connectAttr "tweak433.og[0]" "mgear_curveCns285GroupParts.ig";
connectAttr "mgear_curveCns285GroupId.id" "mgear_curveCns285GroupParts.gi";
connectAttr "groupParts866.og" "tweak433.ip[0].ig";
connectAttr "groupId8435.id" "tweak433.ip[0].gi";
connectAttr "groupId8435.msg" "tweakSet433.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet433.dsm" -na;
connectAttr "tweak433.msg" "tweakSet433.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts866.ig";
connectAttr "groupId8435.id" "groupParts866.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion71.i";
connectAttr "mgear_curveCns284GroupParts.og" "mgear_curveCns284.ip[0].ig";
connectAttr "mgear_curveCns284GroupId.id" "mgear_curveCns284.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns284.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns284.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns284.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns284.inputs[3]";
connectAttr "mgear_curveCns284GroupId.msg" "mgear_curveCns284Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns284Set.dsm" -na;
connectAttr "mgear_curveCns284.msg" "mgear_curveCns284Set.ub[0]";
connectAttr "tweak432.og[0]" "mgear_curveCns284GroupParts.ig";
connectAttr "mgear_curveCns284GroupId.id" "mgear_curveCns284GroupParts.gi";
connectAttr "groupParts864.og" "tweak432.ip[0].ig";
connectAttr "groupId8433.id" "tweak432.ip[0].gi";
connectAttr "groupId8433.msg" "tweakSet432.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet432.dsm" -na;
connectAttr "tweak432.msg" "tweakSet432.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts864.ig";
connectAttr "groupId8433.id" "groupParts864.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion75.i";
connectAttr "mgear_curveCns296GroupParts.og" "mgear_curveCns296.ip[0].ig";
connectAttr "mgear_curveCns296GroupId.id" "mgear_curveCns296.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns296.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns296.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns296.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns296.inputs[3]";
connectAttr "mgear_curveCns296GroupId.msg" "mgear_curveCns296Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns296Set.dsm" -na;
connectAttr "mgear_curveCns296.msg" "mgear_curveCns296Set.ub[0]";
connectAttr "tweak444.og[0]" "mgear_curveCns296GroupParts.ig";
connectAttr "mgear_curveCns296GroupId.id" "mgear_curveCns296GroupParts.gi";
connectAttr "groupParts888.og" "tweak444.ip[0].ig";
connectAttr "groupId8457.id" "tweak444.ip[0].gi";
connectAttr "groupId8457.msg" "tweakSet444.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet444.dsm" -na;
connectAttr "tweak444.msg" "tweakSet444.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts888.ig";
connectAttr "groupId8457.id" "groupParts888.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion76.i";
connectAttr "mgear_curveCns297GroupParts.og" "mgear_curveCns297.ip[0].ig";
connectAttr "mgear_curveCns297GroupId.id" "mgear_curveCns297.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns297.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns297.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns297.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns297.inputs[3]";
connectAttr "mgear_curveCns297GroupId.msg" "mgear_curveCns297Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns297Set.dsm" -na;
connectAttr "mgear_curveCns297.msg" "mgear_curveCns297Set.ub[0]";
connectAttr "tweak445.og[0]" "mgear_curveCns297GroupParts.ig";
connectAttr "mgear_curveCns297GroupId.id" "mgear_curveCns297GroupParts.gi";
connectAttr "groupParts890.og" "tweak445.ip[0].ig";
connectAttr "groupId8459.id" "tweak445.ip[0].gi";
connectAttr "groupId8459.msg" "tweakSet445.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet445.dsm" -na;
connectAttr "tweak445.msg" "tweakSet445.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts890.ig";
connectAttr "groupId8459.id" "groupParts890.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion77.i";
connectAttr "mgear_curveCns298GroupParts.og" "mgear_curveCns298.ip[0].ig";
connectAttr "mgear_curveCns298GroupId.id" "mgear_curveCns298.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns298.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns298.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns298.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns298.inputs[3]";
connectAttr "mgear_curveCns298GroupId.msg" "mgear_curveCns298Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns298Set.dsm" -na;
connectAttr "mgear_curveCns298.msg" "mgear_curveCns298Set.ub[0]";
connectAttr "tweak446.og[0]" "mgear_curveCns298GroupParts.ig";
connectAttr "mgear_curveCns298GroupId.id" "mgear_curveCns298GroupParts.gi";
connectAttr "groupParts892.og" "tweak446.ip[0].ig";
connectAttr "groupId8461.id" "tweak446.ip[0].gi";
connectAttr "groupId8461.msg" "tweakSet446.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet446.dsm" -na;
connectAttr "tweak446.msg" "tweakSet446.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts892.ig";
connectAttr "groupId8461.id" "groupParts892.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion74.i";
connectAttr "mgear_curveCns295GroupParts.og" "mgear_curveCns295.ip[0].ig";
connectAttr "mgear_curveCns295GroupId.id" "mgear_curveCns295.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns295.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns295.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns295.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns295.inputs[3]";
connectAttr "mgear_curveCns295GroupId.msg" "mgear_curveCns295Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns295Set.dsm" -na;
connectAttr "mgear_curveCns295.msg" "mgear_curveCns295Set.ub[0]";
connectAttr "tweak443.og[0]" "mgear_curveCns295GroupParts.ig";
connectAttr "mgear_curveCns295GroupId.id" "mgear_curveCns295GroupParts.gi";
connectAttr "groupParts886.og" "tweak443.ip[0].ig";
connectAttr "groupId8455.id" "tweak443.ip[0].gi";
connectAttr "groupId8455.msg" "tweakSet443.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet443.dsm" -na;
connectAttr "tweak443.msg" "tweakSet443.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts886.ig";
connectAttr "groupId8455.id" "groupParts886.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion78.i";
connectAttr "mgear_curveCns299GroupParts.og" "mgear_curveCns299.ip[0].ig";
connectAttr "mgear_curveCns299GroupId.id" "mgear_curveCns299.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns299.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns299.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns299.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns299.inputs[3]";
connectAttr "mgear_curveCns299GroupId.msg" "mgear_curveCns299Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns299Set.dsm" -na;
connectAttr "mgear_curveCns299.msg" "mgear_curveCns299Set.ub[0]";
connectAttr "tweak447.og[0]" "mgear_curveCns299GroupParts.ig";
connectAttr "mgear_curveCns299GroupId.id" "mgear_curveCns299GroupParts.gi";
connectAttr "groupParts894.og" "tweak447.ip[0].ig";
connectAttr "groupId8463.id" "tweak447.ip[0].gi";
connectAttr "groupId8463.msg" "tweakSet447.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet447.dsm" -na;
connectAttr "tweak447.msg" "tweakSet447.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts894.ig";
connectAttr "groupId8463.id" "groupParts894.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion79.i";
connectAttr "mgear_curveCns300GroupParts.og" "mgear_curveCns300.ip[0].ig";
connectAttr "mgear_curveCns300GroupId.id" "mgear_curveCns300.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns300.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns300.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns300.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns300.inputs[3]";
connectAttr "mgear_curveCns300GroupId.msg" "mgear_curveCns300Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns300Set.dsm" -na;
connectAttr "mgear_curveCns300.msg" "mgear_curveCns300Set.ub[0]";
connectAttr "tweak448.og[0]" "mgear_curveCns300GroupParts.ig";
connectAttr "mgear_curveCns300GroupId.id" "mgear_curveCns300GroupParts.gi";
connectAttr "groupParts896.og" "tweak448.ip[0].ig";
connectAttr "groupId8465.id" "tweak448.ip[0].gi";
connectAttr "groupId8465.msg" "tweakSet448.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet448.dsm" -na;
connectAttr "tweak448.msg" "tweakSet448.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts896.ig";
connectAttr "groupId8465.id" "groupParts896.gi";
connectAttr "mgear_curveCns294GroupParts.og" "mgear_curveCns294.ip[0].ig";
connectAttr "mgear_curveCns294GroupId.id" "mgear_curveCns294.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns294.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns294.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns294.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns294.inputs[3]";
connectAttr "mgear_curveCns294GroupId.msg" "mgear_curveCns294Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns294Set.dsm" -na;
connectAttr "mgear_curveCns294.msg" "mgear_curveCns294Set.ub[0]";
connectAttr "tweak442.og[0]" "mgear_curveCns294GroupParts.ig";
connectAttr "mgear_curveCns294GroupId.id" "mgear_curveCns294GroupParts.gi";
connectAttr "groupParts884.og" "tweak442.ip[0].ig";
connectAttr "groupId8453.id" "tweak442.ip[0].gi";
connectAttr "groupId8453.msg" "tweakSet442.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet442.dsm" -na;
connectAttr "tweak442.msg" "tweakSet442.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts884.ig";
connectAttr "groupId8453.id" "groupParts884.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion73.i";
connectAttr "mgear_curveCns293GroupParts.og" "mgear_curveCns293.ip[0].ig";
connectAttr "mgear_curveCns293GroupId.id" "mgear_curveCns293.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns293.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns293.inputs[1]";
connectAttr "mgear_curveCns293GroupId.msg" "mgear_curveCns293Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns293Set.dsm" -na;
connectAttr "mgear_curveCns293.msg" "mgear_curveCns293Set.ub[0]";
connectAttr "tweak441.og[0]" "mgear_curveCns293GroupParts.ig";
connectAttr "mgear_curveCns293GroupId.id" "mgear_curveCns293GroupParts.gi";
connectAttr "groupParts882.og" "tweak441.ip[0].ig";
connectAttr "groupId8451.id" "tweak441.ip[0].gi";
connectAttr "groupId8451.msg" "tweakSet441.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet441.dsm" -na;
connectAttr "tweak441.msg" "tweakSet441.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts882.ig";
connectAttr "groupId8451.id" "groupParts882.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion63.i";
connectAttr "mgear_curveCns275GroupParts.og" "mgear_curveCns275.ip[0].ig";
connectAttr "mgear_curveCns275GroupId.id" "mgear_curveCns275.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns275.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns275.inputs[1]";
connectAttr "mgear_curveCns275GroupId.msg" "mgear_curveCns275Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns275Set.dsm" -na;
connectAttr "mgear_curveCns275.msg" "mgear_curveCns275Set.ub[0]";
connectAttr "tweak423.og[0]" "mgear_curveCns275GroupParts.ig";
connectAttr "mgear_curveCns275GroupId.id" "mgear_curveCns275GroupParts.gi";
connectAttr "groupParts846.og" "tweak423.ip[0].ig";
connectAttr "groupId8415.id" "tweak423.ip[0].gi";
connectAttr "groupId8415.msg" "tweakSet423.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet423.dsm" -na;
connectAttr "tweak423.msg" "tweakSet423.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts846.ig";
connectAttr "groupId8415.id" "groupParts846.gi";
connectAttr "mgear_curveCns302GroupParts.og" "mgear_curveCns302.ip[0].ig";
connectAttr "mgear_curveCns302GroupId.id" "mgear_curveCns302.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns302.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns302.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns302.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns302.inputs[3]";
connectAttr "mgear_curveCns302GroupId.msg" "mgear_curveCns302Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns302Set.dsm" -na;
connectAttr "mgear_curveCns302.msg" "mgear_curveCns302Set.ub[0]";
connectAttr "tweak450.og[0]" "mgear_curveCns302GroupParts.ig";
connectAttr "mgear_curveCns302GroupId.id" "mgear_curveCns302GroupParts.gi";
connectAttr "groupParts900.og" "tweak450.ip[0].ig";
connectAttr "groupId8469.id" "tweak450.ip[0].gi";
connectAttr "groupId8469.msg" "tweakSet450.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet450.dsm" -na;
connectAttr "tweak450.msg" "tweakSet450.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts900.ig";
connectAttr "groupId8469.id" "groupParts900.gi";
connectAttr "mgear_curveCns303GroupParts.og" "mgear_curveCns303.ip[0].ig";
connectAttr "mgear_curveCns303GroupId.id" "mgear_curveCns303.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns303.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns303.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns303.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns303.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns303.inputs[4]";
connectAttr "mgear_curveCns303GroupId.msg" "mgear_curveCns303Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns303Set.dsm" -na;
connectAttr "mgear_curveCns303.msg" "mgear_curveCns303Set.ub[0]";
connectAttr "tweak451.og[0]" "mgear_curveCns303GroupParts.ig";
connectAttr "mgear_curveCns303GroupId.id" "mgear_curveCns303GroupParts.gi";
connectAttr "groupParts902.og" "tweak451.ip[0].ig";
connectAttr "groupId8471.id" "tweak451.ip[0].gi";
connectAttr "groupId8471.msg" "tweakSet451.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet451.dsm" -na;
connectAttr "tweak451.msg" "tweakSet451.ub[0]";
connectAttr "foot_L0_Shape1Orig.ws" "groupParts902.ig";
connectAttr "groupId8471.id" "groupParts902.gi";
connectAttr "mgear_curveCns301GroupParts.og" "mgear_curveCns301.ip[0].ig";
connectAttr "mgear_curveCns301GroupId.id" "mgear_curveCns301.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns301.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns301.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns301.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns301.inputs[3]";
connectAttr "mgear_curveCns301GroupId.msg" "mgear_curveCns301Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns301Set.dsm" -na;
connectAttr "mgear_curveCns301.msg" "mgear_curveCns301Set.ub[0]";
connectAttr "tweak449.og[0]" "mgear_curveCns301GroupParts.ig";
connectAttr "mgear_curveCns301GroupId.id" "mgear_curveCns301GroupParts.gi";
connectAttr "groupParts898.og" "tweak449.ip[0].ig";
connectAttr "groupId8467.id" "tweak449.ip[0].gi";
connectAttr "groupId8467.msg" "tweakSet449.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet449.dsm" -na;
connectAttr "tweak449.msg" "tweakSet449.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts898.ig";
connectAttr "groupId8467.id" "groupParts898.gi";
connectAttr "mgear_curveCns305GroupParts.og" "mgear_curveCns305.ip[0].ig";
connectAttr "mgear_curveCns305GroupId.id" "mgear_curveCns305.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns305.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns305.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns305.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns305.inputs[3]";
connectAttr "mgear_curveCns305GroupId.msg" "mgear_curveCns305Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns305Set.dsm" -na;
connectAttr "mgear_curveCns305.msg" "mgear_curveCns305Set.ub[0]";
connectAttr "tweak453.og[0]" "mgear_curveCns305GroupParts.ig";
connectAttr "mgear_curveCns305GroupId.id" "mgear_curveCns305GroupParts.gi";
connectAttr "groupParts906.og" "tweak453.ip[0].ig";
connectAttr "groupId8475.id" "tweak453.ip[0].gi";
connectAttr "groupId8475.msg" "tweakSet453.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet453.dsm" -na;
connectAttr "tweak453.msg" "tweakSet453.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts906.ig";
connectAttr "groupId8475.id" "groupParts906.gi";
connectAttr "mgear_curveCns306GroupParts.og" "mgear_curveCns306.ip[0].ig";
connectAttr "mgear_curveCns306GroupId.id" "mgear_curveCns306.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns306.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns306.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns306.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns306.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns306.inputs[4]";
connectAttr "mgear_curveCns306GroupId.msg" "mgear_curveCns306Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns306Set.dsm" -na;
connectAttr "mgear_curveCns306.msg" "mgear_curveCns306Set.ub[0]";
connectAttr "tweak454.og[0]" "mgear_curveCns306GroupParts.ig";
connectAttr "mgear_curveCns306GroupId.id" "mgear_curveCns306GroupParts.gi";
connectAttr "groupParts908.og" "tweak454.ip[0].ig";
connectAttr "groupId8477.id" "tweak454.ip[0].gi";
connectAttr "groupId8477.msg" "tweakSet454.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet454.dsm" -na;
connectAttr "tweak454.msg" "tweakSet454.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts908.ig";
connectAttr "groupId8477.id" "groupParts908.gi";
connectAttr "mgear_curveCns304GroupParts.og" "mgear_curveCns304.ip[0].ig";
connectAttr "mgear_curveCns304GroupId.id" "mgear_curveCns304.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns304.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns304.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns304.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns304.inputs[3]";
connectAttr "mgear_curveCns304GroupId.msg" "mgear_curveCns304Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns304Set.dsm" -na;
connectAttr "mgear_curveCns304.msg" "mgear_curveCns304Set.ub[0]";
connectAttr "tweak452.og[0]" "mgear_curveCns304GroupParts.ig";
connectAttr "mgear_curveCns304GroupId.id" "mgear_curveCns304GroupParts.gi";
connectAttr "groupParts904.og" "tweak452.ip[0].ig";
connectAttr "groupId8473.id" "tweak452.ip[0].gi";
connectAttr "groupId8473.msg" "tweakSet452.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet452.dsm" -na;
connectAttr "tweak452.msg" "tweakSet452.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts904.ig";
connectAttr "groupId8473.id" "groupParts904.gi";
// End of biped_guide.ma
