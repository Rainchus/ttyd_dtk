.include "macros.inc"
.file "eki_03.o"

# 0x000059E8..0x00005E08 | size: 0x420
.text
.balign 4

# .text:0x0 | 0x59E8 | size: 0x308
.fn sun_tev, local
/* 000059E8 00005AAC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 000059EC 00005AB0  7C 08 02 A6 */	mflr r0
/* 000059F0 00005AB4  90 01 01 04 */	stw r0, 0x104(r1)
/* 000059F4 00005AB8  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 000059F8 00005ABC  F3 E1 00 F8 */	psq_st f31, 0xf8(r1), 0, qr0
/* 000059FC 00005AC0  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 00005A00 00005AC4  F3 C1 00 E8 */	psq_st f30, 0xe8(r1), 0, qr0
/* 00005A04 00005AC8  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 00005A08 00005ACC  F3 A1 00 D8 */	psq_st f29, 0xd8(r1), 0, qr0
/* 00005A0C 00005AD0  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 00005A10 00005AD4  F3 81 00 C8 */	psq_st f28, 0xc8(r1), 0, qr0
/* 00005A14 00005AD8  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 00005A18 00005ADC  F3 61 00 B8 */	psq_st f27, 0xb8(r1), 0, qr0
/* 00005A1C 00005AE0  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 00005A20 00005AE4  F3 41 00 A8 */	psq_st f26, 0xa8(r1), 0, qr0
/* 00005A24 00005AE8  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 00005A28 00005AEC  F3 21 00 98 */	psq_st f25, 0x98(r1), 0, qr0
/* 00005A2C 00005AF0  BE 81 00 60 */	stmw r20, 0x60(r1)
/* 00005A30 00005AF4  3C 80 00 00 */	lis r4, ind_lp@ha
/* 00005A34 00005AF8  7C 74 1B 78 */	mr r20, r3
/* 00005A38 00005AFC  80 04 00 00 */	lwz r0, ind_lp@l(r4)
/* 00005A3C 00005B00  83 63 00 0C */	lwz r27, 0xc(r3)
/* 00005A40 00005B04  28 00 00 00 */	cmplwi r0, 0x0
/* 00005A44 00005B08  83 54 00 10 */	lwz r26, 0x10(r20)
/* 00005A48 00005B0C  83 34 00 14 */	lwz r25, 0x14(r20)
/* 00005A4C 00005B10  83 14 00 18 */	lwz r24, 0x18(r20)
/* 00005A50 00005B14  40 82 00 2C */	bne .L_00005A7C
/* 00005A54 00005B18  38 60 00 40 */	li r3, 0x40
/* 00005A58 00005B1C  38 80 00 40 */	li r4, 0x40
/* 00005A5C 00005B20  38 A0 00 03 */	li r5, 0x3
/* 00005A60 00005B24  38 C0 00 00 */	li r6, 0x0
/* 00005A64 00005B28  38 E0 00 00 */	li r7, 0x0
/* 00005A68 00005B2C  4B FF A5 99 */	bl GXGetTexBufferSize
/* 00005A6C 00005B30  38 80 00 01 */	li r4, 0x1
/* 00005A70 00005B34  4B FF A5 91 */	bl smartAlloc
/* 00005A74 00005B38  3C 80 00 00 */	lis r4, ind_lp@ha
/* 00005A78 00005B3C  90 64 00 00 */	stw r3, ind_lp@l(r4)
.L_00005A7C:
/* 00005A7C 00005B40  3C 60 00 00 */	lis r3, ind_lp@ha
/* 00005A80 00005B44  3D 20 00 00 */	lis r9, float_31p416_eki_000091f8@ha
/* 00005A84 00005B48  81 63 00 00 */	lwz r11, ind_lp@l(r3)
/* 00005A88 00005B4C  3D 00 00 00 */	lis r8, double_to_int_eki_00009218@ha
/* 00005A8C 00005B50  39 49 00 00 */	addi r10, r9, float_31p416_eki_000091f8@l
/* 00005A90 00005B54  3C C0 00 00 */	lis r6, double_to_int_mask_eki_00009220@ha
/* 00005A94 00005B58  3C A0 00 00 */	lis r5, float_0p125_eki_00009200@ha
/* 00005A98 00005B5C  3C 80 00 00 */	lis r4, float_3_eki_00009208@ha
/* 00005A9C 00005B60  3C 60 00 00 */	lis r3, float_128_eki_00009204@ha
/* 00005AA0 00005B64  39 28 00 00 */	addi r9, r8, double_to_int_eki_00009218@l
/* 00005AA4 00005B68  3C E0 00 00 */	lis r7, float_0p015625_eki_000091fc@ha
/* 00005AA8 00005B6C  82 EB 00 00 */	lwz r23, 0x0(r11)
/* 00005AAC 00005B70  39 07 00 00 */	addi r8, r7, float_0p015625_eki_000091fc@l
/* 00005AB0 00005B74  C3 2A 00 00 */	lfs f25, 0x0(r10)
/* 00005AB4 00005B78  3C E0 00 00 */	lis r7, gp@ha
/* 00005AB8 00005B7C  CB 49 00 00 */	lfd f26, 0x0(r9)
/* 00005ABC 00005B80  C3 68 00 00 */	lfs f27, 0x0(r8)
/* 00005AC0 00005B84  3B C7 00 00 */	addi r30, r7, gp@l
/* 00005AC4 00005B88  CB 86 00 00 */	lfd f28, double_to_int_mask_eki_00009220@l(r6)
/* 00005AC8 00005B8C  3A C0 00 00 */	li r22, 0x0
/* 00005ACC 00005B90  C3 A5 00 00 */	lfs f29, float_0p125_eki_00009200@l(r5)
/* 00005AD0 00005B94  3F A0 43 30 */	lis r29, 0x4330
/* 00005AD4 00005B98  C3 C4 00 00 */	lfs f30, float_3_eki_00009208@l(r4)
/* 00005AD8 00005B9C  C3 E3 00 00 */	lfs f31, float_128_eki_00009204@l(r3)
.L_00005ADC:
/* 00005ADC 00005BA0  56 C0 F0 02 */	slwi r0, r22, 30
/* 00005AE0 00005BA4  56 C3 0F FE */	srwi r3, r22, 31
/* 00005AE4 00005BA8  7E C4 16 70 */	srawi r4, r22, 2
/* 00005AE8 00005BAC  3A A0 00 00 */	li r21, 0x0
/* 00005AEC 00005BB0  7C 03 00 50 */	subf r0, r3, r0
/* 00005AF0 00005BB4  7C 84 01 94 */	addze r4, r4
/* 00005AF4 00005BB8  54 00 10 3E */	rotlwi r0, r0, 2
/* 00005AF8 00005BBC  7F 80 1A 14 */	add r28, r0, r3
/* 00005AFC 00005BC0  54 9F 28 34 */	slwi r31, r4, 5
.L_00005B00:
/* 00005B00 00005BC4  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 00005B04 00005BC8  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 00005B08 00005BCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 00005B0C 00005BD0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 00005B10 00005BD4  93 A1 00 40 */	stw r29, 0x40(r1)
/* 00005B14 00005BD8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 00005B18 00005BDC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 00005B1C 00005BE0  93 A1 00 48 */	stw r29, 0x48(r1)
/* 00005B20 00005BE4  EC 20 D0 28 */	fsubs f1, f0, f26
/* 00005B24 00005BE8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 00005B28 00005BEC  EC 00 E0 28 */	fsubs f0, f0, f28
/* 00005B2C 00005BF0  EC 39 00 72 */	fmuls f1, f25, f1
/* 00005B30 00005BF4  EC 00 07 72 */	fmuls f0, f0, f29
/* 00005B34 00005BF8  EC 21 06 F8 */	fmsubs f1, f1, f27, f0
/* 00005B38 00005BFC  4B FF A4 C9 */	bl sin
/* 00005B3C 00005C00  FC 00 08 18 */	frsp f0, f1
/* 00005B40 00005C04  7E A0 16 70 */	srawi r0, r21, 2
/* 00005B44 00005C08  7C 80 01 94 */	addze r4, r0
/* 00005B48 00005C0C  56 A3 0F FE */	srwi r3, r21, 31
/* 00005B4C 00005C10  56 A0 F0 02 */	slwi r0, r21, 30
/* 00005B50 00005C14  3A B5 00 01 */	addi r21, r21, 0x1
/* 00005B54 00005C18  EC 1E F8 3A */	fmadds f0, f30, f0, f31
/* 00005B58 00005C1C  7C 03 00 50 */	subf r0, r3, r0
/* 00005B5C 00005C20  54 00 10 3E */	rotlwi r0, r0, 2
/* 00005B60 00005C24  54 84 48 2C */	slwi r4, r4, 9
/* 00005B64 00005C28  7C 00 1A 14 */	add r0, r0, r3
/* 00005B68 00005C2C  2C 15 00 40 */	cmpwi r21, 0x40
/* 00005B6C 00005C30  FC 00 00 1E */	fctiwz f0, f0
/* 00005B70 00005C34  54 00 10 3A */	slwi r0, r0, 2
/* 00005B74 00005C38  7C 1C 02 14 */	add r0, r28, r0
/* 00005B78 00005C3C  7C 9F 22 14 */	add r4, r31, r4
/* 00005B7C 00005C40  54 03 08 3C */	slwi r3, r0, 1
/* 00005B80 00005C44  7C 84 1A 14 */	add r4, r4, r3
/* 00005B84 00005C48  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 00005B88 00005C4C  7C 97 22 14 */	add r4, r23, r4
/* 00005B8C 00005C50  38 00 00 80 */	li r0, 0x80
/* 00005B90 00005C54  80 61 00 54 */	lwz r3, 0x54(r1)
/* 00005B94 00005C58  98 64 00 00 */	stb r3, 0x0(r4)
/* 00005B98 00005C5C  98 04 00 01 */	stb r0, 0x1(r4)
/* 00005B9C 00005C60  41 80 FF 64 */	blt .L_00005B00
/* 00005BA0 00005C64  3A D6 00 01 */	addi r22, r22, 0x1
/* 00005BA4 00005C68  2C 16 00 40 */	cmpwi r22, 0x40
/* 00005BA8 00005C6C  41 80 FF 34 */	blt .L_00005ADC
/* 00005BAC 00005C70  7E E3 BB 78 */	mr r3, r23
/* 00005BB0 00005C74  38 80 20 00 */	li r4, 0x2000
/* 00005BB4 00005C78  4B FF A4 4D */	bl DCFlushRange
/* 00005BB8 00005C7C  7E E4 BB 78 */	mr r4, r23
/* 00005BBC 00005C80  38 61 00 20 */	addi r3, r1, 0x20
/* 00005BC0 00005C84  38 A0 00 40 */	li r5, 0x40
/* 00005BC4 00005C88  38 C0 00 40 */	li r6, 0x40
/* 00005BC8 00005C8C  38 E0 00 03 */	li r7, 0x3
/* 00005BCC 00005C90  39 00 00 01 */	li r8, 0x1
/* 00005BD0 00005C94  39 20 00 01 */	li r9, 0x1
/* 00005BD4 00005C98  39 40 00 00 */	li r10, 0x0
/* 00005BD8 00005C9C  4B FF A4 29 */	bl GXInitTexObj
/* 00005BDC 00005CA0  3C 80 00 00 */	lis r4, zero_eki_0000920c@ha
/* 00005BE0 00005CA4  38 61 00 20 */	addi r3, r1, 0x20
/* 00005BE4 00005CA8  38 A4 00 00 */	addi r5, r4, zero_eki_0000920c@l
/* 00005BE8 00005CAC  38 80 00 00 */	li r4, 0x0
/* 00005BEC 00005CB0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00005BF0 00005CB4  38 A0 00 00 */	li r5, 0x0
/* 00005BF4 00005CB8  38 C0 00 00 */	li r6, 0x0
/* 00005BF8 00005CBC  38 E0 00 00 */	li r7, 0x0
/* 00005BFC 00005CC0  FC 40 08 90 */	fmr f2, f1
/* 00005C00 00005CC4  39 00 00 00 */	li r8, 0x0
/* 00005C04 00005CC8  FC 60 08 90 */	fmr f3, f1
/* 00005C08 00005CCC  4B FF A3 F9 */	bl GXInitTexObjLOD
/* 00005C0C 00005CD0  7F 44 D3 78 */	mr r4, r26
/* 00005C10 00005CD4  38 61 00 20 */	addi r3, r1, 0x20
/* 00005C14 00005CD8  4B FF A3 ED */	bl GXLoadTexObj
/* 00005C18 00005CDC  3C 80 00 00 */	lis r4, float_0p5_eki_00009210@ha
/* 00005C1C 00005CE0  3C 60 00 00 */	lis r3, zero_eki_0000920c@ha
/* 00005C20 00005CE4  38 A4 00 00 */	addi r5, r4, float_0p5_eki_00009210@l
/* 00005C24 00005CE8  C0 03 00 00 */	lfs f0, zero_eki_0000920c@l(r3)
/* 00005C28 00005CEC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00005C2C 00005CF0  38 81 00 08 */	addi r4, r1, 0x8
/* 00005C30 00005CF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00005C34 00005CF8  38 60 00 01 */	li r3, 0x1
/* 00005C38 00005CFC  38 A0 00 01 */	li r5, 0x1
/* 00005C3C 00005D00  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00005C40 00005D04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00005C44 00005D08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00005C48 00005D0C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 00005C4C 00005D10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00005C50 00005D14  4B FF A3 B1 */	bl GXSetIndTexMtx
/* 00005C54 00005D18  7F 03 C3 78 */	mr r3, r24
/* 00005C58 00005D1C  7F 45 D3 78 */	mr r5, r26
/* 00005C5C 00005D20  38 80 00 00 */	li r4, 0x0
/* 00005C60 00005D24  4B FF A3 A1 */	bl GXSetIndTexOrder
/* 00005C64 00005D28  7F 03 C3 78 */	mr r3, r24
/* 00005C68 00005D2C  38 80 00 00 */	li r4, 0x0
/* 00005C6C 00005D30  38 A0 00 00 */	li r5, 0x0
/* 00005C70 00005D34  4B FF A3 91 */	bl GXSetIndTexCoordScale
/* 00005C74 00005D38  7F 04 C3 78 */	mr r4, r24
/* 00005C78 00005D3C  38 60 00 00 */	li r3, 0x0
/* 00005C7C 00005D40  38 A0 00 01 */	li r5, 0x1
/* 00005C80 00005D44  38 C0 00 00 */	li r6, 0x0
/* 00005C84 00005D48  38 E0 00 01 */	li r7, 0x1
/* 00005C88 00005D4C  4B FF A3 79 */	bl GXSetTevIndWarp
/* 00005C8C 00005D50  93 74 00 0C */	stw r27, 0xc(r20)
/* 00005C90 00005D54  38 78 00 01 */	addi r3, r24, 0x1
/* 00005C94 00005D58  38 1A 00 01 */	addi r0, r26, 0x1
/* 00005C98 00005D5C  93 34 00 14 */	stw r25, 0x14(r20)
/* 00005C9C 00005D60  90 74 00 18 */	stw r3, 0x18(r20)
/* 00005CA0 00005D64  90 14 00 10 */	stw r0, 0x10(r20)
/* 00005CA4 00005D68  E3 E1 00 F8 */	psq_l f31, 0xf8(r1), 0, qr0
/* 00005CA8 00005D6C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 00005CAC 00005D70  E3 C1 00 E8 */	psq_l f30, 0xe8(r1), 0, qr0
/* 00005CB0 00005D74  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 00005CB4 00005D78  E3 A1 00 D8 */	psq_l f29, 0xd8(r1), 0, qr0
/* 00005CB8 00005D7C  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 00005CBC 00005D80  E3 81 00 C8 */	psq_l f28, 0xc8(r1), 0, qr0
/* 00005CC0 00005D84  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 00005CC4 00005D88  E3 61 00 B8 */	psq_l f27, 0xb8(r1), 0, qr0
/* 00005CC8 00005D8C  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 00005CCC 00005D90  E3 41 00 A8 */	psq_l f26, 0xa8(r1), 0, qr0
/* 00005CD0 00005D94  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 00005CD4 00005D98  E3 21 00 98 */	psq_l f25, 0x98(r1), 0, qr0
/* 00005CD8 00005D9C  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 00005CDC 00005DA0  BA 81 00 60 */	lmw r20, 0x60(r1)
/* 00005CE0 00005DA4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 00005CE4 00005DA8  7C 08 03 A6 */	mtlr r0
/* 00005CE8 00005DAC  38 21 01 00 */	addi r1, r1, 0x100
/* 00005CEC 00005DB0  4E 80 00 20 */	blr
.endfn sun_tev

# .text:0x308 | 0x5CF0 | size: 0x118
.fn test_glare, local
/* 00005CF0 00005DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005CF4 00005DB8  7C 08 02 A6 */	mflr r0
/* 00005CF8 00005DBC  3C 60 00 00 */	lis r3, str_sun_eki_00009100@ha
/* 00005CFC 00005DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005D00 00005DC4  38 63 00 00 */	addi r3, r3, str_sun_eki_00009100@l
/* 00005D04 00005DC8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005D08 00005DCC  7C 9E 23 78 */	mr r30, r4
/* 00005D0C 00005DD0  4B FF A2 F5 */	bl mapGetMapObj
/* 00005D10 00005DD4  7C 7F 1B 78 */	mr r31, r3
/* 00005D14 00005DD8  4B FF A2 ED */	bl marioGetPtr
/* 00005D18 00005DDC  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00005D1C 00005DE0  41 82 00 18 */	beq .L_00005D34
/* 00005D20 00005DE4  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00005D24 00005DE8  38 60 00 00 */	li r3, 0x0
/* 00005D28 00005DEC  64 00 20 00 */	oris r0, r0, 0x2000
/* 00005D2C 00005DF0  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00005D30 00005DF4  48 00 00 C4 */	b .L_00005DF4
.L_00005D34:
/* 00005D34 00005DF8  A0 7F 00 EC */	lhz r3, 0xec(r31)
/* 00005D38 00005DFC  28 03 03 FF */	cmplwi r3, 0x3ff
/* 00005D3C 00005E00  41 82 00 28 */	beq .L_00005D64
/* 00005D40 00005E04  A0 9F 00 EE */	lhz r4, 0xee(r31)
/* 00005D44 00005E08  28 04 03 FF */	cmplwi r4, 0x3ff
/* 00005D48 00005E0C  41 82 00 1C */	beq .L_00005D64
/* 00005D4C 00005E10  A0 DF 00 F0 */	lhz r6, 0xf0(r31)
/* 00005D50 00005E14  28 06 03 FF */	cmplwi r6, 0x3ff
/* 00005D54 00005E18  41 82 00 10 */	beq .L_00005D64
/* 00005D58 00005E1C  A0 FF 00 F2 */	lhz r7, 0xf2(r31)
/* 00005D5C 00005E20  28 07 03 FF */	cmplwi r7, 0x3ff
/* 00005D60 00005E24  40 82 00 20 */	bne .L_00005D80
.L_00005D64:
/* 00005D64 00005E28  38 60 00 00 */	li r3, 0x0
/* 00005D68 00005E2C  38 80 00 00 */	li r4, 0x0
/* 00005D6C 00005E30  38 A0 00 00 */	li r5, 0x0
/* 00005D70 00005E34  38 C0 00 00 */	li r6, 0x0
/* 00005D74 00005E38  38 E0 00 00 */	li r7, 0x0
/* 00005D78 00005E3C  4B FF A2 89 */	bl envGlareFilter
/* 00005D7C 00005E40  48 00 00 74 */	b .L_00005DF0
.L_00005D80:
/* 00005D80 00005E44  28 03 00 00 */	cmplwi r3, 0x0
/* 00005D84 00005E48  40 82 00 38 */	bne .L_00005DBC
/* 00005D88 00005E4C  28 04 00 00 */	cmplwi r4, 0x0
/* 00005D8C 00005E50  40 82 00 30 */	bne .L_00005DBC
/* 00005D90 00005E54  28 06 00 00 */	cmplwi r6, 0x0
/* 00005D94 00005E58  40 82 00 28 */	bne .L_00005DBC
/* 00005D98 00005E5C  28 07 00 00 */	cmplwi r7, 0x0
/* 00005D9C 00005E60  40 82 00 20 */	bne .L_00005DBC
/* 00005DA0 00005E64  38 60 00 00 */	li r3, 0x0
/* 00005DA4 00005E68  38 80 00 00 */	li r4, 0x0
/* 00005DA8 00005E6C  38 A0 00 00 */	li r5, 0x0
/* 00005DAC 00005E70  38 C0 00 00 */	li r6, 0x0
/* 00005DB0 00005E74  38 E0 00 00 */	li r7, 0x0
/* 00005DB4 00005E78  4B FF A2 4D */	bl envGlareFilter
/* 00005DB8 00005E7C  48 00 00 38 */	b .L_00005DF0
.L_00005DBC:
/* 00005DBC 00005E80  38 84 FF CE */	subi r4, r4, 0x32
/* 00005DC0 00005E84  38 A3 FF CE */	subi r5, r3, 0x32
/* 00005DC4 00005E88  38 67 00 32 */	addi r3, r7, 0x32
/* 00005DC8 00005E8C  38 06 00 32 */	addi r0, r6, 0x32
/* 00005DCC 00005E90  7C 84 07 34 */	extsh r4, r4
/* 00005DD0 00005E94  7C A5 07 34 */	extsh r5, r5
/* 00005DD4 00005E98  7C 66 07 34 */	extsh r6, r3
/* 00005DD8 00005E9C  7C 07 07 34 */	extsh r7, r0
/* 00005DDC 00005EA0  38 60 00 01 */	li r3, 0x1
/* 00005DE0 00005EA4  4B FF A2 21 */	bl envGlareFilter
/* 00005DE4 00005EA8  3C 60 00 00 */	lis r3, float_0p998_eki_00009228@ha
/* 00005DE8 00005EAC  C0 23 00 00 */	lfs f1, float_0p998_eki_00009228@l(r3)
/* 00005DEC 00005EB0  4B FF A2 15 */	bl envGlareFilterZ
.L_00005DF0:
/* 00005DF0 00005EB4  38 60 00 00 */	li r3, 0x0
.L_00005DF4:
/* 00005DF4 00005EB8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005DF8 00005EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005DFC 00005EC0  7C 08 03 A6 */	mtlr r0
/* 00005E00 00005EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 00005E04 00005EC8  4E 80 00 20 */	blr
.endfn test_glare

# 0x00000838..0x00000A50 | size: 0x218
.rodata
.balign 8

# .rodata:0x0 | 0x838 | size: 0x7
.obj str_door_1_eki_00009018, local
	.string "door_1"
.endobj str_door_1_eki_00009018

# .rodata:0x7 | 0x83F | size: 0x1
.obj gap_03_0000083F_rodata, global
.hidden gap_03_0000083F_rodata
	.byte 0x00
.endobj gap_03_0000083F_rodata

# .rodata:0x8 | 0x840 | size: 0x7
.obj str_door_2_eki_00009020, local
	.string "door_2"
.endobj str_door_2_eki_00009020

# .rodata:0xF | 0x847 | size: 0x1
.obj gap_03_00000847_rodata, global
.hidden gap_03_00000847_rodata
	.byte 0x00
.endobj gap_03_00000847_rodata

# .rodata:0x10 | 0x848 | size: 0x9
.obj str_w_bero_1_eki_00009028, local
	.string "w_bero_1"
.endobj str_w_bero_1_eki_00009028

# .rodata:0x19 | 0x851 | size: 0x3
.obj gap_03_00000851_rodata, global
.hidden gap_03_00000851_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000851_rodata

# .rodata:0x1C | 0x854 | size: 0x7
.obj str_eki_01_eki_00009034, local
	.string "eki_01"
.endobj str_eki_01_eki_00009034

# .rodata:0x23 | 0x85B | size: 0x1
.obj gap_03_0000085B_rodata, global
.hidden gap_03_0000085B_rodata
	.byte 0x00
.endobj gap_03_0000085B_rodata

# .rodata:0x24 | 0x85C | size: 0x7
.obj str_e_bero_eki_0000903c, local
	.string "e_bero"
.endobj str_e_bero_eki_0000903c

# .rodata:0x2B | 0x863 | size: 0x1
.obj gap_03_00000863_rodata, global
.hidden gap_03_00000863_rodata
	.byte 0x00
.endobj gap_03_00000863_rodata

# .rodata:0x2C | 0x864 | size: 0x9
.obj str_w_bero_2_eki_00009044, local
	.string "w_bero_2"
.endobj str_w_bero_2_eki_00009044

# .rodata:0x35 | 0x86D | size: 0x3
.obj gap_03_0000086D_rodata, global
.hidden gap_03_0000086D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000086D_rodata

# .rodata:0x38 | 0x870 | size: 0x7
.obj str_eki_04_eki_00009050, local
	.string "eki_04"
.endobj str_eki_04_eki_00009050

# .rodata:0x3F | 0x877 | size: 0x1
.obj gap_03_00000877_rodata, global
.hidden gap_03_00000877_rodata
	.byte 0x00
.endobj gap_03_00000877_rodata

# .rodata:0x40 | 0x878 | size: 0x7
.obj str_a_kabe_eki_00009058, local
	.string "a_kabe"
.endobj str_a_kabe_eki_00009058

# .rodata:0x47 | 0x87F | size: 0x1
.obj gap_03_0000087F_rodata, global
.hidden gap_03_0000087F_rodata
	.byte 0x00
.endobj gap_03_0000087F_rodata

# .rodata:0x48 | 0x880 | size: 0xA
.obj str_a_kami_13_eki_00009060, local
	.string "a_kami_13"
.endobj str_a_kami_13_eki_00009060

# .rodata:0x52 | 0x88A | size: 0x2
.obj gap_03_0000088A_rodata, global
.hidden gap_03_0000088A_rodata
	.2byte 0x0000
.endobj gap_03_0000088A_rodata

# .rodata:0x54 | 0x88C | size: 0xA
.obj str_a_kami_14_eki_0000906c, local
	.string "a_kami_14"
.endobj str_a_kami_14_eki_0000906c

# .rodata:0x5E | 0x896 | size: 0x2
.obj gap_03_00000896_rodata, global
.hidden gap_03_00000896_rodata
	.2byte 0x0000
.endobj gap_03_00000896_rodata

# .rodata:0x60 | 0x898 | size: 0xA
.obj str_a_kami_15_eki_00009078, local
	.string "a_kami_15"
.endobj str_a_kami_15_eki_00009078

# .rodata:0x6A | 0x8A2 | size: 0x2
.obj gap_03_000008A2_rodata, global
.hidden gap_03_000008A2_rodata
	.2byte 0x0000
.endobj gap_03_000008A2_rodata

# .rodata:0x6C | 0x8A4 | size: 0x9
.obj str_a_kami_6_eki_00009084, local
	.string "a_kami_6"
.endobj str_a_kami_6_eki_00009084

# .rodata:0x75 | 0x8AD | size: 0x3
.obj gap_03_000008AD_rodata, global
.hidden gap_03_000008AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008AD_rodata

# .rodata:0x78 | 0x8B0 | size: 0x9
.obj str_a_kami_7_eki_00009090, local
	.string "a_kami_7"
.endobj str_a_kami_7_eki_00009090

# .rodata:0x81 | 0x8B9 | size: 0x3
.obj gap_03_000008B9_rodata, global
.hidden gap_03_000008B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008B9_rodata

# .rodata:0x84 | 0x8BC | size: 0x9
.obj str_a_kami_8_eki_0000909c, local
	.string "a_kami_8"
.endobj str_a_kami_8_eki_0000909c

# .rodata:0x8D | 0x8C5 | size: 0x3
.obj gap_03_000008C5_rodata, global
.hidden gap_03_000008C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008C5_rodata

# .rodata:0x90 | 0x8C8 | size: 0x9
.obj str_a_kami_9_eki_000090a8, local
	.string "a_kami_9"
.endobj str_a_kami_9_eki_000090a8

# .rodata:0x99 | 0x8D1 | size: 0x3
.obj gap_03_000008D1_rodata, global
.hidden gap_03_000008D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008D1_rodata

# .rodata:0x9C | 0x8D4 | size: 0x9
.obj str_a_kami_5_eki_000090b4, local
	.string "a_kami_5"
.endobj str_a_kami_5_eki_000090b4

# .rodata:0xA5 | 0x8DD | size: 0x3
.obj gap_03_000008DD_rodata, global
.hidden gap_03_000008DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008DD_rodata

# .rodata:0xA8 | 0x8E0 | size: 0xE
.obj str_BGM_STG6_HOM1_eki_000090c0, local
	.string "BGM_STG6_HOM1"
.endobj str_BGM_STG6_HOM1_eki_000090c0

# .rodata:0xB6 | 0x8EE | size: 0x2
.obj gap_03_000008EE_rodata, global
.hidden gap_03_000008EE_rodata
	.2byte 0x0000
.endobj gap_03_000008EE_rodata

# .rodata:0xB8 | 0x8F0 | size: 0xE
.obj str_ENV_STG6_EKI4_eki_000090d0, local
	.string "ENV_STG6_EKI4"
.endobj str_ENV_STG6_EKI4_eki_000090d0

# .rodata:0xC6 | 0x8FE | size: 0x2
.obj gap_03_000008FE_rodata, global
.hidden gap_03_000008FE_rodata
	.2byte 0x0000
.endobj gap_03_000008FE_rodata

# .rodata:0xC8 | 0x900 | size: 0x5
.obj str_item_eki_000090e0, local
	.string "item"
.endobj str_item_eki_000090e0

# .rodata:0xCD | 0x905 | size: 0x3
.obj gap_03_00000905_rodata, global
.hidden gap_03_00000905_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000905_rodata

# .rodata:0xD0 | 0x908 | size: 0x7
.obj str_pblk01_eki_000090e8, local
	.string "pblk01"
.endobj str_pblk01_eki_000090e8

# .rodata:0xD7 | 0x90F | size: 0x1
.obj gap_03_0000090F_rodata, global
.hidden gap_03_0000090F_rodata
	.byte 0x00
.endobj gap_03_0000090F_rodata

# .rodata:0xD8 | 0x910 | size: 0x6
.obj str_blk01_eki_000090f0, local
	.string "blk01"
.endobj str_blk01_eki_000090f0

# .rodata:0xDE | 0x916 | size: 0x2
.obj gap_03_00000916_rodata, global
.hidden gap_03_00000916_rodata
	.2byte 0x0000
.endobj gap_03_00000916_rodata

# .rodata:0xE0 | 0x918 | size: 0x6
.obj str_blk02_eki_000090f8, local
	.string "blk02"
.endobj str_blk02_eki_000090f8

# .rodata:0xE6 | 0x91E | size: 0x2
.obj gap_03_0000091E_rodata, global
.hidden gap_03_0000091E_rodata
	.2byte 0x0000
.endobj gap_03_0000091E_rodata

# .rodata:0xE8 | 0x920 | size: 0x4
.obj str_sun_eki_00009100, local
	.string "sun"
.endobj str_sun_eki_00009100

# .rodata:0xEC | 0x924 | size: 0x7
.obj str_kami_0_eki_00009104, local
	.string "kami_0"
.endobj str_kami_0_eki_00009104

# .rodata:0xF3 | 0x92B | size: 0x1
.obj gap_03_0000092B_rodata, global
.hidden gap_03_0000092B_rodata
	.byte 0x00
.endobj gap_03_0000092B_rodata

# .rodata:0xF4 | 0x92C | size: 0x9
.obj str_a_kami_1_eki_0000910c, local
	.string "a_kami_1"
.endobj str_a_kami_1_eki_0000910c

# .rodata:0xFD | 0x935 | size: 0x3
.obj gap_03_00000935_rodata, global
.hidden gap_03_00000935_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000935_rodata

# .rodata:0x100 | 0x938 | size: 0x8
.obj str_kami_17_eki_00009118, local
	.string "kami_17"
.endobj str_kami_17_eki_00009118

# .rodata:0x108 | 0x940 | size: 0x9
.obj str_a_kami_2_eki_00009120, local
	.string "a_kami_2"
.endobj str_a_kami_2_eki_00009120

# .rodata:0x111 | 0x949 | size: 0x3
.obj gap_03_00000949_rodata, global
.hidden gap_03_00000949_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000949_rodata

# .rodata:0x114 | 0x94C | size: 0x8
.obj str_kami_16_eki_0000912c, local
	.string "kami_16"
.endobj str_kami_16_eki_0000912c

# .rodata:0x11C | 0x954 | size: 0x9
.obj str_a_kami_3_eki_00009134, local
	.string "a_kami_3"
.endobj str_a_kami_3_eki_00009134

# .rodata:0x125 | 0x95D | size: 0x3
.obj gap_03_0000095D_rodata, global
.hidden gap_03_0000095D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000095D_rodata

# .rodata:0x128 | 0x960 | size: 0x7
.obj str_kami_4_eki_00009140, local
	.string "kami_4"
.endobj str_kami_4_eki_00009140

# .rodata:0x12F | 0x967 | size: 0x1
.obj gap_03_00000967_rodata, global
.hidden gap_03_00000967_rodata
	.byte 0x00
.endobj gap_03_00000967_rodata

# .rodata:0x130 | 0x968 | size: 0x9
.obj str_a_kami_4_eki_00009148, local
	.string "a_kami_4"
.endobj str_a_kami_4_eki_00009148

# .rodata:0x139 | 0x971 | size: 0x3
.obj gap_03_00000971_rodata, global
.hidden gap_03_00000971_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000971_rodata

# .rodata:0x13C | 0x974 | size: 0x7
.obj str_kami_5_eki_00009154, local
	.string "kami_5"
.endobj str_kami_5_eki_00009154

# .rodata:0x143 | 0x97B | size: 0x1
.obj gap_03_0000097B_rodata, global
.hidden gap_03_0000097B_rodata
	.byte 0x00
.endobj gap_03_0000097B_rodata

# .rodata:0x144 | 0x97C | size: 0xA
.obj str_a_kami_12_eki_0000915c, local
	.string "a_kami_12"
.endobj str_a_kami_12_eki_0000915c

# .rodata:0x14E | 0x986 | size: 0x2
.obj gap_03_00000986_rodata, global
.hidden gap_03_00000986_rodata
	.2byte 0x0000
.endobj gap_03_00000986_rodata

# .rodata:0x150 | 0x988 | size: 0x7
.obj str_kami_6_eki_00009168, local
	.string "kami_6"
.endobj str_kami_6_eki_00009168

# .rodata:0x157 | 0x98F | size: 0x1
.obj gap_03_0000098F_rodata, global
.hidden gap_03_0000098F_rodata
	.byte 0x00
.endobj gap_03_0000098F_rodata

# .rodata:0x158 | 0x990 | size: 0xA
.obj str_a_kami_11_eki_00009170, local
	.string "a_kami_11"
.endobj str_a_kami_11_eki_00009170

# .rodata:0x162 | 0x99A | size: 0x2
.obj gap_03_0000099A_rodata, global
.hidden gap_03_0000099A_rodata
	.2byte 0x0000
.endobj gap_03_0000099A_rodata

# .rodata:0x164 | 0x99C | size: 0x7
.obj str_kami_7_eki_0000917c, local
	.string "kami_7"
.endobj str_kami_7_eki_0000917c

# .rodata:0x16B | 0x9A3 | size: 0x1
.obj gap_03_000009A3_rodata, global
.hidden gap_03_000009A3_rodata
	.byte 0x00
.endobj gap_03_000009A3_rodata

# .rodata:0x16C | 0x9A4 | size: 0x7
.obj str_kami_8_eki_00009184, local
	.string "kami_8"
.endobj str_kami_8_eki_00009184

# .rodata:0x173 | 0x9AB | size: 0x1
.obj gap_03_000009AB_rodata, global
.hidden gap_03_000009AB_rodata
	.byte 0x00
.endobj gap_03_000009AB_rodata

# .rodata:0x174 | 0x9AC | size: 0x7
.obj str_kami_9_eki_0000918c, local
	.string "kami_9"
.endobj str_kami_9_eki_0000918c

# .rodata:0x17B | 0x9B3 | size: 0x1
.obj gap_03_000009B3_rodata, global
.hidden gap_03_000009B3_rodata
	.byte 0x00
.endobj gap_03_000009B3_rodata

# .rodata:0x17C | 0x9B4 | size: 0x8
.obj str_kami_10_eki_00009194, local
	.string "kami_10"
.endobj str_kami_10_eki_00009194

# .rodata:0x184 | 0x9BC | size: 0xA
.obj str_a_kami_10_eki_0000919c, local
	.string "a_kami_10"
.endobj str_a_kami_10_eki_0000919c

# .rodata:0x18E | 0x9C6 | size: 0x2
.obj gap_03_000009C6_rodata, global
.hidden gap_03_000009C6_rodata
	.2byte 0x0000
.endobj gap_03_000009C6_rodata

# .rodata:0x190 | 0x9C8 | size: 0x8
.obj str_kami_11_eki_000091a8, local
	.string "kami_11"
.endobj str_kami_11_eki_000091a8

# .rodata:0x198 | 0x9D0 | size: 0x8
.obj str_kami_12_eki_000091b0, local
	.string "kami_12"
.endobj str_kami_12_eki_000091b0

# .rodata:0x1A0 | 0x9D8 | size: 0x8
.obj str_kami_13_eki_000091b8, local
	.string "kami_13"
.endobj str_kami_13_eki_000091b8

# .rodata:0x1A8 | 0x9E0 | size: 0x8
.obj str_kami_14_eki_000091c0, local
	.string "kami_14"
.endobj str_kami_14_eki_000091c0

# .rodata:0x1B0 | 0x9E8 | size: 0x8
.obj str_kami_15_eki_000091c8, local
	.string "kami_15"
.endobj str_kami_15_eki_000091c8

# .rodata:0x1B8 | 0x9F0 | size: 0x28
.obj texmtx_tbl$584, local
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x00000024
	.4byte 0x00000027
	.4byte 0x0000002A
	.4byte 0x0000002D
	.4byte 0x00000030
	.4byte 0x00000033
	.4byte 0x00000036
	.4byte 0x00000039
.endobj texmtx_tbl$584

# .rodata:0x1E0 | 0xA18 | size: 0x4
.obj float_31p416_eki_000091f8, local
	.float 31.41592
.endobj float_31p416_eki_000091f8

# .rodata:0x1E4 | 0xA1C | size: 0x4
.obj float_0p015625_eki_000091fc, local
	.float 0.015625
.endobj float_0p015625_eki_000091fc

# .rodata:0x1E8 | 0xA20 | size: 0x4
.obj float_0p125_eki_00009200, local
	.float 0.125
.endobj float_0p125_eki_00009200

# .rodata:0x1EC | 0xA24 | size: 0x4
.obj float_128_eki_00009204, local
	.float 128
.endobj float_128_eki_00009204

# .rodata:0x1F0 | 0xA28 | size: 0x4
.obj float_3_eki_00009208, local
	.float 3
.endobj float_3_eki_00009208

# .rodata:0x1F4 | 0xA2C | size: 0x4
.obj zero_eki_0000920c, local
	.float 0
.endobj zero_eki_0000920c

# .rodata:0x1F8 | 0xA30 | size: 0x4
.obj float_0p5_eki_00009210, local
	.float 0.5
.endobj float_0p5_eki_00009210
	.4byte 0x00000000

# .rodata:0x200 | 0xA38 | size: 0x8
.obj double_to_int_eki_00009218, local
	.double 4503601774854144
.endobj double_to_int_eki_00009218

# .rodata:0x208 | 0xA40 | size: 0x8
.obj double_to_int_mask_eki_00009220, local
	.double 4503599627370496
.endobj double_to_int_mask_eki_00009220

# .rodata:0x210 | 0xA48 | size: 0x4
.obj float_0p998_eki_00009228, local
	.float 1.148
.endobj float_0p998_eki_00009228

# .rodata:0x214 | 0xA4C | size: 0x4
.obj gap_03_00000A4C_rodata, global
.hidden gap_03_00000A4C_rodata
	.4byte 0x00000000
.endobj gap_03_00000A4C_rodata

# 0x00003008..0x00003CB8 | size: 0xCB0
.data
.balign 8

# .data:0x0 | 0x3008 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3010 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3014 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3018 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x301C | size: 0x4
.obj gap_04_0000301C_data, global
.hidden gap_04_0000301C_data
	.4byte 0x00000000
.endobj gap_04_0000301C_data

# .data:0x18 | 0x3020 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3028 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x302C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3030 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3038 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x303C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3040 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3044 | size: 0x4
.obj gap_04_00003044_data, global
.hidden gap_04_00003044_data
	.4byte 0x00000000
.endobj gap_04_00003044_data

# .data:0x40 | 0x3048 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3050 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3054 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3058 | size: 0x30
.obj w1_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_1_eki_00009018
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w1_close

# .data:0x80 | 0x3088 | size: 0x30
.obj w1_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_1_eki_00009018
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w1_open

# .data:0xB0 | 0x30B8 | size: 0x30
.obj w2_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_2_eki_00009020
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w2_close

# .data:0xE0 | 0x30E8 | size: 0x30
.obj w2_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_2_eki_00009020
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w2_open

# .data:0x110 | 0x3118 | size: 0xB4
.obj bero_data, local
	.4byte str_w_bero_1_eki_00009028
	.4byte 0x00010003
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_eki_01_eki_00009034
	.4byte str_e_bero_eki_0000903c
	.4byte 0x00050005
	.4byte w1_close
	.4byte w1_open
	.4byte str_w_bero_2_eki_00009044
	.4byte 0x00010003
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_eki_04_eki_00009050
	.4byte str_e_bero_eki_0000903c
	.4byte 0x00050005
	.4byte w2_close
	.4byte w2_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data

# .data:0x1C4 | 0x31CC | size: 0x28
.obj evt_poster, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000013C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster

# .data:0x1EC | 0x31F4 | size: 0x128
.obj evt_chk, local
	.4byte 0x00020018
	.4byte 0xF8406A15
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A16
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A17
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A19
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1B
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1C
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1D
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1E
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kabe_eki_00009058
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000013C
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000013C
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chk

# .data:0x314 | 0x331C | size: 0x1C
.obj evt_poster_1, local
	.4byte 0x00020032
	.4byte 0xF8406A11
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_1

# .data:0x330 | 0x3338 | size: 0x1C
.obj evt_poster_2, local
	.4byte 0x00020032
	.4byte 0xF8406A12
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_2

# .data:0x34C | 0x3354 | size: 0x1C
.obj evt_poster_3, local
	.4byte 0x00020032
	.4byte 0xF8406A13
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_3

# .data:0x368 | 0x3370 | size: 0x1C
.obj evt_poster_4, local
	.4byte 0x00020032
	.4byte 0xF8406A14
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_4

# .data:0x384 | 0x338C | size: 0x1C
.obj evt_poster_5, local
	.4byte 0x00020032
	.4byte 0xF8406A15
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_5

# .data:0x3A0 | 0x33A8 | size: 0x1C
.obj evt_poster_6, local
	.4byte 0x00020032
	.4byte 0xF8406A16
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_6

# .data:0x3BC | 0x33C4 | size: 0x1C
.obj evt_poster_7, local
	.4byte 0x00020032
	.4byte 0xF8406A17
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_7

# .data:0x3D8 | 0x33E0 | size: 0x1C
.obj evt_poster_8, local
	.4byte 0x00020032
	.4byte 0xF8406A18
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_8

# .data:0x3F4 | 0x33FC | size: 0x1C
.obj evt_poster_9, local
	.4byte 0x00020032
	.4byte 0xF8406A19
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_9

# .data:0x410 | 0x3418 | size: 0x30
.obj evt_poster_10, local
	.4byte 0x00020032
	.4byte 0xF8406A1A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_13_eki_00009060
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_10

# .data:0x440 | 0x3448 | size: 0x6C
.obj evt_poster_11, local
	.4byte 0x00020032
	.4byte 0xF8406A1B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_14_eki_0000906c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_15_eki_00009078
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_6_eki_00009084
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_7_eki_00009090
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_11

# .data:0x4AC | 0x34B4 | size: 0x58
.obj evt_poster_12, local
	.4byte 0x00020032
	.4byte 0xF8406A1C
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_8_eki_0000909c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_9_eki_000090a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_5_eki_000090b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_12

# .data:0x504 | 0x350C | size: 0x1C
.obj evt_poster_13, local
	.4byte 0x00020032
	.4byte 0xF8406A1D
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_13

# .data:0x520 | 0x3528 | size: 0x1C
.obj evt_poster_14, local
	.4byte 0x00020032
	.4byte 0xF8406A1E
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_14

# .data:0x53C | 0x3544 | size: 0x1C
.obj evt_poster_15, local
	.4byte 0x00020032
	.4byte 0xF8406A1F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_poster_15

# .data:0x558 | 0x3560 | size: 0x758
.obj eki_03_init_evt_6_data_3560, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG6_HOM1_eki_000090c0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_EKI4_eki_000090d0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_eki_000090e0
	.4byte 0x00000116
	.4byte 0xFFFFFDDA
	.4byte 0x000000DC
	.4byte 0xFFFFFFCE
	.4byte 0x00000010
	.4byte 0xF8406A22
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk01_eki_000090e8
	.4byte 0x000001C2
	.4byte 0x00000064
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xF8407139
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_blk
	.4byte str_blk01_eki_000090f0
	.4byte 0x000000FA
	.4byte 0x0000012C
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF9718881
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_blk02_eki_000090f8
	.4byte 0x000000FA
	.4byte 0x00000181
	.4byte 0xFFFFFF9C
	.4byte 0x00000081
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xF8406A2A
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000002
	.4byte sun_tev
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sun_eki_00009100
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sun_eki_00009100
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sun_eki_00009100
	.4byte 0x10000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte test_glare
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x00020018
	.4byte 0xF8406A11
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_0_eki_00009104
	.4byte str_a_kami_1_eki_0000910c
	.4byte evt_poster_1
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_0_eki_00009104
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_1_eki_0000910c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A12
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_17_eki_00009118
	.4byte str_a_kami_2_eki_00009120
	.4byte evt_poster_2
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_17_eki_00009118
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_2_eki_00009120
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A13
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_16_eki_0000912c
	.4byte str_a_kami_3_eki_00009134
	.4byte evt_poster_3
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_16_eki_0000912c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_3_eki_00009134
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A14
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_4_eki_00009140
	.4byte str_a_kami_4_eki_00009148
	.4byte evt_poster_4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_4_eki_00009140
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_4_eki_00009148
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A15
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_5_eki_00009154
	.4byte str_a_kami_12_eki_0000915c
	.4byte evt_poster_5
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_5_eki_00009154
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_12_eki_0000915c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A16
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_6_eki_00009168
	.4byte str_a_kami_11_eki_00009170
	.4byte evt_poster_6
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_6_eki_00009168
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_11_eki_00009170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A17
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_7_eki_0000917c
	.4byte str_a_kami_11_eki_00009170
	.4byte evt_poster_7
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_7_eki_0000917c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_11_eki_00009170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_8_eki_00009184
	.4byte str_a_kami_12_eki_0000915c
	.4byte evt_poster_8
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_8_eki_00009184
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_12_eki_0000915c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A19
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_9_eki_0000918c
	.4byte str_a_kami_12_eki_0000915c
	.4byte evt_poster_9
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_9_eki_0000918c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_12_eki_0000915c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_10_eki_00009194
	.4byte str_a_kami_10_eki_0000919c
	.4byte evt_poster_10
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_10_eki_00009194
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_10_eki_0000919c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_13_eki_00009060
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_11_eki_000091a8
	.4byte str_a_kami_10_eki_0000919c
	.4byte evt_poster_11
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_11_eki_000091a8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_10_eki_0000919c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_14_eki_0000906c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_15_eki_00009078
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_6_eki_00009084
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_7_eki_00009090
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_12_eki_000091b0
	.4byte str_a_kami_10_eki_0000919c
	.4byte evt_poster_12
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_12_eki_000091b0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_10_eki_0000919c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_8_eki_0000909c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_9_eki_000090a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_5_eki_000090b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_13_eki_000091b8
	.4byte str_a_kami_10_eki_0000919c
	.4byte evt_poster_13
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_13_eki_000091b8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_10_eki_0000919c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_14_eki_000091c0
	.4byte str_a_kami_11_eki_00009170
	.4byte evt_poster_14
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_14_eki_000091c0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_11_eki_00009170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406A1F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_kami_15_eki_000091c8
	.4byte str_a_kami_11_eki_00009170
	.4byte evt_poster_15
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kami_15_eki_000091c8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kami_11_eki_00009170
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_kabe_eki_00009058
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0001005E
	.4byte evt_chk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj eki_03_init_evt_6_data_3560

# 0x00000008..0x00000010 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8 | size: 0x4
.obj ind_lp, local
	.skip 0x4
.endobj ind_lp

# .bss:0x4 | 0xC | size: 0x4
.obj gap_05_0000000C_bss, global
.hidden gap_05_0000000C_bss
	.skip 0x4
.endobj gap_05_0000000C_bss
