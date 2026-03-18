.include "macros.inc"
.file "aji_16.o"

# 0x00004474..0x000044B8 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x4474 | size: 0x44
.fn peach_set_pose, local
/* 00004474 00004538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004478 0000453C  7C 08 02 A6 */	mflr r0
/* 0000447C 00004540  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004480 00004544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00004484 00004548  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004488 0000454C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000448C 00004550  48 00 1D B1 */	bl evtGetValue
/* 00004490 00004554  7C 7F 1B 78 */	mr r31, r3
/* 00004494 00004558  48 00 1D A9 */	bl marioGetPtr
/* 00004498 0000455C  7F E3 FB 78 */	mr r3, r31
/* 0000449C 00004560  48 00 1D A1 */	bl marioChgPose
/* 000044A0 00004564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000044A4 00004568  38 60 00 02 */	li r3, 0x2
/* 000044A8 0000456C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000044AC 00004570  7C 08 03 A6 */	mtlr r0
/* 000044B0 00004574  38 21 00 10 */	addi r1, r1, 0x10
/* 000044B4 00004578  4E 80 00 20 */	blr
.endfn peach_set_pose

# 0x00003CD0..0x00003F50 | size: 0x280
.rodata
.balign 8

# .rodata:0x0 | 0x3CD0 | size: 0xA
.obj str_S_door1_1_aji_00014b38, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00014b38

# .rodata:0xA | 0x3CDA | size: 0x2
.obj gap_03_00003CDA_rodata, global
.hidden gap_03_00003CDA_rodata
	.2byte 0x0000
.endobj gap_03_00003CDA_rodata

# .rodata:0xC | 0x3CDC | size: 0xA
.obj str_S_door1_2_aji_00014b44, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00014b44

# .rodata:0x16 | 0x3CE6 | size: 0x2
.obj gap_03_00003CE6_rodata, global
.hidden gap_03_00003CE6_rodata
	.2byte 0x0000
.endobj gap_03_00003CE6_rodata

# .rodata:0x18 | 0x3CE8 | size: 0xA
.obj str_S_door2_1_aji_00014b50, local
	.string "S_door2_1"
.endobj str_S_door2_1_aji_00014b50

# .rodata:0x22 | 0x3CF2 | size: 0x2
.obj gap_03_00003CF2_rodata, global
.hidden gap_03_00003CF2_rodata
	.2byte 0x0000
.endobj gap_03_00003CF2_rodata

# .rodata:0x24 | 0x3CF4 | size: 0xA
.obj str_S_door2_2_aji_00014b5c, local
	.string "S_door2_2"
.endobj str_S_door2_2_aji_00014b5c

# .rodata:0x2E | 0x3CFE | size: 0x2
.obj gap_03_00003CFE_rodata, global
.hidden gap_03_00003CFE_rodata
	.2byte 0x0000
.endobj gap_03_00003CFE_rodata

# .rodata:0x30 | 0x3D00 | size: 0x7
.obj str_w_bero_aji_00014b68, local
	.string "w_bero"
.endobj str_w_bero_aji_00014b68

# .rodata:0x37 | 0x3D07 | size: 0x1
.obj gap_03_00003D07_rodata, global
.hidden gap_03_00003D07_rodata
	.byte 0x00
.endobj gap_03_00003D07_rodata

# .rodata:0x38 | 0x3D08 | size: 0x7
.obj str_aji_15_aji_00014b70, local
	.string "aji_15"
.endobj str_aji_15_aji_00014b70

# .rodata:0x3F | 0x3D0F | size: 0x1
.obj gap_03_00003D0F_rodata, global
.hidden gap_03_00003D0F_rodata
	.byte 0x00
.endobj gap_03_00003D0F_rodata

# .rodata:0x40 | 0x3D10 | size: 0x7
.obj str_e_bero_aji_00014b78, local
	.string "e_bero"
.endobj str_e_bero_aji_00014b78

# .rodata:0x47 | 0x3D17 | size: 0x1
.obj gap_03_00003D17_rodata, global
.hidden gap_03_00003D17_rodata
	.byte 0x00
.endobj gap_03_00003D17_rodata

# .rodata:0x48 | 0x3D18 | size: 0x7
.obj str_aji_01_aji_00014b80, local
	.string "aji_01"
.endobj str_aji_01_aji_00014b80

# .rodata:0x4F | 0x3D1F | size: 0x1
.obj gap_03_00003D1F_rodata, global
.hidden gap_03_00003D1F_rodata
	.byte 0x00
.endobj gap_03_00003D1F_rodata

# .rodata:0x50 | 0x3D20 | size: 0x9
.obj str_w_bero_5_aji_00014b88, local
	.string "w_bero_5"
.endobj str_w_bero_5_aji_00014b88

# .rodata:0x59 | 0x3D29 | size: 0x3
.obj gap_03_00003D29_rodata, global
.hidden gap_03_00003D29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003D29_rodata

# .rodata:0x5C | 0x3D2C | size: 0x6
.obj str_peach_aji_00014b94, local
	.string "peach"
.endobj str_peach_aji_00014b94

# .rodata:0x62 | 0x3D32 | size: 0x2
.obj gap_03_00003D32_rodata, global
.hidden gap_03_00003D32_rodata
	.2byte 0x0000
.endobj gap_03_00003D32_rodata

# .rodata:0x64 | 0x3D34 | size: 0x8
.obj str_c_peach_aji_00014b9c, local
	.string "c_peach"
.endobj str_c_peach_aji_00014b9c

# .rodata:0x6C | 0x3D3C | size: 0x7
.obj str_p_b_st_aji_00014ba4, local
	.string "p_b_st"
.endobj str_p_b_st_aji_00014ba4

# .rodata:0x73 | 0x3D43 | size: 0x1
.obj gap_03_00003D43_rodata, global
.hidden gap_03_00003D43_rodata
	.byte 0x00
.endobj gap_03_00003D43_rodata

# .rodata:0x74 | 0x3D44 | size: 0x6
.obj str_P_Z_7_aji_00014bac, local
	.string "P_Z_7"
.endobj str_P_Z_7_aji_00014bac

# .rodata:0x7A | 0x3D4A | size: 0x2
.obj gap_03_00003D4A_rodata, global
.hidden gap_03_00003D4A_rodata
	.2byte 0x0000
.endobj gap_03_00003D4A_rodata

# .rodata:0x7C | 0x3D4C | size: 0xC
.obj str_stg7_aji_58_aji_00014bb4, local
	.string "stg7_aji_58"
.endobj str_stg7_aji_58_aji_00014bb4

# .rodata:0x88 | 0x3D58 | size: 0x7
.obj str_aji_17_aji_00014bc0, local
	.string "aji_17"
.endobj str_aji_17_aji_00014bc0

# .rodata:0x8F | 0x3D5F | size: 0x1
.obj gap_03_00003D5F_rodata, global
.hidden gap_03_00003D5F_rodata
	.byte 0x00
.endobj gap_03_00003D5F_rodata

# .rodata:0x90 | 0x3D60 | size: 0xE
.obj str_BGM_STG7_DUN1_aji_00014bc8, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_aji_00014bc8

# .rodata:0x9E | 0x3D6E | size: 0x2
.obj gap_03_00003D6E_rodata, global
.hidden gap_03_00003D6E_rodata
	.2byte 0x0000
.endobj gap_03_00003D6E_rodata

# .rodata:0xA0 | 0x3D70 | size: 0xE
.obj str_ENV_STG7_AJI2_aji_00014bd8, local
	.string "ENV_STG7_AJI2"
.endobj str_ENV_STG7_AJI2_aji_00014bd8

# .rodata:0xAE | 0x3D7E | size: 0x2
.obj gap_03_00003D7E_rodata, global
.hidden gap_03_00003D7E_rodata
	.2byte 0x0000
.endobj gap_03_00003D7E_rodata

# .rodata:0xB0 | 0x3D80 | size: 0x6
.obj str_mario_aji_00014be8, local
	.string "mario"
.endobj str_mario_aji_00014be8

# .rodata:0xB6 | 0x3D86 | size: 0x2
.obj gap_03_00003D86_rodata, global
.hidden gap_03_00003D86_rodata
	.2byte 0x0000
.endobj gap_03_00003D86_rodata

# .rodata:0xB8 | 0x3D88 | size: 0x6
.obj str_P_S_4_aji_00014bf0, local
	.string "P_S_4"
.endobj str_P_S_4_aji_00014bf0

# .rodata:0xBE | 0x3D8E | size: 0x2
.obj gap_03_00003D8E_rodata, global
.hidden gap_03_00003D8E_rodata
	.2byte 0x0000
.endobj gap_03_00003D8E_rodata

# .rodata:0xC0 | 0x3D90 | size: 0x6
.obj str_P_T_4_aji_00014bf8, local
	.string "P_T_4"
.endobj str_P_T_4_aji_00014bf8

# .rodata:0xC6 | 0x3D96 | size: 0x2
.obj gap_03_00003D96_rodata, global
.hidden gap_03_00003D96_rodata
	.2byte 0x0000
.endobj gap_03_00003D96_rodata

# .rodata:0xC8 | 0x3D98 | size: 0xD
.obj str_peach_aji_34_aji_00014c00, local
	.string "peach_aji_34"
.endobj str_peach_aji_34_aji_00014c00

# .rodata:0xD5 | 0x3DA5 | size: 0x3
.obj gap_03_00003DA5_rodata, global
.hidden gap_03_00003DA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003DA5_rodata

# .rodata:0xD8 | 0x3DA8 | size: 0x10
.obj str_peach_aji_34_01_aji_00014c10, local
	.string "peach_aji_34_01"
.endobj str_peach_aji_34_01_aji_00014c10

# .rodata:0xE8 | 0x3DB8 | size: 0xF
.obj str_BGM_EVT_PEACH1_aji_00014c20, local
	.string "BGM_EVT_PEACH1"
.endobj str_BGM_EVT_PEACH1_aji_00014c20

# .rodata:0xF7 | 0x3DC7 | size: 0x1
.obj gap_03_00003DC7_rodata, global
.hidden gap_03_00003DC7_rodata
	.byte 0x00
.endobj gap_03_00003DC7_rodata

# .rodata:0xF8 | 0x3DC8 | size: 0x1D
.obj str_SFX_VOICE_PEACH_SURP_aji_00014c30, local
	.string "SFX_VOICE_PEACH_SURPRISED1_3"
.endobj str_SFX_VOICE_PEACH_SURP_aji_00014c30

# .rodata:0x115 | 0x3DE5 | size: 0x3
.obj gap_03_00003DE5_rodata, global
.hidden gap_03_00003DE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003DE5_rodata

# .rodata:0x118 | 0x3DE8 | size: 0x1
.obj zero_aji_00014c50, local
	.byte 0x00
.endobj zero_aji_00014c50

# .rodata:0x119 | 0x3DE9 | size: 0x3
.obj gap_03_00003DE9_rodata, global
.hidden gap_03_00003DE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003DE9_rodata

# .rodata:0x11C | 0x3DEC | size: 0xD
.obj str_peach_aji_38_aji_00014c54, local
	.string "peach_aji_38"
.endobj str_peach_aji_38_aji_00014c54

# .rodata:0x129 | 0x3DF9 | size: 0x3
.obj gap_03_00003DF9_rodata, global
.hidden gap_03_00003DF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003DF9_rodata

# .rodata:0x12C | 0x3DFC | size: 0xD
.obj str_peach_aji_75_aji_00014c64, local
	.string "peach_aji_75"
.endobj str_peach_aji_75_aji_00014c64

# .rodata:0x139 | 0x3E09 | size: 0x3
.obj gap_03_00003E09_rodata, global
.hidden gap_03_00003E09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E09_rodata

# .rodata:0x13C | 0x3E0C | size: 0xD
.obj str_peach_aji_73_aji_00014c74, local
	.string "peach_aji_73"
.endobj str_peach_aji_73_aji_00014c74

# .rodata:0x149 | 0x3E19 | size: 0x3
.obj gap_03_00003E19_rodata, global
.hidden gap_03_00003E19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E19_rodata

# .rodata:0x14C | 0x3E1C | size: 0xD
.obj str_peach_aji_74_aji_00014c84, local
	.string "peach_aji_74"
.endobj str_peach_aji_74_aji_00014c84

# .rodata:0x159 | 0x3E29 | size: 0x3
.obj gap_03_00003E29_rodata, global
.hidden gap_03_00003E29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E29_rodata

# .rodata:0x15C | 0x3E2C | size: 0x6
.obj str_P_S_1_aji_00014c94, local
	.string "P_S_1"
.endobj str_P_S_1_aji_00014c94

# .rodata:0x162 | 0x3E32 | size: 0x2
.obj gap_03_00003E32_rodata, global
.hidden gap_03_00003E32_rodata
	.2byte 0x0000
.endobj gap_03_00003E32_rodata

# .rodata:0x164 | 0x3E34 | size: 0x6
.obj str_P_T_1_aji_00014c9c, local
	.string "P_T_1"
.endobj str_P_T_1_aji_00014c9c

# .rodata:0x16A | 0x3E3A | size: 0x2
.obj gap_03_00003E3A_rodata, global
.hidden gap_03_00003E3A_rodata
	.2byte 0x0000
.endobj gap_03_00003E3A_rodata

# .rodata:0x16C | 0x3E3C | size: 0x17
.obj str_SFX_VOICE_PEACH_SAD1_aji_00014ca4, local
	.string "SFX_VOICE_PEACH_SAD1_1"
.endobj str_SFX_VOICE_PEACH_SAD1_aji_00014ca4

# .rodata:0x183 | 0x3E53 | size: 0x1
.obj gap_03_00003E53_rodata, global
.hidden gap_03_00003E53_rodata
	.byte 0x00
.endobj gap_03_00003E53_rodata

# .rodata:0x184 | 0x3E54 | size: 0x6
.obj str_P_U_1_aji_00014cbc, local
	.string "P_U_1"
.endobj str_P_U_1_aji_00014cbc

# .rodata:0x18A | 0x3E5A | size: 0x2
.obj gap_03_00003E5A_rodata, global
.hidden gap_03_00003E5A_rodata
	.2byte 0x0000
.endobj gap_03_00003E5A_rodata

# .rodata:0x18C | 0x3E5C | size: 0xE
.obj str_peach_aji_112_aji_00014cc4, local
	.string "peach_aji_112"
.endobj str_peach_aji_112_aji_00014cc4

# .rodata:0x19A | 0x3E6A | size: 0x2
.obj gap_03_00003E6A_rodata, global
.hidden gap_03_00003E6A_rodata
	.2byte 0x0000
.endobj gap_03_00003E6A_rodata

# .rodata:0x19C | 0x3E6C | size: 0x6
.obj str_P_P_1_aji_00014cd4, local
	.string "P_P_1"
.endobj str_P_P_1_aji_00014cd4

# .rodata:0x1A2 | 0x3E72 | size: 0x2
.obj gap_03_00003E72_rodata, global
.hidden gap_03_00003E72_rodata
	.2byte 0x0000
.endobj gap_03_00003E72_rodata

# .rodata:0x1A4 | 0x3E74 | size: 0x6
.obj str_P_T_9_aji_00014cdc, local
	.string "P_T_9"
.endobj str_P_T_9_aji_00014cdc

# .rodata:0x1AA | 0x3E7A | size: 0x2
.obj gap_03_00003E7A_rodata, global
.hidden gap_03_00003E7A_rodata
	.2byte 0x0000
.endobj gap_03_00003E7A_rodata

# .rodata:0x1AC | 0x3E7C | size: 0xE
.obj str_peach_aji_113_aji_00014ce4, local
	.string "peach_aji_113"
.endobj str_peach_aji_113_aji_00014ce4

# .rodata:0x1BA | 0x3E8A | size: 0x2
.obj gap_03_00003E8A_rodata, global
.hidden gap_03_00003E8A_rodata
	.2byte 0x0000
.endobj gap_03_00003E8A_rodata

# .rodata:0x1BC | 0x3E8C | size: 0xE
.obj str_peach_aji_114_aji_00014cf4, local
	.string "peach_aji_114"
.endobj str_peach_aji_114_aji_00014cf4

# .rodata:0x1CA | 0x3E9A | size: 0x2
.obj gap_03_00003E9A_rodata, global
.hidden gap_03_00003E9A_rodata
	.2byte 0x0000
.endobj gap_03_00003E9A_rodata

# .rodata:0x1CC | 0x3E9C | size: 0x6
.obj str_P_S_7_aji_00014d04, local
	.string "P_S_7"
.endobj str_P_S_7_aji_00014d04

# .rodata:0x1D2 | 0x3EA2 | size: 0x2
.obj gap_03_00003EA2_rodata, global
.hidden gap_03_00003EA2_rodata
	.2byte 0x0000
.endobj gap_03_00003EA2_rodata

# .rodata:0x1D4 | 0x3EA4 | size: 0x7
.obj str_P_T_13_aji_00014d0c, local
	.string "P_T_13"
.endobj str_P_T_13_aji_00014d0c

# .rodata:0x1DB | 0x3EAB | size: 0x1
.obj gap_03_00003EAB_rodata, global
.hidden gap_03_00003EAB_rodata
	.byte 0x00
.endobj gap_03_00003EAB_rodata

# .rodata:0x1DC | 0x3EAC | size: 0xE
.obj str_peach_aji_280_aji_00014d14, local
	.string "peach_aji_280"
.endobj str_peach_aji_280_aji_00014d14

# .rodata:0x1EA | 0x3EBA | size: 0x2
.obj gap_03_00003EBA_rodata, global
.hidden gap_03_00003EBA_rodata
	.2byte 0x0000
.endobj gap_03_00003EBA_rodata

# .rodata:0x1EC | 0x3EBC | size: 0x6
.obj str_P_B_2_aji_00014d24, local
	.string "P_B_2"
.endobj str_P_B_2_aji_00014d24

# .rodata:0x1F2 | 0x3EC2 | size: 0x2
.obj gap_03_00003EC2_rodata, global
.hidden gap_03_00003EC2_rodata
	.2byte 0x0000
.endobj gap_03_00003EC2_rodata

# .rodata:0x1F4 | 0x3EC4 | size: 0x6
.obj str_P_T_7_aji_00014d2c, local
	.string "P_T_7"
.endobj str_P_T_7_aji_00014d2c

# .rodata:0x1FA | 0x3ECA | size: 0x2
.obj gap_03_00003ECA_rodata, global
.hidden gap_03_00003ECA_rodata
	.2byte 0x0000
.endobj gap_03_00003ECA_rodata

# .rodata:0x1FC | 0x3ECC | size: 0xE
.obj str_peach_aji_281_aji_00014d34, local
	.string "peach_aji_281"
.endobj str_peach_aji_281_aji_00014d34

# .rodata:0x20A | 0x3EDA | size: 0x2
.obj gap_03_00003EDA_rodata, global
.hidden gap_03_00003EDA_rodata
	.2byte 0x0000
.endobj gap_03_00003EDA_rodata

# .rodata:0x20C | 0x3EDC | size: 0x10
.obj str_peach_aji_38_01_aji_00014d44, local
	.string "peach_aji_38_01"
.endobj str_peach_aji_38_01_aji_00014d44

# .rodata:0x21C | 0x3EEC | size: 0xF
.obj str_peach_evt_stg1_aji_00014d54, local
	.string "peach_evt_stg1"
.endobj str_peach_evt_stg1_aji_00014d54

# .rodata:0x22B | 0x3EFB | size: 0x1
.obj gap_03_00003EFB_rodata, global
.hidden gap_03_00003EFB_rodata
	.byte 0x00
.endobj gap_03_00003EFB_rodata

# .rodata:0x22C | 0x3EFC | size: 0xF
.obj str_peach_evt_stg3_aji_00014d64, local
	.string "peach_evt_stg3"
.endobj str_peach_evt_stg3_aji_00014d64

# .rodata:0x23B | 0x3F0B | size: 0x1
.obj gap_03_00003F0B_rodata, global
.hidden gap_03_00003F0B_rodata
	.byte 0x00
.endobj gap_03_00003F0B_rodata

# .rodata:0x23C | 0x3F0C | size: 0xF
.obj str_peach_evt_stg6_aji_00014d74, local
	.string "peach_evt_stg6"
.endobj str_peach_evt_stg6_aji_00014d74

# .rodata:0x24B | 0x3F1B | size: 0x1
.obj gap_03_00003F1B_rodata, global
.hidden gap_03_00003F1B_rodata
	.byte 0x00
.endobj gap_03_00003F1B_rodata

# .rodata:0x24C | 0x3F1C | size: 0xA
.obj str_A_door1_1_aji_00014d84, local
	.string "A_door1_1"
.endobj str_A_door1_1_aji_00014d84

# .rodata:0x256 | 0x3F26 | size: 0x2
.obj gap_03_00003F26_rodata, global
.hidden gap_03_00003F26_rodata
	.2byte 0x0000
.endobj gap_03_00003F26_rodata

# .rodata:0x258 | 0x3F28 | size: 0xA
.obj str_A_door1_2_aji_00014d90, local
	.string "A_door1_2"
.endobj str_A_door1_2_aji_00014d90

# .rodata:0x262 | 0x3F32 | size: 0x2
.obj gap_03_00003F32_rodata, global
.hidden gap_03_00003F32_rodata
	.2byte 0x0000
.endobj gap_03_00003F32_rodata

# .rodata:0x264 | 0x3F34 | size: 0xA
.obj str_A_door2_1_aji_00014d9c, local
	.string "A_door2_1"
.endobj str_A_door2_1_aji_00014d9c

# .rodata:0x26E | 0x3F3E | size: 0x2
.obj gap_03_00003F3E_rodata, global
.hidden gap_03_00003F3E_rodata
	.2byte 0x0000
.endobj gap_03_00003F3E_rodata

# .rodata:0x270 | 0x3F40 | size: 0xA
.obj str_A_door2_2_aji_00014da8, local
	.string "A_door2_2"
.endobj str_A_door2_2_aji_00014da8

# .rodata:0x27A | 0x3F4A | size: 0x6
.obj gap_03_00003F4A_rodata, global
.hidden gap_03_00003F4A_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_00003F4A_rodata

# 0x0001CF50..0x0001E290 | size: 0x1340
.data
.balign 8

# .data:0x0 | 0x1CF50 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1CF58 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1CF5C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1CF60 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1CF64 | size: 0x4
.obj gap_04_0001CF64_data, global
.hidden gap_04_0001CF64_data
	.4byte 0x00000000
.endobj gap_04_0001CF64_data

# .data:0x18 | 0x1CF68 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1CF70 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1CF74 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1CF78 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1CF80 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1CF84 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1CF88 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1CF8C | size: 0x4
.obj gap_04_0001CF8C_data, global
.hidden gap_04_0001CF8C_data
	.4byte 0x00000000
.endobj gap_04_0001CF8C_data

# .data:0x40 | 0x1CF90 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1CF98 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1CF9C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1CFA0 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B63
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00014b38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00014b44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x1CFF8 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B63
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00014b38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00014b44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x1D050 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A799D
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_1_aji_00014b50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_2_aji_00014b5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x1D0A8 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A799D
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_1_aji_00014b50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_2_aji_00014b5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x1D100 | size: 0x3C
.obj w_bero_in_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_bero_in_evt

# .data:0x1EC | 0x1D13C | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00014b68
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte w_bero_in_evt
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_15_aji_00014b70
	.4byte str_e_bero_aji_00014b78
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00014b80
	.4byte str_w_bero_5_aji_00014b88
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_entry_data

# .data:0x2A0 | 0x1D1F0 | size: 0x78
.obj bero_peach_data, local
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0000000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte str_aji_01_aji_00014b80
	.4byte str_w_bero_5_aji_00014b88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_peach_data

# .data:0x318 | 0x1D268 | size: 0xF8
.obj evt_last_mail_init, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF29
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_peach_aji_00014b94
	.4byte str_c_peach_aji_00014b9c
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_p_b_st_aji_00014ba4
	.4byte 0x0003005B
	.4byte evt_npc_set_paper
	.4byte str_peach_aji_00014b94
	.4byte str_p_b_st_aji_00014ba4
	.4byte 0x0003005B
	.4byte evt_npc_set_paper_anim
	.4byte str_peach_aji_00014b94
	.4byte str_P_Z_7_aji_00014bac
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_peach_aji_00014b94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000064
	.4byte 0x00000050
	.4byte 0x0000011D
	.4byte 0x00000064
	.4byte 0x00000028
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_fade_softfocus_onoff
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_last_mail
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_last_mail_init

# .data:0x410 | 0x1D360 | size: 0xE0
.obj evt_last_mail, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF9C
	.4byte 0x00000050
	.4byte 0x0000011D
	.4byte 0xFFFFFF9C
	.4byte 0x00000028
	.4byte 0xFFFFFFF3
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_npc_set_color
	.4byte str_peach_aji_00014b94
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_58_aji_00014bb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_17_aji_00014bc0
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_last_mail

# .data:0x4F0 | 0x1D440 | size: 0xA4
.obj peach_evt_door_open, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000023
	.4byte 0x00000072
	.4byte 0x0000014E
	.4byte 0x0000009D
	.4byte 0x00000036
	.4byte 0x00000011
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte e_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_door_open

# .data:0x594 | 0x1D4E4 | size: 0x184
.obj peach_evt_stg1, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_aji_00014bc8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI2_aji_00014bd8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000007D
	.4byte 0x0000017D
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_fade_tec_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_S_4_aji_00014bf0
	.4byte str_P_T_4_aji_00014bf8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_34_aji_00014c00
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x000000D1
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFFF3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_34_01_aji_00014c10
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000039
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014c20
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1

# .data:0x718 | 0x1D668 | size: 0x158
.obj peach_evt_stg1_1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_SURP_aji_00014c30
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_aji_00014c50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte peach_evt_door_open
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_38_aji_00014c54
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_aji_00014b78
	.4byte bero_peach_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F8F
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000003A
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014c20
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1_1

# .data:0x870 | 0x1D7C0 | size: 0x19C
.obj peach_evt_stg2_1, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00001388
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_SURP_aji_00014c30
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_aji_00014c50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte peach_evt_door_open
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_75_aji_00014c64
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000071
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_aji_00014b78
	.4byte bero_peach_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg2_1

# .data:0xA0C | 0x1D95C | size: 0x1AC
.obj peach_evt_stg2, local
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014c20
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF76
	.4byte 0x00000092
	.4byte 0x000001B0
	.4byte 0x0000007A
	.4byte 0x00000035
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_4_aji_00014bf0
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_S_4_aji_00014bf0
	.4byte str_P_T_4_aji_00014bf8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_73_aji_00014c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000050
	.4byte 0x000000B8
	.4byte 0xFFFFFFB5
	.4byte 0x00000028
	.4byte 0xFFFFFFC1
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_74_aji_00014c84
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_00014c94
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_S_1_aji_00014c94
	.4byte str_P_T_1_aji_00014c9c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005C
	.4byte peach_evt_stg2_1
	.4byte 0x00020032
	.4byte 0xF8406BEA
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg2

# .data:0xBB8 | 0x1DB08 | size: 0x278
.obj peach_evt_stg3, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014c20
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000073
	.4byte 0x0000005A
	.4byte 0x000001BC
	.4byte 0x00000073
	.4byte 0x0000003C
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000005A
	.4byte 0x000001BC
	.4byte 0xFFFFFFB5
	.4byte 0x0000003C
	.4byte 0xFFFFFFC9
	.4byte 0x000009C4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_SAD1_aji_00014ca4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_U_1_aji_00014cbc
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_112_aji_00014cc4
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000050
	.4byte 0x000000B8
	.4byte 0xFFFFFFB5
	.4byte 0x00000028
	.4byte 0xFFFFFFC1
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_P_1_aji_00014cd4
	.4byte str_P_T_9_aji_00014cdc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_113_aji_00014ce4
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0001005E
	.4byte peach_evt_door_open
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_aji_00014b78
	.4byte bero_peach_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000050
	.4byte 0x000000B8
	.4byte 0xFFFFFFB5
	.4byte 0x00000028
	.4byte 0xFFFFFFC1
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_114_aji_00014cf4
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000A5
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_00014c94
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_S_1_aji_00014c94
	.4byte str_P_T_1_aji_00014c9c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg3

# .data:0xE30 | 0x1DD80 | size: 0x228
.obj peach_evt_stg6, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014c20
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000FA
	.4byte 0x0000008C
	.4byte 0x00000188
	.4byte 0x00000023
	.4byte 0x0000004B
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000050
	.4byte 0x000000B8
	.4byte 0xFFFFFFB5
	.4byte 0x00000028
	.4byte 0xFFFFFFC1
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_7_aji_00014d04
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_S_7_aji_00014d04
	.4byte str_P_T_13_aji_00014d0c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_280_aji_00014d14
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte peach_evt_door_open
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000050
	.4byte 0x000000B8
	.4byte 0xFFFFFFB5
	.4byte 0x00000028
	.4byte 0xFFFFFFC1
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_B_2_aji_00014d24
	.4byte str_P_T_7_aji_00014d2c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_281_aji_00014d34
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x0002005B
	.4byte peach_set_pose
	.4byte str_P_S_1_aji_00014c94
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_00014be8
	.4byte str_P_S_1_aji_00014c94
	.4byte str_P_T_1_aji_00014c9c
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_aji_00014b78
	.4byte bero_peach_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000154
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg6

# .data:0x1058 | 0x1DFA8 | size: 0x48
.obj peach_evt_door_stop, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00010066
	.4byte 0x000000EF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_38_01_aji_00014d44
	.4byte 0x00000000
	.4byte str_mario_aji_00014be8
	.4byte 0x00010067
	.4byte 0x000000EF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_door_stop

# .data:0x10A0 | 0x1DFF0 | size: 0x29C
.obj aji_16_init_evt_2_data_1DFF0, global
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_peach_aji_00014b94
	.4byte 0x0001005E
	.4byte evt_last_mail_init
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_peach_evt_stg1_aji_00014d54
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004E
	.4byte 0x00000098
	.4byte 0x00000210
	.4byte 0x0000004E
	.4byte 0x00000039
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte peach_evt_stg1
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000039
	.4byte 0x00020018
	.4byte 0xF8406BE7
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte peach_evt_stg1_1
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000070
	.4byte 0x00020018
	.4byte 0xF8406BEA
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte peach_evt_stg2
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte peach_evt_stg2_1
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_peach_evt_stg3_aji_00014d64
	.4byte 0x0001005C
	.4byte peach_evt_stg3
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_peach_evt_stg6_aji_00014d74
	.4byte 0x0001005C
	.4byte peach_evt_stg6
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000039
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte zero_aji_00014c50
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000003A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_aji_00014b78
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0xFD050F8F
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000070
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00014b78
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_aji_00014b78
	.4byte 0x00000000
	.4byte peach_evt_door_stop
	.4byte 0xFD050F8F
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000160
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014c20
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_door1_1_aji_00014d84
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_door1_2_aji_00014d90
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_door2_1_aji_00014d9c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_door2_2_aji_00014da8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_16_init_evt_2_data_1DFF0

# .data:0x133C | 0x1E28C | size: 0x4
.obj gap_04_0001E28C_data, global
.hidden gap_04_0001E28C_data
	.4byte 0x00000000
.endobj gap_04_0001E28C_data
