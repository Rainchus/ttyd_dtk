.include "macros.inc"
.file "unit_pakkun_flower.o"

# 0x0000130C..0x0000159C | size: 0x290
.text
.balign 4

# .text:0x0 | 0x130C | size: 0xDC
.fn shadow_scale_return, local
/* 0000130C 000013D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001310 000013D4  7C 08 02 A6 */	mflr r0
/* 00001314 000013D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001318 000013DC  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000131C 000013E0  7C 9F 23 78 */	mr r31, r4
/* 00001320 000013E4  7C 7E 1B 78 */	mr r30, r3
/* 00001324 000013E8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001328 000013EC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000132C 000013F0  4B FF FA 5D */	bl evtGetValue
/* 00001330 000013F4  7C 64 1B 78 */	mr r4, r3
/* 00001334 000013F8  7F C3 F3 78 */	mr r3, r30
/* 00001338 000013FC  4B FF FA 51 */	bl BattleTransID
/* 0000133C 00001400  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001340 00001404  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001344 00001408  7C 64 1B 78 */	mr r4, r3
/* 00001348 0000140C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000134C 00001410  4B FF FA 3D */	bl BattleGetUnitPtr
/* 00001350 00001414  7C 7E 1B 78 */	mr r30, r3
/* 00001354 00001418  38 80 00 01 */	li r4, 0x1
/* 00001358 0000141C  4B FF FA 31 */	bl BtlUnit_GetPartsPtr
/* 0000135C 00001420  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001360 00001424  7C 7F 1B 78 */	mr r31, r3
/* 00001364 00001428  41 82 00 0C */	beq .L_00001370
/* 00001368 0000142C  38 00 00 00 */	li r0, 0x0
/* 0000136C 00001430  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00001370:
/* 00001370 00001434  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 00001374 00001438  3C 00 43 30 */	lis r0, 0x4330
/* 00001378 0000143C  3C 80 00 00 */	lis r4, double_to_int_win_000054b0@ha
/* 0000137C 00001440  3C A0 00 00 */	lis r5, zero_win_000054a8@ha
/* 00001380 00001444  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001384 00001448  C8 44 00 00 */	lfd f2, double_to_int_win_000054b0@l(r4)
/* 00001388 0000144C  90 61 00 0C */	stw r3, 0xc(r1)
/* 0000138C 00001450  38 C5 00 00 */	addi r6, r5, zero_win_000054a8@l
/* 00001390 00001454  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00001394 00001458  38 60 00 00 */	li r3, 0x0
/* 00001398 0000145C  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000139C 00001460  38 A0 00 0F */	li r5, 0xf
/* 000013A0 00001464  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 000013A4 00001468  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000013A8 0000146C  EC 40 10 28 */	fsubs f2, f0, f2
/* 000013AC 00001470  4B FF F9 DD */	bl intplGetValue
/* 000013B0 00001474  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 000013B4 00001478  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 000013B8 0000147C  2C 03 00 0F */	cmpwi r3, 0xf
/* 000013BC 00001480  41 80 00 0C */	blt .L_000013C8
/* 000013C0 00001484  38 60 00 02 */	li r3, 0x2
/* 000013C4 00001488  48 00 00 10 */	b .L_000013D4
.L_000013C8:
/* 000013C8 0000148C  38 03 00 01 */	addi r0, r3, 0x1
/* 000013CC 00001490  38 60 00 00 */	li r3, 0x0
/* 000013D0 00001494  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_000013D4:
/* 000013D4 00001498  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000013D8 0000149C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000013DC 000014A0  7C 08 03 A6 */	mtlr r0
/* 000013E0 000014A4  38 21 00 20 */	addi r1, r1, 0x20
/* 000013E4 000014A8  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0x13E8 | size: 0xE0
.fn shadow_scale_small, local
/* 000013E8 000014AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000013EC 000014B0  7C 08 02 A6 */	mflr r0
/* 000013F0 000014B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 000013F4 000014B8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000013F8 000014BC  7C 9F 23 78 */	mr r31, r4
/* 000013FC 000014C0  7C 7E 1B 78 */	mr r30, r3
/* 00001400 000014C4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001404 000014C8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001408 000014CC  4B FF F9 81 */	bl evtGetValue
/* 0000140C 000014D0  7C 64 1B 78 */	mr r4, r3
/* 00001410 000014D4  7F C3 F3 78 */	mr r3, r30
/* 00001414 000014D8  4B FF F9 75 */	bl BattleTransID
/* 00001418 000014DC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000141C 000014E0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001420 000014E4  7C 64 1B 78 */	mr r4, r3
/* 00001424 000014E8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001428 000014EC  4B FF F9 61 */	bl BattleGetUnitPtr
/* 0000142C 000014F0  7C 7E 1B 78 */	mr r30, r3
/* 00001430 000014F4  38 80 00 01 */	li r4, 0x1
/* 00001434 000014F8  4B FF F9 55 */	bl BtlUnit_GetPartsPtr
/* 00001438 000014FC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000143C 00001500  7C 7F 1B 78 */	mr r31, r3
/* 00001440 00001504  41 82 00 0C */	beq .L_0000144C
/* 00001444 00001508  38 00 00 00 */	li r0, 0x0
/* 00001448 0000150C  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000144C:
/* 0000144C 00001510  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 00001450 00001514  3C 00 43 30 */	lis r0, 0x4330
/* 00001454 00001518  3C 80 00 00 */	lis r4, double_to_int_win_000054b0@ha
/* 00001458 0000151C  3C 60 00 00 */	lis r3, zero_win_000054a8@ha
/* 0000145C 00001520  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00001460 00001524  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001464 00001528  38 C4 00 00 */	addi r6, r4, double_to_int_win_000054b0@l
/* 00001468 0000152C  38 83 00 00 */	addi r4, r3, zero_win_000054a8@l
/* 0000146C 00001530  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00001470 00001534  38 60 00 00 */	li r3, 0x0
/* 00001474 00001538  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 00001478 0000153C  38 A0 00 0F */	li r5, 0xf
/* 0000147C 00001540  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00001480 00001544  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00001484 00001548  EC 20 08 28 */	fsubs f1, f0, f1
/* 00001488 0000154C  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0000148C 00001550  4B FF F8 FD */	bl intplGetValue
/* 00001490 00001554  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00001494 00001558  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00001498 0000155C  2C 03 00 0F */	cmpwi r3, 0xf
/* 0000149C 00001560  41 80 00 0C */	blt .L_000014A8
/* 000014A0 00001564  38 60 00 02 */	li r3, 0x2
/* 000014A4 00001568  48 00 00 10 */	b .L_000014B4
.L_000014A8:
/* 000014A8 0000156C  38 03 00 01 */	addi r0, r3, 0x1
/* 000014AC 00001570  38 60 00 00 */	li r3, 0x0
/* 000014B0 00001574  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_000014B4:
/* 000014B4 00001578  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000014B8 0000157C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000014BC 00001580  7C 08 03 A6 */	mtlr r0
/* 000014C0 00001584  38 21 00 20 */	addi r1, r1, 0x20
/* 000014C4 00001588  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0x14C8 | size: 0x78
.fn shadow_scale_memory, local
/* 000014C8 0000158C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000014CC 00001590  7C 08 02 A6 */	mflr r0
/* 000014D0 00001594  90 01 00 24 */	stw r0, 0x24(r1)
/* 000014D4 00001598  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000014D8 0000159C  7C 7F 1B 78 */	mr r31, r3
/* 000014DC 000015A0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000014E0 000015A4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000014E4 000015A8  4B FF F8 A5 */	bl evtGetValue
/* 000014E8 000015AC  7C 64 1B 78 */	mr r4, r3
/* 000014EC 000015B0  7F E3 FB 78 */	mr r3, r31
/* 000014F0 000015B4  4B FF F8 99 */	bl BattleTransID
/* 000014F4 000015B8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000014F8 000015BC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000014FC 000015C0  7C 64 1B 78 */	mr r4, r3
/* 00001500 000015C4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001504 000015C8  4B FF F8 85 */	bl BattleGetUnitPtr
/* 00001508 000015CC  7C 7F 1B 78 */	mr r31, r3
/* 0000150C 000015D0  38 80 00 01 */	li r4, 0x1
/* 00001510 000015D4  4B FF F8 79 */	bl BtlUnit_GetPartsPtr
/* 00001514 000015D8  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 00001518 000015DC  38 60 00 02 */	li r3, 0x2
/* 0000151C 000015E0  FC 00 00 1E */	fctiwz f0, f0
/* 00001520 000015E4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00001524 000015E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00001528 000015EC  90 1F 02 18 */	stw r0, 0x218(r31)
/* 0000152C 000015F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00001530 000015F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001534 000015F8  7C 08 03 A6 */	mtlr r0
/* 00001538 000015FC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000153C 00001600  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0x1540 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 00001540 00001604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001544 00001608  7C 08 02 A6 */	mflr r0
/* 00001548 0000160C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000154C 00001610  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001550 00001614  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00001554 00001618  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001558 0000161C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0000155C 00001620  3C 84 00 02 */	addis r4, r4, 0x2
/* 00001560 00001624  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 00001564 00001628  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 00001568 0000162C  41 82 00 14 */	beq .L_0000157C
/* 0000156C 00001630  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00001570 00001634  38 A0 00 00 */	li r5, 0x0
/* 00001574 00001638  4B FF F8 15 */	bl evtSetValue
/* 00001578 0000163C  48 00 00 10 */	b .L_00001588
.L_0000157C:
/* 0000157C 00001640  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00001580 00001644  38 A0 00 01 */	li r5, 0x1
/* 00001584 00001648  4B FF F8 05 */	bl evtSetValue
.L_00001588:
/* 00001588 0000164C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000158C 00001650  38 60 00 02 */	li r3, 0x2
/* 00001590 00001654  7C 08 03 A6 */	mtlr r0
/* 00001594 00001658  38 21 00 10 */	addi r1, r1, 0x10
/* 00001598 0000165C  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x00001BB0..0x00001D70 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x1BB0 | size: 0x15
.obj str_btl_un_pakkun_flower_win_000052f8, local
	.string "btl_un_pakkun_flower"
.endobj str_btl_un_pakkun_flower_win_000052f8

# .rodata:0x15 | 0x1BC5 | size: 0x3
.obj gap_03_00001BC5_rodata, global
.hidden gap_03_00001BC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BC5_rodata

# .rodata:0x18 | 0x1BC8 | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_win_00005310, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_win_00005310

# .rodata:0x30 | 0x1BE0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_win_00005328, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_win_00005328

# .rodata:0x45 | 0x1BF5 | size: 0x3
.obj gap_03_00001BF5_rodata, global
.hidden gap_03_00001BF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BF5_rodata

# .rodata:0x48 | 0x1BF8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_win_00005340, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_win_00005340

# .rodata:0x5C | 0x1C0C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_win_00005354, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_win_00005354

# .rodata:0x75 | 0x1C25 | size: 0x3
.obj gap_03_00001C25_rodata, global
.hidden gap_03_00001C25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C25_rodata

# .rodata:0x78 | 0x1C28 | size: 0xA
.obj str_c_pakflwr_win_00005370, local
	.string "c_pakflwr"
.endobj str_c_pakflwr_win_00005370

# .rodata:0x82 | 0x1C32 | size: 0x2
.obj gap_03_00001C32_rodata, global
.hidden gap_03_00001C32_rodata
	.2byte 0x0000
.endobj gap_03_00001C32_rodata

# .rodata:0x84 | 0x1C34 | size: 0x8
.obj str_PKF_N_1_win_0000537c, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_win_0000537c

# .rodata:0x8C | 0x1C3C | size: 0x8
.obj str_PKF_Y_1_win_00005384, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_win_00005384

# .rodata:0x94 | 0x1C44 | size: 0x8
.obj str_PKF_K_1_win_0000538c, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_win_0000538c

# .rodata:0x9C | 0x1C4C | size: 0x8
.obj str_PKF_X_1_win_00005394, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_win_00005394

# .rodata:0xA4 | 0x1C54 | size: 0x8
.obj str_PKF_S_1_win_0000539c, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_win_0000539c

# .rodata:0xAC | 0x1C5C | size: 0x8
.obj str_PKF_Q_1_win_000053a4, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_win_000053a4

# .rodata:0xB4 | 0x1C64 | size: 0x8
.obj str_PKF_S_2_win_000053ac, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_win_000053ac

# .rodata:0xBC | 0x1C6C | size: 0x8
.obj str_PKF_D_1_win_000053b4, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_win_000053b4

# .rodata:0xC4 | 0x1C74 | size: 0x9
.obj str_PKF_A_1B_win_000053bc, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_win_000053bc

# .rodata:0xCD | 0x1C7D | size: 0x3
.obj gap_03_00001C7D_rodata, global
.hidden gap_03_00001C7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C7D_rodata

# .rodata:0xD0 | 0x1C80 | size: 0x8
.obj str_PKF_T_1_win_000053c8, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_win_000053c8

# .rodata:0xD8 | 0x1C88 | size: 0x8
.obj str_PKF_N_2_win_000053d0, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_win_000053d0

# .rodata:0xE0 | 0x1C90 | size: 0x8
.obj str_PKF_Y_2_win_000053d8, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_win_000053d8

# .rodata:0xE8 | 0x1C98 | size: 0x8
.obj str_PKF_K_2_win_000053e0, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_win_000053e0

# .rodata:0xF0 | 0x1CA0 | size: 0x8
.obj str_PKF_X_2_win_000053e8, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_win_000053e8

# .rodata:0xF8 | 0x1CA8 | size: 0x8
.obj str_PKF_S_3_win_000053f0, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_win_000053f0

# .rodata:0x100 | 0x1CB0 | size: 0x8
.obj str_PKF_Q_2_win_000053f8, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_win_000053f8

# .rodata:0x108 | 0x1CB8 | size: 0x8
.obj str_PKF_S_4_win_00005400, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_win_00005400

# .rodata:0x110 | 0x1CC0 | size: 0x8
.obj str_PKF_D_2_win_00005408, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_win_00005408

# .rodata:0x118 | 0x1CC8 | size: 0x8
.obj str_PKF_A_5_win_00005410, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_win_00005410

# .rodata:0x120 | 0x1CD0 | size: 0x1
.obj zero_win_00005418, local
	.byte 0x00
.endobj zero_win_00005418

# .rodata:0x121 | 0x1CD1 | size: 0x3
.obj gap_03_00001CD1_rodata, global
.hidden gap_03_00001CD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CD1_rodata

# .rodata:0x124 | 0x1CD4 | size: 0xB
.obj str_toge_flush_win_0000541c, local
	.string "toge_flush"
.endobj str_toge_flush_win_0000541c

# .rodata:0x12F | 0x1CDF | size: 0x1
.obj gap_03_00001CDF_rodata, global
.hidden gap_03_00001CDF_rodata
	.byte 0x00
.endobj gap_03_00001CDF_rodata

# .rodata:0x130 | 0x1CE0 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_win_00005428, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_win_00005428

# .rodata:0x145 | 0x1CF5 | size: 0x3
.obj gap_03_00001CF5_rodata, global
.hidden gap_03_00001CF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CF5_rodata

# .rodata:0x148 | 0x1CF8 | size: 0x8
.obj str_PKF_E_4_win_00005440, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_win_00005440

# .rodata:0x150 | 0x1D00 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_win_00005448, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_win_00005448

# .rodata:0x165 | 0x1D15 | size: 0x3
.obj gap_03_00001D15_rodata, global
.hidden gap_03_00001D15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D15_rodata

# .rodata:0x168 | 0x1D18 | size: 0x8
.obj str_PKF_E_1_win_00005460, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_win_00005460

# .rodata:0x170 | 0x1D20 | size: 0x8
.obj str_PKF_E_2_win_00005468, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_win_00005468

# .rodata:0x178 | 0x1D28 | size: 0x8
.obj str_PKF_E_3_win_00005470, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_win_00005470

# .rodata:0x180 | 0x1D30 | size: 0x9
.obj str_PKF_A_1A_win_00005478, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_win_00005478

# .rodata:0x189 | 0x1D39 | size: 0x3
.obj gap_03_00001D39_rodata, global
.hidden gap_03_00001D39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D39_rodata

# .rodata:0x18C | 0x1D3C | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_win_00005484, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_win_00005484

# .rodata:0x1A3 | 0x1D53 | size: 0x1
.obj gap_03_00001D53_rodata, global
.hidden gap_03_00001D53_rodata
	.byte 0x00
.endobj gap_03_00001D53_rodata

# .rodata:0x1A4 | 0x1D54 | size: 0x9
.obj str_PKF_A_1C_win_0000549c, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_win_0000549c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B0 | 0x1D60 | size: 0x4
.obj zero_win_000054a8, local
	.float 0
.endobj zero_win_000054a8
	.4byte 0x00000000

# .rodata:0x1B8 | 0x1D68 | size: 0x8
.obj double_to_int_win_000054b0, local
	.double 4503601774854144
.endobj double_to_int_win_000054b0

# 0x0000F060..0x00010220 | size: 0x11C0
.data
.balign 8

# .data:0x0 | 0xF060 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xF068 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xF06C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xF070 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xF074 | size: 0x4
.obj gap_04_0000F074_data, global
.hidden gap_04_0000F074_data
	.4byte 0x00000000
.endobj gap_04_0000F074_data

# .data:0x18 | 0xF078 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xF080 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xF084 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xF088 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xF090 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xF094 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xF098 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xF09C | size: 0x4
.obj gap_04_0000F09C_data, global
.hidden gap_04_0000F09C_data
	.4byte 0x00000000
.endobj gap_04_0000F09C_data

# .data:0x40 | 0xF0A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xF0A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xF0AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xF0B0 | size: 0xC4
.obj unit_pakkun_flower, local
	.4byte 0x000000A2
	.4byte str_btl_un_pakkun_flower_win_000052f8
	.4byte 0x000F0000
	.4byte 0x01012101
	.4byte 0x03460132
	.4byte 0x270F0028
	.4byte 0x00300004
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x42400000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAKKUN_DAMAG_win_00005310
	.4byte str_SFX_BTL_DAMAGE_FIRE1_win_00005328
	.4byte str_SFX_BTL_DAMAGE_ICE1_win_00005340
	.4byte str_SFX_BTL_DAMAGE_BIRIB_win_00005354
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_pakkun_flower

# .data:0x114 | 0xF174 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xF179 | size: 0x3
.obj gap_04_0000F179_data, global
.hidden gap_04_0000F179_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000F179_data

# .data:0x11C | 0xF17C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xF181 | size: 0x3
.obj gap_04_0000F181_data, global
.hidden gap_04_0000F181_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000F181_data

# .data:0x124 | 0xF184 | size: 0x16
.obj regist, local
	.4byte 0x64462864
	.4byte 0x5064643C
	.4byte 0x64556455
	.4byte 0x6455460A
	.4byte 0x1E644664
	.2byte 0x641E
.endobj regist

# .data:0x13A | 0xF19A | size: 0x2
.obj gap_04_0000F19A_data, global
.hidden gap_04_0000F19A_data
	.2byte 0x0000
.endobj gap_04_0000F19A_data

# .data:0x13C | 0xF19C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_pakkun_flower_win_000052f8
	.4byte str_c_pakflwr_win_00005370
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x188 | 0xF1E8 | size: 0xC0
.obj weapon_pakkun_flower_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_pakkun_flower_attack

# .data:0x248 | 0xF2A8 | size: 0xA4
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
	.4byte weapon_pakkun_flower_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_pakkun_flower_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x2EC | 0xF34C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_win_0000537c
	.4byte 0x00000002
	.4byte str_PKF_Y_1_win_00005384
	.4byte 0x00000009
	.4byte str_PKF_Y_1_win_00005384
	.4byte 0x00000005
	.4byte str_PKF_K_1_win_0000538c
	.4byte 0x00000004
	.4byte str_PKF_X_1_win_00005394
	.4byte 0x00000003
	.4byte str_PKF_X_1_win_00005394
	.4byte 0x0000001C
	.4byte str_PKF_S_1_win_0000539c
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_win_000053a4
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_win_000053a4
	.4byte 0x0000001F
	.4byte str_PKF_S_2_win_000053ac
	.4byte 0x00000027
	.4byte str_PKF_D_1_win_000053b4
	.4byte 0x00000032
	.4byte str_PKF_A_1B_win_000053bc
	.4byte 0x00000028
	.4byte str_PKF_S_1_win_0000539c
	.4byte 0x0000002A
	.4byte str_PKF_S_1_win_0000539c
	.4byte 0x00000038
	.4byte str_PKF_X_1_win_00005394
	.4byte 0x00000039
	.4byte str_PKF_X_1_win_00005394
	.4byte 0x00000041
	.4byte str_PKF_T_1_win_000053c8
	.4byte 0x00000045
	.4byte str_PKF_S_1_win_0000539c
.endobj pose_table

# .data:0x37C | 0xF3DC | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_win_000053d0
	.4byte 0x00000002
	.4byte str_PKF_Y_2_win_000053d8
	.4byte 0x00000009
	.4byte str_PKF_Y_2_win_000053d8
	.4byte 0x00000005
	.4byte str_PKF_K_2_win_000053e0
	.4byte 0x00000004
	.4byte str_PKF_X_2_win_000053e8
	.4byte 0x00000003
	.4byte str_PKF_X_2_win_000053e8
	.4byte 0x0000001C
	.4byte str_PKF_S_3_win_000053f0
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_win_000053f8
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_win_000053f8
	.4byte 0x0000001F
	.4byte str_PKF_S_4_win_00005400
	.4byte 0x00000027
	.4byte str_PKF_D_2_win_00005408
	.4byte 0x00000032
	.4byte str_PKF_A_5_win_00005410
	.4byte 0x00000028
	.4byte str_PKF_S_3_win_000053f0
	.4byte 0x0000002A
	.4byte str_PKF_S_3_win_000053f0
	.4byte 0x00000038
	.4byte str_PKF_X_2_win_000053e8
	.4byte 0x00000039
	.4byte str_PKF_X_2_win_000053e8
	.4byte 0x00000041
	.4byte str_PKF_S_3_win_000053f0
	.4byte 0x00000045
	.4byte str_PKF_S_3_win_000053f0
.endobj pose_table_ceil

# .data:0x40C | 0xF46C | size: 0x78
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
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

# .data:0x484 | 0xF4E4 | size: 0x7C
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
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte shadow_scale_memory
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x500 | 0xF560 | size: 0x11C
.obj dmg_avoid_counter_thorn_head_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001F
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_win_0000539c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000003F
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000025
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_win_00005418
	.4byte str_toge_flush_win_0000541c
	.4byte 0x00000000
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_avoid_counter_thorn_head_event

# .data:0x61C | 0xF67C | size: 0x28
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

# .data:0x644 | 0xF6A4 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_win_000053b4
	.4byte 0x0001000A
	.4byte 0x000003E8
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
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0x6BC | 0xF71C | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_win_00005428
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_win_00005440
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005448
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_win_00005460
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_win_0000539c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0xF928 | size: 0x400
.obj return_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte pakkun_ceil_exist
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_win_00005428
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_2_win_00005468
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005448
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_win_00005460
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_win_0000539c
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte ceil_fall_ready_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005448
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_3_win_00005470
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFFFFFFE0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_ceil
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_3_win_000053f0
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0xFD28 | size: 0x4DC
.obj normal_attack_event, local
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_win_00005428
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_2_win_00005468
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_win_00005440
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
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
	.4byte 0x0000002D
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
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
	.4byte 0x000001F4
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
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_win_00005448
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_win_00005460
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_win_00005478
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_win_00005484
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_win_000053bc
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_win_0000549c
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
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x11A4 | 0x10204 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x11BC | 0x1021C | size: 0x4
.obj gap_04_0001021C_data, global
.hidden gap_04_0001021C_data
	.4byte 0x00000000
.endobj gap_04_0001021C_data
