.include "macros.inc"
.file "unit_ura_noko.o"

# 0x00006344..0x00006424 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x6344 | size: 0xE0
.fn eff_aura, local
/* 00006344 00006408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006348 0000640C  7C 08 02 A6 */	mflr r0
/* 0000634C 00006410  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006350 00006414  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00006354 00006418  7C 9F 23 78 */	mr r31, r4
/* 00006358 0000641C  7C 7E 1B 78 */	mr r30, r3
/* 0000635C 00006420  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00006360 00006424  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006364 00006428  4B FF EC B1 */	bl evtGetValue
/* 00006368 0000642C  7C 64 1B 78 */	mr r4, r3
/* 0000636C 00006430  7F C3 F3 78 */	mr r3, r30
/* 00006370 00006434  4B FF EC A5 */	bl BattleTransID
/* 00006374 00006438  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006378 0000643C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000637C 00006440  7C 64 1B 78 */	mr r4, r3
/* 00006380 00006444  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006384 00006448  4B FF EC 91 */	bl BattleGetUnitPtr
/* 00006388 0000644C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000638C 00006450  7C 7F 1B 78 */	mr r31, r3
/* 00006390 00006454  41 82 00 2C */	beq .L_000063BC
/* 00006394 00006458  3C 60 00 00 */	lis r3, zero_tou2_0000f464@ha
/* 00006398 0000645C  3C 80 00 00 */	lis r4, float_neg1000_tou2_0000f468@ha
/* 0000639C 00006460  38 A3 00 00 */	addi r5, r3, zero_tou2_0000f464@l
/* 000063A0 00006464  C0 44 00 00 */	lfs f2, float_neg1000_tou2_0000f468@l(r4)
/* 000063A4 00006468  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000063A8 0000646C  38 60 00 00 */	li r3, 0x0
/* 000063AC 00006470  38 80 00 78 */	li r4, 0x78
/* 000063B0 00006474  FC 60 08 90 */	fmr f3, f1
/* 000063B4 00006478  4B FF EC 61 */	bl effUranokoEntry
/* 000063B8 0000647C  90 7F 02 20 */	stw r3, 0x220(r31)
.L_000063BC:
/* 000063BC 00006480  7F E3 FB 78 */	mr r3, r31
/* 000063C0 00006484  38 81 00 10 */	addi r4, r1, 0x10
/* 000063C4 00006488  38 A1 00 0C */	addi r5, r1, 0xc
/* 000063C8 0000648C  38 C1 00 08 */	addi r6, r1, 0x8
/* 000063CC 00006490  4B FF EC 49 */	bl BtlUnit_GetPos
/* 000063D0 00006494  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 000063D4 00006498  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000063D8 0000649C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000063DC 000064A0  40 82 00 0C */	bne .L_000063E8
/* 000063E0 000064A4  38 60 00 02 */	li r3, 0x2
/* 000063E4 000064A8  48 00 00 2C */	b .L_00006410
.L_000063E8:
/* 000063E8 000064AC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000063EC 000064B0  38 60 00 00 */	li r3, 0x0
/* 000063F0 000064B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000063F4 000064B8  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 000063F8 000064BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000063FC 000064C0  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 00006400 000064C4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00006404 000064C8  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 00006408 000064CC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 0000640C 000064D0  D0 04 00 14 */	stfs f0, 0x14(r4)
.L_00006410:
/* 00006410 000064D4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00006414 000064D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006418 000064DC  7C 08 03 A6 */	mtlr r0
/* 0000641C 000064E0  38 21 00 20 */	addi r1, r1, 0x20
/* 00006420 000064E4  4E 80 00 20 */	blr
.endfn eff_aura

# 0x00005B20..0x00005D30 | size: 0x210
.rodata
.balign 8

# .rodata:0x0 | 0x5B20 | size: 0x10
.obj str_btl_un_ura_noko_tou2_0000f260, local
	.string "btl_un_ura_noko"
.endobj str_btl_un_ura_noko_tou2_0000f260

# .rodata:0x10 | 0x5B30 | size: 0x16
.obj str_SFX_ENM_NOKO_DAMAGED_tou2_0000f270, local
	.string "SFX_ENM_NOKO_DAMAGED1"
.endobj str_SFX_ENM_NOKO_DAMAGED_tou2_0000f270

# .rodata:0x26 | 0x5B46 | size: 0x2
.obj gap_03_00005B46_rodata, global
.hidden gap_03_00005B46_rodata
	.2byte 0x0000
.endobj gap_03_00005B46_rodata

# .rodata:0x28 | 0x5B48 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000f288, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000f288

# .rodata:0x3D | 0x5B5D | size: 0x3
.obj gap_03_00005B5D_rodata, global
.hidden gap_03_00005B5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B5D_rodata

# .rodata:0x40 | 0x5B60 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000f2a0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000f2a0

# .rodata:0x54 | 0x5B74 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000f2b4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000f2b4

# .rodata:0x6D | 0x5B8D | size: 0x3
.obj gap_03_00005B8D_rodata, global
.hidden gap_03_00005B8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B8D_rodata

# .rodata:0x70 | 0x5B90 | size: 0x8
.obj str_NKT_N_1_tou2_0000f2d0, local
	.string "NKT_N_1"
.endobj str_NKT_N_1_tou2_0000f2d0

# .rodata:0x78 | 0x5B98 | size: 0x8
.obj str_NKT_Y_1_tou2_0000f2d8, local
	.string "NKT_Y_1"
.endobj str_NKT_Y_1_tou2_0000f2d8

# .rodata:0x80 | 0x5BA0 | size: 0x8
.obj str_NKT_K_1_tou2_0000f2e0, local
	.string "NKT_K_1"
.endobj str_NKT_K_1_tou2_0000f2e0

# .rodata:0x88 | 0x5BA8 | size: 0x8
.obj str_NKT_X_1_tou2_0000f2e8, local
	.string "NKT_X_1"
.endobj str_NKT_X_1_tou2_0000f2e8

# .rodata:0x90 | 0x5BB0 | size: 0x8
.obj str_NKT_S_1_tou2_0000f2f0, local
	.string "NKT_S_1"
.endobj str_NKT_S_1_tou2_0000f2f0

# .rodata:0x98 | 0x5BB8 | size: 0x8
.obj str_NKT_Q_1_tou2_0000f2f8, local
	.string "NKT_Q_1"
.endobj str_NKT_Q_1_tou2_0000f2f8

# .rodata:0xA0 | 0x5BC0 | size: 0x8
.obj str_NKT_D_1_tou2_0000f300, local
	.string "NKT_D_1"
.endobj str_NKT_D_1_tou2_0000f300

# .rodata:0xA8 | 0x5BC8 | size: 0x8
.obj str_NKT_A_1_tou2_0000f308, local
	.string "NKT_A_1"
.endobj str_NKT_A_1_tou2_0000f308

# .rodata:0xB0 | 0x5BD0 | size: 0x8
.obj str_NKT_R_1_tou2_0000f310, local
	.string "NKT_R_1"
.endobj str_NKT_R_1_tou2_0000f310

# .rodata:0xB8 | 0x5BD8 | size: 0x8
.obj str_NKT_W_1_tou2_0000f318, local
	.string "NKT_W_1"
.endobj str_NKT_W_1_tou2_0000f318

# .rodata:0xC0 | 0x5BE0 | size: 0x8
.obj str_NKT_T_1_tou2_0000f320, local
	.string "NKT_T_1"
.endobj str_NKT_T_1_tou2_0000f320

# .rodata:0xC8 | 0x5BE8 | size: 0x8
.obj str_NKT_N_2_tou2_0000f328, local
	.string "NKT_N_2"
.endobj str_NKT_N_2_tou2_0000f328

# .rodata:0xD0 | 0x5BF0 | size: 0x8
.obj str_NKT_B_1_tou2_0000f330, local
	.string "NKT_B_1"
.endobj str_NKT_B_1_tou2_0000f330

# .rodata:0xD8 | 0x5BF8 | size: 0x8
.obj str_NKT_K_2_tou2_0000f338, local
	.string "NKT_K_2"
.endobj str_NKT_K_2_tou2_0000f338

# .rodata:0xE0 | 0x5C00 | size: 0x8
.obj str_NKT_S_2_tou2_0000f340, local
	.string "NKT_S_2"
.endobj str_NKT_S_2_tou2_0000f340

# .rodata:0xE8 | 0x5C08 | size: 0xA
.obj str_c_uranoko_tou2_0000f348, local
	.string "c_uranoko"
.endobj str_c_uranoko_tou2_0000f348

# .rodata:0xF2 | 0x5C12 | size: 0x2
.obj gap_03_00005C12_rodata, global
.hidden gap_03_00005C12_rodata
	.2byte 0x0000
.endobj gap_03_00005C12_rodata

# .rodata:0xF4 | 0x5C14 | size: 0x14
.obj str_SFX_ENM_NOKO_MOVE3L_tou2_0000f354, local
	.string "SFX_ENM_NOKO_MOVE3L"
.endobj str_SFX_ENM_NOKO_MOVE3L_tou2_0000f354

# .rodata:0x108 | 0x5C28 | size: 0x14
.obj str_SFX_ENM_NOKO_MOVE3R_tou2_0000f368, local
	.string "SFX_ENM_NOKO_MOVE3R"
.endobj str_SFX_ENM_NOKO_MOVE3R_tou2_0000f368

# .rodata:0x11C | 0x5C3C | size: 0x10
.obj str_SFX_ENM_INSIDE1_tou2_0000f37c, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_tou2_0000f37c

# .rodata:0x12C | 0x5C4C | size: 0x10
.obj str_SFX_ENM_INSIDE2_tou2_0000f38c, local
	.string "SFX_ENM_INSIDE2"
.endobj str_SFX_ENM_INSIDE2_tou2_0000f38c

# .rodata:0x13C | 0x5C5C | size: 0x13
.obj str_SFX_ENM_NOKO_JUMP1_tou2_0000f39c, local
	.string "SFX_ENM_NOKO_JUMP1"
.endobj str_SFX_ENM_NOKO_JUMP1_tou2_0000f39c

# .rodata:0x14F | 0x5C6F | size: 0x1
.obj gap_03_00005C6F_rodata, global
.hidden gap_03_00005C6F_rodata
	.byte 0x00
.endobj gap_03_00005C6F_rodata

# .rodata:0x150 | 0x5C70 | size: 0x14
.obj str_SFX_ENM_NOKO_SHELL1_tou2_0000f3b0, local
	.string "SFX_ENM_NOKO_SHELL1"
.endobj str_SFX_ENM_NOKO_SHELL1_tou2_0000f3b0

# .rodata:0x164 | 0x5C84 | size: 0x13
.obj str_SFX_ENM_NOKO_MOVE1_tou2_0000f3c4, local
	.string "SFX_ENM_NOKO_MOVE1"
.endobj str_SFX_ENM_NOKO_MOVE1_tou2_0000f3c4

# .rodata:0x177 | 0x5C97 | size: 0x1
.obj gap_03_00005C97_rodata, global
.hidden gap_03_00005C97_rodata
	.byte 0x00
.endobj gap_03_00005C97_rodata

# .rodata:0x178 | 0x5C98 | size: 0x13
.obj str_SFX_ENM_NOKO_MOVE2_tou2_0000f3d8, local
	.string "SFX_ENM_NOKO_MOVE2"
.endobj str_SFX_ENM_NOKO_MOVE2_tou2_0000f3d8

# .rodata:0x18B | 0x5CAB | size: 0x1
.obj gap_03_00005CAB_rodata, global
.hidden gap_03_00005CAB_rodata
	.byte 0x00
.endobj gap_03_00005CAB_rodata

# .rodata:0x18C | 0x5CAC | size: 0x1
.obj zero_tou2_0000f3ec, local
	.byte 0x00
.endobj zero_tou2_0000f3ec

# .rodata:0x18D | 0x5CAD | size: 0x3
.obj gap_03_00005CAD_rodata, global
.hidden gap_03_00005CAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CAD_rodata

# .rodata:0x190 | 0x5CB0 | size: 0xC
.obj str_kemuri_test_tou2_0000f3f0, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0000f3f0

# .rodata:0x19C | 0x5CBC | size: 0x8
.obj str_NKT_A_2_tou2_0000f3fc, local
	.string "NKT_A_2"
.endobj str_NKT_A_2_tou2_0000f3fc

# .rodata:0x1A4 | 0x5CC4 | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f404, local
	.string "SFX_ENM_URANOKO_MOVE1"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f404

# .rodata:0x1BA | 0x5CDA | size: 0x2
.obj gap_03_00005CDA_rodata, global
.hidden gap_03_00005CDA_rodata
	.2byte 0x0000
.endobj gap_03_00005CDA_rodata

# .rodata:0x1BC | 0x5CDC | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f41c, local
	.string "SFX_ENM_URANOKO_MOVE2"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f41c

# .rodata:0x1D2 | 0x5CF2 | size: 0x2
.obj gap_03_00005CF2_rodata, global
.hidden gap_03_00005CF2_rodata
	.2byte 0x0000
.endobj gap_03_00005CF2_rodata

# .rodata:0x1D4 | 0x5CF4 | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f434, local
	.string "SFX_ENM_URANOKO_MOVE3"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f434

# .rodata:0x1EA | 0x5D0A | size: 0x2
.obj gap_03_00005D0A_rodata, global
.hidden gap_03_00005D0A_rodata
	.2byte 0x0000
.endobj gap_03_00005D0A_rodata

# .rodata:0x1EC | 0x5D0C | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f44c, local
	.string "SFX_ENM_URANOKO_MOVE4"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f44c
	.2byte 0x0000

# .rodata:0x204 | 0x5D24 | size: 0x4
.obj zero_tou2_0000f464, local
	.float 0
.endobj zero_tou2_0000f464

# .rodata:0x208 | 0x5D28 | size: 0x4
.obj float_neg1000_tou2_0000f468, local
	.float -1000
.endobj float_neg1000_tou2_0000f468

# .rodata:0x20C | 0x5D2C | size: 0x4
.obj gap_03_00005D2C_rodata, global
.hidden gap_03_00005D2C_rodata
	.4byte 0x00000000
.endobj gap_03_00005D2C_rodata

# 0x00037AD8..0x00039880 | size: 0x1DA8
.data
.balign 8

# .data:0x0 | 0x37AD8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x37AE0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x37AE4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x37AE8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x37AEC | size: 0x4
.obj gap_04_00037AEC_data, global
.hidden gap_04_00037AEC_data
	.4byte 0x00000000
.endobj gap_04_00037AEC_data

# .data:0x18 | 0x37AF0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x37AF8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x37AFC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x37B00 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x37B08 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x37B0C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x37B10 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x37B14 | size: 0x4
.obj gap_04_00037B14_data, global
.hidden gap_04_00037B14_data
	.4byte 0x00000000
.endobj gap_04_00037B14_data

# .data:0x40 | 0x37B18 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x37B20 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x37B24 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x37B28 | size: 0xC4
.obj unit_ura_noko_26_data_37B28, global
	.4byte 0x0000002F
	.4byte str_btl_un_ura_noko_tou2_0000f260
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
	.4byte str_SFX_ENM_NOKO_DAMAGED_tou2_0000f270
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000f288
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000f2a0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000f2b4
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_ura_noko_26_data_37B28

# .data:0x114 | 0x37BEC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_NKT_N_1_tou2_0000f2d0
	.4byte 0x00000002
	.4byte str_NKT_Y_1_tou2_0000f2d8
	.4byte 0x00000009
	.4byte str_NKT_Y_1_tou2_0000f2d8
	.4byte 0x00000005
	.4byte str_NKT_K_1_tou2_0000f2e0
	.4byte 0x00000004
	.4byte str_NKT_X_1_tou2_0000f2e8
	.4byte 0x00000003
	.4byte str_NKT_X_1_tou2_0000f2e8
	.4byte 0x0000001C
	.4byte str_NKT_S_1_tou2_0000f2f0
	.4byte 0x0000001D
	.4byte str_NKT_Q_1_tou2_0000f2f8
	.4byte 0x0000001E
	.4byte str_NKT_Q_1_tou2_0000f2f8
	.4byte 0x0000001F
	.4byte str_NKT_S_1_tou2_0000f2f0
	.4byte 0x00000027
	.4byte str_NKT_D_1_tou2_0000f300
	.4byte 0x00000032
	.4byte str_NKT_A_1_tou2_0000f308
	.4byte 0x0000002A
	.4byte str_NKT_R_1_tou2_0000f310
	.4byte 0x00000028
	.4byte str_NKT_W_1_tou2_0000f318
	.4byte 0x00000038
	.4byte str_NKT_X_1_tou2_0000f2e8
	.4byte 0x00000039
	.4byte str_NKT_X_1_tou2_0000f2e8
	.4byte 0x00000041
	.4byte str_NKT_T_1_tou2_0000f320
	.4byte 0x00000045
	.4byte str_NKT_S_1_tou2_0000f2f0
.endobj pose_table

# .data:0x1A4 | 0x37C7C | size: 0x88
.obj pose_table_turn, local
	.4byte 0x00000001
	.4byte str_NKT_N_2_tou2_0000f328
	.4byte 0x00000002
	.4byte str_NKT_B_1_tou2_0000f330
	.4byte 0x00000009
	.4byte str_NKT_B_1_tou2_0000f330
	.4byte 0x00000005
	.4byte str_NKT_K_2_tou2_0000f338
	.4byte 0x00000004
	.4byte str_NKT_K_2_tou2_0000f338
	.4byte 0x00000003
	.4byte str_NKT_K_2_tou2_0000f338
	.4byte 0x0000001C
	.4byte str_NKT_S_2_tou2_0000f340
	.4byte 0x0000001D
	.4byte str_NKT_Q_1_tou2_0000f2f8
	.4byte 0x0000001E
	.4byte str_NKT_Q_1_tou2_0000f2f8
	.4byte 0x0000001F
	.4byte str_NKT_D_1_tou2_0000f300
	.4byte 0x00000027
	.4byte str_NKT_D_1_tou2_0000f300
	.4byte 0x0000002A
	.4byte str_NKT_R_1_tou2_0000f310
	.4byte 0x00000028
	.4byte str_NKT_W_1_tou2_0000f318
	.4byte 0x00000038
	.4byte str_NKT_K_2_tou2_0000f338
	.4byte 0x00000039
	.4byte str_NKT_K_2_tou2_0000f338
	.4byte 0x00000041
	.4byte str_NKT_S_2_tou2_0000f340
	.4byte 0x00000045
	.4byte str_NKT_S_2_tou2_0000f340
.endobj pose_table_turn

# .data:0x22C | 0x37D04 | size: 0x18
.obj data_table, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x244 | 0x37D1C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x249 | 0x37D21 | size: 0x3
.obj gap_04_00037D21_data, global
.hidden gap_04_00037D21_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00037D21_data

# .data:0x24C | 0x37D24 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x251 | 0x37D29 | size: 0x3
.obj gap_04_00037D29_data, global
.hidden gap_04_00037D29_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00037D29_data

# .data:0x254 | 0x37D2C | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x259 | 0x37D31 | size: 0x3
.obj gap_04_00037D31_data, global
.hidden gap_04_00037D31_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00037D31_data

# .data:0x25C | 0x37D34 | size: 0x16
.obj regist, local
	.ascii "UZPdPddPdZdZdZPUPdPdd_"
.endobj regist

# .data:0x272 | 0x37D4A | size: 0x2
.obj gap_04_00037D4A_data, global
.hidden gap_04_00037D4A_data
	.2byte 0x0000
.endobj gap_04_00037D4A_data

# .data:0x274 | 0x37D4C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_ura_noko_tou2_0000f260
	.4byte str_c_uranoko_tou2_0000f348
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

# .data:0x2C0 | 0x37D98 | size: 0xC0
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

# .data:0x380 | 0x37E58 | size: 0xC0
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

# .data:0x440 | 0x37F18 | size: 0xA4
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
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f354
	.4byte str_SFX_ENM_NOKO_MOVE3R_tou2_0000f368
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f354
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f354
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x4E4 | 0x37FBC | size: 0x28
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

# .data:0x50C | 0x37FE4 | size: 0x138
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
	.4byte str_NKT_D_1_tou2_0000f300
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE1_tou2_0000f37c
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
	.4byte str_NKT_S_2_tou2_0000f340
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_turn_event

# .data:0x644 | 0x3811C | size: 0x140
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
	.4byte str_NKT_S_1_tou2_0000f2f0
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE2_tou2_0000f38c
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

# .data:0x784 | 0x3825C | size: 0x4B8
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f39c
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
	.4byte str_SFX_ENM_NOKO_SHELL1_tou2_0000f3b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_1_tou2_0000f308
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE1_tou2_0000f3c4
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f3d8
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f3d8
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

# .data:0xC3C | 0x38714 | size: 0x890
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f39c
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
	.4byte str_SFX_ENM_NOKO_SHELL1_tou2_0000f3b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_1_tou2_0000f308
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE1_tou2_0000f3c4
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
	.4byte zero_tou2_0000f3ec
	.4byte str_kemuri_test_tou2_0000f3f0
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f39c
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f3d8
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f3d8
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

# .data:0x14CC | 0x38FA4 | size: 0x8C0
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f39c
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
	.4byte str_SFX_ENM_NOKO_SHELL1_tou2_0000f3b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_2_tou2_0000f3fc
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f404
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
	.4byte zero_tou2_0000f3ec
	.4byte str_kemuri_test_tou2_0000f3f0
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f41c
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f434
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f44c
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

# .data:0x1D8C | 0x39864 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1DA4 | 0x3987C | size: 0x4
.obj gap_04_0003987C_data, global
.hidden gap_04_0003987C_data
	.4byte 0x00000000
.endobj gap_04_0003987C_data
