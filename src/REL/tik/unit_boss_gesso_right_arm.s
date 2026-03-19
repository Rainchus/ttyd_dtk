.include "macros.inc"
.file "unit_boss_gesso_right_arm.o"

# 0x00005770..0x00005818 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x5770 | size: 0xA8
.fn _check_zenei_kouei, local
/* 00005770 00005834  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00005774 00005838  7C 08 02 A6 */	mflr r0
/* 00005778 0000583C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000577C 00005840  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005780 00005844  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00005784 00005848  7C 7D 1B 78 */	mr r29, r3
/* 00005788 0000584C  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000578C 00005850  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00005790 00005854  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00005794 00005858  4B FF A9 B5 */	bl evtGetValue
/* 00005798 0000585C  83 DE 00 04 */	lwz r30, 0x4(r30)
/* 0000579C 00005860  7C 64 1B 78 */	mr r4, r3
/* 000057A0 00005864  7F A3 EB 78 */	mr r3, r29
/* 000057A4 00005868  4B FF A9 A5 */	bl BattleTransID
/* 000057A8 0000586C  7C 64 1B 78 */	mr r4, r3
/* 000057AC 00005870  7F E3 FB 78 */	mr r3, r31
/* 000057B0 00005874  4B FF A9 99 */	bl BattleGetUnitPtr
/* 000057B4 00005878  38 81 00 10 */	addi r4, r1, 0x10
/* 000057B8 0000587C  38 A1 00 0C */	addi r5, r1, 0xc
/* 000057BC 00005880  38 C1 00 08 */	addi r6, r1, 0x8
/* 000057C0 00005884  4B FF A9 89 */	bl BtlUnit_GetPos
/* 000057C4 00005888  3C 60 00 00 */	lis r3, float_neg120_tik_0000b9b0@ha
/* 000057C8 0000588C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000057CC 00005890  C0 03 00 00 */	lfs f0, float_neg120_tik_0000b9b0@l(r3)
/* 000057D0 00005894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000057D4 00005898  4C 41 13 82 */	cror eq, gt, eq
/* 000057D8 0000589C  40 82 00 18 */	bne .L_000057F0
/* 000057DC 000058A0  7F A3 EB 78 */	mr r3, r29
/* 000057E0 000058A4  7F C4 F3 78 */	mr r4, r30
/* 000057E4 000058A8  38 A0 00 00 */	li r5, 0x0
/* 000057E8 000058AC  4B FF A9 61 */	bl evtSetValue
/* 000057EC 000058B0  48 00 00 14 */	b .L_00005800
.L_000057F0:
/* 000057F0 000058B4  7F A3 EB 78 */	mr r3, r29
/* 000057F4 000058B8  7F C4 F3 78 */	mr r4, r30
/* 000057F8 000058BC  38 A0 00 01 */	li r5, 0x1
/* 000057FC 000058C0  4B FF A9 4D */	bl evtSetValue
.L_00005800:
/* 00005800 000058C4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00005804 000058C8  38 60 00 02 */	li r3, 0x2
/* 00005808 000058CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000580C 000058D0  7C 08 03 A6 */	mtlr r0
/* 00005810 000058D4  38 21 00 30 */	addi r1, r1, 0x30
/* 00005814 000058D8  4E 80 00 20 */	blr
.endfn _check_zenei_kouei

# 0x000039A0..0x00003B50 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x39A0 | size: 0x17
.obj str_btl_un_gesso_right_a_tik_0000b808, local
	.string "btl_un_gesso_right_arm"
.endobj str_btl_un_gesso_right_a_tik_0000b808

# .rodata:0x17 | 0x39B7 | size: 0x1
.obj gap_03_000039B7_rodata, global
.hidden gap_03_000039B7_rodata
	.byte 0x00
.endobj gap_03_000039B7_rodata

# .rodata:0x18 | 0x39B8 | size: 0x18
.obj str_SFX_BOSS_GESSO_DAMAG_tik_0000b820, local
	.string "SFX_BOSS_GESSO_DAMAGED1"
.endobj str_SFX_BOSS_GESSO_DAMAG_tik_0000b820

# .rodata:0x30 | 0x39D0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000b838, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000b838

# .rodata:0x45 | 0x39E5 | size: 0x3
.obj gap_03_000039E5_rodata, global
.hidden gap_03_000039E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000039E5_rodata

# .rodata:0x48 | 0x39E8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000b850, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000b850

# .rodata:0x5C | 0x39FC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000b864, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000b864

# .rodata:0x75 | 0x3A15 | size: 0x3
.obj gap_03_00003A15_rodata, global
.hidden gap_03_00003A15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A15_rodata

# .rodata:0x78 | 0x3A18 | size: 0x9
.obj str_GSO_S1_1_tik_0000b880, local
	.string "GSO_S1_1"
.endobj str_GSO_S1_1_tik_0000b880

# .rodata:0x81 | 0x3A21 | size: 0x3
.obj gap_03_00003A21_rodata, global
.hidden gap_03_00003A21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A21_rodata

# .rodata:0x84 | 0x3A24 | size: 0x9
.obj str_GSO_D1_1_tik_0000b88c, local
	.string "GSO_D1_1"
.endobj str_GSO_D1_1_tik_0000b88c

# .rodata:0x8D | 0x3A2D | size: 0x3
.obj gap_03_00003A2D_rodata, global
.hidden gap_03_00003A2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A2D_rodata

# .rodata:0x90 | 0x3A30 | size: 0x9
.obj str_c_gesso2_tik_0000b898, local
	.string "c_gesso2"
.endobj str_c_gesso2_tik_0000b898

# .rodata:0x99 | 0x3A39 | size: 0x3
.obj gap_03_00003A39_rodata, global
.hidden gap_03_00003A39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A39_rodata

# .rodata:0x9C | 0x3A3C | size: 0xF
.obj str_tik_02_gs_04_1_tik_0000b8a4, local
	.string "tik_02_gs_04_1"
.endobj str_tik_02_gs_04_1_tik_0000b8a4

# .rodata:0xAB | 0x3A4B | size: 0x1
.obj gap_03_00003A4B_rodata, global
.hidden gap_03_00003A4B_rodata
	.byte 0x00
.endobj gap_03_00003A4B_rodata

# .rodata:0xAC | 0x3A4C | size: 0xF
.obj str_tik_02_gs_04_2_tik_0000b8b4, local
	.string "tik_02_gs_04_2"
.endobj str_tik_02_gs_04_2_tik_0000b8b4

# .rodata:0xBB | 0x3A5B | size: 0x1
.obj gap_03_00003A5B_rodata, global
.hidden gap_03_00003A5B_rodata
	.byte 0x00
.endobj gap_03_00003A5B_rodata

# .rodata:0xBC | 0x3A5C | size: 0xF
.obj str_tik_02_gs_04_3_tik_0000b8c4, local
	.string "tik_02_gs_04_3"
.endobj str_tik_02_gs_04_3_tik_0000b8c4

# .rodata:0xCB | 0x3A6B | size: 0x1
.obj gap_03_00003A6B_rodata, global
.hidden gap_03_00003A6B_rodata
	.byte 0x00
.endobj gap_03_00003A6B_rodata

# .rodata:0xCC | 0x3A6C | size: 0x11
.obj str_tik_02_gs_04_3_y_tik_0000b8d4, local
	.string "tik_02_gs_04_3_y"
.endobj str_tik_02_gs_04_3_y_tik_0000b8d4

# .rodata:0xDD | 0x3A7D | size: 0x3
.obj gap_03_00003A7D_rodata, global
.hidden gap_03_00003A7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A7D_rodata

# .rodata:0xE0 | 0x3A80 | size: 0x11
.obj str_tik_02_gs_04_3_n_tik_0000b8e8, local
	.string "tik_02_gs_04_3_n"
.endobj str_tik_02_gs_04_3_n_tik_0000b8e8

# .rodata:0xF1 | 0x3A91 | size: 0x3
.obj gap_03_00003A91_rodata, global
.hidden gap_03_00003A91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A91_rodata

# .rodata:0xF4 | 0x3A94 | size: 0x9
.obj str_GSO_A1_1_tik_0000b8fc, local
	.string "GSO_A1_1"
.endobj str_GSO_A1_1_tik_0000b8fc

# .rodata:0xFD | 0x3A9D | size: 0x3
.obj gap_03_00003A9D_rodata, global
.hidden gap_03_00003A9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A9D_rodata

# .rodata:0x100 | 0x3AA0 | size: 0x9
.obj str_GSO_A1_3_tik_0000b908, local
	.string "GSO_A1_3"
.endobj str_GSO_A1_3_tik_0000b908

# .rodata:0x109 | 0x3AA9 | size: 0x3
.obj gap_03_00003AA9_rodata, global
.hidden gap_03_00003AA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003AA9_rodata

# .rodata:0x10C | 0x3AAC | size: 0x19
.obj str_SFX_BOSS_GESSO_ARM_M_tik_0000b914, local
	.string "SFX_BOSS_GESSO_ARM_MOVE1"
.endobj str_SFX_BOSS_GESSO_ARM_M_tik_0000b914

# .rodata:0x125 | 0x3AC5 | size: 0x3
.obj gap_03_00003AC5_rodata, global
.hidden gap_03_00003AC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003AC5_rodata

# .rodata:0x128 | 0x3AC8 | size: 0x17
.obj str_SFX_BOSS_GESSO_ATTAC_tik_0000b930, local
	.string "SFX_BOSS_GESSO_ATTACK1"
.endobj str_SFX_BOSS_GESSO_ATTAC_tik_0000b930

# .rodata:0x13F | 0x3ADF | size: 0x1
.obj gap_03_00003ADF_rodata, global
.hidden gap_03_00003ADF_rodata
	.byte 0x00
.endobj gap_03_00003ADF_rodata

# .rodata:0x140 | 0x3AE0 | size: 0x1A
.obj str_SFX_BOSS_GESSO_ARM_G_tik_0000b948, local
	.string "SFX_BOSS_GESSO_ARM_GOOUT1"
.endobj str_SFX_BOSS_GESSO_ARM_G_tik_0000b948

# .rodata:0x15A | 0x3AFA | size: 0x2
.obj gap_03_00003AFA_rodata, global
.hidden gap_03_00003AFA_rodata
	.2byte 0x0000
.endobj gap_03_00003AFA_rodata

# .rodata:0x15C | 0x3AFC | size: 0x9
.obj str_GSO_F1_1_tik_0000b964, local
	.string "GSO_F1_1"
.endobj str_GSO_F1_1_tik_0000b964

# .rodata:0x165 | 0x3B05 | size: 0x3
.obj gap_03_00003B05_rodata, global
.hidden gap_03_00003B05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B05_rodata

# .rodata:0x168 | 0x3B08 | size: 0x8
.obj str_GSO_F_1_tik_0000b970, local
	.string "GSO_F_1"
.endobj str_GSO_F_1_tik_0000b970

# .rodata:0x170 | 0x3B10 | size: 0x15
.obj str_SFX_BOSS_GESSO_FALL1_tik_0000b978, local
	.string "SFX_BOSS_GESSO_FALL1"
.endobj str_SFX_BOSS_GESSO_FALL1_tik_0000b978

# .rodata:0x185 | 0x3B25 | size: 0x3
.obj gap_03_00003B25_rodata, global
.hidden gap_03_00003B25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B25_rodata

# .rodata:0x188 | 0x3B28 | size: 0x8
.obj str_GSO_F_2_tik_0000b990, local
	.string "GSO_F_2"
.endobj str_GSO_F_2_tik_0000b990

# .rodata:0x190 | 0x3B30 | size: 0x15
.obj str_SFX_BOSS_GESSO_DOWN1_tik_0000b998, local
	.string "SFX_BOSS_GESSO_DOWN1"
.endobj str_SFX_BOSS_GESSO_DOWN1_tik_0000b998
	.byte 0x00, 0x00, 0x00

# .rodata:0x1A8 | 0x3B48 | size: 0x4
.obj float_neg120_tik_0000b9b0, local
	.float -120
.endobj float_neg120_tik_0000b9b0

# .rodata:0x1AC | 0x3B4C | size: 0x4
.obj gap_03_00003B4C_rodata, global
.hidden gap_03_00003B4C_rodata
	.4byte 0x00000000
.endobj gap_03_00003B4C_rodata

# 0x0001B4F0..0x0001C550 | size: 0x1060
.data
.balign 8

# .data:0x0 | 0x1B4F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1B4F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1B4FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1B500 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1B504 | size: 0x4
.obj gap_04_0001B504_data, global
.hidden gap_04_0001B504_data
	.4byte 0x00000000
.endobj gap_04_0001B504_data

# .data:0x18 | 0x1B508 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1B510 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1B514 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1B518 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1B520 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1B524 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1B528 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1B52C | size: 0x4
.obj gap_04_0001B52C_data, global
.hidden gap_04_0001B52C_data
	.4byte 0x00000000
.endobj gap_04_0001B52C_data

# .data:0x40 | 0x1B530 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1B538 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1B53C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1B540 | size: 0xC4
.obj unit_boss_gesso_right_arm_24_data_1B540, global
	.4byte 0x0000000A
	.4byte str_btl_un_gesso_right_a_tik_0000b808
	.4byte 0x00030000
	.4byte 0x01010000
	.4byte 0x00640032
	.4byte 0x0009003C
	.4byte 0x006EFFBC
	.4byte 0xFF9C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFABFF74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x428F0000
	.4byte 0x00000000
	.4byte 0xC2700000
	.4byte 0xC2700000
	.4byte 0x00000000
	.4byte 0x42700000
	.4byte 0x42C80000
	.4byte 0x0000FF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_GESSO_DAMAG_tik_0000b820
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000b838
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000b850
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000b864
	.4byte 0x00200000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte unk_tik_0002907c
.endobj unit_boss_gesso_right_arm_24_data_1B540

# .data:0x114 | 0x1B604 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x1B609 | size: 0x3
.obj gap_04_0001B609_data, global
.hidden gap_04_0001B609_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001B609_data

# .data:0x11C | 0x1B60C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x1B611 | size: 0x3
.obj gap_04_0001B611_data, global
.hidden gap_04_0001B611_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001B611_data

# .data:0x124 | 0x1B614 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00006400
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x1B62A | size: 0x2
.obj gap_04_0001B62A_data, global
.hidden gap_04_0001B62A_data
	.2byte 0x0000
.endobj gap_04_0001B62A_data

# .data:0x13C | 0x1B62C | size: 0x20
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_GSO_S1_1_tik_0000b880
	.4byte 0x0000001F
	.4byte str_GSO_S1_1_tik_0000b880
	.4byte 0x00000027
	.4byte str_GSO_D1_1_tik_0000b88c
	.4byte 0x00000045
	.4byte str_GSO_S1_1_tik_0000b880
.endobj pose_table

# .data:0x15C | 0x1B64C | size: 0x68
.obj unk_tik_0002907c, local
	.4byte 0x00000018
	.4byte unk_evt_tik_00029228
	.4byte 0x00000019
	.4byte unk_evt_tik_00029228
	.4byte 0x0000001A
	.4byte unk_evt_tik_00029228
	.4byte 0x0000001B
	.4byte unk_evt_tik_00029228
	.4byte 0x0000001C
	.4byte unk_evt_tik_00029228
	.4byte 0x0000001D
	.4byte unk_evt_tik_00029228
	.4byte 0x0000001E
	.4byte unk_evt_tik_00029228
	.4byte 0x0000001F
	.4byte unk_evt_tik_00029228
	.4byte 0x00000020
	.4byte unk_evt_tik_00029228
	.4byte 0x00000021
	.4byte unk_evt_tik_00029228
	.4byte 0x00000022
	.4byte unk_evt_tik_00029228
	.4byte 0x00000023
	.4byte unk_evt_tik_00029228
	.4byte 0x00000024
	.4byte unk_evt_tik_00029228
.endobj unk_tik_0002907c

# .data:0x1C4 | 0x1B6B4 | size: 0x18
.obj data_table, local
	.4byte 0x0000000A
	.4byte gesso_arm_damage_pose_event_24_data_1C4C4
	.4byte 0x00000031
	.4byte gesso_arm_dead_event_24_data_1BF50
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1DC | 0x1B6CC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_gesso_right_a_tik_0000b808
	.4byte str_c_gesso2_tik_0000b898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42AA0000
	.4byte 0xC2DC0000
	.4byte 0x00000000
	.4byte 0x42AA0000
	.4byte 0xC2DC0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02680009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x228 | 0x1B718 | size: 0x64
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x28C | 0x1B77C | size: 0x7C
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x308 | 0x1B7F8 | size: 0x174
.obj unk_evt_tik_00029228, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000027
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamagePattern
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00000070
	.4byte 0x0001005E
	.4byte subsetevt_damage
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0001005E
	.4byte subsetevt_dead
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000100
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8A
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_tik_00029228

# .data:0x47C | 0x1B96C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x484 | 0x1B974 | size: 0xC0
.obj weapon_gesso_right_arm_front_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x00000004
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gesso_right_arm_front_attack

# .data:0x544 | 0x1BA34 | size: 0xC0
.obj weapon_gesso_right_arm_rear_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x00000008
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gesso_right_arm_rear_attack

# .data:0x604 | 0x1BAF4 | size: 0x444
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_gesso_right_arm_front_attack
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_gesso_right_arm_rear_attack
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x000000DE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C89
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C89
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_04_1_tik_0000b8a4
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_04_2_tik_0000b8b4
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_tik_02_gs_04_3_tik_0000b8c4
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_04_3_y_tik_0000b8d4
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000006E
	.4byte 0x00000078
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_tik_02_gs_04_3_n_tik_0000b8e8
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte _check_zenei_kouei
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_A1_1_tik_0000b8fc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_A1_3_tik_0000b908
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000020
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_ARM_M_tik_0000b914
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000037
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_ATTAC_tik_0000b930
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000061
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xA48 | 0x1BF38 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0xA60 | 0x1BF50 | size: 0x208
.obj gesso_arm_dead_event_24_data_1BF50, global
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_ARM_G_tik_0000b948
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_F1_1_tik_0000b964
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GESSO_ARM_G_tik_0000b948
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GSO_F1_1_tik_0000b964
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000050
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte gesso_fall_check
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gesso_arm_dead_event_24_data_1BF50

# .data:0xC68 | 0x1C158 | size: 0x36C
.obj gesso_fall_check, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_GSO_F_1_tik_0000b970
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_FALL1_tik_0000b978
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_GSO_F_2_tik_0000b990
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftof
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_FALL1_tik_0000b978
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_BOSS_GESSO_DOWN1_tik_0000b998
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte gesso_pose_table_turn_24_data_16AA4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetHpGaugeOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFE363C83
	.4byte 0x0000002E
	.4byte 0x00000076
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte R_defence_turn_24_data_169C4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte R_defence_attr_turn_24_data_169CC
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C83
	.4byte R_regist_turn_24_data_169D4
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000037
	.4byte 0x00000071
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000033
	.4byte 0x00000026
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000033
	.4byte 0x00000026
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gesso_fall_check

# .data:0xFD4 | 0x1C4C4 | size: 0x8C
.obj gesso_arm_damage_pose_event_24_data_1C4C4, global
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000009
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00000020
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gesso_arm_damage_pose_event_24_data_1C4C4
