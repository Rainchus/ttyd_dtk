.include "macros.inc"
.file "unit_burst_wanwan.o"

# 0x00007D60..0x000084C8 | size: 0x768
.text
.balign 4

# .text:0x0 | 0x7D60 | size: 0x5EC
.fn chain_main, local
/* 00007D60 00007E24  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 00007D64 00007E28  7C 08 02 A6 */	mflr r0
/* 00007D68 00007E2C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 00007D6C 00007E30  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 00007D70 00007E34  F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 00007D74 00007E38  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 00007D78 00007E3C  F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 00007D7C 00007E40  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 00007D80 00007E44  F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 00007D84 00007E48  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 00007D88 00007E4C  F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 00007D8C 00007E50  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 00007D90 00007E54  F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 00007D94 00007E58  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 00007D98 00007E5C  F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 00007D9C 00007E60  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 00007DA0 00007E64  F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 00007DA4 00007E68  BF A1 00 44 */	stmw r29, 0x44(r1)
/* 00007DA8 00007E6C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00007DAC 00007E70  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007DB0 00007E74  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00007DB4 00007E78  7C 7E 1B 78 */	mr r30, r3
/* 00007DB8 00007E7C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00007DBC 00007E80  4B FF D2 59 */	bl evtGetValue
/* 00007DC0 00007E84  7C 60 1B 78 */	mr r0, r3
/* 00007DC4 00007E88  7F C3 F3 78 */	mr r3, r30
/* 00007DC8 00007E8C  7C 04 03 78 */	mr r4, r0
/* 00007DCC 00007E90  4B FF D2 49 */	bl BattleTransID
/* 00007DD0 00007E94  7C 7E 1B 78 */	mr r30, r3
/* 00007DD4 00007E98  7F A3 EB 78 */	mr r3, r29
/* 00007DD8 00007E9C  7F C4 F3 78 */	mr r4, r30
/* 00007DDC 00007EA0  4B FF D2 39 */	bl BattleGetUnitPtr
/* 00007DE0 00007EA4  28 03 00 00 */	cmplwi r3, 0x0
/* 00007DE4 00007EA8  40 82 00 0C */	bne .L_00007DF0
/* 00007DE8 00007EAC  38 60 00 00 */	li r3, 0x0
/* 00007DEC 00007EB0  48 00 05 14 */	b .L_00008300
.L_00007DF0:
/* 00007DF0 00007EB4  38 80 00 01 */	li r4, 0x1
/* 00007DF4 00007EB8  4B FF D2 21 */	bl BtlUnit_GetPartsPtr
/* 00007DF8 00007EBC  7F A3 EB 78 */	mr r3, r29
/* 00007DFC 00007EC0  7F C4 F3 78 */	mr r4, r30
/* 00007E00 00007EC4  4B FF D2 15 */	bl BattleGetUnitPtr
/* 00007E04 00007EC8  38 81 00 28 */	addi r4, r1, 0x28
/* 00007E08 00007ECC  7C 7F 1B 78 */	mr r31, r3
/* 00007E0C 00007ED0  38 A1 00 24 */	addi r5, r1, 0x24
/* 00007E10 00007ED4  38 C1 00 20 */	addi r6, r1, 0x20
/* 00007E14 00007ED8  4B FF D2 01 */	bl BtlUnit_GetPos
/* 00007E18 00007EDC  7F E3 FB 78 */	mr r3, r31
/* 00007E1C 00007EE0  38 80 00 09 */	li r4, 0x9
/* 00007E20 00007EE4  4B FF D1 F5 */	bl BtlUnit_GetPartsPtr
/* 00007E24 00007EE8  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00007E28 00007EEC  3C 00 43 30 */	lis r0, 0x4330
/* 00007E2C 00007EF0  3C 80 00 00 */	lis r4, double_to_int_tou2_00010840@ha
/* 00007E30 00007EF4  3C C0 00 00 */	lis r6, float_20_tou2_0001081c@ha
/* 00007E34 00007EF8  7C A5 07 74 */	extsb r5, r5
/* 00007E38 00007EFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 00007E3C 00007F00  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 00007E40 00007F04  C8 24 00 00 */	lfd f1, double_to_int_tou2_00010840@l(r4)
/* 00007E44 00007F08  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007E48 00007F0C  C0 86 00 00 */	lfs f4, float_20_tou2_0001081c@l(r6)
/* 00007E4C 00007F10  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 00007E50 00007F14  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00007E54 00007F18  EC 20 08 28 */	fsubs f1, f0, f1
/* 00007E58 00007F1C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 00007E5C 00007F20  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00007E60 00007F24  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00007E64 00007F28  4B FF D1 B1 */	bl BtlUnit_SetPartsPos
/* 00007E68 00007F2C  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 00007E6C 00007F30  2C 00 00 02 */	cmpwi r0, 0x2
/* 00007E70 00007F34  40 82 00 90 */	bne .L_00007F00
/* 00007E74 00007F38  7F E3 FB 78 */	mr r3, r31
/* 00007E78 00007F3C  38 80 00 09 */	li r4, 0x9
/* 00007E7C 00007F40  4B FF D1 99 */	bl BtlUnit_GetPartsPtr
/* 00007E80 00007F44  38 81 00 28 */	addi r4, r1, 0x28
/* 00007E84 00007F48  38 A1 00 24 */	addi r5, r1, 0x24
/* 00007E88 00007F4C  38 C1 00 20 */	addi r6, r1, 0x20
/* 00007E8C 00007F50  4B FF D1 89 */	bl BtlUnit_GetPartsPos
/* 00007E90 00007F54  3B A0 00 08 */	li r29, 0x8
.L_00007E94:
/* 00007E94 00007F58  7F E3 FB 78 */	mr r3, r31
/* 00007E98 00007F5C  7F A4 EB 78 */	mr r4, r29
/* 00007E9C 00007F60  4B FF D1 79 */	bl BtlUnit_GetPartsPtr
/* 00007EA0 00007F64  7C 7E 1B 78 */	mr r30, r3
/* 00007EA4 00007F68  38 81 00 10 */	addi r4, r1, 0x10
/* 00007EA8 00007F6C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00007EAC 00007F70  38 C1 00 08 */	addi r6, r1, 0x8
/* 00007EB0 00007F74  4B FF D1 65 */	bl BtlUnit_GetPartsPos
/* 00007EB4 00007F78  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00007EB8 00007F7C  3B BD FF FF */	subi r29, r29, 0x1
/* 00007EBC 00007F80  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 00007EC0 00007F84  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00007EC4 00007F88  EC 01 00 28 */	fsubs f0, f1, f0
/* 00007EC8 00007F8C  FC 00 00 1E */	fctiwz f0, f0
/* 00007ECC 00007F90  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 00007ED0 00007F94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007ED4 00007F98  90 1E 01 30 */	stw r0, 0x130(r30)
/* 00007ED8 00007F9C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00007EDC 00007FA0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 00007EE0 00007FA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 00007EE4 00007FA8  FC 00 00 1E */	fctiwz f0, f0
/* 00007EE8 00007FAC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 00007EEC 00007FB0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 00007EF0 00007FB4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 00007EF4 00007FB8  40 80 FF A0 */	bge .L_00007E94
/* 00007EF8 00007FBC  38 00 00 01 */	li r0, 0x1
/* 00007EFC 00007FC0  90 1F 02 20 */	stw r0, 0x220(r31)
.L_00007F00:
/* 00007F00 00007FC4  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 00007F04 00007FC8  2C 00 00 01 */	cmpwi r0, 0x1
/* 00007F08 00007FCC  40 82 00 98 */	bne .L_00007FA0
/* 00007F0C 00007FD0  7F E3 FB 78 */	mr r3, r31
/* 00007F10 00007FD4  38 80 00 09 */	li r4, 0x9
/* 00007F14 00007FD8  4B FF D1 01 */	bl BtlUnit_GetPartsPtr
/* 00007F18 00007FDC  38 81 00 28 */	addi r4, r1, 0x28
/* 00007F1C 00007FE0  38 A1 00 24 */	addi r5, r1, 0x24
/* 00007F20 00007FE4  38 C1 00 20 */	addi r6, r1, 0x20
/* 00007F24 00007FE8  4B FF D0 F1 */	bl BtlUnit_GetPartsPos
/* 00007F28 00007FEC  3C 60 00 00 */	lis r3, double_to_int_tou2_00010840@ha
/* 00007F2C 00007FF0  3B A0 00 08 */	li r29, 0x8
/* 00007F30 00007FF4  CB 83 00 00 */	lfd f28, double_to_int_tou2_00010840@l(r3)
/* 00007F34 00007FF8  3F C0 43 30 */	lis r30, 0x4330
.L_00007F38:
/* 00007F38 00007FFC  7F E3 FB 78 */	mr r3, r31
/* 00007F3C 00008000  7F A4 EB 78 */	mr r4, r29
/* 00007F40 00008004  4B FF D0 D5 */	bl BtlUnit_GetPartsPtr
/* 00007F44 00008008  80 83 01 30 */	lwz r4, 0x130(r3)
/* 00007F48 0000800C  80 03 01 34 */	lwz r0, 0x134(r3)
/* 00007F4C 00008010  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00007F50 00008014  93 C1 00 38 */	stw r30, 0x38(r1)
/* 00007F54 00008018  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00007F58 0000801C  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 00007F5C 00008020  90 81 00 3C */	stw r4, 0x3c(r1)
/* 00007F60 00008024  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00007F64 00008028  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 00007F68 0000802C  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007F6C 00008030  EC 20 E0 28 */	fsubs f1, f0, f28
/* 00007F70 00008034  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00007F74 00008038  93 C1 00 30 */	stw r30, 0x30(r1)
/* 00007F78 0000803C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 00007F7C 00008040  EC 24 08 2A */	fadds f1, f4, f1
/* 00007F80 00008044  EC 00 E0 28 */	fsubs f0, f0, f28
/* 00007F84 00008048  EC 42 00 2A */	fadds f2, f2, f0
/* 00007F88 0000804C  4B FF D0 8D */	bl BtlUnit_SetPartsPos
/* 00007F8C 00008050  3B BD FF FF */	subi r29, r29, 0x1
/* 00007F90 00008054  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00007F94 00008058  40 80 FF A4 */	bge .L_00007F38
/* 00007F98 0000805C  38 60 00 02 */	li r3, 0x2
/* 00007F9C 00008060  48 00 03 64 */	b .L_00008300
.L_00007FA0:
/* 00007FA0 00008064  7F E3 FB 78 */	mr r3, r31
/* 00007FA4 00008068  38 80 00 01 */	li r4, 0x1
/* 00007FA8 0000806C  4B FF D0 6D */	bl BtlUnit_GetPartsPtr
/* 00007FAC 00008070  38 81 00 1C */	addi r4, r1, 0x1c
/* 00007FB0 00008074  38 A1 00 18 */	addi r5, r1, 0x18
/* 00007FB4 00008078  38 C1 00 14 */	addi r6, r1, 0x14
/* 00007FB8 0000807C  4B FF D0 5D */	bl BtlUnit_GetPartsPos
/* 00007FBC 00008080  7F E3 FB 78 */	mr r3, r31
/* 00007FC0 00008084  38 80 00 09 */	li r4, 0x9
/* 00007FC4 00008088  4B FF D0 51 */	bl BtlUnit_GetPartsPtr
/* 00007FC8 0000808C  38 81 00 10 */	addi r4, r1, 0x10
/* 00007FCC 00008090  38 A1 00 0C */	addi r5, r1, 0xc
/* 00007FD0 00008094  38 C1 00 08 */	addi r6, r1, 0x8
/* 00007FD4 00008098  4B FF D0 41 */	bl BtlUnit_GetPartsPos
/* 00007FD8 0000809C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 00007FDC 000080A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00007FE0 000080A4  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 00007FE4 000080A8  EC 81 00 28 */	fsubs f4, f1, f0
/* 00007FE8 000080AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00007FEC 000080B0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 00007FF0 000080B4  EC 63 00 28 */	fsubs f3, f3, f0
/* 00007FF4 000080B8  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00007FF8 000080BC  EC 04 01 32 */	fmuls f0, f4, f4
/* 00007FFC 000080C0  EC 22 08 28 */	fsubs f1, f2, f1
/* 00008000 000080C4  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 00008004 000080C8  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 00008008 000080CC  4B FF D0 0D */	bl sqrt
/* 0000800C 000080D0  3C 80 00 00 */	lis r4, float_0p125_tou2_00010820@ha
/* 00008010 000080D4  FC 40 08 18 */	frsp f2, f1
/* 00008014 000080D8  C0 24 00 00 */	lfs f1, float_0p125_tou2_00010820@l(r4)
/* 00008018 000080DC  3C 60 00 00 */	lis r3, float_10_tou2_00010824@ha
/* 0000801C 000080E0  C0 03 00 00 */	lfs f0, float_10_tou2_00010824@l(r3)
/* 00008020 000080E4  EF E2 00 72 */	fmuls f31, f2, f1
/* 00008024 000080E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00008028 000080EC  40 80 00 08 */	bge .L_00008030
/* 0000802C 000080F0  FF E0 00 90 */	fmr f31, f0
.L_00008030:
/* 00008030 000080F4  3C 60 00 00 */	lis r3, float_300_tou2_00010828@ha
/* 00008034 000080F8  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 00008038 000080FC  38 83 00 00 */	addi r4, r3, float_300_tou2_00010828@l
/* 0000803C 00008100  7F E3 FB 78 */	mr r3, r31
/* 00008040 00008104  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00008044 00008108  38 80 00 01 */	li r4, 0x1
/* 00008048 0000810C  EF C1 00 24 */	fdivs f30, f1, f0
/* 0000804C 00008110  4B FF CF C9 */	bl BtlUnit_GetPartsPtr
/* 00008050 00008114  38 81 00 28 */	addi r4, r1, 0x28
/* 00008054 00008118  7C 7E 1B 78 */	mr r30, r3
/* 00008058 0000811C  38 A1 00 24 */	addi r5, r1, 0x24
/* 0000805C 00008120  38 C1 00 20 */	addi r6, r1, 0x20
/* 00008060 00008124  4B FF CF B5 */	bl BtlUnit_GetPartsPos
/* 00008064 00008128  3C 60 00 00 */	lis r3, float_110_tou2_0001082c@ha
/* 00008068 0000812C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 0000806C 00008130  C0 03 00 00 */	lfs f0, float_110_tou2_0001082c@l(r3)
/* 00008070 00008134  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00008074 00008138  40 81 00 08 */	ble .L_0000807C
/* 00008078 0000813C  D0 01 00 24 */	stfs f0, 0x24(r1)
.L_0000807C:
/* 0000807C 00008140  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 00008080 00008144  7F C3 F3 78 */	mr r3, r30
/* 00008084 00008148  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00008088 0000814C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 0000808C 00008150  4B FF CF 89 */	bl BtlUnit_SetPartsPos
/* 00008090 00008154  7F E3 FB 78 */	mr r3, r31
/* 00008094 00008158  38 80 00 01 */	li r4, 0x1
/* 00008098 0000815C  4B FF CF 7D */	bl BtlUnit_GetPartsPtr
/* 0000809C 00008160  38 81 00 28 */	addi r4, r1, 0x28
/* 000080A0 00008164  38 A1 00 24 */	addi r5, r1, 0x24
/* 000080A4 00008168  38 C1 00 20 */	addi r6, r1, 0x20
/* 000080A8 0000816C  4B FF CF 6D */	bl BtlUnit_GetPartsPos
/* 000080AC 00008170  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 000080B0 00008174  3C 00 43 30 */	lis r0, 0x4330
/* 000080B4 00008178  3C 80 00 00 */	lis r4, double_to_int_tou2_00010840@ha
/* 000080B8 0000817C  90 01 00 38 */	stw r0, 0x38(r1)
/* 000080BC 00008180  7C A5 07 74 */	extsb r5, r5
/* 000080C0 00008184  C8 44 00 00 */	lfd f2, double_to_int_tou2_00010840@l(r4)
/* 000080C4 00008188  54 A0 20 36 */	slwi r0, r5, 4
/* 000080C8 0000818C  3C 60 00 00 */	lis r3, float_16_tou2_00010830@ha
/* 000080CC 00008190  7C 00 00 D0 */	neg r0, r0
/* 000080D0 00008194  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 000080D4 00008198  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000080D8 0000819C  38 A3 00 00 */	addi r5, r3, float_16_tou2_00010830@l
/* 000080DC 000081A0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 000080E0 000081A4  7F E3 FB 78 */	mr r3, r31
/* 000080E4 000081A8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 000080E8 000081AC  38 80 00 02 */	li r4, 0x2
/* 000080EC 000081B0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 000080F0 000081B4  EC 40 10 28 */	fsubs f2, f0, f2
/* 000080F4 000081B8  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000080F8 000081BC  EC 01 00 2A */	fadds f0, f1, f0
/* 000080FC 000081C0  EC 23 10 2A */	fadds f1, f3, f2
/* 00008100 000081C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 00008104 000081C8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 00008108 000081CC  4B FF CF 0D */	bl BtlUnit_GetPartsPtr
/* 0000810C 000081D0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 00008110 000081D4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00008114 000081D8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00008118 000081DC  4B FF CE FD */	bl BtlUnit_SetPartsPos
/* 0000811C 000081E0  3C 80 00 00 */	lis r4, float_1_tou2_00010834@ha
/* 00008120 000081E4  3C 60 00 00 */	lis r3, zero_tou2_00010838@ha
/* 00008124 000081E8  C3 A4 00 00 */	lfs f29, float_1_tou2_00010834@l(r4)
/* 00008128 000081EC  3B A0 00 02 */	li r29, 0x2
/* 0000812C 000081F0  C3 83 00 00 */	lfs f28, zero_tou2_00010838@l(r3)
.L_00008130:
/* 00008130 000081F4  7F E3 FB 78 */	mr r3, r31
/* 00008134 000081F8  7F A4 EB 78 */	mr r4, r29
/* 00008138 000081FC  4B FF CE DD */	bl BtlUnit_GetPartsPtr
/* 0000813C 00008200  38 81 00 1C */	addi r4, r1, 0x1c
/* 00008140 00008204  38 A1 00 18 */	addi r5, r1, 0x18
/* 00008144 00008208  38 C1 00 14 */	addi r6, r1, 0x14
/* 00008148 0000820C  4B FF CE CD */	bl BtlUnit_GetPartsPos
/* 0000814C 00008210  7F E3 FB 78 */	mr r3, r31
/* 00008150 00008214  38 9D 00 01 */	addi r4, r29, 0x1
/* 00008154 00008218  4B FF CE C1 */	bl BtlUnit_GetPartsPtr
/* 00008158 0000821C  38 81 00 10 */	addi r4, r1, 0x10
/* 0000815C 00008220  7C 7E 1B 78 */	mr r30, r3
/* 00008160 00008224  38 A1 00 0C */	addi r5, r1, 0xc
/* 00008164 00008228  38 C1 00 08 */	addi r6, r1, 0x8
/* 00008168 0000822C  4B FF CE AD */	bl BtlUnit_GetPartsPos
/* 0000816C 00008230  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00008170 00008234  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 00008174 00008238  EC 81 F0 28 */	fsubs f4, f1, f30
/* 00008178 0000823C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 0000817C 00008240  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00008180 00008244  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 00008184 00008248  EF 40 20 28 */	fsubs f26, f0, f4
/* 00008188 0000824C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000818C 00008250  EF 63 10 28 */	fsubs f27, f3, f2
/* 00008190 00008254  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 00008194 00008258  EF 21 00 28 */	fsubs f25, f1, f0
/* 00008198 0000825C  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 0000819C 00008260  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 000081A0 00008264  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 000081A4 00008268  4B FF CE 71 */	bl sqrt
/* 000081A8 0000826C  FC 60 08 18 */	frsp f3, f1
/* 000081AC 00008270  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000081B0 00008274  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 000081B4 00008278  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000081B8 0000827C  EC 7F 18 24 */	fdivs f3, f31, f3
/* 000081BC 00008280  EC 7D 18 28 */	fsubs f3, f29, f3
/* 000081C0 00008284  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 000081C4 00008288  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 000081C8 0000828C  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 000081CC 00008290  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 000081D0 00008294  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 000081D4 00008298  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 000081D8 0000829C  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000081DC 000082A0  40 80 00 10 */	bge .L_000081EC
/* 000081E0 000082A4  3C 60 00 00 */	lis r3, zero_tou2_00010838@ha
/* 000081E4 000082A8  C0 03 00 00 */	lfs f0, zero_tou2_00010838@l(r3)
/* 000081E8 000082AC  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_000081EC:
/* 000081EC 000082B0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000081F0 000082B4  7F C3 F3 78 */	mr r3, r30
/* 000081F4 000082B8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000081F8 000082BC  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000081FC 000082C0  4B FF CE 19 */	bl BtlUnit_SetPartsPos
/* 00008200 000082C4  3B BD 00 01 */	addi r29, r29, 0x1
/* 00008204 000082C8  2C 1D 00 07 */	cmpwi r29, 0x7
/* 00008208 000082CC  40 81 FF 28 */	ble .L_00008130
/* 0000820C 000082D0  3C 80 00 00 */	lis r4, float_1_tou2_00010834@ha
/* 00008210 000082D4  3C 60 00 00 */	lis r3, zero_tou2_00010838@ha
/* 00008214 000082D8  C3 84 00 00 */	lfs f28, float_1_tou2_00010834@l(r4)
/* 00008218 000082DC  3B A0 00 09 */	li r29, 0x9
/* 0000821C 000082E0  C3 A3 00 00 */	lfs f29, zero_tou2_00010838@l(r3)
.L_00008220:
/* 00008220 000082E4  7F E3 FB 78 */	mr r3, r31
/* 00008224 000082E8  7F A4 EB 78 */	mr r4, r29
/* 00008228 000082EC  4B FF CD ED */	bl BtlUnit_GetPartsPtr
/* 0000822C 000082F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 00008230 000082F4  38 A1 00 18 */	addi r5, r1, 0x18
/* 00008234 000082F8  38 C1 00 14 */	addi r6, r1, 0x14
/* 00008238 000082FC  4B FF CD DD */	bl BtlUnit_GetPartsPos
/* 0000823C 00008300  7F E3 FB 78 */	mr r3, r31
/* 00008240 00008304  38 9D FF FF */	subi r4, r29, 0x1
/* 00008244 00008308  4B FF CD D1 */	bl BtlUnit_GetPartsPtr
/* 00008248 0000830C  38 81 00 10 */	addi r4, r1, 0x10
/* 0000824C 00008310  7C 7E 1B 78 */	mr r30, r3
/* 00008250 00008314  38 A1 00 0C */	addi r5, r1, 0xc
/* 00008254 00008318  38 C1 00 08 */	addi r6, r1, 0x8
/* 00008258 0000831C  4B FF CD BD */	bl BtlUnit_GetPartsPos
/* 0000825C 00008320  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00008260 00008324  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 00008264 00008328  EC 81 F0 28 */	fsubs f4, f1, f30
/* 00008268 0000832C  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 0000826C 00008330  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00008270 00008334  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 00008274 00008338  EF 40 20 28 */	fsubs f26, f0, f4
/* 00008278 0000833C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000827C 00008340  EF 63 10 28 */	fsubs f27, f3, f2
/* 00008280 00008344  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 00008284 00008348  EF 21 00 28 */	fsubs f25, f1, f0
/* 00008288 0000834C  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 0000828C 00008350  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 00008290 00008354  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 00008294 00008358  4B FF CD 81 */	bl sqrt
/* 00008298 0000835C  FC 60 08 18 */	frsp f3, f1
/* 0000829C 00008360  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000082A0 00008364  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 000082A4 00008368  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000082A8 0000836C  EC 7F 18 24 */	fdivs f3, f31, f3
/* 000082AC 00008370  EC 7C 18 28 */	fsubs f3, f28, f3
/* 000082B0 00008374  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 000082B4 00008378  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 000082B8 0000837C  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 000082BC 00008380  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 000082C0 00008384  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 000082C4 00008388  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 000082C8 0000838C  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000082CC 00008390  40 80 00 10 */	bge .L_000082DC
/* 000082D0 00008394  3C 60 00 00 */	lis r3, zero_tou2_00010838@ha
/* 000082D4 00008398  C0 03 00 00 */	lfs f0, zero_tou2_00010838@l(r3)
/* 000082D8 0000839C  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_000082DC:
/* 000082DC 000083A0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000082E0 000083A4  7F C3 F3 78 */	mr r3, r30
/* 000082E4 000083A8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000082E8 000083AC  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000082EC 000083B0  4B FF CD 29 */	bl BtlUnit_SetPartsPos
/* 000082F0 000083B4  3B BD FF FF */	subi r29, r29, 0x1
/* 000082F4 000083B8  2C 1D 00 03 */	cmpwi r29, 0x3
/* 000082F8 000083BC  40 80 FF 28 */	bge .L_00008220
/* 000082FC 000083C0  38 60 00 02 */	li r3, 0x2
.L_00008300:
/* 00008300 000083C4  E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 00008304 000083C8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 00008308 000083CC  E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 0000830C 000083D0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 00008310 000083D4  E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 00008314 000083D8  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 00008318 000083DC  E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 0000831C 000083E0  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 00008320 000083E4  E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 00008324 000083E8  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 00008328 000083EC  E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 0000832C 000083F0  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 00008330 000083F4  E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 00008334 000083F8  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 00008338 000083FC  BB A1 00 44 */	lmw r29, 0x44(r1)
/* 0000833C 00008400  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 00008340 00008404  7C 08 03 A6 */	mtlr r0
/* 00008344 00008408  38 21 00 C0 */	addi r1, r1, 0xc0
/* 00008348 0000840C  4E 80 00 20 */	blr
.endfn chain_main

# .text:0x5EC | 0x834C | size: 0x17C
.fn chain_init, local
/* 0000834C 00008410  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00008350 00008414  7C 08 02 A6 */	mflr r0
/* 00008354 00008418  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00008358 0000841C  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000835C 00008420  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 00008360 00008424  7C 7C 1B 78 */	mr r28, r3
/* 00008364 00008428  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00008368 0000842C  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 0000836C 00008430  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00008370 00008434  4B FF CC A5 */	bl evtGetValue
/* 00008374 00008438  7C 60 1B 78 */	mr r0, r3
/* 00008378 0000843C  7F 83 E3 78 */	mr r3, r28
/* 0000837C 00008440  7C 04 03 78 */	mr r4, r0
/* 00008380 00008444  4B FF CC 95 */	bl BattleTransID
/* 00008384 00008448  7C 64 1B 78 */	mr r4, r3
/* 00008388 0000844C  7F E3 FB 78 */	mr r3, r31
/* 0000838C 00008450  4B FF CC 89 */	bl BattleGetUnitPtr
/* 00008390 00008454  38 81 00 10 */	addi r4, r1, 0x10
/* 00008394 00008458  7C 7E 1B 78 */	mr r30, r3
/* 00008398 0000845C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000839C 00008460  38 C1 00 08 */	addi r6, r1, 0x8
/* 000083A0 00008464  4B FF CC 75 */	bl BtlUnit_GetPos
/* 000083A4 00008468  3C 60 00 00 */	lis r3, str_WAN_S_1B_tou2_00010848@ha
/* 000083A8 0000846C  3B 80 00 02 */	li r28, 0x2
/* 000083AC 00008470  3B E3 00 00 */	addi r31, r3, str_WAN_S_1B_tou2_00010848@l
.L_000083B0:
/* 000083B0 00008474  7F C3 F3 78 */	mr r3, r30
/* 000083B4 00008478  7F 84 E3 78 */	mr r4, r28
/* 000083B8 0000847C  4B FF CC 5D */	bl BtlUnit_GetPartsPtr
/* 000083BC 00008480  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000083C0 00008484  7C 7D 1B 78 */	mr r29, r3
/* 000083C4 00008488  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000083C8 0000848C  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000083CC 00008490  4B FF CC 49 */	bl BtlUnit_SetPartsPos
/* 000083D0 00008494  7F A3 EB 78 */	mr r3, r29
/* 000083D4 00008498  7F E4 FB 78 */	mr r4, r31
/* 000083D8 0000849C  4B FF CC 3D */	bl BtlUnit_SetAnim
/* 000083DC 000084A0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000083E0 000084A4  2C 1C 00 07 */	cmpwi r28, 0x7
/* 000083E4 000084A8  40 81 FF CC */	ble .L_000083B0
/* 000083E8 000084AC  7F C3 F3 78 */	mr r3, r30
/* 000083EC 000084B0  38 80 00 08 */	li r4, 0x8
/* 000083F0 000084B4  4B FF CC 25 */	bl BtlUnit_GetPartsPtr
/* 000083F4 000084B8  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 000083F8 000084BC  3C 00 43 30 */	lis r0, 0x4330
/* 000083FC 000084C0  3C A0 00 00 */	lis r5, double_to_int_tou2_00010840@ha
/* 00008400 000084C4  3C C0 00 00 */	lis r6, float_20_tou2_0001081c@ha
/* 00008404 000084C8  7C 84 07 74 */	extsb r4, r4
/* 00008408 000084CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000840C 000084D0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00008410 000084D4  C8 45 00 00 */	lfd f2, double_to_int_tou2_00010840@l(r5)
/* 00008414 000084D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00008418 000084DC  7C 7F 1B 78 */	mr r31, r3
/* 0000841C 000084E0  C0 86 00 00 */	lfs f4, float_20_tou2_0001081c@l(r6)
/* 00008420 000084E4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00008424 000084E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00008428 000084EC  EC 21 10 28 */	fsubs f1, f1, f2
/* 0000842C 000084F0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00008430 000084F4  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00008434 000084F8  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00008438 000084FC  4B FF CB DD */	bl BtlUnit_SetPartsPos
/* 0000843C 00008500  3C 80 00 00 */	lis r4, str_WAN_S_1B_tou2_00010848@ha
/* 00008440 00008504  7F E3 FB 78 */	mr r3, r31
/* 00008444 00008508  38 84 00 00 */	addi r4, r4, str_WAN_S_1B_tou2_00010848@l
/* 00008448 0000850C  4B FF CB CD */	bl BtlUnit_SetAnim
/* 0000844C 00008510  7F C3 F3 78 */	mr r3, r30
/* 00008450 00008514  38 80 00 09 */	li r4, 0x9
/* 00008454 00008518  4B FF CB C1 */	bl BtlUnit_GetPartsPtr
/* 00008458 0000851C  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 0000845C 00008520  3C 00 43 30 */	lis r0, 0x4330
/* 00008460 00008524  3C A0 00 00 */	lis r5, double_to_int_tou2_00010840@ha
/* 00008464 00008528  3C C0 00 00 */	lis r6, float_20_tou2_0001081c@ha
/* 00008468 0000852C  7C 84 07 74 */	extsb r4, r4
/* 0000846C 00008530  90 01 00 20 */	stw r0, 0x20(r1)
/* 00008470 00008534  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00008474 00008538  C8 45 00 00 */	lfd f2, double_to_int_tou2_00010840@l(r5)
/* 00008478 0000853C  90 81 00 24 */	stw r4, 0x24(r1)
/* 0000847C 00008540  7C 7F 1B 78 */	mr r31, r3
/* 00008480 00008544  C0 86 00 00 */	lfs f4, float_20_tou2_0001081c@l(r6)
/* 00008484 00008548  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 00008488 0000854C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000848C 00008550  EC 21 10 28 */	fsubs f1, f1, f2
/* 00008490 00008554  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00008494 00008558  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00008498 0000855C  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 0000849C 00008560  4B FF CB 79 */	bl BtlUnit_SetPartsPos
/* 000084A0 00008564  3C 80 00 00 */	lis r4, str_WAN_Z_2_tou2_00010854@ha
/* 000084A4 00008568  7F E3 FB 78 */	mr r3, r31
/* 000084A8 0000856C  38 84 00 00 */	addi r4, r4, str_WAN_Z_2_tou2_00010854@l
/* 000084AC 00008570  4B FF CB 69 */	bl BtlUnit_SetAnim
/* 000084B0 00008574  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 000084B4 00008578  38 60 00 02 */	li r3, 0x2
/* 000084B8 0000857C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000084BC 00008580  7C 08 03 A6 */	mtlr r0
/* 000084C0 00008584  38 21 00 40 */	addi r1, r1, 0x40
/* 000084C4 00008588  4E 80 00 20 */	blr
.endfn chain_init

# 0x00006F28..0x00007120 | size: 0x1F8
.rodata
.balign 8

# .rodata:0x0 | 0x6F28 | size: 0x14
.obj str_btl_un_burst_wanwan_tou2_00010668, local
	.string "btl_un_burst_wanwan"
.endobj str_btl_un_burst_wanwan_tou2_00010668

# .rodata:0x14 | 0x6F3C | size: 0x15
.obj str_SFX_ENM_WAN_DAMAGED1_tou2_0001067c, local
	.string "SFX_ENM_WAN_DAMAGED1"
.endobj str_SFX_ENM_WAN_DAMAGED1_tou2_0001067c

# .rodata:0x29 | 0x6F51 | size: 0x3
.obj gap_03_00006F51_rodata, global
.hidden gap_03_00006F51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F51_rodata

# .rodata:0x2C | 0x6F54 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010694, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010694

# .rodata:0x41 | 0x6F69 | size: 0x3
.obj gap_03_00006F69_rodata, global
.hidden gap_03_00006F69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F69_rodata

# .rodata:0x44 | 0x6F6C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_000106ac, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_000106ac

# .rodata:0x58 | 0x6F80 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_000106c0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_000106c0

# .rodata:0x71 | 0x6F99 | size: 0x3
.obj gap_03_00006F99_rodata, global
.hidden gap_03_00006F99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F99_rodata

# .rodata:0x74 | 0x6F9C | size: 0x8
.obj str_WAN_N_1_tou2_000106dc, local
	.string "WAN_N_1"
.endobj str_WAN_N_1_tou2_000106dc

# .rodata:0x7C | 0x6FA4 | size: 0x8
.obj str_WAN_Y_1_tou2_000106e4, local
	.string "WAN_Y_1"
.endobj str_WAN_Y_1_tou2_000106e4

# .rodata:0x84 | 0x6FAC | size: 0x8
.obj str_WAN_K_1_tou2_000106ec, local
	.string "WAN_K_1"
.endobj str_WAN_K_1_tou2_000106ec

# .rodata:0x8C | 0x6FB4 | size: 0x8
.obj str_WAN_X_1_tou2_000106f4, local
	.string "WAN_X_1"
.endobj str_WAN_X_1_tou2_000106f4

# .rodata:0x94 | 0x6FBC | size: 0x8
.obj str_WAN_Z_1_tou2_000106fc, local
	.string "WAN_Z_1"
.endobj str_WAN_Z_1_tou2_000106fc

# .rodata:0x9C | 0x6FC4 | size: 0x9
.obj str_WAN_S_1A_tou2_00010704, local
	.string "WAN_S_1A"
.endobj str_WAN_S_1A_tou2_00010704

# .rodata:0xA5 | 0x6FCD | size: 0x3
.obj gap_03_00006FCD_rodata, global
.hidden gap_03_00006FCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006FCD_rodata

# .rodata:0xA8 | 0x6FD0 | size: 0x8
.obj str_WAN_D_1_tou2_00010710, local
	.string "WAN_D_1"
.endobj str_WAN_D_1_tou2_00010710

# .rodata:0xB0 | 0x6FD8 | size: 0x8
.obj str_WAN_A_1_tou2_00010718, local
	.string "WAN_A_1"
.endobj str_WAN_A_1_tou2_00010718

# .rodata:0xB8 | 0x6FE0 | size: 0x8
.obj str_WAN_R_1_tou2_00010720, local
	.string "WAN_R_1"
.endobj str_WAN_R_1_tou2_00010720

# .rodata:0xC0 | 0x6FE8 | size: 0x8
.obj str_WAN_W_1_tou2_00010728, local
	.string "WAN_W_1"
.endobj str_WAN_W_1_tou2_00010728

# .rodata:0xC8 | 0x6FF0 | size: 0xB
.obj str_c_wanwan_a_tou2_00010730, local
	.string "c_wanwan_a"
.endobj str_c_wanwan_a_tou2_00010730

# .rodata:0xD3 | 0x6FFB | size: 0x1
.obj gap_03_00006FFB_rodata, global
.hidden gap_03_00006FFB_rodata
	.byte 0x00
.endobj gap_03_00006FFB_rodata

# .rodata:0xD4 | 0x6FFC | size: 0x2
.obj str_0_tou2_0001073c, local
	.string "0"
.endobj str_0_tou2_0001073c

# .rodata:0xD6 | 0x6FFE | size: 0x2
.obj gap_03_00006FFE_rodata, global
.hidden gap_03_00006FFE_rodata
	.2byte 0x0000
.endobj gap_03_00006FFE_rodata

# .rodata:0xD8 | 0x7000 | size: 0x15
.obj str_SFX_ENM_WAN_LANDING1_tou2_00010740, local
	.string "SFX_ENM_WAN_LANDING1"
.endobj str_SFX_ENM_WAN_LANDING1_tou2_00010740

# .rodata:0xED | 0x7015 | size: 0x3
.obj gap_03_00007015_rodata, global
.hidden gap_03_00007015_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007015_rodata

# .rodata:0xF0 | 0x7018 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tou2_00010758, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tou2_00010758

# .rodata:0x105 | 0x702D | size: 0x3
.obj gap_03_0000702D_rodata, global
.hidden gap_03_0000702D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000702D_rodata

# .rodata:0x108 | 0x7030 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tou2_00010770, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tou2_00010770

# .rodata:0x11D | 0x7045 | size: 0x3
.obj gap_03_00007045_rodata, global
.hidden gap_03_00007045_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007045_rodata

# .rodata:0x120 | 0x7048 | size: 0xC
.obj str_kemuri_test_tou2_00010788, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_00010788

# .rodata:0x12C | 0x7054 | size: 0x1
.obj zero_tou2_00010794, local
	.byte 0x00
.endobj zero_tou2_00010794

# .rodata:0x12D | 0x7055 | size: 0x3
.obj gap_03_00007055_rodata, global
.hidden gap_03_00007055_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007055_rodata

# .rodata:0x130 | 0x7058 | size: 0xB
.obj str_star_point_tou2_00010798, local
	.string "star_point"
.endobj str_star_point_tou2_00010798

# .rodata:0x13B | 0x7063 | size: 0x1
.obj gap_03_00007063_rodata, global
.hidden gap_03_00007063_rodata
	.byte 0x00
.endobj gap_03_00007063_rodata

# .rodata:0x13C | 0x7064 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT1_tou2_000107a4, local
	.string "SFX_ENM_WAN_WAIT1"
.endobj str_SFX_ENM_WAN_WAIT1_tou2_000107a4

# .rodata:0x14E | 0x7076 | size: 0x2
.obj gap_03_00007076_rodata, global
.hidden gap_03_00007076_rodata
	.2byte 0x0000
.endobj gap_03_00007076_rodata

# .rodata:0x150 | 0x7078 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT3_tou2_000107b8, local
	.string "SFX_ENM_WAN_WAIT3"
.endobj str_SFX_ENM_WAN_WAIT3_tou2_000107b8

# .rodata:0x162 | 0x708A | size: 0x2
.obj gap_03_0000708A_rodata, global
.hidden gap_03_0000708A_rodata
	.2byte 0x0000
.endobj gap_03_0000708A_rodata

# .rodata:0x164 | 0x708C | size: 0x12
.obj str_SFX_ENM_WAN_WAIT2_tou2_000107cc, local
	.string "SFX_ENM_WAN_WAIT2"
.endobj str_SFX_ENM_WAN_WAIT2_tou2_000107cc

# .rodata:0x176 | 0x709E | size: 0x2
.obj gap_03_0000709E_rodata, global
.hidden gap_03_0000709E_rodata
	.2byte 0x0000
.endobj gap_03_0000709E_rodata

# .rodata:0x178 | 0x70A0 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK1_tou2_000107e0, local
	.string "SFX_ENM_WAN_ATTACK1"
.endobj str_SFX_ENM_WAN_ATTACK1_tou2_000107e0

# .rodata:0x18C | 0x70B4 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK2_tou2_000107f4, local
	.string "SFX_ENM_WAN_ATTACK2"
.endobj str_SFX_ENM_WAN_ATTACK2_tou2_000107f4

# .rodata:0x1A0 | 0x70C8 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT4_tou2_00010808, local
	.string "SFX_ENM_WAN_WAIT4"
.endobj str_SFX_ENM_WAN_WAIT4_tou2_00010808
	.2byte 0x0000

# .rodata:0x1B4 | 0x70DC | size: 0x4
.obj float_20_tou2_0001081c, local
	.float 20
.endobj float_20_tou2_0001081c

# .rodata:0x1B8 | 0x70E0 | size: 0x4
.obj float_0p125_tou2_00010820, local
	.float 0.125
.endobj float_0p125_tou2_00010820

# .rodata:0x1BC | 0x70E4 | size: 0x4
.obj float_10_tou2_00010824, local
	.float 10
.endobj float_10_tou2_00010824

# .rodata:0x1C0 | 0x70E8 | size: 0x4
.obj float_300_tou2_00010828, local
	.float 300
.endobj float_300_tou2_00010828

# .rodata:0x1C4 | 0x70EC | size: 0x4
.obj float_110_tou2_0001082c, local
	.float 110
.endobj float_110_tou2_0001082c

# .rodata:0x1C8 | 0x70F0 | size: 0x4
.obj float_16_tou2_00010830, local
	.float 16
.endobj float_16_tou2_00010830

# .rodata:0x1CC | 0x70F4 | size: 0x4
.obj float_1_tou2_00010834, local
	.float 1
.endobj float_1_tou2_00010834

# .rodata:0x1D0 | 0x70F8 | size: 0x4
.obj zero_tou2_00010838, local
	.float 0
.endobj zero_tou2_00010838
	.4byte 0x00000000

# .rodata:0x1D8 | 0x7100 | size: 0x8
.obj double_to_int_tou2_00010840, local
	.double 4503601774854144
.endobj double_to_int_tou2_00010840

# .rodata:0x1E0 | 0x7108 | size: 0x9
.obj str_WAN_S_1B_tou2_00010848, local
	.string "WAN_S_1B"
.endobj str_WAN_S_1B_tou2_00010848

# .rodata:0x1E9 | 0x7111 | size: 0x3
.obj gap_03_00007111_rodata, global
.hidden gap_03_00007111_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007111_rodata

# .rodata:0x1EC | 0x7114 | size: 0x8
.obj str_WAN_Z_2_tou2_00010854, local
	.string "WAN_Z_2"
.endobj str_WAN_Z_2_tou2_00010854

# .rodata:0x1F4 | 0x711C | size: 0x4
.obj gap_03_0000711C_rodata, global
.hidden gap_03_0000711C_rodata
	.4byte 0x00000000
.endobj gap_03_0000711C_rodata

# 0x0004B430..0x0004CF08 | size: 0x1AD8
.data
.balign 8

# .data:0x0 | 0x4B430 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4B438 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4B43C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4B440 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4B444 | size: 0x4
.obj gap_04_0004B444_data, global
.hidden gap_04_0004B444_data
	.4byte 0x00000000
.endobj gap_04_0004B444_data

# .data:0x18 | 0x4B448 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4B450 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4B454 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4B458 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4B460 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4B464 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4B468 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4B46C | size: 0x4
.obj gap_04_0004B46C_data, global
.hidden gap_04_0004B46C_data
	.4byte 0x00000000
.endobj gap_04_0004B46C_data

# .data:0x40 | 0x4B470 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4B478 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4B47C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4B480 | size: 0xC4
.obj unit_burst_wanwan_26_data_4B480, global
	.4byte 0x0000003B
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte 0x00060000
	.4byte 0x01011800
	.4byte 0x01460332
	.4byte 0x270F0022
	.4byte 0x00240006
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x42080000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_WAN_DAMAGED1_tou2_0001067c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_00010694
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_000106ac
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_000106c0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x09000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_burst_wanwan_26_data_4B480

# .data:0x114 | 0x4B544 | size: 0x5
.obj defence, local
	.4byte 0x03636303
	.byte 0x03
.endobj defence

# .data:0x119 | 0x4B549 | size: 0x3
.obj gap_04_0004B549_data, global
.hidden gap_04_0004B549_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004B549_data

# .data:0x11C | 0x4B54C | size: 0x5
.obj defence_attr, local
	.4byte 0x00020200
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x4B551 | size: 0x3
.obj gap_04_0004B551_data, global
.hidden gap_04_0004B551_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004B551_data

# .data:0x124 | 0x4B554 | size: 0x16
.obj regist, local
	.4byte 0x00464164
	.4byte 0x41640046
	.4byte 0x645A645A
	.4byte 0x645F412D
	.4byte 0x1E644164
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x4B56A | size: 0x2
.obj gap_04_0004B56A_data, global
.hidden gap_04_0004B56A_data
	.2byte 0x0000
.endobj gap_04_0004B56A_data

# .data:0x13C | 0x4B56C | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_WAN_N_1_tou2_000106dc
	.4byte 0x00000002
	.4byte str_WAN_Y_1_tou2_000106e4
	.4byte 0x00000009
	.4byte str_WAN_Y_1_tou2_000106e4
	.4byte 0x00000005
	.4byte str_WAN_K_1_tou2_000106ec
	.4byte 0x00000004
	.4byte str_WAN_X_1_tou2_000106f4
	.4byte 0x00000003
	.4byte str_WAN_X_1_tou2_000106f4
	.4byte 0x0000001B
	.4byte str_WAN_Z_1_tou2_000106fc
	.4byte 0x0000001C
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x0000001D
	.4byte str_WAN_D_1_tou2_00010710
	.4byte 0x0000001E
	.4byte str_WAN_D_1_tou2_00010710
	.4byte 0x0000001F
	.4byte str_WAN_A_1_tou2_00010718
	.4byte 0x00000027
	.4byte str_WAN_D_1_tou2_00010710
	.4byte 0x00000032
	.4byte str_WAN_A_1_tou2_00010718
	.4byte 0x0000002A
	.4byte str_WAN_R_1_tou2_00010720
	.4byte 0x00000028
	.4byte str_WAN_W_1_tou2_00010728
	.4byte 0x00000038
	.4byte str_WAN_X_1_tou2_000106f4
	.4byte 0x00000039
	.4byte str_WAN_X_1_tou2_000106f4
	.4byte 0x00000041
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x00000045
	.4byte str_WAN_S_1A_tou2_00010704
.endobj pose_table

# .data:0x1D4 | 0x4B604 | size: 0x78
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x0000001A
	.4byte counter_damage_event
	.4byte 0x00000019
	.4byte counter_damage_event
	.4byte 0x0000001B
	.4byte counter_damage_event
	.4byte 0x0000001C
	.4byte counter_damage_event
	.4byte 0x0000001D
	.4byte counter_damage_event
	.4byte 0x0000001E
	.4byte counter_damage_event
	.4byte 0x0000001F
	.4byte counter_damage_event
	.4byte 0x00000020
	.4byte counter_damage_event
	.4byte 0x00000021
	.4byte counter_damage_event
	.4byte 0x00000022
	.4byte counter_damage_event
	.4byte 0x00000023
	.4byte counter_damage_event
	.4byte 0x00000024
	.4byte counter_damage_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x24C | 0x4B67C | size: 0x2AC
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x10000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000006
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000007
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000008
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000009
	.4byte str_btl_un_burst_wanwan_tou2_00010668
	.4byte str_c_wanwan_a_tou2_00010730
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x4F8 | 0x4B928 | size: 0xC0
.obj weapon_wanwan_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
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
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000072
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
.endobj weapon_wanwan_attack

# .data:0x5B8 | 0x4B9E8 | size: 0xA4
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte chain_init
	.4byte 0xFFFFFFFE
	.4byte 0x0001005C
	.4byte chain_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_0_tou2_0001073c
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000007F
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x65C | 0x4BA8C | size: 0x5C
.obj chain_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte chain_main
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chain_event

# .data:0x6B8 | 0x4BAE8 | size: 0x84
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
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x73C | 0x4BB6C | size: 0x110
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_PartsFaceDirectionSub
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0x84C | 0x4BC7C | size: 0x320
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tou2_00010758
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_00010770
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
	.4byte str_kemuri_test_tou2_00010788
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
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_00010794
	.4byte str_star_point_tou2_00010798
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
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
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
.endobj dead_event

# .data:0xB6C | 0x4BF9C | size: 0x710
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
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
	.4byte weapon_wanwan_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_wanwan_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000007F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_wanwan_attack
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
	.4byte weapon_wanwan_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_ChangePartsFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
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
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_tou2_00010718
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7D4C
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_tou2_000107a4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_tou2_000107b8
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_tou2_000107cc
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK1_tou2_000107e0
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_tou2_00010718
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK2_tou2_000107f4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24ABA80
	.4byte 0xF24A7A80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_wanwan_attack
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_tou2_000107a4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7A80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
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
	.4byte weapon_wanwan_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_wanwan_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_tou2_000107a4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_ChangePartsFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x127C | 0x4C6AC | size: 0x770
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_N_1_tou2_000106dc
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8F
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_Y_1_tou2_000106e4
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C8D
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C8F
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte wait_sound_event1
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte wait_sound_event1
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_tou2_00010718
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_tou2_00010718
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_tou2_00010704
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_tou2_00010740
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x19EC | 0x4CE1C | size: 0x58
.obj sound_gensui_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24A7D4C
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sound_gensui_event

# .data:0x1A44 | 0x4CE74 | size: 0x64
.obj wait_sound_event1, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_tou2_000107a4
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_tou2_000107b8
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_tou2_000107cc
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_sound_event1

# .data:0x1AA8 | 0x4CED8 | size: 0x30
.obj wait_sound_event2, local
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT4_tou2_00010808
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_sound_event2
