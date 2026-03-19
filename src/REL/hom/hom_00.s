.include "macros.inc"
.file "hom_00.o"

# 0x000000EC..0x00000650 | size: 0x564
.text
.balign 4

# .text:0x0 | 0xEC | size: 0x308
.fn sun_tev, local
/* 000000EC 000001B0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 000000F0 000001B4  7C 08 02 A6 */	mflr r0
/* 000000F4 000001B8  90 01 01 04 */	stw r0, 0x104(r1)
/* 000000F8 000001BC  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 000000FC 000001C0  F3 E1 00 F8 */	psq_st f31, 0xf8(r1), 0, qr0
/* 00000100 000001C4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 00000104 000001C8  F3 C1 00 E8 */	psq_st f30, 0xe8(r1), 0, qr0
/* 00000108 000001CC  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 0000010C 000001D0  F3 A1 00 D8 */	psq_st f29, 0xd8(r1), 0, qr0
/* 00000110 000001D4  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 00000114 000001D8  F3 81 00 C8 */	psq_st f28, 0xc8(r1), 0, qr0
/* 00000118 000001DC  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 0000011C 000001E0  F3 61 00 B8 */	psq_st f27, 0xb8(r1), 0, qr0
/* 00000120 000001E4  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 00000124 000001E8  F3 41 00 A8 */	psq_st f26, 0xa8(r1), 0, qr0
/* 00000128 000001EC  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 0000012C 000001F0  F3 21 00 98 */	psq_st f25, 0x98(r1), 0, qr0
/* 00000130 000001F4  BE 81 00 60 */	stmw r20, 0x60(r1)
/* 00000134 000001F8  3C 80 00 00 */	lis r4, ind_lp@ha
/* 00000138 000001FC  7C 74 1B 78 */	mr r20, r3
/* 0000013C 00000200  80 04 00 00 */	lwz r0, ind_lp@l(r4)
/* 00000140 00000204  83 63 00 0C */	lwz r27, 0xc(r3)
/* 00000144 00000208  28 00 00 00 */	cmplwi r0, 0x0
/* 00000148 0000020C  83 54 00 10 */	lwz r26, 0x10(r20)
/* 0000014C 00000210  83 34 00 14 */	lwz r25, 0x14(r20)
/* 00000150 00000214  83 14 00 18 */	lwz r24, 0x18(r20)
/* 00000154 00000218  40 82 00 2C */	bne .L_00000180
/* 00000158 0000021C  38 60 00 40 */	li r3, 0x40
/* 0000015C 00000220  38 80 00 40 */	li r4, 0x40
/* 00000160 00000224  38 A0 00 03 */	li r5, 0x3
/* 00000164 00000228  38 C0 00 00 */	li r6, 0x0
/* 00000168 0000022C  38 E0 00 00 */	li r7, 0x0
/* 0000016C 00000230  4B FF FE 95 */	bl GXGetTexBufferSize
/* 00000170 00000234  38 80 00 01 */	li r4, 0x1
/* 00000174 00000238  4B FF FE 8D */	bl smartAlloc
/* 00000178 0000023C  3C 80 00 00 */	lis r4, ind_lp@ha
/* 0000017C 00000240  90 64 00 00 */	stw r3, ind_lp@l(r4)
.L_00000180:
/* 00000180 00000244  3C 60 00 00 */	lis r3, ind_lp@ha
/* 00000184 00000248  3D 20 00 00 */	lis r9, float_31p416_hom_00000be0@ha
/* 00000188 0000024C  81 63 00 00 */	lwz r11, ind_lp@l(r3)
/* 0000018C 00000250  3D 00 00 00 */	lis r8, double_to_int_hom_00000c00@ha
/* 00000190 00000254  39 49 00 00 */	addi r10, r9, float_31p416_hom_00000be0@l
/* 00000194 00000258  3C C0 00 00 */	lis r6, double_to_int_mask_hom_00000c08@ha
/* 00000198 0000025C  3C A0 00 00 */	lis r5, float_0p125_hom_00000be8@ha
/* 0000019C 00000260  3C 80 00 00 */	lis r4, float_3_hom_00000bf0@ha
/* 000001A0 00000264  3C 60 00 00 */	lis r3, float_128_hom_00000bec@ha
/* 000001A4 00000268  39 28 00 00 */	addi r9, r8, double_to_int_hom_00000c00@l
/* 000001A8 0000026C  3C E0 00 00 */	lis r7, float_0p015625_hom_00000be4@ha
/* 000001AC 00000270  82 EB 00 00 */	lwz r23, 0x0(r11)
/* 000001B0 00000274  39 07 00 00 */	addi r8, r7, float_0p015625_hom_00000be4@l
/* 000001B4 00000278  C3 2A 00 00 */	lfs f25, 0x0(r10)
/* 000001B8 0000027C  3C E0 00 00 */	lis r7, gp@ha
/* 000001BC 00000280  CB 49 00 00 */	lfd f26, 0x0(r9)
/* 000001C0 00000284  C3 68 00 00 */	lfs f27, 0x0(r8)
/* 000001C4 00000288  3B C7 00 00 */	addi r30, r7, gp@l
/* 000001C8 0000028C  CB 86 00 00 */	lfd f28, double_to_int_mask_hom_00000c08@l(r6)
/* 000001CC 00000290  3A C0 00 00 */	li r22, 0x0
/* 000001D0 00000294  C3 A5 00 00 */	lfs f29, float_0p125_hom_00000be8@l(r5)
/* 000001D4 00000298  3F A0 43 30 */	lis r29, 0x4330
/* 000001D8 0000029C  C3 C4 00 00 */	lfs f30, float_3_hom_00000bf0@l(r4)
/* 000001DC 000002A0  C3 E3 00 00 */	lfs f31, float_128_hom_00000bec@l(r3)
.L_000001E0:
/* 000001E0 000002A4  56 C0 F0 02 */	slwi r0, r22, 30
/* 000001E4 000002A8  56 C3 0F FE */	srwi r3, r22, 31
/* 000001E8 000002AC  7E C4 16 70 */	srawi r4, r22, 2
/* 000001EC 000002B0  3A A0 00 00 */	li r21, 0x0
/* 000001F0 000002B4  7C 03 00 50 */	subf r0, r3, r0
/* 000001F4 000002B8  7C 84 01 94 */	addze r4, r4
/* 000001F8 000002BC  54 00 10 3E */	rotlwi r0, r0, 2
/* 000001FC 000002C0  7F 80 1A 14 */	add r28, r0, r3
/* 00000200 000002C4  54 9F 28 34 */	slwi r31, r4, 5
.L_00000204:
/* 00000204 000002C8  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 00000208 000002CC  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 0000020C 000002D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 00000210 000002D4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 00000214 000002D8  93 A1 00 40 */	stw r29, 0x40(r1)
/* 00000218 000002DC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 0000021C 000002E0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 00000220 000002E4  93 A1 00 48 */	stw r29, 0x48(r1)
/* 00000224 000002E8  EC 20 D0 28 */	fsubs f1, f0, f26
/* 00000228 000002EC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 0000022C 000002F0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 00000230 000002F4  EC 39 00 72 */	fmuls f1, f25, f1
/* 00000234 000002F8  EC 00 07 72 */	fmuls f0, f0, f29
/* 00000238 000002FC  EC 21 06 F8 */	fmsubs f1, f1, f27, f0
/* 0000023C 00000300  4B FF FD C5 */	bl sin
/* 00000240 00000304  FC 00 08 18 */	frsp f0, f1
/* 00000244 00000308  7E A0 16 70 */	srawi r0, r21, 2
/* 00000248 0000030C  7C 80 01 94 */	addze r4, r0
/* 0000024C 00000310  56 A3 0F FE */	srwi r3, r21, 31
/* 00000250 00000314  56 A0 F0 02 */	slwi r0, r21, 30
/* 00000254 00000318  3A B5 00 01 */	addi r21, r21, 0x1
/* 00000258 0000031C  EC 1E F8 3A */	fmadds f0, f30, f0, f31
/* 0000025C 00000320  7C 03 00 50 */	subf r0, r3, r0
/* 00000260 00000324  54 00 10 3E */	rotlwi r0, r0, 2
/* 00000264 00000328  54 84 48 2C */	slwi r4, r4, 9
/* 00000268 0000032C  7C 00 1A 14 */	add r0, r0, r3
/* 0000026C 00000330  2C 15 00 40 */	cmpwi r21, 0x40
/* 00000270 00000334  FC 00 00 1E */	fctiwz f0, f0
/* 00000274 00000338  54 00 10 3A */	slwi r0, r0, 2
/* 00000278 0000033C  7C 1C 02 14 */	add r0, r28, r0
/* 0000027C 00000340  7C 9F 22 14 */	add r4, r31, r4
/* 00000280 00000344  54 03 08 3C */	slwi r3, r0, 1
/* 00000284 00000348  7C 84 1A 14 */	add r4, r4, r3
/* 00000288 0000034C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 0000028C 00000350  7C 97 22 14 */	add r4, r23, r4
/* 00000290 00000354  38 00 00 80 */	li r0, 0x80
/* 00000294 00000358  80 61 00 54 */	lwz r3, 0x54(r1)
/* 00000298 0000035C  98 64 00 00 */	stb r3, 0x0(r4)
/* 0000029C 00000360  98 04 00 01 */	stb r0, 0x1(r4)
/* 000002A0 00000364  41 80 FF 64 */	blt .L_00000204
/* 000002A4 00000368  3A D6 00 01 */	addi r22, r22, 0x1
/* 000002A8 0000036C  2C 16 00 40 */	cmpwi r22, 0x40
/* 000002AC 00000370  41 80 FF 34 */	blt .L_000001E0
/* 000002B0 00000374  7E E3 BB 78 */	mr r3, r23
/* 000002B4 00000378  38 80 20 00 */	li r4, 0x2000
/* 000002B8 0000037C  4B FF FD 49 */	bl DCFlushRange
/* 000002BC 00000380  7E E4 BB 78 */	mr r4, r23
/* 000002C0 00000384  38 61 00 20 */	addi r3, r1, 0x20
/* 000002C4 00000388  38 A0 00 40 */	li r5, 0x40
/* 000002C8 0000038C  38 C0 00 40 */	li r6, 0x40
/* 000002CC 00000390  38 E0 00 03 */	li r7, 0x3
/* 000002D0 00000394  39 00 00 01 */	li r8, 0x1
/* 000002D4 00000398  39 20 00 01 */	li r9, 0x1
/* 000002D8 0000039C  39 40 00 00 */	li r10, 0x0
/* 000002DC 000003A0  4B FF FD 25 */	bl GXInitTexObj
/* 000002E0 000003A4  3C 80 00 00 */	lis r4, zero_hom_00000bf4@ha
/* 000002E4 000003A8  38 61 00 20 */	addi r3, r1, 0x20
/* 000002E8 000003AC  38 A4 00 00 */	addi r5, r4, zero_hom_00000bf4@l
/* 000002EC 000003B0  38 80 00 00 */	li r4, 0x0
/* 000002F0 000003B4  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000002F4 000003B8  38 A0 00 00 */	li r5, 0x0
/* 000002F8 000003BC  38 C0 00 00 */	li r6, 0x0
/* 000002FC 000003C0  38 E0 00 00 */	li r7, 0x0
/* 00000300 000003C4  FC 40 08 90 */	fmr f2, f1
/* 00000304 000003C8  39 00 00 00 */	li r8, 0x0
/* 00000308 000003CC  FC 60 08 90 */	fmr f3, f1
/* 0000030C 000003D0  4B FF FC F5 */	bl GXInitTexObjLOD
/* 00000310 000003D4  7F 44 D3 78 */	mr r4, r26
/* 00000314 000003D8  38 61 00 20 */	addi r3, r1, 0x20
/* 00000318 000003DC  4B FF FC E9 */	bl GXLoadTexObj
/* 0000031C 000003E0  3C 80 00 00 */	lis r4, float_0p5_hom_00000bf8@ha
/* 00000320 000003E4  3C 60 00 00 */	lis r3, zero_hom_00000bf4@ha
/* 00000324 000003E8  38 A4 00 00 */	addi r5, r4, float_0p5_hom_00000bf8@l
/* 00000328 000003EC  C0 03 00 00 */	lfs f0, zero_hom_00000bf4@l(r3)
/* 0000032C 000003F0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00000330 000003F4  38 81 00 08 */	addi r4, r1, 0x8
/* 00000334 000003F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00000338 000003FC  38 60 00 01 */	li r3, 0x1
/* 0000033C 00000400  38 A0 00 01 */	li r5, 0x1
/* 00000340 00000404  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00000344 00000408  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00000348 0000040C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 0000034C 00000410  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 00000350 00000414  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00000354 00000418  4B FF FC AD */	bl GXSetIndTexMtx
/* 00000358 0000041C  7F 03 C3 78 */	mr r3, r24
/* 0000035C 00000420  7F 45 D3 78 */	mr r5, r26
/* 00000360 00000424  38 80 00 00 */	li r4, 0x0
/* 00000364 00000428  4B FF FC 9D */	bl GXSetIndTexOrder
/* 00000368 0000042C  7F 03 C3 78 */	mr r3, r24
/* 0000036C 00000430  38 80 00 00 */	li r4, 0x0
/* 00000370 00000434  38 A0 00 00 */	li r5, 0x0
/* 00000374 00000438  4B FF FC 8D */	bl GXSetIndTexCoordScale
/* 00000378 0000043C  7F 04 C3 78 */	mr r4, r24
/* 0000037C 00000440  38 60 00 00 */	li r3, 0x0
/* 00000380 00000444  38 A0 00 01 */	li r5, 0x1
/* 00000384 00000448  38 C0 00 00 */	li r6, 0x0
/* 00000388 0000044C  38 E0 00 01 */	li r7, 0x1
/* 0000038C 00000450  4B FF FC 75 */	bl GXSetTevIndWarp
/* 00000390 00000454  93 74 00 0C */	stw r27, 0xc(r20)
/* 00000394 00000458  38 78 00 01 */	addi r3, r24, 0x1
/* 00000398 0000045C  38 1A 00 01 */	addi r0, r26, 0x1
/* 0000039C 00000460  93 34 00 14 */	stw r25, 0x14(r20)
/* 000003A0 00000464  90 74 00 18 */	stw r3, 0x18(r20)
/* 000003A4 00000468  90 14 00 10 */	stw r0, 0x10(r20)
/* 000003A8 0000046C  E3 E1 00 F8 */	psq_l f31, 0xf8(r1), 0, qr0
/* 000003AC 00000470  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 000003B0 00000474  E3 C1 00 E8 */	psq_l f30, 0xe8(r1), 0, qr0
/* 000003B4 00000478  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 000003B8 0000047C  E3 A1 00 D8 */	psq_l f29, 0xd8(r1), 0, qr0
/* 000003BC 00000480  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 000003C0 00000484  E3 81 00 C8 */	psq_l f28, 0xc8(r1), 0, qr0
/* 000003C4 00000488  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 000003C8 0000048C  E3 61 00 B8 */	psq_l f27, 0xb8(r1), 0, qr0
/* 000003CC 00000490  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 000003D0 00000494  E3 41 00 A8 */	psq_l f26, 0xa8(r1), 0, qr0
/* 000003D4 00000498  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 000003D8 0000049C  E3 21 00 98 */	psq_l f25, 0x98(r1), 0, qr0
/* 000003DC 000004A0  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 000003E0 000004A4  BA 81 00 60 */	lmw r20, 0x60(r1)
/* 000003E4 000004A8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 000003E8 000004AC  7C 08 03 A6 */	mtlr r0
/* 000003EC 000004B0  38 21 01 00 */	addi r1, r1, 0x100
/* 000003F0 000004B4  4E 80 00 20 */	blr
.endfn sun_tev

# .text:0x308 | 0x3F4 | size: 0x150
.fn test_glare, local
/* 000003F4 000004B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000003F8 000004BC  7C 08 02 A6 */	mflr r0
/* 000003FC 000004C0  3C A0 00 00 */	lis r5, str_sun_hom_00000b8c@ha
/* 00000400 000004C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000404 000004C8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000408 000004CC  7C 7E 1B 78 */	mr r30, r3
/* 0000040C 000004D0  38 65 00 00 */	addi r3, r5, str_sun_hom_00000b8c@l
/* 00000410 000004D4  7C 9F 23 78 */	mr r31, r4
/* 00000414 000004D8  4B FF FB ED */	bl mapGetMapObj
/* 00000418 000004DC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000041C 000004E0  7C 7F 1B 78 */	mr r31, r3
/* 00000420 000004E4  41 82 00 18 */	beq .L_00000438
/* 00000424 000004E8  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00000428 000004EC  38 60 00 00 */	li r3, 0x0
/* 0000042C 000004F0  64 00 20 00 */	oris r0, r0, 0x2000
/* 00000430 000004F4  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00000434 000004F8  48 00 00 FC */	b .L_00000530
.L_00000438:
/* 00000438 000004FC  A0 1F 00 EC */	lhz r0, 0xec(r31)
/* 0000043C 00000500  28 00 03 FF */	cmplwi r0, 0x3ff
/* 00000440 00000504  41 82 00 28 */	beq .L_00000468
/* 00000444 00000508  A0 7F 00 EE */	lhz r3, 0xee(r31)
/* 00000448 0000050C  28 03 03 FF */	cmplwi r3, 0x3ff
/* 0000044C 00000510  41 82 00 1C */	beq .L_00000468
/* 00000450 00000514  A0 9F 00 F0 */	lhz r4, 0xf0(r31)
/* 00000454 00000518  28 04 03 FF */	cmplwi r4, 0x3ff
/* 00000458 0000051C  41 82 00 10 */	beq .L_00000468
/* 0000045C 00000520  A0 BF 00 F2 */	lhz r5, 0xf2(r31)
/* 00000460 00000524  28 05 03 FF */	cmplwi r5, 0x3ff
/* 00000464 00000528  40 82 00 20 */	bne .L_00000484
.L_00000468:
/* 00000468 0000052C  38 60 00 00 */	li r3, 0x0
/* 0000046C 00000530  38 80 00 00 */	li r4, 0x0
/* 00000470 00000534  38 A0 00 00 */	li r5, 0x0
/* 00000474 00000538  38 C0 00 00 */	li r6, 0x0
/* 00000478 0000053C  38 E0 00 00 */	li r7, 0x0
/* 0000047C 00000540  4B FF FB 85 */	bl envGlareFilter
/* 00000480 00000544  48 00 00 AC */	b .L_0000052C
.L_00000484:
/* 00000484 00000548  28 00 00 00 */	cmplwi r0, 0x0
/* 00000488 0000054C  40 82 00 38 */	bne .L_000004C0
/* 0000048C 00000550  28 03 00 00 */	cmplwi r3, 0x0
/* 00000490 00000554  40 82 00 30 */	bne .L_000004C0
/* 00000494 00000558  28 04 00 00 */	cmplwi r4, 0x0
/* 00000498 0000055C  40 82 00 28 */	bne .L_000004C0
/* 0000049C 00000560  28 05 00 00 */	cmplwi r5, 0x0
/* 000004A0 00000564  40 82 00 20 */	bne .L_000004C0
/* 000004A4 00000568  38 60 00 00 */	li r3, 0x0
/* 000004A8 0000056C  38 80 00 00 */	li r4, 0x0
/* 000004AC 00000570  38 A0 00 00 */	li r5, 0x0
/* 000004B0 00000574  38 C0 00 00 */	li r6, 0x0
/* 000004B4 00000578  38 E0 00 00 */	li r7, 0x0
/* 000004B8 0000057C  4B FF FB 49 */	bl envGlareFilter
/* 000004BC 00000580  48 00 00 70 */	b .L_0000052C
.L_000004C0:
/* 000004C0 00000584  3C 80 FA A3 */	lis r4, 0xfaa3
/* 000004C4 00000588  7F C3 F3 78 */	mr r3, r30
/* 000004C8 0000058C  38 84 B5 8F */	subi r4, r4, 0x4a71
/* 000004CC 00000590  4B FF FB 35 */	bl evtGetValue
/* 000004D0 00000594  2C 03 00 00 */	cmpwi r3, 0x0
/* 000004D4 00000598  41 82 00 20 */	beq .L_000004F4
/* 000004D8 0000059C  38 60 00 00 */	li r3, 0x0
/* 000004DC 000005A0  38 80 00 00 */	li r4, 0x0
/* 000004E0 000005A4  38 A0 00 00 */	li r5, 0x0
/* 000004E4 000005A8  38 C0 00 00 */	li r6, 0x0
/* 000004E8 000005AC  38 E0 00 00 */	li r7, 0x0
/* 000004EC 000005B0  4B FF FB 15 */	bl envGlareFilter
/* 000004F0 000005B4  48 00 00 3C */	b .L_0000052C
.L_000004F4:
/* 000004F4 000005B8  A0 BF 00 EE */	lhz r5, 0xee(r31)
/* 000004F8 000005BC  38 60 00 01 */	li r3, 0x1
/* 000004FC 000005C0  A0 DF 00 EC */	lhz r6, 0xec(r31)
/* 00000500 000005C4  A0 9F 00 F2 */	lhz r4, 0xf2(r31)
/* 00000504 000005C8  38 05 FF CE */	subi r0, r5, 0x32
/* 00000508 000005CC  A0 BF 00 F0 */	lhz r5, 0xf0(r31)
/* 0000050C 000005D0  38 E6 FF CE */	subi r7, r6, 0x32
/* 00000510 000005D4  38 C4 00 32 */	addi r6, r4, 0x32
/* 00000514 000005D8  7C 04 07 34 */	extsh r4, r0
/* 00000518 000005DC  38 05 00 32 */	addi r0, r5, 0x32
/* 0000051C 000005E0  7C E5 07 34 */	extsh r5, r7
/* 00000520 000005E4  7C C6 07 34 */	extsh r6, r6
/* 00000524 000005E8  7C 07 07 34 */	extsh r7, r0
/* 00000528 000005EC  4B FF FA D9 */	bl envGlareFilter
.L_0000052C:
/* 0000052C 000005F0  38 60 00 00 */	li r3, 0x0
.L_00000530:
/* 00000530 000005F4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000534 000005F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000538 000005FC  7C 08 03 A6 */	mtlr r0
/* 0000053C 00000600  38 21 00 10 */	addi r1, r1, 0x10
/* 00000540 00000604  4E 80 00 20 */	blr
.endfn test_glare

# .text:0x458 | 0x544 | size: 0x10C
.fn tokei, local
/* 00000544 00000608  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000548 0000060C  7C 08 02 A6 */	mflr r0
/* 0000054C 00000610  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000550 00000614  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 00000554 00000618  7C 7F 1B 78 */	mr r31, r3
/* 00000558 0000061C  4B FF FA A9 */	bl OSGetTime
/* 0000055C 00000620  38 A1 00 08 */	addi r5, r1, 0x8
/* 00000560 00000624  4B FF FA A1 */	bl OSTicksToCalendarTime
/* 00000564 00000628  80 81 00 10 */	lwz r4, 0x10(r1)
/* 00000568 0000062C  3C 00 43 30 */	lis r0, 0x4330
/* 0000056C 00000630  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 00000570 00000634  3C 60 00 00 */	lis r3, double_to_int_mask_hom_00000c08@ha
/* 00000574 00000638  1C A4 0E 10 */	mulli r5, r4, 0xe10
/* 00000578 0000063C  80 E1 00 08 */	lwz r7, 0x8(r1)
/* 0000057C 00000640  38 83 00 00 */	addi r4, r3, double_to_int_mask_hom_00000c08@l
/* 00000580 00000644  90 01 00 30 */	stw r0, 0x30(r1)
/* 00000584 00000648  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00000588 0000064C  3C 60 00 00 */	lis r3, float_3600_hom_00000c18@ha
/* 0000058C 00000650  1C C6 00 3C */	mulli r6, r6, 0x3c
/* 00000590 00000654  7C E5 3A 14 */	add r7, r5, r7
/* 00000594 00000658  38 83 00 00 */	addi r4, r3, float_3600_hom_00000c18@l
/* 00000598 0000065C  90 01 00 40 */	stw r0, 0x40(r1)
/* 0000059C 00000660  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 000005A0 00000664  3C 60 00 00 */	lis r3, float_60_hom_00000c20@ha
/* 000005A4 00000668  7C E6 3A 14 */	add r7, r6, r7
/* 000005A8 0000066C  3C 80 00 00 */	lis r4, float_360_hom_00000c14@ha
/* 000005AC 00000670  90 E1 00 34 */	stw r7, 0x34(r1)
/* 000005B0 00000674  38 A4 00 00 */	addi r5, r4, float_360_hom_00000c14@l
/* 000005B4 00000678  C0 A5 00 00 */	lfs f5, 0x0(r5)
/* 000005B8 0000067C  3C 80 00 00 */	lis r4, float_12_hom_00000c1c@ha
/* 000005BC 00000680  90 E1 00 44 */	stw r7, 0x44(r1)
/* 000005C0 00000684  3C C0 00 00 */	lis r6, float_1024_hom_00000c10@ha
/* 000005C4 00000688  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 000005C8 0000068C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 000005CC 00000690  EC 81 10 28 */	fsubs f4, f1, f2
/* 000005D0 00000694  C0 23 00 00 */	lfs f1, float_60_hom_00000c20@l(r3)
/* 000005D4 00000698  EC 00 10 28 */	fsubs f0, f0, f2
/* 000005D8 0000069C  C0 44 00 00 */	lfs f2, float_12_hom_00000c1c@l(r4)
/* 000005DC 000006A0  38 60 00 02 */	li r3, 0x2
/* 000005E0 000006A4  EC 64 18 24 */	fdivs f3, f4, f3
/* 000005E4 000006A8  C0 86 00 00 */	lfs f4, float_1024_hom_00000c10@l(r6)
/* 000005E8 000006AC  EC 00 08 24 */	fdivs f0, f0, f1
/* 000005EC 000006B0  EC 65 00 F2 */	fmuls f3, f5, f3
/* 000005F0 000006B4  EC 05 00 32 */	fmuls f0, f5, f0
/* 000005F4 000006B8  EC 43 10 24 */	fdivs f2, f3, f2
/* 000005F8 000006BC  EC 00 08 24 */	fdivs f0, f0, f1
/* 000005FC 000006C0  FC 20 10 50 */	fneg f1, f2
/* 00000600 000006C4  FC 00 00 50 */	fneg f0, f0
/* 00000604 000006C8  EC 24 00 72 */	fmuls f1, f4, f1
/* 00000608 000006CC  EC 04 00 32 */	fmuls f0, f4, f0
/* 0000060C 000006D0  FC 20 08 1E */	fctiwz f1, f1
/* 00000610 000006D4  FC 00 00 1E */	fctiwz f0, f0
/* 00000614 000006D8  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 00000618 000006DC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 0000061C 000006E0  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 00000620 000006E4  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 00000624 000006E8  3C A5 F2 4A */	subis r5, r5, 0xdb6
/* 00000628 000006EC  38 05 7A 80 */	addi r0, r5, 0x7a80
/* 0000062C 000006F0  3C 84 F2 4A */	subis r4, r4, 0xdb6
/* 00000630 000006F4  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 00000634 000006F8  38 04 7A 80 */	addi r0, r4, 0x7a80
/* 00000638 000006FC  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 0000063C 00000700  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000640 00000704  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 00000644 00000708  7C 08 03 A6 */	mtlr r0
/* 00000648 0000070C  38 21 00 60 */	addi r1, r1, 0x60
/* 0000064C 00000710  4E 80 00 20 */	blr
.endfn tokei

# 0x00000020..0x00000430 | size: 0x410
.rodata
.balign 8

# .rodata:0x0 | 0x20 | size: 0x9
.obj str_tobira_1_hom_00000818, local
	.string "tobira_1"
.endobj str_tobira_1_hom_00000818

# .rodata:0x9 | 0x29 | size: 0x3
.obj gap_03_00000029_rodata, global
.hidden gap_03_00000029_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000029_rodata

# .rodata:0xC | 0x2C | size: 0x9
.obj str_tobira_2_hom_00000824, local
	.string "tobira_2"
.endobj str_tobira_2_hom_00000824

# .rodata:0x15 | 0x35 | size: 0x3
.obj gap_03_00000035_rodata, global
.hidden gap_03_00000035_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000035_rodata

# .rodata:0x18 | 0x38 | size: 0x9
.obj str_n_bero_1_hom_00000830, local
	.string "n_bero_1"
.endobj str_n_bero_1_hom_00000830

# .rodata:0x21 | 0x41 | size: 0x3
.obj gap_03_00000041_rodata, global
.hidden gap_03_00000041_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000041_rodata

# .rodata:0x24 | 0x44 | size: 0x9
.obj str_rsh_01_b_hom_0000083c, local
	.string "rsh_01_b"
.endobj str_rsh_01_b_hom_0000083c

# .rodata:0x2D | 0x4D | size: 0x3
.obj gap_03_0000004D_rodata, global
.hidden gap_03_0000004D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000004D_rodata

# .rodata:0x30 | 0x50 | size: 0x7
.obj str_s_bero_hom_00000848, local
	.string "s_bero"
.endobj str_s_bero_hom_00000848

# .rodata:0x37 | 0x57 | size: 0x1
.obj gap_03_00000057_rodata, global
.hidden gap_03_00000057_rodata
	.byte 0x00
.endobj gap_03_00000057_rodata

# .rodata:0x38 | 0x58 | size: 0xF
.obj str_n_1_door_close_hom_00000850, local
	.string "n_1_door_close"
.endobj str_n_1_door_close_hom_00000850

# .rodata:0x47 | 0x67 | size: 0x1
.obj gap_03_00000067_rodata, global
.hidden gap_03_00000067_rodata
	.byte 0x00
.endobj gap_03_00000067_rodata

# .rodata:0x48 | 0x68 | size: 0xE
.obj str_n_1_door_open_hom_00000860, local
	.string "n_1_door_open"
.endobj str_n_1_door_open_hom_00000860

# .rodata:0x56 | 0x76 | size: 0x2
.obj gap_03_00000076_rodata, global
.hidden gap_03_00000076_rodata
	.2byte 0x0000
.endobj gap_03_00000076_rodata

# .rodata:0x58 | 0x78 | size: 0x9
.obj str_n_bero_2_hom_00000870, local
	.string "n_bero_2"
.endobj str_n_bero_2_hom_00000870

# .rodata:0x61 | 0x81 | size: 0x3
.obj gap_03_00000081_rodata, global
.hidden gap_03_00000081_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000081_rodata

# .rodata:0x64 | 0x84 | size: 0x7
.obj str_eki_00_hom_0000087c, local
	.string "eki_00"
.endobj str_eki_00_hom_0000087c

# .rodata:0x6B | 0x8B | size: 0x1
.obj gap_03_0000008B_rodata, global
.hidden gap_03_0000008B_rodata
	.byte 0x00
.endobj gap_03_0000008B_rodata

# .rodata:0x6C | 0x8C | size: 0xC
.obj str_stg6_hom_04_hom_00000884, local
	.string "stg6_hom_04"
.endobj str_stg6_hom_04_hom_00000884

# .rodata:0x78 | 0x98 | size: 0x3
.obj str_me_hom_00000890, local
	.string "me"
.endobj str_me_hom_00000890

# .rodata:0x7B | 0x9B | size: 0x1
.obj gap_03_0000009B_rodata, global
.hidden gap_03_0000009B_rodata
	.byte 0x00
.endobj gap_03_0000009B_rodata

# .rodata:0x7C | 0x9C | size: 0xC
.obj str_stg6_hom_05_hom_00000894, local
	.string "stg6_hom_05"
.endobj str_stg6_hom_05_hom_00000894

# .rodata:0x88 | 0xA8 | size: 0xC
.obj str_stg6_hom_10_hom_000008a0, local
	.string "stg6_hom_10"
.endobj str_stg6_hom_10_hom_000008a0

# .rodata:0x94 | 0xB4 | size: 0xF
.obj str_stg6_hom_10_yn_hom_000008ac, local
	.string "stg6_hom_10_yn"
.endobj str_stg6_hom_10_yn_hom_000008ac

# .rodata:0xA3 | 0xC3 | size: 0x1
.obj gap_03_000000C3_rodata, global
.hidden gap_03_000000C3_rodata
	.byte 0x00
.endobj gap_03_000000C3_rodata

# .rodata:0xA4 | 0xC4 | size: 0xC
.obj str_stg6_hom_06_hom_000008bc, local
	.string "stg6_hom_06"
.endobj str_stg6_hom_06_hom_000008bc

# .rodata:0xB0 | 0xD0 | size: 0x2
.obj str_a_hom_000008c8, local
	.string "a"
.endobj str_a_hom_000008c8

# .rodata:0xB2 | 0xD2 | size: 0x2
.obj gap_03_000000D2_rodata, global
.hidden gap_03_000000D2_rodata
	.2byte 0x0000
.endobj gap_03_000000D2_rodata

# .rodata:0xB4 | 0xD4 | size: 0xC
.obj str_stg6_hom_08_hom_000008cc, local
	.string "stg6_hom_08"
.endobj str_stg6_hom_08_hom_000008cc

# .rodata:0xC0 | 0xE0 | size: 0xC
.obj str_stg6_hom_09_hom_000008d8, local
	.string "stg6_hom_09"
.endobj str_stg6_hom_09_hom_000008d8

# .rodata:0xCC | 0xEC | size: 0x7
.obj str_トロン_hom_000008e4, local
	.4byte 0x8367838D
	.byte 0x83, 0x93, 0x00
.endobj str_トロン_hom_000008e4

# .rodata:0xD3 | 0xF3 | size: 0x1
.obj gap_03_000000F3_rodata, global
.hidden gap_03_000000F3_rodata
	.byte 0x00
.endobj gap_03_000000F3_rodata

# .rodata:0xD4 | 0xF4 | size: 0xC
.obj str_stg6_hom_00_hom_000008ec, local
	.string "stg6_hom_00"
.endobj str_stg6_hom_00_hom_000008ec

# .rodata:0xE0 | 0x100 | size: 0xC
.obj str_stg6_hom_01_hom_000008f8, local
	.string "stg6_hom_01"
.endobj str_stg6_hom_01_hom_000008f8

# .rodata:0xEC | 0x10C | size: 0xD
.obj str_stg6_rsh_211_hom_00000904, local
	.string "stg6_rsh_211"
.endobj str_stg6_rsh_211_hom_00000904

# .rodata:0xF9 | 0x119 | size: 0x3
.obj gap_03_00000119_rodata, global
.hidden gap_03_00000119_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000119_rodata

# .rodata:0xFC | 0x11C | size: 0xC
.obj str_stg6_hom_02_hom_00000914, local
	.string "stg6_hom_02"
.endobj str_stg6_hom_02_hom_00000914

# .rodata:0x108 | 0x128 | size: 0xC
.obj str_stg6_hom_03_hom_00000920, local
	.string "stg6_hom_03"
.endobj str_stg6_hom_03_hom_00000920

# .rodata:0x114 | 0x134 | size: 0xC
.obj str_stg6_hom_11_hom_0000092c, local
	.string "stg6_hom_11"
.endobj str_stg6_hom_11_hom_0000092c

# .rodata:0x120 | 0x140 | size: 0xC
.obj str_stg6_hom_12_hom_00000938, local
	.string "stg6_hom_12"
.endobj str_stg6_hom_12_hom_00000938

# .rodata:0x12C | 0x14C | size: 0xC
.obj str_stg6_hom_13_hom_00000944, local
	.string "stg6_hom_13"
.endobj str_stg6_hom_13_hom_00000944

# .rodata:0x138 | 0x158 | size: 0xC
.obj str_stg6_eki_03_hom_00000950, local
	.string "stg6_eki_03"
.endobj str_stg6_eki_03_hom_00000950

# .rodata:0x144 | 0x164 | size: 0xC
.obj str_stg6_eki_04_hom_0000095c, local
	.string "stg6_eki_04"
.endobj str_stg6_eki_04_hom_0000095c

# .rodata:0x150 | 0x170 | size: 0xC
.obj str_stg6_hom_16_hom_00000968, local
	.string "stg6_hom_16"
.endobj str_stg6_hom_16_hom_00000968

# .rodata:0x15C | 0x17C | size: 0xB
.obj str_ポワン探偵_hom_00000974, local
	.4byte 0x837C838F
	.4byte 0x83939254
	.byte 0x92, 0xE3, 0x00
.endobj str_ポワン探偵_hom_00000974

# .rodata:0x167 | 0x187 | size: 0x1
.obj gap_03_00000187_rodata, global
.hidden gap_03_00000187_rodata
	.byte 0x00
.endobj gap_03_00000187_rodata

# .rodata:0x168 | 0x188 | size: 0xF
.obj str_グルメキノピオ_hom_00000980, local
	.4byte 0x834F838B
	.4byte 0x8381834C
	.4byte 0x836D8373
	.byte 0x83, 0x49, 0x00
.endobj str_グルメキノピオ_hom_00000980

# .rodata:0x177 | 0x197 | size: 0x1
.obj gap_03_00000197_rodata, global
.hidden gap_03_00000197_rodata
	.byte 0x00
.endobj gap_03_00000197_rodata

# .rodata:0x178 | 0x198 | size: 0xD
.obj str_ナリキンパパ_hom_00000990, local
	.4byte 0x8369838A
	.4byte 0x834C8393
	.4byte 0x83708370
	.byte 0x00
.endobj str_ナリキンパパ_hom_00000990

# .rodata:0x185 | 0x1A5 | size: 0x3
.obj gap_03_000001A5_rodata, global
.hidden gap_03_000001A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001A5_rodata

# .rodata:0x188 | 0x1A8 | size: 0xB
.obj str_コナリキン_hom_000009a0, local
	.4byte 0x83528369
	.4byte 0x838A834C
	.byte 0x83, 0x93, 0x00
.endobj str_コナリキン_hom_000009a0

# .rodata:0x193 | 0x1B3 | size: 0x1
.obj gap_03_000001B3_rodata, global
.hidden gap_03_000001B3_rodata
	.byte 0x00
.endobj gap_03_000001B3_rodata

# .rodata:0x194 | 0x1B4 | size: 0x6
.obj str_駅員1_hom_000009ac, local
	.4byte 0x897788F5
	.2byte 0x3100
.endobj str_駅員1_hom_000009ac

# .rodata:0x19A | 0x1BA | size: 0x2
.obj gap_03_000001BA_rodata, global
.hidden gap_03_000001BA_rodata
	.2byte 0x0000
.endobj gap_03_000001BA_rodata

# .rodata:0x19C | 0x1BC | size: 0x6
.obj str_駅員2_hom_000009b4, local
	.4byte 0x897788F5
	.2byte 0x3200
.endobj str_駅員2_hom_000009b4

# .rodata:0x1A2 | 0x1C2 | size: 0x2
.obj gap_03_000001C2_rodata, global
.hidden gap_03_000001C2_rodata
	.2byte 0x0000
.endobj gap_03_000001C2_rodata

# .rodata:0x1A4 | 0x1C4 | size: 0x9
.obj str_ランペル_hom_000009bc, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.byte 0x00
.endobj str_ランペル_hom_000009bc

# .rodata:0x1AD | 0x1CD | size: 0x3
.obj gap_03_000001CD_rodata, global
.hidden gap_03_000001CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001CD_rodata

# .rodata:0x1B0 | 0x1D0 | size: 0x5
.obj str_hasi_hom_000009c8, local
	.string "hasi"
.endobj str_hasi_hom_000009c8

# .rodata:0x1B5 | 0x1D5 | size: 0x3
.obj gap_03_000001D5_rodata, global
.hidden gap_03_000001D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001D5_rodata

# .rodata:0x1B8 | 0x1D8 | size: 0x16
.obj str_SFX_STG6_BRIDGE_MOVE_hom_000009d0, local
	.string "SFX_STG6_BRIDGE_MOVE1"
.endobj str_SFX_STG6_BRIDGE_MOVE_hom_000009d0

# .rodata:0x1CE | 0x1EE | size: 0x2
.obj gap_03_000001EE_rodata, global
.hidden gap_03_000001EE_rodata
	.2byte 0x0000
.endobj gap_03_000001EE_rodata

# .rodata:0x1D0 | 0x1F0 | size: 0x16
.obj str_SFX_STG6_BRIDGE_MOVE_hom_000009e8, local
	.string "SFX_STG6_BRIDGE_MOVE2"
.endobj str_SFX_STG6_BRIDGE_MOVE_hom_000009e8

# .rodata:0x1E6 | 0x206 | size: 0x2
.obj gap_03_00000206_rodata, global
.hidden gap_03_00000206_rodata
	.2byte 0x0000
.endobj gap_03_00000206_rodata

# .rodata:0x1E8 | 0x208 | size: 0x8
.obj str_train_4_hom_00000a00, local
	.string "train_4"
.endobj str_train_4_hom_00000a00

# .rodata:0x1F0 | 0x210 | size: 0x8
.obj str_train_5_hom_00000a08, local
	.string "train_5"
.endobj str_train_5_hom_00000a08

# .rodata:0x1F8 | 0x218 | size: 0x8
.obj str_train_6_hom_00000a10, local
	.string "train_6"
.endobj str_train_6_hom_00000a10

# .rodata:0x200 | 0x220 | size: 0x17
.obj str_SFX_DOOR_SHUT_SLIDE1_hom_00000a18, local
	.string "SFX_DOOR_SHUT_SLIDE1_3"
.endobj str_SFX_DOOR_SHUT_SLIDE1_hom_00000a18

# .rodata:0x217 | 0x237 | size: 0x1
.obj gap_03_00000237_rodata, global
.hidden gap_03_00000237_rodata
	.byte 0x00
.endobj gap_03_00000237_rodata

# .rodata:0x218 | 0x238 | size: 0xC
.obj str_stg6_eki_05_hom_00000a30, local
	.string "stg6_eki_05"
.endobj str_stg6_eki_05_hom_00000a30

# .rodata:0x224 | 0x244 | size: 0x18
.obj str_SFX_STG6_CROSSING_OP_hom_00000a3c, local
	.string "SFX_STG6_CROSSING_OPEN1"
.endobj str_SFX_STG6_CROSSING_OP_hom_00000a3c

# .rodata:0x23C | 0x25C | size: 0x9
.obj str_shadanki_hom_00000a54, local
	.string "shadanki"
.endobj str_shadanki_hom_00000a54

# .rodata:0x245 | 0x265 | size: 0x3
.obj gap_03_00000265_rodata, global
.hidden gap_03_00000265_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000265_rodata

# .rodata:0x248 | 0x268 | size: 0x9
.obj str_eki_03_S_hom_00000a60, local
	.string "eki_03_S"
.endobj str_eki_03_S_hom_00000a60

# .rodata:0x251 | 0x271 | size: 0x3
.obj gap_03_00000271_rodata, global
.hidden gap_03_00000271_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000271_rodata

# .rodata:0x254 | 0x274 | size: 0x9
.obj str_group614_hom_00000a6c, local
	.string "group614"
.endobj str_group614_hom_00000a6c

# .rodata:0x25D | 0x27D | size: 0x3
.obj gap_03_0000027D_rodata, global
.hidden gap_03_0000027D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000027D_rodata

# .rodata:0x260 | 0x280 | size: 0x9
.obj str_rsh_02_c_hom_00000a78, local
	.string "rsh_02_c"
.endobj str_rsh_02_c_hom_00000a78

# .rodata:0x269 | 0x289 | size: 0x3
.obj gap_03_00000289_rodata, global
.hidden gap_03_00000289_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000289_rodata

# .rodata:0x26C | 0x28C | size: 0xB
.obj str_hom_hassya_hom_00000a84, local
	.string "hom_hassya"
.endobj str_hom_hassya_hom_00000a84

# .rodata:0x277 | 0x297 | size: 0x1
.obj gap_03_00000297_rodata, global
.hidden gap_03_00000297_rodata
	.byte 0x00
.endobj gap_03_00000297_rodata

# .rodata:0x278 | 0x298 | size: 0x17
.obj str_SFX_DOOR_OPEN_SLIDE1_hom_00000a90, local
	.string "SFX_DOOR_OPEN_SLIDE1_3"
.endobj str_SFX_DOOR_OPEN_SLIDE1_hom_00000a90

# .rodata:0x28F | 0x2AF | size: 0x1
.obj gap_03_000002AF_rodata, global
.hidden gap_03_000002AF_rodata
	.byte 0x00
.endobj gap_03_000002AF_rodata

# .rodata:0x290 | 0x2B0 | size: 0xD
.obj str_nidome_start_hom_00000aa8, local
	.string "nidome_start"
.endobj str_nidome_start_hom_00000aa8

# .rodata:0x29D | 0x2BD | size: 0x3
.obj gap_03_000002BD_rodata, global
.hidden gap_03_000002BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002BD_rodata

# .rodata:0x2A0 | 0x2C0 | size: 0x7
.obj str_tobira_hom_00000ab8, local
	.string "tobira"
.endobj str_tobira_hom_00000ab8

# .rodata:0x2A7 | 0x2C7 | size: 0x1
.obj gap_03_000002C7_rodata, global
.hidden gap_03_000002C7_rodata
	.byte 0x00
.endobj gap_03_000002C7_rodata

# .rodata:0x2A8 | 0x2C8 | size: 0xF
.obj str_stg6_hom_01_01_hom_00000ac0, local
	.string "stg6_hom_01_01"
.endobj str_stg6_hom_01_01_hom_00000ac0

# .rodata:0x2B7 | 0x2D7 | size: 0x1
.obj gap_03_000002D7_rodata, global
.hidden gap_03_000002D7_rodata
	.byte 0x00
.endobj gap_03_000002D7_rodata

# .rodata:0x2B8 | 0x2D8 | size: 0x4
.obj str_G_1_hom_00000ad0, local
	.string "G_1"
.endobj str_G_1_hom_00000ad0

# .rodata:0x2BC | 0x2DC | size: 0x4
.obj str_O_1_hom_00000ad4, local
	.string "O_1"
.endobj str_O_1_hom_00000ad4

# .rodata:0x2C0 | 0x2E0 | size: 0x18
.obj str_SFX_STG6_LANPEL_CHAN_hom_00000ad8, local
	.string "SFX_STG6_LANPEL_CHANGE1"
.endobj str_SFX_STG6_LANPEL_CHAN_hom_00000ad8

# .rodata:0x2D8 | 0x2F8 | size: 0xC
.obj str_kemuri_test_hom_00000af0, local
	.string "kemuri_test"
.endobj str_kemuri_test_hom_00000af0

# .rodata:0x2E4 | 0x304 | size: 0xF
.obj str_stg6_hom_01_02_hom_00000afc, local
	.string "stg6_hom_01_02"
.endobj str_stg6_hom_01_02_hom_00000afc

# .rodata:0x2F3 | 0x313 | size: 0x1
.obj gap_03_00000313_rodata, global
.hidden gap_03_00000313_rodata
	.byte 0x00
.endobj gap_03_00000313_rodata

# .rodata:0x2F4 | 0x314 | size: 0x16
.obj str_SFX_STG6_LANPEL_JUMP_hom_00000b0c, local
	.string "SFX_STG6_LANPEL_JUMP1"
.endobj str_SFX_STG6_LANPEL_JUMP_hom_00000b0c

# .rodata:0x30A | 0x32A | size: 0x2
.obj gap_03_0000032A_rodata, global
.hidden gap_03_0000032A_rodata
	.2byte 0x0000
.endobj gap_03_0000032A_rodata

# .rodata:0x30C | 0x32C | size: 0x9
.obj str_rsh_02_b_hom_00000b24, local
	.string "rsh_02_b"
.endobj str_rsh_02_b_hom_00000b24

# .rodata:0x315 | 0x335 | size: 0x3
.obj gap_03_00000335_rodata, global
.hidden gap_03_00000335_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000335_rodata

# .rodata:0x318 | 0x338 | size: 0xD
.obj str_hom_touchaku_hom_00000b30, local
	.string "hom_touchaku"
.endobj str_hom_touchaku_hom_00000b30

# .rodata:0x325 | 0x345 | size: 0x3
.obj gap_03_00000345_rodata, global
.hidden gap_03_00000345_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000345_rodata

# .rodata:0x328 | 0x348 | size: 0x7
.obj str_hasi_L_hom_00000b40, local
	.string "hasi_L"
.endobj str_hasi_L_hom_00000b40

# .rodata:0x32F | 0x34F | size: 0x1
.obj gap_03_0000034F_rodata, global
.hidden gap_03_0000034F_rodata
	.byte 0x00
.endobj gap_03_0000034F_rodata

# .rodata:0x330 | 0x350 | size: 0x7
.obj str_hasi_R_hom_00000b48, local
	.string "hasi_R"
.endobj str_hasi_R_hom_00000b48

# .rodata:0x337 | 0x357 | size: 0x1
.obj gap_03_00000357_rodata, global
.hidden gap_03_00000357_rodata
	.byte 0x00
.endobj gap_03_00000357_rodata

# .rodata:0x338 | 0x358 | size: 0xE
.obj str_BGM_STG6_HOM1_hom_00000b50, local
	.string "BGM_STG6_HOM1"
.endobj str_BGM_STG6_HOM1_hom_00000b50

# .rodata:0x346 | 0x366 | size: 0x2
.obj gap_03_00000366_rodata, global
.hidden gap_03_00000366_rodata
	.2byte 0x0000
.endobj gap_03_00000366_rodata

# .rodata:0x348 | 0x368 | size: 0xE
.obj str_ENV_STG6_EKI1_hom_00000b60, local
	.string "ENV_STG6_EKI1"
.endobj str_ENV_STG6_EKI1_hom_00000b60

# .rodata:0x356 | 0x376 | size: 0x2
.obj gap_03_00000376_rodata, global
.hidden gap_03_00000376_rodata
	.2byte 0x0000
.endobj gap_03_00000376_rodata

# .rodata:0x358 | 0x378 | size: 0xA
.obj str_mobj_save_hom_00000b70, local
	.string "mobj_save"
.endobj str_mobj_save_hom_00000b70

# .rodata:0x362 | 0x382 | size: 0x2
.obj gap_03_00000382_rodata, global
.hidden gap_03_00000382_rodata
	.2byte 0x0000
.endobj gap_03_00000382_rodata

# .rodata:0x364 | 0x384 | size: 0xD
.obj str_mobj_recover_hom_00000b7c, local
	.string "mobj_recover"
.endobj str_mobj_recover_hom_00000b7c

# .rodata:0x371 | 0x391 | size: 0x3
.obj gap_03_00000391_rodata, global
.hidden gap_03_00000391_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000391_rodata

# .rodata:0x374 | 0x394 | size: 0x4
.obj str_sun_hom_00000b8c, local
	.string "sun"
.endobj str_sun_hom_00000b8c

# .rodata:0x378 | 0x398 | size: 0x6
.obj str_short_hom_00000b90, local
	.string "short"
.endobj str_short_hom_00000b90

# .rodata:0x37E | 0x39E | size: 0x2
.obj gap_03_0000039E_rodata, global
.hidden gap_03_0000039E_rodata
	.2byte 0x0000
.endobj gap_03_0000039E_rodata

# .rodata:0x380 | 0x3A0 | size: 0x5
.obj str_long_hom_00000b98, local
	.string "long"
.endobj str_long_hom_00000b98

# .rodata:0x385 | 0x3A5 | size: 0x3
.obj gap_03_000003A5_rodata, global
.hidden gap_03_000003A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003A5_rodata

# .rodata:0x388 | 0x3A8 | size: 0x7
.obj str_nidome_hom_00000ba0, local
	.string "nidome"
.endobj str_nidome_hom_00000ba0

# .rodata:0x38F | 0x3AF | size: 0x1
.obj gap_03_000003AF_rodata, global
.hidden gap_03_000003AF_rodata
	.byte 0x00
.endobj gap_03_000003AF_rodata

# .rodata:0x390 | 0x3B0 | size: 0x5
.obj str_lock_hom_00000ba8, local
	.string "lock"
.endobj str_lock_hom_00000ba8

# .rodata:0x395 | 0x3B5 | size: 0x3
.obj gap_03_000003B5_rodata, global
.hidden gap_03_000003B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003B5_rodata

# .rodata:0x398 | 0x3B8 | size: 0x8
.obj str_train_2_hom_00000bb0, local
	.string "train_2"
.endobj str_train_2_hom_00000bb0

# .rodata:0x3A0 | 0x3C0 | size: 0x28
.obj texmtx_tbl$633, local
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
.endobj texmtx_tbl$633

# .rodata:0x3C8 | 0x3E8 | size: 0x4
.obj float_31p416_hom_00000be0, local
	.float 31.41592
.endobj float_31p416_hom_00000be0

# .rodata:0x3CC | 0x3EC | size: 0x4
.obj float_0p015625_hom_00000be4, local
	.float 0.015625
.endobj float_0p015625_hom_00000be4

# .rodata:0x3D0 | 0x3F0 | size: 0x4
.obj float_0p125_hom_00000be8, local
	.float 0.125
.endobj float_0p125_hom_00000be8

# .rodata:0x3D4 | 0x3F4 | size: 0x4
.obj float_128_hom_00000bec, local
	.float 128
.endobj float_128_hom_00000bec

# .rodata:0x3D8 | 0x3F8 | size: 0x4
.obj float_3_hom_00000bf0, local
	.float 3
.endobj float_3_hom_00000bf0

# .rodata:0x3DC | 0x3FC | size: 0x4
.obj zero_hom_00000bf4, local
	.float 0
.endobj zero_hom_00000bf4

# .rodata:0x3E0 | 0x400 | size: 0x4
.obj float_0p5_hom_00000bf8, local
	.float 0.5
.endobj float_0p5_hom_00000bf8
	.4byte 0x00000000

# .rodata:0x3E8 | 0x408 | size: 0x8
.obj double_to_int_hom_00000c00, local
	.double 4503601774854144
.endobj double_to_int_hom_00000c00

# .rodata:0x3F0 | 0x410 | size: 0x8
.obj double_to_int_mask_hom_00000c08, local
	.double 4503599627370496
.endobj double_to_int_mask_hom_00000c08

# .rodata:0x3F8 | 0x418 | size: 0x4
.obj float_1024_hom_00000c10, local
	.float 1024
.endobj float_1024_hom_00000c10

# .rodata:0x3FC | 0x41C | size: 0x4
.obj float_360_hom_00000c14, local
	.float 360
.endobj float_360_hom_00000c14

# .rodata:0x400 | 0x420 | size: 0x4
.obj float_3600_hom_00000c18, local
	.float 3600
.endobj float_3600_hom_00000c18

# .rodata:0x404 | 0x424 | size: 0x4
.obj float_12_hom_00000c1c, local
	.float 12
.endobj float_12_hom_00000c1c

# .rodata:0x408 | 0x428 | size: 0x4
.obj float_60_hom_00000c20, local
	.float 60
.endobj float_60_hom_00000c20

# .rodata:0x40C | 0x42C | size: 0x4
.obj gap_03_0000042C_rodata, global
.hidden gap_03_0000042C_rodata
	.4byte 0x00000000
.endobj gap_03_0000042C_rodata

# 0x00000060..0x00002160 | size: 0x2100
.data
.balign 8

# .data:0x0 | 0x60 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x68 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x70 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x74 | size: 0x4
.obj gap_04_00000074_data, global
.hidden gap_04_00000074_data
	.4byte 0x00000000
.endobj gap_04_00000074_data

# .data:0x18 | 0x78 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x80 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x84 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x88 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x90 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x94 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x98 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x9C | size: 0x4
.obj gap_04_0000009C_data, global
.hidden gap_04_0000009C_data
	.4byte 0x00000000
.endobj gap_04_0000009C_data

# .data:0x40 | 0xA0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xB0 | size: 0x58
.obj n_2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_tobira_1_hom_00000818
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_tobira_2_hom_00000824
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_2_door_open

# .data:0xA8 | 0x108 | size: 0x58
.obj n_2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_tobira_1_hom_00000818
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_tobira_2_hom_00000824
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_2_door_close

# .data:0x100 | 0x160 | size: 0xB4
.obj bero_data, local
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x00010008
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_train_door
	.4byte str_rsh_01_b_hom_0000083c
	.4byte str_s_bero_hom_00000848
	.4byte 0x00010001
	.4byte str_n_1_door_close_hom_00000850
	.4byte str_n_1_door_open_hom_00000860
	.4byte str_n_bero_2_hom_00000870
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_eki_00_hom_0000087c
	.4byte str_s_bero_hom_00000848
	.4byte 0x00050005
	.4byte n_2_door_close
	.4byte n_2_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x1B4 | 0x214 | size: 0x78
.obj bero_data_nidome, local
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x00010008
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_train_nidome
	.4byte str_rsh_01_b_hom_0000083c
	.4byte str_s_bero_hom_00000848
	.4byte 0x00010001
	.4byte str_n_1_door_close_hom_00000850
	.4byte str_n_1_door_open_hom_00000860
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data_nidome

# .data:0x22C | 0x28C | size: 0x170
.obj evt_carry_up_bridge, local
	.4byte 0x00020018
	.4byte 0xF8406976
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_04_hom_00000884
	.4byte 0x00000000
	.4byte str_me_hom_00000890
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x00000021
	.4byte 0x0000023F
	.4byte 0x000000D5
	.4byte 0x00000040
	.4byte 0x00000066
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00001770
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406976
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406976
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_05_hom_00000894
	.4byte 0x00000000
	.4byte str_me_hom_00000890
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_10_hom_000008a0
	.4byte 0x00000000
	.4byte str_me_hom_00000890
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg6_hom_10_yn_hom_000008ac
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg6_hom_06_hom_000008bc
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_a_hom_000008c8
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_a_hom_000008c8
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_a_hom_000008c8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_08_hom_000008cc
	.4byte 0x00000000
	.4byte str_me_hom_00000890
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000137
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg6_hom_09_hom_000008d8
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_carry_up_bridge

# .data:0x39C | 0x3FC | size: 0x5C
.obj init_powan_toron_konari_papa_gurume, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000145
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_hom_00000890
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000136
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トロン_hom_000008e4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_powan_toron_konari_papa_gurume

# .data:0x3F8 | 0x458 | size: 0x20
.obj talk_powan, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_00_hom_000008ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_powan

# .data:0x418 | 0x478 | size: 0x20
.obj talk_toron, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_01_hom_000008f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_toron

# .data:0x438 | 0x498 | size: 0x20
.obj talk_gurume, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_rsh_211_hom_00000904
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_gurume

# .data:0x458 | 0x4B8 | size: 0x20
.obj talk_papa, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_02_hom_00000914
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_papa

# .data:0x478 | 0x4D8 | size: 0x20
.obj talk_konari, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_03_hom_00000920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_konari

# .data:0x498 | 0x4F8 | size: 0x8
.obj init_ekiin1, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_ekiin1

# .data:0x4A0 | 0x500 | size: 0x80
.obj talk_ekiin1, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000137
	.4byte 0x0001005E
	.4byte evt_carry_up_bridge
	.4byte 0x00010026
	.4byte 0x00000145
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_11_hom_0000092c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000146
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_12_hom_00000938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_13_hom_00000944
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_ekiin1

# .data:0x520 | 0x580 | size: 0x34
.obj init_ekiin2, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000145
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_hom_00000890
	.4byte 0xFFFFFC9F
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_ekiin2

# .data:0x554 | 0x5B4 | size: 0x70
.obj talk_ekiin2, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000145
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_eki_03_hom_00000950
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000146
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_eki_04_hom_0000095c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_16_hom_00000968
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_ekiin2

# .data:0x5C4 | 0x624 | size: 0x33C
.obj npc_data, local
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan_toron_konari_papa_gurume
	.4byte 0x00000000
	.4byte talk_powan
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_トロン_hom_000008e4
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan_toron_konari_papa_gurume
	.4byte 0x00000000
	.4byte talk_toron
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_グルメキノピオ_hom_00000980
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan_toron_konari_papa_gurume
	.4byte 0x00000000
	.4byte talk_gurume
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ナリキンパパ_hom_00000990
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan_toron_konari_papa_gurume
	.4byte 0x00000000
	.4byte talk_papa
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_コナリキン_hom_000009a0
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan_toron_konari_papa_gurume
	.4byte 0x00000000
	.4byte talk_konari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_駅員1_hom_000009ac
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_ekiin1
	.4byte 0x00000000
	.4byte talk_ekiin1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_駅員2_hom_000009b4
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_ekiin2
	.4byte 0x00000000
	.4byte talk_ekiin2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ランペル_hom_000009bc
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npc_data

# .data:0x900 | 0x960 | size: 0x240
.obj evt_bridge_down, local
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_cam3d_evt_set_xyz
	.4byte 0xFFFFFEA2
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_cam3d_evt_set_xyz
	.4byte 0x00000064
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000014B4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte str_a_hom_000008c8
	.4byte str_駅員1_hom_000009ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員1_hom_000009ac
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x00000021
	.4byte 0x0000023F
	.4byte 0x000000D5
	.4byte 0x00000040
	.4byte 0x00000066
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hasi_hom_000009c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_BRIDGE_MOVE_hom_000009d0
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_hasi_hom_000009c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_BRIDGE_MOVE_hom_000009e8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_hasi_hom_000009c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020037
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000113
	.4byte 0x00000104
	.4byte 0x00000578
	.4byte 0x00000113
	.4byte 0x000000D2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_hasi_hom_000009c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A81
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_eki_00_hom_0000087c
	.4byte str_s_bero_hom_00000848
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_bridge_down

# .data:0xB40 | 0xBA0 | size: 0x8
.obj key_tbl, local
	.4byte 0x00000018
	.4byte 0xFFFFFFFF
.endobj key_tbl

# .data:0xB48 | 0xBA8 | size: 0x5C
.obj evt_chk, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000018
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_hom_00000890
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_chk

# .data:0xBA4 | 0xC04 | size: 0x28
.obj evt_lock, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000138
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_lock

# .data:0xBCC | 0xC2C | size: 0x34
.obj evt_train_door, local
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000145
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_train_door

# .data:0xC00 | 0xC60 | size: 0x418
.obj evt_train, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_4_hom_00000a00
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_5_hom_00000a08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_6_hom_00000a10
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_cam3d_get_shift
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x000B005B
	.4byte evt_cam3d_event_from_road
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFCCC
	.4byte 0x0000001E
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFCD6
	.4byte 0x00000046
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFCD6
	.4byte 0x00000014
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_駅員2_hom_000009b4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_駅員2_hom_000009b4
	.4byte 0xFFFFFCE0
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_SLIDE1_hom_00000a18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_n_1_door_close_hom_00000850
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_n_1_door_close_hom_00000850
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_eki_05_hom_00000a30
	.4byte 0x00000000
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000013E
	.4byte 0x00000050
	.4byte 0x0000015B
	.4byte 0xFFFFFF7A
	.4byte 0x00000041
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_CROSSING_OP_hom_00000a3c
	.4byte 0xFFFFFF56
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_shadanki_hom_00000a54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_shadanki_hom_00000a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_eki_03_S_hom_00000a60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_group614_hom_00000a6c
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte hom_10_evt_resha_start_12_data_2A74
	.4byte 0x0001000A
	.4byte 0x00001194
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000032
	.4byte 0x0000007D
	.4byte 0x000001F4
	.4byte 0x00000032
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x0000000C
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001000A
	.4byte 0x00001194
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員1_hom_000009ac
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x00000019
	.4byte 0x000000FA
	.4byte 0x00000111
	.4byte 0x0000004B
	.4byte 0xFFFFFFF6
	.4byte 0x000005DC
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x00020032
	.4byte 0xF840697E
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406979
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000146
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_c_hom_00000a78
	.4byte str_hom_hassya_hom_00000a84
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_train

# .data:0x1018 | 0x1078 | size: 0x4CC
.obj evt_train_nidome, local
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_4_hom_00000a00
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_5_hom_00000a08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_6_hom_00000a10
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_SLIDE1_hom_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_n_1_door_open_hom_00000860
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_n_1_door_open_hom_00000860
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFCCC
	.4byte 0x0000000C
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFCE0
	.4byte 0x00000028
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFCE0
	.4byte 0x00000014
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000001
	.4byte 0xFFFFFCD6
	.4byte 0x00000028
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000001
	.4byte 0xFFFFFCD6
	.4byte 0x0000001E
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_駅員2_hom_000009b4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_駅員2_hom_000009b4
	.4byte 0xFFFFFCE0
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_SLIDE1_hom_00000a18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_n_1_door_close_hom_00000850
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_n_1_door_close_hom_00000850
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_eki_05_hom_00000a30
	.4byte 0x00000000
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_CROSSING_OP_hom_00000a3c
	.4byte 0xFFFFFF56
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_shadanki_hom_00000a54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_shadanki_hom_00000a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_eki_03_S_hom_00000a60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_group614_hom_00000a6c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam_ctrl_onoff
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00001770
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte hom_10_evt_resha_start_12_data_2A74
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00001770
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員2_hom_000009b4
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte hom_10_evt_resha_start2_12_data_2E44
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00002710
	.4byte 0x00020032
	.4byte 0xF840697E
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406979
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE04E6
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF5DE04E6
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_c_hom_00000a78
	.4byte str_nidome_start_hom_00000aa8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_train_nidome

# .data:0x14E4 | 0x1544 | size: 0x730
.obj evt_hom_touchaku, local
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000113
	.4byte 0x00000104
	.4byte 0x00000578
	.4byte 0x00000113
	.4byte 0x000000D2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トロン_hom_000008e4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_グルメキノピオ_hom_00000980
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ナリキンパパ_hom_00000990
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コナリキン_hom_000009a0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トロン_hom_000008e4
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_駅員2_hom_000009b4
	.4byte 0xFFFFFD12
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_stop_12_data_3578
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_4_hom_00000a00
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001CA
	.4byte 0x00000061
	.4byte 0x0000016E
	.4byte 0x0000004E
	.4byte 0x0000006E
	.4byte 0x000000BD
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_4_hom_00000a00
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFCD6
	.4byte 0x000000E8
	.4byte 0x00000274
	.4byte 0xFFFFFCD6
	.4byte 0x00000089
	.4byte 0x00000057
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_トロン_hom_000008e4
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0xFFFFFCD1
	.4byte 0x00000050
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トロン_hom_000008e4
	.4byte 0xFFFFFCE0
	.4byte 0x00000050
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_駅員2_hom_000009b4
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_SLIDE1_hom_00000a90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_hom_00000ab8
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_トロン_hom_000008e4
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_駅員2_hom_000009b4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_トロン_hom_000008e4
	.4byte 0xFFFFFCE0
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_トロン_hom_000008e4
	.4byte 0xFFFFFCF4
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_hom_00000974
	.4byte 0xFFFFFCD1
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ポワン探偵_hom_00000974
	.4byte str_トロン_hom_000008e4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_SLIDE1_hom_00000a18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_hom_00000ab8
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_トロン_hom_000008e4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_01_01_hom_00000ac0
	.4byte 0x00000000
	.4byte str_トロン_hom_000008e4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_駅員2_hom_000009b4
	.4byte str_G_1_hom_00000ad0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ポワン探偵_hom_00000974
	.4byte str_O_1_hom_00000ad4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_トロン_hom_000008e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_LANPEL_CHAN_hom_00000ad8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トロン_hom_000008e4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_hom_000009bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_hom_00000af0
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFCF4
	.4byte 0x000000C2
	.4byte 0x000001E1
	.4byte 0xFFFFFCF4
	.4byte 0x0000007D
	.4byte 0x00000057
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_hom_01_02_hom_00000afc
	.4byte 0x00000000
	.4byte str_ランペル_hom_000009bc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFCF4
	.4byte 0x00000103
	.4byte 0x00000308
	.4byte 0xFFFFFCF4
	.4byte 0x00000089
	.4byte 0x00000057
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_ランペル_hom_000009bc
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte str_SFX_STG6_LANPEL_JUMP_hom_00000b0c
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ランペル_hom_000009bc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ランペル_hom_000009bc
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_hom_000009bc
	.4byte 0x0000005A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_hom_000009bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_hom_000009bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000028
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFE0C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000136
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_b_hom_00000b24
	.4byte str_hom_touchaku_hom_00000b30
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hom_touchaku

# .data:0x1C14 | 0x1C74 | size: 0xE0
.obj evt_hom_touchaku_nidome, local
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000196
	.4byte 0x0000013D
	.4byte 0x00000254
	.4byte 0xFFFFFE7B
	.4byte 0x00000089
	.4byte 0xFFFFFFD4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_stop_12_data_3578
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_b_hom_00000b24
	.4byte str_hom_touchaku_hom_00000b30
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hom_touchaku_nidome

# .data:0x1CF4 | 0x1D54 | size: 0x40C
.obj hom_00_init_evt_12_data_1D54, global
	.4byte 0x00020032
	.4byte 0xFAA2B58F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hasi_L_hom_00000b40
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hasi_R_hom_00000b48
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npc_data
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG6_HOM1_hom_00000b50
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_EKI1_hom_00000b60
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_hom_00000b70
	.4byte 0xFFFFFF51
	.4byte 0x0000008C
	.4byte 0xFFFFFF56
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_hom_00000b7c
	.4byte 0x0000000F
	.4byte 0xFFFFFF83
	.4byte 0x0000008C
	.4byte 0xFFFFFF56
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right_12_data_3888
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_4_hom_00000a00
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_hom_00000a08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_hom_00000a10
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left_12_data_3914
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C81
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_n_bero_2_hom_00000870
	.4byte 0x0002001F
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_shadanki_hom_00000a54
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000002
	.4byte sun_tev
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sun_hom_00000b8c
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_sun_hom_00000b8c
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_sun_hom_00000b8c
	.4byte 0x10000000
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte test_glare
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte tokei
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_short_hom_00000b90
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_long_hom_00000b98
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00020018
	.4byte 0xF8406978
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_bridge_down
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000136
	.4byte 0x0001005C
	.4byte evt_hom_touchaku
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_nidome_hom_00000ba0
	.4byte 0x0001005C
	.4byte evt_hom_touchaku_nidome
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000154
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_n_bero_1_hom_00000830
	.4byte bero_data_nidome
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000138
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_lock_hom_00000ba8
	.4byte 0x00000018
	.4byte 0xFFFFFEFC
	.4byte 0x0000005A
	.4byte 0xFFFFFF42
	.4byte 0x00000000
	.4byte evt_chk
	.4byte evt_lock
	.4byte 0xF8406977
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000145
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hasi_hom_000009c8
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000145
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x00800000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte str_n_bero_1_hom_00000830
	.4byte 0x00000000
	.4byte evt_train
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_n_1_door_open_hom_00000860
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sub_mail_event
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_2_hom_00000bb0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_00_init_evt_12_data_1D54

# 0x00000000..0x00000004 | size: 0x4
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x4
.obj ind_lp, local
	.skip 0x4
.endobj ind_lp
