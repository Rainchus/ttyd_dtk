.include "macros.inc"
.file "aji_18.o"

# 0x000082B4..0x000083C8 | size: 0x114
.text
.balign 4

# .text:0x0 | 0x82B4 | size: 0x5C
.fn sysflag, local
/* 000082B4 00008378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000082B8 0000837C  7C 08 02 A6 */	mflr r0
/* 000082BC 00008380  3C 60 00 00 */	lis r3, gp@ha
/* 000082C0 00008384  90 01 00 14 */	stw r0, 0x14(r1)
/* 000082C4 00008388  80 83 00 00 */	lwz r4, gp@l(r3)
/* 000082C8 0000838C  80 64 00 00 */	lwz r3, 0x0(r4)
/* 000082CC 00008390  54 60 07 FF */	clrlwi. r0, r3, 31
/* 000082D0 00008394  41 82 00 2C */	beq .L_000082FC
/* 000082D4 00008398  54 60 00 3C */	clrrwi r0, r3, 1
/* 000082D8 0000839C  3C 60 00 00 */	lis r3, zero_aji_00016d08@ha
/* 000082DC 000083A0  90 04 00 00 */	stw r0, 0x0(r4)
/* 000082E0 000083A4  38 83 00 00 */	addi r4, r3, zero_aji_00016d08@l
/* 000082E4 000083A8  38 A1 00 08 */	addi r5, r1, 0x8
/* 000082E8 000083AC  38 60 00 1C */	li r3, 0x1c
/* 000082EC 000083B0  80 04 00 00 */	lwz r0, 0x0(r4)
/* 000082F0 000083B4  38 80 00 00 */	li r4, 0x0
/* 000082F4 000083B8  90 01 00 08 */	stw r0, 0x8(r1)
/* 000082F8 000083BC  4B FF DF 45 */	bl fadeEntry
.L_000082FC:
/* 000082FC 000083C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008300 000083C4  38 60 00 02 */	li r3, 0x2
/* 00008304 000083C8  7C 08 03 A6 */	mtlr r0
/* 00008308 000083CC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000830C 000083D0  4E 80 00 20 */	blr
.endfn sysflag

# .text:0x5C | 0x8310 | size: 0xB8
.fn make_list, local
/* 00008310 000083D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008314 000083D8  7C 08 02 A6 */	mflr r0
/* 00008318 000083DC  38 60 00 1D */	li r3, 0x1d
/* 0000831C 000083E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00008320 000083E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00008324 000083E8  3B E0 00 00 */	li r31, 0x0
/* 00008328 000083EC  4B FF DF 15 */	bl pouchCheckItem
/* 0000832C 000083F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008330 000083F4  40 81 00 1C */	ble .L_0000834C
/* 00008334 000083F8  3C 60 00 00 */	lis r3, key_list@ha
/* 00008338 000083FC  57 E0 10 3A */	slwi r0, r31, 2
/* 0000833C 00008400  38 63 00 00 */	addi r3, r3, key_list@l
/* 00008340 00008404  38 80 00 1D */	li r4, 0x1d
/* 00008344 00008408  7C 83 01 2E */	stwx r4, r3, r0
/* 00008348 0000840C  3B E0 00 01 */	li r31, 0x1
.L_0000834C:
/* 0000834C 00008410  38 60 00 1E */	li r3, 0x1e
/* 00008350 00008414  4B FF DE ED */	bl pouchCheckItem
/* 00008354 00008418  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008358 0000841C  40 81 00 1C */	ble .L_00008374
/* 0000835C 00008420  3C 60 00 00 */	lis r3, key_list@ha
/* 00008360 00008424  57 E0 10 3A */	slwi r0, r31, 2
/* 00008364 00008428  38 63 00 00 */	addi r3, r3, key_list@l
/* 00008368 0000842C  38 80 00 1E */	li r4, 0x1e
/* 0000836C 00008430  7C 83 01 2E */	stwx r4, r3, r0
/* 00008370 00008434  3B FF 00 01 */	addi r31, r31, 0x1
.L_00008374:
/* 00008374 00008438  38 60 00 1F */	li r3, 0x1f
/* 00008378 0000843C  4B FF DE C5 */	bl pouchCheckItem
/* 0000837C 00008440  2C 03 00 00 */	cmpwi r3, 0x0
/* 00008380 00008444  40 81 00 1C */	ble .L_0000839C
/* 00008384 00008448  3C 60 00 00 */	lis r3, key_list@ha
/* 00008388 0000844C  57 E0 10 3A */	slwi r0, r31, 2
/* 0000838C 00008450  38 63 00 00 */	addi r3, r3, key_list@l
/* 00008390 00008454  38 80 00 1F */	li r4, 0x1f
/* 00008394 00008458  7C 83 01 2E */	stwx r4, r3, r0
/* 00008398 0000845C  3B FF 00 01 */	addi r31, r31, 0x1
.L_0000839C:
/* 0000839C 00008460  3C 60 00 00 */	lis r3, key_list@ha
/* 000083A0 00008464  57 E0 10 3A */	slwi r0, r31, 2
/* 000083A4 00008468  38 63 00 00 */	addi r3, r3, key_list@l
/* 000083A8 0000846C  38 80 FF FF */	li r4, -0x1
/* 000083AC 00008470  7C 83 01 2E */	stwx r4, r3, r0
/* 000083B0 00008474  38 60 00 02 */	li r3, 0x2
/* 000083B4 00008478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000083B8 0000847C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000083BC 00008480  7C 08 03 A6 */	mtlr r0
/* 000083C0 00008484  38 21 00 10 */	addi r1, r1, 0x10
/* 000083C4 00008488  4E 80 00 20 */	blr
.endfn make_list

# 0x00005D20..0x00005EE0 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x5D20 | size: 0xA
.obj str_S_door1_1_aji_00016b88, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00016b88

# .rodata:0xA | 0x5D2A | size: 0x2
.obj gap_03_00005D2A_rodata, global
.hidden gap_03_00005D2A_rodata
	.2byte 0x0000
.endobj gap_03_00005D2A_rodata

# .rodata:0xC | 0x5D2C | size: 0xA
.obj str_S_door1_2_aji_00016b94, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00016b94

# .rodata:0x16 | 0x5D36 | size: 0x2
.obj gap_03_00005D36_rodata, global
.hidden gap_03_00005D36_rodata
	.2byte 0x0000
.endobj gap_03_00005D36_rodata

# .rodata:0x18 | 0x5D38 | size: 0xA
.obj str_S_door2_1_aji_00016ba0, local
	.string "S_door2_1"
.endobj str_S_door2_1_aji_00016ba0

# .rodata:0x22 | 0x5D42 | size: 0x2
.obj gap_03_00005D42_rodata, global
.hidden gap_03_00005D42_rodata
	.2byte 0x0000
.endobj gap_03_00005D42_rodata

# .rodata:0x24 | 0x5D44 | size: 0xA
.obj str_S_door2_2_aji_00016bac, local
	.string "S_door2_2"
.endobj str_S_door2_2_aji_00016bac

# .rodata:0x2E | 0x5D4E | size: 0x2
.obj gap_03_00005D4E_rodata, global
.hidden gap_03_00005D4E_rodata
	.2byte 0x0000
.endobj gap_03_00005D4E_rodata

# .rodata:0x30 | 0x5D50 | size: 0x7
.obj str_w_bero_aji_00016bb8, local
	.string "w_bero"
.endobj str_w_bero_aji_00016bb8

# .rodata:0x37 | 0x5D57 | size: 0x1
.obj gap_03_00005D57_rodata, global
.hidden gap_03_00005D57_rodata
	.byte 0x00
.endobj gap_03_00005D57_rodata

# .rodata:0x38 | 0x5D58 | size: 0x7
.obj str_aji_01_aji_00016bc0, local
	.string "aji_01"
.endobj str_aji_01_aji_00016bc0

# .rodata:0x3F | 0x5D5F | size: 0x1
.obj gap_03_00005D5F_rodata, global
.hidden gap_03_00005D5F_rodata
	.byte 0x00
.endobj gap_03_00005D5F_rodata

# .rodata:0x40 | 0x5D60 | size: 0x9
.obj str_e_bero_4_aji_00016bc8, local
	.string "e_bero_4"
.endobj str_e_bero_4_aji_00016bc8

# .rodata:0x49 | 0x5D69 | size: 0x3
.obj gap_03_00005D69_rodata, global
.hidden gap_03_00005D69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D69_rodata

# .rodata:0x4C | 0x5D6C | size: 0x7
.obj str_e_bero_aji_00016bd4, local
	.string "e_bero"
.endobj str_e_bero_aji_00016bd4

# .rodata:0x53 | 0x5D73 | size: 0x1
.obj gap_03_00005D73_rodata, global
.hidden gap_03_00005D73_rodata
	.byte 0x00
.endobj gap_03_00005D73_rodata

# .rodata:0x54 | 0x5D74 | size: 0x7
.obj str_aji_13_aji_00016bdc, local
	.string "aji_13"
.endobj str_aji_13_aji_00016bdc

# .rodata:0x5B | 0x5D7B | size: 0x1
.obj gap_03_00005D7B_rodata, global
.hidden gap_03_00005D7B_rodata
	.byte 0x00
.endobj gap_03_00005D7B_rodata

# .rodata:0x5C | 0x5D7C | size: 0xC
.obj str_stg7_aji_67_aji_00016be4, local
	.string "stg7_aji_67"
.endobj str_stg7_aji_67_aji_00016be4

# .rodata:0x68 | 0x5D88 | size: 0xC
.obj str_S_kagi1_aka_aji_00016bf0, local
	.string "S_kagi1_aka"
.endobj str_S_kagi1_aka_aji_00016bf0

# .rodata:0x74 | 0x5D94 | size: 0xC
.obj str_S_kagi1_mid_aji_00016bfc, local
	.string "S_kagi1_mid"
.endobj str_S_kagi1_mid_aji_00016bfc

# .rodata:0x80 | 0x5DA0 | size: 0x16
.obj str_SFX_STG7_DOOR_UNLOCK_aji_00016c08, local
	.string "SFX_STG7_DOOR_UNLOCK1"
.endobj str_SFX_STG7_DOOR_UNLOCK_aji_00016c08

# .rodata:0x96 | 0x5DB6 | size: 0x2
.obj gap_03_00005DB6_rodata, global
.hidden gap_03_00005DB6_rodata
	.2byte 0x0000
.endobj gap_03_00005DB6_rodata

# .rodata:0x98 | 0x5DB8 | size: 0xF
.obj str_stg7_aji_67_01_aji_00016c20, local
	.string "stg7_aji_67_01"
.endobj str_stg7_aji_67_01_aji_00016c20

# .rodata:0xA7 | 0x5DC7 | size: 0x1
.obj gap_03_00005DC7_rodata, global
.hidden gap_03_00005DC7_rodata
	.byte 0x00
.endobj gap_03_00005DC7_rodata

# .rodata:0xA8 | 0x5DC8 | size: 0xC
.obj str_S_kagi2_aka_aji_00016c30, local
	.string "S_kagi2_aka"
.endobj str_S_kagi2_aka_aji_00016c30

# .rodata:0xB4 | 0x5DD4 | size: 0xC
.obj str_S_kagi2_mid_aji_00016c3c, local
	.string "S_kagi2_mid"
.endobj str_S_kagi2_mid_aji_00016c3c

# .rodata:0xC0 | 0x5DE0 | size: 0xC
.obj str_S_kagi3_aka_aji_00016c48, local
	.string "S_kagi3_aka"
.endobj str_S_kagi3_aka_aji_00016c48

# .rodata:0xCC | 0x5DEC | size: 0xC
.obj str_S_kagi3_mid_aji_00016c54, local
	.string "S_kagi3_mid"
.endobj str_S_kagi3_mid_aji_00016c54

# .rodata:0xD8 | 0x5DF8 | size: 0xC
.obj str_S_lights1_m_aji_00016c60, local
	.string "S_lights1_m"
.endobj str_S_lights1_m_aji_00016c60

# .rodata:0xE4 | 0x5E04 | size: 0xC
.obj str_S_lights1_r_aji_00016c6c, local
	.string "S_lights1_r"
.endobj str_S_lights1_r_aji_00016c6c

# .rodata:0xF0 | 0x5E10 | size: 0x14
.obj str_SFX_STG7_DOOR_LAMP1_aji_00016c78, local
	.string "SFX_STG7_DOOR_LAMP1"
.endobj str_SFX_STG7_DOOR_LAMP1_aji_00016c78

# .rodata:0x104 | 0x5E24 | size: 0xF
.obj str_stg7_aji_67_02_aji_00016c8c, local
	.string "stg7_aji_67_02"
.endobj str_stg7_aji_67_02_aji_00016c8c

# .rodata:0x113 | 0x5E33 | size: 0x1
.obj gap_03_00005E33_rodata, global
.hidden gap_03_00005E33_rodata
	.byte 0x00
.endobj gap_03_00005E33_rodata

# .rodata:0x114 | 0x5E34 | size: 0xC
.obj str_stg7_aji_43_aji_00016c9c, local
	.string "stg7_aji_43"
.endobj str_stg7_aji_43_aji_00016c9c

# .rodata:0x120 | 0x5E40 | size: 0xC
.obj str_stg7_aji_44_aji_00016ca8, local
	.string "stg7_aji_44"
.endobj str_stg7_aji_44_aji_00016ca8

# .rodata:0x12C | 0x5E4C | size: 0x17
.obj str_SFX_VOICE_MARIO_THIN_aji_00016cb4, local
	.string "SFX_VOICE_MARIO_THINK1"
.endobj str_SFX_VOICE_MARIO_THIN_aji_00016cb4

# .rodata:0x143 | 0x5E63 | size: 0x1
.obj gap_03_00005E63_rodata, global
.hidden gap_03_00005E63_rodata
	.byte 0x00
.endobj gap_03_00005E63_rodata

# .rodata:0x144 | 0x5E64 | size: 0x6
.obj str_M_I_Z_aji_00016ccc, local
	.string "M_I_Z"
.endobj str_M_I_Z_aji_00016ccc

# .rodata:0x14A | 0x5E6A | size: 0x2
.obj gap_03_00005E6A_rodata, global
.hidden gap_03_00005E6A_rodata
	.2byte 0x0000
.endobj gap_03_00005E6A_rodata

# .rodata:0x14C | 0x5E6C | size: 0x6
.obj str_M_S_1_aji_00016cd4, local
	.string "M_S_1"
.endobj str_M_S_1_aji_00016cd4

# .rodata:0x152 | 0x5E72 | size: 0x2
.obj gap_03_00005E72_rodata, global
.hidden gap_03_00005E72_rodata
	.2byte 0x0000
.endobj gap_03_00005E72_rodata

# .rodata:0x154 | 0x5E74 | size: 0xC
.obj str_stg7_aji_45_aji_00016cdc, local
	.string "stg7_aji_45"
.endobj str_stg7_aji_45_aji_00016cdc

# .rodata:0x160 | 0x5E80 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_aji_00016ce8, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_aji_00016ce8

# .rodata:0x177 | 0x5E97 | size: 0x1
.obj gap_03_00005E97_rodata, global
.hidden gap_03_00005E97_rodata
	.byte 0x00
.endobj gap_03_00005E97_rodata

# .rodata:0x178 | 0x5E98 | size: 0x6
.obj str_M_N_2_aji_00016d00, local
	.string "M_N_2"
.endobj str_M_N_2_aji_00016d00

# .rodata:0x17E | 0x5E9E | size: 0x2
.obj gap_03_00005E9E_rodata, global
.hidden gap_03_00005E9E_rodata
	.2byte 0x0000
.endobj gap_03_00005E9E_rodata

# .rodata:0x180 | 0x5EA0 | size: 0x4
.obj zero_aji_00016d08, local
	.4byte 0x00000000
.endobj zero_aji_00016d08

# .rodata:0x184 | 0x5EA4 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00016d0c, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00016d0c

# .rodata:0x192 | 0x5EB2 | size: 0x2
.obj gap_03_00005EB2_rodata, global
.hidden gap_03_00005EB2_rodata
	.2byte 0x0000
.endobj gap_03_00005EB2_rodata

# .rodata:0x194 | 0x5EB4 | size: 0xE
.obj str_ENV_STG7_AJI1_aji_00016d1c, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_00016d1c

# .rodata:0x1A2 | 0x5EC2 | size: 0x2
.obj gap_03_00005EC2_rodata, global
.hidden gap_03_00005EC2_rodata
	.2byte 0x0000
.endobj gap_03_00005EC2_rodata

# .rodata:0x1A4 | 0x5EC4 | size: 0x8
.obj str_A_kagi1_aji_00016d2c, local
	.string "A_kagi1"
.endobj str_A_kagi1_aji_00016d2c

# .rodata:0x1AC | 0x5ECC | size: 0x8
.obj str_A_kagi2_aji_00016d34, local
	.string "A_kagi2"
.endobj str_A_kagi2_aji_00016d34

# .rodata:0x1B4 | 0x5ED4 | size: 0x8
.obj str_A_kagi3_aji_00016d3c, local
	.string "A_kagi3"
.endobj str_A_kagi3_aji_00016d3c

# .rodata:0x1BC | 0x5EDC | size: 0x4
.obj gap_03_00005EDC_rodata, global
.hidden gap_03_00005EDC_rodata
	.4byte 0x00000000
.endobj gap_03_00005EDC_rodata

# 0x0002D900..0x0002E650 | size: 0xD50
.data
.balign 8

# .data:0x0 | 0x2D900 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2D908 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2D90C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2D910 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2D914 | size: 0x4
.obj gap_04_0002D914_data, global
.hidden gap_04_0002D914_data
	.4byte 0x00000000
.endobj gap_04_0002D914_data

# .data:0x18 | 0x2D918 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2D920 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2D924 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2D928 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2D930 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2D934 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2D938 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2D93C | size: 0x4
.obj gap_04_0002D93C_data, global
.hidden gap_04_0002D93C_data
	.4byte 0x00000000
.endobj gap_04_0002D93C_data

# .data:0x40 | 0x2D940 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2D948 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2D94C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2D950 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00016b88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00016b94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x2D9A8 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00016b88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00016b94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x2DA00 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_1_aji_00016ba0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_2_aji_00016bac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x2DA58 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_1_aji_00016ba0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door2_2_aji_00016bac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x2DAB0 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00016bb8
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00016bc0
	.4byte str_e_bero_4_aji_00016bc8
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_13_aji_00016bdc
	.4byte str_w_bero_aji_00016bb8
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

# .data:0x264 | 0x2DB64 | size: 0x428
.obj evt_machine, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_67_aji_00016be4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001D
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001E
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001F
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte make_list
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_list
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x0000001D
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi1_aka_aji_00016bf0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi1_mid_aji_00016bfc
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BDF
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DOOR_UNLOCK_aji_00016c08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_67_01_aji_00016c20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x0000001E
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi2_aka_aji_00016c30
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi2_mid_aji_00016c3c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BE0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DOOR_UNLOCK_aji_00016c08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_67_01_aji_00016c20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x0000001F
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi3_aka_aji_00016c48
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi3_mid_aji_00016c54
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BE1
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DOOR_UNLOCK_aji_00016c08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_67_01_aji_00016c20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF8406BDF
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BE0
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BE1
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000171
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF74
	.4byte 0x0000005A
	.4byte 0x00000171
	.4byte 0x00000096
	.4byte 0x0000003C
	.4byte 0xFFFFFF9E
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_m_aji_00016c60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_r_aji_00016c6c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DOOR_LAMP1_aji_00016c78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_machine

# .data:0x68C | 0x2DF8C | size: 0x38
.obj key_lock_koujyou, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_67_02_aji_00016c8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj key_lock_koujyou

# .data:0x6C4 | 0x2DFC4 | size: 0x1D8
.obj evt_koopa_after, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_43_aji_00016c9c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005F
	.4byte 0x00000037
	.4byte 0x00000124
	.4byte 0x0000005F
	.4byte 0x00000029
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_44_aji_00016ca8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_THIN_aji_00016cb4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_aji_00016ccc
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_aji_00016cd4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg7_aji_45_aji_00016cdc
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_aji_00016ce8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_aji_00016d00
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_aji_00016cd4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_koopa_after

# .data:0x89C | 0x2E19C | size: 0x4B4
.obj aji_18_init_evt_2_data_2E19C, global
	.4byte 0x0001005B
	.4byte sysflag
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00016d0c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00016d1c
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000171
	.4byte 0x00020032
	.4byte 0xF8406BDF
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BE0
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406BE1
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BDF
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi1_aka_aji_00016bf0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi1_mid_aji_00016bfc
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi1_aka_aji_00016bf0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi1_mid_aji_00016bfc
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi2_aka_aji_00016c30
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi2_mid_aji_00016c3c
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi2_aka_aji_00016c30
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi2_mid_aji_00016c3c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE1
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi3_aka_aji_00016c48
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi3_mid_aji_00016c54
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi3_aka_aji_00016c48
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi3_mid_aji_00016c54
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001D
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001E
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000001F
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xF8406BDF
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi1_aji_00016d2c
	.4byte 0x00000000
	.4byte evt_machine
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi2_aji_00016d34
	.4byte 0x00000000
	.4byte evt_machine
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BE1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi3_aji_00016d3c
	.4byte 0x00000000
	.4byte evt_machine
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000171
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x00000000
	.4byte key_lock_koujyou
	.4byte 0xFD050F8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_m_aji_00016c60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_r_aji_00016c6c
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_m_aji_00016c60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_r_aji_00016c6c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000177
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x00000000
	.4byte key_lock_koujyou
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_lights1_m_aji_00016c60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_lights1_r_aji_00016c6c
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000177
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_e_bero_aji_00016bd4
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_set_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_pouch_mario_recovery
	.4byte 0x0001005B
	.4byte evt_pouch_all_party_recovery
	.4byte 0x0001005B
	.4byte N_evt_sub_status_gauge_force_update
	.4byte 0x0001005C
	.4byte evt_koopa_after
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_18_init_evt_2_data_2E19C

# 0x00000190..0x000001A0 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x190 | size: 0x10
.obj key_list, local
	.skip 0x10
.endobj key_list
