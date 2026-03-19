.include "macros.inc"
.file "unit_ura_noko.o"

# 0x00001828..0x00001908 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x1828 | size: 0xE0
.fn eff_aura, local
/* 00001828 000018EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000182C 000018F0  7C 08 02 A6 */	mflr r0
/* 00001830 000018F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001834 000018F8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00001838 000018FC  7C 9F 23 78 */	mr r31, r4
/* 0000183C 00001900  7C 7E 1B 78 */	mr r30, r3
/* 00001840 00001904  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001844 00001908  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001848 0000190C  4B FF F2 29 */	bl evtGetValue
/* 0000184C 00001910  7C 64 1B 78 */	mr r4, r3
/* 00001850 00001914  7F C3 F3 78 */	mr r3, r30
/* 00001854 00001918  4B FF F2 1D */	bl BattleTransID
/* 00001858 0000191C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000185C 00001920  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001860 00001924  7C 64 1B 78 */	mr r4, r3
/* 00001864 00001928  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001868 0000192C  4B FF F2 09 */	bl BattleGetUnitPtr
/* 0000186C 00001930  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001870 00001934  7C 7F 1B 78 */	mr r31, r3
/* 00001874 00001938  41 82 00 2C */	beq .L_000018A0
/* 00001878 0000193C  3C 60 00 00 */	lis r3, zero_jon_0000a7b4@ha
/* 0000187C 00001940  3C 80 00 00 */	lis r4, float_neg1000_jon_0000a7b8@ha
/* 00001880 00001944  38 A3 00 00 */	addi r5, r3, zero_jon_0000a7b4@l
/* 00001884 00001948  C0 44 00 00 */	lfs f2, float_neg1000_jon_0000a7b8@l(r4)
/* 00001888 0000194C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000188C 00001950  38 60 00 00 */	li r3, 0x0
/* 00001890 00001954  38 80 00 78 */	li r4, 0x78
/* 00001894 00001958  FC 60 08 90 */	fmr f3, f1
/* 00001898 0000195C  4B FF F1 D9 */	bl effUranokoEntry
/* 0000189C 00001960  90 7F 02 20 */	stw r3, 0x220(r31)
.L_000018A0:
/* 000018A0 00001964  7F E3 FB 78 */	mr r3, r31
/* 000018A4 00001968  38 81 00 10 */	addi r4, r1, 0x10
/* 000018A8 0000196C  38 A1 00 0C */	addi r5, r1, 0xc
/* 000018AC 00001970  38 C1 00 08 */	addi r6, r1, 0x8
/* 000018B0 00001974  4B FF F1 C1 */	bl BtlUnit_GetPos
/* 000018B4 00001978  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 000018B8 0000197C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000018BC 00001980  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000018C0 00001984  40 82 00 0C */	bne .L_000018CC
/* 000018C4 00001988  38 60 00 02 */	li r3, 0x2
/* 000018C8 0000198C  48 00 00 2C */	b .L_000018F4
.L_000018CC:
/* 000018CC 00001990  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000018D0 00001994  38 60 00 00 */	li r3, 0x0
/* 000018D4 00001998  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000018D8 0000199C  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 000018DC 000019A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000018E0 000019A4  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 000018E4 000019A8  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000018E8 000019AC  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 000018EC 000019B0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000018F0 000019B4  D0 04 00 14 */	stfs f0, 0x14(r4)
.L_000018F4:
/* 000018F4 000019B8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000018F8 000019BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000018FC 000019C0  7C 08 03 A6 */	mtlr r0
/* 00001900 000019C4  38 21 00 20 */	addi r1, r1, 0x20
/* 00001904 000019C8  4E 80 00 20 */	blr
.endfn eff_aura

# 0x00003580..0x00003790 | size: 0x210
.rodata
.balign 8

# .rodata:0x0 | 0x3580 | size: 0x10
.obj str_btl_un_ura_noko_jon_0000a5b0, local
	.string "btl_un_ura_noko"
.endobj str_btl_un_ura_noko_jon_0000a5b0

# .rodata:0x10 | 0x3590 | size: 0x16
.obj str_SFX_ENM_NOKO_DAMAGED_jon_0000a5c0, local
	.string "SFX_ENM_NOKO_DAMAGED1"
.endobj str_SFX_ENM_NOKO_DAMAGED_jon_0000a5c0

# .rodata:0x26 | 0x35A6 | size: 0x2
.obj gap_03_000035A6_rodata, global
.hidden gap_03_000035A6_rodata
	.2byte 0x0000
.endobj gap_03_000035A6_rodata

# .rodata:0x28 | 0x35A8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000a5d8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000a5d8

# .rodata:0x3D | 0x35BD | size: 0x3
.obj gap_03_000035BD_rodata, global
.hidden gap_03_000035BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000035BD_rodata

# .rodata:0x40 | 0x35C0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000a5f0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000a5f0

# .rodata:0x54 | 0x35D4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000a604, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000a604

# .rodata:0x6D | 0x35ED | size: 0x3
.obj gap_03_000035ED_rodata, global
.hidden gap_03_000035ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000035ED_rodata

# .rodata:0x70 | 0x35F0 | size: 0x8
.obj str_NKT_N_1_jon_0000a620, local
	.string "NKT_N_1"
.endobj str_NKT_N_1_jon_0000a620

# .rodata:0x78 | 0x35F8 | size: 0x8
.obj str_NKT_Y_1_jon_0000a628, local
	.string "NKT_Y_1"
.endobj str_NKT_Y_1_jon_0000a628

# .rodata:0x80 | 0x3600 | size: 0x8
.obj str_NKT_K_1_jon_0000a630, local
	.string "NKT_K_1"
.endobj str_NKT_K_1_jon_0000a630

# .rodata:0x88 | 0x3608 | size: 0x8
.obj str_NKT_X_1_jon_0000a638, local
	.string "NKT_X_1"
.endobj str_NKT_X_1_jon_0000a638

# .rodata:0x90 | 0x3610 | size: 0x8
.obj str_NKT_S_1_jon_0000a640, local
	.string "NKT_S_1"
.endobj str_NKT_S_1_jon_0000a640

# .rodata:0x98 | 0x3618 | size: 0x8
.obj str_NKT_Q_1_jon_0000a648, local
	.string "NKT_Q_1"
.endobj str_NKT_Q_1_jon_0000a648

# .rodata:0xA0 | 0x3620 | size: 0x8
.obj str_NKT_D_1_jon_0000a650, local
	.string "NKT_D_1"
.endobj str_NKT_D_1_jon_0000a650

# .rodata:0xA8 | 0x3628 | size: 0x8
.obj str_NKT_A_1_jon_0000a658, local
	.string "NKT_A_1"
.endobj str_NKT_A_1_jon_0000a658

# .rodata:0xB0 | 0x3630 | size: 0x8
.obj str_NKT_R_1_jon_0000a660, local
	.string "NKT_R_1"
.endobj str_NKT_R_1_jon_0000a660

# .rodata:0xB8 | 0x3638 | size: 0x8
.obj str_NKT_W_1_jon_0000a668, local
	.string "NKT_W_1"
.endobj str_NKT_W_1_jon_0000a668

# .rodata:0xC0 | 0x3640 | size: 0x8
.obj str_NKT_T_1_jon_0000a670, local
	.string "NKT_T_1"
.endobj str_NKT_T_1_jon_0000a670

# .rodata:0xC8 | 0x3648 | size: 0x8
.obj str_NKT_N_2_jon_0000a678, local
	.string "NKT_N_2"
.endobj str_NKT_N_2_jon_0000a678

# .rodata:0xD0 | 0x3650 | size: 0x8
.obj str_NKT_B_1_jon_0000a680, local
	.string "NKT_B_1"
.endobj str_NKT_B_1_jon_0000a680

# .rodata:0xD8 | 0x3658 | size: 0x8
.obj str_NKT_K_2_jon_0000a688, local
	.string "NKT_K_2"
.endobj str_NKT_K_2_jon_0000a688

# .rodata:0xE0 | 0x3660 | size: 0x8
.obj str_NKT_S_2_jon_0000a690, local
	.string "NKT_S_2"
.endobj str_NKT_S_2_jon_0000a690

# .rodata:0xE8 | 0x3668 | size: 0xA
.obj str_c_uranoko_jon_0000a698, local
	.string "c_uranoko"
.endobj str_c_uranoko_jon_0000a698

# .rodata:0xF2 | 0x3672 | size: 0x2
.obj gap_03_00003672_rodata, global
.hidden gap_03_00003672_rodata
	.2byte 0x0000
.endobj gap_03_00003672_rodata

# .rodata:0xF4 | 0x3674 | size: 0x14
.obj str_SFX_ENM_NOKO_MOVE3L_jon_0000a6a4, local
	.string "SFX_ENM_NOKO_MOVE3L"
.endobj str_SFX_ENM_NOKO_MOVE3L_jon_0000a6a4

# .rodata:0x108 | 0x3688 | size: 0x14
.obj str_SFX_ENM_NOKO_MOVE3R_jon_0000a6b8, local
	.string "SFX_ENM_NOKO_MOVE3R"
.endobj str_SFX_ENM_NOKO_MOVE3R_jon_0000a6b8

# .rodata:0x11C | 0x369C | size: 0x10
.obj str_SFX_ENM_INSIDE1_jon_0000a6cc, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_jon_0000a6cc

# .rodata:0x12C | 0x36AC | size: 0x10
.obj str_SFX_ENM_INSIDE2_jon_0000a6dc, local
	.string "SFX_ENM_INSIDE2"
.endobj str_SFX_ENM_INSIDE2_jon_0000a6dc

# .rodata:0x13C | 0x36BC | size: 0x13
.obj str_SFX_ENM_NOKO_JUMP1_jon_0000a6ec, local
	.string "SFX_ENM_NOKO_JUMP1"
.endobj str_SFX_ENM_NOKO_JUMP1_jon_0000a6ec

# .rodata:0x14F | 0x36CF | size: 0x1
.obj gap_03_000036CF_rodata, global
.hidden gap_03_000036CF_rodata
	.byte 0x00
.endobj gap_03_000036CF_rodata

# .rodata:0x150 | 0x36D0 | size: 0x14
.obj str_SFX_ENM_NOKO_SHELL1_jon_0000a700, local
	.string "SFX_ENM_NOKO_SHELL1"
.endobj str_SFX_ENM_NOKO_SHELL1_jon_0000a700

# .rodata:0x164 | 0x36E4 | size: 0x13
.obj str_SFX_ENM_NOKO_MOVE1_jon_0000a714, local
	.string "SFX_ENM_NOKO_MOVE1"
.endobj str_SFX_ENM_NOKO_MOVE1_jon_0000a714

# .rodata:0x177 | 0x36F7 | size: 0x1
.obj gap_03_000036F7_rodata, global
.hidden gap_03_000036F7_rodata
	.byte 0x00
.endobj gap_03_000036F7_rodata

# .rodata:0x178 | 0x36F8 | size: 0x13
.obj str_SFX_ENM_NOKO_MOVE2_jon_0000a728, local
	.string "SFX_ENM_NOKO_MOVE2"
.endobj str_SFX_ENM_NOKO_MOVE2_jon_0000a728

# .rodata:0x18B | 0x370B | size: 0x1
.obj gap_03_0000370B_rodata, global
.hidden gap_03_0000370B_rodata
	.byte 0x00
.endobj gap_03_0000370B_rodata

# .rodata:0x18C | 0x370C | size: 0x1
.obj zero_jon_0000a73c, local
	.byte 0x00
.endobj zero_jon_0000a73c

# .rodata:0x18D | 0x370D | size: 0x3
.obj gap_03_0000370D_rodata, global
.hidden gap_03_0000370D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000370D_rodata

# .rodata:0x190 | 0x3710 | size: 0xC
.obj str_kemuri_test_jon_0000a740, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000a740

# .rodata:0x19C | 0x371C | size: 0x8
.obj str_NKT_A_2_jon_0000a74c, local
	.string "NKT_A_2"
.endobj str_NKT_A_2_jon_0000a74c

# .rodata:0x1A4 | 0x3724 | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_jon_0000a754, local
	.string "SFX_ENM_URANOKO_MOVE1"
.endobj str_SFX_ENM_URANOKO_MOVE_jon_0000a754

# .rodata:0x1BA | 0x373A | size: 0x2
.obj gap_03_0000373A_rodata, global
.hidden gap_03_0000373A_rodata
	.2byte 0x0000
.endobj gap_03_0000373A_rodata

# .rodata:0x1BC | 0x373C | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_jon_0000a76c, local
	.string "SFX_ENM_URANOKO_MOVE2"
.endobj str_SFX_ENM_URANOKO_MOVE_jon_0000a76c

# .rodata:0x1D2 | 0x3752 | size: 0x2
.obj gap_03_00003752_rodata, global
.hidden gap_03_00003752_rodata
	.2byte 0x0000
.endobj gap_03_00003752_rodata

# .rodata:0x1D4 | 0x3754 | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_jon_0000a784, local
	.string "SFX_ENM_URANOKO_MOVE3"
.endobj str_SFX_ENM_URANOKO_MOVE_jon_0000a784

# .rodata:0x1EA | 0x376A | size: 0x2
.obj gap_03_0000376A_rodata, global
.hidden gap_03_0000376A_rodata
	.2byte 0x0000
.endobj gap_03_0000376A_rodata

# .rodata:0x1EC | 0x376C | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_jon_0000a79c, local
	.string "SFX_ENM_URANOKO_MOVE4"
.endobj str_SFX_ENM_URANOKO_MOVE_jon_0000a79c
	.2byte 0x0000

# .rodata:0x204 | 0x3784 | size: 0x4
.obj zero_jon_0000a7b4, local
	.float 0
.endobj zero_jon_0000a7b4

# .rodata:0x208 | 0x3788 | size: 0x4
.obj float_neg1000_jon_0000a7b8, local
	.float -1000
.endobj float_neg1000_jon_0000a7b8

# .rodata:0x20C | 0x378C | size: 0x4
.obj gap_03_0000378C_rodata, global
.hidden gap_03_0000378C_rodata
	.4byte 0x00000000
.endobj gap_03_0000378C_rodata

# 0x0002E380..0x00030128 | size: 0x1DA8
.data
.balign 8

# .data:0x0 | 0x2E380 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2E388 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2E38C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2E390 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2E394 | size: 0x4
.obj gap_04_0002E394_data, global
.hidden gap_04_0002E394_data
	.4byte 0x00000000
.endobj gap_04_0002E394_data

# .data:0x18 | 0x2E398 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2E3A0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2E3A4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2E3A8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2E3B0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2E3B4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2E3B8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2E3BC | size: 0x4
.obj gap_04_0002E3BC_data, global
.hidden gap_04_0002E3BC_data
	.4byte 0x00000000
.endobj gap_04_0002E3BC_data

# .data:0x40 | 0x2E3C0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2E3C8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2E3CC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2E3D0 | size: 0xC4
.obj unit_ura_noko_14_data_2E3D0, global
	.4byte 0x0000002F
	.4byte str_btl_un_ura_noko_jon_0000a5b0
	.4byte 0x00080000
	.4byte 0x01011100
	.4byte 0x02460132
	.4byte 0x270F0024
	.4byte 0x0028FFFC
	.4byte 0x00280000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41100000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41300000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42200000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_NOKO_DAMAGED_jon_0000a5c0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000a5d8
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000a5f0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000a604
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_ura_noko_14_data_2E3D0

# .data:0x114 | 0x2E494 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_NKT_N_1_jon_0000a620
	.4byte 0x00000002
	.4byte str_NKT_Y_1_jon_0000a628
	.4byte 0x00000009
	.4byte str_NKT_Y_1_jon_0000a628
	.4byte 0x00000005
	.4byte str_NKT_K_1_jon_0000a630
	.4byte 0x00000004
	.4byte str_NKT_X_1_jon_0000a638
	.4byte 0x00000003
	.4byte str_NKT_X_1_jon_0000a638
	.4byte 0x0000001C
	.4byte str_NKT_S_1_jon_0000a640
	.4byte 0x0000001D
	.4byte str_NKT_Q_1_jon_0000a648
	.4byte 0x0000001E
	.4byte str_NKT_Q_1_jon_0000a648
	.4byte 0x0000001F
	.4byte str_NKT_S_1_jon_0000a640
	.4byte 0x00000027
	.4byte str_NKT_D_1_jon_0000a650
	.4byte 0x00000032
	.4byte str_NKT_A_1_jon_0000a658
	.4byte 0x0000002A
	.4byte str_NKT_R_1_jon_0000a660
	.4byte 0x00000028
	.4byte str_NKT_W_1_jon_0000a668
	.4byte 0x00000038
	.4byte str_NKT_X_1_jon_0000a638
	.4byte 0x00000039
	.4byte str_NKT_X_1_jon_0000a638
	.4byte 0x00000041
	.4byte str_NKT_T_1_jon_0000a670
	.4byte 0x00000045
	.4byte str_NKT_S_1_jon_0000a640
.endobj pose_table

# .data:0x1A4 | 0x2E524 | size: 0x88
.obj pose_table_turn, local
	.4byte 0x00000001
	.4byte str_NKT_N_2_jon_0000a678
	.4byte 0x00000002
	.4byte str_NKT_B_1_jon_0000a680
	.4byte 0x00000009
	.4byte str_NKT_B_1_jon_0000a680
	.4byte 0x00000005
	.4byte str_NKT_K_2_jon_0000a688
	.4byte 0x00000004
	.4byte str_NKT_K_2_jon_0000a688
	.4byte 0x00000003
	.4byte str_NKT_K_2_jon_0000a688
	.4byte 0x0000001C
	.4byte str_NKT_S_2_jon_0000a690
	.4byte 0x0000001D
	.4byte str_NKT_Q_1_jon_0000a648
	.4byte 0x0000001E
	.4byte str_NKT_Q_1_jon_0000a648
	.4byte 0x0000001F
	.4byte str_NKT_D_1_jon_0000a650
	.4byte 0x00000027
	.4byte str_NKT_D_1_jon_0000a650
	.4byte 0x0000002A
	.4byte str_NKT_R_1_jon_0000a660
	.4byte 0x00000028
	.4byte str_NKT_W_1_jon_0000a668
	.4byte 0x00000038
	.4byte str_NKT_K_2_jon_0000a688
	.4byte 0x00000039
	.4byte str_NKT_K_2_jon_0000a688
	.4byte 0x00000041
	.4byte str_NKT_S_2_jon_0000a690
	.4byte 0x00000045
	.4byte str_NKT_S_2_jon_0000a690
.endobj pose_table_turn

# .data:0x22C | 0x2E5AC | size: 0x18
.obj data_table, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x244 | 0x2E5C4 | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x249 | 0x2E5C9 | size: 0x3
.obj gap_04_0002E5C9_data, global
.hidden gap_04_0002E5C9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E5C9_data

# .data:0x24C | 0x2E5CC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x251 | 0x2E5D1 | size: 0x3
.obj gap_04_0002E5D1_data, global
.hidden gap_04_0002E5D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E5D1_data

# .data:0x254 | 0x2E5D4 | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x259 | 0x2E5D9 | size: 0x3
.obj gap_04_0002E5D9_data, global
.hidden gap_04_0002E5D9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E5D9_data

# .data:0x25C | 0x2E5DC | size: 0x16
.obj regist, local
	.ascii "UZPdPddPdZdZdZPUPdPdd_"
.endobj regist

# .data:0x272 | 0x2E5F2 | size: 0x2
.obj gap_04_0002E5F2_data, global
.hidden gap_04_0002E5F2_data
	.2byte 0x0000
.endobj gap_04_0002E5F2_data

# .data:0x274 | 0x2E5F4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_ura_noko_jon_0000a5b0
	.4byte str_c_uranoko_jon_0000a698
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00001009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2C0 | 0x2E640 | size: 0xC0
.obj weapon_nokonoko_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000003
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
	.4byte 0x21002000
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000005FF
	.4byte 0x00002004
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
.endobj weapon_nokonoko_attack

# .data:0x380 | 0x2E700 | size: 0xC0
.obj weapon_ura_noko_ura_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
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
	.4byte 0x02101260
	.4byte 0x20004004
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000005FF
	.4byte 0x00002000
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
.endobj weapon_ura_noko_ura_attack

# .data:0x440 | 0x2E7C0 | size: 0xA4
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
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_jon_0000a6a4
	.4byte str_SFX_ENM_NOKO_MOVE3R_jon_0000a6b8
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_jon_0000a6a4
	.4byte str_SFX_ENM_NOKO_MOVE3L_jon_0000a6a4
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x4E4 | 0x2E864 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x50C | 0x2E88C | size: 0x138
.obj dmg_turn_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_OnStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_NKT_D_1_jon_0000a650
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE1_jon_0000a6cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_NKT_S_2_jon_0000a690
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_turn_event

# .data:0x644 | 0x2E9C4 | size: 0x140
.obj wakeup_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ura_attack_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence
	.4byte 0x0003005B
	.4byte btlevtcmd_OffStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_NKT_S_1_jon_0000a640
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE2_jon_0000a6dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wakeup_event

# .data:0x784 | 0x2EB04 | size: 0x4B8
.obj first_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
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
	.4byte weapon_nokonoko_attack
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_JUMP1_jon_0000a6ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_SHELL1_jon_0000a700
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_1_jon_0000a658
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE1_jon_0000a714
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_nokonoko_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_nokonoko_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A8680
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE2_jon_0000a728
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7C80
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE2_jon_0000a728
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_attack_event

# .data:0xC3C | 0x2EFBC | size: 0x890
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte wakeup_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000020
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
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_nokonoko_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_nokonoko_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_nokonoko_attack
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
	.4byte weapon_nokonoko_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_JUMP1_jon_0000a6ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_SHELL1_jon_0000a700
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_1_jon_0000a658
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE1_jon_0000a714
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000a73c
	.4byte str_kemuri_test_jon_0000a740
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7BB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_nokonoko_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_JUMP1_jon_0000a6ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24AA280
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_nokonoko_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_nokonoko_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A8680
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE2_jon_0000a728
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7C80
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE2_jon_0000a728
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x14CC | 0x2F84C | size: 0x8C0
.obj ura_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_ura_noko_ura_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_ura_noko_ura_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_ura_noko_ura_attack
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
	.4byte weapon_ura_noko_ura_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_JUMP1_jon_0000a6ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_SHELL1_jon_0000a700
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_2_jon_0000a74c
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000024
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0000006E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte eff_aura
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_URANOKO_MOVE_jon_0000a754
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000a73c
	.4byte str_kemuri_test_jon_0000a740
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7BB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_URANOKO_MOVE_jon_0000a76c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_ura_noko_ura_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_ura_noko_ura_attack
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_ura_noko_ura_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x000000FA
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_URANOKO_MOVE_jon_0000a784
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_URANOKO_MOVE_jon_0000a79c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24AA280
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ura_attack_event

# .data:0x1D8C | 0x3010C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1DA4 | 0x30124 | size: 0x4
.obj gap_04_00030124_data, global
.hidden gap_04_00030124_data
	.4byte 0x00000000
.endobj gap_04_00030124_data
