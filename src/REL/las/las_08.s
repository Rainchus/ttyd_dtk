.include "macros.inc"
.file "las_08.o"

# 0x00004950..0x00004A80 | size: 0x130
.text
.balign 4

# .text:0x0 | 0x4950 | size: 0x54
.fn mugen_kairou_get_list, local
/* 00004950 00004A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004954 00004A20  7C 08 02 A6 */	mflr r0
/* 00004958 00004A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000495C 00004A28  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004960 00004A2C  7C 7E 1B 78 */	mr r30, r3
/* 00004964 00004A30  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004968 00004A34  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000496C 00004A38  4B FF B7 D1 */	bl evtGetValue
/* 00004970 00004A3C  3C A0 00 00 */	lis r5, mugen_kairou_list@ha
/* 00004974 00004A40  54 60 10 3A */	slwi r0, r3, 2
/* 00004978 00004A44  38 A5 00 00 */	addi r5, r5, mugen_kairou_list@l
/* 0000497C 00004A48  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004980 00004A4C  7C A5 00 2E */	lwzx r5, r5, r0
/* 00004984 00004A50  7F C3 F3 78 */	mr r3, r30
/* 00004988 00004A54  4B FF B7 B5 */	bl evtSetValue
/* 0000498C 00004A58  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004990 00004A5C  38 60 00 02 */	li r3, 0x2
/* 00004994 00004A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004998 00004A64  7C 08 03 A6 */	mtlr r0
/* 0000499C 00004A68  38 21 00 10 */	addi r1, r1, 0x10
/* 000049A0 00004A6C  4E 80 00 20 */	blr
.endfn mugen_kairou_get_list

# .text:0x54 | 0x49A4 | size: 0xDC
.fn hi_onoff, local
/* 000049A4 00004A70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000049A8 00004A74  7C 08 02 A6 */	mflr r0
/* 000049AC 00004A78  90 01 00 34 */	stw r0, 0x34(r1)
/* 000049B0 00004A7C  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000049B4 00004A80  7C 7D 1B 78 */	mr r29, r3
/* 000049B8 00004A84  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000049BC 00004A88  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000049C0 00004A8C  4B FF B7 7D */	bl evtGetValue
/* 000049C4 00004A90  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000049C8 00004A94  7C 7F 1B 78 */	mr r31, r3
/* 000049CC 00004A98  7F A3 EB 78 */	mr r3, r29
/* 000049D0 00004A9C  4B FF B7 6D */	bl evtGetValue
/* 000049D4 00004AA0  3C 80 00 00 */	lis r4, taimatu_data@ha
/* 000049D8 00004AA4  57 FE 18 38 */	slwi r30, r31, 3
/* 000049DC 00004AA8  38 84 00 00 */	addi r4, r4, taimatu_data@l
/* 000049E0 00004AAC  7C 7F 1B 78 */	mr r31, r3
/* 000049E4 00004AB0  7C 64 F0 2E */	lwzx r3, r4, r30
/* 000049E8 00004AB4  4B FF B7 55 */	bl mapGetMapObj
/* 000049EC 00004AB8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 000049F0 00004ABC  41 82 00 54 */	beq .L_00004A44
/* 000049F4 00004AC0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 000049F8 00004AC4  3C 80 00 00 */	lis r4, taimatu_data@ha
/* 000049FC 00004AC8  38 04 00 00 */	addi r0, r4, taimatu_data@l
/* 00004A00 00004ACC  54 A5 00 3C */	clrrwi r5, r5, 1
/* 00004A04 00004AD0  38 81 00 08 */	addi r4, r1, 0x8
/* 00004A08 00004AD4  90 A3 00 00 */	stw r5, 0x0(r3)
/* 00004A0C 00004AD8  7F C0 F2 14 */	add r30, r0, r30
/* 00004A10 00004ADC  84 7E 00 04 */	lwzu r3, 0x4(r30)
/* 00004A14 00004AE0  4B FF B7 29 */	bl hitObjGetPos
/* 00004A18 00004AE4  3C 60 00 00 */	lis r3, float_0p7_las_000127c0@ha
/* 00004A1C 00004AE8  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00004A20 00004AEC  38 83 00 00 */	addi r4, r3, float_0p7_las_000127c0@l
/* 00004A24 00004AF0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00004A28 00004AF4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 00004A2C 00004AF8  38 60 00 00 */	li r3, 0x0
/* 00004A30 00004AFC  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00004A34 00004B00  4B FF B7 09 */	bl effTorchEntry
/* 00004A38 00004B04  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00004A3C 00004B08  4B FF B7 01 */	bl effSetName
/* 00004A40 00004B0C  48 00 00 28 */	b .L_00004A68
.L_00004A44:
/* 00004A44 00004B10  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 00004A48 00004B14  3C 80 00 00 */	lis r4, taimatu_data@ha
/* 00004A4C 00004B18  38 04 00 00 */	addi r0, r4, taimatu_data@l
/* 00004A50 00004B1C  60 A4 00 01 */	ori r4, r5, 0x1
/* 00004A54 00004B20  90 83 00 00 */	stw r4, 0x0(r3)
/* 00004A58 00004B24  7C 60 F2 14 */	add r3, r0, r30
/* 00004A5C 00004B28  80 63 00 04 */	lwz r3, 0x4(r3)
/* 00004A60 00004B2C  4B FF B6 DD */	bl effNameToPtr
/* 00004A64 00004B30  4B FF B6 D9 */	bl effSoftDelete
.L_00004A68:
/* 00004A68 00004B34  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00004A6C 00004B38  38 60 00 02 */	li r3, 0x2
/* 00004A70 00004B3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00004A74 00004B40  7C 08 03 A6 */	mtlr r0
/* 00004A78 00004B44  38 21 00 30 */	addi r1, r1, 0x30
/* 00004A7C 00004B48  4E 80 00 20 */	blr
.endfn hi_onoff

# 0x00000BE8..0x00000D60 | size: 0x178
.rodata
.balign 8

# .rodata:0x0 | 0xBE8 | size: 0xC
.obj str_S_doa_l1_01_las_00012650, local
	.string "S_doa_l1_01"
.endobj str_S_doa_l1_01_las_00012650

# .rodata:0xC | 0xBF4 | size: 0xC
.obj str_S_doa_l1_02_las_0001265c, local
	.string "S_doa_l1_02"
.endobj str_S_doa_l1_02_las_0001265c

# .rodata:0x18 | 0xC00 | size: 0xC
.obj str_S_doa_l2_01_las_00012668, local
	.string "S_doa_l2_01"
.endobj str_S_doa_l2_01_las_00012668

# .rodata:0x24 | 0xC0C | size: 0xC
.obj str_S_doa_l2_02_las_00012674, local
	.string "S_doa_l2_02"
.endobj str_S_doa_l2_02_las_00012674

# .rodata:0x30 | 0xC18 | size: 0xC
.obj str_S_doa_r1_01_las_00012680, local
	.string "S_doa_r1_01"
.endobj str_S_doa_r1_01_las_00012680

# .rodata:0x3C | 0xC24 | size: 0xC
.obj str_S_doa_r1_02_las_0001268c, local
	.string "S_doa_r1_02"
.endobj str_S_doa_r1_02_las_0001268c

# .rodata:0x48 | 0xC30 | size: 0xC
.obj str_S_doa_r2_01_las_00012698, local
	.string "S_doa_r2_01"
.endobj str_S_doa_r2_01_las_00012698

# .rodata:0x54 | 0xC3C | size: 0xC
.obj str_S_doa_r2_02_las_000126a4, local
	.string "S_doa_r2_02"
.endobj str_S_doa_r2_02_las_000126a4

# .rodata:0x60 | 0xC48 | size: 0x9
.obj str_w_bero_1_las_000126b0, local
	.string "w_bero_1"
.endobj str_w_bero_1_las_000126b0

# .rodata:0x69 | 0xC51 | size: 0x3
.obj gap_03_00000C51_rodata, global
.hidden gap_03_00000C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C51_rodata

# .rodata:0x6C | 0xC54 | size: 0x7
.obj str_las_07_las_000126bc, local
	.string "las_07"
.endobj str_las_07_las_000126bc

# .rodata:0x73 | 0xC5B | size: 0x1
.obj gap_03_00000C5B_rodata, global
.hidden gap_03_00000C5B_rodata
	.byte 0x00
.endobj gap_03_00000C5B_rodata

# .rodata:0x74 | 0xC5C | size: 0x9
.obj str_e_bero_1_las_000126c4, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_000126c4

# .rodata:0x7D | 0xC65 | size: 0x3
.obj gap_03_00000C65_rodata, global
.hidden gap_03_00000C65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C65_rodata

# .rodata:0x80 | 0xC68 | size: 0x7
.obj str_las_09_las_000126d0, local
	.string "las_09"
.endobj str_las_09_las_000126d0

# .rodata:0x87 | 0xC6F | size: 0x1
.obj gap_03_00000C6F_rodata, global
.hidden gap_03_00000C6F_rodata
	.byte 0x00
.endobj gap_03_00000C6F_rodata

# .rodata:0x88 | 0xC70 | size: 0x7
.obj str_w_bero_las_000126d8, local
	.string "w_bero"
.endobj str_w_bero_las_000126d8

# .rodata:0x8F | 0xC77 | size: 0x1
.obj gap_03_00000C77_rodata, global
.hidden gap_03_00000C77_rodata
	.byte 0x00
.endobj gap_03_00000C77_rodata

# .rodata:0x90 | 0xC78 | size: 0x9
.obj str_w_bero_2_las_000126e0, local
	.string "w_bero_2"
.endobj str_w_bero_2_las_000126e0

# .rodata:0x99 | 0xC81 | size: 0x3
.obj gap_03_00000C81_rodata, global
.hidden gap_03_00000C81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C81_rodata

# .rodata:0x9C | 0xC84 | size: 0x9
.obj str_e_bero_2_las_000126ec, local
	.string "e_bero_2"
.endobj str_e_bero_2_las_000126ec

# .rodata:0xA5 | 0xC8D | size: 0x3
.obj gap_03_00000C8D_rodata, global
.hidden gap_03_00000C8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C8D_rodata

# .rodata:0xA8 | 0xC90 | size: 0x7
.obj str_las_08_las_000126f8, local
	.string "las_08"
.endobj str_las_08_las_000126f8

# .rodata:0xAF | 0xC97 | size: 0x1
.obj gap_03_00000C97_rodata, global
.hidden gap_03_00000C97_rodata
	.byte 0x00
.endobj gap_03_00000C97_rodata

# .rodata:0xB0 | 0xC98 | size: 0xC
.obj str_S_hikari_01_las_00012700, local
	.string "S_hikari_01"
.endobj str_S_hikari_01_las_00012700

# .rodata:0xBC | 0xCA4 | size: 0x8
.obj str_A_hi_01_las_0001270c, local
	.string "A_hi_01"
.endobj str_A_hi_01_las_0001270c

# .rodata:0xC4 | 0xCAC | size: 0xC
.obj str_S_hikari_02_las_00012714, local
	.string "S_hikari_02"
.endobj str_S_hikari_02_las_00012714

# .rodata:0xD0 | 0xCB8 | size: 0x8
.obj str_A_hi_02_las_00012720, local
	.string "A_hi_02"
.endobj str_A_hi_02_las_00012720

# .rodata:0xD8 | 0xCC0 | size: 0xC
.obj str_S_hikari_03_las_00012728, local
	.string "S_hikari_03"
.endobj str_S_hikari_03_las_00012728

# .rodata:0xE4 | 0xCCC | size: 0x8
.obj str_A_hi_03_las_00012734, local
	.string "A_hi_03"
.endobj str_A_hi_03_las_00012734

# .rodata:0xEC | 0xCD4 | size: 0xC
.obj str_S_hikari_04_las_0001273c, local
	.string "S_hikari_04"
.endobj str_S_hikari_04_las_0001273c

# .rodata:0xF8 | 0xCE0 | size: 0x8
.obj str_A_hi_04_las_00012748, local
	.string "A_hi_04"
.endobj str_A_hi_04_las_00012748

# .rodata:0x100 | 0xCE8 | size: 0xC
.obj str_S_hikari_05_las_00012750, local
	.string "S_hikari_05"
.endobj str_S_hikari_05_las_00012750

# .rodata:0x10C | 0xCF4 | size: 0x8
.obj str_A_hi_05_las_0001275c, local
	.string "A_hi_05"
.endobj str_A_hi_05_las_0001275c

# .rodata:0x114 | 0xCFC | size: 0xC
.obj str_S_hikari_06_las_00012764, local
	.string "S_hikari_06"
.endobj str_S_hikari_06_las_00012764

# .rodata:0x120 | 0xD08 | size: 0x8
.obj str_A_hi_06_las_00012770, local
	.string "A_hi_06"
.endobj str_A_hi_06_las_00012770

# .rodata:0x128 | 0xD10 | size: 0xC
.obj str_S_hikari_07_las_00012778, local
	.string "S_hikari_07"
.endobj str_S_hikari_07_las_00012778

# .rodata:0x134 | 0xD1C | size: 0x8
.obj str_A_hi_07_las_00012784, local
	.string "A_hi_07"
.endobj str_A_hi_07_las_00012784

# .rodata:0x13C | 0xD24 | size: 0xC
.obj str_S_hikari_08_las_0001278c, local
	.string "S_hikari_08"
.endobj str_S_hikari_08_las_0001278c

# .rodata:0x148 | 0xD30 | size: 0x8
.obj str_A_hi_08_las_00012798, local
	.string "A_hi_08"
.endobj str_A_hi_08_las_00012798

# .rodata:0x150 | 0xD38 | size: 0xE
.obj str_BGM_STG8_LST1_las_000127a0, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_000127a0

# .rodata:0x15E | 0xD46 | size: 0x2
.obj gap_03_00000D46_rodata, global
.hidden gap_03_00000D46_rodata
	.2byte 0x0000
.endobj gap_03_00000D46_rodata

# .rodata:0x160 | 0xD48 | size: 0xE
.obj str_ENV_STG8_LAS1_las_000127b0, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_000127b0
	.2byte 0x0000

# .rodata:0x170 | 0xD58 | size: 0x4
.obj float_0p7_las_000127c0, local
	.float 0.7
.endobj float_0p7_las_000127c0

# .rodata:0x174 | 0xD5C | size: 0x4
.obj gap_03_00000D5C_rodata, global
.hidden gap_03_00000D5C_rodata
	.4byte 0x00000000
.endobj gap_03_00000D5C_rodata

# 0x00004328..0x00004BF0 | size: 0x8C8
.data
.balign 8

# .data:0x0 | 0x4328 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4330 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4334 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4338 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x433C | size: 0x4
.obj gap_04_0000433C_data, global
.hidden gap_04_0000433C_data
	.4byte 0x00000000
.endobj gap_04_0000433C_data

# .data:0x18 | 0x4340 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4348 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x434C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4350 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4358 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x435C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4360 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4364 | size: 0x4
.obj gap_04_00004364_data, global
.hidden gap_04_00004364_data
	.4byte 0x00000000
.endobj gap_04_00004364_data

# .data:0x40 | 0x4368 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4370 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4374 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4378 | size: 0x58
.obj w1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l1_01_las_00012650
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l1_02_las_0001265c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w1_door_close

# .data:0xA8 | 0x43D0 | size: 0x58
.obj w1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l1_01_las_00012650
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l1_02_las_0001265c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w1_door_open

# .data:0x100 | 0x4428 | size: 0x58
.obj w2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l2_01_las_00012668
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l2_02_las_00012674
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w2_door_close

# .data:0x158 | 0x4480 | size: 0x58
.obj w2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l2_01_las_00012668
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l2_02_las_00012674
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w2_door_open

# .data:0x1B0 | 0x44D8 | size: 0x58
.obj e1_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r1_01_las_00012680
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r1_02_las_0001268c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e1_door_close

# .data:0x208 | 0x4530 | size: 0x58
.obj e1_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r1_01_las_00012680
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r1_02_las_0001268c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e1_door_open

# .data:0x260 | 0x4588 | size: 0x58
.obj e2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_01_las_00012698
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_02_las_000126a4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e2_door_close

# .data:0x2B8 | 0x45E0 | size: 0x58
.obj e2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_01_las_00012698
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r2_02_las_000126a4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e2_door_open

# .data:0x310 | 0x4638 | size: 0x3C
.obj door_matigai_evt, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000181
	.4byte 0x00020032
	.4byte 0xF5DE05E1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406C65
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_matigai_evt

# .data:0x34C | 0x4674 | size: 0x4C
.obj door_seikai_evt, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000181
	.4byte 0x00020035
	.4byte 0xF5DE05E1
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xF5DE05E1
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000182
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_seikai_evt

# .data:0x398 | 0x46C0 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_1_las_000126b0
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_matigai_evt
	.4byte str_las_07_las_000126bc
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x00050005
	.4byte w1_door_close
	.4byte w1_door_open
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_seikai_evt
	.4byte str_las_09_las_000126d0
	.4byte str_w_bero_las_000126d8
	.4byte 0x00050005
	.4byte e1_door_close
	.4byte e1_door_open
	.4byte str_w_bero_2_las_000126e0
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_matigai_evt
	.4byte str_las_07_las_000126bc
	.4byte str_e_bero_2_las_000126ec
	.4byte 0x00050005
	.4byte w2_door_close
	.4byte w2_door_open
	.4byte str_e_bero_2_las_000126ec
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_matigai_evt
	.4byte str_las_07_las_000126bc
	.4byte str_w_bero_2_las_000126e0
	.4byte 0x00050005
	.4byte e2_door_close
	.4byte e2_door_open
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

# .data:0x4C4 | 0x47EC | size: 0x3C
.obj e_bero_1_matigai, local
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_matigai_evt
	.4byte str_las_07_las_000126bc
	.4byte str_w_bero_1_las_000126b0
	.4byte 0x00050005
	.4byte e1_door_close
	.4byte e1_door_open
.endobj e_bero_1_matigai

# .data:0x500 | 0x4828 | size: 0x3C
.obj e_bero_1_seikai, local
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_seikai_evt
	.4byte str_las_08_las_000126f8
	.4byte str_w_bero_1_las_000126b0
	.4byte 0x00050005
	.4byte e1_door_close
	.4byte e1_door_open
.endobj e_bero_1_seikai

# .data:0x53C | 0x4864 | size: 0x3C
.obj e_bero_2_seikai, local
	.4byte str_e_bero_2_las_000126ec
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte door_seikai_evt
	.4byte str_las_08_las_000126f8
	.4byte str_w_bero_2_las_000126e0
	.4byte 0x00050005
	.4byte e2_door_close
	.4byte e2_door_open
.endobj e_bero_2_seikai

# .data:0x578 | 0x48A0 | size: 0x40
.obj taimatu_data, local
	.4byte str_S_hikari_01_las_00012700
	.4byte str_A_hi_01_las_0001270c
	.4byte str_S_hikari_02_las_00012714
	.4byte str_A_hi_02_las_00012720
	.4byte str_S_hikari_03_las_00012728
	.4byte str_A_hi_03_las_00012734
	.4byte str_S_hikari_04_las_0001273c
	.4byte str_A_hi_04_las_00012748
	.4byte str_S_hikari_05_las_00012750
	.4byte str_A_hi_05_las_0001275c
	.4byte str_S_hikari_06_las_00012764
	.4byte str_A_hi_06_las_00012770
	.4byte str_S_hikari_07_las_00012778
	.4byte str_A_hi_07_las_00012784
	.4byte str_S_hikari_08_las_0001278c
	.4byte str_A_hi_08_las_00012798
.endobj taimatu_data

# .data:0x5B8 | 0x48E0 | size: 0xD0
.obj hikari_anim, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xF24A7B4C
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24A7DB3
	.4byte 0x0001003E
	.4byte taimatu_data
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x00020040
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C81
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikari_anim

# .data:0x688 | 0x49B0 | size: 0x48
.obj taimatu_evt, local
	.4byte 0x0001003E
	.4byte taimatu_data
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x00020040
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte hikari_anim
	.4byte 0x00000002
	.4byte 0x00000001
.endobj taimatu_evt

# .data:0x6D0 | 0x49F8 | size: 0x1C
.obj mugen_kairou_list, local
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
.endobj mugen_kairou_list

# .data:0x6EC | 0x4A14 | size: 0x180
.obj mugen_kairou_init, local
	.4byte 0x0001005E
	.4byte taimatu_evt
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000181
	.4byte 0x0003005B
	.4byte mugen_kairou_get_list
	.4byte 0xF5DE05E1
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte hi_onoff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte mugen_kairou_get_list
	.4byte 0xF5DE05E1
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0002001A
	.4byte 0xF5DE05E1
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_1_las_000126c4
	.4byte e_bero_1_seikai
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_2_las_000126ec
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_2_las_000126ec
	.4byte e_bero_2_seikai
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_2_las_000126ec
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_e_bero_1_las_000126c4
	.4byte e_bero_1_matigai
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_e_bero_1_las_000126c4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte hi_onoff
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte hi_onoff
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte hi_onoff
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte hi_onoff
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mugen_kairou_init

# .data:0x86C | 0x4B94 | size: 0x58
.obj las_08_init_evt_16_data_4B94, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_000127a0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_000127b0
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte mugen_kairou_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_08_init_evt_16_data_4B94

# .data:0x8C4 | 0x4BEC | size: 0x4
.obj gap_04_00004BEC_data, global
.hidden gap_04_00004BEC_data
	.4byte 0x00000000
.endobj gap_04_00004BEC_data
