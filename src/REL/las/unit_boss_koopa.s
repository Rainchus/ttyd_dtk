.include "macros.inc"
.file "unit_boss_koopa.o"

# 0x00007A5C..0x00007F54 | size: 0x4F8
.text
.balign 4

# .text:0x0 | 0x7A5C | size: 0x3C
.fn _disp_icon, local
/* 00007A5C 00007B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007A60 00007B2C  7C 08 02 A6 */	mflr r0
/* 00007A64 00007B30  3C 60 00 00 */	lis r3, float_1_las_000175a4@ha
/* 00007A68 00007B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007A6C 00007B38  C0 23 00 00 */	lfs f1, float_1_las_000175a4@l(r3)
/* 00007A70 00007B3C  80 A4 00 78 */	lwz r5, 0x78(r4)
/* 00007A74 00007B40  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 00007A78 00007B44  38 80 00 00 */	li r4, 0x0
/* 00007A7C 00007B48  38 65 00 0C */	addi r3, r5, 0xc
/* 00007A80 00007B4C  54 05 04 3E */	clrlwi r5, r0, 16
/* 00007A84 00007B50  4B FF 86 B9 */	bl iconDispGx
/* 00007A88 00007B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007A8C 00007B58  7C 08 03 A6 */	mtlr r0
/* 00007A90 00007B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 00007A94 00007B60  4E 80 00 20 */	blr
.endfn _disp_icon

# .text:0x3C | 0x7A98 | size: 0x31C
.fn _icon_jump_icon, local
/* 00007A98 00007B64  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 00007A9C 00007B68  7C 08 02 A6 */	mflr r0
/* 00007AA0 00007B6C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 00007AA4 00007B70  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 00007AA8 00007B74  F3 E1 00 A8 */	psq_st f31, 0xa8(r1), 0, qr0
/* 00007AAC 00007B78  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 00007AB0 00007B7C  F3 C1 00 98 */	psq_st f30, 0x98(r1), 0, qr0
/* 00007AB4 00007B80  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 00007AB8 00007B84  F3 A1 00 88 */	psq_st f29, 0x88(r1), 0, qr0
/* 00007ABC 00007B88  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 00007AC0 00007B8C  F3 81 00 78 */	psq_st f28, 0x78(r1), 0, qr0
/* 00007AC4 00007B90  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 00007AC8 00007B94  F3 61 00 68 */	psq_st f27, 0x68(r1), 0, qr0
/* 00007ACC 00007B98  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 00007AD0 00007B9C  F3 41 00 58 */	psq_st f26, 0x58(r1), 0, qr0
/* 00007AD4 00007BA0  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 00007AD8 00007BA4  F3 21 00 48 */	psq_st f25, 0x48(r1), 0, qr0
/* 00007ADC 00007BA8  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 00007AE0 00007BAC  7C 7D 1B 78 */	mr r29, r3
/* 00007AE4 00007BB0  7C 9E 23 78 */	mr r30, r4
/* 00007AE8 00007BB4  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00007AEC 00007BB8  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00007AF0 00007BBC  4B FF 86 4D */	bl evtGetValue
/* 00007AF4 00007BC0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00007AF8 00007BC4  7C 7F 1B 78 */	mr r31, r3
/* 00007AFC 00007BC8  7F A3 EB 78 */	mr r3, r29
/* 00007B00 00007BCC  4B FF 86 3D */	bl evtGetFloat
/* 00007B04 00007BD0  FF 20 08 90 */	fmr f25, f1
/* 00007B08 00007BD4  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00007B0C 00007BD8  7F A3 EB 78 */	mr r3, r29
/* 00007B10 00007BDC  4B FF 86 2D */	bl evtGetFloat
/* 00007B14 00007BE0  FF 40 08 90 */	fmr f26, f1
/* 00007B18 00007BE4  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00007B1C 00007BE8  7F A3 EB 78 */	mr r3, r29
/* 00007B20 00007BEC  4B FF 86 1D */	bl evtGetFloat
/* 00007B24 00007BF0  FF 60 08 90 */	fmr f27, f1
/* 00007B28 00007BF4  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 00007B2C 00007BF8  7F A3 EB 78 */	mr r3, r29
/* 00007B30 00007BFC  4B FF 86 0D */	bl evtGetFloat
/* 00007B34 00007C00  FF 80 08 90 */	fmr f28, f1
/* 00007B38 00007C04  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 00007B3C 00007C08  7F A3 EB 78 */	mr r3, r29
/* 00007B40 00007C0C  4B FF 85 FD */	bl evtGetFloat
/* 00007B44 00007C10  FF A0 08 90 */	fmr f29, f1
/* 00007B48 00007C14  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 00007B4C 00007C18  7F A3 EB 78 */	mr r3, r29
/* 00007B50 00007C1C  4B FF 85 ED */	bl evtGetFloat
/* 00007B54 00007C20  FF C0 08 90 */	fmr f30, f1
/* 00007B58 00007C24  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 00007B5C 00007C28  7F A3 EB 78 */	mr r3, r29
/* 00007B60 00007C2C  4B FF 85 DD */	bl evtGetFloat
/* 00007B64 00007C30  FF E0 08 90 */	fmr f31, f1
/* 00007B68 00007C34  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 00007B6C 00007C38  7F A3 EB 78 */	mr r3, r29
/* 00007B70 00007C3C  4B FF 85 CD */	bl evtGetValue
/* 00007B74 00007C40  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00007B78 00007C44  7C 7C 1B 78 */	mr r28, r3
/* 00007B7C 00007C48  41 82 01 00 */	beq .L_00007C7C
/* 00007B80 00007C4C  38 60 00 7C */	li r3, 0x7c
/* 00007B84 00007C50  4B FF 85 B9 */	bl BattleAlloc
/* 00007B88 00007C54  90 7D 00 78 */	stw r3, 0x78(r29)
/* 00007B8C 00007C58  3C 00 43 30 */	lis r0, 0x4330
/* 00007B90 00007C5C  3C 80 00 00 */	lis r4, double_to_int_las_000175b8@ha
/* 00007B94 00007C60  3C 60 00 00 */	lis r3, float_0p5_las_000175a8@ha
/* 00007B98 00007C64  83 DD 00 78 */	lwz r30, 0x78(r29)
/* 00007B9C 00007C68  D3 21 00 08 */	stfs f25, 0x8(r1)
/* 00007BA0 00007C6C  C8 84 00 00 */	lfd f4, double_to_int_las_000175b8@l(r4)
/* 00007BA4 00007C70  D3 9E 00 18 */	stfs f28, 0x18(r30)
/* 00007BA8 00007C74  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00007BAC 00007C78  D3 BE 00 1C */	stfs f29, 0x1c(r30)
/* 00007BB0 00007C7C  C0 63 00 00 */	lfs f3, float_0p5_las_000175a8@l(r3)
/* 00007BB4 00007C80  D3 DE 00 20 */	stfs f30, 0x20(r30)
/* 00007BB8 00007C84  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 00007BBC 00007C88  D3 61 00 10 */	stfs f27, 0x10(r1)
/* 00007BC0 00007C8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 00007BC4 00007C90  90 BE 00 0C */	stw r5, 0xc(r30)
/* 00007BC8 00007C94  80 61 00 10 */	lwz r3, 0x10(r1)
/* 00007BCC 00007C98  90 9E 00 10 */	stw r4, 0x10(r30)
/* 00007BD0 00007C9C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 00007BD4 00007CA0  90 BE 00 00 */	stw r5, 0x0(r30)
/* 00007BD8 00007CA4  90 9E 00 04 */	stw r4, 0x4(r30)
/* 00007BDC 00007CA8  90 7E 00 08 */	stw r3, 0x8(r30)
/* 00007BE0 00007CAC  D3 FE 00 2C */	stfs f31, 0x2c(r30)
/* 00007BE4 00007CB0  93 9E 00 24 */	stw r28, 0x24(r30)
/* 00007BE8 00007CB4  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 00007BEC 00007CB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 00007BF0 00007CBC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00007BF4 00007CC0  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 00007BF8 00007CC4  90 61 00 24 */	stw r3, 0x24(r1)
/* 00007BFC 00007CC8  C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 00007C00 00007CCC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00007C04 00007CD0  EC 22 08 28 */	fsubs f1, f2, f1
/* 00007C08 00007CD4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00007C0C 00007CD8  EC 00 20 28 */	fsubs f0, f0, f4
/* 00007C10 00007CDC  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 00007C14 00007CE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 00007C18 00007CE4  EC 01 00 24 */	fdivs f0, f1, f0
/* 00007C1C 00007CE8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00007C20 00007CEC  EC 21 20 28 */	fsubs f1, f1, f4
/* 00007C24 00007CF0  EC 22 00 72 */	fmuls f1, f2, f1
/* 00007C28 00007CF4  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 00007C2C 00007CF8  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 00007C30 00007CFC  C0 3E 00 00 */	lfs f1, 0x0(r30)
/* 00007C34 00007D00  C0 5E 00 08 */	lfs f2, 0x8(r30)
/* 00007C38 00007D04  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 00007C3C 00007D08  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 00007C40 00007D0C  4B FF 84 FD */	bl distABf
/* 00007C44 00007D10  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 00007C48 00007D14  3C 00 43 30 */	lis r0, 0x4330
/* 00007C4C 00007D18  90 01 00 28 */	stw r0, 0x28(r1)
/* 00007C50 00007D1C  3C 80 00 00 */	lis r4, double_to_int_las_000175b8@ha
/* 00007C54 00007D20  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00007C58 00007D24  C8 44 00 00 */	lfd f2, double_to_int_las_000175b8@l(r4)
/* 00007C5C 00007D28  90 61 00 2C */	stw r3, 0x2c(r1)
/* 00007C60 00007D2C  38 00 00 00 */	li r0, 0x0
/* 00007C64 00007D30  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 00007C68 00007D34  EC 00 10 28 */	fsubs f0, f0, f2
/* 00007C6C 00007D38  EC 01 00 24 */	fdivs f0, f1, f0
/* 00007C70 00007D3C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 00007C74 00007D40  93 FD 00 7C */	stw r31, 0x7c(r29)
/* 00007C78 00007D44  90 1D 00 80 */	stw r0, 0x80(r29)
.L_00007C7C:
/* 00007C7C 00007D48  80 1D 00 80 */	lwz r0, 0x80(r29)
/* 00007C80 00007D4C  83 9D 00 78 */	lwz r28, 0x78(r29)
/* 00007C84 00007D50  2C 00 00 00 */	cmpwi r0, 0x0
/* 00007C88 00007D54  41 82 00 14 */	beq .L_00007C9C
/* 00007C8C 00007D58  7F 83 E3 78 */	mr r3, r28
/* 00007C90 00007D5C  4B FF 84 AD */	bl BattleFree
/* 00007C94 00007D60  38 60 00 02 */	li r3, 0x2
/* 00007C98 00007D64  48 00 00 D0 */	b .L_00007D68
.L_00007C9C:
/* 00007C9C 00007D68  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 00007CA0 00007D6C  3C 60 00 00 */	lis r3, zero_las_000175ac@ha
/* 00007CA4 00007D70  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 00007CA8 00007D74  C0 03 00 00 */	lfs f0, zero_las_000175ac@l(r3)
/* 00007CAC 00007D78  EC 22 08 2A */	fadds f1, f2, f1
/* 00007CB0 00007D7C  D0 3C 00 10 */	stfs f1, 0x10(r28)
/* 00007CB4 00007D80  C0 5C 00 30 */	lfs f2, 0x30(r28)
/* 00007CB8 00007D84  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 00007CBC 00007D88  EC 22 08 28 */	fsubs f1, f2, f1
/* 00007CC0 00007D8C  D0 3C 00 30 */	stfs f1, 0x30(r28)
/* 00007CC4 00007D90  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 00007CC8 00007D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00007CCC 00007D98  40 80 00 18 */	bge .L_00007CE4
/* 00007CD0 00007D9C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 00007CD4 00007DA0  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 00007CD8 00007DA4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00007CDC 00007DA8  40 80 00 08 */	bge .L_00007CE4
/* 00007CE0 00007DAC  D0 3C 00 10 */	stfs f1, 0x10(r28)
.L_00007CE4:
/* 00007CE4 00007DB0  C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 00007CE8 00007DB4  C0 5C 00 08 */	lfs f2, 0x8(r28)
/* 00007CEC 00007DB8  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 00007CF0 00007DBC  C0 9C 00 20 */	lfs f4, 0x20(r28)
/* 00007CF4 00007DC0  4B FF 84 49 */	bl angleABf_1
/* 00007CF8 00007DC4  FC 40 08 90 */	fmr f2, f1
/* 00007CFC 00007DC8  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 00007D00 00007DCC  38 7C 00 0C */	addi r3, r28, 0xc
/* 00007D04 00007DD0  38 9C 00 14 */	addi r4, r28, 0x14
/* 00007D08 00007DD4  4B FF 84 35 */	bl btlMovePos
/* 00007D0C 00007DD8  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 00007D10 00007DDC  38 03 FF FF */	subi r0, r3, 0x1
/* 00007D14 00007DE0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 00007D18 00007DE4  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 00007D1C 00007DE8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00007D20 00007DEC  41 81 00 24 */	bgt .L_00007D44
/* 00007D24 00007DF0  38 00 00 01 */	li r0, 0x1
/* 00007D28 00007DF4  90 1D 00 80 */	stw r0, 0x80(r29)
/* 00007D2C 00007DF8  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 00007D30 00007DFC  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 00007D34 00007E00  90 7C 00 0C */	stw r3, 0xc(r28)
/* 00007D38 00007E04  90 1C 00 10 */	stw r0, 0x10(r28)
/* 00007D3C 00007E08  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 00007D40 00007E0C  90 1C 00 14 */	stw r0, 0x14(r28)
.L_00007D44:
/* 00007D44 00007E10  3C 80 00 00 */	lis r4, float_900_las_000175b0@ha
/* 00007D48 00007E14  3C 60 00 00 */	lis r3, _disp_icon@ha
/* 00007D4C 00007E18  C0 24 00 00 */	lfs f1, float_900_las_000175b0@l(r4)
/* 00007D50 00007E1C  38 A3 00 00 */	addi r5, r3, _disp_icon@l
/* 00007D54 00007E20  7F A6 EB 78 */	mr r6, r29
/* 00007D58 00007E24  38 60 00 04 */	li r3, 0x4
/* 00007D5C 00007E28  38 80 00 01 */	li r4, 0x1
/* 00007D60 00007E2C  4B FF 83 DD */	bl dispEntry
/* 00007D64 00007E30  38 60 00 00 */	li r3, 0x0
.L_00007D68:
/* 00007D68 00007E34  E3 E1 00 A8 */	psq_l f31, 0xa8(r1), 0, qr0
/* 00007D6C 00007E38  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 00007D70 00007E3C  E3 C1 00 98 */	psq_l f30, 0x98(r1), 0, qr0
/* 00007D74 00007E40  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 00007D78 00007E44  E3 A1 00 88 */	psq_l f29, 0x88(r1), 0, qr0
/* 00007D7C 00007E48  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 00007D80 00007E4C  E3 81 00 78 */	psq_l f28, 0x78(r1), 0, qr0
/* 00007D84 00007E50  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 00007D88 00007E54  E3 61 00 68 */	psq_l f27, 0x68(r1), 0, qr0
/* 00007D8C 00007E58  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 00007D90 00007E5C  E3 41 00 58 */	psq_l f26, 0x58(r1), 0, qr0
/* 00007D94 00007E60  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 00007D98 00007E64  E3 21 00 48 */	psq_l f25, 0x48(r1), 0, qr0
/* 00007D9C 00007E68  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 00007DA0 00007E6C  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 00007DA4 00007E70  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 00007DA8 00007E74  7C 08 03 A6 */	mtlr r0
/* 00007DAC 00007E78  38 21 00 B0 */	addi r1, r1, 0xb0
/* 00007DB0 00007E7C  4E 80 00 20 */	blr
.endfn _icon_jump_icon

# .text:0x358 | 0x7DB4 | size: 0xE0
.fn party_cannot_use_command, local
/* 00007DB4 00007E80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00007DB8 00007E84  7C 08 02 A6 */	mflr r0
/* 00007DBC 00007E88  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007DC0 00007E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00007DC4 00007E90  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00007DC8 00007E94  7C 7F 1B 78 */	mr r31, r3
/* 00007DCC 00007E98  38 60 00 01 */	li r3, 0x1
/* 00007DD0 00007E9C  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00007DD4 00007EA0  4B FF 83 69 */	bl irand
/* 00007DD8 00007EA4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00007DDC 00007EA8  7C 7E 1B 78 */	mr r30, r3
/* 00007DE0 00007EAC  7F E3 FB 78 */	mr r3, r31
/* 00007DE4 00007EB0  83 84 00 00 */	lwz r28, 0x0(r4)
/* 00007DE8 00007EB4  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00007DEC 00007EB8  4B FF 83 51 */	bl evtGetValue
/* 00007DF0 00007EBC  7C 60 1B 78 */	mr r0, r3
/* 00007DF4 00007EC0  7F E3 FB 78 */	mr r3, r31
/* 00007DF8 00007EC4  7C 04 03 78 */	mr r4, r0
/* 00007DFC 00007EC8  3B 60 00 00 */	li r27, 0x0
/* 00007E00 00007ECC  4B FF 83 3D */	bl BattleTransID
/* 00007E04 00007ED0  7C 64 1B 78 */	mr r4, r3
/* 00007E08 00007ED4  7F A3 EB 78 */	mr r3, r29
/* 00007E0C 00007ED8  4B FF 83 31 */	bl BattleGetUnitPtr
/* 00007E10 00007EDC  2C 1E 00 01 */	cmpwi r30, 0x1
/* 00007E14 00007EE0  41 82 00 2C */	beq .L_00007E40
/* 00007E18 00007EE4  40 80 00 3C */	bge .L_00007E54
/* 00007E1C 00007EE8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00007E20 00007EEC  40 80 00 08 */	bge .L_00007E28
/* 00007E24 00007EF0  48 00 00 30 */	b .L_00007E54
.L_00007E28:
/* 00007E28 00007EF4  28 03 00 00 */	cmplwi r3, 0x0
/* 00007E2C 00007EF8  41 82 00 0C */	beq .L_00007E38
/* 00007E30 00007EFC  38 00 00 03 */	li r0, 0x3
/* 00007E34 00007F00  B0 03 01 3C */	sth r0, 0x13c(r3)
.L_00007E38:
/* 00007E38 00007F04  3B 60 01 58 */	li r27, 0x158
/* 00007E3C 00007F08  48 00 00 18 */	b .L_00007E54
.L_00007E40:
/* 00007E40 00007F0C  28 03 00 00 */	cmplwi r3, 0x0
/* 00007E44 00007F10  41 82 00 0C */	beq .L_00007E50
/* 00007E48 00007F14  38 00 00 03 */	li r0, 0x3
/* 00007E4C 00007F18  B0 03 01 3E */	sth r0, 0x13e(r3)
.L_00007E50:
/* 00007E50 00007F1C  3B 60 01 54 */	li r27, 0x154
.L_00007E54:
/* 00007E54 00007F20  3C 60 00 00 */	lis r3, cmd_disable_string@ha
/* 00007E58 00007F24  57 C0 10 3A */	slwi r0, r30, 2
/* 00007E5C 00007F28  38 83 00 00 */	addi r4, r3, cmd_disable_string@l
/* 00007E60 00007F2C  7F E3 FB 78 */	mr r3, r31
/* 00007E64 00007F30  7C A4 02 14 */	add r5, r4, r0
/* 00007E68 00007F34  7F 84 E3 78 */	mr r4, r28
/* 00007E6C 00007F38  80 05 00 0C */	lwz r0, 0xc(r5)
/* 00007E70 00007F3C  7F 65 DB 78 */	mr r5, r27
/* 00007E74 00007F40  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 00007E78 00007F44  4B FF 82 C5 */	bl evtSetValue
/* 00007E7C 00007F48  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00007E80 00007F4C  38 60 00 02 */	li r3, 0x2
/* 00007E84 00007F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00007E88 00007F54  7C 08 03 A6 */	mtlr r0
/* 00007E8C 00007F58  38 21 00 20 */	addi r1, r1, 0x20
/* 00007E90 00007F5C  4E 80 00 20 */	blr
.endfn party_cannot_use_command

# .text:0x438 | 0x7E94 | size: 0xC0
.fn mario_cannot_use_command, local
/* 00007E94 00007F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007E98 00007F64  7C 08 02 A6 */	mflr r0
/* 00007E9C 00007F68  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007EA0 00007F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007EA4 00007F70  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00007EA8 00007F74  7C 7E 1B 78 */	mr r30, r3
/* 00007EAC 00007F78  38 60 00 02 */	li r3, 0x2
/* 00007EB0 00007F7C  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00007EB4 00007F80  4B FF 82 89 */	bl irand
/* 00007EB8 00007F84  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 00007EBC 00007F88  2C 03 00 01 */	cmpwi r3, 0x1
/* 00007EC0 00007F8C  38 A0 00 00 */	li r5, 0x0
/* 00007EC4 00007F90  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00007EC8 00007F94  41 82 00 34 */	beq .L_00007EFC
/* 00007ECC 00007F98  40 80 00 10 */	bge .L_00007EDC
/* 00007ED0 00007F9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00007ED4 00007FA0  40 80 00 14 */	bge .L_00007EE8
/* 00007ED8 00007FA4  48 00 00 48 */	b .L_00007F20
.L_00007EDC:
/* 00007EDC 00007FA8  2C 03 00 03 */	cmpwi r3, 0x3
/* 00007EE0 00007FAC  40 80 00 40 */	bge .L_00007F20
/* 00007EE4 00007FB0  48 00 00 2C */	b .L_00007F10
.L_00007EE8:
/* 00007EE8 00007FB4  3C BF 00 02 */	addis r5, r31, 0x2
/* 00007EEC 00007FB8  38 00 00 03 */	li r0, 0x3
/* 00007EF0 00007FBC  90 05 90 50 */	stw r0, -0x6fb0(r5)
/* 00007EF4 00007FC0  38 A0 01 4E */	li r5, 0x14e
/* 00007EF8 00007FC4  48 00 00 28 */	b .L_00007F20
.L_00007EFC:
/* 00007EFC 00007FC8  3C BF 00 02 */	addis r5, r31, 0x2
/* 00007F00 00007FCC  38 00 00 03 */	li r0, 0x3
/* 00007F04 00007FD0  90 05 90 54 */	stw r0, -0x6fac(r5)
/* 00007F08 00007FD4  38 A0 01 51 */	li r5, 0x151
/* 00007F0C 00007FD8  48 00 00 14 */	b .L_00007F20
.L_00007F10:
/* 00007F10 00007FDC  3C BF 00 02 */	addis r5, r31, 0x2
/* 00007F14 00007FE0  38 00 00 03 */	li r0, 0x3
/* 00007F18 00007FE4  90 05 90 58 */	stw r0, -0x6fa8(r5)
/* 00007F1C 00007FE8  38 A0 01 54 */	li r5, 0x154
.L_00007F20:
/* 00007F20 00007FEC  3C C0 00 00 */	lis r6, cmd_disable_string@ha
/* 00007F24 00007FF0  54 60 10 3A */	slwi r0, r3, 2
/* 00007F28 00007FF4  38 C6 00 00 */	addi r6, r6, cmd_disable_string@l
/* 00007F2C 00007FF8  7F C3 F3 78 */	mr r3, r30
/* 00007F30 00007FFC  7C 06 00 2E */	lwzx r0, r6, r0
/* 00007F34 00008000  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 00007F38 00008004  4B FF 82 05 */	bl evtSetValue
/* 00007F3C 00008008  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00007F40 0000800C  38 60 00 02 */	li r3, 0x2
/* 00007F44 00008010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007F48 00008014  7C 08 03 A6 */	mtlr r0
/* 00007F4C 00008018  38 21 00 10 */	addi r1, r1, 0x10
/* 00007F50 0000801C  4E 80 00 20 */	blr
.endfn mario_cannot_use_command

# 0x00005748..0x00005B58 | size: 0x410
.rodata
.balign 8

# .rodata:0x0 | 0x5748 | size: 0xD
.obj str_btl_un_koopa_las_000171b0, local
	.string "btl_un_koopa"
.endobj str_btl_un_koopa_las_000171b0

# .rodata:0xD | 0x5755 | size: 0x3
.obj gap_03_00005755_rodata, global
.hidden gap_03_00005755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005755_rodata

# .rodata:0x10 | 0x5758 | size: 0x18
.obj str_SFX_BOSS_KOOPA_DAMAG_las_000171c0, local
	.string "SFX_BOSS_KOOPA_DAMAGED1"
.endobj str_SFX_BOSS_KOOPA_DAMAG_las_000171c0

# .rodata:0x28 | 0x5770 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_000171d8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_000171d8

# .rodata:0x3D | 0x5785 | size: 0x3
.obj gap_03_00005785_rodata, global
.hidden gap_03_00005785_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005785_rodata

# .rodata:0x40 | 0x5788 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_000171f0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_000171f0

# .rodata:0x54 | 0x579C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_00017204, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_00017204

# .rodata:0x6D | 0x57B5 | size: 0x3
.obj gap_03_000057B5_rodata, global
.hidden gap_03_000057B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000057B5_rodata

# .rodata:0x70 | 0x57B8 | size: 0x8
.obj str_KPA_N_3_las_00017220, local
	.string "KPA_N_3"
.endobj str_KPA_N_3_las_00017220

# .rodata:0x78 | 0x57C0 | size: 0x8
.obj str_KPA_Z_6_las_00017228, local
	.string "KPA_Z_6"
.endobj str_KPA_Z_6_las_00017228

# .rodata:0x80 | 0x57C8 | size: 0x8
.obj str_KPA_K_2_las_00017230, local
	.string "KPA_K_2"
.endobj str_KPA_K_2_las_00017230

# .rodata:0x88 | 0x57D0 | size: 0x8
.obj str_KPA_S_2_las_00017238, local
	.string "KPA_S_2"
.endobj str_KPA_S_2_las_00017238

# .rodata:0x90 | 0x57D8 | size: 0x8
.obj str_KPA_S_1_las_00017240, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_las_00017240

# .rodata:0x98 | 0x57E0 | size: 0x8
.obj str_KPA_Q_2_las_00017248, local
	.string "KPA_Q_2"
.endobj str_KPA_Q_2_las_00017248

# .rodata:0xA0 | 0x57E8 | size: 0x8
.obj str_KPA_D_1_las_00017250, local
	.string "KPA_D_1"
.endobj str_KPA_D_1_las_00017250

# .rodata:0xA8 | 0x57F0 | size: 0x8
.obj str_KPA_R_1_las_00017258, local
	.string "KPA_R_1"
.endobj str_KPA_R_1_las_00017258

# .rodata:0xB0 | 0x57F8 | size: 0x8
.obj str_KPA_W_1_las_00017260, local
	.string "KPA_W_1"
.endobj str_KPA_W_1_las_00017260

# .rodata:0xB8 | 0x5800 | size: 0x8
.obj str_KPA_T_1_las_00017268, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_las_00017268

# .rodata:0xC0 | 0x5808 | size: 0x8
.obj str_KPA_N_2_las_00017270, local
	.string "KPA_N_2"
.endobj str_KPA_N_2_las_00017270

# .rodata:0xC8 | 0x5810 | size: 0x8
.obj str_KPA_Z_5_las_00017278, local
	.string "KPA_Z_5"
.endobj str_KPA_Z_5_las_00017278

# .rodata:0xD0 | 0x5818 | size: 0x8
.obj str_KPA_K_1_las_00017280, local
	.string "KPA_K_1"
.endobj str_KPA_K_1_las_00017280

# .rodata:0xD8 | 0x5820 | size: 0x8
.obj str_KPA_X_1_las_00017288, local
	.string "KPA_X_1"
.endobj str_KPA_X_1_las_00017288

# .rodata:0xE0 | 0x5828 | size: 0x8
.obj str_KPA_S_8_las_00017290, local
	.string "KPA_S_8"
.endobj str_KPA_S_8_las_00017290

# .rodata:0xE8 | 0x5830 | size: 0x8
.obj str_KPA_D_4_las_00017298, local
	.string "KPA_D_4"
.endobj str_KPA_D_4_las_00017298

# .rodata:0xF0 | 0x5838 | size: 0x8
.obj str_KPA_T_9_las_000172a0, local
	.string "KPA_T_9"
.endobj str_KPA_T_9_las_000172a0

# .rodata:0xF8 | 0x5840 | size: 0x8
.obj str_KPA_Z_3_las_000172a8, local
	.string "KPA_Z_3"
.endobj str_KPA_Z_3_las_000172a8

# .rodata:0x100 | 0x5848 | size: 0x8
.obj str_c_koopa_las_000172b0, local
	.string "c_koopa"
.endobj str_c_koopa_las_000172b0

# .rodata:0x108 | 0x5850 | size: 0x16
.obj str_SFX_BOSS_KOOPA_MOVE1_las_000172b8, local
	.string "SFX_BOSS_KOOPA_MOVE1L"
.endobj str_SFX_BOSS_KOOPA_MOVE1_las_000172b8

# .rodata:0x11E | 0x5866 | size: 0x2
.obj gap_03_00005866_rodata, global
.hidden gap_03_00005866_rodata
	.2byte 0x0000
.endobj gap_03_00005866_rodata

# .rodata:0x120 | 0x5868 | size: 0x16
.obj str_SFX_BOSS_KOOPA_MOVE1_las_000172d0, local
	.string "SFX_BOSS_KOOPA_MOVE1R"
.endobj str_SFX_BOSS_KOOPA_MOVE1_las_000172d0

# .rodata:0x136 | 0x587E | size: 0x2
.obj gap_03_0000587E_rodata, global
.hidden gap_03_0000587E_rodata
	.2byte 0x0000
.endobj gap_03_0000587E_rodata

# .rodata:0x138 | 0x5880 | size: 0x19
.obj str_SFX_VOICE_KOOPA_LAUG_las_000172e8, local
	.string "SFX_VOICE_KOOPA_LAUGH2_1"
.endobj str_SFX_VOICE_KOOPA_LAUG_las_000172e8

# .rodata:0x151 | 0x5899 | size: 0x3
.obj gap_03_00005899_rodata, global
.hidden gap_03_00005899_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005899_rodata

# .rodata:0x154 | 0x589C | size: 0x8
.obj str_KPA_Y_2_las_00017304, local
	.string "KPA_Y_2"
.endobj str_KPA_Y_2_las_00017304

# .rodata:0x15C | 0x58A4 | size: 0xC
.obj str_stg8_las_96_las_0001730c, local
	.string "stg8_las_96"
.endobj str_stg8_las_96_las_0001730c

# .rodata:0x168 | 0x58B0 | size: 0xC
.obj str_stg8_las_97_las_00017318, local
	.string "stg8_las_97"
.endobj str_stg8_las_97_las_00017318

# .rodata:0x174 | 0x58BC | size: 0x1C
.obj str_SFX_VOICE_KOOPA_SATI_las_00017324, local
	.string "SFX_VOICE_KOOPA_SATIATED2_2"
.endobj str_SFX_VOICE_KOOPA_SATI_las_00017324

# .rodata:0x190 | 0x58D8 | size: 0x8
.obj str_KPA_D_2_las_00017340, local
	.string "KPA_D_2"
.endobj str_KPA_D_2_las_00017340

# .rodata:0x198 | 0x58E0 | size: 0x8
.obj str_KPA_T_8_las_00017348, local
	.string "KPA_T_8"
.endobj str_KPA_T_8_las_00017348

# .rodata:0x1A0 | 0x58E8 | size: 0x10
.obj str_stg8_las_100_02_las_00017350, local
	.string "stg8_las_100_02"
.endobj str_stg8_las_100_02_las_00017350

# .rodata:0x1B0 | 0x58F8 | size: 0x10
.obj str_stg8_las_100_04_las_00017360, local
	.string "stg8_las_100_04"
.endobj str_stg8_las_100_04_las_00017360

# .rodata:0x1C0 | 0x5908 | size: 0x8
.obj str_KPA_U_2_las_00017370, local
	.string "KPA_U_2"
.endobj str_KPA_U_2_las_00017370

# .rodata:0x1C8 | 0x5910 | size: 0x8
.obj str_KPA_U_3_las_00017378, local
	.string "KPA_U_3"
.endobj str_KPA_U_3_las_00017378

# .rodata:0x1D0 | 0x5918 | size: 0x8
.obj str_KPA_T_3_las_00017380, local
	.string "KPA_T_3"
.endobj str_KPA_T_3_las_00017380

# .rodata:0x1D8 | 0x5920 | size: 0x8
.obj str_KPA_S_4_las_00017388, local
	.string "KPA_S_4"
.endobj str_KPA_S_4_las_00017388

# .rodata:0x1E0 | 0x5928 | size: 0xD
.obj str_stg8_las_100_las_00017390, local
	.string "stg8_las_100"
.endobj str_stg8_las_100_las_00017390

# .rodata:0x1ED | 0x5935 | size: 0x3
.obj gap_03_00005935_rodata, global
.hidden gap_03_00005935_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005935_rodata

# .rodata:0x1F0 | 0x5938 | size: 0x15
.obj str_SFX_BOSS_KOOPA_JUMP1_las_000173a0, local
	.string "SFX_BOSS_KOOPA_JUMP1"
.endobj str_SFX_BOSS_KOOPA_JUMP1_las_000173a0

# .rodata:0x205 | 0x594D | size: 0x3
.obj gap_03_0000594D_rodata, global
.hidden gap_03_0000594D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000594D_rodata

# .rodata:0x208 | 0x5950 | size: 0x9
.obj str_KPA_A_2A_las_000173b8, local
	.string "KPA_A_2A"
.endobj str_KPA_A_2A_las_000173b8

# .rodata:0x211 | 0x5959 | size: 0x3
.obj gap_03_00005959_rodata, global
.hidden gap_03_00005959_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005959_rodata

# .rodata:0x214 | 0x595C | size: 0x9
.obj str_KPA_A_2B_las_000173c4, local
	.string "KPA_A_2B"
.endobj str_KPA_A_2B_las_000173c4

# .rodata:0x21D | 0x5965 | size: 0x3
.obj gap_03_00005965_rodata, global
.hidden gap_03_00005965_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005965_rodata

# .rodata:0x220 | 0x5968 | size: 0x9
.obj str_KPA_A_2C_las_000173d0, local
	.string "KPA_A_2C"
.endobj str_KPA_A_2C_las_000173d0

# .rodata:0x229 | 0x5971 | size: 0x3
.obj gap_03_00005971_rodata, global
.hidden gap_03_00005971_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005971_rodata

# .rodata:0x22C | 0x5974 | size: 0x9
.obj str_KPA_A_2D_las_000173dc, local
	.string "KPA_A_2D"
.endobj str_KPA_A_2D_las_000173dc

# .rodata:0x235 | 0x597D | size: 0x3
.obj gap_03_0000597D_rodata, global
.hidden gap_03_0000597D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000597D_rodata

# .rodata:0x238 | 0x5980 | size: 0x1B
.obj str_SFX_BOSS_KOOPA_HIP_A_las_000173e8, local
	.string "SFX_BOSS_KOOPA_HIP_ATTACK1"
.endobj str_SFX_BOSS_KOOPA_HIP_A_las_000173e8

# .rodata:0x253 | 0x599B | size: 0x1
.obj gap_03_0000599B_rodata, global
.hidden gap_03_0000599B_rodata
	.byte 0x00
.endobj gap_03_0000599B_rodata

# .rodata:0x254 | 0x599C | size: 0x9
.obj str_KPA_A_2E_las_00017404, local
	.string "KPA_A_2E"
.endobj str_KPA_A_2E_las_00017404

# .rodata:0x25D | 0x59A5 | size: 0x3
.obj gap_03_000059A5_rodata, global
.hidden gap_03_000059A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059A5_rodata

# .rodata:0x260 | 0x59A8 | size: 0x9
.obj str_KPA_A_3A_las_00017410, local
	.string "KPA_A_3A"
.endobj str_KPA_A_3A_las_00017410

# .rodata:0x269 | 0x59B1 | size: 0x3
.obj gap_03_000059B1_rodata, global
.hidden gap_03_000059B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059B1_rodata

# .rodata:0x26C | 0x59B4 | size: 0x15
.obj str_SFX_BOSS_KOOPA_BITE1_las_0001741c, local
	.string "SFX_BOSS_KOOPA_BITE1"
.endobj str_SFX_BOSS_KOOPA_BITE1_las_0001741c

# .rodata:0x281 | 0x59C9 | size: 0x3
.obj gap_03_000059C9_rodata, global
.hidden gap_03_000059C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059C9_rodata

# .rodata:0x284 | 0x59CC | size: 0x9
.obj str_KPA_A_3B_las_00017434, local
	.string "KPA_A_3B"
.endobj str_KPA_A_3B_las_00017434

# .rodata:0x28D | 0x59D5 | size: 0x3
.obj gap_03_000059D5_rodata, global
.hidden gap_03_000059D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059D5_rodata

# .rodata:0x290 | 0x59D8 | size: 0x15
.obj str_SFX_BOSS_KOOPA_BITE2_las_00017440, local
	.string "SFX_BOSS_KOOPA_BITE2"
.endobj str_SFX_BOSS_KOOPA_BITE2_las_00017440

# .rodata:0x2A5 | 0x59ED | size: 0x3
.obj gap_03_000059ED_rodata, global
.hidden gap_03_000059ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059ED_rodata

# .rodata:0x2A8 | 0x59F0 | size: 0x9
.obj str_KPA_A_3C_las_00017458, local
	.string "KPA_A_3C"
.endobj str_KPA_A_3C_las_00017458

# .rodata:0x2B1 | 0x59F9 | size: 0x3
.obj gap_03_000059F9_rodata, global
.hidden gap_03_000059F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059F9_rodata

# .rodata:0x2B4 | 0x59FC | size: 0x15
.obj str_SFX_BOSS_KOOPA_BITE3_las_00017464, local
	.string "SFX_BOSS_KOOPA_BITE3"
.endobj str_SFX_BOSS_KOOPA_BITE3_las_00017464

# .rodata:0x2C9 | 0x5A11 | size: 0x3
.obj gap_03_00005A11_rodata, global
.hidden gap_03_00005A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A11_rodata

# .rodata:0x2CC | 0x5A14 | size: 0x8
.obj str_KPA_A_4_las_0001747c, local
	.string "KPA_A_4"
.endobj str_KPA_A_4_las_0001747c

# .rodata:0x2D4 | 0x5A1C | size: 0x9
.obj str_KPA_A_1A_las_00017484, local
	.string "KPA_A_1A"
.endobj str_KPA_A_1A_las_00017484

# .rodata:0x2DD | 0x5A25 | size: 0x3
.obj gap_03_00005A25_rodata, global
.hidden gap_03_00005A25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A25_rodata

# .rodata:0x2E0 | 0x5A28 | size: 0x16
.obj str_SFX_VOICE_KOOPA_FIRE_las_00017490, local
	.string "SFX_VOICE_KOOPA_FIRE1"
.endobj str_SFX_VOICE_KOOPA_FIRE_las_00017490

# .rodata:0x2F6 | 0x5A3E | size: 0x2
.obj gap_03_00005A3E_rodata, global
.hidden gap_03_00005A3E_rodata
	.2byte 0x0000
.endobj gap_03_00005A3E_rodata

# .rodata:0x2F8 | 0x5A40 | size: 0x1C
.obj str_SFX_BOSS_KOOPA_FIRE__las_000174a8, local
	.string "SFX_BOSS_KOOPA_FIRE_BREATH1"
.endobj str_SFX_BOSS_KOOPA_FIRE__las_000174a8

# .rodata:0x314 | 0x5A5C | size: 0x9
.obj str_KPA_A_1B_las_000174c4, local
	.string "KPA_A_1B"
.endobj str_KPA_A_1B_las_000174c4

# .rodata:0x31D | 0x5A65 | size: 0x3
.obj gap_03_00005A65_rodata, global
.hidden gap_03_00005A65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A65_rodata

# .rodata:0x320 | 0x5A68 | size: 0x1
.obj zero_las_000174d0, local
	.byte 0x00
.endobj zero_las_000174d0

# .rodata:0x321 | 0x5A69 | size: 0x3
.obj gap_03_00005A69_rodata, global
.hidden gap_03_00005A69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A69_rodata

# .rodata:0x324 | 0x5A6C | size: 0xF
.obj str_gonbaba_breath_las_000174d4, local
	.string "gonbaba_breath"
.endobj str_gonbaba_breath_las_000174d4

# .rodata:0x333 | 0x5A7B | size: 0x1
.obj gap_03_00005A7B_rodata, global
.hidden gap_03_00005A7B_rodata
	.byte 0x00
.endobj gap_03_00005A7B_rodata

# .rodata:0x334 | 0x5A7C | size: 0x9
.obj str_KPA_A_1C_las_000174e4, local
	.string "KPA_A_1C"
.endobj str_KPA_A_1C_las_000174e4

# .rodata:0x33D | 0x5A85 | size: 0x3
.obj gap_03_00005A85_rodata, global
.hidden gap_03_00005A85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A85_rodata

# .rodata:0x340 | 0x5A88 | size: 0x9
.obj str_KPA_A_1D_las_000174f0, local
	.string "KPA_A_1D"
.endobj str_KPA_A_1D_las_000174f0

# .rodata:0x349 | 0x5A91 | size: 0x3
.obj gap_03_00005A91_rodata, global
.hidden gap_03_00005A91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A91_rodata

# .rodata:0x34C | 0x5A94 | size: 0x8
.obj str_KPA_T_2_las_000174fc, local
	.string "KPA_T_2"
.endobj str_KPA_T_2_las_000174fc

# .rodata:0x354 | 0x5A9C | size: 0x8
.obj str_KPA_S_3_las_00017504, local
	.string "KPA_S_3"
.endobj str_KPA_S_3_las_00017504

# .rodata:0x35C | 0x5AA4 | size: 0xC
.obj str_stg8_las_98_las_0001750c, local
	.string "stg8_las_98"
.endobj str_stg8_las_98_las_0001750c

# .rodata:0x368 | 0x5AB0 | size: 0xC
.obj str_stg8_las_99_las_00017518, local
	.string "stg8_las_99"
.endobj str_stg8_las_99_las_00017518

# .rodata:0x374 | 0x5ABC | size: 0x15
.obj str_btl_jump_cmd_disable_las_00017524, local
	.string "btl_jump_cmd_disable"
.endobj str_btl_jump_cmd_disable_las_00017524

# .rodata:0x389 | 0x5AD1 | size: 0x3
.obj gap_03_00005AD1_rodata, global
.hidden gap_03_00005AD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005AD1_rodata

# .rodata:0x38C | 0x5AD4 | size: 0x17
.obj str_btl_hammer_cmd_disab_las_0001753c, local
	.string "btl_hammer_cmd_disable"
.endobj str_btl_hammer_cmd_disab_las_0001753c

# .rodata:0x3A3 | 0x5AEB | size: 0x1
.obj gap_03_00005AEB_rodata, global
.hidden gap_03_00005AEB_rodata
	.byte 0x00
.endobj gap_03_00005AEB_rodata

# .rodata:0x3A4 | 0x5AEC | size: 0x15
.obj str_btl_item_cmd_disable_las_00017554, local
	.string "btl_item_cmd_disable"
.endobj str_btl_item_cmd_disable_las_00017554

# .rodata:0x3B9 | 0x5B01 | size: 0x3
.obj gap_03_00005B01_rodata, global
.hidden gap_03_00005B01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B01_rodata

# .rodata:0x3BC | 0x5B04 | size: 0x1B
.obj str_btl_party_tech_cmd_d_las_0001756c, local
	.string "btl_party_tech_cmd_disable"
.endobj str_btl_party_tech_cmd_d_las_0001756c

# .rodata:0x3D7 | 0x5B1F | size: 0x1
.obj gap_03_00005B1F_rodata, global
.hidden gap_03_00005B1F_rodata
	.byte 0x00
.endobj gap_03_00005B1F_rodata

# .rodata:0x3D8 | 0x5B20 | size: 0x1B
.obj str_btl_party_item_cmd_d_las_00017588, local
	.string "btl_party_item_cmd_disable"
.endobj str_btl_party_item_cmd_d_las_00017588
	.byte 0x00

# .rodata:0x3F4 | 0x5B3C | size: 0x4
.obj float_1_las_000175a4, local
	.float 1
.endobj float_1_las_000175a4

# .rodata:0x3F8 | 0x5B40 | size: 0x4
.obj float_0p5_las_000175a8, local
	.float 0.5
.endobj float_0p5_las_000175a8

# .rodata:0x3FC | 0x5B44 | size: 0x4
.obj zero_las_000175ac, local
	.float 0
.endobj zero_las_000175ac

# .rodata:0x400 | 0x5B48 | size: 0x4
.obj float_900_las_000175b0, local
	.float 900
.endobj float_900_las_000175b0
	.4byte 0x00000000

# .rodata:0x408 | 0x5B50 | size: 0x8
.obj double_to_int_las_000175b8, local
	.double 4503601774854144
.endobj double_to_int_las_000175b8

# 0x000249B8..0x00027310 | size: 0x2958
.data
.balign 8

# .data:0x0 | 0x249B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x249C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x249C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x249C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x249CC | size: 0x4
.obj gap_04_000249CC_data, global
.hidden gap_04_000249CC_data
	.4byte 0x00000000
.endobj gap_04_000249CC_data

# .data:0x18 | 0x249D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x249D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x249DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x249E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x249E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x249EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x249F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x249F4 | size: 0x4
.obj gap_04_000249F4_data, global
.hidden gap_04_000249F4_data
	.4byte 0x00000000
.endobj gap_04_000249F4_data

# .data:0x40 | 0x249F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x24A00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x24A04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x24A08 | size: 0xC4
.obj unit_boss_koopa_16_data_24A08, global
	.4byte 0x00000090
	.4byte str_btl_un_koopa_las_000171b0
	.4byte 0x00460000
	.4byte 0x01014400
	.4byte 0x00640032
	.4byte 0x00060056
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
	.4byte str_SFX_BOSS_KOOPA_DAMAG_las_000171c0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_000171d8
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_000171f0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_00017204
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_koopa_16_data_24A08

# .data:0x114 | 0x24ACC | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x24AD1 | size: 0x3
.obj gap_04_00024AD1_data, global
.hidden gap_04_00024AD1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00024AD1_data

# .data:0x11C | 0x24AD4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x24AD9 | size: 0x3
.obj gap_04_00024AD9_data, global
.hidden gap_04_00024AD9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00024AD9_data

# .data:0x124 | 0x24ADC | size: 0x16
.obj regist, local
	.4byte 0x1E1E1E64
	.4byte 0x28646419
	.4byte 0x644B644B
	.4byte 0x64501E00
	.4byte 0x00641E64
	.2byte 0x6405
.endobj regist

# .data:0x13A | 0x24AF2 | size: 0x2
.obj gap_04_00024AF2_data, global
.hidden gap_04_00024AF2_data
	.2byte 0x0000
.endobj gap_04_00024AF2_data

# .data:0x13C | 0x24AF4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KPA_N_3_las_00017220
	.4byte 0x00000002
	.4byte str_KPA_Z_6_las_00017228
	.4byte 0x00000009
	.4byte str_KPA_Z_6_las_00017228
	.4byte 0x00000005
	.4byte str_KPA_K_2_las_00017230
	.4byte 0x00000004
	.4byte str_KPA_S_2_las_00017238
	.4byte 0x00000003
	.4byte str_KPA_S_2_las_00017238
	.4byte 0x0000001C
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x0000001D
	.4byte str_KPA_Q_2_las_00017248
	.4byte 0x0000001E
	.4byte str_KPA_Q_2_las_00017248
	.4byte 0x0000001F
	.4byte str_KPA_D_1_las_00017250
	.4byte 0x00000027
	.4byte str_KPA_D_1_las_00017250
	.4byte 0x00000032
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x0000002A
	.4byte str_KPA_R_1_las_00017258
	.4byte 0x00000028
	.4byte str_KPA_W_1_las_00017260
	.4byte 0x00000038
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x00000039
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x00000041
	.4byte str_KPA_T_1_las_00017268
	.4byte 0x00000045
	.4byte str_KPA_S_1_las_00017240
.endobj pose_table

# .data:0x1CC | 0x24B84 | size: 0x90
.obj pose_table_forward_leaning, local
	.4byte 0x00000001
	.4byte str_KPA_N_2_las_00017270
	.4byte 0x00000002
	.4byte str_KPA_Z_5_las_00017278
	.4byte 0x00000009
	.4byte str_KPA_Z_5_las_00017278
	.4byte 0x00000005
	.4byte str_KPA_K_1_las_00017280
	.4byte 0x00000004
	.4byte str_KPA_X_1_las_00017288
	.4byte 0x00000003
	.4byte str_KPA_X_1_las_00017288
	.4byte 0x0000001C
	.4byte str_KPA_S_8_las_00017290
	.4byte 0x0000001D
	.4byte str_KPA_D_4_las_00017298
	.4byte 0x0000001E
	.4byte str_KPA_D_4_las_00017298
	.4byte 0x0000001F
	.4byte str_KPA_D_4_las_00017298
	.4byte 0x00000027
	.4byte str_KPA_D_4_las_00017298
	.4byte 0x00000032
	.4byte str_KPA_S_8_las_00017290
	.4byte 0x0000002A
	.4byte str_KPA_R_1_las_00017258
	.4byte 0x00000028
	.4byte str_KPA_W_1_las_00017260
	.4byte 0x00000038
	.4byte str_KPA_S_8_las_00017290
	.4byte 0x00000039
	.4byte str_KPA_S_8_las_00017290
	.4byte 0x00000041
	.4byte str_KPA_T_9_las_000172a0
	.4byte 0x00000045
	.4byte str_KPA_S_8_las_00017290
.endobj pose_table_forward_leaning

# .data:0x25C | 0x24C14 | size: 0x18
.obj pose_table_dead, local
	.4byte 0x0000001C
	.4byte str_KPA_Z_3_las_000172a8
	.4byte 0x00000027
	.4byte str_KPA_Z_3_las_000172a8
	.4byte 0x00000045
	.4byte str_KPA_Z_3_las_000172a8
.endobj pose_table_dead

# .data:0x274 | 0x24C2C | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x284 | 0x24C3C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_koopa_las_000171b0
	.4byte str_c_koopa_las_000172b0
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

# .data:0x2D0 | 0x24C88 | size: 0xC0
.obj weapon_koopa_hip_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_koopa_hip_attack

# .data:0x390 | 0x24D48 | size: 0xC0
.obj weapon_koopa_bite_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x450 | 0x24E08 | size: 0xC0
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

# .data:0x510 | 0x24EC8 | size: 0xC0
.obj weapon_koopa_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x5D0 | 0x24F88 | size: 0x30
.obj entry_kamec_obaba, local
	.4byte unit_boss_kamec_obaba_16_data_277E0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_kamec_obaba

# .data:0x600 | 0x24FB8 | size: 0x64
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

# .data:0x664 | 0x2501C | size: 0xA0
.obj kamec_obaba_zoom, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x0000006A
	.4byte 0x00000128
	.4byte 0x00000087
	.4byte 0x00000037
	.4byte 0xFFFFFE6E
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000022
	.4byte 0x00000128
	.4byte 0x0000008C
	.4byte 0x00000032
	.4byte 0xFFFFFE6E
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_obaba_zoom

# .data:0x704 | 0x250BC | size: 0x1F0
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
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFD050F89
	.4byte entry_kamec_obaba
	.4byte 0x00000000
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
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFD050F88
	.4byte 0xFE363C80
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
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_MOVE1_las_000172b8
	.4byte str_SFX_BOSS_KOOPA_MOVE1_las_000172d0
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_MOVE1_las_000172b8
	.4byte str_SFX_BOSS_KOOPA_MOVE1_las_000172d0
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x8F4 | 0x252AC | size: 0xDC
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
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_LAUG_las_000172e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_Y_2_las_00017304
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_96_las_0001730c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005E
	.4byte kamec_obaba_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_97_las_00017318
	.4byte 0x00000000
	.4byte 0xFD050F89
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

# .data:0x9D0 | 0x25388 | size: 0x58
.obj damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x00000021
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

# .data:0xA28 | 0x253E0 | size: 0x2B0
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
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x00010022
	.4byte 0xFD050F8B
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_SATI_las_00017324
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_D_2_las_00017340
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_T_8_las_00017348
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_Z_3_las_000172a8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_100_02_las_00017350
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_dead
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_D_1_las_00017250
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_D_1_las_00017250
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_100_04_las_00017360
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_SATI_las_00017324
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_D_2_las_00017340
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_dead
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000031
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

# .data:0xCD8 | 0x25690 | size: 0x218
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
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
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
	.4byte 0x0002005B
	.4byte btlevtcmd_PhaseEventStartDeclare
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_U_2_las_00017370
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_forward_leaning
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_U_3_las_00017378
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
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

# .data:0xEF0 | 0x258A8 | size: 0x178
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_U_3_las_00017378
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_T_3_las_00017380
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_S_4_las_00017388
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_100_las_00017390
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
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_U_2_las_00017370
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
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

# .data:0x1068 | 0x25A20 | size: 0x1B8
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
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000028
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
	.4byte 0x0001005E
	.4byte first_mario_damage_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1220 | 0x25BD8 | size: 0x6C0
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
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
	.4byte str_SFX_BOSS_KOOPA_JUMP1_las_000173a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2A_las_000173b8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2B_las_000173c4
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2C_las_000173d0
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_A_2D_las_000173dc
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
	.4byte str_SFX_BOSS_KOOPA_HIP_A_las_000173e8
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
	.4byte str_KPA_A_2E_las_00017404
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
	.4byte str_KPA_A_2E_las_00017404
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
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
	.4byte str_KPA_R_1_las_00017258
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
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x0001005E
	.4byte first_mario_damage_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hip_attack_event

# .data:0x18E0 | 0x26298 | size: 0x458
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
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
	.4byte str_KPA_R_1_las_00017258
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
	.4byte str_KPA_A_3A_las_00017410
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE1_las_0001741c
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
	.4byte str_KPA_A_3B_las_00017434
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE2_las_00017440
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
	.4byte str_KPA_A_3C_las_00017458
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
	.4byte str_KPA_A_3C_las_00017458
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
	.4byte str_KPA_R_1_las_00017258
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
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x0001005E
	.4byte first_mario_damage_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bite_attack_event

# .data:0x1D38 | 0x266F0 | size: 0x414
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
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
	.4byte str_KPA_R_1_las_00017258
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
	.4byte str_KPA_A_3A_las_00017410
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE1_las_0001741c
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
	.4byte str_KPA_A_3B_las_00017434
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_BITE3_las_00017464
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
	.4byte str_KPA_A_3C_las_00017458
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
	.4byte str_KPA_A_4_las_0001747c
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
	.4byte str_KPA_A_3C_las_00017458
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
	.4byte str_KPA_R_1_las_00017258
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
	.4byte 0x0001005E
	.4byte first_mario_damage_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj critical_bite_attack_event

# .data:0x214C | 0x26B04 | size: 0x590
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
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
	.4byte str_KPA_R_1_las_00017258
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
	.4byte str_KPA_A_1A_las_00017484
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_FIRE_las_00017490
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOOPA_FIRE__las_000174a8
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
	.4byte str_KPA_A_1B_las_000174c4
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
	.4byte zero_las_000174d0
	.4byte str_gonbaba_breath_las_000174d4
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
	.4byte str_KPA_A_1C_las_000174e4
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
	.4byte 0x0001005E
	.4byte first_mario_damage_check
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
	.4byte str_KPA_A_1D_las_000174f0
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
	.4byte str_KPA_R_1_las_00017258
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

# .data:0x26DC | 0x27094 | size: 0x84
.obj first_mario_damage_check, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x000000DE
	.4byte 0x0003005B
	.4byte btlevtcmd_GetTotalDamage
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_mario_damage_check

# .data:0x2760 | 0x27118 | size: 0x1C8
.obj first_mario_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte koopa_zoom
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_U_3_las_00017378
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_VOICE_KOOPA_LAUG_las_000172e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_Y_2_las_00017304
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_T_2_las_000174fc
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_KPA_S_3_las_00017504
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_98_las_0001750c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_S_1_las_00017240
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte kamec_obaba_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_99_las_00017518
	.4byte 0x00000000
	.4byte 0xFD050F89
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KPA_U_2_las_00017370
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_mario_damage_event

# .data:0x2928 | 0x272E0 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2940 | 0x272F8 | size: 0x18
.obj cmd_disable_string, local
	.4byte str_btl_jump_cmd_disable_las_00017524
	.4byte str_btl_hammer_cmd_disab_las_0001753c
	.4byte str_btl_item_cmd_disable_las_00017554
	.4byte str_btl_party_tech_cmd_d_las_0001756c
	.4byte str_btl_party_item_cmd_d_las_00017588
	.4byte 0x00000000
.endobj cmd_disable_string
