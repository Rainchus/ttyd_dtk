.include "macros.inc"
.file "unit_kamec_red.o"

# 0x00006CF8..0x000074EC | size: 0x7F4
.text
.balign 4

# .text:0x0 | 0x6CF8 | size: 0x70
.fn eff_magic_get_posX, local
/* 00006CF8 00006DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006CFC 00006DC0  7C 08 02 A6 */	mflr r0
/* 00006D00 00006DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006D04 00006DC8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006D08 00006DCC  7C 7E 1B 78 */	mr r30, r3
/* 00006D0C 00006DD0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006D10 00006DD4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006D14 00006DD8  4B FF E3 01 */	bl evtGetValue
/* 00006D18 00006DDC  7C 64 1B 78 */	mr r4, r3
/* 00006D1C 00006DE0  7F C3 F3 78 */	mr r3, r30
/* 00006D20 00006DE4  4B FF E2 F5 */	bl BattleTransID
/* 00006D24 00006DE8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006D28 00006DEC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006D2C 00006DF0  7C 64 1B 78 */	mr r4, r3
/* 00006D30 00006DF4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006D34 00006DF8  4B FF E2 E1 */	bl BattleGetUnitPtr
/* 00006D38 00006DFC  80 A3 02 2C */	lwz r5, 0x22c(r3)
/* 00006D3C 00006E00  7F C3 F3 78 */	mr r3, r30
/* 00006D40 00006E04  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006D44 00006E08  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 00006D48 00006E0C  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 00006D4C 00006E10  4B FF E2 C9 */	bl evtSetFloat
/* 00006D50 00006E14  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00006D54 00006E18  38 60 00 02 */	li r3, 0x2
/* 00006D58 00006E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006D5C 00006E20  7C 08 03 A6 */	mtlr r0
/* 00006D60 00006E24  38 21 00 10 */	addi r1, r1, 0x10
/* 00006D64 00006E28  4E 80 00 20 */	blr
.endfn eff_magic_get_posX

# .text:0x70 | 0x6D68 | size: 0x17C
.fn eff_magic, local
/* 00006D68 00006E2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00006D6C 00006E30  7C 08 02 A6 */	mflr r0
/* 00006D70 00006E34  90 01 00 64 */	stw r0, 0x64(r1)
/* 00006D74 00006E38  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00006D78 00006E3C  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00006D7C 00006E40  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00006D80 00006E44  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00006D84 00006E48  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00006D88 00006E4C  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00006D8C 00006E50  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00006D90 00006E54  7C 7D 1B 78 */	mr r29, r3
/* 00006D94 00006E58  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006D98 00006E5C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006D9C 00006E60  4B FF E2 79 */	bl evtGetValue
/* 00006DA0 00006E64  7C 64 1B 78 */	mr r4, r3
/* 00006DA4 00006E68  7F A3 EB 78 */	mr r3, r29
/* 00006DA8 00006E6C  4B FF E2 6D */	bl BattleTransID
/* 00006DAC 00006E70  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006DB0 00006E74  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006DB4 00006E78  7C 64 1B 78 */	mr r4, r3
/* 00006DB8 00006E7C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006DBC 00006E80  4B FF E2 59 */	bl BattleGetUnitPtr
/* 00006DC0 00006E84  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006DC4 00006E88  7C 7E 1B 78 */	mr r30, r3
/* 00006DC8 00006E8C  7F A3 EB 78 */	mr r3, r29
/* 00006DCC 00006E90  4B FF E2 49 */	bl evtGetFloat
/* 00006DD0 00006E94  FF E0 08 90 */	fmr f31, f1
/* 00006DD4 00006E98  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00006DD8 00006E9C  7F A3 EB 78 */	mr r3, r29
/* 00006DDC 00006EA0  4B FF E2 39 */	bl evtGetFloat
/* 00006DE0 00006EA4  FF C0 08 90 */	fmr f30, f1
/* 00006DE4 00006EA8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006DE8 00006EAC  7F A3 EB 78 */	mr r3, r29
/* 00006DEC 00006EB0  4B FF E2 29 */	bl evtGetFloat
/* 00006DF0 00006EB4  FF A0 08 90 */	fmr f29, f1
/* 00006DF4 00006EB8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00006DF8 00006EBC  7F A3 EB 78 */	mr r3, r29
/* 00006DFC 00006EC0  4B FF E2 19 */	bl evtGetValue
/* 00006E00 00006EC4  7C 60 1B 78 */	mr r0, r3
/* 00006E04 00006EC8  7F C3 F3 78 */	mr r3, r30
/* 00006E08 00006ECC  7C 1F 03 78 */	mr r31, r0
/* 00006E0C 00006ED0  38 81 00 10 */	addi r4, r1, 0x10
/* 00006E10 00006ED4  38 A1 00 0C */	addi r5, r1, 0xc
/* 00006E14 00006ED8  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006E18 00006EDC  4B FF E1 FD */	bl BtlUnit_GetPos
/* 00006E1C 00006EE0  88 7E 01 89 */	lbz r3, 0x189(r30)
/* 00006E20 00006EE4  3C 00 43 30 */	lis r0, 0x4330
/* 00006E24 00006EE8  3C C0 00 00 */	lis r6, float_25_tou2_000100b0@ha
/* 00006E28 00006EEC  3C A0 00 00 */	lis r5, double_to_int_tou2_000100c0@ha
/* 00006E2C 00006EF0  7C 63 07 74 */	extsb r3, r3
/* 00006E30 00006EF4  3C 80 00 00 */	lis r4, float_20_tou2_000100b4@ha
/* 00006E34 00006EF8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00006E38 00006EFC  C1 04 00 00 */	lfs f8, float_20_tou2_000100b4@l(r4)
/* 00006E3C 00006F00  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00006E40 00006F04  3C 60 00 00 */	lis r3, float_5_tou2_000100b8@ha
/* 00006E44 00006F08  C0 66 00 00 */	lfs f3, float_25_tou2_000100b0@l(r6)
/* 00006E48 00006F0C  FC 80 F8 90 */	fmr f4, f31
/* 00006E4C 00006F10  90 01 00 18 */	stw r0, 0x18(r1)
/* 00006E50 00006F14  FC A0 F0 90 */	fmr f5, f30
/* 00006E54 00006F18  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00006E58 00006F1C  FC C0 E8 90 */	fmr f6, f29
/* 00006E5C 00006F20  C8 45 00 00 */	lfd f2, double_to_int_tou2_000100c0@l(r5)
/* 00006E60 00006F24  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00006E64 00006F28  EC 63 00 32 */	fmuls f3, f3, f0
/* 00006E68 00006F2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00006E6C 00006F30  7F E4 FB 78 */	mr r4, r31
/* 00006E70 00006F34  EC 21 10 28 */	fsubs f1, f1, f2
/* 00006E74 00006F38  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 00006E78 00006F3C  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 00006E7C 00006F40  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 00006E80 00006F44  C0 03 00 00 */	lfs f0, float_5_tou2_000100b8@l(r3)
/* 00006E84 00006F48  38 60 00 00 */	li r3, 0x0
/* 00006E88 00006F4C  EC 62 00 2A */	fadds f3, f2, f0
/* 00006E8C 00006F50  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00006E90 00006F54  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00006E94 00006F58  EC 48 38 3A */	fmadds f2, f8, f0, f7
/* 00006E98 00006F5C  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 00006E9C 00006F60  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00006EA0 00006F64  4B FF E1 75 */	bl effMagic1N64Entry
/* 00006EA4 00006F68  90 7E 02 2C */	stw r3, 0x22c(r30)
/* 00006EA8 00006F6C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00006EAC 00006F70  38 60 00 02 */	li r3, 0x2
/* 00006EB0 00006F74  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00006EB4 00006F78  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 00006EB8 00006F7C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00006EBC 00006F80  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00006EC0 00006F84  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00006EC4 00006F88  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00006EC8 00006F8C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00006ECC 00006F90  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00006ED0 00006F94  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00006ED4 00006F98  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00006ED8 00006F9C  7C 08 03 A6 */	mtlr r0
/* 00006EDC 00006FA0  38 21 00 60 */	addi r1, r1, 0x60
/* 00006EE0 00006FA4  4E 80 00 20 */	blr
.endfn eff_magic

# .text:0x1EC | 0x6EE4 | size: 0x150
.fn eff_staff2, local
/* 00006EE4 00006FA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006EE8 00006FAC  7C 08 02 A6 */	mflr r0
/* 00006EEC 00006FB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006EF0 00006FB4  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00006EF4 00006FB8  7C 9E 23 78 */	mr r30, r4
/* 00006EF8 00006FBC  7C 7F 1B 78 */	mr r31, r3
/* 00006EFC 00006FC0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00006F00 00006FC4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006F04 00006FC8  4B FF E1 11 */	bl evtGetValue
/* 00006F08 00006FCC  7C 64 1B 78 */	mr r4, r3
/* 00006F0C 00006FD0  7F E3 FB 78 */	mr r3, r31
/* 00006F10 00006FD4  4B FF E1 05 */	bl BattleTransID
/* 00006F14 00006FD8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006F18 00006FDC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006F1C 00006FE0  7C 64 1B 78 */	mr r4, r3
/* 00006F20 00006FE4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006F24 00006FE8  4B FF E0 F1 */	bl BattleGetUnitPtr
/* 00006F28 00006FEC  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00006F2C 00006FF0  7C 7F 1B 78 */	mr r31, r3
/* 00006F30 00006FF4  41 82 00 34 */	beq .L_00006F64
/* 00006F34 00006FF8  3C 60 00 00 */	lis r3, zero_tou2_000100c8@ha
/* 00006F38 00006FFC  3C 80 00 00 */	lis r4, float_neg1000_tou2_000100cc@ha
/* 00006F3C 00007000  38 A3 00 00 */	addi r5, r3, zero_tou2_000100c8@l
/* 00006F40 00007004  C0 44 00 00 */	lfs f2, float_neg1000_tou2_000100cc@l(r4)
/* 00006F44 00007008  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00006F48 0000700C  3C 60 00 00 */	lis r3, float_1_tou2_000100d0@ha
/* 00006F4C 00007010  C0 83 00 00 */	lfs f4, float_1_tou2_000100d0@l(r3)
/* 00006F50 00007014  38 60 00 00 */	li r3, 0x0
/* 00006F54 00007018  FC 60 08 90 */	fmr f3, f1
/* 00006F58 0000701C  38 80 00 3C */	li r4, 0x3c
/* 00006F5C 00007020  4B FF E0 B9 */	bl effPokopiPchargeN64Entry
/* 00006F60 00007024  90 7F 02 28 */	stw r3, 0x228(r31)
.L_00006F64:
/* 00006F64 00007028  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 00006F68 0000702C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00006F6C 00007030  54 00 07 FF */	clrlwi. r0, r0, 31
/* 00006F70 00007034  40 82 00 0C */	bne .L_00006F7C
/* 00006F74 00007038  38 60 00 02 */	li r3, 0x2
/* 00006F78 0000703C  48 00 00 A8 */	b .L_00007020
.L_00006F7C:
/* 00006F7C 00007040  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 00006F80 00007044  7F E3 FB 78 */	mr r3, r31
/* 00006F84 00007048  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006F88 0000704C  38 81 00 10 */	addi r4, r1, 0x10
/* 00006F8C 00007050  38 A1 00 0C */	addi r5, r1, 0xc
/* 00006F90 00007054  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006F94 00007058  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 00006F98 0000705C  4B FF E0 7D */	bl BtlUnit_GetPos
/* 00006F9C 00007060  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 00006FA0 00007064  3C 00 43 30 */	lis r0, 0x4330
/* 00006FA4 00007068  3C C0 00 00 */	lis r6, float_22p5_tou2_000100d4@ha
/* 00006FA8 0000706C  3C A0 00 00 */	lis r5, double_to_int_tou2_000100c0@ha
/* 00006FAC 00007070  7C 64 07 74 */	extsb r4, r3
/* 00006FB0 00007074  3C 60 00 00 */	lis r3, float_40_tou2_000100d8@ha
/* 00006FB4 00007078  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00006FB8 0000707C  38 E6 00 00 */	addi r7, r6, float_22p5_tou2_000100d4@l
/* 00006FBC 00007080  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00006FC0 00007084  38 C5 00 00 */	addi r6, r5, double_to_int_tou2_000100c0@l
/* 00006FC4 00007088  38 A3 00 00 */	addi r5, r3, float_40_tou2_000100d8@l
/* 00006FC8 0000708C  3C 60 00 00 */	lis r3, float_5_tou2_000100b8@ha
/* 00006FCC 00007090  90 01 00 18 */	stw r0, 0x18(r1)
/* 00006FD0 00007094  38 83 00 00 */	addi r4, r3, float_5_tou2_000100b8@l
/* 00006FD4 00007098  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 00006FD8 0000709C  38 60 00 00 */	li r3, 0x0
/* 00006FDC 000070A0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006FE0 000070A4  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 00006FE4 000070A8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00006FE8 000070AC  EC 83 00 32 */	fmuls f4, f3, f0
/* 00006FEC 000070B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00006FF0 000070B4  EC 41 10 28 */	fsubs f2, f1, f2
/* 00006FF4 000070B8  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00006FF8 000070BC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00006FFC 000070C0  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 00007000 000070C4  D0 1E 00 04 */	stfs f0, 0x4(r30)
/* 00007004 000070C8  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 00007008 000070CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 0000700C 000070D0  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 00007010 000070D4  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00007014 000070D8  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00007018 000070DC  EC 01 00 2A */	fadds f0, f1, f0
/* 0000701C 000070E0  D0 1E 00 0C */	stfs f0, 0xc(r30)
.L_00007020:
/* 00007020 000070E4  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00007024 000070E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007028 000070EC  7C 08 03 A6 */	mtlr r0
/* 0000702C 000070F0  38 21 00 30 */	addi r1, r1, 0x30
/* 00007030 000070F4  4E 80 00 20 */	blr
.endfn eff_staff2

# .text:0x33C | 0x7034 | size: 0x150
.fn eff_staff1, local
/* 00007034 000070F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007038 000070FC  7C 08 02 A6 */	mflr r0
/* 0000703C 00007100  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007040 00007104  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00007044 00007108  7C 9E 23 78 */	mr r30, r4
/* 00007048 0000710C  7C 7F 1B 78 */	mr r31, r3
/* 0000704C 00007110  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00007050 00007114  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00007054 00007118  4B FF DF C1 */	bl evtGetValue
/* 00007058 0000711C  7C 64 1B 78 */	mr r4, r3
/* 0000705C 00007120  7F E3 FB 78 */	mr r3, r31
/* 00007060 00007124  4B FF DF B5 */	bl BattleTransID
/* 00007064 00007128  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007068 0000712C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000706C 00007130  7C 64 1B 78 */	mr r4, r3
/* 00007070 00007134  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00007074 00007138  4B FF DF A1 */	bl BattleGetUnitPtr
/* 00007078 0000713C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 0000707C 00007140  7C 7F 1B 78 */	mr r31, r3
/* 00007080 00007144  41 82 00 34 */	beq .L_000070B4
/* 00007084 00007148  3C 60 00 00 */	lis r3, zero_tou2_000100c8@ha
/* 00007088 0000714C  3C 80 00 00 */	lis r4, float_neg1000_tou2_000100cc@ha
/* 0000708C 00007150  38 A3 00 00 */	addi r5, r3, zero_tou2_000100c8@l
/* 00007090 00007154  C0 44 00 00 */	lfs f2, float_neg1000_tou2_000100cc@l(r4)
/* 00007094 00007158  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00007098 0000715C  3C 60 00 00 */	lis r3, float_1_tou2_000100d0@ha
/* 0000709C 00007160  C0 83 00 00 */	lfs f4, float_1_tou2_000100d0@l(r3)
/* 000070A0 00007164  38 60 00 00 */	li r3, 0x0
/* 000070A4 00007168  FC 60 08 90 */	fmr f3, f1
/* 000070A8 0000716C  38 80 00 3C */	li r4, 0x3c
/* 000070AC 00007170  4B FF DF 69 */	bl effThunderflareN64Entry
/* 000070B0 00007174  90 7F 02 28 */	stw r3, 0x228(r31)
.L_000070B4:
/* 000070B4 00007178  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 000070B8 0000717C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000070BC 00007180  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000070C0 00007184  40 82 00 0C */	bne .L_000070CC
/* 000070C4 00007188  38 60 00 02 */	li r3, 0x2
/* 000070C8 0000718C  48 00 00 A8 */	b .L_00007170
.L_000070CC:
/* 000070CC 00007190  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 000070D0 00007194  7F E3 FB 78 */	mr r3, r31
/* 000070D4 00007198  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000070D8 0000719C  38 81 00 10 */	addi r4, r1, 0x10
/* 000070DC 000071A0  38 A1 00 0C */	addi r5, r1, 0xc
/* 000070E0 000071A4  38 C1 00 08 */	addi r6, r1, 0x8
/* 000070E4 000071A8  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 000070E8 000071AC  4B FF DF 2D */	bl BtlUnit_GetPos
/* 000070EC 000071B0  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 000070F0 000071B4  3C 00 43 30 */	lis r0, 0x4330
/* 000070F4 000071B8  3C C0 00 00 */	lis r6, float_22p5_tou2_000100d4@ha
/* 000070F8 000071BC  3C A0 00 00 */	lis r5, double_to_int_tou2_000100c0@ha
/* 000070FC 000071C0  7C 64 07 74 */	extsb r4, r3
/* 00007100 000071C4  3C 60 00 00 */	lis r3, float_40_tou2_000100d8@ha
/* 00007104 000071C8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00007108 000071CC  38 E6 00 00 */	addi r7, r6, float_22p5_tou2_000100d4@l
/* 0000710C 000071D0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00007110 000071D4  38 C5 00 00 */	addi r6, r5, double_to_int_tou2_000100c0@l
/* 00007114 000071D8  38 A3 00 00 */	addi r5, r3, float_40_tou2_000100d8@l
/* 00007118 000071DC  3C 60 00 00 */	lis r3, float_5_tou2_000100b8@ha
/* 0000711C 000071E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 00007120 000071E4  38 83 00 00 */	addi r4, r3, float_5_tou2_000100b8@l
/* 00007124 000071E8  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 00007128 000071EC  38 60 00 00 */	li r3, 0x0
/* 0000712C 000071F0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00007130 000071F4  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 00007134 000071F8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00007138 000071FC  EC 83 00 32 */	fmuls f4, f3, f0
/* 0000713C 00007200  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00007140 00007204  EC 41 10 28 */	fsubs f2, f1, f2
/* 00007144 00007208  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00007148 0000720C  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000714C 00007210  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 00007150 00007214  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00007154 00007218  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 00007158 0000721C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 0000715C 00007220  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 00007160 00007224  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 00007164 00007228  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00007168 0000722C  EC 01 00 2A */	fadds f0, f1, f0
/* 0000716C 00007230  D0 1E 00 10 */	stfs f0, 0x10(r30)
.L_00007170:
/* 00007170 00007234  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00007174 00007238  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007178 0000723C  7C 08 03 A6 */	mtlr r0
/* 0000717C 00007240  38 21 00 30 */	addi r1, r1, 0x30
/* 00007180 00007244  4E 80 00 20 */	blr
.endfn eff_staff1

# .text:0x48C | 0x7184 | size: 0xF0
.fn kamec_copy_status, local
/* 00007184 00007248  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007188 0000724C  7C 08 02 A6 */	mflr r0
/* 0000718C 00007250  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007190 00007254  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00007194 00007258  7C 7D 1B 78 */	mr r29, r3
/* 00007198 0000725C  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000719C 00007260  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000071A0 00007264  4B FF DE 75 */	bl evtGetValue
/* 000071A4 00007268  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000071A8 0000726C  7C 7E 1B 78 */	mr r30, r3
/* 000071AC 00007270  7F A3 EB 78 */	mr r3, r29
/* 000071B0 00007274  4B FF DE 65 */	bl evtGetValue
/* 000071B4 00007278  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000071B8 0000727C  7C 7F 1B 78 */	mr r31, r3
/* 000071BC 00007280  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000071C0 00007284  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000071C4 00007288  7F C4 F3 78 */	mr r4, r30
/* 000071C8 0000728C  7C 1D 03 78 */	mr r29, r0
/* 000071CC 00007290  7C 03 03 78 */	mr r3, r0
/* 000071D0 00007294  4B FF DE 45 */	bl BattleGetUnitPtr
/* 000071D4 00007298  7C 7E 1B 78 */	mr r30, r3
/* 000071D8 0000729C  7F A3 EB 78 */	mr r3, r29
/* 000071DC 000072A0  7F E4 FB 78 */	mr r4, r31
/* 000071E0 000072A4  4B FF DE 35 */	bl BattleGetUnitPtr
/* 000071E4 000072A8  A8 1E 01 0C */	lha r0, 0x10c(r30)
/* 000071E8 000072AC  7C 7F 1B 78 */	mr r31, r3
/* 000071EC 000072B0  38 7F 01 18 */	addi r3, r31, 0x118
/* 000071F0 000072B4  38 9E 01 18 */	addi r4, r30, 0x118
/* 000071F4 000072B8  B0 1F 01 0C */	sth r0, 0x10c(r31)
/* 000071F8 000072BC  38 A0 00 1E */	li r5, 0x1e
/* 000071FC 000072C0  4B FF DE 19 */	bl memcpy
/* 00007200 000072C4  A8 BF 01 0C */	lha r5, 0x10c(r31)
/* 00007204 000072C8  3C 00 43 30 */	lis r0, 0x4330
/* 00007208 000072CC  3C 60 00 00 */	lis r3, double_to_int_tou2_000100c0@ha
/* 0000720C 000072D0  90 01 00 08 */	stw r0, 0x8(r1)
/* 00007210 000072D4  38 83 00 00 */	addi r4, r3, double_to_int_tou2_000100c0@l
/* 00007214 000072D8  38 60 00 02 */	li r3, 0x2
/* 00007218 000072DC  90 BF 02 08 */	stw r5, 0x208(r31)
/* 0000721C 000072E0  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00007220 000072E4  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00007224 000072E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 00007228 000072EC  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 0000722C 000072F0  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00007230 000072F4  A8 1F 01 08 */	lha r0, 0x108(r31)
/* 00007234 000072F8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00007238 000072FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000723C 00007300  90 81 00 0C */	stw r4, 0xc(r1)
/* 00007240 00007304  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007244 00007308  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00007248 0000730C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 0000724C 00007310  EC 21 10 28 */	fsubs f1, f1, f2
/* 00007250 00007314  EC 00 10 28 */	fsubs f0, f0, f2
/* 00007254 00007318  EC 01 00 24 */	fdivs f0, f1, f0
/* 00007258 0000731C  D0 1F 02 14 */	stfs f0, 0x214(r31)
/* 0000725C 00007320  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 00007260 00007324  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00007264 00007328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007268 0000732C  7C 08 03 A6 */	mtlr r0
/* 0000726C 00007330  38 21 00 30 */	addi r1, r1, 0x30
/* 00007270 00007334  4E 80 00 20 */	blr
.endfn kamec_copy_status

# .text:0x57C | 0x7274 | size: 0xFC
.fn kamec_shuffle, local
/* 00007274 00007338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007278 0000733C  7C 08 02 A6 */	mflr r0
/* 0000727C 00007340  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00007280 00007344  38 80 00 00 */	li r4, 0x0
/* 00007284 00007348  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007288 0000734C  38 00 00 40 */	li r0, 0x40
/* 0000728C 00007350  38 A1 00 08 */	addi r5, r1, 0x8
/* 00007290 00007354  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 00007294 00007358  3B 80 00 00 */	li r28, 0x0
/* 00007298 0000735C  80 E3 00 00 */	lwz r7, _battleWorkPointer@l(r3)
/* 0000729C 00007360  38 60 00 00 */	li r3, 0x0
/* 000072A0 00007364  7C 09 03 A6 */	mtctr r0
.L_000072A4:
/* 000072A4 00007368  38 04 00 20 */	addi r0, r4, 0x20
/* 000072A8 0000736C  7C 07 00 2E */	lwzx r0, r7, r0
/* 000072AC 00007370  7C 05 19 2E */	stwx r0, r5, r3
/* 000072B0 00007374  7C C5 18 2E */	lwzx r6, r5, r3
/* 000072B4 00007378  28 06 00 00 */	cmplwi r6, 0x0
/* 000072B8 0000737C  41 82 00 20 */	beq .L_000072D8
/* 000072BC 00007380  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000072C0 00007384  2C 00 00 31 */	cmpwi r0, 0x31
/* 000072C4 00007388  41 82 00 0C */	beq .L_000072D0
/* 000072C8 0000738C  2C 00 00 32 */	cmpwi r0, 0x32
/* 000072CC 00007390  40 82 00 0C */	bne .L_000072D8
.L_000072D0:
/* 000072D0 00007394  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000072D4 00007398  38 63 00 04 */	addi r3, r3, 0x4
.L_000072D8:
/* 000072D8 0000739C  38 84 00 04 */	addi r4, r4, 0x4
/* 000072DC 000073A0  42 00 FF C8 */	bdnz .L_000072A4
/* 000072E0 000073A4  3B A0 00 00 */	li r29, 0x0
/* 000072E4 000073A8  3B E1 00 08 */	addi r31, r1, 0x8
.L_000072E8:
/* 000072E8 000073AC  7F 83 E3 78 */	mr r3, r28
/* 000072EC 000073B0  4B FF DD 29 */	bl irand
/* 000072F0 000073B4  7C 7E 1B 78 */	mr r30, r3
/* 000072F4 000073B8  7F 83 E3 78 */	mr r3, r28
/* 000072F8 000073BC  4B FF DD 1D */	bl irand
/* 000072FC 000073C0  57 C4 10 3A */	slwi r4, r30, 2
/* 00007300 000073C4  54 60 10 3A */	slwi r0, r3, 2
/* 00007304 000073C8  7C 7F 20 2E */	lwzx r3, r31, r4
/* 00007308 000073CC  3B BD 00 01 */	addi r29, r29, 0x1
/* 0000730C 000073D0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 00007310 000073D4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 00007314 000073D8  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 00007318 000073DC  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 0000731C 000073E0  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 00007320 000073E4  D0 24 00 3C */	stfs f1, 0x3c(r4)
/* 00007324 000073E8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 00007328 000073EC  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 0000732C 000073F0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 00007330 000073F4  D0 24 00 30 */	stfs f1, 0x30(r4)
/* 00007334 000073F8  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 00007338 000073FC  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 0000733C 00007400  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 00007340 00007404  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 00007344 00007408  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 00007348 0000740C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 0000734C 00007410  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 00007350 00007414  D0 24 00 38 */	stfs f1, 0x38(r4)
/* 00007354 00007418  41 80 FF 94 */	blt .L_000072E8
/* 00007358 0000741C  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 0000735C 00007420  38 60 00 02 */	li r3, 0x2
/* 00007360 00007424  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007364 00007428  7C 08 03 A6 */	mtlr r0
/* 00007368 0000742C  38 21 00 30 */	addi r1, r1, 0x30
/* 0000736C 00007430  4E 80 00 20 */	blr
.endfn kamec_shuffle

# .text:0x678 | 0x7370 | size: 0xE8
.fn kamec_get_bunsin, local
/* 00007370 00007434  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007374 00007438  7C 08 02 A6 */	mflr r0
/* 00007378 0000743C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000737C 00007440  38 C0 00 00 */	li r6, 0x0
/* 00007380 00007444  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007384 00007448  38 00 00 40 */	li r0, 0x40
/* 00007388 0000744C  38 A1 00 08 */	addi r5, r1, 0x8
/* 0000738C 00007450  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 00007390 00007454  7C 7A 1B 78 */	mr r26, r3
/* 00007394 00007458  3B 60 00 00 */	li r27, 0x0
/* 00007398 0000745C  83 83 00 18 */	lwz r28, 0x18(r3)
/* 0000739C 00007460  38 60 00 00 */	li r3, 0x0
/* 000073A0 00007464  80 E4 00 00 */	lwz r7, _battleWorkPointer@l(r4)
/* 000073A4 00007468  38 80 00 00 */	li r4, 0x0
/* 000073A8 0000746C  7C 09 03 A6 */	mtctr r0
.L_000073AC:
/* 000073AC 00007470  38 04 00 20 */	addi r0, r4, 0x20
/* 000073B0 00007474  7D 07 00 2E */	lwzx r8, r7, r0
/* 000073B4 00007478  28 08 00 00 */	cmplwi r8, 0x0
/* 000073B8 0000747C  41 82 00 1C */	beq .L_000073D4
/* 000073BC 00007480  80 08 00 08 */	lwz r0, 0x8(r8)
/* 000073C0 00007484  2C 00 00 32 */	cmpwi r0, 0x32
/* 000073C4 00007488  40 82 00 10 */	bne .L_000073D4
/* 000073C8 0000748C  7C C5 19 2E */	stwx r6, r5, r3
/* 000073CC 00007490  3B 7B 00 01 */	addi r27, r27, 0x1
/* 000073D0 00007494  38 63 00 04 */	addi r3, r3, 0x4
.L_000073D4:
/* 000073D4 00007498  38 C6 00 01 */	addi r6, r6, 0x1
/* 000073D8 0000749C  38 84 00 04 */	addi r4, r4, 0x4
/* 000073DC 000074A0  42 00 FF D0 */	bdnz .L_000073AC
/* 000073E0 000074A4  3B C1 00 08 */	addi r30, r1, 0x8
/* 000073E4 000074A8  3B A0 00 00 */	li r29, 0x0
/* 000073E8 000074AC  3B E0 00 00 */	li r31, 0x0
.L_000073EC:
/* 000073EC 000074B0  7C 1D D8 00 */	cmpw r29, r27
/* 000073F0 000074B4  40 80 00 1C */	bge .L_0000740C
/* 000073F4 000074B8  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 000073F8 000074BC  7F 43 D3 78 */	mr r3, r26
/* 000073FC 000074C0  7C BE F8 2E */	lwzx r5, r30, r31
/* 00007400 000074C4  3B 9C 00 04 */	addi r28, r28, 0x4
/* 00007404 000074C8  4B FF DC 11 */	bl evtSetValue
/* 00007408 000074CC  48 00 00 18 */	b .L_00007420
.L_0000740C:
/* 0000740C 000074D0  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00007410 000074D4  7F 43 D3 78 */	mr r3, r26
/* 00007414 000074D8  38 A0 FF FF */	li r5, -0x1
/* 00007418 000074DC  3B 9C 00 04 */	addi r28, r28, 0x4
/* 0000741C 000074E0  4B FF DB F9 */	bl evtSetValue
.L_00007420:
/* 00007420 000074E4  3B BD 00 01 */	addi r29, r29, 0x1
/* 00007424 000074E8  3B FF 00 04 */	addi r31, r31, 0x4
/* 00007428 000074EC  2C 1D 00 04 */	cmpwi r29, 0x4
/* 0000742C 000074F0  41 80 FF C0 */	blt .L_000073EC
/* 00007430 000074F4  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00007434 000074F8  7F 43 D3 78 */	mr r3, r26
/* 00007438 000074FC  7F 65 DB 78 */	mr r5, r27
/* 0000743C 00007500  4B FF DB D9 */	bl evtSetValue
/* 00007440 00007504  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 00007444 00007508  38 60 00 02 */	li r3, 0x2
/* 00007448 0000750C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000744C 00007510  7C 08 03 A6 */	mtlr r0
/* 00007450 00007514  38 21 00 30 */	addi r1, r1, 0x30
/* 00007454 00007518  4E 80 00 20 */	blr
.endfn kamec_get_bunsin

# .text:0x760 | 0x7458 | size: 0x94
.fn kamec_get_live_num, local
/* 00007458 0000751C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000745C 00007520  7C 08 02 A6 */	mflr r0
/* 00007460 00007524  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007464 00007528  90 01 00 24 */	stw r0, 0x24(r1)
/* 00007468 0000752C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 0000746C 00007530  7C 7A 1B 78 */	mr r26, r3
/* 00007470 00007534  3B 80 00 00 */	li r28, 0x0
/* 00007474 00007538  3B C0 00 00 */	li r30, 0x0
/* 00007478 0000753C  3B E0 00 00 */	li r31, 0x0
/* 0000747C 00007540  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00007480 00007544  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_00007484:
/* 00007484 00007548  38 1F 00 20 */	addi r0, r31, 0x20
/* 00007488 0000754C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 0000748C 00007550  28 03 00 00 */	cmplwi r3, 0x0
/* 00007490 00007554  41 82 00 24 */	beq .L_000074B4
/* 00007494 00007558  88 03 00 0C */	lbz r0, 0xc(r3)
/* 00007498 0000755C  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000749C 00007560  40 82 00 18 */	bne .L_000074B4
/* 000074A0 00007564  38 80 00 1B */	li r4, 0x1b
/* 000074A4 00007568  4B FF DB 71 */	bl BtlUnit_CheckStatus
/* 000074A8 0000756C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000074AC 00007570  40 82 00 08 */	bne .L_000074B4
/* 000074B0 00007574  3B 9C 00 01 */	addi r28, r28, 0x1
.L_000074B4:
/* 000074B4 00007578  3B DE 00 01 */	addi r30, r30, 0x1
/* 000074B8 0000757C  3B FF 00 04 */	addi r31, r31, 0x4
/* 000074BC 00007580  2C 1E 00 40 */	cmpwi r30, 0x40
/* 000074C0 00007584  41 80 FF C4 */	blt .L_00007484
/* 000074C4 00007588  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 000074C8 0000758C  7F 43 D3 78 */	mr r3, r26
/* 000074CC 00007590  7F 85 E3 78 */	mr r5, r28
/* 000074D0 00007594  4B FF DB 45 */	bl evtSetValue
/* 000074D4 00007598  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 000074D8 0000759C  38 60 00 02 */	li r3, 0x2
/* 000074DC 000075A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000074E0 000075A4  7C 08 03 A6 */	mtlr r0
/* 000074E4 000075A8  38 21 00 20 */	addi r1, r1, 0x20
/* 000074E8 000075AC  4E 80 00 20 */	blr
.endfn kamec_get_live_num

# 0x00006658..0x000069A0 | size: 0x348
.rodata
.balign 8

# .rodata:0x0 | 0x6658 | size: 0x11
.obj str_btl_un_kamec_red_tou2_0000fd98, local
	.string "btl_un_kamec_red"
.endobj str_btl_un_kamec_red_tou2_0000fd98

# .rodata:0x11 | 0x6669 | size: 0x3
.obj gap_03_00006669_rodata, global
.hidden gap_03_00006669_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006669_rodata

# .rodata:0x14 | 0x666C | size: 0x18
.obj str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fdac, local
	.string "SFX_ENM_KAMEKU_DAMAGED1"
.endobj str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fdac

# .rodata:0x2C | 0x6684 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fdc4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fdc4

# .rodata:0x41 | 0x6699 | size: 0x3
.obj gap_03_00006699_rodata, global
.hidden gap_03_00006699_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006699_rodata

# .rodata:0x44 | 0x669C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000fddc, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000fddc

# .rodata:0x58 | 0x66B0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000fdf0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000fdf0

# .rodata:0x71 | 0x66C9 | size: 0x3
.obj gap_03_000066C9_rodata, global
.hidden gap_03_000066C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000066C9_rodata

# .rodata:0x74 | 0x66CC | size: 0x18
.obj str_btl_un_kamec_red_bun_tou2_0000fe0c, local
	.string "btl_un_kamec_red_bunsin"
.endobj str_btl_un_kamec_red_bun_tou2_0000fe0c

# .rodata:0x8C | 0x66E4 | size: 0x8
.obj str_KMR_N_1_tou2_0000fe24, local
	.string "KMR_N_1"
.endobj str_KMR_N_1_tou2_0000fe24

# .rodata:0x94 | 0x66EC | size: 0x8
.obj str_KMR_Y_1_tou2_0000fe2c, local
	.string "KMR_Y_1"
.endobj str_KMR_Y_1_tou2_0000fe2c

# .rodata:0x9C | 0x66F4 | size: 0x8
.obj str_KMR_K_1_tou2_0000fe34, local
	.string "KMR_K_1"
.endobj str_KMR_K_1_tou2_0000fe34

# .rodata:0xA4 | 0x66FC | size: 0x8
.obj str_KMR_X_1_tou2_0000fe3c, local
	.string "KMR_X_1"
.endobj str_KMR_X_1_tou2_0000fe3c

# .rodata:0xAC | 0x6704 | size: 0x8
.obj str_KMR_S_1_tou2_0000fe44, local
	.string "KMR_S_1"
.endobj str_KMR_S_1_tou2_0000fe44

# .rodata:0xB4 | 0x670C | size: 0x8
.obj str_KMR_Q_1_tou2_0000fe4c, local
	.string "KMR_Q_1"
.endobj str_KMR_Q_1_tou2_0000fe4c

# .rodata:0xBC | 0x6714 | size: 0x8
.obj str_KMR_D_1_tou2_0000fe54, local
	.string "KMR_D_1"
.endobj str_KMR_D_1_tou2_0000fe54

# .rodata:0xC4 | 0x671C | size: 0x8
.obj str_KMR_R_1_tou2_0000fe5c, local
	.string "KMR_R_1"
.endobj str_KMR_R_1_tou2_0000fe5c

# .rodata:0xCC | 0x6724 | size: 0x8
.obj str_KMR_W_1_tou2_0000fe64, local
	.string "KMR_W_1"
.endobj str_KMR_W_1_tou2_0000fe64

# .rodata:0xD4 | 0x672C | size: 0x8
.obj str_KMR_T_1_tou2_0000fe6c, local
	.string "KMR_T_1"
.endobj str_KMR_T_1_tou2_0000fe6c

# .rodata:0xDC | 0x6734 | size: 0x8
.obj str_KMR_N_2_tou2_0000fe74, local
	.string "KMR_N_2"
.endobj str_KMR_N_2_tou2_0000fe74

# .rodata:0xE4 | 0x673C | size: 0x8
.obj str_KMR_Y_2_tou2_0000fe7c, local
	.string "KMR_Y_2"
.endobj str_KMR_Y_2_tou2_0000fe7c

# .rodata:0xEC | 0x6744 | size: 0x8
.obj str_KMR_K_2_tou2_0000fe84, local
	.string "KMR_K_2"
.endobj str_KMR_K_2_tou2_0000fe84

# .rodata:0xF4 | 0x674C | size: 0x8
.obj str_KMR_X_2_tou2_0000fe8c, local
	.string "KMR_X_2"
.endobj str_KMR_X_2_tou2_0000fe8c

# .rodata:0xFC | 0x6754 | size: 0x8
.obj str_KMR_S_2_tou2_0000fe94, local
	.string "KMR_S_2"
.endobj str_KMR_S_2_tou2_0000fe94

# .rodata:0x104 | 0x675C | size: 0x8
.obj str_KMR_Q_2_tou2_0000fe9c, local
	.string "KMR_Q_2"
.endobj str_KMR_Q_2_tou2_0000fe9c

# .rodata:0x10C | 0x6764 | size: 0x8
.obj str_KMR_D_2_tou2_0000fea4, local
	.string "KMR_D_2"
.endobj str_KMR_D_2_tou2_0000fea4

# .rodata:0x114 | 0x676C | size: 0x8
.obj str_KMR_R_2_tou2_0000feac, local
	.string "KMR_R_2"
.endobj str_KMR_R_2_tou2_0000feac

# .rodata:0x11C | 0x6774 | size: 0x8
.obj str_KMR_W_2_tou2_0000feb4, local
	.string "KMR_W_2"
.endobj str_KMR_W_2_tou2_0000feb4

# .rodata:0x124 | 0x677C | size: 0x8
.obj str_KMR_T_2_tou2_0000febc, local
	.string "KMR_T_2"
.endobj str_KMR_T_2_tou2_0000febc

# .rodata:0x12C | 0x6784 | size: 0xA
.obj str_c_kamek_r_tou2_0000fec4, local
	.string "c_kamek_r"
.endobj str_c_kamek_r_tou2_0000fec4

# .rodata:0x136 | 0x678E | size: 0x2
.obj gap_03_0000678E_rodata, global
.hidden gap_03_0000678E_rodata
	.2byte 0x0000
.endobj gap_03_0000678E_rodata

# .rodata:0x138 | 0x6790 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000fed0, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000fed0

# .rodata:0x14D | 0x67A5 | size: 0x3
.obj gap_03_000067A5_rodata, global
.hidden gap_03_000067A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067A5_rodata

# .rodata:0x150 | 0x67A8 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000fee8, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000fee8

# .rodata:0x165 | 0x67BD | size: 0x3
.obj gap_03_000067BD_rodata, global
.hidden gap_03_000067BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067BD_rodata

# .rodata:0x168 | 0x67C0 | size: 0xC
.obj str_kemuri_test_tou2_0000ff00, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0000ff00

# .rodata:0x174 | 0x67CC | size: 0x1
.obj zero_tou2_0000ff0c, local
	.byte 0x00
.endobj zero_tou2_0000ff0c

# .rodata:0x175 | 0x67CD | size: 0x3
.obj gap_03_000067CD_rodata, global
.hidden gap_03_000067CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067CD_rodata

# .rodata:0x178 | 0x67D0 | size: 0xB
.obj str_star_point_tou2_0000ff10, local
	.string "star_point"
.endobj str_star_point_tou2_0000ff10

# .rodata:0x183 | 0x67DB | size: 0x1
.obj gap_03_000067DB_rodata, global
.hidden gap_03_000067DB_rodata
	.byte 0x00
.endobj gap_03_000067DB_rodata

# .rodata:0x184 | 0x67DC | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_tou2_0000ff1c, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_tou2_0000ff1c

# .rodata:0x19A | 0x67F2 | size: 0x2
.obj gap_03_000067F2_rodata, global
.hidden gap_03_000067F2_rodata
	.2byte 0x0000
.endobj gap_03_000067F2_rodata

# .rodata:0x19C | 0x67F4 | size: 0x8
.obj str_KMR_H_1_tou2_0000ff34, local
	.string "KMR_H_1"
.endobj str_KMR_H_1_tou2_0000ff34

# .rodata:0x1A4 | 0x67FC | size: 0xE
.obj str_SFX_ENM_FALL1_tou2_0000ff3c, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_tou2_0000ff3c

# .rodata:0x1B2 | 0x680A | size: 0x2
.obj gap_03_0000680A_rodata, global
.hidden gap_03_0000680A_rodata
	.2byte 0x0000
.endobj gap_03_0000680A_rodata

# .rodata:0x1B4 | 0x680C | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff4c, local
	.string "SFX_ENM_KAMEKU_MAGIC1"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff4c

# .rodata:0x1CA | 0x6822 | size: 0x2
.obj gap_03_00006822_rodata, global
.hidden gap_03_00006822_rodata
	.2byte 0x0000
.endobj gap_03_00006822_rodata

# .rodata:0x1CC | 0x6824 | size: 0x9
.obj str_KMR_A_1A_tou2_0000ff64, local
	.string "KMR_A_1A"
.endobj str_KMR_A_1A_tou2_0000ff64

# .rodata:0x1D5 | 0x682D | size: 0x3
.obj gap_03_0000682D_rodata, global
.hidden gap_03_0000682D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000682D_rodata

# .rodata:0x1D8 | 0x6830 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff70, local
	.string "SFX_ENM_KAMEKU_MAGIC4"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff70

# .rodata:0x1EE | 0x6846 | size: 0x2
.obj gap_03_00006846_rodata, global
.hidden gap_03_00006846_rodata
	.2byte 0x0000
.endobj gap_03_00006846_rodata

# .rodata:0x1F0 | 0x6848 | size: 0x9
.obj str_KMR_A_1B_tou2_0000ff88, local
	.string "KMR_A_1B"
.endobj str_KMR_A_1B_tou2_0000ff88

# .rodata:0x1F9 | 0x6851 | size: 0x3
.obj gap_03_00006851_rodata, global
.hidden gap_03_00006851_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006851_rodata

# .rodata:0x1FC | 0x6854 | size: 0x9
.obj str_KMR_A_1C_tou2_0000ff94, local
	.string "KMR_A_1C"
.endobj str_KMR_A_1C_tou2_0000ff94

# .rodata:0x205 | 0x685D | size: 0x3
.obj gap_03_0000685D_rodata, global
.hidden gap_03_0000685D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000685D_rodata

# .rodata:0x208 | 0x6860 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffa0, local
	.string "SFX_ENM_KAMEKU_MAGIC8"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffa0

# .rodata:0x21E | 0x6876 | size: 0x2
.obj gap_03_00006876_rodata, global
.hidden gap_03_00006876_rodata
	.2byte 0x0000
.endobj gap_03_00006876_rodata

# .rodata:0x220 | 0x6878 | size: 0x9
.obj str_KMR_A_1D_tou2_0000ffb8, local
	.string "KMR_A_1D"
.endobj str_KMR_A_1D_tou2_0000ffb8

# .rodata:0x229 | 0x6881 | size: 0x3
.obj gap_03_00006881_rodata, global
.hidden gap_03_00006881_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006881_rodata

# .rodata:0x22C | 0x6884 | size: 0x9
.obj str_KMR_A_1E_tou2_0000ffc4, local
	.string "KMR_A_1E"
.endobj str_KMR_A_1E_tou2_0000ffc4

# .rodata:0x235 | 0x688D | size: 0x3
.obj gap_03_0000688D_rodata, global
.hidden gap_03_0000688D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000688D_rodata

# .rodata:0x238 | 0x6890 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffd0, local
	.string "SFX_ENM_KAMEKU_MAGIC6"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffd0

# .rodata:0x24E | 0x68A6 | size: 0x2
.obj gap_03_000068A6_rodata, global
.hidden gap_03_000068A6_rodata
	.2byte 0x0000
.endobj gap_03_000068A6_rodata

# .rodata:0x250 | 0x68A8 | size: 0x9
.obj str_KMR_A_2A_tou2_0000ffe8, local
	.string "KMR_A_2A"
.endobj str_KMR_A_2A_tou2_0000ffe8

# .rodata:0x259 | 0x68B1 | size: 0x3
.obj gap_03_000068B1_rodata, global
.hidden gap_03_000068B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068B1_rodata

# .rodata:0x25C | 0x68B4 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fff4, local
	.string "SFX_ENM_KAMEKU_MAGIC7"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fff4

# .rodata:0x272 | 0x68CA | size: 0x2
.obj gap_03_000068CA_rodata, global
.hidden gap_03_000068CA_rodata
	.2byte 0x0000
.endobj gap_03_000068CA_rodata

# .rodata:0x274 | 0x68CC | size: 0x9
.obj str_KMR_A_2B_tou2_0001000c, local
	.string "KMR_A_2B"
.endobj str_KMR_A_2B_tou2_0001000c

# .rodata:0x27D | 0x68D5 | size: 0x3
.obj gap_03_000068D5_rodata, global
.hidden gap_03_000068D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068D5_rodata

# .rodata:0x280 | 0x68D8 | size: 0x9
.obj str_KMR_A_2C_tou2_00010018, local
	.string "KMR_A_2C"
.endobj str_KMR_A_2C_tou2_00010018

# .rodata:0x289 | 0x68E1 | size: 0x3
.obj gap_03_000068E1_rodata, global
.hidden gap_03_000068E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068E1_rodata

# .rodata:0x28C | 0x68E4 | size: 0x9
.obj str_KMR_A_3A_tou2_00010024, local
	.string "KMR_A_3A"
.endobj str_KMR_A_3A_tou2_00010024

# .rodata:0x295 | 0x68ED | size: 0x3
.obj gap_03_000068ED_rodata, global
.hidden gap_03_000068ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068ED_rodata

# .rodata:0x298 | 0x68F0 | size: 0x9
.obj str_KMR_A_3B_tou2_00010030, local
	.string "KMR_A_3B"
.endobj str_KMR_A_3B_tou2_00010030

# .rodata:0x2A1 | 0x68F9 | size: 0x3
.obj gap_03_000068F9_rodata, global
.hidden gap_03_000068F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068F9_rodata

# .rodata:0x2A4 | 0x68FC | size: 0x9
.obj str_KMR_A_3C_tou2_0001003c, local
	.string "KMR_A_3C"
.endobj str_KMR_A_3C_tou2_0001003c

# .rodata:0x2AD | 0x6905 | size: 0x3
.obj gap_03_00006905_rodata, global
.hidden gap_03_00006905_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006905_rodata

# .rodata:0x2B0 | 0x6908 | size: 0x9
.obj str_KMR_A_3D_tou2_00010048, local
	.string "KMR_A_3D"
.endobj str_KMR_A_3D_tou2_00010048

# .rodata:0x2B9 | 0x6911 | size: 0x3
.obj gap_03_00006911_rodata, global
.hidden gap_03_00006911_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006911_rodata

# .rodata:0x2BC | 0x6914 | size: 0x18
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_00010054, local
	.string "SFX_ENM_KAMEKU_MAGIC3_2"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_00010054

# .rodata:0x2D4 | 0x692C | size: 0x9
.obj str_recovery_tou2_0001006c, local
	.string "recovery"
.endobj str_recovery_tou2_0001006c

# .rodata:0x2DD | 0x6935 | size: 0x3
.obj gap_03_00006935_rodata, global
.hidden gap_03_00006935_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006935_rodata

# .rodata:0x2E0 | 0x6938 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tou2_00010078, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT1"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tou2_00010078

# .rodata:0x2F9 | 0x6951 | size: 0x3
.obj gap_03_00006951_rodata, global
.hidden gap_03_00006951_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006951_rodata

# .rodata:0x2FC | 0x6954 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tou2_00010094, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT2"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tou2_00010094
	.byte 0x00, 0x00, 0x00

# .rodata:0x318 | 0x6970 | size: 0x4
.obj float_25_tou2_000100b0, local
	.float 25
.endobj float_25_tou2_000100b0

# .rodata:0x31C | 0x6974 | size: 0x4
.obj float_20_tou2_000100b4, local
	.float 20
.endobj float_20_tou2_000100b4

# .rodata:0x320 | 0x6978 | size: 0x4
.obj float_5_tou2_000100b8, local
	.float 5
.endobj float_5_tou2_000100b8
	.4byte 0x00000000

# .rodata:0x328 | 0x6980 | size: 0x8
.obj double_to_int_tou2_000100c0, local
	.double 4503601774854144
.endobj double_to_int_tou2_000100c0

# .rodata:0x330 | 0x6988 | size: 0x4
.obj zero_tou2_000100c8, local
	.float 0
.endobj zero_tou2_000100c8

# .rodata:0x334 | 0x698C | size: 0x4
.obj float_neg1000_tou2_000100cc, local
	.float -1000
.endobj float_neg1000_tou2_000100cc

# .rodata:0x338 | 0x6990 | size: 0x4
.obj float_1_tou2_000100d0, local
	.float 1
.endobj float_1_tou2_000100d0

# .rodata:0x33C | 0x6994 | size: 0x4
.obj float_22p5_tou2_000100d4, local
	.float 22.5
.endobj float_22p5_tou2_000100d4

# .rodata:0x340 | 0x6998 | size: 0x4
.obj float_40_tou2_000100d8, local
	.float 40
.endobj float_40_tou2_000100d8

# .rodata:0x344 | 0x699C | size: 0x4
.obj gap_03_0000699C_rodata, global
.hidden gap_03_0000699C_rodata
	.4byte 0x00000000
.endobj gap_03_0000699C_rodata

# 0x00041C90..0x000455B8 | size: 0x3928
.data
.balign 8

# .data:0x0 | 0x41C90 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x41C98 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x41C9C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x41CA0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x41CA4 | size: 0x4
.obj gap_04_00041CA4_data, global
.hidden gap_04_00041CA4_data
	.4byte 0x00000000
.endobj gap_04_00041CA4_data

# .data:0x18 | 0x41CA8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x41CB0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x41CB4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x41CB8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x41CC0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x41CC4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x41CC8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x41CCC | size: 0x4
.obj gap_04_00041CCC_data, global
.hidden gap_04_00041CCC_data
	.4byte 0x00000000
.endobj gap_04_00041CCC_data

# .data:0x40 | 0x41CD0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x41CD8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x41CDC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x41CE0 | size: 0xC4
.obj unit_kamec_red_26_data_41CE0, global
	.4byte 0x00000031
	.4byte str_btl_un_kamec_red_tou2_0000fd98
	.4byte 0x00070000
	.4byte 0x01011100
	.4byte 0x02460232
	.4byte 0x270F002A
	.4byte 0x002A0000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fdac
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fdc4
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000fddc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000fdf0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kamec_red_26_data_41CE0

# .data:0x114 | 0x41DA4 | size: 0xC4
.obj unit_kamec_red_bunsin, local
	.4byte 0x00000032
	.4byte str_btl_un_kamec_red_bun_tou2_0000fe0c
	.4byte 0x00070000
	.4byte 0x01010000
	.4byte 0x00460032
	.4byte 0x270F002A
	.4byte 0x002A0000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x00140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fdac
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fdc4
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000fddc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000fdf0
	.4byte 0x00400000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table_bunsin
.endobj unit_kamec_red_bunsin

# .data:0x1D8 | 0x41E68 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1DD | 0x41E6D | size: 0x3
.obj gap_04_00041E6D_data, global
.hidden gap_04_00041E6D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041E6D_data

# .data:0x1E0 | 0x41E70 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E5 | 0x41E75 | size: 0x3
.obj gap_04_00041E75_data, global
.hidden gap_04_00041E75_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00041E75_data

# .data:0x1E8 | 0x41E78 | size: 0x16
.obj regist, local
	.ascii "FKPdFddFdZdZd_PFPdPdd_"
.endobj regist

# .data:0x1FE | 0x41E8E | size: 0x2
.obj gap_04_00041E8E_data, global
.hidden gap_04_00041E8E_data
	.2byte 0x0000
.endobj gap_04_00041E8E_data

# .data:0x200 | 0x41E90 | size: 0x16
.obj regist_bunsin, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist_bunsin

# .data:0x216 | 0x41EA6 | size: 0x2
.obj gap_04_00041EA6_data, global
.hidden gap_04_00041EA6_data
	.2byte 0x0000
.endobj gap_04_00041EA6_data

# .data:0x218 | 0x41EA8 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KMR_N_1_tou2_0000fe24
	.4byte 0x00000002
	.4byte str_KMR_Y_1_tou2_0000fe2c
	.4byte 0x00000009
	.4byte str_KMR_Y_1_tou2_0000fe2c
	.4byte 0x00000005
	.4byte str_KMR_K_1_tou2_0000fe34
	.4byte 0x00000004
	.4byte str_KMR_X_1_tou2_0000fe3c
	.4byte 0x00000003
	.4byte str_KMR_X_1_tou2_0000fe3c
	.4byte 0x0000001C
	.4byte str_KMR_S_1_tou2_0000fe44
	.4byte 0x0000001D
	.4byte str_KMR_Q_1_tou2_0000fe4c
	.4byte 0x0000001E
	.4byte str_KMR_Q_1_tou2_0000fe4c
	.4byte 0x0000001F
	.4byte str_KMR_S_1_tou2_0000fe44
	.4byte 0x00000027
	.4byte str_KMR_D_1_tou2_0000fe54
	.4byte 0x0000002A
	.4byte str_KMR_R_1_tou2_0000fe5c
	.4byte 0x00000028
	.4byte str_KMR_W_1_tou2_0000fe64
	.4byte 0x00000038
	.4byte str_KMR_X_1_tou2_0000fe3c
	.4byte 0x00000039
	.4byte str_KMR_X_1_tou2_0000fe3c
	.4byte 0x00000041
	.4byte str_KMR_T_1_tou2_0000fe6c
	.4byte 0x00000045
	.4byte str_KMR_S_1_tou2_0000fe44
.endobj pose_table

# .data:0x2A0 | 0x41F30 | size: 0x88
.obj pose_table_sky, local
	.4byte 0x00000001
	.4byte str_KMR_N_2_tou2_0000fe74
	.4byte 0x00000002
	.4byte str_KMR_Y_2_tou2_0000fe7c
	.4byte 0x00000009
	.4byte str_KMR_Y_2_tou2_0000fe7c
	.4byte 0x00000005
	.4byte str_KMR_K_2_tou2_0000fe84
	.4byte 0x00000004
	.4byte str_KMR_X_2_tou2_0000fe8c
	.4byte 0x00000003
	.4byte str_KMR_X_2_tou2_0000fe8c
	.4byte 0x0000001C
	.4byte str_KMR_S_2_tou2_0000fe94
	.4byte 0x0000001D
	.4byte str_KMR_Q_2_tou2_0000fe9c
	.4byte 0x0000001E
	.4byte str_KMR_Q_2_tou2_0000fe9c
	.4byte 0x0000001F
	.4byte str_KMR_S_2_tou2_0000fe94
	.4byte 0x00000027
	.4byte str_KMR_D_2_tou2_0000fea4
	.4byte 0x0000002A
	.4byte str_KMR_R_2_tou2_0000feac
	.4byte 0x00000028
	.4byte str_KMR_W_2_tou2_0000feb4
	.4byte 0x00000038
	.4byte str_KMR_X_2_tou2_0000fe8c
	.4byte 0x00000039
	.4byte str_KMR_X_2_tou2_0000fe8c
	.4byte 0x00000041
	.4byte str_KMR_T_2_tou2_0000febc
	.4byte 0x00000045
	.4byte str_KMR_S_2_tou2_0000fe94
.endobj pose_table_sky

# .data:0x328 | 0x41FB8 | size: 0x28
.obj data_table, local
	.4byte 0x00000031
	.4byte kamec_subset_dead_event
	.4byte 0x0000003A
	.4byte kamec_subset_blow_dead_event
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x350 | 0x41FE0 | size: 0x30
.obj data_table_sky, local
	.4byte 0x00000031
	.4byte kamec_subset_dead_event
	.4byte 0x0000003A
	.4byte kamec_subset_blow_dead_event
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sky

# .data:0x380 | 0x42010 | size: 0x18
.obj data_table_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_bunsin

# .data:0x398 | 0x42028 | size: 0x20
.obj data_table_sky_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sky_bunsin

# .data:0x3B8 | 0x42048 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kamec_red_tou2_0000fd98
	.4byte str_c_kamek_r_tou2_0000fec4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_kamec_red_tou2_0000fd98
	.4byte str_c_kamek_r_tou2_0000fec4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x450 | 0x420E0 | size: 0xC0
.obj weapon_kamec_attack_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x000000C7
	.4byte 0x000007FF
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
.endobj weapon_kamec_attack_magic

# .data:0x510 | 0x421A0 | size: 0xC0
.obj weapon_kamec_dekadeka_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03020000
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
.endobj weapon_kamec_dekadeka_magic

# .data:0x5D0 | 0x42260 | size: 0xC0
.obj weapon_kamec_biribiri_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03000000
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
.endobj weapon_kamec_biribiri_magic

# .data:0x690 | 0x42320 | size: 0xC0
.obj weapon_kamec_trans_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
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
	.4byte 0x64030000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_trans_magic

# .data:0x750 | 0x423E0 | size: 0xC0
.obj weapon_kamec_katikati_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640303
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_katikati_magic

# .data:0x810 | 0x424A0 | size: 0xC0
.obj weapon_kamec_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00001500
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
.endobj weapon_kamec_recover_magic

# .data:0x8D0 | 0x42560 | size: 0xC0
.obj weapon_kamec_all_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x02100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_all_recover_magic

# .data:0x990 | 0x42620 | size: 0x30
.obj entry_kamec, local
	.4byte unit_kamec_red_bunsin
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_kamec

# .data:0x9C0 | 0x42650 | size: 0x58
.obj init_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte init_event2
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xA18 | 0x426A8 | size: 0x15C
.obj init_event2, local
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_sky
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sky
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sky_bunsin
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event2

# .data:0xB74 | 0x42804 | size: 0xE8
.obj alpha_down_event, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FE
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj alpha_down_event

# .data:0xC5C | 0x428EC | size: 0xE8
.obj alpha_up_event, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FE
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj alpha_up_event

# .data:0xD44 | 0x429D4 | size: 0x108
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte bunsin_kill_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xE4C | 0x42ADC | size: 0x110
.obj kamec_subset_bunsin_all_kill, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_bunsin_all_kill

# .data:0xF5C | 0x42BEC | size: 0x32C
.obj kamec_subset_dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDataOfDataTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x08000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tou2_0000fed0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_0000fee8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_tou2_0000ff00
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7DB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte _add_star_point_disp_offset
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000ff0c
	.4byte str_star_point_tou2_0000ff10
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_GetBackItem
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x20000000
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_dead_event

# .data:0x1288 | 0x42F18 | size: 0x138
.obj kamec_subset_blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_tou2_0000ff1c
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_blow_dead_event

# .data:0x13C0 | 0x43050 | size: 0x40
.obj avoid_miss_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte bunsin_kill_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_miss_event

# .data:0x1400 | 0x43090 | size: 0x94
.obj bunsin_kill_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte alpha_down_event
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunsin_kill_event

# .data:0x1494 | 0x43124 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x149C | 0x4312C | size: 0x27C
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_bunsin
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KMR_H_1_tou2_0000ff34
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_tou2_0000ff3c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte init_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0x1718 | 0x433A8 | size: 0x4C
.obj dmg_first_attack_pos, local
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
.endobj dmg_first_attack_pos

# .data:0x1764 | 0x433F4 | size: 0x4A0
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte kamec_get_live_num
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte bunsin_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_dekadeka_magic
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_katikati_magic
	.4byte 0x0001005E
	.4byte katikati_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_biribiri_magic
	.4byte 0x0001005E
	.4byte biribiri_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_trans_magic
	.4byte 0x0001005E
	.4byte trans_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_all_recover_magic
	.4byte 0x0001005E
	.4byte all_recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1C04 | 0x43894 | size: 0x4C4
.obj ground_magic_common_event1, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff2
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_1A_tou2_0000ff64
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_1A_tou2_0000ff64
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_1A_tou2_0000ff64
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_1A_tou2_0000ff64
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_1A_tou2_0000ff64
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_1B_tou2_0000ff88
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_1B_tou2_0000ff88
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_1B_tou2_0000ff88
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_1B_tou2_0000ff88
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_1B_tou2_0000ff88
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_1C_tou2_0000ff94
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_1C_tou2_0000ff94
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_1C_tou2_0000ff94
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_1C_tou2_0000ff94
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_1C_tou2_0000ff94
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffa0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_1D_tou2_0000ffb8
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_1D_tou2_0000ffb8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_1D_tou2_0000ffb8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_1D_tou2_0000ffb8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_1D_tou2_0000ffb8
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_1E_tou2_0000ffc4
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_1E_tou2_0000ffc4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_1E_tou2_0000ffc4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_1E_tou2_0000ffc4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_1E_tou2_0000ffc4
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event1

# .data:0x20C8 | 0x43D58 | size: 0xF4
.obj ground_magic_common_event2, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_1A_tou2_0000ff64
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffd0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_2A_tou2_0000ffe8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fff4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_2B_tou2_0001000c
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_2C_tou2_00010018
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event2

# .data:0x21BC | 0x43E4C | size: 0x408
.obj sky_magic_common_event, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ff4c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff2
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_3A_tou2_00010024
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_3A_tou2_00010024
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_3A_tou2_00010024
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_3A_tou2_00010024
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_3A_tou2_00010024
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000ffa0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_3B_tou2_00010030
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_3B_tou2_00010030
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_3B_tou2_00010030
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_3B_tou2_00010030
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_3B_tou2_00010030
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fff4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_3C_tou2_0001003c
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_3C_tou2_0001003c
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_3C_tou2_0001003c
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_3C_tou2_0001003c
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_3C_tou2_0001003c
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMR_A_3D_tou2_00010048
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMR_A_3D_tou2_00010048
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMR_A_3D_tou2_00010048
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMR_A_3D_tou2_00010048
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMR_A_3D_tou2_00010048
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sky_magic_common_event

# .data:0x25C4 | 0x44254 | size: 0x6C
.obj magic_common_event1, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte ground_magic_common_event1
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event1

# .data:0x2630 | 0x442C0 | size: 0x40
.obj magic_common_event2, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event2

# .data:0x2670 | 0x44300 | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0x26D8 | 0x44368 | size: 0x514
.obj attack_magic_event, local
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
	.4byte 0x00000020
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_00010054
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C87
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C87
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00010009
	.4byte 0x0000002D
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event

# .data:0x2BEC | 0x4487C | size: 0xB4
.obj attack_magic_event_sub_no_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C8A
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8E
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event_sub_no_hit

# .data:0x2CA0 | 0x44930 | size: 0x78
.obj attack_magic_event_sub_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8E
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000002D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event_sub_hit

# .data:0x2D18 | 0x449A8 | size: 0x230
.obj support_magic_event, local
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj support_magic_event

# .data:0x2F48 | 0x44BD8 | size: 0x1C
.obj dekadeka_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dekadeka_magic_event

# .data:0x2F64 | 0x44BF4 | size: 0x1C
.obj katikati_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj katikati_magic_event

# .data:0x2F80 | 0x44C10 | size: 0x1C
.obj biribiri_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj biribiri_magic_event

# .data:0x2F9C | 0x44C2C | size: 0x1C
.obj trans_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_magic_event

# .data:0x2FB8 | 0x44C48 | size: 0x238
.obj recover_magic_event, local
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000ff0c
	.4byte str_recovery_tou2_0001006c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj recover_magic_event

# .data:0x31F0 | 0x44E80 | size: 0x2D0
.obj all_recover_magic_event, local
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010004
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00010003
	.4byte 0x00000008
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
	.4byte 0x0001005E
	.4byte magic_common_event2
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000ff0c
	.4byte str_recovery_tou2_0001006c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_recover_magic_event

# .data:0x34C0 | 0x45150 | size: 0x280
.obj bunsin_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tou2_00010078
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte alpha_down_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte spawn_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte spawn_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte kamec_shuffle
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tou2_00010094
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunsin_magic_event

# .data:0x3740 | 0x453D0 | size: 0x108
.obj spawn_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_kamec
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte kamec_copy_status
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFE363C83
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C83
	.4byte regist_bunsin
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00004000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj spawn_event

# .data:0x3848 | 0x454D8 | size: 0xDC
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C84
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x3924 | 0x455B4 | size: 0x4
.obj gap_04_000455B4_data, global
.hidden gap_04_000455B4_data
	.4byte 0x00000000
.endobj gap_04_000455B4_data
