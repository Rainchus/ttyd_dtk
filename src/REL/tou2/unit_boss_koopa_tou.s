.include "macros.inc"
.file "unit_boss_koopa_tou.o"

# 0x00008C04..0x000090FC | size: 0x4F8
.text
.balign 4

# .text:0x0 | 0x8C04 | size: 0x3C
.fn _disp_icon, local
/* 00008C04 00008CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008C08 00008CCC  7C 08 02 A6 */	mflr r0
/* 00008C0C 00008CD0  3C 60 00 00 */	lis r3, float_1_tou2_00011168@ha
/* 00008C10 00008CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00008C14 00008CD8  C0 23 00 00 */	lfs f1, float_1_tou2_00011168@l(r3)
/* 00008C18 00008CDC  80 A4 00 78 */	lwz r5, 0x78(r4)
/* 00008C1C 00008CE0  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 00008C20 00008CE4  38 80 00 00 */	li r4, 0x0
/* 00008C24 00008CE8  38 65 00 0C */	addi r3, r5, 0xc
/* 00008C28 00008CEC  54 05 04 3E */	clrlwi r5, r0, 16
/* 00008C2C 00008CF0  4B FF C3 E9 */	bl iconDispGx
/* 00008C30 00008CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008C34 00008CF8  7C 08 03 A6 */	mtlr r0
/* 00008C38 00008CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 00008C3C 00008D00  4E 80 00 20 */	blr
.endfn _disp_icon

# .text:0x3C | 0x8C40 | size: 0x31C
.fn _icon_jump_icon, local
/* 00008C40 00008D04  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 00008C44 00008D08  7C 08 02 A6 */	mflr r0
/* 00008C48 00008D0C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 00008C4C 00008D10  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 00008C50 00008D14  F3 E1 00 A8 */	psq_st f31, 0xa8(r1), 0, qr0
/* 00008C54 00008D18  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 00008C58 00008D1C  F3 C1 00 98 */	psq_st f30, 0x98(r1), 0, qr0
/* 00008C5C 00008D20  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 00008C60 00008D24  F3 A1 00 88 */	psq_st f29, 0x88(r1), 0, qr0
/* 00008C64 00008D28  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 00008C68 00008D2C  F3 81 00 78 */	psq_st f28, 0x78(r1), 0, qr0
/* 00008C6C 00008D30  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 00008C70 00008D34  F3 61 00 68 */	psq_st f27, 0x68(r1), 0, qr0
/* 00008C74 00008D38  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 00008C78 00008D3C  F3 41 00 58 */	psq_st f26, 0x58(r1), 0, qr0
/* 00008C7C 00008D40  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 00008C80 00008D44  F3 21 00 48 */	psq_st f25, 0x48(r1), 0, qr0
/* 00008C84 00008D48  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 00008C88 00008D4C  7C 7D 1B 78 */	mr r29, r3
/* 00008C8C 00008D50  7C 9E 23 78 */	mr r30, r4
/* 00008C90 00008D54  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00008C94 00008D58  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00008C98 00008D5C  4B FF C3 7D */	bl evtGetValue
/* 00008C9C 00008D60  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00008CA0 00008D64  7C 7F 1B 78 */	mr r31, r3
/* 00008CA4 00008D68  7F A3 EB 78 */	mr r3, r29
/* 00008CA8 00008D6C  4B FF C3 6D */	bl evtGetFloat
/* 00008CAC 00008D70  FF 20 08 90 */	fmr f25, f1
/* 00008CB0 00008D74  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00008CB4 00008D78  7F A3 EB 78 */	mr r3, r29
/* 00008CB8 00008D7C  4B FF C3 5D */	bl evtGetFloat
/* 00008CBC 00008D80  FF 40 08 90 */	fmr f26, f1
/* 00008CC0 00008D84  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00008CC4 00008D88  7F A3 EB 78 */	mr r3, r29
/* 00008CC8 00008D8C  4B FF C3 4D */	bl evtGetFloat
/* 00008CCC 00008D90  FF 60 08 90 */	fmr f27, f1
/* 00008CD0 00008D94  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 00008CD4 00008D98  7F A3 EB 78 */	mr r3, r29
/* 00008CD8 00008D9C  4B FF C3 3D */	bl evtGetFloat
/* 00008CDC 00008DA0  FF 80 08 90 */	fmr f28, f1
/* 00008CE0 00008DA4  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 00008CE4 00008DA8  7F A3 EB 78 */	mr r3, r29
/* 00008CE8 00008DAC  4B FF C3 2D */	bl evtGetFloat
/* 00008CEC 00008DB0  FF A0 08 90 */	fmr f29, f1
/* 00008CF0 00008DB4  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 00008CF4 00008DB8  7F A3 EB 78 */	mr r3, r29
/* 00008CF8 00008DBC  4B FF C3 1D */	bl evtGetFloat
/* 00008CFC 00008DC0  FF C0 08 90 */	fmr f30, f1
/* 00008D00 00008DC4  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 00008D04 00008DC8  7F A3 EB 78 */	mr r3, r29
/* 00008D08 00008DCC  4B FF C3 0D */	bl evtGetFloat
/* 00008D0C 00008DD0  FF E0 08 90 */	fmr f31, f1
/* 00008D10 00008DD4  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 00008D14 00008DD8  7F A3 EB 78 */	mr r3, r29
/* 00008D18 00008DDC  4B FF C2 FD */	bl evtGetValue
/* 00008D1C 00008DE0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00008D20 00008DE4  7C 7C 1B 78 */	mr r28, r3
/* 00008D24 00008DE8  41 82 01 00 */	beq .L_00008E24
/* 00008D28 00008DEC  38 60 00 7C */	li r3, 0x7c
/* 00008D2C 00008DF0  4B FF C2 E9 */	bl BattleAlloc
/* 00008D30 00008DF4  90 7D 00 78 */	stw r3, 0x78(r29)
/* 00008D34 00008DF8  3C 00 43 30 */	lis r0, 0x4330
/* 00008D38 00008DFC  3C 80 00 00 */	lis r4, double_to_int_tou2_00011178@ha
/* 00008D3C 00008E00  3C 60 00 00 */	lis r3, float_0p5_tou2_0001116c@ha
/* 00008D40 00008E04  83 DD 00 78 */	lwz r30, 0x78(r29)
/* 00008D44 00008E08  D3 21 00 08 */	stfs f25, 0x8(r1)
/* 00008D48 00008E0C  C8 84 00 00 */	lfd f4, double_to_int_tou2_00011178@l(r4)
/* 00008D4C 00008E10  D3 9E 00 18 */	stfs f28, 0x18(r30)
/* 00008D50 00008E14  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00008D54 00008E18  D3 BE 00 1C */	stfs f29, 0x1c(r30)
/* 00008D58 00008E1C  C0 63 00 00 */	lfs f3, float_0p5_tou2_0001116c@l(r3)
/* 00008D5C 00008E20  D3 DE 00 20 */	stfs f30, 0x20(r30)
/* 00008D60 00008E24  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 00008D64 00008E28  D3 61 00 10 */	stfs f27, 0x10(r1)
/* 00008D68 00008E2C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 00008D6C 00008E30  90 BE 00 0C */	stw r5, 0xc(r30)
/* 00008D70 00008E34  80 61 00 10 */	lwz r3, 0x10(r1)
/* 00008D74 00008E38  90 9E 00 10 */	stw r4, 0x10(r30)
/* 00008D78 00008E3C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 00008D7C 00008E40  90 BE 00 00 */	stw r5, 0x0(r30)
/* 00008D80 00008E44  90 9E 00 04 */	stw r4, 0x4(r30)
/* 00008D84 00008E48  90 7E 00 08 */	stw r3, 0x8(r30)
/* 00008D88 00008E4C  D3 FE 00 2C */	stfs f31, 0x2c(r30)
/* 00008D8C 00008E50  93 9E 00 24 */	stw r28, 0x24(r30)
/* 00008D90 00008E54  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 00008D94 00008E58  90 01 00 20 */	stw r0, 0x20(r1)
/* 00008D98 00008E5C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00008D9C 00008E60  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 00008DA0 00008E64  90 61 00 24 */	stw r3, 0x24(r1)
/* 00008DA4 00008E68  C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 00008DA8 00008E6C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00008DAC 00008E70  EC 22 08 28 */	fsubs f1, f2, f1
/* 00008DB0 00008E74  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00008DB4 00008E78  EC 00 20 28 */	fsubs f0, f0, f4
/* 00008DB8 00008E7C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 00008DBC 00008E80  90 01 00 18 */	stw r0, 0x18(r1)
/* 00008DC0 00008E84  EC 01 00 24 */	fdivs f0, f1, f0
/* 00008DC4 00008E88  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00008DC8 00008E8C  EC 21 20 28 */	fsubs f1, f1, f4
/* 00008DCC 00008E90  EC 22 00 72 */	fmuls f1, f2, f1
/* 00008DD0 00008E94  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 00008DD4 00008E98  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 00008DD8 00008E9C  C0 3E 00 00 */	lfs f1, 0x0(r30)
/* 00008DDC 00008EA0  C0 5E 00 08 */	lfs f2, 0x8(r30)
/* 00008DE0 00008EA4  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 00008DE4 00008EA8  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 00008DE8 00008EAC  4B FF C2 2D */	bl distABf
/* 00008DEC 00008EB0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 00008DF0 00008EB4  3C 00 43 30 */	lis r0, 0x4330
/* 00008DF4 00008EB8  90 01 00 28 */	stw r0, 0x28(r1)
/* 00008DF8 00008EBC  3C 80 00 00 */	lis r4, double_to_int_tou2_00011178@ha
/* 00008DFC 00008EC0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00008E00 00008EC4  C8 44 00 00 */	lfd f2, double_to_int_tou2_00011178@l(r4)
/* 00008E04 00008EC8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 00008E08 00008ECC  38 00 00 00 */	li r0, 0x0
/* 00008E0C 00008ED0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 00008E10 00008ED4  EC 00 10 28 */	fsubs f0, f0, f2
/* 00008E14 00008ED8  EC 01 00 24 */	fdivs f0, f1, f0
/* 00008E18 00008EDC  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 00008E1C 00008EE0  93 FD 00 7C */	stw r31, 0x7c(r29)
/* 00008E20 00008EE4  90 1D 00 80 */	stw r0, 0x80(r29)
.L_00008E24:
/* 00008E24 00008EE8  80 1D 00 80 */	lwz r0, 0x80(r29)
/* 00008E28 00008EEC  83 9D 00 78 */	lwz r28, 0x78(r29)
/* 00008E2C 00008EF0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00008E30 00008EF4  41 82 00 14 */	beq .L_00008E44
/* 00008E34 00008EF8  7F 83 E3 78 */	mr r3, r28
/* 00008E38 00008EFC  4B FF C1 DD */	bl BattleFree
/* 00008E3C 00008F00  38 60 00 02 */	li r3, 0x2
/* 00008E40 00008F04  48 00 00 D0 */	b .L_00008F10
.L_00008E44:
/* 00008E44 00008F08  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 00008E48 00008F0C  3C 60 00 00 */	lis r3, zero_tou2_00011170@ha
/* 00008E4C 00008F10  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 00008E50 00008F14  C0 03 00 00 */	lfs f0, zero_tou2_00011170@l(r3)
/* 00008E54 00008F18  EC 22 08 2A */	fadds f1, f2, f1
/* 00008E58 00008F1C  D0 3C 00 10 */	stfs f1, 0x10(r28)
/* 00008E5C 00008F20  C0 5C 00 30 */	lfs f2, 0x30(r28)
/* 00008E60 00008F24  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 00008E64 00008F28  EC 22 08 28 */	fsubs f1, f2, f1
/* 00008E68 00008F2C  D0 3C 00 30 */	stfs f1, 0x30(r28)
/* 00008E6C 00008F30  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 00008E70 00008F34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00008E74 00008F38  40 80 00 18 */	bge .L_00008E8C
/* 00008E78 00008F3C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 00008E7C 00008F40  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 00008E80 00008F44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00008E84 00008F48  40 80 00 08 */	bge .L_00008E8C
/* 00008E88 00008F4C  D0 3C 00 10 */	stfs f1, 0x10(r28)
.L_00008E8C:
/* 00008E8C 00008F50  C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 00008E90 00008F54  C0 5C 00 08 */	lfs f2, 0x8(r28)
/* 00008E94 00008F58  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 00008E98 00008F5C  C0 9C 00 20 */	lfs f4, 0x20(r28)
/* 00008E9C 00008F60  4B FF C1 79 */	bl angleABf_1
/* 00008EA0 00008F64  FC 40 08 90 */	fmr f2, f1
/* 00008EA4 00008F68  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 00008EA8 00008F6C  38 7C 00 0C */	addi r3, r28, 0xc
/* 00008EAC 00008F70  38 9C 00 14 */	addi r4, r28, 0x14
/* 00008EB0 00008F74  4B FF C1 65 */	bl btlMovePos
/* 00008EB4 00008F78  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 00008EB8 00008F7C  38 03 FF FF */	subi r0, r3, 0x1
/* 00008EBC 00008F80  90 1C 00 24 */	stw r0, 0x24(r28)
/* 00008EC0 00008F84  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 00008EC4 00008F88  2C 00 00 00 */	cmpwi r0, 0x0
/* 00008EC8 00008F8C  41 81 00 24 */	bgt .L_00008EEC
/* 00008ECC 00008F90  38 00 00 01 */	li r0, 0x1
/* 00008ED0 00008F94  90 1D 00 80 */	stw r0, 0x80(r29)
/* 00008ED4 00008F98  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 00008ED8 00008F9C  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 00008EDC 00008FA0  90 7C 00 0C */	stw r3, 0xc(r28)
/* 00008EE0 00008FA4  90 1C 00 10 */	stw r0, 0x10(r28)
/* 00008EE4 00008FA8  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 00008EE8 00008FAC  90 1C 00 14 */	stw r0, 0x14(r28)
.L_00008EEC:
/* 00008EEC 00008FB0  3C 80 00 00 */	lis r4, float_900_tou2_00011174@ha
/* 00008EF0 00008FB4  3C 60 00 00 */	lis r3, _disp_icon@ha
/* 00008EF4 00008FB8  C0 24 00 00 */	lfs f1, float_900_tou2_00011174@l(r4)
/* 00008EF8 00008FBC  38 A3 00 00 */	addi r5, r3, _disp_icon@l
/* 00008EFC 00008FC0  7F A6 EB 78 */	mr r6, r29
/* 00008F00 00008FC4  38 60 00 04 */	li r3, 0x4
/* 00008F04 00008FC8  38 80 00 01 */	li r4, 0x1
/* 00008F08 00008FCC  4B FF C1 0D */	bl dispEntry
/* 00008F0C 00008FD0  38 60 00 00 */	li r3, 0x0
.L_00008F10:
/* 00008F10 00008FD4  E3 E1 00 A8 */	psq_l f31, 0xa8(r1), 0, qr0
/* 00008F14 00008FD8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 00008F18 00008FDC  E3 C1 00 98 */	psq_l f30, 0x98(r1), 0, qr0
/* 00008F1C 00008FE0  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 00008F20 00008FE4  E3 A1 00 88 */	psq_l f29, 0x88(r1), 0, qr0
/* 00008F24 00008FE8  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 00008F28 00008FEC  E3 81 00 78 */	psq_l f28, 0x78(r1), 0, qr0
/* 00008F2C 00008FF0  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 00008F30 00008FF4  E3 61 00 68 */	psq_l f27, 0x68(r1), 0, qr0
/* 00008F34 00008FF8  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 00008F38 00008FFC  E3 41 00 58 */	psq_l f26, 0x58(r1), 0, qr0
/* 00008F3C 00009000  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 00008F40 00009004  E3 21 00 48 */	psq_l f25, 0x48(r1), 0, qr0
/* 00008F44 00009008  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 00008F48 0000900C  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 00008F4C 00009010  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 00008F50 00009014  7C 08 03 A6 */	mtlr r0
/* 00008F54 00009018  38 21 00 B0 */	addi r1, r1, 0xb0
/* 00008F58 0000901C  4E 80 00 20 */	blr
.endfn _icon_jump_icon

# .text:0x358 | 0x8F5C | size: 0xE0
.fn party_cannot_use_command, local
/* 00008F5C 00009020  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00008F60 00009024  7C 08 02 A6 */	mflr r0
/* 00008F64 00009028  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00008F68 0000902C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00008F6C 00009030  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00008F70 00009034  7C 7F 1B 78 */	mr r31, r3
/* 00008F74 00009038  38 60 00 01 */	li r3, 0x1
/* 00008F78 0000903C  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00008F7C 00009040  4B FF C0 99 */	bl irand
/* 00008F80 00009044  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00008F84 00009048  7C 7E 1B 78 */	mr r30, r3
/* 00008F88 0000904C  7F E3 FB 78 */	mr r3, r31
/* 00008F8C 00009050  83 84 00 00 */	lwz r28, 0x0(r4)
/* 00008F90 00009054  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00008F94 00009058  4B FF C0 81 */	bl evtGetValue
/* 00008F98 0000905C  7C 60 1B 78 */	mr r0, r3
/* 00008F9C 00009060  7F E3 FB 78 */	mr r3, r31
/* 00008FA0 00009064  7C 04 03 78 */	mr r4, r0
/* 00008FA4 00009068  3B 60 00 00 */	li r27, 0x0
/* 00008FA8 0000906C  4B FF C0 6D */	bl BattleTransID
/* 00008FAC 00009070  7C 64 1B 78 */	mr r4, r3
/* 00008FB0 00009074  7F A3 EB 78 */	mr r3, r29
/* 00008FB4 00009078  4B FF C0 61 */	bl BattleGetUnitPtr
/* 00008FB8 0000907C  2C 1E 00 01 */	cmpwi r30, 0x1
/* 00008FBC 00009080  41 82 00 2C */	beq .L_00008FE8
/* 00008FC0 00009084  40 80 00 3C */	bge .L_00008FFC
/* 00008FC4 00009088  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00008FC8 0000908C  40 80 00 08 */	bge .L_00008FD0
/* 00008FCC 00009090  48 00 00 30 */	b .L_00008FFC
.L_00008FD0:
/* 00008FD0 00009094  28 03 00 00 */	cmplwi r3, 0x0
/* 00008FD4 00009098  41 82 00 0C */	beq .L_00008FE0
/* 00008FD8 0000909C  38 00 00 03 */	li r0, 0x3
/* 00008FDC 000090A0  B0 03 01 3C */	sth r0, 0x13c(r3)
.L_00008FE0:
/* 00008FE0 000090A4  3B 60 01 58 */	li r27, 0x158
/* 00008FE4 000090A8  48 00 00 18 */	b .L_00008FFC
.L_00008FE8:
/* 00008FE8 000090AC  28 03 00 00 */	cmplwi r3, 0x0
/* 00008FEC 000090B0  41 82 00 0C */	beq .L_00008FF8
/* 00008FF0 000090B4  38 00 00 03 */	li r0, 0x3
/* 00008FF4 000090B8  B0 03 01 3E */	sth r0, 0x13e(r3)
.L_00008FF8:
/* 00008FF8 000090BC  3B 60 01 54 */	li r27, 0x154
.L_00008FFC:
/* 00008FFC 000090C0  3C 60 00 00 */	lis r3, cmd_disable_string@ha
/* 00009000 000090C4  57 C0 10 3A */	slwi r0, r30, 2
/* 00009004 000090C8  38 83 00 00 */	addi r4, r3, cmd_disable_string@l
/* 00009008 000090CC  7F E3 FB 78 */	mr r3, r31
/* 0000900C 000090D0  7C A4 02 14 */	add r5, r4, r0
/* 00009010 000090D4  7F 84 E3 78 */	mr r4, r28
/* 00009014 000090D8  80 05 00 0C */	lwz r0, 0xc(r5)
/* 00009018 000090DC  7F 65 DB 78 */	mr r5, r27
/* 0000901C 000090E0  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 00009020 000090E4  4B FF BF F5 */	bl evtSetValue
/* 00009024 000090E8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00009028 000090EC  38 60 00 02 */	li r3, 0x2
/* 0000902C 000090F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00009030 000090F4  7C 08 03 A6 */	mtlr r0
/* 00009034 000090F8  38 21 00 20 */	addi r1, r1, 0x20
/* 00009038 000090FC  4E 80 00 20 */	blr
.endfn party_cannot_use_command

# .text:0x438 | 0x903C | size: 0xC0
.fn mario_cannot_use_command, local
/* 0000903C 00009100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00009040 00009104  7C 08 02 A6 */	mflr r0
/* 00009044 00009108  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00009048 0000910C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000904C 00009110  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00009050 00009114  7C 7E 1B 78 */	mr r30, r3
/* 00009054 00009118  38 60 00 02 */	li r3, 0x2
/* 00009058 0000911C  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 0000905C 00009120  4B FF BF B9 */	bl irand
/* 00009060 00009124  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 00009064 00009128  2C 03 00 01 */	cmpwi r3, 0x1
/* 00009068 0000912C  38 A0 00 00 */	li r5, 0x0
/* 0000906C 00009130  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00009070 00009134  41 82 00 34 */	beq .L_000090A4
/* 00009074 00009138  40 80 00 10 */	bge .L_00009084
/* 00009078 0000913C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000907C 00009140  40 80 00 14 */	bge .L_00009090
/* 00009080 00009144  48 00 00 48 */	b .L_000090C8
.L_00009084:
/* 00009084 00009148  2C 03 00 03 */	cmpwi r3, 0x3
/* 00009088 0000914C  40 80 00 40 */	bge .L_000090C8
/* 0000908C 00009150  48 00 00 2C */	b .L_000090B8
.L_00009090:
/* 00009090 00009154  3C BF 00 02 */	addis r5, r31, 0x2
/* 00009094 00009158  38 00 00 03 */	li r0, 0x3
/* 00009098 0000915C  90 05 90 50 */	stw r0, -0x6fb0(r5)
/* 0000909C 00009160  38 A0 01 4E */	li r5, 0x14e
/* 000090A0 00009164  48 00 00 28 */	b .L_000090C8
.L_000090A4:
/* 000090A4 00009168  3C BF 00 02 */	addis r5, r31, 0x2
/* 000090A8 0000916C  38 00 00 03 */	li r0, 0x3
/* 000090AC 00009170  90 05 90 54 */	stw r0, -0x6fac(r5)
/* 000090B0 00009174  38 A0 01 51 */	li r5, 0x151
/* 000090B4 00009178  48 00 00 14 */	b .L_000090C8
.L_000090B8:
/* 000090B8 0000917C  3C BF 00 02 */	addis r5, r31, 0x2
/* 000090BC 00009180  38 00 00 03 */	li r0, 0x3
/* 000090C0 00009184  90 05 90 58 */	stw r0, -0x6fa8(r5)
/* 000090C4 00009188  38 A0 01 54 */	li r5, 0x154
.L_000090C8:
/* 000090C8 0000918C  3C C0 00 00 */	lis r6, cmd_disable_string@ha
/* 000090CC 00009190  54 60 10 3A */	slwi r0, r3, 2
/* 000090D0 00009194  38 C6 00 00 */	addi r6, r6, cmd_disable_string@l
/* 000090D4 00009198  7F C3 F3 78 */	mr r3, r30
/* 000090D8 0000919C  7C 06 00 2E */	lwzx r0, r6, r0
/* 000090DC 000091A0  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 000090E0 000091A4  4B FF BF 35 */	bl evtSetValue
/* 000090E4 000091A8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000090E8 000091AC  38 60 00 02 */	li r3, 0x2
/* 000090EC 000091B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000090F0 000091B4  7C 08 03 A6 */	mtlr r0
/* 000090F4 000091B8  38 21 00 10 */	addi r1, r1, 0x10
/* 000090F8 000091BC  4E 80 00 20 */	blr
.endfn mario_cannot_use_command

# 0x00007688..0x00007A40 | size: 0x3B8
.rodata
.balign 8

# .rodata:0x0 | 0x7688 | size: 0xD
.obj str_btl_un_koopa_tou2_00010dc8, local
	.string "btl_un_koopa"
.endobj str_btl_un_koopa_tou2_00010dc8

# .rodata:0xD | 0x7695 | size: 0x3
.obj gap_03_00007695_rodata, global
.hidden gap_03_00007695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007695_rodata

# .rodata:0x10 | 0x7698 | size: 0x18
.obj str_SFX_BOSS_KOOPA_DAMAG_tou2_00010dd8, local
	.string "SFX_BOSS_KOOPA_DAMAGED1"
.endobj str_SFX_BOSS_KOOPA_DAMAG_tou2_00010dd8

# .rodata:0x28 | 0x76B0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010df0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010df0

# .rodata:0x3D | 0x76C5 | size: 0x3
.obj gap_03_000076C5_rodata, global
.hidden gap_03_000076C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000076C5_rodata

# .rodata:0x40 | 0x76C8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_00010e08, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_00010e08

# .rodata:0x54 | 0x76DC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010e1c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010e1c

# .rodata:0x6D | 0x76F5 | size: 0x3
.obj gap_03_000076F5_rodata, global
.hidden gap_03_000076F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000076F5_rodata

# .rodata:0x70 | 0x76F8 | size: 0x8
.obj str_KPA_N_3_tou2_00010e38, local
	.string "KPA_N_3"
.endobj str_KPA_N_3_tou2_00010e38

# .rodata:0x78 | 0x7700 | size: 0x8
.obj str_KPA_Z_6_tou2_00010e40, local
	.string "KPA_Z_6"
.endobj str_KPA_Z_6_tou2_00010e40

# .rodata:0x80 | 0x7708 | size: 0x8
.obj str_KPA_K_2_tou2_00010e48, local
	.string "KPA_K_2"
.endobj str_KPA_K_2_tou2_00010e48

# .rodata:0x88 | 0x7710 | size: 0x8
.obj str_KPA_S_2_tou2_00010e50, local
	.string "KPA_S_2"
.endobj str_KPA_S_2_tou2_00010e50

# .rodata:0x90 | 0x7718 | size: 0x8
.obj str_KPA_S_1_tou2_00010e58, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_tou2_00010e58

# .rodata:0x98 | 0x7720 | size: 0x8
.obj str_KPA_Q_2_tou2_00010e60, local
	.string "KPA_Q_2"
.endobj str_KPA_Q_2_tou2_00010e60

# .rodata:0xA0 | 0x7728 | size: 0x8
.obj str_KPA_D_1_tou2_00010e68, local
	.string "KPA_D_1"
.endobj str_KPA_D_1_tou2_00010e68

# .rodata:0xA8 | 0x7730 | size: 0x8
.obj str_KPA_R_1_tou2_00010e70, local
	.string "KPA_R_1"
.endobj str_KPA_R_1_tou2_00010e70

# .rodata:0xB0 | 0x7738 | size: 0x8
.obj str_KPA_W_1_tou2_00010e78, local
	.string "KPA_W_1"
.endobj str_KPA_W_1_tou2_00010e78

# .rodata:0xB8 | 0x7740 | size: 0x8
.obj str_KPA_T_1_tou2_00010e80, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_tou2_00010e80

# .rodata:0xC0 | 0x7748 | size: 0x8
.obj str_KPA_N_2_tou2_00010e88, local
	.string "KPA_N_2"
.endobj str_KPA_N_2_tou2_00010e88

# .rodata:0xC8 | 0x7750 | size: 0x8
.obj str_KPA_Z_5_tou2_00010e90, local
	.string "KPA_Z_5"
.endobj str_KPA_Z_5_tou2_00010e90

# .rodata:0xD0 | 0x7758 | size: 0x8
.obj str_KPA_K_1_tou2_00010e98, local
	.string "KPA_K_1"
.endobj str_KPA_K_1_tou2_00010e98

# .rodata:0xD8 | 0x7760 | size: 0x8
.obj str_KPA_X_1_tou2_00010ea0, local
	.string "KPA_X_1"
.endobj str_KPA_X_1_tou2_00010ea0

# .rodata:0xE0 | 0x7768 | size: 0x8
.obj str_KPA_S_8_tou2_00010ea8, local
	.string "KPA_S_8"
.endobj str_KPA_S_8_tou2_00010ea8

# .rodata:0xE8 | 0x7770 | size: 0x8
.obj str_KPA_D_4_tou2_00010eb0, local
	.string "KPA_D_4"
.endobj str_KPA_D_4_tou2_00010eb0

# .rodata:0xF0 | 0x7778 | size: 0x8
.obj str_KPA_T_9_tou2_00010eb8, local
	.string "KPA_T_9"
.endobj str_KPA_T_9_tou2_00010eb8

# .rodata:0xF8 | 0x7780 | size: 0x8
.obj str_c_koopa_tou2_00010ec0, local
	.string "c_koopa"
.endobj str_c_koopa_tou2_00010ec0

# .rodata:0x100 | 0x7788 | size: 0x16
.obj str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ec8, local
	.string "SFX_BOSS_KOOPA_MOVE1L"
.endobj str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ec8

# .rodata:0x116 | 0x779E | size: 0x2
.obj gap_03_0000779E_rodata, global
.hidden gap_03_0000779E_rodata
	.2byte 0x0000
.endobj gap_03_0000779E_rodata

# .rodata:0x118 | 0x77A0 | size: 0x16
.obj str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ee0, local
	.string "SFX_BOSS_KOOPA_MOVE1R"
.endobj str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ee0

# .rodata:0x12E | 0x77B6 | size: 0x2
.obj gap_03_000077B6_rodata, global
.hidden gap_03_000077B6_rodata
	.2byte 0x0000
.endobj gap_03_000077B6_rodata

# .rodata:0x130 | 0x77B8 | size: 0x19
.obj str_SFX_VOICE_KOOPA_LAUG_tou2_00010ef8, local
	.string "SFX_VOICE_KOOPA_LAUGH2_1"
.endobj str_SFX_VOICE_KOOPA_LAUG_tou2_00010ef8

# .rodata:0x149 | 0x77D1 | size: 0x3
.obj gap_03_000077D1_rodata, global
.hidden gap_03_000077D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000077D1_rodata

# .rodata:0x14C | 0x77D4 | size: 0x8
.obj str_KPA_Y_2_tou2_00010f14, local
	.string "KPA_Y_2"
.endobj str_KPA_Y_2_tou2_00010f14

# .rodata:0x154 | 0x77DC | size: 0x13
.obj str_stg3_tou_403_06_01_tou2_00010f1c, local
	.string "stg3_tou_403_06_01"
.endobj str_stg3_tou_403_06_01_tou2_00010f1c

# .rodata:0x167 | 0x77EF | size: 0x1
.obj gap_03_000077EF_rodata, global
.hidden gap_03_000077EF_rodata
	.byte 0x00
.endobj gap_03_000077EF_rodata

# .rodata:0x168 | 0x77F0 | size: 0x13
.obj str_stg3_tou_403_06_03_tou2_00010f30, local
	.string "stg3_tou_403_06_03"
.endobj str_stg3_tou_403_06_03_tou2_00010f30

# .rodata:0x17B | 0x7803 | size: 0x1
.obj gap_03_00007803_rodata, global
.hidden gap_03_00007803_rodata
	.byte 0x00
.endobj gap_03_00007803_rodata

# .rodata:0x17C | 0x7804 | size: 0x1C
.obj str_SFX_VOICE_KOOPA_SATI_tou2_00010f44, local
	.string "SFX_VOICE_KOOPA_SATIATED2_2"
.endobj str_SFX_VOICE_KOOPA_SATI_tou2_00010f44

# .rodata:0x198 | 0x7820 | size: 0x8
.obj str_KPA_D_2_tou2_00010f60, local
	.string "KPA_D_2"
.endobj str_KPA_D_2_tou2_00010f60

# .rodata:0x1A0 | 0x7828 | size: 0x8
.obj str_KPA_T_3_tou2_00010f68, local
	.string "KPA_T_3"
.endobj str_KPA_T_3_tou2_00010f68

# .rodata:0x1A8 | 0x7830 | size: 0x8
.obj str_KPA_S_4_tou2_00010f70, local
	.string "KPA_S_4"
.endobj str_KPA_S_4_tou2_00010f70

# .rodata:0x1B0 | 0x7838 | size: 0x13
.obj str_stg3_tou_403_06_02_tou2_00010f78, local
	.string "stg3_tou_403_06_02"
.endobj str_stg3_tou_403_06_02_tou2_00010f78

# .rodata:0x1C3 | 0x784B | size: 0x1
.obj gap_03_0000784B_rodata, global
.hidden gap_03_0000784B_rodata
	.byte 0x00
.endobj gap_03_0000784B_rodata

# .rodata:0x1C4 | 0x784C | size: 0x15
.obj str_SFX_BOSS_KOOPA_JUMP1_tou2_00010f8c, local
	.string "SFX_BOSS_KOOPA_JUMP1"
.endobj str_SFX_BOSS_KOOPA_JUMP1_tou2_00010f8c

# .rodata:0x1D9 | 0x7861 | size: 0x3
.obj gap_03_00007861_rodata, global
.hidden gap_03_00007861_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007861_rodata

# .rodata:0x1DC | 0x7864 | size: 0x9
.obj str_KPA_A_2A_tou2_00010fa4, local
	.string "KPA_A_2A"
.endobj str_KPA_A_2A_tou2_00010fa4

# .rodata:0x1E5 | 0x786D | size: 0x3
.obj gap_03_0000786D_rodata, global
.hidden gap_03_0000786D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000786D_rodata

# .rodata:0x1E8 | 0x7870 | size: 0x9
.obj str_KPA_A_2B_tou2_00010fb0, local
	.string "KPA_A_2B"
.endobj str_KPA_A_2B_tou2_00010fb0

# .rodata:0x1F1 | 0x7879 | size: 0x3
.obj gap_03_00007879_rodata, global
.hidden gap_03_00007879_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007879_rodata

# .rodata:0x1F4 | 0x787C | size: 0x9
.obj str_KPA_A_2C_tou2_00010fbc, local
	.string "KPA_A_2C"
.endobj str_KPA_A_2C_tou2_00010fbc

# .rodata:0x1FD | 0x7885 | size: 0x3
.obj gap_03_00007885_rodata, global
.hidden gap_03_00007885_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007885_rodata

# .rodata:0x200 | 0x7888 | size: 0x9
.obj str_KPA_A_2D_tou2_00010fc8, local
	.string "KPA_A_2D"
.endobj str_KPA_A_2D_tou2_00010fc8

# .rodata:0x209 | 0x7891 | size: 0x3
.obj gap_03_00007891_rodata, global
.hidden gap_03_00007891_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007891_rodata

# .rodata:0x20C | 0x7894 | size: 0x1B
.obj str_SFX_BOSS_KOOPA_HIP_A_tou2_00010fd4, local
	.string "SFX_BOSS_KOOPA_HIP_ATTACK1"
.endobj str_SFX_BOSS_KOOPA_HIP_A_tou2_00010fd4

# .rodata:0x227 | 0x78AF | size: 0x1
.obj gap_03_000078AF_rodata, global
.hidden gap_03_000078AF_rodata
	.byte 0x00
.endobj gap_03_000078AF_rodata

# .rodata:0x228 | 0x78B0 | size: 0x9
.obj str_KPA_A_2E_tou2_00010ff0, local
	.string "KPA_A_2E"
.endobj str_KPA_A_2E_tou2_00010ff0

# .rodata:0x231 | 0x78B9 | size: 0x3
.obj gap_03_000078B9_rodata, global
.hidden gap_03_000078B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000078B9_rodata

# .rodata:0x234 | 0x78BC | size: 0x9
.obj str_KPA_A_3A_tou2_00010ffc, local
	.string "KPA_A_3A"
.endobj str_KPA_A_3A_tou2_00010ffc

# .rodata:0x23D | 0x78C5 | size: 0x3
.obj gap_03_000078C5_rodata, global
.hidden gap_03_000078C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000078C5_rodata

# .rodata:0x240 | 0x78C8 | size: 0x15
.obj str_SFX_BOSS_KOOPA_BITE1_tou2_00011008, local
	.string "SFX_BOSS_KOOPA_BITE1"
.endobj str_SFX_BOSS_KOOPA_BITE1_tou2_00011008

# .rodata:0x255 | 0x78DD | size: 0x3
.obj gap_03_000078DD_rodata, global
.hidden gap_03_000078DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000078DD_rodata

# .rodata:0x258 | 0x78E0 | size: 0x9
.obj str_KPA_A_3B_tou2_00011020, local
	.string "KPA_A_3B"
.endobj str_KPA_A_3B_tou2_00011020

# .rodata:0x261 | 0x78E9 | size: 0x3
.obj gap_03_000078E9_rodata, global
.hidden gap_03_000078E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000078E9_rodata

# .rodata:0x264 | 0x78EC | size: 0x15
.obj str_SFX_BOSS_KOOPA_BITE2_tou2_0001102c, local
	.string "SFX_BOSS_KOOPA_BITE2"
.endobj str_SFX_BOSS_KOOPA_BITE2_tou2_0001102c

# .rodata:0x279 | 0x7901 | size: 0x3
.obj gap_03_00007901_rodata, global
.hidden gap_03_00007901_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007901_rodata

# .rodata:0x27C | 0x7904 | size: 0x9
.obj str_KPA_A_3C_tou2_00011044, local
	.string "KPA_A_3C"
.endobj str_KPA_A_3C_tou2_00011044

# .rodata:0x285 | 0x790D | size: 0x3
.obj gap_03_0000790D_rodata, global
.hidden gap_03_0000790D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000790D_rodata

# .rodata:0x288 | 0x7910 | size: 0x15
.obj str_SFX_BOSS_KOOPA_BITE3_tou2_00011050, local
	.string "SFX_BOSS_KOOPA_BITE3"
.endobj str_SFX_BOSS_KOOPA_BITE3_tou2_00011050

# .rodata:0x29D | 0x7925 | size: 0x3
.obj gap_03_00007925_rodata, global
.hidden gap_03_00007925_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007925_rodata

# .rodata:0x2A0 | 0x7928 | size: 0x8
.obj str_KPA_A_4_tou2_00011068, local
	.string "KPA_A_4"
.endobj str_KPA_A_4_tou2_00011068

# .rodata:0x2A8 | 0x7930 | size: 0x9
.obj str_KPA_A_1A_tou2_00011070, local
	.string "KPA_A_1A"
.endobj str_KPA_A_1A_tou2_00011070

# .rodata:0x2B1 | 0x7939 | size: 0x3
.obj gap_03_00007939_rodata, global
.hidden gap_03_00007939_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007939_rodata

# .rodata:0x2B4 | 0x793C | size: 0x16
.obj str_SFX_VOICE_KOOPA_FIRE_tou2_0001107c, local
	.string "SFX_VOICE_KOOPA_FIRE1"
.endobj str_SFX_VOICE_KOOPA_FIRE_tou2_0001107c

# .rodata:0x2CA | 0x7952 | size: 0x2
.obj gap_03_00007952_rodata, global
.hidden gap_03_00007952_rodata
	.2byte 0x0000
.endobj gap_03_00007952_rodata

# .rodata:0x2CC | 0x7954 | size: 0x1C
.obj str_SFX_BOSS_KOOPA_FIRE__tou2_00011094, local
	.string "SFX_BOSS_KOOPA_FIRE_BREATH1"
.endobj str_SFX_BOSS_KOOPA_FIRE__tou2_00011094

# .rodata:0x2E8 | 0x7970 | size: 0x9
.obj str_KPA_A_1B_tou2_000110b0, local
	.string "KPA_A_1B"
.endobj str_KPA_A_1B_tou2_000110b0

# .rodata:0x2F1 | 0x7979 | size: 0x3
.obj gap_03_00007979_rodata, global
.hidden gap_03_00007979_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007979_rodata

# .rodata:0x2F4 | 0x797C | size: 0x1
.obj zero_tou2_000110bc, local
	.byte 0x00
.endobj zero_tou2_000110bc

# .rodata:0x2F5 | 0x797D | size: 0x3
.obj gap_03_0000797D_rodata, global
.hidden gap_03_0000797D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000797D_rodata

# .rodata:0x2F8 | 0x7980 | size: 0xF
.obj str_gonbaba_breath_tou2_000110c0, local
	.string "gonbaba_breath"
.endobj str_gonbaba_breath_tou2_000110c0

# .rodata:0x307 | 0x798F | size: 0x1
.obj gap_03_0000798F_rodata, global
.hidden gap_03_0000798F_rodata
	.byte 0x00
.endobj gap_03_0000798F_rodata

# .rodata:0x308 | 0x7990 | size: 0x9
.obj str_KPA_A_1C_tou2_000110d0, local
	.string "KPA_A_1C"
.endobj str_KPA_A_1C_tou2_000110d0

# .rodata:0x311 | 0x7999 | size: 0x3
.obj gap_03_00007999_rodata, global
.hidden gap_03_00007999_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007999_rodata

# .rodata:0x314 | 0x799C | size: 0x9
.obj str_KPA_A_1D_tou2_000110dc, local
	.string "KPA_A_1D"
.endobj str_KPA_A_1D_tou2_000110dc

# .rodata:0x31D | 0x79A5 | size: 0x3
.obj gap_03_000079A5_rodata, global
.hidden gap_03_000079A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000079A5_rodata

# .rodata:0x320 | 0x79A8 | size: 0x15
.obj str_btl_jump_cmd_disable_tou2_000110e8, local
	.string "btl_jump_cmd_disable"
.endobj str_btl_jump_cmd_disable_tou2_000110e8

# .rodata:0x335 | 0x79BD | size: 0x3
.obj gap_03_000079BD_rodata, global
.hidden gap_03_000079BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000079BD_rodata

# .rodata:0x338 | 0x79C0 | size: 0x17
.obj str_btl_hammer_cmd_disab_tou2_00011100, local
	.string "btl_hammer_cmd_disable"
.endobj str_btl_hammer_cmd_disab_tou2_00011100

# .rodata:0x34F | 0x79D7 | size: 0x1
.obj gap_03_000079D7_rodata, global
.hidden gap_03_000079D7_rodata
	.byte 0x00
.endobj gap_03_000079D7_rodata

# .rodata:0x350 | 0x79D8 | size: 0x15
.obj str_btl_item_cmd_disable_tou2_00011118, local
	.string "btl_item_cmd_disable"
.endobj str_btl_item_cmd_disable_tou2_00011118

# .rodata:0x365 | 0x79ED | size: 0x3
.obj gap_03_000079ED_rodata, global
.hidden gap_03_000079ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000079ED_rodata

# .rodata:0x368 | 0x79F0 | size: 0x1B
.obj str_btl_party_tech_cmd_d_tou2_00011130, local
	.string "btl_party_tech_cmd_disable"
.endobj str_btl_party_tech_cmd_d_tou2_00011130

# .rodata:0x383 | 0x7A0B | size: 0x1
.obj gap_03_00007A0B_rodata, global
.hidden gap_03_00007A0B_rodata
	.byte 0x00
.endobj gap_03_00007A0B_rodata

# .rodata:0x384 | 0x7A0C | size: 0x1B
.obj str_btl_party_item_cmd_d_tou2_0001114c, local
	.string "btl_party_item_cmd_disable"
.endobj str_btl_party_item_cmd_d_tou2_0001114c
	.byte 0x00

# .rodata:0x3A0 | 0x7A28 | size: 0x4
.obj float_1_tou2_00011168, local
	.float 1
.endobj float_1_tou2_00011168

# .rodata:0x3A4 | 0x7A2C | size: 0x4
.obj float_0p5_tou2_0001116c, local
	.float 0.5
.endobj float_0p5_tou2_0001116c

# .rodata:0x3A8 | 0x7A30 | size: 0x4
.obj zero_tou2_00011170, local
	.float 0
.endobj zero_tou2_00011170

# .rodata:0x3AC | 0x7A34 | size: 0x4
.obj float_900_tou2_00011174, local
	.float 900
.endobj float_900_tou2_00011174

# .rodata:0x3B0 | 0x7A38 | size: 0x8
.obj double_to_int_tou2_00011178, local
	.double 4503601774854144
.endobj double_to_int_tou2_00011178

# 0x00050E88..0x00052FB8 | size: 0x2130
.data
.balign 8

# .data:0x0 | 0x50E88 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x50E90 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x50E94 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x50E98 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x50E9C | size: 0x4
.obj gap_04_00050E9C_data, global
.hidden gap_04_00050E9C_data
	.4byte 0x00000000
.endobj gap_04_00050E9C_data

# .data:0x18 | 0x50EA0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x50EA8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x50EAC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x50EB0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x50EB8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x50EBC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x50EC0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x50EC4 | size: 0x4
.obj gap_04_00050EC4_data, global
.hidden gap_04_00050EC4_data
	.4byte 0x00000000
.endobj gap_04_00050EC4_data

# .data:0x40 | 0x50EC8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x50ED0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x50ED4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50ED8 | size: 0xC4
.obj unit_boss_koopa_tou_26_data_50ED8, global
	.4byte 0x0000003F
	.4byte str_btl_un_koopa_tou2_00010dc8
	.4byte 0x001E0000
	.4byte 0x01012700
	.4byte 0x00640032
	.4byte 0x00090056
	.4byte 0x00500000
	.4byte 0x00460000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x422C0000
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
	.4byte 0x42100000
	.4byte 0x42900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x42AC0000
	.4byte 0x42A00000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOOPA_DAMAG_tou2_00010dd8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_00010df0
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_00010e08
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_00010e1c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_koopa_tou_26_data_50ED8

# .data:0x114 | 0x50F9C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x50FA1 | size: 0x3
.obj gap_04_00050FA1_data, global
.hidden gap_04_00050FA1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00050FA1_data

# .data:0x11C | 0x50FA4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x50FA9 | size: 0x3
.obj gap_04_00050FA9_data, global
.hidden gap_04_00050FA9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00050FA9_data

# .data:0x124 | 0x50FAC | size: 0x16
.obj regist, local
	.4byte 0x463C3C64
	.4byte 0x46646428
	.4byte 0x644B644B
	.4byte 0x645A3C00
	.4byte 0x00643C64
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x50FC2 | size: 0x2
.obj gap_04_00050FC2_data, global
.hidden gap_04_00050FC2_data
	.2byte 0x0000
.endobj gap_04_00050FC2_data

# .data:0x13C | 0x50FC4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KPA_N_3_tou2_00010e38
	.4byte 0x00000002
	.4byte str_KPA_Z_6_tou2_00010e40
	.4byte 0x00000009
	.4byte str_KPA_Z_6_tou2_00010e40
	.4byte 0x00000005
	.4byte str_KPA_K_2_tou2_00010e48
	.4byte 0x00000004
	.4byte str_KPA_S_2_tou2_00010e50
	.4byte 0x00000003
	.4byte str_KPA_S_2_tou2_00010e50
	.4byte 0x0000001C
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x0000001D
	.4byte str_KPA_Q_2_tou2_00010e60
	.4byte 0x0000001E
	.4byte str_KPA_Q_2_tou2_00010e60
	.4byte 0x0000001F
	.4byte str_KPA_D_1_tou2_00010e68
	.4byte 0x00000027
	.4byte str_KPA_D_1_tou2_00010e68
	.4byte 0x00000032
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x0000002A
	.4byte str_KPA_R_1_tou2_00010e70
	.4byte 0x00000028
	.4byte str_KPA_W_1_tou2_00010e78
	.4byte 0x00000038
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x00000039
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x00000041
	.4byte str_KPA_T_1_tou2_00010e80
	.4byte 0x00000045
	.4byte str_KPA_S_1_tou2_00010e58
.endobj pose_table

# .data:0x1CC | 0x51054 | size: 0x90
.obj pose_table_forward_leaning, local
	.4byte 0x00000001
	.4byte str_KPA_N_2_tou2_00010e88
	.4byte 0x00000002
	.4byte str_KPA_Z_5_tou2_00010e90
	.4byte 0x00000009
	.4byte str_KPA_Z_5_tou2_00010e90
	.4byte 0x00000005
	.4byte str_KPA_K_1_tou2_00010e98
	.4byte 0x00000004
	.4byte str_KPA_X_1_tou2_00010ea0
	.4byte 0x00000003
	.4byte str_KPA_X_1_tou2_00010ea0
	.4byte 0x0000001C
	.4byte str_KPA_S_8_tou2_00010ea8
	.4byte 0x0000001D
	.4byte str_KPA_D_4_tou2_00010eb0
	.4byte 0x0000001E
	.4byte str_KPA_D_4_tou2_00010eb0
	.4byte 0x0000001F
	.4byte str_KPA_D_4_tou2_00010eb0
	.4byte 0x00000027
	.4byte str_KPA_D_4_tou2_00010eb0
	.4byte 0x00000032
	.4byte str_KPA_S_8_tou2_00010ea8
	.4byte 0x0000002A
	.4byte str_KPA_R_1_tou2_00010e70
	.4byte 0x00000028
	.4byte str_KPA_W_1_tou2_00010e78
	.4byte 0x00000038
	.4byte str_KPA_S_8_tou2_00010ea8
	.4byte 0x00000039
	.4byte str_KPA_S_8_tou2_00010ea8
	.4byte 0x00000041
	.4byte str_KPA_T_9_tou2_00010eb8
	.4byte 0x00000045
	.4byte str_KPA_S_8_tou2_00010ea8
.endobj pose_table_forward_leaning

# .data:0x25C | 0x510E4 | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x26C | 0x510F4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_koopa_tou2_00010dc8
	.4byte str_c_koopa_tou2_00010ec0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42080000
	.4byte 0x42780000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x429C0000
	.4byte 0x00000000
	.4byte 0x00460050
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2B8 | 0x51140 | size: 0xC0
.obj weapon_koopa_hip_attack, local
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
	.4byte 0x20001004
	.4byte 0x000A0302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x0000000C
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
	.4byte 0x00191964
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_koopa_hip_attack

# .data:0x378 | 0x51200 | size: 0xC0
.obj weapon_koopa_bite_attack, local
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
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00001E0A
	.4byte 0x01000000
	.4byte 0x00000000
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
.endobj weapon_koopa_bite_attack

# .data:0x438 | 0x512C0 | size: 0xC0
.obj weapon_koopa_critical_bite_attack, local
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
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000002
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
.endobj weapon_koopa_critical_bite_attack

# .data:0x4F8 | 0x51380 | size: 0xC0
.obj weapon_koopa_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000047
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
.endobj weapon_koopa_fire_attack

# .data:0x5B8 | 0x51440 | size: 0x64
.obj koopa_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0000005F
	.4byte 0x0000015E
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0xFFFFFED4
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj koopa_zoom

# .data:0x61C | 0x514A4 | size: 0x120
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ec8
	.4byte str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ee0
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ec8
	.4byte str_SFX_BOSS_KOOPA_MOVE1_tou2_00010ee0
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x73C | 0x515C4 | size: 0xB4
.obj entry_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_LAUG_tou2_00010ef8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_Y_2_tou2_00010f14
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_403_06_01_tou2_00010f1c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x7F0 | 0x51678 | size: 0x28
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

# .data:0x818 | 0x516A0 | size: 0x1BC
.obj dead_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
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
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_D_1_tou2_00010e68
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_D_1_tou2_00010e68
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_403_06_03_tou2_00010f30
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_SATI_tou2_00010f44
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_D_2_tou2_00010f60
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x9D4 | 0x5185C | size: 0x7C
.obj phase_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte harf_hp_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xA50 | 0x518D8 | size: 0xF8
.obj harf_hp_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_T_3_tou2_00010f68
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_S_4_tou2_00010f70
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_403_06_02_tou2_00010f78
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj harf_hp_event

# .data:0xB48 | 0x519D0 | size: 0x1B0
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_bite_attack
	.4byte 0x0001005E
	.4byte bite_attack_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_hip_attack
	.4byte 0x0001005E
	.4byte hip_attack_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x0000002A
	.4byte 0x0007005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_hip_attack
	.4byte 0x0001005E
	.4byte hip_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_bite_attack
	.4byte 0x0001005E
	.4byte bite_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_critical_bite_attack
	.4byte 0x0001005E
	.4byte critical_bite_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_koopa_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xCF8 | 0x51B80 | size: 0x690
.obj hip_attack_event, local
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x00000028
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_JUMP1_tou2_00010f8c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2A_tou2_00010fa4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2B_tou2_00010fb0
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2C_tou2_00010fbc
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2D_tou2_00010fc8
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_HIP_A_tou2_00010fd4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2E_tou2_00010ff0
	.4byte 0x0001000A
	.4byte 0x000001F4
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
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x0000000D
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2E_tou2_00010ff0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_GetResultACDefence
	.4byte 0xFE363C87
	.4byte 0x0002001C
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x000000DE
	.4byte 0x0002005B
	.4byte mario_cannot_use_command
	.4byte 0xFE363C8F
	.4byte 0x0002002F
	.4byte 0x000000E0
	.4byte 0x000000E6
	.4byte 0x0003005B
	.4byte party_cannot_use_command
	.4byte 0xFE363C8F
	.4byte 0xFE363C83
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x000A005B
	.4byte _icon_jump_icon
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xF24A7C80
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte _icon_jump_icon
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xF24A7C80
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000019
	.4byte 0x000A005B
	.4byte _icon_jump_icon
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xF24A7C80
	.4byte 0x0000000C
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_AnnounceMessage
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_R_1_tou2_00010e70
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
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hip_attack_event

# .data:0x1388 | 0x52210 | size: 0x42C
.obj bite_attack_event, local
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
	.4byte str_KPA_R_1_tou2_00010e70
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000041
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
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_3A_tou2_00010ffc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE1_tou2_00011008
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x000000AA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_3B_tou2_00011020
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE2_tou2_0001102c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_3C_tou2_00011044
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0001000A
	.4byte 0x00000064
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
	.4byte str_KPA_A_3C_tou2_00011044
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_R_1_tou2_00010e70
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
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_S_1_tou2_00010e58
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bite_attack_event

# .data:0x17B4 | 0x5263C | size: 0x3E8
.obj critical_bite_attack_event, local
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_R_1_tou2_00010e70
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000041
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
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_3A_tou2_00010ffc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE1_tou2_00011008
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x000000AA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_3B_tou2_00011020
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE3_tou2_00011050
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_3C_tou2_00011044
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_4_tou2_00011068
	.4byte 0x0001000A
	.4byte 0x000005DC
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
	.4byte str_KPA_A_3C_tou2_00011044
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_R_1_tou2_00010e70
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj critical_bite_attack_event

# .data:0x1B9C | 0x52A24 | size: 0x564
.obj fire_attack_event, local
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
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_R_1_tou2_00010e70
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000078
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
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
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
	.4byte 0x000000AA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_1A_tou2_00011070
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_FIRE_tou2_0001107c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_FIRE__tou2_00011094
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_1B_tou2_000110b0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B6A80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24AD480
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24A8880
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_000110bc
	.4byte str_gonbaba_breath_tou2_000110c0
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_1C_tou2_000110d0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
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
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_1D_tou2_000110dc
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_R_1_tou2_00010e70
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_attack_event

# .data:0x2100 | 0x52F88 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2118 | 0x52FA0 | size: 0x18
.obj cmd_disable_string, local
	.4byte str_btl_jump_cmd_disable_tou2_000110e8
	.4byte str_btl_hammer_cmd_disab_tou2_00011100
	.4byte str_btl_item_cmd_disable_tou2_00011118
	.4byte str_btl_party_tech_cmd_d_tou2_00011130
	.4byte str_btl_party_item_cmd_d_tou2_0001114c
	.4byte 0x00000000
.endobj cmd_disable_string
