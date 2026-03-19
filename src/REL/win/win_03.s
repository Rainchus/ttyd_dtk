.include "macros.inc"
.file "win_03.o"

# 0x000002B4..0x000004D8 | size: 0x224
.text
.balign 4

# .text:0x0 | 0x2B4 | size: 0x224
.fn camera_action, local
/* 000002B4 00000378  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000002B8 0000037C  7C 08 02 A6 */	mflr r0
/* 000002BC 00000380  90 01 00 34 */	stw r0, 0x34(r1)
/* 000002C0 00000384  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 000002C4 00000388  7C 7F 1B 78 */	mr r31, r3
/* 000002C8 0000038C  7C 9C 23 78 */	mr r28, r4
/* 000002CC 00000390  38 60 00 04 */	li r3, 0x4
/* 000002D0 00000394  48 00 0A B9 */	bl camGetPtr
/* 000002D4 00000398  3C A0 00 00 */	lis r5, vec3_win_00004374@ha
/* 000002D8 0000039C  85 25 00 00 */	lwzu r9, vec3_win_00004374@l(r5)
/* 000002DC 000003A0  3C 80 00 00 */	lis r4, vec3_win_00004380@ha
/* 000002E0 000003A4  2C 1C 00 00 */	cmpwi r28, 0x0
/* 000002E4 000003A8  38 C4 00 00 */	addi r6, r4, vec3_win_00004380@l
/* 000002E8 000003AC  81 05 00 04 */	lwz r8, 0x4(r5)
/* 000002EC 000003B0  80 E5 00 08 */	lwz r7, 0x8(r5)
/* 000002F0 000003B4  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 000002F4 000003B8  80 86 00 04 */	lwz r4, 0x4(r6)
/* 000002F8 000003BC  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000002FC 000003C0  91 21 00 14 */	stw r9, 0x14(r1)
/* 00000300 000003C4  91 01 00 18 */	stw r8, 0x18(r1)
/* 00000304 000003C8  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 00000308 000003CC  90 A1 00 08 */	stw r5, 0x8(r1)
/* 0000030C 000003D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 00000310 000003D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 00000314 000003D8  41 82 00 60 */	beq .L_00000374
/* 00000318 000003DC  3C 80 00 00 */	lis r4, zero_win_000044f8@ha
/* 0000031C 000003E0  3C A0 00 00 */	lis r5, float_2p5_win_000044fc@ha
/* 00000320 000003E4  38 C4 00 00 */	addi r6, r4, zero_win_000044f8@l
/* 00000324 000003E8  C0 25 00 00 */	lfs f1, float_2p5_win_000044fc@l(r5)
/* 00000328 000003EC  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 0000032C 000003F0  3C 80 00 00 */	lis r4, float_0p01_win_00004500@ha
/* 00000330 000003F4  38 00 00 00 */	li r0, 0x0
/* 00000334 000003F8  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 00000338 000003FC  FC 40 00 90 */	fmr f2, f0
/* 0000033C 00000400  FC 60 00 90 */	fmr f3, f0
/* 00000340 00000404  C0 04 00 00 */	lfs f0, float_0p01_win_00004500@l(r4)
/* 00000344 00000408  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 00000348 0000040C  90 1F 00 A4 */	stw r0, 0xa4(r31)
.L_0000034C:
/* 0000034C 00000410  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 00000350 00000414  4C 41 13 82 */	cror eq, gt, eq
/* 00000354 00000418  41 82 00 10 */	beq .L_00000364
/* 00000358 0000041C  EC 42 00 2A */	fadds f2, f2, f0
/* 0000035C 00000420  EC 63 10 2A */	fadds f3, f3, f2
/* 00000360 00000424  4B FF FF EC */	b .L_0000034C
.L_00000364:
/* 00000364 00000428  3C 80 00 00 */	lis r4, float_2p5_win_000044fc@ha
/* 00000368 0000042C  C0 04 00 00 */	lfs f0, float_2p5_win_000044fc@l(r4)
/* 0000036C 00000430  EC 03 00 28 */	fsubs f0, f3, f0
/* 00000370 00000434  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
.L_00000374:
/* 00000374 00000438  3C 80 00 00 */	lis r4, float_300_win_00004504@ha
/* 00000378 0000043C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 0000037C 00000440  C0 24 00 00 */	lfs f1, float_300_win_00004504@l(r4)
/* 00000380 00000444  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 00000384 00000448  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000388 0000044C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 0000038C 00000450  40 80 00 34 */	bge .L_000003C0
/* 00000390 00000454  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 00000394 00000458  3C 80 00 00 */	lis r4, float_neg10_win_00004508@ha
/* 00000398 0000045C  C0 24 00 00 */	lfs f1, float_neg10_win_00004508@l(r4)
/* 0000039C 00000460  38 00 00 00 */	li r0, 0x0
/* 000003A0 00000464  EC 02 00 2A */	fadds f0, f2, f0
/* 000003A4 00000468  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 000003A8 0000046C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 000003AC 00000470  EC 01 00 2A */	fadds f0, f1, f0
/* 000003B0 00000474  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 000003B4 00000478  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 000003B8 0000047C  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 000003BC 00000480  48 00 00 5C */	b .L_00000418
.L_000003C0:
/* 000003C0 00000484  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 000003C4 00000488  40 80 00 4C */	bge .L_00000410
/* 000003C8 0000048C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 000003CC 00000490  3C 80 00 00 */	lis r4, float_0p01_win_00004500@ha
/* 000003D0 00000494  38 A4 00 00 */	addi r5, r4, float_0p01_win_00004500@l
/* 000003D4 00000498  38 00 00 00 */	li r0, 0x0
/* 000003D8 0000049C  EC 42 00 2A */	fadds f2, f2, f0
/* 000003DC 000004A0  3C 80 00 00 */	lis r4, float_neg10_win_00004508@ha
/* 000003E0 000004A4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000003E4 000004A8  C0 24 00 00 */	lfs f1, float_neg10_win_00004508@l(r4)
/* 000003E8 000004AC  D0 5F 00 9C */	stfs f2, 0x9c(r31)
/* 000003EC 000004B0  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 000003F0 000004B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 000003F4 000004B8  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 000003F8 000004BC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 000003FC 000004C0  EC 01 00 2A */	fadds f0, f1, f0
/* 00000400 000004C4  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 00000404 000004C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00000408 000004CC  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 0000040C 000004D0  48 00 00 0C */	b .L_00000418
.L_00000410:
/* 00000410 000004D4  38 00 00 01 */	li r0, 0x1
/* 00000414 000004D8  90 1F 00 C4 */	stw r0, 0xc4(r31)
.L_00000418:
/* 00000418 000004DC  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 0000041C 000004E0  3C 80 00 00 */	lis r4, gp@ha
/* 00000420 000004E4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 00000424 000004E8  38 E4 00 00 */	addi r7, r4, gp@l
/* 00000428 000004EC  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 0000042C 000004F0  38 C0 00 00 */	li r6, 0x0
/* 00000430 000004F4  90 A3 00 58 */	stw r5, 0x58(r3)
/* 00000434 000004F8  38 A0 00 03 */	li r5, 0x3
/* 00000438 000004FC  81 81 00 18 */	lwz r12, 0x18(r1)
/* 0000043C 00000500  38 80 00 0B */	li r4, 0xb
/* 00000440 00000504  90 03 00 5C */	stw r0, 0x5c(r3)
/* 00000444 00000508  38 00 00 02 */	li r0, 0x2
/* 00000448 0000050C  81 61 00 1C */	lwz r11, 0x1c(r1)
/* 0000044C 00000510  81 03 00 14 */	lwz r8, 0x14(r3)
/* 00000450 00000514  81 41 00 08 */	lwz r10, 0x8(r1)
/* 00000454 00000518  91 03 00 60 */	stw r8, 0x60(r3)
/* 00000458 0000051C  81 21 00 0C */	lwz r9, 0xc(r1)
/* 0000045C 00000520  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000460 00000524  83 A3 00 1C */	lwz r29, 0x1c(r3)
/* 00000464 00000528  81 01 00 10 */	lwz r8, 0x10(r1)
/* 00000468 0000052C  93 83 00 64 */	stw r28, 0x64(r3)
/* 0000046C 00000530  93 A3 00 68 */	stw r29, 0x68(r3)
/* 00000470 00000534  83 A3 00 20 */	lwz r29, 0x20(r3)
/* 00000474 00000538  93 A3 00 6C */	stw r29, 0x6c(r3)
/* 00000478 0000053C  93 C3 00 40 */	stw r30, 0x40(r3)
/* 0000047C 00000540  91 83 00 44 */	stw r12, 0x44(r3)
/* 00000480 00000544  91 63 00 48 */	stw r11, 0x48(r3)
/* 00000484 00000548  91 43 00 4C */	stw r10, 0x4c(r3)
/* 00000488 0000054C  91 23 00 50 */	stw r9, 0x50(r3)
/* 0000048C 00000550  91 03 00 54 */	stw r8, 0x54(r3)
/* 00000490 00000554  81 07 00 00 */	lwz r8, 0x0(r7)
/* 00000494 00000558  80 E8 00 38 */	lwz r7, 0x38(r8)
/* 00000498 0000055C  81 08 00 3C */	lwz r8, 0x3c(r8)
/* 0000049C 00000560  91 03 00 74 */	stw r8, 0x74(r3)
/* 000004A0 00000564  90 E3 00 70 */	stw r7, 0x70(r3)
/* 000004A4 00000568  90 C3 00 7C */	stw r6, 0x7c(r3)
/* 000004A8 0000056C  90 C3 00 78 */	stw r6, 0x78(r3)
/* 000004AC 00000570  B0 A3 00 04 */	sth r5, 0x4(r3)
/* 000004B0 00000574  98 83 00 80 */	stb r4, 0x80(r3)
/* 000004B4 00000578  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 000004B8 0000057C  30 63 FF FF */	subic r3, r3, 0x1
/* 000004BC 00000580  7C 63 19 10 */	subfe r3, r3, r3
/* 000004C0 00000584  7C 03 18 78 */	andc r3, r0, r3
/* 000004C4 00000588  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 000004C8 0000058C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000004CC 00000590  7C 08 03 A6 */	mtlr r0
/* 000004D0 00000594  38 21 00 30 */	addi r1, r1, 0x30
/* 000004D4 00000598  4E 80 00 20 */	blr
.endfn camera_action

# 0x00000BB0..0x00000DC8 | size: 0x218
.rodata
.balign 8

# .rodata:0x0 | 0xBB0 | size: 0x7
.obj str_win_04_win_000042f8, local
	.string "win_04"
.endobj str_win_04_win_000042f8

# .rodata:0x7 | 0xBB7 | size: 0x1
.obj gap_03_00000BB7_rodata, global
.hidden gap_03_00000BB7_rodata
	.byte 0x00
.endobj gap_03_00000BB7_rodata

# .rodata:0x8 | 0xBB8 | size: 0x7
.obj str_w_bero_win_00004300, local
	.string "w_bero"
.endobj str_w_bero_win_00004300

# .rodata:0xF | 0xBBF | size: 0x1
.obj gap_03_00000BBF_rodata, global
.hidden gap_03_00000BBF_rodata
	.byte 0x00
.endobj gap_03_00000BBF_rodata

# .rodata:0x10 | 0xBC0 | size: 0x14
.obj str_SFX_DOOR_SHUT_WOOD2_win_00004308, local
	.string "SFX_DOOR_SHUT_WOOD2"
.endobj str_SFX_DOOR_SHUT_WOOD2_win_00004308

# .rodata:0x24 | 0xBD4 | size: 0x14
.obj str_SFX_DOOR_OPEN_WOOD3_win_0000431c, local
	.string "SFX_DOOR_OPEN_WOOD3"
.endobj str_SFX_DOOR_OPEN_WOOD3_win_0000431c

# .rodata:0x38 | 0xBE8 | size: 0x7
.obj str_win_02_win_00004330, local
	.string "win_02"
.endobj str_win_02_win_00004330

# .rodata:0x3F | 0xBEF | size: 0x1
.obj gap_03_00000BEF_rodata, global
.hidden gap_03_00000BEF_rodata
	.byte 0x00
.endobj gap_03_00000BEF_rodata

# .rodata:0x40 | 0xBF0 | size: 0x7
.obj str_e_bero_win_00004338, local
	.string "e_bero"
.endobj str_e_bero_win_00004338

# .rodata:0x47 | 0xBF7 | size: 0x1
.obj gap_03_00000BF7_rodata, global
.hidden gap_03_00000BF7_rodata
	.byte 0x00
.endobj gap_03_00000BF7_rodata

# .rodata:0x48 | 0xBF8 | size: 0x8
.obj str_dokan_1_win_00004340, local
	.string "dokan_1"
.endobj str_dokan_1_win_00004340

# .rodata:0x50 | 0xC00 | size: 0x8
.obj str_dokan_2_win_00004348, local
	.string "dokan_2"
.endobj str_dokan_2_win_00004348

# .rodata:0x58 | 0xC08 | size: 0x7
.obj str_n_bero_win_00004350, local
	.string "n_bero"
.endobj str_n_bero_win_00004350

# .rodata:0x5F | 0xC0F | size: 0x1
.obj gap_03_00000C0F_rodata, global
.hidden gap_03_00000C0F_rodata
	.byte 0x00
.endobj gap_03_00000C0F_rodata

# .rodata:0x60 | 0xC10 | size: 0x10
.obj str_stg2_win_e04_02_win_00004358, local
	.string "stg2_win_e04_02"
.endobj str_stg2_win_e04_02_win_00004358

# .rodata:0x70 | 0xC20 | size: 0x9
.obj str_extparty_win_00004368, local
	.string "extparty"
.endobj str_extparty_win_00004368

# .rodata:0x79 | 0xC29 | size: 0x3
.obj gap_03_00000C29_rodata, global
.hidden gap_03_00000C29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C29_rodata

# .rodata:0x7C | 0xC2C | size: 0xC
.obj vec3_win_00004374, local
	.4byte 0x43910000
	.4byte 0x43160000
	.4byte 0x43F58000
.endobj vec3_win_00004374

# .rodata:0x88 | 0xC38 | size: 0xC
.obj vec3_win_00004380, local
	.4byte 0x43910000
	.4byte 0x42B40000
	.4byte 0xC0C00000
.endobj vec3_win_00004380

# .rodata:0x94 | 0xC44 | size: 0x13
.obj str_stg2_win_e04_00_01_win_0000438c, local
	.string "stg2_win_e04_00_01"
.endobj str_stg2_win_e04_00_01_win_0000438c

# .rodata:0xA7 | 0xC57 | size: 0x1
.obj gap_03_00000C57_rodata, global
.hidden gap_03_00000C57_rodata
	.byte 0x00
.endobj gap_03_00000C57_rodata

# .rodata:0xA8 | 0xC58 | size: 0x1
.obj zero_win_000043a0, local
	.byte 0x00
.endobj zero_win_000043a0

# .rodata:0xA9 | 0xC59 | size: 0x3
.obj gap_03_00000C59_rodata, global
.hidden gap_03_00000C59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C59_rodata

# .rodata:0xAC | 0xC5C | size: 0xA
.obj str_パックン1_win_000043a4, local
	.4byte 0x83708362
	.4byte 0x834E8393
	.2byte 0x3100
.endobj str_パックン1_win_000043a4

# .rodata:0xB6 | 0xC66 | size: 0x2
.obj gap_03_00000C66_rodata, global
.hidden gap_03_00000C66_rodata
	.2byte 0x0000
.endobj gap_03_00000C66_rodata

# .rodata:0xB8 | 0xC68 | size: 0xA
.obj str_パックン2_win_000043b0, local
	.4byte 0x83708362
	.4byte 0x834E8393
	.2byte 0x3200
.endobj str_パックン2_win_000043b0

# .rodata:0xC2 | 0xC72 | size: 0x2
.obj gap_03_00000C72_rodata, global
.hidden gap_03_00000C72_rodata
	.2byte 0x0000
.endobj gap_03_00000C72_rodata

# .rodata:0xC4 | 0xC74 | size: 0x16
.obj str_BGM_FF_ENV_SURPRISED_win_000043bc, local
	.string "BGM_FF_ENV_SURPRISED3"
.endobj str_BGM_FF_ENV_SURPRISED_win_000043bc

# .rodata:0xDA | 0xC8A | size: 0x2
.obj gap_03_00000C8A_rodata, global
.hidden gap_03_00000C8A_rodata
	.2byte 0x0000
.endobj gap_03_00000C8A_rodata

# .rodata:0xDC | 0xC8C | size: 0x13
.obj str_stg2_win_e04_00_05_win_000043d4, local
	.string "stg2_win_e04_00_05"
.endobj str_stg2_win_e04_00_05_win_000043d4

# .rodata:0xEF | 0xC9F | size: 0x1
.obj gap_03_00000C9F_rodata, global
.hidden gap_03_00000C9F_rodata
	.byte 0x00
.endobj gap_03_00000C9F_rodata

# .rodata:0xF0 | 0xCA0 | size: 0x7
.obj str_win_01_win_000043e8, local
	.string "win_01"
.endobj str_win_01_win_000043e8

# .rodata:0xF7 | 0xCA7 | size: 0x1
.obj gap_03_00000CA7_rodata, global
.hidden gap_03_00000CA7_rodata
	.byte 0x00
.endobj gap_03_00000CA7_rodata

# .rodata:0xF8 | 0xCA8 | size: 0xC
.obj str_item_tree01_win_000043f0, local
	.string "item_tree01"
.endobj str_item_tree01_win_000043f0

# .rodata:0x104 | 0xCB4 | size: 0xA
.obj str_A_tree_01_win_000043fc, local
	.string "A_tree_01"
.endobj str_A_tree_01_win_000043fc

# .rodata:0x10E | 0xCBE | size: 0x2
.obj gap_03_00000CBE_rodata, global
.hidden gap_03_00000CBE_rodata
	.2byte 0x0000
.endobj gap_03_00000CBE_rodata

# .rodata:0x110 | 0xCC0 | size: 0xE
.obj str_S_tree_mki_01_win_00004408, local
	.string "S_tree_mki_01"
.endobj str_S_tree_mki_01_win_00004408

# .rodata:0x11E | 0xCCE | size: 0x2
.obj gap_03_00000CCE_rodata, global
.hidden gap_03_00000CCE_rodata
	.2byte 0x0000
.endobj gap_03_00000CCE_rodata

# .rodata:0x120 | 0xCD0 | size: 0xC
.obj str_S_tree_ha01_win_00004418, local
	.string "S_tree_ha01"
.endobj str_S_tree_ha01_win_00004418

# .rodata:0x12C | 0xCDC | size: 0xA
.obj str_A_tree_02_win_00004424, local
	.string "A_tree_02"
.endobj str_A_tree_02_win_00004424

# .rodata:0x136 | 0xCE6 | size: 0x2
.obj gap_03_00000CE6_rodata, global
.hidden gap_03_00000CE6_rodata
	.2byte 0x0000
.endobj gap_03_00000CE6_rodata

# .rodata:0x138 | 0xCE8 | size: 0xE
.obj str_S_tree_mki_02_win_00004430, local
	.string "S_tree_mki_02"
.endobj str_S_tree_mki_02_win_00004430

# .rodata:0x146 | 0xCF6 | size: 0x2
.obj gap_03_00000CF6_rodata, global
.hidden gap_03_00000CF6_rodata
	.2byte 0x0000
.endobj gap_03_00000CF6_rodata

# .rodata:0x148 | 0xCF8 | size: 0xC
.obj str_S_tree_ha03_win_00004440, local
	.string "S_tree_ha03"
.endobj str_S_tree_ha03_win_00004440

# .rodata:0x154 | 0xD04 | size: 0xA
.obj str_A_tree_03_win_0000444c, local
	.string "A_tree_03"
.endobj str_A_tree_03_win_0000444c

# .rodata:0x15E | 0xD0E | size: 0x2
.obj gap_03_00000D0E_rodata, global
.hidden gap_03_00000D0E_rodata
	.2byte 0x0000
.endobj gap_03_00000D0E_rodata

# .rodata:0x160 | 0xD10 | size: 0xE
.obj str_S_tree_mki_03_win_00004458, local
	.string "S_tree_mki_03"
.endobj str_S_tree_mki_03_win_00004458

# .rodata:0x16E | 0xD1E | size: 0x2
.obj gap_03_00000D1E_rodata, global
.hidden gap_03_00000D1E_rodata
	.2byte 0x0000
.endobj gap_03_00000D1E_rodata

# .rodata:0x170 | 0xD20 | size: 0xC
.obj str_S_tree_ha02_win_00004468, local
	.string "S_tree_ha02"
.endobj str_S_tree_ha02_win_00004468

# .rodata:0x17C | 0xD2C | size: 0xA
.obj str_A_tree_04_win_00004474, local
	.string "A_tree_04"
.endobj str_A_tree_04_win_00004474

# .rodata:0x186 | 0xD36 | size: 0x2
.obj gap_03_00000D36_rodata, global
.hidden gap_03_00000D36_rodata
	.2byte 0x0000
.endobj gap_03_00000D36_rodata

# .rodata:0x188 | 0xD38 | size: 0xE
.obj str_S_tree_mki_04_win_00004480, local
	.string "S_tree_mki_04"
.endobj str_S_tree_mki_04_win_00004480

# .rodata:0x196 | 0xD46 | size: 0x2
.obj gap_03_00000D46_rodata, global
.hidden gap_03_00000D46_rodata
	.2byte 0x0000
.endobj gap_03_00000D46_rodata

# .rodata:0x198 | 0xD48 | size: 0xC
.obj str_S_tree_ha04_win_00004490, local
	.string "S_tree_ha04"
.endobj str_S_tree_ha04_win_00004490

# .rodata:0x1A4 | 0xD54 | size: 0xE
.obj str_BGM_STG2_WIN1_win_0000449c, local
	.string "BGM_STG2_WIN1"
.endobj str_BGM_STG2_WIN1_win_0000449c

# .rodata:0x1B2 | 0xD62 | size: 0x2
.obj gap_03_00000D62_rodata, global
.hidden gap_03_00000D62_rodata
	.2byte 0x0000
.endobj gap_03_00000D62_rodata

# .rodata:0x1B4 | 0xD64 | size: 0xE
.obj str_ENV_STG2_WIN1_win_000044ac, local
	.string "ENV_STG2_WIN1"
.endobj str_ENV_STG2_WIN1_win_000044ac

# .rodata:0x1C2 | 0xD72 | size: 0x2
.obj gap_03_00000D72_rodata, global
.hidden gap_03_00000D72_rodata
	.2byte 0x0000
.endobj gap_03_00000D72_rodata

# .rodata:0x1C4 | 0xD74 | size: 0xD
.obj str_mobj_recover_win_000044bc, local
	.string "mobj_recover"
.endobj str_mobj_recover_win_000044bc

# .rodata:0x1D1 | 0xD81 | size: 0x3
.obj gap_03_00000D81_rodata, global
.hidden gap_03_00000D81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D81_rodata

# .rodata:0x1D4 | 0xD84 | size: 0x2
.obj str_i_win_000044cc, local
	.string "i"
.endobj str_i_win_000044cc

# .rodata:0x1D6 | 0xD86 | size: 0x2
.obj gap_03_00000D86_rodata, global
.hidden gap_03_00000D86_rodata
	.2byte 0x0000
.endobj gap_03_00000D86_rodata

# .rodata:0x1D8 | 0xD88 | size: 0x8
.obj str_item_00_win_000044d0, local
	.string "item_00"
.endobj str_item_00_win_000044d0

# .rodata:0x1E0 | 0xD90 | size: 0x6
.obj str_S_ana_win_000044d8, local
	.string "S_ana"
.endobj str_S_ana_win_000044d8

# .rodata:0x1E6 | 0xD96 | size: 0x2
.obj gap_03_00000D96_rodata, global
.hidden gap_03_00000D96_rodata
	.2byte 0x0000
.endobj gap_03_00000D96_rodata

# .rodata:0x1E8 | 0xD98 | size: 0xB
.obj str_S_siro_asu_win_000044e0, local
	.string "S_siro_asu"
.endobj str_S_siro_asu_win_000044e0

# .rodata:0x1F3 | 0xDA3 | size: 0x1
.obj gap_03_00000DA3_rodata, global
.hidden gap_03_00000DA3_rodata
	.byte 0x00
.endobj gap_03_00000DA3_rodata

# .rodata:0x1F4 | 0xDA4 | size: 0xB
.obj str_A_siro_asu_win_000044ec, local
	.string "A_siro_asu"
.endobj str_A_siro_asu_win_000044ec
	.byte 0x00

# .rodata:0x200 | 0xDB0 | size: 0x4
.obj zero_win_000044f8, local
	.float 0
.endobj zero_win_000044f8

# .rodata:0x204 | 0xDB4 | size: 0x4
.obj float_2p5_win_000044fc, local
	.float 2.5
.endobj float_2p5_win_000044fc

# .rodata:0x208 | 0xDB8 | size: 0x4
.obj float_0p01_win_00004500, local
	.float 0.01
.endobj float_0p01_win_00004500

# .rodata:0x20C | 0xDBC | size: 0x4
.obj float_300_win_00004504, local
	.float 300
.endobj float_300_win_00004504

# .rodata:0x210 | 0xDC0 | size: 0x4
.obj float_neg10_win_00004508, local
	.float -10
.endobj float_neg10_win_00004508

# .rodata:0x214 | 0xDC4 | size: 0x4
.obj gap_03_00000DC4_rodata, global
.hidden gap_03_00000DC4_rodata
	.4byte 0x00000000
.endobj gap_03_00000DC4_rodata

# 0x00004BA0..0x000055C0 | size: 0xA20
.data
.balign 8

# .data:0x0 | 0x4BA0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4BA8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4BAC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4BB0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4BB4 | size: 0x4
.obj gap_04_00004BB4_data, global
.hidden gap_04_00004BB4_data
	.4byte 0x00000000
.endobj gap_04_00004BB4_data

# .data:0x18 | 0x4BB8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4BC0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4BC4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4BC8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4BD0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4BD4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4BD8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4BDC | size: 0x4
.obj gap_04_00004BDC_data, global
.hidden gap_04_00004BDC_data
	.4byte 0x00000000
.endobj gap_04_00004BDC_data

# .data:0x40 | 0x4BE0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4BE8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4BEC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4BF0 | size: 0x30
.obj clouda_house_in, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_win_04_win_000042f8
	.4byte str_w_bero_win_00004300
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj clouda_house_in

# .data:0x80 | 0x4C20 | size: 0x4C
.obj clouda_house_out, local
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_on
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_off
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000115
	.4byte 0x00000036
	.4byte 0xFFFFFE3E
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj clouda_house_out

# .data:0xCC | 0x4C6C | size: 0x30
.obj cloud_out, local
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD2_win_00004308
	.4byte 0x00000132
	.4byte 0x00000017
	.4byte 0xFFFFFE40
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cloud_out

# .data:0xFC | 0x4C9C | size: 0x30
.obj cloud_in, local
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD3_win_0000431c
	.4byte 0x00000132
	.4byte 0x00000017
	.4byte 0xFFFFFE40
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cloud_in

# .data:0x12C | 0x4CCC | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_win_00004300
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_02_win_00004330
	.4byte str_e_bero_win_00004338
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_win_00004340
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_win_00004348
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_win_00004348
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_win_00004340
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_win_00004350
	.4byte 0x10030000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte cloud_out
	.4byte 0x00000005
	.4byte cloud_in
	.4byte str_win_04_win_000042f8
	.4byte str_w_bero_win_00004300
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

# .data:0x258 | 0x4DF8 | size: 0xB4
.obj lookat_house, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e04_02_win_00004358
	.4byte 0x00000000
	.4byte str_extparty_win_00004368
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000050
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lookat_house

# .data:0x30C | 0x4EAC | size: 0x130
.obj cloud_toujou, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
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
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF6
	.4byte 0x00000096
	.4byte 0x000001EB
	.4byte 0xFFFFFFF6
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte camera_action
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e04_00_01_win_0000438c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_win_04_win_000042f8
	.4byte zero_win_000043a0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cloud_toujou

# .data:0x43C | 0x4FDC | size: 0x35C
.obj cloud_lostitem, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
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
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_パックン1_win_000043a4
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パックン1_win_000043a4
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_パックン2_win_000043b0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パックン2_win_000043b0
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000096
	.4byte 0x000001EB
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000001
	.4byte 0x00000258
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000089
	.4byte 0x00000187
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000096
	.4byte 0x000001EB
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000089
	.4byte 0x00000187
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000096
	.4byte 0x000001EB
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000089
	.4byte 0x00000187
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000122
	.4byte 0x00000096
	.4byte 0x000001EB
	.4byte 0x00000122
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SURPRISED_win_000043bc
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_win_e04_00_05_win_000043d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000004E
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_win_01_win_000043e8
	.4byte str_n_bero_win_00004350
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cloud_lostitem

# .data:0x798 | 0x5338 | size: 0x50
.obj tree_evt_01, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_tree01_win_000043f0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_tree01_win_000043f0
	.4byte 0x0000007D
	.4byte 0xFFFFFEB3
	.4byte 0x00000048
	.4byte 0xFFFFFFE8
	.4byte 0x00000000
	.4byte 0xF8407169
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tree_evt_01

# .data:0x7E8 | 0x5388 | size: 0x78
.obj tree_access_data, local
	.4byte 0x00000004
	.4byte str_A_tree_01_win_000043fc
	.4byte str_S_tree_mki_01_win_00004408
	.4byte str_S_tree_ha01_win_00004418
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_02_win_00004424
	.4byte str_S_tree_mki_02_win_00004430
	.4byte str_S_tree_ha03_win_00004440
	.4byte 0x00000000
	.4byte tree_evt_01
	.4byte 0x00000004
	.4byte str_A_tree_03_win_0000444c
	.4byte str_S_tree_mki_03_win_00004458
	.4byte str_S_tree_ha02_win_00004468
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_04_win_00004474
	.4byte str_S_tree_mki_04_win_00004480
	.4byte str_S_tree_ha04_win_00004490
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_access_data

# .data:0x860 | 0x5400 | size: 0x10
.obj dummy_event, local
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dummy_event

# .data:0x870 | 0x5410 | size: 0x1B0
.obj win_03_init_evt_28_data_5410, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte str_n_bero_win_00004350
	.4byte 0x00000000
	.4byte dummy_event
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_0000449c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN1_win_000044ac
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_access_data
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_win_000044bc
	.4byte 0x00000007
	.4byte 0x000001A9
	.4byte 0x0000003C
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_i_win_000044cc
	.4byte 0x00000087
	.4byte 0x000001DB
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x00000010
	.4byte 0xF84065F7
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_win_000044d0
	.4byte 0x0000007D
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000010
	.4byte 0xF840716A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_win_000044d8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_siro_asu_win_000044e0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_siro_asu_win_000044ec
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000004F
	.4byte 0x0001005C
	.4byte lookat_house
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000004C
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_パックン1_win_000043a4
	.4byte 0x0001005C
	.4byte cloud_toujou
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000004D
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_パックン1_win_000043a4
	.4byte 0x0001005C
	.4byte cloud_lostitem
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj win_03_init_evt_28_data_5410
