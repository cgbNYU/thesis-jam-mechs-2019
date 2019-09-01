//Maya ASCII 2014 scene
//Name: marine_render2.ma
//Last modified: Sat, Jun 03, 2017 01:48:01 PM
//Codeset: 1258
file -rdi 1 -ns "marine_rig2" -rfn "marine_rig2RN" "G:/EVERYDAY/marine/marine//marine_rig.ma";
file -rdi 1 -ns "gun1" -rfn "gun1:gunRN" "G:/EVERYDAY/marine/marine//gun.ma";
file -r -ns "marine_rig2" -dr 1 -rfn "marine_rig2RN" "G:/EVERYDAY/marine/marine//marine_rig.ma";
file -r -ns "gun1" -dr 1 -rfn "gun1:gunRN" "G:/EVERYDAY/marine/marine//gun.ma";
requires maya "2014";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftProxyMesh" -nodeType "RedshiftVisibility"
		 -nodeType "RedshiftMeshParameters" -nodeType "RedshiftMatteParameters" -nodeType "RedshiftObjectId"
		 -nodeType "RedshiftBakeSet" -nodeType "RedshiftAOV" -nodeType "RedshiftAmbientOcclusion"
		 -nodeType "RedshiftArchitectural" -nodeType "RedshiftCarPaint" -nodeType "RedshiftIncandescent"
		 -nodeType "RedshiftSubSurfaceScatter" -nodeType "RedshiftMaterialBlender" -nodeType "RedshiftPhotographicExposure"
		 -nodeType "RedshiftBokeh" -nodeType "RedshiftLensDistortion" -nodeType "RedshiftPhysicalSky"
		 -nodeType "RedshiftPhysicalSun" -nodeType "RedshiftPhysicalLight" -nodeType "RedshiftIESLight"
		 -nodeType "RedshiftPortalLight" -nodeType "RedshiftDomeLight" -nodeType "RedshiftEnvironment"
		 -nodeType "RedshiftBumpMap" -nodeType "RedshiftNormalMap" -nodeType "RedshiftBumpBlender"
		 -nodeType "RedshiftRaySwitch" -nodeType "RedshiftCameraMap" -nodeType "RedshiftMatteShadowCatcher"
		 -nodeType "RedshiftSprite" -nodeType "RedshiftDisplacement" -nodeType "RedshiftDisplacementBlender"
		 -nodeType "RedshiftLightGobo" -nodeType "RedshiftHair" -nodeType "RedshiftHairRandomColor"
		 -nodeType "RedshiftHairPosition" -nodeType "RedshiftVolumeScattering" -nodeType "RedshiftVertexColor"
		 -nodeType "RedshiftShave" -nodeType "RedshiftSkin" -nodeType "RedshiftFresnel" -nodeType "RedshiftRoundCorners"
		 -nodeType "RedshiftAttributeLookup" -nodeType "RedshiftUserDataColor" -nodeType "RedshiftUserDataVector"
		 -nodeType "RedshiftUserDataScalar" -nodeType "RedshiftUserDataInteger" -nodeType "RedshiftShaderSwitch"
		 -nodeType "RedshiftWireFrame" -nodeType "RedshiftCurvature" -nodeType "RedshiftVolume"
		 -nodeType "RedshiftVolumeShape" -nodeType "RedshiftState" -nodeType "RedshiftMaterial"
		 "redshift4maya" "2.0.79";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.5608169051245042 5.0378782231240598 9.734654576969346 ;
	setAttr ".r" -type "double3" -12.338352729603248 11.800000000000557 2.0307619793416815e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 9.9748306910846889;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.7595629692077643e-005 4.8594260215759277 0.3279489129781723 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	setAttr ".s" -type "double3" 363.8584426875903 363.8584426875903 363.8584426875903 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.80000001 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.80000001 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001 0.30000001 0.40000001 0.40000001
		 0.40000001 0.5 0.40000001 0.60000002 0.40000001 0.69999999 0.40000001 0.80000001
		 0.40000001 0.90000004 0.40000001 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000001
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.80000001
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.69999999 0.2 0.69999999
		 0.30000001 0.69999999 0.40000001 0.69999999 0.5 0.69999999 0.60000002 0.69999999
		 0.69999999 0.69999999 0.80000001 0.69999999 0.90000004 0.69999999 1 0.69999999 0
		 0.80000001 0.1 0.80000001 0.2 0.80000001 0.30000001 0.80000001 0.40000001 0.80000001
		 0.5 0.80000001 0.60000002 0.80000001 0.69999999 0.80000001 0.80000001 0.80000001
		 0.90000004 0.80000001 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000001 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.80000001 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".vt[0:120]"  -0.5 -1.110223e-016 0.5 -0.40000001 -1.110223e-016 0.5
		 -0.30000001 -1.110223e-016 0.5 -0.19999999 -1.110223e-016 0.5 -0.099999994 -1.110223e-016 0.5
		 0 -1.110223e-016 0.5 0.10000002 -1.110223e-016 0.5 0.19999999 -1.110223e-016 0.5
		 0.30000001 -1.110223e-016 0.5 0.40000004 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 -8.8817843e-017 0.40000001 -0.40000001 -8.8817843e-017 0.40000001 -0.30000001 -8.8817843e-017 0.40000001
		 -0.19999999 -8.8817843e-017 0.40000001 -0.099999994 -8.8817843e-017 0.40000001 0 -8.8817843e-017 0.40000001
		 0.10000002 -8.8817843e-017 0.40000001 0.19999999 -8.8817843e-017 0.40000001 0.30000001 -8.8817843e-017 0.40000001
		 0.40000004 -8.8817843e-017 0.40000001 0.5 -8.8817843e-017 0.40000001 -0.5 -6.6613384e-017 0.30000001
		 -0.40000001 -6.6613384e-017 0.30000001 -0.30000001 -6.6613384e-017 0.30000001 -0.19999999 -6.6613384e-017 0.30000001
		 -0.099999994 -6.6613384e-017 0.30000001 0 -6.6613384e-017 0.30000001 0.10000002 -6.6613384e-017 0.30000001
		 0.19999999 -6.6613384e-017 0.30000001 0.30000001 -6.6613384e-017 0.30000001 0.40000004 -6.6613384e-017 0.30000001
		 0.5 -6.6613384e-017 0.30000001 -0.5 -4.4408918e-017 0.19999999 -0.40000001 -4.4408918e-017 0.19999999
		 -0.30000001 -4.4408918e-017 0.19999999 -0.19999999 -4.4408918e-017 0.19999999 -0.099999994 -4.4408918e-017 0.19999999
		 0 -4.4408918e-017 0.19999999 0.10000002 -4.4408918e-017 0.19999999 0.19999999 -4.4408918e-017 0.19999999
		 0.30000001 -4.4408918e-017 0.19999999 0.40000004 -4.4408918e-017 0.19999999 0.5 -4.4408918e-017 0.19999999
		 -0.5 -2.2204459e-017 0.099999994 -0.40000001 -2.2204459e-017 0.099999994 -0.30000001 -2.2204459e-017 0.099999994
		 -0.19999999 -2.2204459e-017 0.099999994 -0.099999994 -2.2204459e-017 0.099999994
		 0 -2.2204459e-017 0.099999994 0.10000002 -2.2204459e-017 0.099999994 0.19999999 -2.2204459e-017 0.099999994
		 0.30000001 -2.2204459e-017 0.099999994 0.40000004 -2.2204459e-017 0.099999994 0.5 -2.2204459e-017 0.099999994
		 -0.5 0 0 -0.40000001 0 0 -0.30000001 0 0 -0.19999999 0 0 -0.099999994 0 0 0 0 0 0.10000002 0 0
		 0.19999999 0 0 0.30000001 0 0 0.40000004 0 0 0.5 0 0 -0.5 2.2204466e-017 -0.10000002
		 -0.40000001 2.2204466e-017 -0.10000002 -0.30000001 2.2204466e-017 -0.10000002 -0.19999999 2.2204466e-017 -0.10000002
		 -0.099999994 2.2204466e-017 -0.10000002 0 2.2204466e-017 -0.10000002 0.10000002 2.2204466e-017 -0.10000002
		 0.19999999 2.2204466e-017 -0.10000002 0.30000001 2.2204466e-017 -0.10000002 0.40000004 2.2204466e-017 -0.10000002
		 0.5 2.2204466e-017 -0.10000002 -0.5 4.4408918e-017 -0.19999999 -0.40000001 4.4408918e-017 -0.19999999
		 -0.30000001 4.4408918e-017 -0.19999999 -0.19999999 4.4408918e-017 -0.19999999 -0.099999994 4.4408918e-017 -0.19999999
		 0 4.4408918e-017 -0.19999999 0.10000002 4.4408918e-017 -0.19999999 0.19999999 4.4408918e-017 -0.19999999
		 0.30000001 4.4408918e-017 -0.19999999 0.40000004 4.4408918e-017 -0.19999999 0.5 4.4408918e-017 -0.19999999
		 -0.5 6.6613384e-017 -0.30000001 -0.40000001 6.6613384e-017 -0.30000001 -0.30000001 6.6613384e-017 -0.30000001
		 -0.19999999 6.6613384e-017 -0.30000001 -0.099999994 6.6613384e-017 -0.30000001 0 6.6613384e-017 -0.30000001
		 0.10000002 6.6613384e-017 -0.30000001 0.19999999 6.6613384e-017 -0.30000001 0.30000001 6.6613384e-017 -0.30000001
		 0.40000004 6.6613384e-017 -0.30000001 0.5 6.6613384e-017 -0.30000001 -0.5 8.881785e-017 -0.40000004
		 -0.40000001 8.881785e-017 -0.40000004 -0.30000001 8.881785e-017 -0.40000004 -0.19999999 8.881785e-017 -0.40000004
		 -0.099999994 8.881785e-017 -0.40000004 0 8.881785e-017 -0.40000004 0.10000002 8.881785e-017 -0.40000004
		 0.19999999 8.881785e-017 -0.40000004 0.30000001 8.881785e-017 -0.40000004 0.40000004 8.881785e-017 -0.40000004
		 0.5 8.881785e-017 -0.40000004 -0.5 1.110223e-016 -0.5 -0.40000001 1.110223e-016 -0.5
		 -0.30000001 1.110223e-016 -0.5 -0.19999999 1.110223e-016 -0.5 -0.099999994 1.110223e-016 -0.5
		 0 1.110223e-016 -0.5 0.10000002 1.110223e-016 -0.5 0.19999999 1.110223e-016 -0.5
		 0.30000001 1.110223e-016 -0.5 0.40000004 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 55 66 0 56 57 1 56 67 1
		 57 58 1 57 68 1 58 59 1 58 69 1 59 60 1 59 70 1 60 61 1 60 71 1 61 62 1 61 72 1 62 63 1
		 62 73 1 63 64 1 63 74 1 64 65 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:219]" 86 97 1 87 98 0 88 89 1 88 99 0 89 90 1 89 100 1 90 91 1
		 90 101 1 91 92 1 91 102 1 92 93 1 92 103 1 93 94 1 93 104 1 94 95 1 94 105 1 95 96 1
		 95 106 1 96 97 1 96 107 1 97 98 1 97 108 1 98 109 0 99 100 1 99 110 0 100 101 1 100 111 1
		 101 102 1 101 112 1 102 103 1 102 113 1 103 104 1 103 114 1 104 105 1 104 115 1 105 106 1
		 105 116 1 106 107 1 106 117 1 107 108 1 107 118 1 108 109 1 108 119 1 109 120 0 110 111 0
		 111 112 0 112 113 0 113 114 0 114 115 0 115 116 0 116 117 0 117 118 0 118 119 0 119 120 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 3 -22 -2
		mu 0 4 0 1 12 11
		f 4 2 5 -24 -4
		mu 0 4 1 2 13 12
		f 4 4 7 -26 -6
		mu 0 4 2 3 14 13
		f 4 6 9 -28 -8
		mu 0 4 3 4 15 14
		f 4 8 11 -30 -10
		mu 0 4 4 5 16 15
		f 4 10 13 -32 -12
		mu 0 4 5 6 17 16
		f 4 12 15 -34 -14
		mu 0 4 6 7 18 17
		f 4 14 17 -36 -16
		mu 0 4 7 8 19 18
		f 4 16 19 -38 -18
		mu 0 4 8 9 20 19
		f 4 18 20 -40 -20
		mu 0 4 9 10 21 20
		f 4 21 24 -43 -23
		mu 0 4 11 12 23 22
		f 4 23 26 -45 -25
		mu 0 4 12 13 24 23
		f 4 25 28 -47 -27
		mu 0 4 13 14 25 24
		f 4 27 30 -49 -29
		mu 0 4 14 15 26 25
		f 4 29 32 -51 -31
		mu 0 4 15 16 27 26
		f 4 31 34 -53 -33
		mu 0 4 16 17 28 27
		f 4 33 36 -55 -35
		mu 0 4 17 18 29 28
		f 4 35 38 -57 -37
		mu 0 4 18 19 30 29
		f 4 37 40 -59 -39
		mu 0 4 19 20 31 30
		f 4 39 41 -61 -41
		mu 0 4 20 21 32 31
		f 4 42 45 -64 -44
		mu 0 4 22 23 34 33
		f 4 44 47 -66 -46
		mu 0 4 23 24 35 34
		f 4 46 49 -68 -48
		mu 0 4 24 25 36 35
		f 4 48 51 -70 -50
		mu 0 4 25 26 37 36
		f 4 50 53 -72 -52
		mu 0 4 26 27 38 37
		f 4 52 55 -74 -54
		mu 0 4 27 28 39 38
		f 4 54 57 -76 -56
		mu 0 4 28 29 40 39
		f 4 56 59 -78 -58
		mu 0 4 29 30 41 40
		f 4 58 61 -80 -60
		mu 0 4 30 31 42 41
		f 4 60 62 -82 -62
		mu 0 4 31 32 43 42
		f 4 63 66 -85 -65
		mu 0 4 33 34 45 44
		f 4 65 68 -87 -67
		mu 0 4 34 35 46 45
		f 4 67 70 -89 -69
		mu 0 4 35 36 47 46
		f 4 69 72 -91 -71
		mu 0 4 36 37 48 47
		f 4 71 74 -93 -73
		mu 0 4 37 38 49 48
		f 4 73 76 -95 -75
		mu 0 4 38 39 50 49
		f 4 75 78 -97 -77
		mu 0 4 39 40 51 50
		f 4 77 80 -99 -79
		mu 0 4 40 41 52 51
		f 4 79 82 -101 -81
		mu 0 4 41 42 53 52
		f 4 81 83 -103 -83
		mu 0 4 42 43 54 53
		f 4 84 87 -106 -86
		mu 0 4 44 45 56 55
		f 4 86 89 -108 -88
		mu 0 4 45 46 57 56
		f 4 88 91 -110 -90
		mu 0 4 46 47 58 57
		f 4 90 93 -112 -92
		mu 0 4 47 48 59 58
		f 4 92 95 -114 -94
		mu 0 4 48 49 60 59
		f 4 94 97 -116 -96
		mu 0 4 49 50 61 60
		f 4 96 99 -118 -98
		mu 0 4 50 51 62 61
		f 4 98 101 -120 -100
		mu 0 4 51 52 63 62
		f 4 100 103 -122 -102
		mu 0 4 52 53 64 63
		f 4 102 104 -124 -104
		mu 0 4 53 54 65 64
		f 4 105 108 -127 -107
		mu 0 4 55 56 67 66
		f 4 107 110 -129 -109
		mu 0 4 56 57 68 67
		f 4 109 112 -131 -111
		mu 0 4 57 58 69 68
		f 4 111 114 -133 -113
		mu 0 4 58 59 70 69
		f 4 113 116 -135 -115
		mu 0 4 59 60 71 70
		f 4 115 118 -137 -117
		mu 0 4 60 61 72 71
		f 4 117 120 -139 -119
		mu 0 4 61 62 73 72
		f 4 119 122 -141 -121
		mu 0 4 62 63 74 73
		f 4 121 124 -143 -123
		mu 0 4 63 64 75 74
		f 4 123 125 -145 -125
		mu 0 4 64 65 76 75
		f 4 126 129 -148 -128
		mu 0 4 66 67 78 77
		f 4 128 131 -150 -130
		mu 0 4 67 68 79 78
		f 4 130 133 -152 -132
		mu 0 4 68 69 80 79
		f 4 132 135 -154 -134
		mu 0 4 69 70 81 80
		f 4 134 137 -156 -136
		mu 0 4 70 71 82 81
		f 4 136 139 -158 -138
		mu 0 4 71 72 83 82
		f 4 138 141 -160 -140
		mu 0 4 72 73 84 83
		f 4 140 143 -162 -142
		mu 0 4 73 74 85 84
		f 4 142 145 -164 -144
		mu 0 4 74 75 86 85
		f 4 144 146 -166 -146
		mu 0 4 75 76 87 86
		f 4 147 150 -169 -149
		mu 0 4 77 78 89 88
		f 4 149 152 -171 -151
		mu 0 4 78 79 90 89
		f 4 151 154 -173 -153
		mu 0 4 79 80 91 90
		f 4 153 156 -175 -155
		mu 0 4 80 81 92 91
		f 4 155 158 -177 -157
		mu 0 4 81 82 93 92
		f 4 157 160 -179 -159
		mu 0 4 82 83 94 93
		f 4 159 162 -181 -161
		mu 0 4 83 84 95 94
		f 4 161 164 -183 -163
		mu 0 4 84 85 96 95
		f 4 163 166 -185 -165
		mu 0 4 85 86 97 96
		f 4 165 167 -187 -167
		mu 0 4 86 87 98 97
		f 4 168 171 -190 -170
		mu 0 4 88 89 100 99
		f 4 170 173 -192 -172
		mu 0 4 89 90 101 100
		f 4 172 175 -194 -174
		mu 0 4 90 91 102 101
		f 4 174 177 -196 -176
		mu 0 4 91 92 103 102
		f 4 176 179 -198 -178
		mu 0 4 92 93 104 103
		f 4 178 181 -200 -180
		mu 0 4 93 94 105 104
		f 4 180 183 -202 -182
		mu 0 4 94 95 106 105
		f 4 182 185 -204 -184
		mu 0 4 95 96 107 106
		f 4 184 187 -206 -186
		mu 0 4 96 97 108 107
		f 4 186 188 -208 -188
		mu 0 4 97 98 109 108
		f 4 189 192 -211 -191
		mu 0 4 99 100 111 110
		f 4 191 194 -212 -193
		mu 0 4 100 101 112 111
		f 4 193 196 -213 -195
		mu 0 4 101 102 113 112
		f 4 195 198 -214 -197
		mu 0 4 102 103 114 113
		f 4 197 200 -215 -199
		mu 0 4 103 104 115 114
		f 4 199 202 -216 -201
		mu 0 4 104 105 116 115
		f 4 201 204 -217 -203
		mu 0 4 105 106 117 116
		f 4 203 206 -218 -205
		mu 0 4 106 107 118 117
		f 4 205 208 -219 -207
		mu 0 4 107 108 119 118
		f 4 207 209 -220 -209
		mu 0 4 108 109 120 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "camera1";
	setAttr ".t" -type "double3" 11.418194289959075 2.3884871154256295 12.019956216340374 ;
	setAttr ".r" -type "double3" 0.59999999999998843 46.400000000000169 -3.6031582449551404e-017 ;
createNode camera -n "cameraShape1" -p "camera1";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 55.000000000000007;
	setAttr ".coi" 17.487365653927608;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -0.21849238319510009 0.18910527663399623 -0.83930610211505696 ;
	setAttr ".dr" yes;
	setAttr ".col" -type "float3" 0.26297578 0.40191218 0.74509805 ;
createNode transform -n "rsPhysicalLight1";
	setAttr ".t" -type "double3" -59.108736590677097 182.57424803859601 140.63459642599238 ;
	setAttr ".r" -type "double3" -50.597012713577165 -21.376080896565455 1.270400730827856 ;
	setAttr ".s" -type "double3" 40.035934571448031 40.035934571448031 40.035934571448031 ;
	setAttr ".spt" -type "double3" 5.9760389108500538e-015 2.9302552256642132e-014 5.3341630645081974e-015 ;
createNode RedshiftPhysicalLight -n "rsPhysicalLightShape1" -p "rsPhysicalLight1";
	setAttr -k off ".v";
	setAttr ".areaShape" 1;
	setAttr ".areaVisibleInRender" no;
	setAttr ".temperature" 4500;
	setAttr ".colorMode" 1;
	setAttr ".intensity" 4;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode RedshiftArchitectural -n "rsArchitectural1";
	setAttr ".diffuse" -type "float3" 0.078706034 0.078706034 0.078706034 ;
	setAttr ".refl_brdf" 0;
	setAttr ".refl_base_brdf" 0;
createNode shadingEngine -n "rsArchitectural1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode RedshiftOptions -s -n "redshiftOptions";
	addAttr -ci true -h true -sn "physicalSky" -ln "physicalSky" -at "message";
	setAttr ".imageFilePrefix" -type "string" "";
	setAttr ".unifiedMinSamples" 16;
	setAttr ".unifiedMaxSamples" 256;
	setAttr ".primaryGIEngine" 4;
createNode RedshiftMaterial -n "rs_body";
	setAttr ".v" 1;
	setAttr ".refl_samples" 256;
	setAttr ".refl_fresnel_mode" 1;
	setAttr ".refl_edge_tint" -type "float3" 0.96700001 0.69925803 0.37519601 ;
	setAttr ".refl_ior3" -type "float3" 2.9114001 2.9497001 2.5295 ;
	setAttr ".refl_k3" -type "float3" 3.0892999 2.9317999 2.737 ;
	setAttr ".refl_metalness" 1;
	setAttr ".refl_ior" 6.0824790000915527;
createNode shadingEngine -n "rsMaterial1SG";
	setAttr ".ihi" 0;
	setAttr -s 256 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/marine/marine//texture/marine_Diffuse.png";
	setAttr ".ft" 0;
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n"
		+ "            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"camera1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode file -n "file2";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/marine/marine//texture/marine_Reflection.png";
createNode place2dTexture -n "place2dTexture2";
createNode RedshiftNormalMap -n "rsNormalMap1";
	setAttr ".tex0" -type "string" "G:/EVERYDAY/marine/marine//texture/marine_Normal.png";
createNode reference -n "marine_rig2RN";
	setAttr -s 258 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"marine_rig2RN"
		"marine_rig2RN" 774
		2 "|marine_rig2:low1:Group5559|marine_rig2:low1:Group5559Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:399]\""
		2 "|marine_rig2:low1:Group5574|marine_rig2:low1:Group5574Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:447]\""
		2 "|marine_rig2:low1:Group5589|marine_rig2:low1:Group5589Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:449]\""
		2 "|marine_rig2:low1:Group25935|marine_rig2:low1:Group25935Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:237]\""
		2 "|marine_rig2:low1:Group5619|marine_rig2:low1:Group5619Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:225]\""
		2 "|marine_rig2:low1:Group5634|marine_rig2:low1:Group5634Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:313]\""
		2 "|marine_rig2:low1:Group25936|marine_rig2:low1:Group25936Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:2565]\""
		2 "|marine_rig2:low1:Group5664|marine_rig2:low1:Group5664Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:295]\""
		2 "|marine_rig2:low1:Group5679|marine_rig2:low1:Group5679Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:679]\""
		2 "|marine_rig2:low1:Group5694|marine_rig2:low1:Group5694Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:799]\""
		2 "|marine_rig2:low1:Group5709|marine_rig2:low1:Group5709Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:219]\""
		2 "|marine_rig2:low1:Group65072|marine_rig2:low1:Group65072Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:251]\""
		2 "|marine_rig2:low1:Group5739|marine_rig2:low1:Group5739Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:383]\""
		2 "|marine_rig2:low1:Group5769|marine_rig2:low1:Group5769Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:139]\""
		2 "|marine_rig2:low1:Group5784|marine_rig2:low1:Group5784Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:131]\""
		2 "|marine_rig2:low1:Group5799|marine_rig2:low1:Group5799Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:113]\""
		2 "|marine_rig2:low1:Group65073|marine_rig2:low1:Group65073Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:219]\""
		2 "|marine_rig2:low1:Group65074|marine_rig2:low1:Group65074Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:729]\""
		2 "|marine_rig2:low1:Group5874|marine_rig2:low1:Group5874Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65075|marine_rig2:low1:Group65075Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:257]\""
		2 "|marine_rig2:low1:Group65076|marine_rig2:low1:Group65076Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65077|marine_rig2:low1:Group65077Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:729]\""
		2 "|marine_rig2:low1:Group65078|marine_rig2:low1:Group65078Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65079|marine_rig2:low1:Group65079Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:257]\""
		2 "|marine_rig2:low1:Group65080|marine_rig2:low1:Group65080Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65081|marine_rig2:low1:Group65081Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:729]\""
		2 "|marine_rig2:low1:Group65082|marine_rig2:low1:Group65082Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65083|marine_rig2:low1:Group65083Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:257]\""
		2 "|marine_rig2:low1:Group65084|marine_rig2:low1:Group65084Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65085|marine_rig2:low1:Group65085Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:481]\""
		2 "|marine_rig2:low1:Group65086|marine_rig2:low1:Group65086Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65087|marine_rig2:low1:Group65087Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:505]\""
		2 "|marine_rig2:low1:Group65088|marine_rig2:low1:Group65088Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65089|marine_rig2:low1:Group65089Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:729]\""
		2 "|marine_rig2:low1:Group65090|marine_rig2:low1:Group65090Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65091|marine_rig2:low1:Group65091Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:257]\""
		2 "|marine_rig2:low1:Group65092|marine_rig2:low1:Group65092Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65093|marine_rig2:low1:Group65093Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:729]\""
		2 "|marine_rig2:low1:Group65094|marine_rig2:low1:Group65094Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65095|marine_rig2:low1:Group65095Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:257]\""
		2 "|marine_rig2:low1:Group65096|marine_rig2:low1:Group65096Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65097|marine_rig2:low1:Group65097Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:729]\""
		2 "|marine_rig2:low1:Group65098|marine_rig2:low1:Group65098Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65099|marine_rig2:low1:Group65099Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:257]\""
		2 "|marine_rig2:low1:Group65100|marine_rig2:low1:Group65100Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65101|marine_rig2:low1:Group65101Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:481]\""
		2 "|marine_rig2:low1:Group65102|marine_rig2:low1:Group65102Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65103|marine_rig2:low1:Group65103Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:505]\""
		2 "|marine_rig2:low1:Group65104|marine_rig2:low1:Group65104Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65105|marine_rig2:low1:Group65105Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:8120]\""
		2 "|marine_rig2:low1:Group6624|marine_rig2:low1:Group6624Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:365]\""
		2 "|marine_rig2:low1:Group6639|marine_rig2:low1:Group6639Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:639]\""
		2 "|marine_rig2:low1:Group6654|marine_rig2:low1:Group6654Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1023]\""
		2 "|marine_rig2:low1:Group6684|marine_rig2:low1:Group6684Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:859]\""
		2 "|marine_rig2:low1:Group65106|marine_rig2:low1:Group65106Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1023]\""
		2 "|marine_rig2:low1:Group6729|marine_rig2:low1:Group6729Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:145]\""
		2 "|marine_rig2:low1:Group6744|marine_rig2:low1:Group6744Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group6759|marine_rig2:low1:Group6759Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:359]\""
		2 "|marine_rig2:low1:Group6774|marine_rig2:low1:Group6774Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:299]\""
		2 "|marine_rig2:low1:Group6789|marine_rig2:low1:Group6789Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group6804|marine_rig2:low1:Group6804Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:459]\""
		2 "|marine_rig2:low1:Group6819|marine_rig2:low1:Group6819Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:479]\""
		2 "|marine_rig2:low1:Group6834|marine_rig2:low1:Group6834Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:439]\""
		2 "|marine_rig2:low1:Group65107|marine_rig2:low1:Group65107Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:679]\""
		2 "|marine_rig2:low1:Group65108|marine_rig2:low1:Group65108Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:199]\""
		2 "|marine_rig2:low1:Group65109|marine_rig2:low1:Group65109Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:548]\""
		2 "|marine_rig2:low1:Group65110|marine_rig2:low1:Group65110Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65111|marine_rig2:low1:Group65111Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:505]\""
		2 "|marine_rig2:low1:Group6984|marine_rig2:low1:Group6984Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:323]\""
		2 "|marine_rig2:low1:Group44256|marine_rig2:low1:Group44256Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:2783]\""
		2 "|marine_rig2:low1:Group65112|marine_rig2:low1:Group65112Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group65113|marine_rig2:low1:Group65113Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:3743]\""
		2 "|marine_rig2:low1:Group7119|marine_rig2:low1:Group7119Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:799]\""
		2 "|marine_rig2:low1:Group7134|marine_rig2:low1:Group7134Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:456]\""
		2 "|marine_rig2:low1:Group65114|marine_rig2:low1:Group65114Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:383]\""
		2 "|marine_rig2:low1:Group7179|marine_rig2:low1:Group7179Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:903]\""
		2 "|marine_rig2:low1:Group7239|marine_rig2:low1:Group7239Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:559]\""
		2 "|marine_rig2:low1:Group7254|marine_rig2:low1:Group7254Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1615]\""
		2 "|marine_rig2:low1:Group7269|marine_rig2:low1:Group7269Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1623]\""
		2 "|marine_rig2:low1:Group7284|marine_rig2:low1:Group7284Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:847]\""
		2 "|marine_rig2:low1:Group7299|marine_rig2:low1:Group7299Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:167]\""
		2 "|marine_rig2:low1:Group7314|marine_rig2:low1:Group7314Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:405]\""
		2 "|marine_rig2:low1:Group65115|marine_rig2:low1:Group65115Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:223]\""
		2 "|marine_rig2:low1:Group7344|marine_rig2:low1:Group7344Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1483]\""
		2 "|marine_rig2:low1:Group65116|marine_rig2:low1:Group65116Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:145]\""
		2 "|marine_rig2:low1:Group7374|marine_rig2:low1:Group7374Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:579]\""
		2 "|marine_rig2:low1:Group65117|marine_rig2:low1:Group65117Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:8120]\""
		2 "|marine_rig2:low1:Group65118|marine_rig2:low1:Group65118Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:365]\""
		2 "|marine_rig2:low1:Group65119|marine_rig2:low1:Group65119Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:639]\""
		2 "|marine_rig2:low1:Group65120|marine_rig2:low1:Group65120Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1023]\""
		2 "|marine_rig2:low1:Group65121|marine_rig2:low1:Group65121Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:859]\""
		2 "|marine_rig2:low1:Group65122|marine_rig2:low1:Group65122Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1023]\""
		2 "|marine_rig2:low1:Group65123|marine_rig2:low1:Group65123Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:145]\""
		2 "|marine_rig2:low1:Group65124|marine_rig2:low1:Group65124Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group65125|marine_rig2:low1:Group65125Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:359]\""
		2 "|marine_rig2:low1:Group65126|marine_rig2:low1:Group65126Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:299]\""
		2 "|marine_rig2:low1:Group65127|marine_rig2:low1:Group65127Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group65128|marine_rig2:low1:Group65128Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:459]\""
		2 "|marine_rig2:low1:Group65129|marine_rig2:low1:Group65129Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:479]\""
		2 "|marine_rig2:low1:Group65130|marine_rig2:low1:Group65130Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:439]\""
		2 "|marine_rig2:low1:Group65131|marine_rig2:low1:Group65131Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:679]\""
		2 "|marine_rig2:low1:Group65132|marine_rig2:low1:Group65132Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:199]\""
		2 "|marine_rig2:low1:Group65133|marine_rig2:low1:Group65133Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:548]\""
		2 "|marine_rig2:low1:Group65134|marine_rig2:low1:Group65134Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:335]\""
		2 "|marine_rig2:low1:Group65135|marine_rig2:low1:Group65135Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:505]\""
		2 "|marine_rig2:low1:Group65136|marine_rig2:low1:Group65136Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:323]\""
		2 "|marine_rig2:low1:Group65137|marine_rig2:low1:Group65137Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:2783]\""
		2 "|marine_rig2:low1:Group65138|marine_rig2:low1:Group65138Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group65139|marine_rig2:low1:Group65139Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:3743]\""
		2 "|marine_rig2:low1:Group65140|marine_rig2:low1:Group65140Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:799]\""
		2 "|marine_rig2:low1:Group65141|marine_rig2:low1:Group65141Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:456]\""
		2 "|marine_rig2:low1:Group65142|marine_rig2:low1:Group65142Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:383]\""
		2 "|marine_rig2:low1:Group65143|marine_rig2:low1:Group65143Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:903]\""
		2 "|marine_rig2:low1:Group65144|marine_rig2:low1:Group65144Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:559]\""
		2 "|marine_rig2:low1:Group65145|marine_rig2:low1:Group65145Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1615]\""
		2 "|marine_rig2:low1:Group65146|marine_rig2:low1:Group65146Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1623]\""
		2 "|marine_rig2:low1:Group65147|marine_rig2:low1:Group65147Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:847]\""
		2 "|marine_rig2:low1:Group65148|marine_rig2:low1:Group65148Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:167]\""
		2 "|marine_rig2:low1:Group65149|marine_rig2:low1:Group65149Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:405]\""
		2 "|marine_rig2:low1:Group65150|marine_rig2:low1:Group65150Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:223]\""
		2 "|marine_rig2:low1:Group65151|marine_rig2:low1:Group65151Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:1483]\""
		2 "|marine_rig2:low1:Group65152|marine_rig2:low1:Group65152Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:145]\""
		2 "|marine_rig2:low1:Group65153|marine_rig2:low1:Group65153Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:579]\""
		2 "|marine_rig2:low1:Group65154|marine_rig2:low1:Group65154Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:359]\""
		2 "|marine_rig2:low1:Group65155|marine_rig2:low1:Group65155Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:299]\""
		2 "|marine_rig2:low1:Group65156|marine_rig2:low1:Group65156Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		2 "|marine_rig2:low1:Group65157|marine_rig2:low1:Group65157Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:359]\""
		2 "|marine_rig2:low1:Group65158|marine_rig2:low1:Group65158Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:299]\""
		2 "|marine_rig2:low1:Group65159|marine_rig2:low1:Group65159Shape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:339]\""
		3 "marine_rig2:groupId3.groupId" "|marine_rig2:low1:Group5574|marine_rig2:low1:Group5574Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5574|marine_rig2:low1:Group5574Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId93.groupId" "|marine_rig2:low1:Group65122|marine_rig2:low1:Group65122Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65122|marine_rig2:low1:Group65122Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId40.groupId" "|marine_rig2:low1:Group65094|marine_rig2:low1:Group65094Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65094|marine_rig2:low1:Group65094Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId122.groupId" "|marine_rig2:low1:Group65151|marine_rig2:low1:Group65151Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65151|marine_rig2:low1:Group65151Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId33.groupId" "|marine_rig2:low1:Group65087|marine_rig2:low1:Group65087Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65087|marine_rig2:low1:Group65087Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId123.groupId" "|marine_rig2:low1:Group65152|marine_rig2:low1:Group65152Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65152|marine_rig2:low1:Group65152Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId50.groupId" "|marine_rig2:low1:Group65104|marine_rig2:low1:Group65104Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65104|marine_rig2:low1:Group65104Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId119.groupId" "|marine_rig2:low1:Group65148|marine_rig2:low1:Group65148Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65148|marine_rig2:low1:Group65148Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId130.groupId" "|marine_rig2:low1:Group65159|marine_rig2:low1:Group65159Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65159|marine_rig2:low1:Group65159Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId85.groupId" "|marine_rig2:low1:Group7344|marine_rig2:low1:Group7344Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7344|marine_rig2:low1:Group7344Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId89.groupId" "|marine_rig2:low1:Group65118|marine_rig2:low1:Group65118Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65118|marine_rig2:low1:Group65118Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId103.groupId" "|marine_rig2:low1:Group65132|marine_rig2:low1:Group65132Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65132|marine_rig2:low1:Group65132Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId52.groupId" "|marine_rig2:low1:Group6624|marine_rig2:low1:Group6624Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6624|marine_rig2:low1:Group6624Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId118.groupId" "|marine_rig2:low1:Group65147|marine_rig2:low1:Group65147Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65147|marine_rig2:low1:Group65147Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId105.groupId" "|marine_rig2:low1:Group65134|marine_rig2:low1:Group65134Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65134|marine_rig2:low1:Group65134Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId66.groupId" "|marine_rig2:low1:Group65108|marine_rig2:low1:Group65108Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65108|marine_rig2:low1:Group65108Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId57.groupId" "|marine_rig2:low1:Group6729|marine_rig2:low1:Group6729Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6729|marine_rig2:low1:Group6729Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId99.groupId" "|marine_rig2:low1:Group65128|marine_rig2:low1:Group65128Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65128|marine_rig2:low1:Group65128Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId46.groupId" "|marine_rig2:low1:Group65100|marine_rig2:low1:Group65100Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65100|marine_rig2:low1:Group65100Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId68.groupId" "|marine_rig2:low1:Group65110|marine_rig2:low1:Group65110Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65110|marine_rig2:low1:Group65110Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId55.groupId" "|marine_rig2:low1:Group6684|marine_rig2:low1:Group6684Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6684|marine_rig2:low1:Group6684Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId53.groupId" "|marine_rig2:low1:Group6639|marine_rig2:low1:Group6639Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6639|marine_rig2:low1:Group6639Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId42.groupId" "|marine_rig2:low1:Group65096|marine_rig2:low1:Group65096Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65096|marine_rig2:low1:Group65096Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId44.groupId" "|marine_rig2:low1:Group65098|marine_rig2:low1:Group65098Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65098|marine_rig2:low1:Group65098Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId18.groupId" "|marine_rig2:low1:Group65073|marine_rig2:low1:Group65073Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65073|marine_rig2:low1:Group65073Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId29.groupId" "|marine_rig2:low1:Group65083|marine_rig2:low1:Group65083Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65083|marine_rig2:low1:Group65083Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId36.groupId" "|marine_rig2:low1:Group65090|marine_rig2:low1:Group65090Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65090|marine_rig2:low1:Group65090Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId64.groupId" "|marine_rig2:low1:Group6834|marine_rig2:low1:Group6834Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6834|marine_rig2:low1:Group6834Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId62.groupId" "|marine_rig2:low1:Group6804|marine_rig2:low1:Group6804Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6804|marine_rig2:low1:Group6804Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId75.groupId" "|marine_rig2:low1:Group7134|marine_rig2:low1:Group7134Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7134|marine_rig2:low1:Group7134Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId70.groupId" "|marine_rig2:low1:Group6984|marine_rig2:low1:Group6984Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6984|marine_rig2:low1:Group6984Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId60.groupId" "|marine_rig2:low1:Group6774|marine_rig2:low1:Group6774Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6774|marine_rig2:low1:Group6774Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId58.groupId" "|marine_rig2:low1:Group6744|marine_rig2:low1:Group6744Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6744|marine_rig2:low1:Group6744Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId126.groupId" "|marine_rig2:low1:Group65155|marine_rig2:low1:Group65155Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65155|marine_rig2:low1:Group65155Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId27.groupId" "|marine_rig2:low1:Group65081|marine_rig2:low1:Group65081Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65081|marine_rig2:low1:Group65081Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId101.groupId" "|marine_rig2:low1:Group65130|marine_rig2:low1:Group65130Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65130|marine_rig2:low1:Group65130Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|marine_rig2:low1:Group65159|marine_rig2:low1:Group65159Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId130.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65158|marine_rig2:low1:Group65158Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId129.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65157|marine_rig2:low1:Group65157Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId128.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65156|marine_rig2:low1:Group65156Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId127.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65155|marine_rig2:low1:Group65155Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId126.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65154|marine_rig2:low1:Group65154Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId125.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65153|marine_rig2:low1:Group65153Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId124.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65152|marine_rig2:low1:Group65152Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId123.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65151|marine_rig2:low1:Group65151Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId122.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65150|marine_rig2:low1:Group65150Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId121.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65149|marine_rig2:low1:Group65149Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId120.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65148|marine_rig2:low1:Group65148Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId119.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65147|marine_rig2:low1:Group65147Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId118.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65146|marine_rig2:low1:Group65146Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId117.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65145|marine_rig2:low1:Group65145Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId116.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65144|marine_rig2:low1:Group65144Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId115.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65143|marine_rig2:low1:Group65143Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId114.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65142|marine_rig2:low1:Group65142Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId113.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65141|marine_rig2:low1:Group65141Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId112.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65140|marine_rig2:low1:Group65140Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId111.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65139|marine_rig2:low1:Group65139Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId110.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65138|marine_rig2:low1:Group65138Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId109.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65137|marine_rig2:low1:Group65137Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId108.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65136|marine_rig2:low1:Group65136Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId107.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65135|marine_rig2:low1:Group65135Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId106.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65134|marine_rig2:low1:Group65134Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId105.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65133|marine_rig2:low1:Group65133Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId104.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65132|marine_rig2:low1:Group65132Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId103.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65131|marine_rig2:low1:Group65131Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId102.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65130|marine_rig2:low1:Group65130Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId101.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65129|marine_rig2:low1:Group65129Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId100.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65128|marine_rig2:low1:Group65128Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId99.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65127|marine_rig2:low1:Group65127Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId98.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65126|marine_rig2:low1:Group65126Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId97.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65125|marine_rig2:low1:Group65125Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId96.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65124|marine_rig2:low1:Group65124Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId95.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65123|marine_rig2:low1:Group65123Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId94.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65122|marine_rig2:low1:Group65122Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId93.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65121|marine_rig2:low1:Group65121Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId92.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65120|marine_rig2:low1:Group65120Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId91.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65119|marine_rig2:low1:Group65119Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId90.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65118|marine_rig2:low1:Group65118Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId89.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65117|marine_rig2:low1:Group65117Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId88.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7374|marine_rig2:low1:Group7374Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId87.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65116|marine_rig2:low1:Group65116Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId86.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7344|marine_rig2:low1:Group7344Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId85.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65115|marine_rig2:low1:Group65115Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId84.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7314|marine_rig2:low1:Group7314Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId83.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7299|marine_rig2:low1:Group7299Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId82.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7284|marine_rig2:low1:Group7284Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId81.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7269|marine_rig2:low1:Group7269Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId80.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7254|marine_rig2:low1:Group7254Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId79.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7239|marine_rig2:low1:Group7239Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId78.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7179|marine_rig2:low1:Group7179Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId77.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65114|marine_rig2:low1:Group65114Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId76.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7134|marine_rig2:low1:Group7134Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId75.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group7119|marine_rig2:low1:Group7119Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId74.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65113|marine_rig2:low1:Group65113Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId73.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65112|marine_rig2:low1:Group65112Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId72.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group44256|marine_rig2:low1:Group44256Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId71.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6984|marine_rig2:low1:Group6984Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId70.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65111|marine_rig2:low1:Group65111Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId69.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65110|marine_rig2:low1:Group65110Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId68.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65109|marine_rig2:low1:Group65109Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId67.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65108|marine_rig2:low1:Group65108Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId66.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65107|marine_rig2:low1:Group65107Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId65.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6834|marine_rig2:low1:Group6834Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId64.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6819|marine_rig2:low1:Group6819Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId63.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6804|marine_rig2:low1:Group6804Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId62.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6789|marine_rig2:low1:Group6789Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId61.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6774|marine_rig2:low1:Group6774Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId60.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6759|marine_rig2:low1:Group6759Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId59.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6744|marine_rig2:low1:Group6744Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId58.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6729|marine_rig2:low1:Group6729Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId57.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65106|marine_rig2:low1:Group65106Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId56.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6684|marine_rig2:low1:Group6684Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId55.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6654|marine_rig2:low1:Group6654Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId54.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6639|marine_rig2:low1:Group6639Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId53.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group6624|marine_rig2:low1:Group6624Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId52.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65105|marine_rig2:low1:Group65105Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId51.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65104|marine_rig2:low1:Group65104Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId50.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65103|marine_rig2:low1:Group65103Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId49.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65102|marine_rig2:low1:Group65102Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId48.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65101|marine_rig2:low1:Group65101Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId47.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65100|marine_rig2:low1:Group65100Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId46.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65099|marine_rig2:low1:Group65099Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId45.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65098|marine_rig2:low1:Group65098Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId44.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65097|marine_rig2:low1:Group65097Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId43.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65096|marine_rig2:low1:Group65096Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId42.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65095|marine_rig2:low1:Group65095Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId41.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65094|marine_rig2:low1:Group65094Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId40.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65093|marine_rig2:low1:Group65093Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId39.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65092|marine_rig2:low1:Group65092Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId38.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65091|marine_rig2:low1:Group65091Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId37.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65090|marine_rig2:low1:Group65090Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId36.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65089|marine_rig2:low1:Group65089Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId35.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65088|marine_rig2:low1:Group65088Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId34.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65087|marine_rig2:low1:Group65087Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId33.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65086|marine_rig2:low1:Group65086Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId32.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65085|marine_rig2:low1:Group65085Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId31.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65084|marine_rig2:low1:Group65084Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId30.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65083|marine_rig2:low1:Group65083Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId29.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65082|marine_rig2:low1:Group65082Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId28.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65081|marine_rig2:low1:Group65081Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId27.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65080|marine_rig2:low1:Group65080Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId26.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65079|marine_rig2:low1:Group65079Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId25.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65078|marine_rig2:low1:Group65078Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId24.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65077|marine_rig2:low1:Group65077Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId23.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65076|marine_rig2:low1:Group65076Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId22.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65075|marine_rig2:low1:Group65075Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId21.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5874|marine_rig2:low1:Group5874Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId20.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65074|marine_rig2:low1:Group65074Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId19.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65073|marine_rig2:low1:Group65073Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId18.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5799|marine_rig2:low1:Group5799Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId17.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5784|marine_rig2:low1:Group5784Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId16.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5769|marine_rig2:low1:Group5769Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId15.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5739|marine_rig2:low1:Group5739Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId14.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group65072|marine_rig2:low1:Group65072Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId13.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5709|marine_rig2:low1:Group5709Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId12.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5694|marine_rig2:low1:Group5694Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId11.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5679|marine_rig2:low1:Group5679Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId10.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5664|marine_rig2:low1:Group5664Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId9.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group25936|marine_rig2:low1:Group25936Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId8.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5634|marine_rig2:low1:Group5634Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId7.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5619|marine_rig2:low1:Group5619Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId6.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group25935|marine_rig2:low1:Group25935Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId5.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5589|marine_rig2:low1:Group5589Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId4.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5574|marine_rig2:low1:Group5574Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId3.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "|marine_rig2:low1:Group5559|marine_rig2:low1:Group5559Shape.instObjGroups.objectGroups[0]" 
		"marine_rig2:low1:defaultMat.dagSetMembers" "-na"
		3 "marine_rig2:groupId2.message" "marine_rig2:low1:defaultMat.groupNodes" 
		"-na"
		3 "marine_rig2:groupId26.groupId" "|marine_rig2:low1:Group65080|marine_rig2:low1:Group65080Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65080|marine_rig2:low1:Group65080Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId28.groupId" "|marine_rig2:low1:Group65082|marine_rig2:low1:Group65082Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65082|marine_rig2:low1:Group65082Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId127.groupId" "|marine_rig2:low1:Group65156|marine_rig2:low1:Group65156Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65156|marine_rig2:low1:Group65156Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId98.groupId" "|marine_rig2:low1:Group65127|marine_rig2:low1:Group65127Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65127|marine_rig2:low1:Group65127Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId116.groupId" "|marine_rig2:low1:Group65145|marine_rig2:low1:Group65145Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65145|marine_rig2:low1:Group65145Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId7.groupId" "|marine_rig2:low1:Group5634|marine_rig2:low1:Group5634Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5634|marine_rig2:low1:Group5634Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId114.groupId" "|marine_rig2:low1:Group65143|marine_rig2:low1:Group65143Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65143|marine_rig2:low1:Group65143Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId5.groupId" "|marine_rig2:low1:Group25935|marine_rig2:low1:Group25935Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group25935|marine_rig2:low1:Group25935Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId72.groupId" "|marine_rig2:low1:Group65112|marine_rig2:low1:Group65112Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65112|marine_rig2:low1:Group65112Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId16.groupId" "|marine_rig2:low1:Group5784|marine_rig2:low1:Group5784Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5784|marine_rig2:low1:Group5784Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId79.groupId" "|marine_rig2:low1:Group7254|marine_rig2:low1:Group7254Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7254|marine_rig2:low1:Group7254Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId15.groupId" "|marine_rig2:low1:Group5769|marine_rig2:low1:Group5769Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5769|marine_rig2:low1:Group5769Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId22.groupId" "|marine_rig2:low1:Group65076|marine_rig2:low1:Group65076Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65076|marine_rig2:low1:Group65076Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId9.groupId" "|marine_rig2:low1:Group5664|marine_rig2:low1:Group5664Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5664|marine_rig2:low1:Group5664Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId107.groupId" "|marine_rig2:low1:Group65136|marine_rig2:low1:Group65136Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65136|marine_rig2:low1:Group65136Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId38.groupId" "|marine_rig2:low1:Group65092|marine_rig2:low1:Group65092Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65092|marine_rig2:low1:Group65092Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId23.groupId" "|marine_rig2:low1:Group65077|marine_rig2:low1:Group65077Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65077|marine_rig2:low1:Group65077Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId14.groupId" "|marine_rig2:low1:Group5739|marine_rig2:low1:Group5739Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5739|marine_rig2:low1:Group5739Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId19.groupId" "|marine_rig2:low1:Group65074|marine_rig2:low1:Group65074Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65074|marine_rig2:low1:Group65074Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId77.groupId" "|marine_rig2:low1:Group7179|marine_rig2:low1:Group7179Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7179|marine_rig2:low1:Group7179Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId48.groupId" "|marine_rig2:low1:Group65102|marine_rig2:low1:Group65102Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65102|marine_rig2:low1:Group65102Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId24.groupId" "|marine_rig2:low1:Group65078|marine_rig2:low1:Group65078Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65078|marine_rig2:low1:Group65078Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId20.groupId" "|marine_rig2:low1:Group5874|marine_rig2:low1:Group5874Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5874|marine_rig2:low1:Group5874Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId11.groupId" "|marine_rig2:low1:Group5694|marine_rig2:low1:Group5694Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5694|marine_rig2:low1:Group5694Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId109.groupId" "|marine_rig2:low1:Group65138|marine_rig2:low1:Group65138Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65138|marine_rig2:low1:Group65138Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId54.groupId" "|marine_rig2:low1:Group6654|marine_rig2:low1:Group6654Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6654|marine_rig2:low1:Group6654Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId102.groupId" "|marine_rig2:low1:Group65131|marine_rig2:low1:Group65131Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65131|marine_rig2:low1:Group65131Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId86.groupId" "|marine_rig2:low1:Group65116|marine_rig2:low1:Group65116Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65116|marine_rig2:low1:Group65116Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId97.groupId" "|marine_rig2:low1:Group65126|marine_rig2:low1:Group65126Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65126|marine_rig2:low1:Group65126Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId104.groupId" "|marine_rig2:low1:Group65133|marine_rig2:low1:Group65133Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65133|marine_rig2:low1:Group65133Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId51.groupId" "|marine_rig2:low1:Group65105|marine_rig2:low1:Group65105Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65105|marine_rig2:low1:Group65105Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId129.groupId" "|marine_rig2:low1:Group65158|marine_rig2:low1:Group65158Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65158|marine_rig2:low1:Group65158Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId2.groupId" "|marine_rig2:low1:Group5559|marine_rig2:low1:Group5559Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5559|marine_rig2:low1:Group5559Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId34.groupId" "|marine_rig2:low1:Group65088|marine_rig2:low1:Group65088Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65088|marine_rig2:low1:Group65088Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId82.groupId" "|marine_rig2:low1:Group7299|marine_rig2:low1:Group7299Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7299|marine_rig2:low1:Group7299Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId45.groupId" "|marine_rig2:low1:Group65099|marine_rig2:low1:Group65099Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65099|marine_rig2:low1:Group65099Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId121.groupId" "|marine_rig2:low1:Group65150|marine_rig2:low1:Group65150Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65150|marine_rig2:low1:Group65150Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId124.groupId" "|marine_rig2:low1:Group65153|marine_rig2:low1:Group65153Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65153|marine_rig2:low1:Group65153Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId83.groupId" "|marine_rig2:low1:Group7314|marine_rig2:low1:Group7314Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7314|marine_rig2:low1:Group7314Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId84.groupId" "|marine_rig2:low1:Group65115|marine_rig2:low1:Group65115Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65115|marine_rig2:low1:Group65115Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId76.groupId" "|marine_rig2:low1:Group65114|marine_rig2:low1:Group65114Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65114|marine_rig2:low1:Group65114Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId94.groupId" "|marine_rig2:low1:Group65123|marine_rig2:low1:Group65123Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65123|marine_rig2:low1:Group65123Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId95.groupId" "|marine_rig2:low1:Group65124|marine_rig2:low1:Group65124Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65124|marine_rig2:low1:Group65124Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId128.groupId" "|marine_rig2:low1:Group65157|marine_rig2:low1:Group65157Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65157|marine_rig2:low1:Group65157Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId96.groupId" "|marine_rig2:low1:Group65125|marine_rig2:low1:Group65125Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65125|marine_rig2:low1:Group65125Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId4.groupId" "|marine_rig2:low1:Group5589|marine_rig2:low1:Group5589Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5589|marine_rig2:low1:Group5589Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId35.groupId" "|marine_rig2:low1:Group65089|marine_rig2:low1:Group65089Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65089|marine_rig2:low1:Group65089Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId43.groupId" "|marine_rig2:low1:Group65097|marine_rig2:low1:Group65097Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65097|marine_rig2:low1:Group65097Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId12.groupId" "|marine_rig2:low1:Group5709|marine_rig2:low1:Group5709Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5709|marine_rig2:low1:Group5709Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId90.groupId" "|marine_rig2:low1:Group65119|marine_rig2:low1:Group65119Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65119|marine_rig2:low1:Group65119Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId91.groupId" "|marine_rig2:low1:Group65120|marine_rig2:low1:Group65120Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65120|marine_rig2:low1:Group65120Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId67.groupId" "|marine_rig2:low1:Group65109|marine_rig2:low1:Group65109Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65109|marine_rig2:low1:Group65109Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId56.groupId" "|marine_rig2:low1:Group65106|marine_rig2:low1:Group65106Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65106|marine_rig2:low1:Group65106Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId21.groupId" "|marine_rig2:low1:Group65075|marine_rig2:low1:Group65075Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65075|marine_rig2:low1:Group65075Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId92.groupId" "|marine_rig2:low1:Group65121|marine_rig2:low1:Group65121Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65121|marine_rig2:low1:Group65121Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId81.groupId" "|marine_rig2:low1:Group7284|marine_rig2:low1:Group7284Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7284|marine_rig2:low1:Group7284Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId120.groupId" "|marine_rig2:low1:Group65149|marine_rig2:low1:Group65149Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65149|marine_rig2:low1:Group65149Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId115.groupId" "|marine_rig2:low1:Group65144|marine_rig2:low1:Group65144Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65144|marine_rig2:low1:Group65144Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId112.groupId" "|marine_rig2:low1:Group65141|marine_rig2:low1:Group65141Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65141|marine_rig2:low1:Group65141Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId59.groupId" "|marine_rig2:low1:Group6759|marine_rig2:low1:Group6759Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6759|marine_rig2:low1:Group6759Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId125.groupId" "|marine_rig2:low1:Group65154|marine_rig2:low1:Group65154Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65154|marine_rig2:low1:Group65154Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId74.groupId" "|marine_rig2:low1:Group7119|marine_rig2:low1:Group7119Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7119|marine_rig2:low1:Group7119Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId117.groupId" "|marine_rig2:low1:Group65146|marine_rig2:low1:Group65146Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65146|marine_rig2:low1:Group65146Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId65.groupId" "|marine_rig2:low1:Group65107|marine_rig2:low1:Group65107Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65107|marine_rig2:low1:Group65107Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId13.groupId" "|marine_rig2:low1:Group65072|marine_rig2:low1:Group65072Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65072|marine_rig2:low1:Group65072Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId80.groupId" "|marine_rig2:low1:Group7269|marine_rig2:low1:Group7269Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7269|marine_rig2:low1:Group7269Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId88.groupId" "|marine_rig2:low1:Group65117|marine_rig2:low1:Group65117Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65117|marine_rig2:low1:Group65117Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId17.groupId" "|marine_rig2:low1:Group5799|marine_rig2:low1:Group5799Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5799|marine_rig2:low1:Group5799Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId63.groupId" "|marine_rig2:low1:Group6819|marine_rig2:low1:Group6819Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6819|marine_rig2:low1:Group6819Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId87.groupId" "|marine_rig2:low1:Group7374|marine_rig2:low1:Group7374Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7374|marine_rig2:low1:Group7374Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId78.groupId" "|marine_rig2:low1:Group7239|marine_rig2:low1:Group7239Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group7239|marine_rig2:low1:Group7239Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId49.groupId" "|marine_rig2:low1:Group65103|marine_rig2:low1:Group65103Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65103|marine_rig2:low1:Group65103Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId106.groupId" "|marine_rig2:low1:Group65135|marine_rig2:low1:Group65135Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65135|marine_rig2:low1:Group65135Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId30.groupId" "|marine_rig2:low1:Group65084|marine_rig2:low1:Group65084Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65084|marine_rig2:low1:Group65084Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId108.groupId" "|marine_rig2:low1:Group65137|marine_rig2:low1:Group65137Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65137|marine_rig2:low1:Group65137Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId37.groupId" "|marine_rig2:low1:Group65091|marine_rig2:low1:Group65091Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65091|marine_rig2:low1:Group65091Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId69.groupId" "|marine_rig2:low1:Group65111|marine_rig2:low1:Group65111Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65111|marine_rig2:low1:Group65111Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId31.groupId" "|marine_rig2:low1:Group65085|marine_rig2:low1:Group65085Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65085|marine_rig2:low1:Group65085Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId47.groupId" "|marine_rig2:low1:Group65101|marine_rig2:low1:Group65101Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65101|marine_rig2:low1:Group65101Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId10.groupId" "|marine_rig2:low1:Group5679|marine_rig2:low1:Group5679Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5679|marine_rig2:low1:Group5679Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId32.groupId" "|marine_rig2:low1:Group65086|marine_rig2:low1:Group65086Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65086|marine_rig2:low1:Group65086Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId41.groupId" "|marine_rig2:low1:Group65095|marine_rig2:low1:Group65095Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65095|marine_rig2:low1:Group65095Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId111.groupId" "|marine_rig2:low1:Group65140|marine_rig2:low1:Group65140Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65140|marine_rig2:low1:Group65140Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId39.groupId" "|marine_rig2:low1:Group65093|marine_rig2:low1:Group65093Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65093|marine_rig2:low1:Group65093Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId8.groupId" "|marine_rig2:low1:Group25936|marine_rig2:low1:Group25936Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group25936|marine_rig2:low1:Group25936Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId73.groupId" "|marine_rig2:low1:Group65113|marine_rig2:low1:Group65113Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65113|marine_rig2:low1:Group65113Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId25.groupId" "|marine_rig2:low1:Group65079|marine_rig2:low1:Group65079Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65079|marine_rig2:low1:Group65079Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId113.groupId" "|marine_rig2:low1:Group65142|marine_rig2:low1:Group65142Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65142|marine_rig2:low1:Group65142Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId61.groupId" "|marine_rig2:low1:Group6789|marine_rig2:low1:Group6789Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group6789|marine_rig2:low1:Group6789Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId6.groupId" "|marine_rig2:low1:Group5619|marine_rig2:low1:Group5619Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group5619|marine_rig2:low1:Group5619Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId100.groupId" "|marine_rig2:low1:Group65129|marine_rig2:low1:Group65129Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65129|marine_rig2:low1:Group65129Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId71.groupId" "|marine_rig2:low1:Group44256|marine_rig2:low1:Group44256Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group44256|marine_rig2:low1:Group44256Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "marine_rig2:groupId110.groupId" "|marine_rig2:low1:Group65139|marine_rig2:low1:Group65139Shape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "marine_rig2:low1:defaultMat.memberWireframeColor" "|marine_rig2:low1:Group65139|marine_rig2:low1:Group65139Shape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5559|marine_rig2:low1:Group5559Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[1]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5574|marine_rig2:low1:Group5574Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[2]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5589|marine_rig2:low1:Group5589Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[3]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group25935|marine_rig2:low1:Group25935Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[4]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5619|marine_rig2:low1:Group5619Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[5]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5634|marine_rig2:low1:Group5634Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[6]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group25936|marine_rig2:low1:Group25936Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[7]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5664|marine_rig2:low1:Group5664Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[8]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5679|marine_rig2:low1:Group5679Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[9]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5694|marine_rig2:low1:Group5694Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[10]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5709|marine_rig2:low1:Group5709Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[11]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65072|marine_rig2:low1:Group65072Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[12]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5739|marine_rig2:low1:Group5739Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[13]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5769|marine_rig2:low1:Group5769Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[14]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5784|marine_rig2:low1:Group5784Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[15]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5799|marine_rig2:low1:Group5799Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[16]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65073|marine_rig2:low1:Group65073Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[17]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65074|marine_rig2:low1:Group65074Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[18]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group5874|marine_rig2:low1:Group5874Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[19]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65075|marine_rig2:low1:Group65075Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[20]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65076|marine_rig2:low1:Group65076Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[21]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65077|marine_rig2:low1:Group65077Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[22]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65078|marine_rig2:low1:Group65078Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[23]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65079|marine_rig2:low1:Group65079Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[24]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65080|marine_rig2:low1:Group65080Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[25]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65081|marine_rig2:low1:Group65081Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[26]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65082|marine_rig2:low1:Group65082Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[27]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65083|marine_rig2:low1:Group65083Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[28]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65084|marine_rig2:low1:Group65084Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[29]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65085|marine_rig2:low1:Group65085Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[30]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65086|marine_rig2:low1:Group65086Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[31]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65087|marine_rig2:low1:Group65087Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[32]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65088|marine_rig2:low1:Group65088Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[33]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65089|marine_rig2:low1:Group65089Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[34]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65090|marine_rig2:low1:Group65090Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[35]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65091|marine_rig2:low1:Group65091Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[36]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65092|marine_rig2:low1:Group65092Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[37]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65093|marine_rig2:low1:Group65093Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[38]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65094|marine_rig2:low1:Group65094Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[39]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65095|marine_rig2:low1:Group65095Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[40]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65096|marine_rig2:low1:Group65096Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[41]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65097|marine_rig2:low1:Group65097Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[42]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65098|marine_rig2:low1:Group65098Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[43]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65099|marine_rig2:low1:Group65099Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[44]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65100|marine_rig2:low1:Group65100Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[45]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65101|marine_rig2:low1:Group65101Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[46]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65102|marine_rig2:low1:Group65102Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[47]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65103|marine_rig2:low1:Group65103Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[48]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65104|marine_rig2:low1:Group65104Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[49]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65105|marine_rig2:low1:Group65105Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[50]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6624|marine_rig2:low1:Group6624Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[51]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6639|marine_rig2:low1:Group6639Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[52]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6654|marine_rig2:low1:Group6654Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[53]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6684|marine_rig2:low1:Group6684Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[54]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65106|marine_rig2:low1:Group65106Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[55]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6729|marine_rig2:low1:Group6729Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[56]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6744|marine_rig2:low1:Group6744Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[57]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6759|marine_rig2:low1:Group6759Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[58]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6774|marine_rig2:low1:Group6774Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[59]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6789|marine_rig2:low1:Group6789Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[60]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6804|marine_rig2:low1:Group6804Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[61]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6819|marine_rig2:low1:Group6819Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[62]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6834|marine_rig2:low1:Group6834Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[63]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65107|marine_rig2:low1:Group65107Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[64]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65108|marine_rig2:low1:Group65108Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[65]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65109|marine_rig2:low1:Group65109Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[66]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65110|marine_rig2:low1:Group65110Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[67]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65111|marine_rig2:low1:Group65111Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[68]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group6984|marine_rig2:low1:Group6984Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[69]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group44256|marine_rig2:low1:Group44256Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[70]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65112|marine_rig2:low1:Group65112Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[71]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65113|marine_rig2:low1:Group65113Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[72]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7119|marine_rig2:low1:Group7119Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[73]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7134|marine_rig2:low1:Group7134Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[74]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65114|marine_rig2:low1:Group65114Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[75]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7179|marine_rig2:low1:Group7179Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[76]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7239|marine_rig2:low1:Group7239Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[77]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7254|marine_rig2:low1:Group7254Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[78]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7269|marine_rig2:low1:Group7269Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[79]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7284|marine_rig2:low1:Group7284Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[80]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7299|marine_rig2:low1:Group7299Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[81]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7314|marine_rig2:low1:Group7314Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[82]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65115|marine_rig2:low1:Group65115Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[83]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7344|marine_rig2:low1:Group7344Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[84]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65116|marine_rig2:low1:Group65116Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[85]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group7374|marine_rig2:low1:Group7374Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[86]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65117|marine_rig2:low1:Group65117Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[87]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65118|marine_rig2:low1:Group65118Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[88]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65119|marine_rig2:low1:Group65119Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[89]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65120|marine_rig2:low1:Group65120Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[90]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65121|marine_rig2:low1:Group65121Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[91]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65122|marine_rig2:low1:Group65122Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[92]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65123|marine_rig2:low1:Group65123Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[93]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65124|marine_rig2:low1:Group65124Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[94]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65125|marine_rig2:low1:Group65125Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[95]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65126|marine_rig2:low1:Group65126Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[96]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65127|marine_rig2:low1:Group65127Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[97]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65128|marine_rig2:low1:Group65128Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[98]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65129|marine_rig2:low1:Group65129Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[99]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65130|marine_rig2:low1:Group65130Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[100]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65131|marine_rig2:low1:Group65131Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[101]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65132|marine_rig2:low1:Group65132Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[102]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65133|marine_rig2:low1:Group65133Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[103]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65134|marine_rig2:low1:Group65134Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[104]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65135|marine_rig2:low1:Group65135Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[105]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65136|marine_rig2:low1:Group65136Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[106]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65137|marine_rig2:low1:Group65137Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[107]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65138|marine_rig2:low1:Group65138Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[108]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65139|marine_rig2:low1:Group65139Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[109]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65140|marine_rig2:low1:Group65140Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[110]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65141|marine_rig2:low1:Group65141Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[111]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65142|marine_rig2:low1:Group65142Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[112]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65143|marine_rig2:low1:Group65143Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[113]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65144|marine_rig2:low1:Group65144Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[114]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65145|marine_rig2:low1:Group65145Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[115]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65146|marine_rig2:low1:Group65146Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[116]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65147|marine_rig2:low1:Group65147Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[117]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65148|marine_rig2:low1:Group65148Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[118]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65149|marine_rig2:low1:Group65149Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[119]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65150|marine_rig2:low1:Group65150Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[120]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65151|marine_rig2:low1:Group65151Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[121]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65152|marine_rig2:low1:Group65152Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[122]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65153|marine_rig2:low1:Group65153Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[123]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65154|marine_rig2:low1:Group65154Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[124]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65155|marine_rig2:low1:Group65155Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[125]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65156|marine_rig2:low1:Group65156Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[126]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65157|marine_rig2:low1:Group65157Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[127]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65158|marine_rig2:low1:Group65158Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[128]" ""
		5 3 "marine_rig2RN" "|marine_rig2:low1:Group65159|marine_rig2:low1:Group65159Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[129]" ""
		"marine_rig2RN" 262
		2 "marine_rig2:file1" "fileTextureName" " -type \"string\" \"G:/EVERYDAY/marine/marine//texture/marine_Diffuse.png\""
		
		2 "marine_rig2:file2" "fileTextureName" " -type \"string\" \"G:/EVERYDAY/marine/marine//texture/marine_Glossiness.png\""
		
		2 "marine_rig2:file3" "fileTextureName" " -type \"string\" \"G:/EVERYDAY/marine/marine//texture/marine_Reflection.png\""
		
		2 "marine_rig2:file4" "fileTextureName" " -type \"string\" \"G:/EVERYDAY/marine/marine//texture/marine_Normal.png\""
		
		3 "|marine_rig2:part|marine_rig2:partShape.instObjGroups" "marine_rig2:blinn2SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part128|marine_rig2:part128Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part127|marine_rig2:part127Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part126|marine_rig2:part126Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part125|marine_rig2:part125Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part124|marine_rig2:part124Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part123|marine_rig2:part123Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part122|marine_rig2:part122Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part121|marine_rig2:part121Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part120|marine_rig2:part120Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part119|marine_rig2:part119Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part118|marine_rig2:part118Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part117|marine_rig2:part117Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part116|marine_rig2:part116Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part115|marine_rig2:part115Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part114|marine_rig2:part114Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part113|marine_rig2:part113Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part112|marine_rig2:part112Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part111|marine_rig2:part111Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part110|marine_rig2:part110Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part109|marine_rig2:part109Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part108|marine_rig2:part108Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part107|marine_rig2:part107Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part106|marine_rig2:part106Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part105|marine_rig2:part105Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part104|marine_rig2:part104Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part103|marine_rig2:part103Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part102|marine_rig2:part102Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part101|marine_rig2:part101Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part100|marine_rig2:part100Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part99|marine_rig2:part99Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part98|marine_rig2:part98Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part97|marine_rig2:part97Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part96|marine_rig2:part96Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part95|marine_rig2:part95Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part94|marine_rig2:part94Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part93|marine_rig2:part93Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part92|marine_rig2:part92Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part91|marine_rig2:part91Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part90|marine_rig2:part90Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part89|marine_rig2:part89Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part88|marine_rig2:part88Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part87|marine_rig2:part87Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part86|marine_rig2:part86Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part85|marine_rig2:part85Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part84|marine_rig2:part84Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part83|marine_rig2:part83Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part82|marine_rig2:part82Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part81|marine_rig2:part81Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part80|marine_rig2:part80Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part79|marine_rig2:part79Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part78|marine_rig2:part78Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part77|marine_rig2:part77Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part76|marine_rig2:part76Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part75|marine_rig2:part75Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part74|marine_rig2:part74Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part73|marine_rig2:part73Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part72|marine_rig2:part72Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part71|marine_rig2:part71Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part70|marine_rig2:part70Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part69|marine_rig2:part69Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part68|marine_rig2:part68Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part67|marine_rig2:part67Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part66|marine_rig2:part66Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part65|marine_rig2:part65Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part64|marine_rig2:part64Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part63|marine_rig2:part63Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part62|marine_rig2:part62Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part61|marine_rig2:part61Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part60|marine_rig2:part60Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part59|marine_rig2:part59Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part58|marine_rig2:part58Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part57|marine_rig2:part57Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part56|marine_rig2:part56Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part55|marine_rig2:part55Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part54|marine_rig2:part54Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part53|marine_rig2:part53Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part52|marine_rig2:part52Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part51|marine_rig2:part51Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part50|marine_rig2:part50Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part49|marine_rig2:part49Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part48|marine_rig2:part48Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part47|marine_rig2:part47Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part46|marine_rig2:part46Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part45|marine_rig2:part45Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part44|marine_rig2:part44Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part43|marine_rig2:part43Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part42|marine_rig2:part42Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part41|marine_rig2:part41Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part40|marine_rig2:part40Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part39|marine_rig2:part39Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part38|marine_rig2:part38Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part37|marine_rig2:part37Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part36|marine_rig2:part36Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part35|marine_rig2:part35Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part4|marine_rig2:part4Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part3|marine_rig2:part3Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part2|marine_rig2:part2Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part34|marine_rig2:part34Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part33|marine_rig2:part33Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part32|marine_rig2:part32Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part31|marine_rig2:part31Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part30|marine_rig2:part30Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part29|marine_rig2:part29Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part28|marine_rig2:part28Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part27|marine_rig2:part27Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part26|marine_rig2:part26Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part25|marine_rig2:part25Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part24|marine_rig2:part24Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part23|marine_rig2:part23Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part22|marine_rig2:part22Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part21|marine_rig2:part21Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part20|marine_rig2:part20Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part19|marine_rig2:part19Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part18|marine_rig2:part18Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part17|marine_rig2:part17Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part16|marine_rig2:part16Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part15|marine_rig2:part15Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part14|marine_rig2:part14Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part13|marine_rig2:part13Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part12|marine_rig2:part12Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part11|marine_rig2:part11Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part10|marine_rig2:part10Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part9|marine_rig2:part9Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part8|marine_rig2:part8Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part6|marine_rig2:part6Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part5|marine_rig2:part5Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part7|marine_rig2:part7Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		3 "|marine_rig2:part1|marine_rig2:part1Shape.instObjGroups" "marine_rig2:blinn1SG.dagSetMembers" 
		"-na"
		5 3 "marine_rig2RN" "|marine_rig2:part|marine_rig2:partShape.instObjGroups" 
		"marine_rig2RN.placeHolderList[130]" "marine_rig2:blinn2SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part1|marine_rig2:part1Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[131]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part2|marine_rig2:part2Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[132]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part3|marine_rig2:part3Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[133]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part4|marine_rig2:part4Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[134]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part5|marine_rig2:part5Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[135]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part6|marine_rig2:part6Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[136]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part7|marine_rig2:part7Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[137]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part8|marine_rig2:part8Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[138]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part9|marine_rig2:part9Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[139]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part10|marine_rig2:part10Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[140]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part11|marine_rig2:part11Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[141]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part12|marine_rig2:part12Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[142]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part13|marine_rig2:part13Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[143]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part14|marine_rig2:part14Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[144]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part15|marine_rig2:part15Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[145]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part16|marine_rig2:part16Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[146]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part17|marine_rig2:part17Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[147]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part18|marine_rig2:part18Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[148]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part19|marine_rig2:part19Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[149]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part20|marine_rig2:part20Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[150]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part21|marine_rig2:part21Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[151]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part22|marine_rig2:part22Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[152]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part23|marine_rig2:part23Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[153]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part24|marine_rig2:part24Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[154]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part25|marine_rig2:part25Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[155]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part26|marine_rig2:part26Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[156]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part27|marine_rig2:part27Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[157]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part28|marine_rig2:part28Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[158]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part29|marine_rig2:part29Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[159]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part30|marine_rig2:part30Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[160]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part31|marine_rig2:part31Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[161]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part32|marine_rig2:part32Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[162]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part33|marine_rig2:part33Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[163]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part34|marine_rig2:part34Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[164]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part35|marine_rig2:part35Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[165]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part36|marine_rig2:part36Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[166]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part37|marine_rig2:part37Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[167]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part38|marine_rig2:part38Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[168]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part39|marine_rig2:part39Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[169]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part40|marine_rig2:part40Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[170]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part41|marine_rig2:part41Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[171]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part42|marine_rig2:part42Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[172]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part43|marine_rig2:part43Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[173]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part44|marine_rig2:part44Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[174]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part45|marine_rig2:part45Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[175]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part46|marine_rig2:part46Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[176]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part47|marine_rig2:part47Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[177]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part48|marine_rig2:part48Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[178]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part49|marine_rig2:part49Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[179]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part50|marine_rig2:part50Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[180]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part51|marine_rig2:part51Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[181]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part52|marine_rig2:part52Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[182]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part53|marine_rig2:part53Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[183]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part54|marine_rig2:part54Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[184]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part55|marine_rig2:part55Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[185]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part56|marine_rig2:part56Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[186]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part57|marine_rig2:part57Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[187]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part58|marine_rig2:part58Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[188]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part59|marine_rig2:part59Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[189]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part60|marine_rig2:part60Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[190]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part61|marine_rig2:part61Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[191]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part62|marine_rig2:part62Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[192]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part63|marine_rig2:part63Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[193]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part64|marine_rig2:part64Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[194]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part65|marine_rig2:part65Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[195]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part66|marine_rig2:part66Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[196]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part67|marine_rig2:part67Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[197]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part68|marine_rig2:part68Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[198]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part69|marine_rig2:part69Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[199]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part70|marine_rig2:part70Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[200]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part71|marine_rig2:part71Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[201]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part72|marine_rig2:part72Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[202]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part73|marine_rig2:part73Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[203]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part74|marine_rig2:part74Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[204]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part75|marine_rig2:part75Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[205]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part76|marine_rig2:part76Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[206]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part77|marine_rig2:part77Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[207]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part78|marine_rig2:part78Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[208]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part79|marine_rig2:part79Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[209]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part80|marine_rig2:part80Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[210]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part81|marine_rig2:part81Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[211]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part82|marine_rig2:part82Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[212]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part83|marine_rig2:part83Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[213]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part84|marine_rig2:part84Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[214]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part85|marine_rig2:part85Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[215]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part86|marine_rig2:part86Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[216]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part87|marine_rig2:part87Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[217]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part88|marine_rig2:part88Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[218]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part89|marine_rig2:part89Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[219]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part90|marine_rig2:part90Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[220]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part91|marine_rig2:part91Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[221]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part92|marine_rig2:part92Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[222]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part93|marine_rig2:part93Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[223]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part94|marine_rig2:part94Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[224]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part95|marine_rig2:part95Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[225]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part96|marine_rig2:part96Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[226]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part97|marine_rig2:part97Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[227]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part98|marine_rig2:part98Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[228]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part99|marine_rig2:part99Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[229]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part100|marine_rig2:part100Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[230]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part101|marine_rig2:part101Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[231]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part102|marine_rig2:part102Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[232]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part103|marine_rig2:part103Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[233]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part104|marine_rig2:part104Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[234]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part105|marine_rig2:part105Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[235]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part106|marine_rig2:part106Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[236]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part107|marine_rig2:part107Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[237]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part108|marine_rig2:part108Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[238]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part109|marine_rig2:part109Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[239]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part110|marine_rig2:part110Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[240]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part111|marine_rig2:part111Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[241]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part112|marine_rig2:part112Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[242]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part113|marine_rig2:part113Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[243]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part114|marine_rig2:part114Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[244]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part115|marine_rig2:part115Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[245]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part116|marine_rig2:part116Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[246]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part117|marine_rig2:part117Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[247]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part118|marine_rig2:part118Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[248]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part119|marine_rig2:part119Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[249]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part120|marine_rig2:part120Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[250]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part121|marine_rig2:part121Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[251]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part122|marine_rig2:part122Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[252]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part123|marine_rig2:part123Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[253]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part124|marine_rig2:part124Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[254]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part125|marine_rig2:part125Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[255]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part126|marine_rig2:part126Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[256]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part127|marine_rig2:part127Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[257]" "marine_rig2:blinn1SG.dsm"
		5 3 "marine_rig2RN" "|marine_rig2:part128|marine_rig2:part128Shape.instObjGroups" 
		"marine_rig2RN.placeHolderList[258]" "marine_rig2:blinn1SG.dsm";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode file -n "file6";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/marine/marine//texture/marine_Glossiness.png";
createNode place2dTexture -n "place2dTexture6";
createNode RedshiftMaterial -n "rs_sphere";
	setAttr ".v" 1;
	setAttr ".diffuse_color" -type "float3" 1 0.72552001 0 ;
	setAttr ".diffuse_weight" 0;
	setAttr ".refl_color" -type "float3" 1 0.72552001 0 ;
	setAttr ".refl_roughness" 0.25;
	setAttr ".refl_samples" 256;
	setAttr ".refl_brdf" 1;
	setAttr ".refl_fresnel_mode" 2;
	setAttr ".refl_reflectivity" -type "float3" 1 0.44942856 0 ;
	setAttr ".refl_edge_tint" -type "float3" 1 0.44942856 0 ;
	setAttr ".refl_ior3" -type "float3" 1.3424 0.96526003 0.58465999 ;
	setAttr ".refl_k3" -type "float3" 7.4737 6.3996 5.1873999 ;
	setAttr ".refl_ior" 44.507469177246094;
	setAttr ".overall_color" -type "float3" 1 0.44942856 0 ;
	setAttr ".emission_color" -type "float3" 1 0.72552001 0 ;
	setAttr ".emission_weight" 0.18181818723678589;
createNode shadingEngine -n "rsMaterial4SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode file -n "file7";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/marine/marine//texture/gun_Base_Color.png";
createNode place2dTexture -n "place2dTexture7";
createNode file -n "file8";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/marine/marine//texture/gun_Base_Color.png";
createNode place2dTexture -n "place2dTexture8";
createNode RedshiftNormalMap -n "rsNormalMap2";
	setAttr ".tex0" -type "string" "G:/EVERYDAY/marine/marine//texture/gun_Normal.png";
createNode file -n "file9";
	setAttr ".ftn" -type "string" "G:/EVERYDAY/marine/marine//texture/gun_Roughness.png";
createNode place2dTexture -n "place2dTexture9";
createNode place2dTexture -n "place2dTexture10";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 11 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :lightList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "redshift";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "iff";
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "marine_rig2RN.phl[130]" "rsMaterial4SG.dsm" -na;
connectAttr "marine_rig2RN.phl[131]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[132]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[133]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[134]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[135]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[136]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[137]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[138]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[139]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[140]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[141]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[142]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[143]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[144]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[145]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[146]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[147]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[148]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[149]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[150]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[151]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[152]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[153]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[154]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[155]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[156]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[157]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[158]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[159]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[160]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[161]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[162]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[163]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[164]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[165]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[166]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[167]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[168]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[169]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[170]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[171]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[172]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[173]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[174]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[175]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[176]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[177]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[178]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[179]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[180]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[181]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[182]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[183]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[184]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[185]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[186]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[187]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[188]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[189]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[190]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[191]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[192]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[193]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[194]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[195]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[196]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[197]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[198]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[199]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[200]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[201]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[202]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[203]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[204]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[205]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[206]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[207]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[208]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[209]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[210]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[211]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[212]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[213]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[214]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[215]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[216]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[217]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[218]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[219]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[220]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[221]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[222]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[223]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[224]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[225]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[226]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[227]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[228]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[229]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[230]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[231]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[232]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[233]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[234]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[235]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[236]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[237]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[238]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[239]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[240]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[241]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[242]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[243]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[244]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[245]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[246]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[247]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[248]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[249]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[250]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[251]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[252]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[253]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[254]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[255]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[256]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[257]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[258]" "rsMaterial1SG.dsm" -na;
connectAttr "file7.oc" "gun1:gunRN.phl[2]";
connectAttr "file8.oc" "gun1:gunRN.phl[3]";
connectAttr "rsNormalMap2.oc" "gun1:gunRN.phl[4]";
connectAttr "file9.oa" "gun1:gunRN.phl[5]";
connectAttr "place2dTexture10.c" "gun1:gunRN.phl[6]";
connectAttr "place2dTexture10.tf" "gun1:gunRN.phl[7]";
connectAttr "place2dTexture10.rf" "gun1:gunRN.phl[8]";
connectAttr "place2dTexture10.mu" "gun1:gunRN.phl[9]";
connectAttr "place2dTexture10.mv" "gun1:gunRN.phl[10]";
connectAttr "place2dTexture10.s" "gun1:gunRN.phl[11]";
connectAttr "place2dTexture10.wu" "gun1:gunRN.phl[12]";
connectAttr "place2dTexture10.wv" "gun1:gunRN.phl[13]";
connectAttr "place2dTexture10.re" "gun1:gunRN.phl[14]";
connectAttr "place2dTexture10.of" "gun1:gunRN.phl[15]";
connectAttr "place2dTexture10.r" "gun1:gunRN.phl[16]";
connectAttr "place2dTexture10.n" "gun1:gunRN.phl[17]";
connectAttr "place2dTexture10.vt1" "gun1:gunRN.phl[18]";
connectAttr "place2dTexture10.vt2" "gun1:gunRN.phl[19]";
connectAttr "place2dTexture10.vt3" "gun1:gunRN.phl[20]";
connectAttr "place2dTexture10.vc1" "gun1:gunRN.phl[21]";
connectAttr "place2dTexture10.o" "gun1:gunRN.phl[22]";
connectAttr "place2dTexture10.ofs" "gun1:gunRN.phl[23]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsArchitectural1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "rsMaterial4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsArchitectural1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "rsMaterial4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "rsArchitectural1.oc" "rsArchitectural1SG.ss";
connectAttr "pPlaneShape1.iog" "rsArchitectural1SG.dsm" -na;
connectAttr "rsArchitectural1SG.msg" "materialInfo1.sg";
connectAttr "rsArchitectural1.msg" "materialInfo1.m";
connectAttr "rsArchitectural1.msg" "materialInfo1.t" -na;
connectAttr "file1.oc" "rs_body.diffuse_color";
connectAttr "file2.oc" "rs_body.refl_reflectivity";
connectAttr "rsNormalMap1.oc" "rs_body.bump_input";
connectAttr "file6.oa" "rs_body.refl_roughness";
connectAttr "marine_rig2RN.phl[2]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[3]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[4]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[5]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[6]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[7]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[8]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[9]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[10]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[11]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[12]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[13]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[14]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[15]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[16]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[17]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[18]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[19]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[20]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[21]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[22]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[23]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[24]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[25]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[26]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[27]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[28]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[29]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[30]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[31]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[32]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[33]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[34]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[35]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[36]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[37]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[38]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[39]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[40]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[41]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[42]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[43]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[44]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[45]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[46]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[47]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[48]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[49]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[50]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[51]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[52]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[53]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[54]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[55]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[56]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[57]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[58]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[59]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[60]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[61]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[62]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[63]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[64]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[65]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[66]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[67]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[68]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[69]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[70]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[71]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[72]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[73]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[74]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[75]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[76]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[77]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[78]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[79]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[80]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[81]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[82]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[83]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[84]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[85]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[86]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[87]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[88]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[89]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[90]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[91]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[92]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[93]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[94]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[95]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[96]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[97]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[98]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[99]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[100]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[101]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[102]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[103]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[104]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[105]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[106]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[107]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[108]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[109]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[110]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[111]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[112]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[113]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[114]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[115]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[116]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[117]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[118]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[119]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[120]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[121]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[122]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[123]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[124]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[125]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[126]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[127]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[128]" "rsMaterial1SG.dsm" -na;
connectAttr "marine_rig2RN.phl[129]" "rsMaterial1SG.dsm" -na;
connectAttr "rs_body.oc" "rsMaterial1SG.ss";
connectAttr "rsMaterial1SG.msg" "materialInfo2.sg";
connectAttr "rs_body.msg" "materialInfo2.m";
connectAttr "file6.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr "marine_rig2RN.phl[1]" "rsMaterial4SG.dsm" -na;
connectAttr "rs_sphere.oc" "rsMaterial4SG.ss";
connectAttr "rsMaterial4SG.msg" "materialInfo6.sg";
connectAttr "rs_sphere.msg" "materialInfo6.m";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr "rsArchitectural1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial1SG.pa" ":renderPartition.st" -na;
connectAttr "rsMaterial4SG.pa" ":renderPartition.st" -na;
connectAttr "rsArchitectural1.msg" ":defaultShaderList1.s" -na;
connectAttr "rs_body.msg" ":defaultShaderList1.s" -na;
connectAttr "rs_sphere.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "rsPhysicalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "rsNormalMap2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "rsPhysicalLight1.iog" ":defaultLightSet.dsm" -na;
// End of marine_render2.ma
