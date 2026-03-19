.include "macros.inc"
.file "unit_ura_pata.o"

# 0x00006424..0x00006504 | size: 0xE0
.text
.balign 4

# .text:0x0 | 0x6424 | size: 0xE0
.fn eff_aura, local
/* 00006424 000064E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006428 000064EC  7C 08 02 A6 */	mflr r0
/* 0000642C 000064F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006430 000064F4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00006434 000064F8  7C 9F 23 78 */	mr r31, r4
/* 00006438 000064FC  7C 7E 1B 78 */	mr r30, r3
/* 0000643C 00006500  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00006440 00006504  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006444 00006508  4B FF EB D1 */	bl evtGetValue
/* 00006448 0000650C  7C 64 1B 78 */	mr r4, r3
/* 0000644C 00006510  7F C3 F3 78 */	mr r3, r30
/* 00006450 00006514  4B FF EB C5 */	bl BattleTransID
/* 00006454 00006518  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006458 0000651C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000645C 00006520  7C 64 1B 78 */	mr r4, r3
/* 00006460 00006524  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006464 00006528  4B FF EB B1 */	bl BattleGetUnitPtr
/* 00006468 0000652C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000646C 00006530  7C 7F 1B 78 */	mr r31, r3
/* 00006470 00006534  41 82 00 2C */	beq .L_0000649C
/* 00006474 00006538  3C 60 00 00 */	lis r3, zero_tou2_0000f764@ha
/* 00006478 0000653C  3C 80 00 00 */	lis r4, float_neg1000_tou2_0000f768@ha
/* 0000647C 00006540  38 A3 00 00 */	addi r5, r3, zero_tou2_0000f764@l
/* 00006480 00006544  C0 44 00 00 */	lfs f2, float_neg1000_tou2_0000f768@l(r4)
/* 00006484 00006548  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00006488 0000654C  38 60 00 00 */	li r3, 0x0
/* 0000648C 00006550  38 80 00 78 */	li r4, 0x78
/* 00006490 00006554  FC 60 08 90 */	fmr f3, f1
/* 00006494 00006558  4B FF EB 81 */	bl effUranokoEntry
/* 00006498 0000655C  90 7F 02 20 */	stw r3, 0x220(r31)
.L_0000649C:
/* 0000649C 00006560  7F E3 FB 78 */	mr r3, r31
/* 000064A0 00006564  38 81 00 10 */	addi r4, r1, 0x10
/* 000064A4 00006568  38 A1 00 0C */	addi r5, r1, 0xc
/* 000064A8 0000656C  38 C1 00 08 */	addi r6, r1, 0x8
/* 000064AC 00006570  4B FF EB 69 */	bl BtlUnit_GetPos
/* 000064B0 00006574  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 000064B4 00006578  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000064B8 0000657C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000064BC 00006580  40 82 00 0C */	bne .L_000064C8
/* 000064C0 00006584  38 60 00 02 */	li r3, 0x2
/* 000064C4 00006588  48 00 00 2C */	b .L_000064F0
.L_000064C8:
/* 000064C8 0000658C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000064CC 00006590  38 60 00 00 */	li r3, 0x0
/* 000064D0 00006594  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000064D4 00006598  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 000064D8 0000659C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000064DC 000065A0  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 000064E0 000065A4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000064E4 000065A8  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 000064E8 000065AC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000064EC 000065B0  D0 04 00 14 */	stfs f0, 0x14(r4)
.L_000064F0:
/* 000064F0 000065B4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000064F4 000065B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000064F8 000065BC  7C 08 03 A6 */	mtlr r0
/* 000064FC 000065C0  38 21 00 20 */	addi r1, r1, 0x20
/* 00006500 000065C4  4E 80 00 20 */	blr
.endfn eff_aura

# 0x00005D30..0x00006030 | size: 0x300
.rodata
.balign 8

# .rodata:0x0 | 0x5D30 | size: 0x10
.obj str_btl_un_ura_pata_tou2_0000f470, local
	.string "btl_un_ura_pata"
.endobj str_btl_un_ura_pata_tou2_0000f470

# .rodata:0x10 | 0x5D40 | size: 0x16
.obj str_SFX_ENM_PATA_DAMAGED_tou2_0000f480, local
	.string "SFX_ENM_PATA_DAMAGED1"
.endobj str_SFX_ENM_PATA_DAMAGED_tou2_0000f480

# .rodata:0x26 | 0x5D56 | size: 0x2
.obj gap_03_00005D56_rodata, global
.hidden gap_03_00005D56_rodata
	.2byte 0x0000
.endobj gap_03_00005D56_rodata

# .rodata:0x28 | 0x5D58 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000f498, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000f498

# .rodata:0x3D | 0x5D6D | size: 0x3
.obj gap_03_00005D6D_rodata, global
.hidden gap_03_00005D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D6D_rodata

# .rodata:0x40 | 0x5D70 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000f4b0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000f4b0

# .rodata:0x54 | 0x5D84 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000f4c4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000f4c4

# .rodata:0x6D | 0x5D9D | size: 0x3
.obj gap_03_00005D9D_rodata, global
.hidden gap_03_00005D9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D9D_rodata

# .rodata:0x70 | 0x5DA0 | size: 0xA
.obj str_c_uranoko_tou2_0000f4e0, local
	.string "c_uranoko"
.endobj str_c_uranoko_tou2_0000f4e0

# .rodata:0x7A | 0x5DAA | size: 0x2
.obj gap_03_00005DAA_rodata, global
.hidden gap_03_00005DAA_rodata
	.2byte 0x0000
.endobj gap_03_00005DAA_rodata

# .rodata:0x7C | 0x5DAC | size: 0x8
.obj str_PTP_N_1_tou2_0000f4ec, local
	.string "PTP_N_1"
.endobj str_PTP_N_1_tou2_0000f4ec

# .rodata:0x84 | 0x5DB4 | size: 0x8
.obj str_PTP_Y_1_tou2_0000f4f4, local
	.string "PTP_Y_1"
.endobj str_PTP_Y_1_tou2_0000f4f4

# .rodata:0x8C | 0x5DBC | size: 0x8
.obj str_PTP_K_1_tou2_0000f4fc, local
	.string "PTP_K_1"
.endobj str_PTP_K_1_tou2_0000f4fc

# .rodata:0x94 | 0x5DC4 | size: 0x8
.obj str_PTP_X_1_tou2_0000f504, local
	.string "PTP_X_1"
.endobj str_PTP_X_1_tou2_0000f504

# .rodata:0x9C | 0x5DCC | size: 0x8
.obj str_PTP_S_1_tou2_0000f50c, local
	.string "PTP_S_1"
.endobj str_PTP_S_1_tou2_0000f50c

# .rodata:0xA4 | 0x5DD4 | size: 0x8
.obj str_PTP_Q_1_tou2_0000f514, local
	.string "PTP_Q_1"
.endobj str_PTP_Q_1_tou2_0000f514

# .rodata:0xAC | 0x5DDC | size: 0x8
.obj str_PTP_D_1_tou2_0000f51c, local
	.string "PTP_D_1"
.endobj str_PTP_D_1_tou2_0000f51c

# .rodata:0xB4 | 0x5DE4 | size: 0x8
.obj str_PTP_A_1_tou2_0000f524, local
	.string "PTP_A_1"
.endobj str_PTP_A_1_tou2_0000f524

# .rodata:0xBC | 0x5DEC | size: 0x8
.obj str_PTP_R_1_tou2_0000f52c, local
	.string "PTP_R_1"
.endobj str_PTP_R_1_tou2_0000f52c

# .rodata:0xC4 | 0x5DF4 | size: 0x8
.obj str_PTP_W_1_tou2_0000f534, local
	.string "PTP_W_1"
.endobj str_PTP_W_1_tou2_0000f534

# .rodata:0xCC | 0x5DFC | size: 0x8
.obj str_PTP_T_1_tou2_0000f53c, local
	.string "PTP_T_1"
.endobj str_PTP_T_1_tou2_0000f53c

# .rodata:0xD4 | 0x5E04 | size: 0x13
.obj str_SFX_ENM_PATA_WAIT1_tou2_0000f544, local
	.string "SFX_ENM_PATA_WAIT1"
.endobj str_SFX_ENM_PATA_WAIT1_tou2_0000f544

# .rodata:0xE7 | 0x5E17 | size: 0x1
.obj gap_03_00005E17_rodata, global
.hidden gap_03_00005E17_rodata
	.byte 0x00
.endobj gap_03_00005E17_rodata

# .rodata:0xE8 | 0x5E18 | size: 0x13
.obj str_SFX_ENM_PATA_MOVE1_tou2_0000f558, local
	.string "SFX_ENM_PATA_MOVE1"
.endobj str_SFX_ENM_PATA_MOVE1_tou2_0000f558

# .rodata:0xFB | 0x5E2B | size: 0x1
.obj gap_03_00005E2B_rodata, global
.hidden gap_03_00005E2B_rodata
	.byte 0x00
.endobj gap_03_00005E2B_rodata

# .rodata:0xFC | 0x5E2C | size: 0x8
.obj str_PTP_A_3_tou2_0000f56c, local
	.string "PTP_A_3"
.endobj str_PTP_A_3_tou2_0000f56c

# .rodata:0x104 | 0x5E34 | size: 0x8
.obj str_NKT_D_1_tou2_0000f574, local
	.string "NKT_D_1"
.endobj str_NKT_D_1_tou2_0000f574

# .rodata:0x10C | 0x5E3C | size: 0xE
.obj str_SFX_ENM_FALL1_tou2_0000f57c, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_tou2_0000f57c

# .rodata:0x11A | 0x5E4A | size: 0x2
.obj gap_03_00005E4A_rodata, global
.hidden gap_03_00005E4A_rodata
	.2byte 0x0000
.endobj gap_03_00005E4A_rodata

# .rodata:0x11C | 0x5E4C | size: 0x14
.obj str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c, local
	.string "SFX_ENM_NOKO_MOVE3L"
.endobj str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c

# .rodata:0x130 | 0x5E60 | size: 0x14
.obj str_SFX_ENM_NOKO_MOVE3R_tou2_0000f5a0, local
	.string "SFX_ENM_NOKO_MOVE3R"
.endobj str_SFX_ENM_NOKO_MOVE3R_tou2_0000f5a0

# .rodata:0x144 | 0x5E74 | size: 0x13
.obj str_SFX_ENM_PATA_MOVE2_tou2_0000f5b4, local
	.string "SFX_ENM_PATA_MOVE2"
.endobj str_SFX_ENM_PATA_MOVE2_tou2_0000f5b4

# .rodata:0x157 | 0x5E87 | size: 0x1
.obj gap_03_00005E87_rodata, global
.hidden gap_03_00005E87_rodata
	.byte 0x00
.endobj gap_03_00005E87_rodata

# .rodata:0x158 | 0x5E88 | size: 0x13
.obj str_SFX_ENM_PATA_MOVE3_tou2_0000f5c8, local
	.string "SFX_ENM_PATA_MOVE3"
.endobj str_SFX_ENM_PATA_MOVE3_tou2_0000f5c8

# .rodata:0x16B | 0x5E9B | size: 0x1
.obj gap_03_00005E9B_rodata, global
.hidden gap_03_00005E9B_rodata
	.byte 0x00
.endobj gap_03_00005E9B_rodata

# .rodata:0x16C | 0x5E9C | size: 0x8
.obj str_PTP_A_4_tou2_0000f5dc, local
	.string "PTP_A_4"
.endobj str_PTP_A_4_tou2_0000f5dc

# .rodata:0x174 | 0x5EA4 | size: 0x15
.obj str_SFX_ENM_PATA_ATTACK1_tou2_0000f5e4, local
	.string "SFX_ENM_PATA_ATTACK1"
.endobj str_SFX_ENM_PATA_ATTACK1_tou2_0000f5e4

# .rodata:0x189 | 0x5EB9 | size: 0x3
.obj gap_03_00005EB9_rodata, global
.hidden gap_03_00005EB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005EB9_rodata

# .rodata:0x18C | 0x5EBC | size: 0x8
.obj str_NKT_N_1_tou2_0000f5fc, local
	.string "NKT_N_1"
.endobj str_NKT_N_1_tou2_0000f5fc

# .rodata:0x194 | 0x5EC4 | size: 0x8
.obj str_NKT_Y_1_tou2_0000f604, local
	.string "NKT_Y_1"
.endobj str_NKT_Y_1_tou2_0000f604

# .rodata:0x19C | 0x5ECC | size: 0x8
.obj str_NKT_K_1_tou2_0000f60c, local
	.string "NKT_K_1"
.endobj str_NKT_K_1_tou2_0000f60c

# .rodata:0x1A4 | 0x5ED4 | size: 0x8
.obj str_NKT_X_1_tou2_0000f614, local
	.string "NKT_X_1"
.endobj str_NKT_X_1_tou2_0000f614

# .rodata:0x1AC | 0x5EDC | size: 0x8
.obj str_NKT_S_1_tou2_0000f61c, local
	.string "NKT_S_1"
.endobj str_NKT_S_1_tou2_0000f61c

# .rodata:0x1B4 | 0x5EE4 | size: 0x8
.obj str_NKT_Q_1_tou2_0000f624, local
	.string "NKT_Q_1"
.endobj str_NKT_Q_1_tou2_0000f624

# .rodata:0x1BC | 0x5EEC | size: 0x8
.obj str_NKT_A_1_tou2_0000f62c, local
	.string "NKT_A_1"
.endobj str_NKT_A_1_tou2_0000f62c

# .rodata:0x1C4 | 0x5EF4 | size: 0x8
.obj str_NKT_R_1_tou2_0000f634, local
	.string "NKT_R_1"
.endobj str_NKT_R_1_tou2_0000f634

# .rodata:0x1CC | 0x5EFC | size: 0x8
.obj str_NKT_W_1_tou2_0000f63c, local
	.string "NKT_W_1"
.endobj str_NKT_W_1_tou2_0000f63c

# .rodata:0x1D4 | 0x5F04 | size: 0x8
.obj str_NKT_T_1_tou2_0000f644, local
	.string "NKT_T_1"
.endobj str_NKT_T_1_tou2_0000f644

# .rodata:0x1DC | 0x5F0C | size: 0x8
.obj str_NKT_N_2_tou2_0000f64c, local
	.string "NKT_N_2"
.endobj str_NKT_N_2_tou2_0000f64c

# .rodata:0x1E4 | 0x5F14 | size: 0x8
.obj str_NKT_B_1_tou2_0000f654, local
	.string "NKT_B_1"
.endobj str_NKT_B_1_tou2_0000f654

# .rodata:0x1EC | 0x5F1C | size: 0x8
.obj str_NKT_K_2_tou2_0000f65c, local
	.string "NKT_K_2"
.endobj str_NKT_K_2_tou2_0000f65c

# .rodata:0x1F4 | 0x5F24 | size: 0x8
.obj str_NKT_S_2_tou2_0000f664, local
	.string "NKT_S_2"
.endobj str_NKT_S_2_tou2_0000f664

# .rodata:0x1FC | 0x5F2C | size: 0x10
.obj str_btl_un_ura_noko_tou2_0000f66c, local
	.string "btl_un_ura_noko"
.endobj str_btl_un_ura_noko_tou2_0000f66c

# .rodata:0x20C | 0x5F3C | size: 0x10
.obj str_SFX_ENM_INSIDE1_tou2_0000f67c, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_tou2_0000f67c

# .rodata:0x21C | 0x5F4C | size: 0x10
.obj str_SFX_ENM_INSIDE2_tou2_0000f68c, local
	.string "SFX_ENM_INSIDE2"
.endobj str_SFX_ENM_INSIDE2_tou2_0000f68c

# .rodata:0x22C | 0x5F5C | size: 0x13
.obj str_SFX_ENM_NOKO_JUMP1_tou2_0000f69c, local
	.string "SFX_ENM_NOKO_JUMP1"
.endobj str_SFX_ENM_NOKO_JUMP1_tou2_0000f69c

# .rodata:0x23F | 0x5F6F | size: 0x1
.obj gap_03_00005F6F_rodata, global
.hidden gap_03_00005F6F_rodata
	.byte 0x00
.endobj gap_03_00005F6F_rodata

# .rodata:0x240 | 0x5F70 | size: 0x14
.obj str_SFX_ENM_NOKO_SHELL1_tou2_0000f6b0, local
	.string "SFX_ENM_NOKO_SHELL1"
.endobj str_SFX_ENM_NOKO_SHELL1_tou2_0000f6b0

# .rodata:0x254 | 0x5F84 | size: 0x13
.obj str_SFX_ENM_NOKO_MOVE1_tou2_0000f6c4, local
	.string "SFX_ENM_NOKO_MOVE1"
.endobj str_SFX_ENM_NOKO_MOVE1_tou2_0000f6c4

# .rodata:0x267 | 0x5F97 | size: 0x1
.obj gap_03_00005F97_rodata, global
.hidden gap_03_00005F97_rodata
	.byte 0x00
.endobj gap_03_00005F97_rodata

# .rodata:0x268 | 0x5F98 | size: 0x13
.obj str_SFX_ENM_NOKO_MOVE2_tou2_0000f6d8, local
	.string "SFX_ENM_NOKO_MOVE2"
.endobj str_SFX_ENM_NOKO_MOVE2_tou2_0000f6d8

# .rodata:0x27B | 0x5FAB | size: 0x1
.obj gap_03_00005FAB_rodata, global
.hidden gap_03_00005FAB_rodata
	.byte 0x00
.endobj gap_03_00005FAB_rodata

# .rodata:0x27C | 0x5FAC | size: 0x1
.obj zero_tou2_0000f6ec, local
	.byte 0x00
.endobj zero_tou2_0000f6ec

# .rodata:0x27D | 0x5FAD | size: 0x3
.obj gap_03_00005FAD_rodata, global
.hidden gap_03_00005FAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FAD_rodata

# .rodata:0x280 | 0x5FB0 | size: 0xC
.obj str_kemuri_test_tou2_0000f6f0, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0000f6f0

# .rodata:0x28C | 0x5FBC | size: 0x8
.obj str_NKT_A_2_tou2_0000f6fc, local
	.string "NKT_A_2"
.endobj str_NKT_A_2_tou2_0000f6fc

# .rodata:0x294 | 0x5FC4 | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f704, local
	.string "SFX_ENM_URANOKO_MOVE1"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f704

# .rodata:0x2AA | 0x5FDA | size: 0x2
.obj gap_03_00005FDA_rodata, global
.hidden gap_03_00005FDA_rodata
	.2byte 0x0000
.endobj gap_03_00005FDA_rodata

# .rodata:0x2AC | 0x5FDC | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f71c, local
	.string "SFX_ENM_URANOKO_MOVE2"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f71c

# .rodata:0x2C2 | 0x5FF2 | size: 0x2
.obj gap_03_00005FF2_rodata, global
.hidden gap_03_00005FF2_rodata
	.2byte 0x0000
.endobj gap_03_00005FF2_rodata

# .rodata:0x2C4 | 0x5FF4 | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f734, local
	.string "SFX_ENM_URANOKO_MOVE3"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f734

# .rodata:0x2DA | 0x600A | size: 0x2
.obj gap_03_0000600A_rodata, global
.hidden gap_03_0000600A_rodata
	.2byte 0x0000
.endobj gap_03_0000600A_rodata

# .rodata:0x2DC | 0x600C | size: 0x16
.obj str_SFX_ENM_URANOKO_MOVE_tou2_0000f74c, local
	.string "SFX_ENM_URANOKO_MOVE4"
.endobj str_SFX_ENM_URANOKO_MOVE_tou2_0000f74c
	.2byte 0x0000

# .rodata:0x2F4 | 0x6024 | size: 0x4
.obj zero_tou2_0000f764, local
	.float 0
.endobj zero_tou2_0000f764

# .rodata:0x2F8 | 0x6028 | size: 0x4
.obj float_neg1000_tou2_0000f768, local
	.float -1000
.endobj float_neg1000_tou2_0000f768

# .rodata:0x2FC | 0x602C | size: 0x4
.obj gap_03_0000602C_rodata, global
.hidden gap_03_0000602C_rodata
	.4byte 0x00000000
.endobj gap_03_0000602C_rodata

# 0x00039880..0x0003C4C0 | size: 0x2C40
.data
.balign 8

# .data:0x0 | 0x39880 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x39888 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3988C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x39890 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x39894 | size: 0x4
.obj gap_04_00039894_data, global
.hidden gap_04_00039894_data
	.4byte 0x00000000
.endobj gap_04_00039894_data

# .data:0x18 | 0x39898 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x398A0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x398A4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x398A8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x398B0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x398B4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x398B8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x398BC | size: 0x4
.obj gap_04_000398BC_data, global
.hidden gap_04_000398BC_data
	.4byte 0x00000000
.endobj gap_04_000398BC_data

# .data:0x40 | 0x398C0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x398C8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x398CC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x398D0 | size: 0xC4
.obj unit_ura_pata_26_data_398D0, global
	.4byte 0x00000030
	.4byte str_btl_un_ura_pata_tou2_0000f470
	.4byte 0x00080000
	.4byte 0x01011100
	.4byte 0x02460132
	.4byte 0x270F0024
	.4byte 0x0028FFFC
	.4byte 0x00280000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41100000
	.4byte 0x40C00000
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
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42200000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_DAMAGED_tou2_0000f480
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000f498
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000f4b0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000f4c4
	.4byte 0x00040004
	.4byte regist_patapata
	.4byte 0x01000000
	.4byte parts_patapata
	.4byte init_event_patapata
	.4byte data_table_patapata
.endobj unit_ura_pata_26_data_398D0

# .data:0x114 | 0x39994 | size: 0xC0
.obj weapon_patapata_attack, local
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000000
	.4byte 0x80002000
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
.endobj weapon_patapata_attack

# .data:0x1D4 | 0x39A54 | size: 0x5
.obj defence_patapata, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence_patapata

# .data:0x1D9 | 0x39A59 | size: 0x3
.obj gap_04_00039A59_data, global
.hidden gap_04_00039A59_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00039A59_data

# .data:0x1DC | 0x39A5C | size: 0x5
.obj defence_patapata_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patapata_attr

# .data:0x1E1 | 0x39A61 | size: 0x3
.obj gap_04_00039A61_data, global
.hidden gap_04_00039A61_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00039A61_data

# .data:0x1E4 | 0x39A64 | size: 0x16
.obj regist_patapata, local
	.ascii "UZndPddPdZdZdZPUddPdd_"
.endobj regist_patapata

# .data:0x1FA | 0x39A7A | size: 0x2
.obj gap_04_00039A7A_data, global
.hidden gap_04_00039A7A_data
	.2byte 0x0000
.endobj gap_04_00039A7A_data

# .data:0x1FC | 0x39A7C | size: 0x4C
.obj parts_patapata, local
	.4byte 0x00000001
	.4byte str_btl_un_ura_pata_tou2_0000f470
	.4byte str_c_uranoko_tou2_0000f4e0
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
	.4byte defence_patapata
	.4byte defence_patapata_attr
	.4byte 0x00600809
	.4byte 0x00000000
	.4byte pose_table_patapata
.endobj parts_patapata

# .data:0x248 | 0x39AC8 | size: 0x90
.obj pose_table_patapata, local
	.4byte 0x00000001
	.4byte str_PTP_N_1_tou2_0000f4ec
	.4byte 0x00000002
	.4byte str_PTP_Y_1_tou2_0000f4f4
	.4byte 0x00000009
	.4byte str_PTP_Y_1_tou2_0000f4f4
	.4byte 0x00000005
	.4byte str_PTP_K_1_tou2_0000f4fc
	.4byte 0x00000004
	.4byte str_PTP_X_1_tou2_0000f504
	.4byte 0x00000003
	.4byte str_PTP_X_1_tou2_0000f504
	.4byte 0x0000001C
	.4byte str_PTP_S_1_tou2_0000f50c
	.4byte 0x0000001D
	.4byte str_PTP_Q_1_tou2_0000f514
	.4byte 0x0000001E
	.4byte str_PTP_Q_1_tou2_0000f514
	.4byte 0x0000001F
	.4byte str_PTP_S_1_tou2_0000f50c
	.4byte 0x00000027
	.4byte str_PTP_D_1_tou2_0000f51c
	.4byte 0x00000032
	.4byte str_PTP_A_1_tou2_0000f524
	.4byte 0x0000002A
	.4byte str_PTP_R_1_tou2_0000f52c
	.4byte 0x00000028
	.4byte str_PTP_W_1_tou2_0000f534
	.4byte 0x00000038
	.4byte str_PTP_X_1_tou2_0000f504
	.4byte 0x00000039
	.4byte str_PTP_X_1_tou2_0000f504
	.4byte 0x00000041
	.4byte str_PTP_T_1_tou2_0000f53c
	.4byte 0x00000045
	.4byte str_PTP_S_1_tou2_0000f50c
.endobj pose_table_patapata

# .data:0x2D8 | 0x39B58 | size: 0x18
.obj data_table_patapata, local
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte patapata_dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_patapata

# .data:0x2F0 | 0x39B70 | size: 0xA0
.obj pose_sound_timing_table, local
	.4byte str_PTP_S_1_tou2_0000f50c
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_WAIT1_tou2_0000f544
	.4byte 0x00000001
	.4byte str_PTP_W_1_tou2_0000f534
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_MOVE1_tou2_0000f558
	.4byte 0x00000001
	.4byte str_PTP_R_1_tou2_0000f52c
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_MOVE1_tou2_0000f558
	.4byte 0x00000001
	.4byte str_PTP_N_1_tou2_0000f4ec
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_WAIT1_tou2_0000f544
	.4byte 0x00000001
	.4byte str_PTP_K_1_tou2_0000f4fc
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_WAIT1_tou2_0000f544
	.4byte 0x00000001
	.4byte str_PTP_A_3_tou2_0000f56c
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_WAIT1_tou2_0000f544
	.4byte 0x00000001
	.4byte str_PTP_X_1_tou2_0000f504
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATA_WAIT1_tou2_0000f544
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x390 | 0x39C10 | size: 0x68
.obj init_event_patapata, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_patapata
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte attack_event_patapata
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_patapata

# .data:0x3F8 | 0x39C78 | size: 0x2F4
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte parts
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseDirect
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_NKT_D_1_tou2_0000f574
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFE363C8A
	.4byte 0x0000002F
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_tou2_0000f57c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHpDamageCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte str_SFX_ENM_NOKO_MOVE3R_tou2_0000f5a0
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x00000002
	.4byte 0x00000021
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte str_SFX_ENM_NOKO_MOVE3R_tou2_0000f5a0
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x0001005E
	.4byte dmg_turn_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0x6EC | 0x39F6C | size: 0x4C
.obj patapata_dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj patapata_dmg_first_attack_pos

# .data:0x738 | 0x39FB8 | size: 0x874
.obj attack_event_patapata, local
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
	.4byte 0x00000032
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
	.4byte weapon_patapata_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_patapata_attack
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
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_patapata_attack
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
	.4byte weapon_patapata_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8880
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATA_MOVE2_tou2_0000f5b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PTP_A_1_tou2_0000f524
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
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATA_MOVE3_tou2_0000f5c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PTP_A_4_tou2_0000f5dc
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patapata_attack
	.4byte 0x00100100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patapata_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_patapata_attack
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patapata_attack
	.4byte 0x00100100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patapata_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATA_ATTACK1_tou2_0000f5e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000018
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
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
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
.endobj attack_event_patapata

# .data:0xFAC | 0x3A82C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_NKT_N_1_tou2_0000f5fc
	.4byte 0x00000002
	.4byte str_NKT_Y_1_tou2_0000f604
	.4byte 0x00000009
	.4byte str_NKT_Y_1_tou2_0000f604
	.4byte 0x00000005
	.4byte str_NKT_K_1_tou2_0000f60c
	.4byte 0x00000004
	.4byte str_NKT_X_1_tou2_0000f614
	.4byte 0x00000003
	.4byte str_NKT_X_1_tou2_0000f614
	.4byte 0x0000001C
	.4byte str_NKT_S_1_tou2_0000f61c
	.4byte 0x0000001D
	.4byte str_NKT_Q_1_tou2_0000f624
	.4byte 0x0000001E
	.4byte str_NKT_Q_1_tou2_0000f624
	.4byte 0x0000001F
	.4byte str_NKT_S_1_tou2_0000f61c
	.4byte 0x00000027
	.4byte str_NKT_D_1_tou2_0000f574
	.4byte 0x00000032
	.4byte str_NKT_A_1_tou2_0000f62c
	.4byte 0x0000002A
	.4byte str_NKT_R_1_tou2_0000f634
	.4byte 0x00000028
	.4byte str_NKT_W_1_tou2_0000f63c
	.4byte 0x00000038
	.4byte str_NKT_X_1_tou2_0000f614
	.4byte 0x00000039
	.4byte str_NKT_X_1_tou2_0000f614
	.4byte 0x00000041
	.4byte str_NKT_T_1_tou2_0000f644
	.4byte 0x00000045
	.4byte str_NKT_S_1_tou2_0000f61c
.endobj pose_table

# .data:0x103C | 0x3A8BC | size: 0x88
.obj pose_table_turn, local
	.4byte 0x00000001
	.4byte str_NKT_N_2_tou2_0000f64c
	.4byte 0x00000002
	.4byte str_NKT_B_1_tou2_0000f654
	.4byte 0x00000009
	.4byte str_NKT_B_1_tou2_0000f654
	.4byte 0x00000005
	.4byte str_NKT_K_2_tou2_0000f65c
	.4byte 0x00000004
	.4byte str_NKT_K_2_tou2_0000f65c
	.4byte 0x00000003
	.4byte str_NKT_K_2_tou2_0000f65c
	.4byte 0x0000001C
	.4byte str_NKT_S_2_tou2_0000f664
	.4byte 0x0000001D
	.4byte str_NKT_Q_1_tou2_0000f624
	.4byte 0x0000001E
	.4byte str_NKT_Q_1_tou2_0000f624
	.4byte 0x0000001F
	.4byte str_NKT_D_1_tou2_0000f574
	.4byte 0x00000027
	.4byte str_NKT_D_1_tou2_0000f574
	.4byte 0x0000002A
	.4byte str_NKT_R_1_tou2_0000f634
	.4byte 0x00000028
	.4byte str_NKT_W_1_tou2_0000f63c
	.4byte 0x00000038
	.4byte str_NKT_K_2_tou2_0000f65c
	.4byte 0x00000039
	.4byte str_NKT_K_2_tou2_0000f65c
	.4byte 0x00000041
	.4byte str_NKT_S_2_tou2_0000f664
	.4byte 0x00000045
	.4byte str_NKT_S_2_tou2_0000f664
.endobj pose_table_turn

# .data:0x10C4 | 0x3A944 | size: 0x18
.obj data_table, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x10DC | 0x3A95C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x10E1 | 0x3A961 | size: 0x3
.obj gap_04_0003A961_data, global
.hidden gap_04_0003A961_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003A961_data

# .data:0x10E4 | 0x3A964 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x10E9 | 0x3A969 | size: 0x3
.obj gap_04_0003A969_data, global
.hidden gap_04_0003A969_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003A969_data

# .data:0x10EC | 0x3A96C | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x10F1 | 0x3A971 | size: 0x3
.obj gap_04_0003A971_data, global
.hidden gap_04_0003A971_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003A971_data

# .data:0x10F4 | 0x3A974 | size: 0x16
.obj regist, local
	.ascii "UZPdPddPdZdZdZPUPdPdd_"
.endobj regist

# .data:0x110A | 0x3A98A | size: 0x2
.obj gap_04_0003A98A_data, global
.hidden gap_04_0003A98A_data
	.2byte 0x0000
.endobj gap_04_0003A98A_data

# .data:0x110C | 0x3A98C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_ura_noko_tou2_0000f66c
	.4byte str_c_uranoko_tou2_0000f4e0
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

# .data:0x1158 | 0x3A9D8 | size: 0xC0
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

# .data:0x1218 | 0x3AA98 | size: 0xC0
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

# .data:0x12D8 | 0x3AB58 | size: 0xA4
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
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte str_SFX_ENM_NOKO_MOVE3R_tou2_0000f5a0
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte str_SFX_ENM_NOKO_MOVE3L_tou2_0000f58c
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x137C | 0x3ABFC | size: 0x28
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

# .data:0x13A4 | 0x3AC24 | size: 0x138
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
	.4byte str_NKT_D_1_tou2_0000f574
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE1_tou2_0000f67c
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
	.4byte str_NKT_S_2_tou2_0000f664
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_turn_event

# .data:0x14DC | 0x3AD5C | size: 0x140
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
	.4byte str_NKT_S_1_tou2_0000f61c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE2_tou2_0000f68c
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

# .data:0x161C | 0x3AE9C | size: 0x4B8
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f69c
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
	.4byte str_SFX_ENM_NOKO_SHELL1_tou2_0000f6b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_1_tou2_0000f62c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE1_tou2_0000f6c4
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f6d8
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f6d8
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

# .data:0x1AD4 | 0x3B354 | size: 0x890
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f69c
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
	.4byte str_SFX_ENM_NOKO_SHELL1_tou2_0000f6b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_1_tou2_0000f62c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_NOKO_MOVE1_tou2_0000f6c4
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
	.4byte zero_tou2_0000f6ec
	.4byte str_kemuri_test_tou2_0000f6f0
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f69c
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f6d8
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
	.4byte str_SFX_ENM_NOKO_MOVE2_tou2_0000f6d8
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

# .data:0x2364 | 0x3BBE4 | size: 0x8C0
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
	.4byte str_SFX_ENM_NOKO_JUMP1_tou2_0000f69c
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
	.4byte str_SFX_ENM_NOKO_SHELL1_tou2_0000f6b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_NKT_A_2_tou2_0000f6fc
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f704
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
	.4byte zero_tou2_0000f6ec
	.4byte str_kemuri_test_tou2_0000f6f0
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f71c
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f734
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
	.4byte str_SFX_ENM_URANOKO_MOVE_tou2_0000f74c
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

# .data:0x2C24 | 0x3C4A4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2C3C | 0x3C4BC | size: 0x4
.obj gap_04_0003C4BC_data, global
.hidden gap_04_0003C4BC_data
	.4byte 0x00000000
.endobj gap_04_0003C4BC_data
