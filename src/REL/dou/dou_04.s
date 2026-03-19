.include "macros.inc"
.file "dou_04.o"

# 0x0000025C..0x0000055C | size: 0x300
.text
.balign 4

# .text:0x0 | 0x25C | size: 0x44
.fn evt_mario_check_menu, local
/* 0000025C 00000320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000260 00000324  7C 08 02 A6 */	mflr r0
/* 00000264 00000328  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000268 0000032C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000026C 00000330  7C 7E 1B 78 */	mr r30, r3
/* 00000270 00000334  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000274 00000338  4B FF FD F9 */	bl marioCheckMenuDisable
/* 00000278 0000033C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000027C 00000340  7C 65 1B 78 */	mr r5, r3
/* 00000280 00000344  7F C3 F3 78 */	mr r3, r30
/* 00000284 00000348  4B FF FD E9 */	bl evtSetValue
/* 00000288 0000034C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000028C 00000350  38 60 00 02 */	li r3, 0x2
/* 00000290 00000354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000294 00000358  7C 08 03 A6 */	mtlr r0
/* 00000298 0000035C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000029C 00000360  4E 80 00 20 */	blr
.endfn evt_mario_check_menu

# .text:0x44 | 0x2A0 | size: 0x158
.fn evt_box_pukapuka, local
/* 000002A0 00000364  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000002A4 00000368  7C 08 02 A6 */	mflr r0
/* 000002A8 0000036C  90 01 00 54 */	stw r0, 0x54(r1)
/* 000002AC 00000370  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 000002B0 00000374  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 000002B4 00000378  BF C1 00 38 */	stmw r30, 0x38(r1)
/* 000002B8 0000037C  7C 7E 1B 78 */	mr r30, r3
/* 000002BC 00000380  2C 04 00 00 */	cmpwi r4, 0x0
/* 000002C0 00000384  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000002C4 00000388  41 82 00 10 */	beq .L_000002D4
/* 000002C8 0000038C  38 00 00 00 */	li r0, 0x0
/* 000002CC 00000390  90 1E 00 78 */	stw r0, 0x78(r30)
/* 000002D0 00000394  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_000002D4:
/* 000002D4 00000398  80 9E 00 7C */	lwz r4, 0x7c(r30)
/* 000002D8 0000039C  3C 00 43 30 */	lis r0, 0x4330
/* 000002DC 000003A0  90 01 00 08 */	stw r0, 0x8(r1)
/* 000002E0 000003A4  3C 60 00 00 */	lis r3, double_to_int_dou_00004580@ha
/* 000002E4 000003A8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 000002E8 000003AC  C8 23 00 00 */	lfd f1, double_to_int_dou_00004580@l(r3)
/* 000002EC 000003B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 000002F0 000003B4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000002F4 000003B8  EC 20 08 28 */	fsubs f1, f0, f1
/* 000002F8 000003BC  4B FF FD 75 */	bl sinfd
/* 000002FC 000003C0  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 00000300 000003C4  3C 00 43 30 */	lis r0, 0x4330
/* 00000304 000003C8  3C A0 00 00 */	lis r5, float_0p7_dou_00004578@ha
/* 00000308 000003CC  3C 80 00 00 */	lis r4, double_to_int_dou_00004580@ha
/* 0000030C 000003D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00000310 000003D4  C0 65 00 00 */	lfs f3, float_0p7_dou_00004578@l(r5)
/* 00000314 000003D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000318 000003DC  C8 44 00 00 */	lfd f2, double_to_int_dou_00004580@l(r4)
/* 0000031C 000003E0  EF E3 18 78 */	fmsubs f31, f3, f1, f3
/* 00000320 000003E4  90 61 00 14 */	stw r3, 0x14(r1)
/* 00000324 000003E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00000328 000003EC  EC 20 10 28 */	fsubs f1, f0, f2
/* 0000032C 000003F0  4B FF FD 41 */	bl sinfd
/* 00000330 000003F4  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 00000334 000003F8  3C 80 00 00 */	lis r4, float_1p5_dou_00004574@ha
/* 00000338 000003FC  C0 04 00 00 */	lfs f0, float_1p5_dou_00004574@l(r4)
/* 0000033C 00000400  3C 00 43 30 */	lis r0, 0x4330
/* 00000340 00000404  38 63 00 02 */	addi r3, r3, 0x2
/* 00000344 00000408  90 01 00 18 */	stw r0, 0x18(r1)
/* 00000348 0000040C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000034C 00000410  EC 00 00 78 */	fmsubs f0, f0, f1, f0
/* 00000350 00000414  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00000354 00000418  3C 80 00 00 */	lis r4, double_to_int_dou_00004580@ha
/* 00000358 0000041C  C8 24 00 00 */	lfd f1, double_to_int_dou_00004580@l(r4)
/* 0000035C 00000420  EF E0 F8 2A */	fadds f31, f0, f31
/* 00000360 00000424  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00000364 00000428  EC 20 08 28 */	fsubs f1, f0, f1
/* 00000368 0000042C  4B FF FD 05 */	bl reviseAngle
/* 0000036C 00000430  FC 00 08 1E */	fctiwz f0, f1
/* 00000370 00000434  3C 00 43 30 */	lis r0, 0x4330
/* 00000374 00000438  3C 60 00 00 */	lis r3, double_to_int_dou_00004580@ha
/* 00000378 0000043C  90 01 00 28 */	stw r0, 0x28(r1)
/* 0000037C 00000440  C8 23 00 00 */	lfd f1, double_to_int_dou_00004580@l(r3)
/* 00000380 00000444  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 00000384 00000448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000388 0000044C  90 1E 00 78 */	stw r0, 0x78(r30)
/* 0000038C 00000450  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 00000390 00000454  38 03 00 01 */	addi r0, r3, 0x1
/* 00000394 00000458  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000398 0000045C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 0000039C 00000460  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 000003A0 00000464  EC 20 08 28 */	fsubs f1, f0, f1
/* 000003A4 00000468  4B FF FC C9 */	bl reviseAngle
/* 000003A8 0000046C  FC 20 08 1E */	fctiwz f1, f1
/* 000003AC 00000470  3C 60 00 00 */	lis r3, float_25_dou_0000457c@ha
/* 000003B0 00000474  38 83 00 00 */	addi r4, r3, float_25_dou_0000457c@l
/* 000003B4 00000478  7F C3 F3 78 */	mr r3, r30
/* 000003B8 0000047C  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 000003BC 00000480  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 000003C0 00000484  EF FF 00 28 */	fsubs f31, f31, f0
/* 000003C4 00000488  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000003C8 0000048C  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 000003CC 00000490  FC 20 F8 90 */	fmr f1, f31
/* 000003D0 00000494  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000003D4 00000498  4B FF FC 99 */	bl evtSetFloat
/* 000003D8 0000049C  38 60 00 00 */	li r3, 0x0
/* 000003DC 000004A0  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 000003E0 000004A4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 000003E4 000004A8  BB C1 00 38 */	lmw r30, 0x38(r1)
/* 000003E8 000004AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 000003EC 000004B0  7C 08 03 A6 */	mtlr r0
/* 000003F0 000004B4  38 21 00 50 */	addi r1, r1, 0x50
/* 000003F4 000004B8  4E 80 00 20 */	blr
.endfn evt_box_pukapuka

# .text:0x19C | 0x3F8 | size: 0x164
.fn evt_mapgrp_translate2, local
/* 000003F8 000004BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000003FC 000004C0  7C 08 02 A6 */	mflr r0
/* 00000400 000004C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 00000404 000004C8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00000408 000004CC  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 0000040C 000004D0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00000410 000004D4  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00000414 000004D8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00000418 000004DC  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 0000041C 000004E0  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00000420 000004E4  7C 7C 1B 78 */	mr r28, r3
/* 00000424 000004E8  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000428 000004EC  4B FF FC 45 */	bl marioGetPtr
/* 0000042C 000004F0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000430 000004F4  7C 7F 1B 78 */	mr r31, r3
/* 00000434 000004F8  7F 83 E3 78 */	mr r3, r28
/* 00000438 000004FC  4B FF FC 35 */	bl evtGetValue
/* 0000043C 00000500  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000440 00000504  7C 7D 1B 78 */	mr r29, r3
/* 00000444 00000508  7F 83 E3 78 */	mr r3, r28
/* 00000448 0000050C  4B FF FC 25 */	bl evtGetFloat
/* 0000044C 00000510  FF A0 08 90 */	fmr f29, f1
/* 00000450 00000514  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000454 00000518  7F 83 E3 78 */	mr r3, r28
/* 00000458 0000051C  4B FF FC 15 */	bl evtGetFloat
/* 0000045C 00000520  FF C0 08 90 */	fmr f30, f1
/* 00000460 00000524  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000464 00000528  7F 83 E3 78 */	mr r3, r28
/* 00000468 0000052C  4B FF FC 05 */	bl evtGetFloat
/* 0000046C 00000530  FF E0 08 90 */	fmr f31, f1
/* 00000470 00000534  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 00000474 00000538  7F 83 E3 78 */	mr r3, r28
/* 00000478 0000053C  4B FF FB F5 */	bl evtGetValue
/* 0000047C 00000540  FC 20 E8 90 */	fmr f1, f29
/* 00000480 00000544  7C 7E 1B 78 */	mr r30, r3
/* 00000484 00000548  FC 40 F0 90 */	fmr f2, f30
/* 00000488 0000054C  7F A3 EB 78 */	mr r3, r29
/* 0000048C 00000550  FC 60 F8 90 */	fmr f3, f31
/* 00000490 00000554  4B FF FB DD */	bl mapObjTranslate
/* 00000494 00000558  3C 60 00 00 */	lis r3, float_10_dou_00004588@ha
/* 00000498 0000055C  C0 63 00 00 */	lfs f3, float_10_dou_00004588@l(r3)
/* 0000049C 00000560  EC 3E 18 24 */	fdivs f1, f30, f3
/* 000004A0 00000564  EC 5D 18 24 */	fdivs f2, f29, f3
/* 000004A4 00000568  EC 1F 18 24 */	fdivs f0, f31, f3
/* 000004A8 0000056C  EF E3 00 B2 */	fmuls f31, f3, f2
/* 000004AC 00000570  EF C3 00 72 */	fmuls f30, f3, f1
/* 000004B0 00000574  EF A3 00 32 */	fmuls f29, f3, f0
/* 000004B4 00000578  4B FF FB B9 */	bl marioGetPtr
/* 000004B8 0000057C  80 63 01 E8 */	lwz r3, 0x1e8(r3)
/* 000004BC 00000580  28 03 00 00 */	cmplwi r3, 0x0
/* 000004C0 00000584  41 82 00 40 */	beq .L_00000500
/* 000004C4 00000588  4B FF FB A9 */	bl hitGetName
/* 000004C8 0000058C  7C 64 1B 78 */	mr r4, r3
/* 000004CC 00000590  7F C3 F3 78 */	mr r3, r30
/* 000004D0 00000594  4B FF FB 9D */	bl strcmp
/* 000004D4 00000598  2C 03 00 00 */	cmpwi r3, 0x0
/* 000004D8 0000059C  40 82 00 28 */	bne .L_00000500
/* 000004DC 000005A0  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 000004E0 000005A4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 000004E4 000005A8  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 000004E8 000005AC  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 000004EC 000005B0  EC 1E 00 28 */	fsubs f0, f30, f0
/* 000004F0 000005B4  D0 1F 01 78 */	stfs f0, 0x178(r31)
/* 000004F4 000005B8  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 000004F8 000005BC  EC 1D 00 28 */	fsubs f0, f29, f0
/* 000004FC 000005C0  D0 1F 01 7C */	stfs f0, 0x17c(r31)
.L_00000500:
/* 00000500 000005C4  3C 80 00 00 */	lis r4, float_10_dou_00004588@ha
/* 00000504 000005C8  38 60 00 02 */	li r3, 0x2
/* 00000508 000005CC  C0 64 00 00 */	lfs f3, float_10_dou_00004588@l(r4)
/* 0000050C 000005D0  EC 5F 18 24 */	fdivs f2, f31, f3
/* 00000510 000005D4  EC 3E 18 24 */	fdivs f1, f30, f3
/* 00000514 000005D8  EC 1D 18 24 */	fdivs f0, f29, f3
/* 00000518 000005DC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 0000051C 000005E0  EC 23 00 72 */	fmuls f1, f3, f1
/* 00000520 000005E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 00000524 000005E8  D0 5C 00 B4 */	stfs f2, 0xb4(r28)
/* 00000528 000005EC  D0 3C 00 B8 */	stfs f1, 0xb8(r28)
/* 0000052C 000005F0  D0 1C 00 BC */	stfs f0, 0xbc(r28)
/* 00000530 000005F4  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00000534 000005F8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00000538 000005FC  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 0000053C 00000600  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00000540 00000604  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00000544 00000608  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00000548 0000060C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000054C 00000610  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00000550 00000614  7C 08 03 A6 */	mtlr r0
/* 00000554 00000618  38 21 00 50 */	addi r1, r1, 0x50
/* 00000558 0000061C  4E 80 00 20 */	blr
.endfn evt_mapgrp_translate2

# 0x000005F0..0x00000900 | size: 0x310
.rodata
.balign 8

# .rodata:0x0 | 0x5F0 | size: 0x7
.obj str_e_bero_dou_00004280, local
	.string "e_bero"
.endobj str_e_bero_dou_00004280

# .rodata:0x7 | 0x5F7 | size: 0x1
.obj gap_03_000005F7_rodata, global
.hidden gap_03_000005F7_rodata
	.byte 0x00
.endobj gap_03_000005F7_rodata

# .rodata:0x8 | 0x5F8 | size: 0x7
.obj str_dou_03_dou_00004288, local
	.string "dou_03"
.endobj str_dou_03_dou_00004288

# .rodata:0xF | 0x5FF | size: 0x1
.obj gap_03_000005FF_rodata, global
.hidden gap_03_000005FF_rodata
	.byte 0x00
.endobj gap_03_000005FF_rodata

# .rodata:0x10 | 0x600 | size: 0x9
.obj str_w_bero_3_dou_00004290, local
	.string "w_bero_3"
.endobj str_w_bero_3_dou_00004290

# .rodata:0x19 | 0x609 | size: 0x3
.obj gap_03_00000609_rodata, global
.hidden gap_03_00000609_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000609_rodata

# .rodata:0x1C | 0x60C | size: 0xD
.obj str_s04_m_hako_a_dou_0000429c, local
	.string "s04_m_hako_a"
.endobj str_s04_m_hako_a_dou_0000429c

# .rodata:0x29 | 0x619 | size: 0x3
.obj gap_03_00000619_rodata, global
.hidden gap_03_00000619_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000619_rodata

# .rodata:0x2C | 0x61C | size: 0xA
.obj str_mizuhashi_dou_000042ac, local
	.string "mizuhashi"
.endobj str_mizuhashi_dou_000042ac

# .rodata:0x36 | 0x626 | size: 0x2
.obj gap_03_00000626_rodata, global
.hidden gap_03_00000626_rodata
	.2byte 0x0000
.endobj gap_03_00000626_rodata

# .rodata:0x38 | 0x628 | size: 0xE
.obj str_a04_m_hako_03_dou_000042b8, local
	.string "a04_m_hako_03"
.endobj str_a04_m_hako_03_dou_000042b8

# .rodata:0x46 | 0x636 | size: 0x2
.obj gap_03_00000636_rodata, global
.hidden gap_03_00000636_rodata
	.2byte 0x0000
.endobj gap_03_00000636_rodata

# .rodata:0x48 | 0x638 | size: 0x15
.obj str_SFX_STG5_STEP_FLOAT1_dou_000042c8, local
	.string "SFX_STG5_STEP_FLOAT1"
.endobj str_SFX_STG5_STEP_FLOAT1_dou_000042c8

# .rodata:0x5D | 0x64D | size: 0x3
.obj gap_03_0000064D_rodata, global
.hidden gap_03_0000064D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000064D_rodata

# .rodata:0x60 | 0x650 | size: 0x15
.obj str_SFX_STG5_STEP_FLOAT2_dou_000042e0, local
	.string "SFX_STG5_STEP_FLOAT2"
.endobj str_SFX_STG5_STEP_FLOAT2_dou_000042e0

# .rodata:0x75 | 0x665 | size: 0x3
.obj gap_03_00000665_rodata, global
.hidden gap_03_00000665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000665_rodata

# .rodata:0x78 | 0x668 | size: 0xD
.obj str_s04_m_hako_b_dou_000042f8, local
	.string "s04_m_hako_b"
.endobj str_s04_m_hako_b_dou_000042f8

# .rodata:0x85 | 0x675 | size: 0x3
.obj gap_03_00000675_rodata, global
.hidden gap_03_00000675_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000675_rodata

# .rodata:0x88 | 0x678 | size: 0xE
.obj str_a04_m_hako_02_dou_00004308, local
	.string "a04_m_hako_02"
.endobj str_a04_m_hako_02_dou_00004308

# .rodata:0x96 | 0x686 | size: 0x2
.obj gap_03_00000686_rodata, global
.hidden gap_03_00000686_rodata
	.2byte 0x0000
.endobj gap_03_00000686_rodata

# .rodata:0x98 | 0x688 | size: 0x6
.obj str_soko2_dou_00004318, local
	.string "soko2"
.endobj str_soko2_dou_00004318

# .rodata:0x9E | 0x68E | size: 0x2
.obj gap_03_0000068E_rodata, global
.hidden gap_03_0000068E_rodata
	.2byte 0x0000
.endobj gap_03_0000068E_rodata

# .rodata:0xA0 | 0x690 | size: 0x14
.obj str_SFX_STG5_STEP_DOWN1_dou_00004320, local
	.string "SFX_STG5_STEP_DOWN1"
.endobj str_SFX_STG5_STEP_DOWN1_dou_00004320

# .rodata:0xB4 | 0x6A4 | size: 0x6
.obj str_soko1_dou_00004334, local
	.string "soko1"
.endobj str_soko1_dou_00004334

# .rodata:0xBA | 0x6AA | size: 0x2
.obj gap_03_000006AA_rodata, global
.hidden gap_03_000006AA_rodata
	.2byte 0x0000
.endobj gap_03_000006AA_rodata

# .rodata:0xBC | 0x6AC | size: 0xC
.obj str_s04_m_ita_b_dou_0000433c, local
	.string "s04_m_ita_b"
.endobj str_s04_m_ita_b_dou_0000433c

# .rodata:0xC8 | 0x6B8 | size: 0x12
.obj str_SFX_STG5_STEP_UP1_dou_00004348, local
	.string "SFX_STG5_STEP_UP1"
.endobj str_SFX_STG5_STEP_UP1_dou_00004348

# .rodata:0xDA | 0x6CA | size: 0x2
.obj gap_03_000006CA_rodata, global
.hidden gap_03_000006CA_rodata
	.2byte 0x0000
.endobj gap_03_000006CA_rodata

# .rodata:0xDC | 0x6CC | size: 0xE
.obj str_a04_m_hako_01_dou_0000435c, local
	.string "a04_m_hako_01"
.endobj str_a04_m_hako_01_dou_0000435c

# .rodata:0xEA | 0x6DA | size: 0x2
.obj gap_03_000006DA_rodata, global
.hidden gap_03_000006DA_rodata
	.2byte 0x0000
.endobj gap_03_000006DA_rodata

# .rodata:0xEC | 0x6DC | size: 0x14
.obj str_SFX_STG5_STEP_FALL1_dou_0000436c, local
	.string "SFX_STG5_STEP_FALL1"
.endobj str_SFX_STG5_STEP_FALL1_dou_0000436c

# .rodata:0x100 | 0x6F0 | size: 0x7
.obj str_mod_01_dou_00004380, local
	.string "mod_01"
.endobj str_mod_01_dou_00004380

# .rodata:0x107 | 0x6F7 | size: 0x1
.obj gap_03_000006F7_rodata, global
.hidden gap_03_000006F7_rodata
	.byte 0x00
.endobj gap_03_000006F7_rodata

# .rodata:0x108 | 0x6F8 | size: 0x7
.obj str_mod_02_dou_00004388, local
	.string "mod_02"
.endobj str_mod_02_dou_00004388

# .rodata:0x10F | 0x6FF | size: 0x1
.obj gap_03_000006FF_rodata, global
.hidden gap_03_000006FF_rodata
	.byte 0x00
.endobj gap_03_000006FF_rodata

# .rodata:0x110 | 0x700 | size: 0x7
.obj str_mod_03_dou_00004390, local
	.string "mod_03"
.endobj str_mod_03_dou_00004390

# .rodata:0x117 | 0x707 | size: 0x1
.obj gap_03_00000707_rodata, global
.hidden gap_03_00000707_rodata
	.byte 0x00
.endobj gap_03_00000707_rodata

# .rodata:0x118 | 0x708 | size: 0x3
.obj str_me_dou_00004398, local
	.string "me"
.endobj str_me_dou_00004398

# .rodata:0x11B | 0x70B | size: 0x1
.obj gap_03_0000070B_rodata, global
.hidden gap_03_0000070B_rodata
	.byte 0x00
.endobj gap_03_0000070B_rodata

# .rodata:0x11C | 0x70C | size: 0xC
.obj str_irai_21_001_dou_0000439c, local
	.string "irai_21_001"
.endobj str_irai_21_001_dou_0000439c

# .rodata:0x128 | 0x718 | size: 0xB
.obj str_クリチェロ_dou_000043a8, local
	.4byte 0x834E838A
	.4byte 0x83608346
	.byte 0x83, 0x8D, 0x00
.endobj str_クリチェロ_dou_000043a8

# .rodata:0x133 | 0x723 | size: 0x1
.obj gap_03_00000723_rodata, global
.hidden gap_03_00000723_rodata
	.byte 0x00
.endobj gap_03_00000723_rodata

# .rodata:0x134 | 0x724 | size: 0xC
.obj str_irai_21_002_dou_000043b4, local
	.string "irai_21_002"
.endobj str_irai_21_002_dou_000043b4

# .rodata:0x140 | 0x730 | size: 0xC
.obj str_irai_21_003_dou_000043c0, local
	.string "irai_21_003"
.endobj str_irai_21_003_dou_000043c0

# .rodata:0x14C | 0x73C | size: 0xC
.obj str_irai_21_004_dou_000043cc, local
	.string "irai_21_004"
.endobj str_irai_21_004_dou_000043cc

# .rodata:0x158 | 0x748 | size: 0x6
.obj str_party_dou_000043d8, local
	.string "party"
.endobj str_party_dou_000043d8

# .rodata:0x15E | 0x74E | size: 0x2
.obj gap_03_0000074E_rodata, global
.hidden gap_03_0000074E_rodata
	.2byte 0x0000
.endobj gap_03_0000074E_rodata

# .rodata:0x160 | 0x750 | size: 0x1
.obj zero_dou_000043e0, local
	.byte 0x00
.endobj zero_dou_000043e0

# .rodata:0x161 | 0x751 | size: 0x3
.obj gap_03_00000751_rodata, global
.hidden gap_03_00000751_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000751_rodata

# .rodata:0x164 | 0x754 | size: 0xC
.obj str_irai_21_005_dou_000043e4, local
	.string "irai_21_005"
.endobj str_irai_21_005_dou_000043e4

# .rodata:0x170 | 0x760 | size: 0x3
.obj str_ff_dou_000043f0, local
	.string "ff"
.endobj str_ff_dou_000043f0

# .rodata:0x173 | 0x763 | size: 0x1
.obj gap_03_00000763_rodata, global
.hidden gap_03_00000763_rodata
	.byte 0x00
.endobj gap_03_00000763_rodata

# .rodata:0x174 | 0x764 | size: 0xC
.obj str_irai_21_006_dou_000043f4, local
	.string "irai_21_006"
.endobj str_irai_21_006_dou_000043f4

# .rodata:0x180 | 0x770 | size: 0xC
.obj str_irai_21_007_dou_00004400, local
	.string "irai_21_007"
.endobj str_irai_21_007_dou_00004400

# .rodata:0x18C | 0x77C | size: 0x7
.obj str_M_N_5B_dou_0000440c, local
	.string "M_N_5B"
.endobj str_M_N_5B_dou_0000440c

# .rodata:0x193 | 0x783 | size: 0x1
.obj gap_03_00000783_rodata, global
.hidden gap_03_00000783_rodata
	.byte 0x00
.endobj gap_03_00000783_rodata

# .rodata:0x194 | 0x784 | size: 0x6
.obj str_M_I_G_dou_00004414, local
	.string "M_I_G"
.endobj str_M_I_G_dou_00004414

# .rodata:0x19A | 0x78A | size: 0x2
.obj gap_03_0000078A_rodata, global
.hidden gap_03_0000078A_rodata
	.2byte 0x0000
.endobj gap_03_0000078A_rodata

# .rodata:0x19C | 0x78C | size: 0x6
.obj str_M_S_1_dou_0000441c, local
	.string "M_S_1"
.endobj str_M_S_1_dou_0000441c

# .rodata:0x1A2 | 0x792 | size: 0x2
.obj gap_03_00000792_rodata, global
.hidden gap_03_00000792_rodata
	.2byte 0x0000
.endobj gap_03_00000792_rodata

# .rodata:0x1A4 | 0x794 | size: 0xC
.obj str_irai_21_008_dou_00004424, local
	.string "irai_21_008"
.endobj str_irai_21_008_dou_00004424

# .rodata:0x1B0 | 0x7A0 | size: 0xC
.obj str_irai_21_009_dou_00004430, local
	.string "irai_21_009"
.endobj str_irai_21_009_dou_00004430

# .rodata:0x1BC | 0x7AC | size: 0xC
.obj str_irai_21_010_dou_0000443c, local
	.string "irai_21_010"
.endobj str_irai_21_010_dou_0000443c

# .rodata:0x1C8 | 0x7B8 | size: 0xC
.obj str_irai_21_011_dou_00004448, local
	.string "irai_21_011"
.endobj str_irai_21_011_dou_00004448

# .rodata:0x1D4 | 0x7C4 | size: 0xE
.obj str_irai_21_011_1_dou_00004454, local
	.string "irai_21_011_1"
.endobj str_irai_21_011_1_dou_00004454

# .rodata:0x1E2 | 0x7D2 | size: 0x2
.obj gap_03_000007D2_rodata, global
.hidden gap_03_000007D2_rodata
	.2byte 0x0000
.endobj gap_03_000007D2_rodata

# .rodata:0x1E4 | 0x7D4 | size: 0xC
.obj str_irai_21_013_dou_00004464, local
	.string "irai_21_013"
.endobj str_irai_21_013_dou_00004464

# .rodata:0x1F0 | 0x7E0 | size: 0x13
.obj str_sys_request_finish_dou_00004470, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_dou_00004470

# .rodata:0x203 | 0x7F3 | size: 0x1
.obj gap_03_000007F3_rodata, global
.hidden gap_03_000007F3_rodata
	.byte 0x00
.endobj gap_03_000007F3_rodata

# .rodata:0x204 | 0x7F4 | size: 0xC
.obj str_irai_21_014_dou_00004484, local
	.string "irai_21_014"
.endobj str_irai_21_014_dou_00004484

# .rodata:0x210 | 0x800 | size: 0xC
.obj str_irai_21_015_dou_00004490, local
	.string "irai_21_015"
.endobj str_irai_21_015_dou_00004490

# .rodata:0x21C | 0x80C | size: 0xC
.obj str_irai_21_016_dou_0000449c, local
	.string "irai_21_016"
.endobj str_irai_21_016_dou_0000449c

# .rodata:0x228 | 0x818 | size: 0xC
.obj str_irai_21_017_dou_000044a8, local
	.string "irai_21_017"
.endobj str_irai_21_017_dou_000044a8

# .rodata:0x234 | 0x824 | size: 0xC
.obj str_irai_21_018_dou_000044b4, local
	.string "irai_21_018"
.endobj str_irai_21_018_dou_000044b4

# .rodata:0x240 | 0x830 | size: 0xC
.obj str_irai_21_019_dou_000044c0, local
	.string "irai_21_019"
.endobj str_irai_21_019_dou_000044c0

# .rodata:0x24C | 0x83C | size: 0xC
.obj str_irai_21_020_dou_000044cc, local
	.string "irai_21_020"
.endobj str_irai_21_020_dou_000044cc

# .rodata:0x258 | 0x848 | size: 0xC
.obj str_irai_21_021_dou_000044d8, local
	.string "irai_21_021"
.endobj str_irai_21_021_dou_000044d8

# .rodata:0x264 | 0x854 | size: 0xC
.obj str_irai_21_022_dou_000044e4, local
	.string "irai_21_022"
.endobj str_irai_21_022_dou_000044e4

# .rodata:0x270 | 0x860 | size: 0xC
.obj str_irai_21_023_dou_000044f0, local
	.string "irai_21_023"
.endobj str_irai_21_023_dou_000044f0

# .rodata:0x27C | 0x86C | size: 0xC
.obj str_irai_21_024_dou_000044fc, local
	.string "irai_21_024"
.endobj str_irai_21_024_dou_000044fc

# .rodata:0x288 | 0x878 | size: 0xC
.obj str_irai_21_025_dou_00004508, local
	.string "irai_21_025"
.endobj str_irai_21_025_dou_00004508

# .rodata:0x294 | 0x884 | size: 0xE
.obj str_BGM_STG5_DOU1_dou_00004514, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_00004514

# .rodata:0x2A2 | 0x892 | size: 0x2
.obj gap_03_00000892_rodata, global
.hidden gap_03_00000892_rodata
	.2byte 0x0000
.endobj gap_03_00000892_rodata

# .rodata:0x2A4 | 0x894 | size: 0xE
.obj str_ENV_STG5_DOU6_dou_00004524, local
	.string "ENV_STG5_DOU6"
.endobj str_ENV_STG5_DOU6_dou_00004524

# .rodata:0x2B2 | 0x8A2 | size: 0x2
.obj gap_03_000008A2_rodata, global
.hidden gap_03_000008A2_rodata
	.2byte 0x0000
.endobj gap_03_000008A2_rodata

# .rodata:0x2B4 | 0x8A4 | size: 0x7
.obj str_mobj00_dou_00004534, local
	.string "mobj00"
.endobj str_mobj00_dou_00004534

# .rodata:0x2BB | 0x8AB | size: 0x1
.obj gap_03_000008AB_rodata, global
.hidden gap_03_000008AB_rodata
	.byte 0x00
.endobj gap_03_000008AB_rodata

# .rodata:0x2BC | 0x8AC | size: 0x5
.obj str_nami_dou_0000453c, local
	.string "nami"
.endobj str_nami_dou_0000453c

# .rodata:0x2C1 | 0x8B1 | size: 0x3
.obj gap_03_000008B1_rodata, global
.hidden gap_03_000008B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008B1_rodata

# .rodata:0x2C4 | 0x8B4 | size: 0x5
.obj str_moku_dou_00004544, local
	.string "moku"
.endobj str_moku_dou_00004544

# .rodata:0x2C9 | 0x8B9 | size: 0x3
.obj gap_03_000008B9_rodata, global
.hidden gap_03_000008B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008B9_rodata

# .rodata:0x2CC | 0x8BC | size: 0xA
.obj str_kagitsume_dou_0000454c, local
	.string "kagitsume"
.endobj str_kagitsume_dou_0000454c

# .rodata:0x2D6 | 0x8C6 | size: 0x2
.obj gap_03_000008C6_rodata, global
.hidden gap_03_000008C6_rodata
	.2byte 0x0000
.endobj gap_03_000008C6_rodata

# .rodata:0x2D8 | 0x8C8 | size: 0x9
.obj str_starpice_dou_00004558, local
	.string "starpice"
.endobj str_starpice_dou_00004558

# .rodata:0x2E1 | 0x8D1 | size: 0x3
.obj gap_03_000008D1_rodata, global
.hidden gap_03_000008D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008D1_rodata

# .rodata:0x2E4 | 0x8D4 | size: 0x7
.obj str_pblk00_dou_00004564, local
	.string "pblk00"
.endobj str_pblk00_dou_00004564

# .rodata:0x2EB | 0x8DB | size: 0x1
.obj gap_03_000008DB_rodata, global
.hidden gap_03_000008DB_rodata
	.byte 0x00
.endobj gap_03_000008DB_rodata

# .rodata:0x2EC | 0x8DC | size: 0x7
.obj str_iri_21_dou_0000456c, local
	.string "iri_21"
.endobj str_iri_21_dou_0000456c
	.byte 0x00

# .rodata:0x2F4 | 0x8E4 | size: 0x4
.obj float_1p5_dou_00004574, local
	.float 1.5
.endobj float_1p5_dou_00004574

# .rodata:0x2F8 | 0x8E8 | size: 0x4
.obj float_0p7_dou_00004578, local
	.float 0.7
.endobj float_0p7_dou_00004578

# .rodata:0x2FC | 0x8EC | size: 0x4
.obj float_25_dou_0000457c, local
	.float 25
.endobj float_25_dou_0000457c

# .rodata:0x300 | 0x8F0 | size: 0x8
.obj double_to_int_dou_00004580, local
	.double 4503601774854144
.endobj double_to_int_dou_00004580

# .rodata:0x308 | 0x8F8 | size: 0x4
.obj float_10_dou_00004588, local
	.float 10
.endobj float_10_dou_00004588

# .rodata:0x30C | 0x8FC | size: 0x4
.obj gap_03_000008FC_rodata, global
.hidden gap_03_000008FC_rodata
	.4byte 0x00000000
.endobj gap_03_000008FC_rodata

# 0x000021F0..0x00003EE8 | size: 0x1CF8
.data
.balign 8

# .data:0x0 | 0x21F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x21F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x21FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2200 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2204 | size: 0x4
.obj gap_04_00002204_data, global
.hidden gap_04_00002204_data
	.4byte 0x00000000
.endobj gap_04_00002204_data

# .data:0x18 | 0x2208 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2210 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2214 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2218 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2220 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2224 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2228 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x222C | size: 0x4
.obj gap_04_0000222C_data, global
.hidden gap_04_0000222C_data
	.4byte 0x00000000
.endobj gap_04_0000222C_data

# .data:0x40 | 0x2230 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2238 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x223C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2240 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_dou_00004280
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_03_dou_00004288
	.4byte str_w_bero_3_dou_00004290
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_entry_data

# .data:0xC8 | 0x22B8 | size: 0x130
.obj box_trans, local
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_hako_a_dou_0000429c
	.4byte 0xFD050F80
	.4byte 0xFD050F81
	.4byte 0xFD050F82
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_mizuhashi_dou_000042ac
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0xFD050F82
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a04_m_hako_03_dou_000042b8
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xFD050F80
	.4byte 0x0002003B
	.4byte 0xFE363C84
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_03_dou_000042b8
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_03_dou_000042b8
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_03_dou_000042b8
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000001
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_trans

# .data:0x1F8 | 0x23E8 | size: 0x14
.obj box_pukapuka, local
	.4byte 0x0002005B
	.4byte evt_box_pukapuka
	.4byte 0xFD050F81
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_pukapuka

# .data:0x20C | 0x23FC | size: 0x378
.obj box_event, local
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xF24A7A80
	.4byte 0x0001005C
	.4byte box_trans
	.4byte 0x0001005C
	.4byte box_pukapuka
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a04_m_hako_03_dou_000042b8
	.4byte str_s04_m_hako_a_dou_0000429c
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000032
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_s04_m_hako_a_dou_0000429c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_FLOAT1_dou_000042c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_FLOAT2_dou_000042e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000032
	.4byte 0x00000031
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0000002F
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x0000002F
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_s04_m_hako_a_dou_0000429c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_FLOAT1_dou_000042c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_FLOAT2_dou_000042e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_event

# .data:0x584 | 0x2774 | size: 0x37C
.obj lift_event_00, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_hako_b_dou_000042f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_head
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_soko2_dou_00004318
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_check_menu
	.4byte 0xFBD3E28B
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7780
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020016
	.4byte 0xFE363C80
	.4byte 0xF247AA80
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF247AA80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_hako_b_dou_000042f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_s04_m_hako_b_dou_000042f8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_DOWN1_dou_00004320
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A81
	.4byte 0x00000096
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_hako_b_dou_000042f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_head
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_soko1_dou_00004334
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_check_menu
	.4byte 0xFBD3E28B
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7D80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020017
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_hako_b_dou_000042f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lift_event_00

# .data:0x900 | 0x2AF0 | size: 0x3B0
.obj lift_event_01, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_UP1_dou_00004348
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_head
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_soko2_dou_00004318
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_check_menu
	.4byte 0xFBD3E28B
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7CA2
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020017
	.4byte 0xFE363C80
	.4byte 0xF24C7A80
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24C7A80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_STEP_FALL1_dou_0000436c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_party_get_name_hitobj_ride
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte 0x0005005B
	.4byte evt_party_set_hosei_xyz
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_head
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C82
	.4byte str_soko1_dou_00004334
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_check_menu
	.4byte 0xFBD3E28B
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A785E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020016
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lift_event_01

# .data:0xCB0 | 0x2EA0 | size: 0xD4
.obj lift_main_00, local
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B58A
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte lift_event_00
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF247AA80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte lift_event_00
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lift_main_00

# .data:0xD84 | 0x2F74 | size: 0xD4
.obj lift_main_01, local
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B58A
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7A80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte lift_event_01
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24C7A80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte lift_event_01
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lift_main_01

# .data:0xE58 | 0x3048 | size: 0x44
.obj lift_event_init, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a04_m_hako_01_dou_0000435c
	.4byte str_s04_m_ita_b_dou_0000433c
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a04_m_hako_02_dou_00004308
	.4byte str_s04_m_hako_b_dou_000042f8
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte lift_main_00
	.4byte 0x0001005C
	.4byte lift_main_01
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lift_event_init

# .data:0xE9C | 0x308C | size: 0x14
.obj lift_event, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lift_event

# .data:0xEB0 | 0x30A0 | size: 0x40
.obj hitDmgRetPoints, local
	.4byte str_mod_01_dou_00004380
	.4byte 0x42F00000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte str_mod_02_dou_00004388
	.4byte 0xC2B40000
	.4byte 0x41200000
	.4byte 0xC2DC0000
	.4byte str_mod_03_dou_00004390
	.4byte 0xC3160000
	.4byte 0x41200000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0xEF0 | 0x30E0 | size: 0x40
.obj kuribo_init, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000015
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_00004398
	.4byte 0xFFFFFF49
	.4byte 0x0000000A
	.4byte 0x00000087
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_dou_00004398
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kuribo_init

# .data:0xF30 | 0x3120 | size: 0xB90
.obj kuribo_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000015
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_001_dou_0000439c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_dou_00004398
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_クリチェロ_dou_000043a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_002_dou_000043b4
	.4byte 0x00000000
	.4byte str_me_dou_00004398
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF88
	.4byte 0x0000007E
	.4byte 0x00000032
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF70
	.4byte 0x00000056
	.4byte 0x00000028
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_dou_00004398
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_dou_00004398
	.4byte 0xFFFFFF51
	.4byte 0x00000056
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_003_dou_000043c0
	.4byte 0x00000000
	.4byte str_me_dou_00004398
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_004_dou_000043cc
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_dou_000043e0
	.4byte str_me_dou_00004398
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_dou_00004398
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_dou_00004398
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_005_dou_000043e4
	.4byte 0x00000000
	.4byte str_me_dou_00004398
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_dou_00004398
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_ff_dou_000043f0
	.4byte 0x000000DB
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xF840672F
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_006_dou_000043f4
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_dou_000043e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_007_dou_00004400
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_dou_0000440c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_dou_00004414
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_0000441c
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_dou_000043e0
	.4byte str_me_dou_00004398
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_ff_dou_000043f0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_ff_dou_000043f0
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_008_dou_00004424
	.4byte 0x00000000
	.4byte str_me_dou_00004398
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_dou_00004398
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_dou_000043e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_dou_000043e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_009_dou_00004430
	.4byte 0x00000000
	.4byte str_me_dou_00004398
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_dou_00004398
	.4byte 0x0000008C
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_00004398
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_010_dou_0000443c
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_ff_dou_000043f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_ff_dou_000043f0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_011_dou_00004448
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_pouch_get_haveitemcnt
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_ff_dou_000043f0
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_ff_dou_000043f0
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_irai_21_011_1_dou_00004454
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_ff_dou_000043f0
	.4byte 0xFFFFFF5B
	.4byte 0x0000000A
	.4byte 0x0000006A
	.4byte 0x0003005B
	.4byte evt_item_flag_off
	.4byte str_ff_dou_000043f0
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_21_013_dou_00004464
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407093
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_dou_00004470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF6A
	.4byte 0x00000064
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_クリチェロ_dou_000043a8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0x00000082
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_クリチェロ_dou_000043a8
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_dou_00004398
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_me_dou_00004398
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_irai_21_014_dou_00004484
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_irai_21_015_dou_00004490
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_irai_21_016_dou_0000449c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_irai_21_017_dou_000044a8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_irai_21_018_dou_000044b4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_irai_21_019_dou_000044c0
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_irai_21_020_dou_000044cc
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_irai_21_021_dou_000044d8
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_irai_21_022_dou_000044e4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_irai_21_023_dou_000044f0
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_irai_21_024_dou_000044fc
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_irai_21_025_dou_00004508
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte str_party_dou_000043d8
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kuribo_talk

# .data:0x1AC0 | 0x3CB0 | size: 0xB8
.obj npcEnt, local
	.4byte str_クリチェロ_dou_000043a8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte kuribo_init
	.4byte 0x00000000
	.4byte kuribo_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x1B78 | 0x3D68 | size: 0x180
.obj dou_04_init_evt_5_data_3D68, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_00004514
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU6_dou_00004524
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005C
	.4byte box_event
	.4byte 0x0008005B
	.4byte evt_mobj_switch_red
	.4byte 0x00000000
	.4byte str_mobj00_dou_00004534
	.4byte 0x00000019
	.4byte 0x00000020
	.4byte 0x0000007D
	.4byte lift_event
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte lift_event_init
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_dou_0000453c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_moku_dou_00004544
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_kagitsume_dou_0000454c
	.4byte 0x00000014
	.4byte 0x0000007A
	.4byte 0x0000006E
	.4byte 0xFFFFFF8A
	.4byte 0x00000000
	.4byte 0xF8406721
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_starpice_dou_00004558
	.4byte 0x0000007D
	.4byte 0xFFFFFF1A
	.4byte 0x000000C8
	.4byte 0x0000006E
	.4byte 0x00000000
	.4byte 0xF840718E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_dou_00004564
	.4byte 0xFFFFFF1A
	.4byte 0x00000122
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0xF8407133
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8407093
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_iri_21_dou_0000456c
	.4byte 0x000000DB
	.4byte 0xFFFFFF5B
	.4byte 0x0000000A
	.4byte 0x0000006A
	.4byte 0x00000010
	.4byte 0xF840672F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_04_init_evt_5_data_3D68
