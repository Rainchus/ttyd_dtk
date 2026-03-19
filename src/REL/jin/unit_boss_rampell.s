.include "macros.inc"
.file "unit_boss_rampell.o"

# 0x00006D18..0x00006EFC | size: 0x1E4
.text
.balign 4

# .text:0x0 | 0x6D18 | size: 0x68
.fn _mario_makkuro_set, local
/* 00006D18 00006DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006D1C 00006DE0  7C 08 02 A6 */	mflr r0
/* 00006D20 00006DE4  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00006D24 00006DE8  38 80 FF FE */	li r4, -0x2
/* 00006D28 00006DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006D2C 00006DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006D30 00006DF4  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 00006D34 00006DF8  4B FF 92 CD */	bl BattleTransID
/* 00006D38 00006DFC  7C 64 1B 78 */	mr r4, r3
/* 00006D3C 00006E00  7F E3 FB 78 */	mr r3, r31
/* 00006D40 00006E04  4B FF 92 C1 */	bl BattleGetUnitPtr
/* 00006D44 00006E08  7C 7F 1B 79 */	mr. r31, r3
/* 00006D48 00006E0C  41 82 00 20 */	beq .L_00006D68
/* 00006D4C 00006E10  4B FF 92 B5 */	bl faker_mario_makkuro_set
/* 00006D50 00006E14  7F E3 FB 78 */	mr r3, r31
/* 00006D54 00006E18  38 80 00 01 */	li r4, 0x1
/* 00006D58 00006E1C  4B FF 92 A9 */	bl BtlUnit_GetPartsPtr
/* 00006D5C 00006E20  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 00006D60 00006E24  3C 80 0B 00 */	lis r4, 0xb00
/* 00006D64 00006E28  4B FF 92 9D */	bl animPoseSetMaterialFlagOn
.L_00006D68:
/* 00006D68 00006E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006D6C 00006E30  38 60 00 02 */	li r3, 0x2
/* 00006D70 00006E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00006D74 00006E38  7C 08 03 A6 */	mtlr r0
/* 00006D78 00006E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 00006D7C 00006E40  4E 80 00 20 */	blr
.endfn _mario_makkuro_set

# .text:0x68 | 0x6D80 | size: 0x6C
.fn unk_jin_00006e44, local
/* 00006D80 00006E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006D84 00006E48  7C 08 02 A6 */	mflr r0
/* 00006D88 00006E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006D8C 00006E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006D90 00006E54  7C 7F 1B 78 */	mr r31, r3
/* 00006D94 00006E58  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00006D98 00006E5C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006D9C 00006E60  4B FF 92 65 */	bl evtGetValue
/* 00006DA0 00006E64  7C 60 1B 78 */	mr r0, r3
/* 00006DA4 00006E68  7F E3 FB 78 */	mr r3, r31
/* 00006DA8 00006E6C  7C 04 03 78 */	mr r4, r0
/* 00006DAC 00006E70  4B FF 92 55 */	bl BattleTransID
/* 00006DB0 00006E74  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006DB4 00006E78  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006DB8 00006E7C  7C 64 1B 78 */	mr r4, r3
/* 00006DBC 00006E80  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006DC0 00006E84  4B FF 92 41 */	bl BattleGetUnitPtr
/* 00006DC4 00006E88  28 03 00 00 */	cmplwi r3, 0x0
/* 00006DC8 00006E8C  41 82 00 0C */	beq .L_00006DD4
/* 00006DCC 00006E90  88 03 00 22 */	lbz r0, 0x22(r3)
/* 00006DD0 00006E94  98 03 00 23 */	stb r0, 0x23(r3)
.L_00006DD4:
/* 00006DD4 00006E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006DD8 00006E9C  38 60 00 02 */	li r3, 0x2
/* 00006DDC 00006EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00006DE0 00006EA4  7C 08 03 A6 */	mtlr r0
/* 00006DE4 00006EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 00006DE8 00006EAC  4E 80 00 20 */	blr
.endfn unk_jin_00006e44

# .text:0xD4 | 0x6DEC | size: 0x30
.fn vivian_comeback, local
/* 00006DEC 00006EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006DF0 00006EB4  7C 08 02 A6 */	mflr r0
/* 00006DF4 00006EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006DF8 00006EBC  4B FF 92 09 */	bl pouchGetPtr
/* 00006DFC 00006EC0  A0 03 00 54 */	lhz r0, 0x54(r3)
/* 00006E00 00006EC4  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 00006E04 00006EC8  B0 03 00 54 */	sth r0, 0x54(r3)
/* 00006E08 00006ECC  38 60 00 01 */	li r3, 0x1
/* 00006E0C 00006ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006E10 00006ED4  7C 08 03 A6 */	mtlr r0
/* 00006E14 00006ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 00006E18 00006EDC  4E 80 00 20 */	blr
.endfn vivian_comeback

# .text:0x104 | 0x6E1C | size: 0xE0
.fn eff_scanning, local
/* 00006E1C 00006EE0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00006E20 00006EE4  7C 08 02 A6 */	mflr r0
/* 00006E24 00006EE8  90 01 00 54 */	stw r0, 0x54(r1)
/* 00006E28 00006EEC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00006E2C 00006EF0  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00006E30 00006EF4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00006E34 00006EF8  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00006E38 00006EFC  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00006E3C 00006F00  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00006E40 00006F04  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00006E44 00006F08  7C 7D 1B 78 */	mr r29, r3
/* 00006E48 00006F0C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006E4C 00006F10  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006E50 00006F14  4B FF 91 B1 */	bl evtGetValue
/* 00006E54 00006F18  7C 64 1B 78 */	mr r4, r3
/* 00006E58 00006F1C  7F A3 EB 78 */	mr r3, r29
/* 00006E5C 00006F20  4B FF 91 A5 */	bl BattleTransID
/* 00006E60 00006F24  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006E64 00006F28  7C 7E 1B 78 */	mr r30, r3
/* 00006E68 00006F2C  7F A3 EB 78 */	mr r3, r29
/* 00006E6C 00006F30  4B FF 91 95 */	bl evtGetFloat
/* 00006E70 00006F34  FF E0 08 90 */	fmr f31, f1
/* 00006E74 00006F38  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00006E78 00006F3C  7F A3 EB 78 */	mr r3, r29
/* 00006E7C 00006F40  4B FF 91 85 */	bl evtGetFloat
/* 00006E80 00006F44  FF C0 08 90 */	fmr f30, f1
/* 00006E84 00006F48  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006E88 00006F4C  7F A3 EB 78 */	mr r3, r29
/* 00006E8C 00006F50  4B FF 91 75 */	bl evtGetFloat
/* 00006E90 00006F54  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00006E94 00006F58  FF A0 08 90 */	fmr f29, f1
/* 00006E98 00006F5C  38 63 00 00 */	addi r3, r3, _battleWorkPointer@l
/* 00006E9C 00006F60  7F C4 F3 78 */	mr r4, r30
/* 00006EA0 00006F64  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00006EA4 00006F68  4B FF 91 5D */	bl BattleGetUnitPtr
/* 00006EA8 00006F6C  FC 20 F8 90 */	fmr f1, f31
/* 00006EAC 00006F70  7C 7F 1B 78 */	mr r31, r3
/* 00006EB0 00006F74  FC 40 F0 90 */	fmr f2, f30
/* 00006EB4 00006F78  38 60 00 00 */	li r3, 0x0
/* 00006EB8 00006F7C  FC 60 E8 90 */	fmr f3, f29
/* 00006EBC 00006F80  4B FF 91 45 */	bl effScanningEntry
/* 00006EC0 00006F84  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00006EC4 00006F88  38 60 00 02 */	li r3, 0x2
/* 00006EC8 00006F8C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006ECC 00006F90  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 00006ED0 00006F94  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00006ED4 00006F98  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00006ED8 00006F9C  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00006EDC 00006FA0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00006EE0 00006FA4  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00006EE4 00006FA8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00006EE8 00006FAC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00006EEC 00006FB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00006EF0 00006FB4  7C 08 03 A6 */	mtlr r0
/* 00006EF4 00006FB8  38 21 00 50 */	addi r1, r1, 0x50
/* 00006EF8 00006FBC  4E 80 00 20 */	blr
.endfn eff_scanning

# 0x000024B0..0x000028F8 | size: 0x448
.rodata
.balign 8

# .rodata:0x0 | 0x24B0 | size: 0xE
.obj str_btl_un_hatena_jin_000096d0, local
	.string "btl_un_hatena"
.endobj str_btl_un_hatena_jin_000096d0

# .rodata:0xE | 0x24BE | size: 0x2
.obj gap_03_000024BE_rodata, global
.hidden gap_03_000024BE_rodata
	.2byte 0x0000
.endobj gap_03_000024BE_rodata

# .rodata:0x10 | 0x24C0 | size: 0x17
.obj str_SFX_BOSS_RNPL_DAMAGE_jin_000096e0, local
	.string "SFX_BOSS_RNPL_DAMAGED1"
.endobj str_SFX_BOSS_RNPL_DAMAGE_jin_000096e0

# .rodata:0x27 | 0x24D7 | size: 0x1
.obj gap_03_000024D7_rodata, global
.hidden gap_03_000024D7_rodata
	.byte 0x00
.endobj gap_03_000024D7_rodata

# .rodata:0x28 | 0x24D8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jin_000096f8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jin_000096f8

# .rodata:0x3D | 0x24ED | size: 0x3
.obj gap_03_000024ED_rodata, global
.hidden gap_03_000024ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024ED_rodata

# .rodata:0x40 | 0x24F0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jin_00009710, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jin_00009710

# .rodata:0x54 | 0x2504 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jin_00009724, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jin_00009724

# .rodata:0x6D | 0x251D | size: 0x3
.obj gap_03_0000251D_rodata, global
.hidden gap_03_0000251D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000251D_rodata

# .rodata:0x70 | 0x2520 | size: 0x4
.obj str_N_1_jin_00009740, local
	.string "N_1"
.endobj str_N_1_jin_00009740

# .rodata:0x74 | 0x2524 | size: 0x4
.obj str_Y_1_jin_00009744, local
	.string "Y_1"
.endobj str_Y_1_jin_00009744

# .rodata:0x78 | 0x2528 | size: 0x4
.obj str_K_1_jin_00009748, local
	.string "K_1"
.endobj str_K_1_jin_00009748

# .rodata:0x7C | 0x252C | size: 0x4
.obj str_X_1_jin_0000974c, local
	.string "X_1"
.endobj str_X_1_jin_0000974c

# .rodata:0x80 | 0x2530 | size: 0x4
.obj str_S_1_jin_00009750, local
	.string "S_1"
.endobj str_S_1_jin_00009750

# .rodata:0x84 | 0x2534 | size: 0x4
.obj str_Q_1_jin_00009754, local
	.string "Q_1"
.endobj str_Q_1_jin_00009754

# .rodata:0x88 | 0x2538 | size: 0x4
.obj str_D_1_jin_00009758, local
	.string "D_1"
.endobj str_D_1_jin_00009758

# .rodata:0x8C | 0x253C | size: 0x4
.obj str_A_2_jin_0000975c, local
	.string "A_2"
.endobj str_A_2_jin_0000975c

# .rodata:0x90 | 0x2540 | size: 0x4
.obj str_R_1_jin_00009760, local
	.string "R_1"
.endobj str_R_1_jin_00009760

# .rodata:0x94 | 0x2544 | size: 0x4
.obj str_W_1_jin_00009764, local
	.string "W_1"
.endobj str_W_1_jin_00009764

# .rodata:0x98 | 0x2548 | size: 0x4
.obj str_T_1_jin_00009768, local
	.string "T_1"
.endobj str_T_1_jin_00009768

# .rodata:0x9C | 0x254C | size: 0x9
.obj str_c_ranpel_jin_0000976c, local
	.string "c_ranpel"
.endobj str_c_ranpel_jin_0000976c

# .rodata:0xA5 | 0x2555 | size: 0x3
.obj gap_03_00002555_rodata, global
.hidden gap_03_00002555_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002555_rodata

# .rodata:0xA8 | 0x2558 | size: 0xF
.obj str_stg4_jin_08_02_jin_00009778, local
	.string "stg4_jin_08_02"
.endobj str_stg4_jin_08_02_jin_00009778

# .rodata:0xB7 | 0x2567 | size: 0x1
.obj gap_03_00002567_rodata, global
.hidden gap_03_00002567_rodata
	.byte 0x00
.endobj gap_03_00002567_rodata

# .rodata:0xB8 | 0x2568 | size: 0x16
.obj str_SFX_BOSS_RNPL_ARM_UP_jin_00009788, local
	.string "SFX_BOSS_RNPL_ARM_UP1"
.endobj str_SFX_BOSS_RNPL_ARM_UP_jin_00009788

# .rodata:0xCE | 0x257E | size: 0x2
.obj gap_03_0000257E_rodata, global
.hidden gap_03_0000257E_rodata
	.2byte 0x0000
.endobj gap_03_0000257E_rodata

# .rodata:0xD0 | 0x2580 | size: 0x5
.obj str_A_3A_jin_000097a0, local
	.string "A_3A"
.endobj str_A_3A_jin_000097a0

# .rodata:0xD5 | 0x2585 | size: 0x3
.obj gap_03_00002585_rodata, global
.hidden gap_03_00002585_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002585_rodata

# .rodata:0xD8 | 0x2588 | size: 0x15
.obj str_SFX_BOSS_RNPL_LAUGH1_jin_000097a8, local
	.string "SFX_BOSS_RNPL_LAUGH1"
.endobj str_SFX_BOSS_RNPL_LAUGH1_jin_000097a8

# .rodata:0xED | 0x259D | size: 0x3
.obj gap_03_0000259D_rodata, global
.hidden gap_03_0000259D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000259D_rodata

# .rodata:0xF0 | 0x25A0 | size: 0x5
.obj str_A_3B_jin_000097c0, local
	.string "A_3B"
.endobj str_A_3B_jin_000097c0

# .rodata:0xF5 | 0x25A5 | size: 0x3
.obj gap_03_000025A5_rodata, global
.hidden gap_03_000025A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025A5_rodata

# .rodata:0xF8 | 0x25A8 | size: 0x19
.obj str_SFX_BOSS_RNPL_EYE_SH_jin_000097c8, local
	.string "SFX_BOSS_RNPL_EYE_SHINE1"
.endobj str_SFX_BOSS_RNPL_EYE_SH_jin_000097c8

# .rodata:0x111 | 0x25C1 | size: 0x3
.obj gap_03_000025C1_rodata, global
.hidden gap_03_000025C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025C1_rodata

# .rodata:0x114 | 0x25C4 | size: 0x1
.obj zero_jin_000097e4, local
	.byte 0x00
.endobj zero_jin_000097e4

# .rodata:0x115 | 0x25C5 | size: 0x3
.obj gap_03_000025C5_rodata, global
.hidden gap_03_000025C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025C5_rodata

# .rodata:0x118 | 0x25C8 | size: 0xB
.obj str_toge_flush_jin_000097e8, local
	.string "toge_flush"
.endobj str_toge_flush_jin_000097e8

# .rodata:0x123 | 0x25D3 | size: 0x1
.obj gap_03_000025D3_rodata, global
.hidden gap_03_000025D3_rodata
	.byte 0x00
.endobj gap_03_000025D3_rodata

# .rodata:0x124 | 0x25D4 | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_jin_000097f4, local
	.string "SFX_BOSS_RNPL_TRANSFORM4"
.endobj str_SFX_BOSS_RNPL_TRANSF_jin_000097f4

# .rodata:0x13D | 0x25ED | size: 0x3
.obj gap_03_000025ED_rodata, global
.hidden gap_03_000025ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025ED_rodata

# .rodata:0x140 | 0x25F0 | size: 0xC
.obj str_kemuri_test_jin_00009810, local
	.string "kemuri_test"
.endobj str_kemuri_test_jin_00009810

# .rodata:0x14C | 0x25FC | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_jin_0000981c, local
	.string "SFX_BOSS_RNPL_TRANSFORM2"
.endobj str_SFX_BOSS_RNPL_TRANSF_jin_0000981c

# .rodata:0x165 | 0x2615 | size: 0x3
.obj gap_03_00002615_rodata, global
.hidden gap_03_00002615_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002615_rodata

# .rodata:0x168 | 0x2618 | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_jin_00009838, local
	.string "SFX_BOSS_RNPL_TRANSFORM1"
.endobj str_SFX_BOSS_RNPL_TRANSF_jin_00009838

# .rodata:0x181 | 0x2631 | size: 0x3
.obj gap_03_00002631_rodata, global
.hidden gap_03_00002631_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002631_rodata

# .rodata:0x184 | 0x2634 | size: 0x19
.obj str_SFX_BOSS_RNPL_TRANSF_jin_00009854, local
	.string "SFX_BOSS_RNPL_TRANSFORM3"
.endobj str_SFX_BOSS_RNPL_TRANSF_jin_00009854

# .rodata:0x19D | 0x264D | size: 0x3
.obj gap_03_0000264D_rodata, global
.hidden gap_03_0000264D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000264D_rodata

# .rodata:0x1A0 | 0x2650 | size: 0x18
.obj str_SFX_BOSS_RNPLTRANSFO_jin_00009870, local
	.string "SFX_BOSS_RNPLTRANSFORM5"
.endobj str_SFX_BOSS_RNPLTRANSFO_jin_00009870

# .rodata:0x1B8 | 0x2668 | size: 0xF
.obj str_stg4_jin_08_03_jin_00009888, local
	.string "stg4_jin_08_03"
.endobj str_stg4_jin_08_03_jin_00009888

# .rodata:0x1C7 | 0x2677 | size: 0x1
.obj gap_03_00002677_rodata, global
.hidden gap_03_00002677_rodata
	.byte 0x00
.endobj gap_03_00002677_rodata

# .rodata:0x1C8 | 0x2678 | size: 0x15
.obj str_SFX_BOSS_RNPL_MOVE1L_jin_00009898, local
	.string "SFX_BOSS_RNPL_MOVE1L"
.endobj str_SFX_BOSS_RNPL_MOVE1L_jin_00009898

# .rodata:0x1DD | 0x268D | size: 0x3
.obj gap_03_0000268D_rodata, global
.hidden gap_03_0000268D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000268D_rodata

# .rodata:0x1E0 | 0x2690 | size: 0x15
.obj str_SFX_BOSS_RNPL_MOVE1R_jin_000098b0, local
	.string "SFX_BOSS_RNPL_MOVE1R"
.endobj str_SFX_BOSS_RNPL_MOVE1R_jin_000098b0

# .rodata:0x1F5 | 0x26A5 | size: 0x3
.obj gap_03_000026A5_rodata, global
.hidden gap_03_000026A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026A5_rodata

# .rodata:0x1F8 | 0x26A8 | size: 0xF
.obj str_stg4_jin_08_04_jin_000098c8, local
	.string "stg4_jin_08_04"
.endobj str_stg4_jin_08_04_jin_000098c8

# .rodata:0x207 | 0x26B7 | size: 0x1
.obj gap_03_000026B7_rodata, global
.hidden gap_03_000026B7_rodata
	.byte 0x00
.endobj gap_03_000026B7_rodata

# .rodata:0x208 | 0x26B8 | size: 0x7
.obj str_EM_K_1_jin_000098d8, local
	.string "EM_K_1"
.endobj str_EM_K_1_jin_000098d8

# .rodata:0x20F | 0x26BF | size: 0x1
.obj gap_03_000026BF_rodata, global
.hidden gap_03_000026BF_rodata
	.byte 0x00
.endobj gap_03_000026BF_rodata

# .rodata:0x210 | 0x26C0 | size: 0x7
.obj str_EM_D_2_jin_000098e0, local
	.string "EM_D_2"
.endobj str_EM_D_2_jin_000098e0

# .rodata:0x217 | 0x26C7 | size: 0x1
.obj gap_03_000026C7_rodata, global
.hidden gap_03_000026C7_rodata
	.byte 0x00
.endobj gap_03_000026C7_rodata

# .rodata:0x218 | 0x26C8 | size: 0xF
.obj str_stg4_jin_08_01_jin_000098e8, local
	.string "stg4_jin_08_01"
.endobj str_stg4_jin_08_01_jin_000098e8

# .rodata:0x227 | 0x26D7 | size: 0x1
.obj gap_03_000026D7_rodata, global
.hidden gap_03_000026D7_rodata
	.byte 0x00
.endobj gap_03_000026D7_rodata

# .rodata:0x228 | 0x26D8 | size: 0x5
.obj str_A_1A_jin_000098f8, local
	.string "A_1A"
.endobj str_A_1A_jin_000098f8

# .rodata:0x22D | 0x26DD | size: 0x3
.obj gap_03_000026DD_rodata, global
.hidden gap_03_000026DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026DD_rodata

# .rodata:0x230 | 0x26E0 | size: 0x5
.obj str_A_1B_jin_00009900, local
	.string "A_1B"
.endobj str_A_1B_jin_00009900

# .rodata:0x235 | 0x26E5 | size: 0x3
.obj gap_03_000026E5_rodata, global
.hidden gap_03_000026E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026E5_rodata

# .rodata:0x238 | 0x26E8 | size: 0x13
.obj str_SFX_BOSS_RNPL_FLY1_jin_00009908, local
	.string "SFX_BOSS_RNPL_FLY1"
.endobj str_SFX_BOSS_RNPL_FLY1_jin_00009908

# .rodata:0x24B | 0x26FB | size: 0x1
.obj gap_03_000026FB_rodata, global
.hidden gap_03_000026FB_rodata
	.byte 0x00
.endobj gap_03_000026FB_rodata

# .rodata:0x24C | 0x26FC | size: 0x14
.obj str_SFX_BOSS_RNPL_FALL1_jin_0000991c, local
	.string "SFX_BOSS_RNPL_FALL1"
.endobj str_SFX_BOSS_RNPL_FALL1_jin_0000991c

# .rodata:0x260 | 0x2710 | size: 0x14
.obj str_SFX_BOSS_RNPL_DOWN1_jin_00009930, local
	.string "SFX_BOSS_RNPL_DOWN1"
.endobj str_SFX_BOSS_RNPL_DOWN1_jin_00009930

# .rodata:0x274 | 0x2724 | size: 0x4
.obj str_D_2_jin_00009944, local
	.string "D_2"
.endobj str_D_2_jin_00009944

# .rodata:0x278 | 0x2728 | size: 0x4
.obj str_O_1_jin_00009948, local
	.string "O_1"
.endobj str_O_1_jin_00009948

# .rodata:0x27C | 0x272C | size: 0x4
.obj str_R_2_jin_0000994c, local
	.string "R_2"
.endobj str_R_2_jin_0000994c

# .rodata:0x280 | 0x2730 | size: 0x5
.obj str_J_1B_jin_00009950, local
	.string "J_1B"
.endobj str_J_1B_jin_00009950

# .rodata:0x285 | 0x2735 | size: 0x3
.obj gap_03_00002735_rodata, global
.hidden gap_03_00002735_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002735_rodata

# .rodata:0x288 | 0x2738 | size: 0x17
.obj str_SFX_BOSS_RNPL_LANDIN_jin_00009958, local
	.string "SFX_BOSS_RNPL_LANDING1"
.endobj str_SFX_BOSS_RNPL_LANDIN_jin_00009958

# .rodata:0x29F | 0x274F | size: 0x1
.obj gap_03_0000274F_rodata, global
.hidden gap_03_0000274F_rodata
	.byte 0x00
.endobj gap_03_0000274F_rodata

# .rodata:0x2A0 | 0x2750 | size: 0x7
.obj str_EM_N_1_jin_00009970, local
	.string "EM_N_1"
.endobj str_EM_N_1_jin_00009970

# .rodata:0x2A7 | 0x2757 | size: 0x1
.obj gap_03_00002757_rodata, global
.hidden gap_03_00002757_rodata
	.byte 0x00
.endobj gap_03_00002757_rodata

# .rodata:0x2A8 | 0x2758 | size: 0x7
.obj str_EM_Y_2_jin_00009978, local
	.string "EM_Y_2"
.endobj str_EM_Y_2_jin_00009978

# .rodata:0x2AF | 0x275F | size: 0x1
.obj gap_03_0000275F_rodata, global
.hidden gap_03_0000275F_rodata
	.byte 0x00
.endobj gap_03_0000275F_rodata

# .rodata:0x2B0 | 0x2760 | size: 0x7
.obj str_EM_S_1_jin_00009980, local
	.string "EM_S_1"
.endobj str_EM_S_1_jin_00009980

# .rodata:0x2B7 | 0x2767 | size: 0x1
.obj gap_03_00002767_rodata, global
.hidden gap_03_00002767_rodata
	.byte 0x00
.endobj gap_03_00002767_rodata

# .rodata:0x2B8 | 0x2768 | size: 0x7
.obj str_EM_D_1_jin_00009988, local
	.string "EM_D_1"
.endobj str_EM_D_1_jin_00009988

# .rodata:0x2BF | 0x276F | size: 0x1
.obj gap_03_0000276F_rodata, global
.hidden gap_03_0000276F_rodata
	.byte 0x00
.endobj gap_03_0000276F_rodata

# .rodata:0x2C0 | 0x2770 | size: 0x7
.obj str_EM_A_1_jin_00009990, local
	.string "EM_A_1"
.endobj str_EM_A_1_jin_00009990

# .rodata:0x2C7 | 0x2777 | size: 0x1
.obj gap_03_00002777_rodata, global
.hidden gap_03_00002777_rodata
	.byte 0x00
.endobj gap_03_00002777_rodata

# .rodata:0x2C8 | 0x2778 | size: 0x7
.obj str_EM_R_1_jin_00009998, local
	.string "EM_R_1"
.endobj str_EM_R_1_jin_00009998

# .rodata:0x2CF | 0x277F | size: 0x1
.obj gap_03_0000277F_rodata, global
.hidden gap_03_0000277F_rodata
	.byte 0x00
.endobj gap_03_0000277F_rodata

# .rodata:0x2D0 | 0x2780 | size: 0x7
.obj str_EM_W_1_jin_000099a0, local
	.string "EM_W_1"
.endobj str_EM_W_1_jin_000099a0

# .rodata:0x2D7 | 0x2787 | size: 0x1
.obj gap_03_00002787_rodata, global
.hidden gap_03_00002787_rodata
	.byte 0x00
.endobj gap_03_00002787_rodata

# .rodata:0x2D8 | 0x2788 | size: 0x7
.obj str_EM_D_3_jin_000099a8, local
	.string "EM_D_3"
.endobj str_EM_D_3_jin_000099a8

# .rodata:0x2DF | 0x278F | size: 0x1
.obj gap_03_0000278F_rodata, global
.hidden gap_03_0000278F_rodata
	.byte 0x00
.endobj gap_03_0000278F_rodata

# .rodata:0x2E0 | 0x2790 | size: 0x7
.obj str_EM_T_1_jin_000099b0, local
	.string "EM_T_1"
.endobj str_EM_T_1_jin_000099b0

# .rodata:0x2E7 | 0x2797 | size: 0x1
.obj gap_03_00002797_rodata, global
.hidden gap_03_00002797_rodata
	.byte 0x00
.endobj gap_03_00002797_rodata

# .rodata:0x2E8 | 0x2798 | size: 0x8
.obj str_c_mario_jin_000099b8, local
	.string "c_mario"
.endobj str_c_mario_jin_000099b8

# .rodata:0x2F0 | 0x27A0 | size: 0x13
.obj str_SFX_BOSS_NM_MOVE1L_jin_000099c0, local
	.string "SFX_BOSS_NM_MOVE1L"
.endobj str_SFX_BOSS_NM_MOVE1L_jin_000099c0

# .rodata:0x303 | 0x27B3 | size: 0x1
.obj gap_03_000027B3_rodata, global
.hidden gap_03_000027B3_rodata
	.byte 0x00
.endobj gap_03_000027B3_rodata

# .rodata:0x304 | 0x27B4 | size: 0x13
.obj str_SFX_BOSS_NM_MOVE1R_jin_000099d4, local
	.string "SFX_BOSS_NM_MOVE1R"
.endobj str_SFX_BOSS_NM_MOVE1R_jin_000099d4

# .rodata:0x317 | 0x27C7 | size: 0x1
.obj gap_03_000027C7_rodata, global
.hidden gap_03_000027C7_rodata
	.byte 0x00
.endobj gap_03_000027C7_rodata

# .rodata:0x318 | 0x27C8 | size: 0x12
.obj str_SFX_BOSS_NM_JUMP1_jin_000099e8, local
	.string "SFX_BOSS_NM_JUMP1"
.endobj str_SFX_BOSS_NM_JUMP1_jin_000099e8

# .rodata:0x32A | 0x27DA | size: 0x2
.obj gap_03_000027DA_rodata, global
.hidden gap_03_000027DA_rodata
	.2byte 0x0000
.endobj gap_03_000027DA_rodata

# .rodata:0x32C | 0x27DC | size: 0x15
.obj str_SFX_BOSS_NM_LANDING1_jin_000099fc, local
	.string "SFX_BOSS_NM_LANDING1"
.endobj str_SFX_BOSS_NM_LANDING1_jin_000099fc

# .rodata:0x341 | 0x27F1 | size: 0x3
.obj gap_03_000027F1_rodata, global
.hidden gap_03_000027F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027F1_rodata

# .rodata:0x344 | 0x27F4 | size: 0x12
.obj str_SFX_BOSS_NM_DOWN2_jin_00009a14, local
	.string "SFX_BOSS_NM_DOWN2"
.endobj str_SFX_BOSS_NM_DOWN2_jin_00009a14

# .rodata:0x356 | 0x2806 | size: 0x2
.obj gap_03_00002806_rodata, global
.hidden gap_03_00002806_rodata
	.2byte 0x0000
.endobj gap_03_00002806_rodata

# .rodata:0x358 | 0x2808 | size: 0x1A
.obj str_SFX_VOICE_NM_LAND_DA_jin_00009a28, local
	.string "SFX_VOICE_NM_LAND_DAMAGE2"
.endobj str_SFX_VOICE_NM_LAND_DA_jin_00009a28

# .rodata:0x372 | 0x2822 | size: 0x2
.obj gap_03_00002822_rodata, global
.hidden gap_03_00002822_rodata
	.2byte 0x0000
.endobj gap_03_00002822_rodata

# .rodata:0x374 | 0x2824 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_jin_00009a44, local
	.string "SFX_BOSS_VOICE_NM_AC1_1"
.endobj str_SFX_BOSS_VOICE_NM_AC_jin_00009a44

# .rodata:0x38C | 0x283C | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_jin_00009a5c, local
	.string "SFX_BOSS_VOICE_NM_AC1_2"
.endobj str_SFX_BOSS_VOICE_NM_AC_jin_00009a5c

# .rodata:0x3A4 | 0x2854 | size: 0x18
.obj str_SFX_BOSS_VOICE_NM_AC_jin_00009a74, local
	.string "SFX_BOSS_VOICE_NM_AC1_5"
.endobj str_SFX_BOSS_VOICE_NM_AC_jin_00009a74

# .rodata:0x3BC | 0x286C | size: 0x8
.obj str_EM_J_1B_jin_00009a8c, local
	.string "EM_J_1B"
.endobj str_EM_J_1B_jin_00009a8c

# .rodata:0x3C4 | 0x2874 | size: 0x12
.obj str_SFX_BOSS_NM_DOWN1_jin_00009a94, local
	.string "SFX_BOSS_NM_DOWN1"
.endobj str_SFX_BOSS_NM_DOWN1_jin_00009a94

# .rodata:0x3D6 | 0x2886 | size: 0x2
.obj gap_03_00002886_rodata, global
.hidden gap_03_00002886_rodata
	.2byte 0x0000
.endobj gap_03_00002886_rodata

# .rodata:0x3D8 | 0x2888 | size: 0x7
.obj str_EM_Z_2_jin_00009aa8, local
	.string "EM_Z_2"
.endobj str_EM_Z_2_jin_00009aa8

# .rodata:0x3DF | 0x288F | size: 0x1
.obj gap_03_0000288F_rodata, global
.hidden gap_03_0000288F_rodata
	.byte 0x00
.endobj gap_03_0000288F_rodata

# .rodata:0x3E0 | 0x2890 | size: 0x1A
.obj str_SFX_BOSS_NM_JUMP_KUR_jin_00009ab0, local
	.string "SFX_BOSS_NM_JUMP_KURURIN1"
.endobj str_SFX_BOSS_NM_JUMP_KUR_jin_00009ab0

# .rodata:0x3FA | 0x28AA | size: 0x2
.obj gap_03_000028AA_rodata, global
.hidden gap_03_000028AA_rodata
	.2byte 0x0000
.endobj gap_03_000028AA_rodata

# .rodata:0x3FC | 0x28AC | size: 0x8
.obj str_EM_A_1A_jin_00009acc, local
	.string "EM_A_1A"
.endobj str_EM_A_1A_jin_00009acc

# .rodata:0x404 | 0x28B4 | size: 0x19
.obj str_SFX_BOSS_NM_HAMMER_F_jin_00009ad4, local
	.string "SFX_BOSS_NM_HAMMER_FURU2"
.endobj str_SFX_BOSS_NM_HAMMER_F_jin_00009ad4

# .rodata:0x41D | 0x28CD | size: 0x3
.obj gap_03_000028CD_rodata, global
.hidden gap_03_000028CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028CD_rodata

# .rodata:0x420 | 0x28D0 | size: 0x8
.obj str_EM_A_1B_jin_00009af0, local
	.string "EM_A_1B"
.endobj str_EM_A_1B_jin_00009af0

# .rodata:0x428 | 0x28D8 | size: 0x8
.obj str_EM_A_1C_jin_00009af8, local
	.string "EM_A_1C"
.endobj str_EM_A_1C_jin_00009af8

# .rodata:0x430 | 0x28E0 | size: 0x18
.obj str_SFX_BOSS_NM_HAMMER_D_jin_00009b00, local
	.string "SFX_BOSS_NM_HAMMER_DON2"
.endobj str_SFX_BOSS_NM_HAMMER_D_jin_00009b00

# 0x00016B90..0x00019FA8 | size: 0x3418
.data
.balign 8

# .data:0x0 | 0x16B90 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x16B98 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x16B9C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16BA0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x16BA4 | size: 0x4
.obj gap_04_00016BA4_data, global
.hidden gap_04_00016BA4_data
	.4byte 0x00000000
.endobj gap_04_00016BA4_data

# .data:0x18 | 0x16BA8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x16BB0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x16BB4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x16BB8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16BC0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x16BC4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16BC8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x16BCC | size: 0x4
.obj gap_04_00016BCC_data, global
.hidden gap_04_00016BCC_data
	.4byte 0x00000000
.endobj gap_04_00016BCC_data

# .data:0x40 | 0x16BD0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x16BD8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x16BDC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x16BE0 | size: 0xC4
.obj unit_boss_rampell_13_data_16BE0, global
	.4byte 0x0000004D
	.4byte str_btl_un_hatena_jin_000096d0
	.4byte 0x00280000
	.4byte 0x01013400
	.4byte 0x00640046
	.4byte 0x00070032
	.4byte 0x00300004
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x41C80000
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
	.4byte 0x41400000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x40E00000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x42400000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_RNPL_DAMAGE_jin_000096e0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jin_000096f8
	.4byte str_SFX_BTL_DAMAGE_ICE1_jin_00009710
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jin_00009724
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_rampell_13_data_16BE0

# .data:0x114 | 0x16CA4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x16CA9 | size: 0x3
.obj gap_04_00016CA9_data, global
.hidden gap_04_00016CA9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00016CA9_data

# .data:0x11C | 0x16CAC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x16CB1 | size: 0x3
.obj gap_04_00016CB1_data, global
.hidden gap_04_00016CB1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00016CB1_data

# .data:0x124 | 0x16CB4 | size: 0x16
.obj regist, local
	.4byte 0x3C3C4664
	.4byte 0x3C646432
	.4byte 0x64506450
	.4byte 0x645A3C00
	.4byte 0x00643C64
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x16CCA | size: 0x2
.obj gap_04_00016CCA_data, global
.hidden gap_04_00016CCA_data
	.2byte 0x0000
.endobj gap_04_00016CCA_data

# .data:0x13C | 0x16CCC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jin_00009740
	.4byte 0x00000002
	.4byte str_Y_1_jin_00009744
	.4byte 0x00000009
	.4byte str_Y_1_jin_00009744
	.4byte 0x00000005
	.4byte str_K_1_jin_00009748
	.4byte 0x00000004
	.4byte str_X_1_jin_0000974c
	.4byte 0x00000003
	.4byte str_K_1_jin_00009748
	.4byte 0x0000001C
	.4byte str_S_1_jin_00009750
	.4byte 0x0000001D
	.4byte str_Q_1_jin_00009754
	.4byte 0x0000001E
	.4byte str_Q_1_jin_00009754
	.4byte 0x0000001F
	.4byte str_S_1_jin_00009750
	.4byte 0x00000027
	.4byte str_D_1_jin_00009758
	.4byte 0x00000032
	.4byte str_A_2_jin_0000975c
	.4byte 0x0000002A
	.4byte str_R_1_jin_00009760
	.4byte 0x00000028
	.4byte str_W_1_jin_00009764
	.4byte 0x00000038
	.4byte str_X_1_jin_0000974c
	.4byte 0x00000039
	.4byte str_X_1_jin_0000974c
	.4byte 0x00000041
	.4byte str_T_1_jin_00009768
	.4byte 0x00000045
	.4byte str_S_1_jin_00009750
.endobj pose_table

# .data:0x1CC | 0x16D5C | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1DC | 0x16D6C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hatena_jin_000096d0
	.4byte str_c_ranpel_jin_0000976c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x001E0028
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x228 | 0x16DB8 | size: 0xC0
.obj weapon_rampell_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00011007
	.4byte 0x00000006
	.4byte 0x80000000
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
.endobj weapon_rampell_attack

# .data:0x2E8 | 0x16E78 | size: 0x4C
.obj rampell_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x0000005A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rampell_zoom

# .data:0x334 | 0x16EC4 | size: 0x54C
.obj to_faker_mario, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte rampell_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_08_02_jin_00009778
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_ARM_UP_jin_00009788
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_jin_000097a0
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_ARM_UP_jin_00009788
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_jin_000097a0
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_ARM_UP_jin_00009788
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_jin_000097a0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_LAUGH1_jin_000097a8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_jin_000097c0
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_EYE_SH_jin_000097c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A6280
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24AFE80
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C87
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jin_000097e4
	.4byte str_toge_flush_jin_000097e8
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A9680
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C87
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jin_000097e4
	.4byte str_toge_flush_jin_000097e8
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_TRANSF_jin_000097f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jin_000097e4
	.4byte str_kemuri_test_jin_00009810
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFFFFFF92
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFB
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte eff_scanning
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_jin_0000981c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_jin_00009838
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_BOSS_RNPL_TRANSF_jin_00009854
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte rampell_zoom
	.4byte 0x0001005E
	.4byte init_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_RNPLTRANSFO_jin_00009870
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_08_03_jin_00009888
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj to_faker_mario

# .data:0x880 | 0x17410 | size: 0xF4
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_MOVE1L_jin_00009898
	.4byte str_SFX_BOSS_RNPL_MOVE1R_jin_000098b0
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_MOVE1L_jin_00009898
	.4byte str_SFX_BOSS_RNPL_MOVE1R_jin_000098b0
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x974 | 0x17504 | size: 0x28
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

# .data:0x99C | 0x1752C | size: 0x128
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte to_faker_mario
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x0000005A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_08_04_jin_000098c8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_K_1_jin_000098d8
	.4byte 0x00010009
	.4byte 0x000000C0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000098e0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xAC4 | 0x17654 | size: 0x1A8
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte to_faker_mario
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte rampell_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_08_01_jin_000098e8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte to_faker_mario
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xC6C | 0x177FC | size: 0x60
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
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_rampell_attack
	.4byte 0x0001005E
	.4byte ogg_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xCCC | 0x1785C | size: 0x7AC
.obj ogg_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_jin_00009760
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
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jin_000098f8
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_jin_00009900
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_jin_0000975c
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000078
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8080
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_FLY1_jin_00009908
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x00000070
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7D80
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_FALL1_jin_0000991c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A8A
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_RNPL_DOWN1_jin_00009930
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_2_jin_00009944
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_O_1_jin_00009948
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_2_jin_0000994c
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_jin_00009950
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D80
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
	.4byte str_SFX_BOSS_RNPL_LANDIN_jin_00009958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jin_000098f8
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A8280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_jin_00009760
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetMotionSpeed
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jin_00009750
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ogg_attack_event

# .data:0x1478 | 0x18008 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1490 | 0x18020 | size: 0x5
.obj defence_fmario, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_fmario

# .data:0x1495 | 0x18025 | size: 0x3
.obj gap_04_00018025_data, global
.hidden gap_04_00018025_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00018025_data

# .data:0x1498 | 0x18028 | size: 0x5
.obj defence_attr_fmario, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_fmario

# .data:0x149D | 0x1802D | size: 0x3
.obj gap_04_0001802D_data, global
.hidden gap_04_0001802D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001802D_data

# .data:0x14A0 | 0x18030 | size: 0x16
.obj regist_fmario, local
	.4byte 0x32324632
	.4byte 0x32326428
	.4byte 0x64466446
	.4byte 0x645A3200
	.4byte 0x00643264
	.2byte 0x6403
.endobj regist_fmario

# .data:0x14B6 | 0x18046 | size: 0x2
.obj gap_04_00018046_data, global
.hidden gap_04_00018046_data
	.2byte 0x0000
.endobj gap_04_00018046_data

# .data:0x14B8 | 0x18048 | size: 0x78
.obj pose_table_fmario_stay, local
	.4byte 0x00000001
	.4byte str_EM_N_1_jin_00009970
	.4byte 0x00000002
	.4byte str_EM_Y_2_jin_00009978
	.4byte 0x00000009
	.4byte str_EM_Y_2_jin_00009978
	.4byte 0x00000005
	.4byte str_EM_K_1_jin_000098d8
	.4byte 0x00000004
	.4byte str_EM_K_1_jin_000098d8
	.4byte 0x00000003
	.4byte str_EM_K_1_jin_000098d8
	.4byte 0x0000001C
	.4byte str_EM_S_1_jin_00009980
	.4byte 0x00000027
	.4byte str_EM_D_1_jin_00009988
	.4byte 0x00000032
	.4byte str_EM_A_1_jin_00009990
	.4byte 0x0000002A
	.4byte str_EM_R_1_jin_00009998
	.4byte 0x00000028
	.4byte str_EM_W_1_jin_000099a0
	.4byte 0x00000038
	.4byte str_EM_D_3_jin_000099a8
	.4byte 0x00000039
	.4byte str_EM_D_3_jin_000099a8
	.4byte 0x00000041
	.4byte str_EM_T_1_jin_000099b0
	.4byte 0x00000045
	.4byte str_EM_S_1_jin_00009980
.endobj pose_table_fmario_stay

# .data:0x1530 | 0x180C0 | size: 0x10
.obj data_table_fmario, local
	.4byte 0x00000031
	.4byte dead_event_fmario
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_fmario

# .data:0x1540 | 0x180D0 | size: 0x4C
.obj parts_fmario, local
	.4byte 0x00000001
	.4byte str_btl_un_hatena_jin_000096d0
	.4byte str_c_mario_jin_000099b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40400000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_fmario
	.4byte defence_attr_fmario
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table_fmario_stay
.endobj parts_fmario

# .data:0x158C | 0x1811C | size: 0xC0
.obj weapon_masao_jump, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015807
	.4byte 0x0000000C
	.4byte 0x80002004
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
.endobj weapon_masao_jump

# .data:0x164C | 0x181DC | size: 0xC0
.obj weapon_masao_hammer, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01001260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00010807
	.4byte 0x0000020C
	.4byte 0x80002004
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
.endobj weapon_masao_hammer

# .data:0x170C | 0x1829C | size: 0xC0
.obj weapon_masao_kururin_jump, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015807
	.4byte 0x0000000C
	.4byte 0x80002004
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
.endobj weapon_masao_kururin_jump

# .data:0x17CC | 0x1835C | size: 0xC0
.obj weapon_masao_kaiten_hammer, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01001260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00010807
	.4byte 0x0000020C
	.4byte 0x80002004
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
.endobj weapon_masao_kaiten_hammer

# .data:0x188C | 0x1841C | size: 0x4C
.obj mario_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFFFFFF92
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_zoom

# .data:0x18D8 | 0x18468 | size: 0x4C
.obj enemy_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x00000073
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj enemy_zoom

# .data:0x1924 | 0x184B4 | size: 0x4C
.obj fmario_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x0000005A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fmario_zoom

# .data:0x1970 | 0x18500 | size: 0x4C
.obj gparty_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000082
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x00000082
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gparty_zoom

# .data:0x19BC | 0x1854C | size: 0x124
.obj init_event_fmario, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte pose_table_fmario_stay
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_fmario
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte parts_fmario
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFFFFFFFE
	.4byte regist_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event_fmario
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte _mario_makkuro_set
	.4byte 0x00020032
	.4byte 0xFD050F91
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_MOVE1L_jin_000099c0
	.4byte str_SFX_BOSS_NM_MOVE1R_jin_000099d4
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_MOVE1L_jin_000099c0
	.4byte str_SFX_BOSS_NM_MOVE1R_jin_000099d4
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_jin_000099e8
	.4byte str_SFX_BOSS_NM_LANDING1_jin_000099fc
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_fmario

# .data:0x1AE0 | 0x18670 | size: 0x174
.obj dead_event_fmario, local
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0x0000005A
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_jin_00009980
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_EM_T_1_jin_000099b0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_EM_S_1_jin_00009980
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg4_jin_08_04_jin_000098c8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_K_1_jin_000098d8
	.4byte 0x00010009
	.4byte 0x00000098
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN2_jin_00009a14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_NM_LAND_DA_jin_00009a28
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000098e0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event_fmario

# .data:0x1C54 | 0x187E4 | size: 0x28
.obj damage_event_fmario, local
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
.endobj damage_event_fmario

# .data:0x1C7C | 0x1880C | size: 0xE8
.obj attack_event_fmario, local
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
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_jump
	.4byte 0x0001005E
	.4byte marioAttackEvent_NormalJump
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_hammer
	.4byte 0x0001005E
	.4byte marioAttackEvent_NormalHammer
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_kururin_jump
	.4byte 0x0001005E
	.4byte marioAttackEvent_KururinJump
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_masao_kaiten_hammer
	.4byte 0x0001005E
	.4byte marioAttackEvent_KaitenHammer
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_fmario

# .data:0x1D64 | 0x188F4 | size: 0x90
.obj jump_attack_voice, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_jin_00009a44
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_jin_00009a5c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_VOICE_NM_AC_jin_00009a74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jump_attack_voice

# .data:0x1DF4 | 0x18984 | size: 0x560
.obj marioAttackEvent_NormalJump, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009a8c
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_jin_000099e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN1_jin_00009a94
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000098e0
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009a8c
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_000099a0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_NormalJump

# .data:0x2354 | 0x18EE4 | size: 0x754
.obj marioAttackEvent_KururinJump, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009a8c
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP1_jin_000099e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_DOWN1_jin_00009a94
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_D_2_jin_000098e0
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009a8c
	.4byte 0x0001005E
	.4byte jump_attack_voice
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00020037
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_Z_2_jin_00009aa8
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_JUMP_KUR_jin_00009ab0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
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
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_jin_00009a8c
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_000099a0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_KururinJump

# .data:0x2AA8 | 0x19638 | size: 0x4AC
.obj marioAttackEvent_NormalHammer, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000064
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
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
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1A_jin_00009acc
	.4byte 0x0001000A
	.4byte 0x00000042
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_F_jin_00009ad4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1B_jin_00009af0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1C_jin_00009af8
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_D_jin_00009b00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_jin_00009980
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_000099a0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_NormalHammer

# .data:0x2F54 | 0x19AE4 | size: 0x4AC
.obj marioAttackEvent_KaitenHammer, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x00000064
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
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
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1A_jin_00009acc
	.4byte 0x0001000A
	.4byte 0x00000042
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_F_jin_00009ad4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000E9
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1B_jin_00009af0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_A_1C_jin_00009af8
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_NM_HAMMER_D_jin_00009b00
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_S_1_jin_00009980
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_W_1_jin_000099a0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marioAttackEvent_KaitenHammer

# .data:0x3400 | 0x19F90 | size: 0x18
.obj wait_event_fmario, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_fmario
