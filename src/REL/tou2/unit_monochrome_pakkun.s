.include "macros.inc"
.file "unit_monochrome_pakkun.o"

# 0x000093E0..0x00009670 | size: 0x290
.text
.balign 4

# .text:0x0 | 0x93E0 | size: 0xDC
.fn shadow_scale_return, local
/* 000093E0 000094A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000093E4 000094A8  7C 08 02 A6 */	mflr r0
/* 000093E8 000094AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 000093EC 000094B0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000093F0 000094B4  7C 9F 23 78 */	mr r31, r4
/* 000093F4 000094B8  7C 7E 1B 78 */	mr r30, r3
/* 000093F8 000094BC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000093FC 000094C0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00009400 000094C4  4B FF BC 15 */	bl evtGetValue
/* 00009404 000094C8  7C 64 1B 78 */	mr r4, r3
/* 00009408 000094CC  7F C3 F3 78 */	mr r3, r30
/* 0000940C 000094D0  4B FF BC 09 */	bl BattleTransID
/* 00009410 000094D4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00009414 000094D8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00009418 000094DC  7C 64 1B 78 */	mr r4, r3
/* 0000941C 000094E0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00009420 000094E4  4B FF BB F5 */	bl BattleGetUnitPtr
/* 00009424 000094E8  7C 7E 1B 78 */	mr r30, r3
/* 00009428 000094EC  38 80 00 01 */	li r4, 0x1
/* 0000942C 000094F0  4B FF BB E9 */	bl BtlUnit_GetPartsPtr
/* 00009430 000094F4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00009434 000094F8  7C 7F 1B 78 */	mr r31, r3
/* 00009438 000094FC  41 82 00 0C */	beq .L_00009444
/* 0000943C 00009500  38 00 00 00 */	li r0, 0x0
/* 00009440 00009504  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00009444:
/* 00009444 00009508  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 00009448 0000950C  3C 00 43 30 */	lis r0, 0x4330
/* 0000944C 00009510  3C 80 00 00 */	lis r4, double_to_int_tou2_00011d58@ha
/* 00009450 00009514  3C A0 00 00 */	lis r5, zero_tou2_00011d54@ha
/* 00009454 00009518  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00009458 0000951C  C8 44 00 00 */	lfd f2, double_to_int_tou2_00011d58@l(r4)
/* 0000945C 00009520  90 61 00 0C */	stw r3, 0xc(r1)
/* 00009460 00009524  38 C5 00 00 */	addi r6, r5, zero_tou2_00011d54@l
/* 00009464 00009528  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00009468 0000952C  38 60 00 00 */	li r3, 0x0
/* 0000946C 00009530  90 01 00 08 */	stw r0, 0x8(r1)
/* 00009470 00009534  38 A0 00 0F */	li r5, 0xf
/* 00009474 00009538  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00009478 0000953C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000947C 00009540  EC 40 10 28 */	fsubs f2, f0, f2
/* 00009480 00009544  4B FF BB 95 */	bl intplGetValue
/* 00009484 00009548  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00009488 0000954C  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000948C 00009550  2C 03 00 0F */	cmpwi r3, 0xf
/* 00009490 00009554  41 80 00 0C */	blt .L_0000949C
/* 00009494 00009558  38 60 00 02 */	li r3, 0x2
/* 00009498 0000955C  48 00 00 10 */	b .L_000094A8
.L_0000949C:
/* 0000949C 00009560  38 03 00 01 */	addi r0, r3, 0x1
/* 000094A0 00009564  38 60 00 00 */	li r3, 0x0
/* 000094A4 00009568  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_000094A8:
/* 000094A8 0000956C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000094AC 00009570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000094B0 00009574  7C 08 03 A6 */	mtlr r0
/* 000094B4 00009578  38 21 00 20 */	addi r1, r1, 0x20
/* 000094B8 0000957C  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0x94BC | size: 0xE0
.fn shadow_scale_small, local
/* 000094BC 00009580  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000094C0 00009584  7C 08 02 A6 */	mflr r0
/* 000094C4 00009588  90 01 00 24 */	stw r0, 0x24(r1)
/* 000094C8 0000958C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000094CC 00009590  7C 9F 23 78 */	mr r31, r4
/* 000094D0 00009594  7C 7E 1B 78 */	mr r30, r3
/* 000094D4 00009598  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000094D8 0000959C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000094DC 000095A0  4B FF BB 39 */	bl evtGetValue
/* 000094E0 000095A4  7C 64 1B 78 */	mr r4, r3
/* 000094E4 000095A8  7F C3 F3 78 */	mr r3, r30
/* 000094E8 000095AC  4B FF BB 2D */	bl BattleTransID
/* 000094EC 000095B0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000094F0 000095B4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000094F4 000095B8  7C 64 1B 78 */	mr r4, r3
/* 000094F8 000095BC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000094FC 000095C0  4B FF BB 19 */	bl BattleGetUnitPtr
/* 00009500 000095C4  7C 7E 1B 78 */	mr r30, r3
/* 00009504 000095C8  38 80 00 01 */	li r4, 0x1
/* 00009508 000095CC  4B FF BB 0D */	bl BtlUnit_GetPartsPtr
/* 0000950C 000095D0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00009510 000095D4  7C 7F 1B 78 */	mr r31, r3
/* 00009514 000095D8  41 82 00 0C */	beq .L_00009520
/* 00009518 000095DC  38 00 00 00 */	li r0, 0x0
/* 0000951C 000095E0  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00009520:
/* 00009520 000095E4  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 00009524 000095E8  3C 00 43 30 */	lis r0, 0x4330
/* 00009528 000095EC  3C 80 00 00 */	lis r4, double_to_int_tou2_00011d58@ha
/* 0000952C 000095F0  3C 60 00 00 */	lis r3, zero_tou2_00011d54@ha
/* 00009530 000095F4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00009534 000095F8  90 01 00 08 */	stw r0, 0x8(r1)
/* 00009538 000095FC  38 C4 00 00 */	addi r6, r4, double_to_int_tou2_00011d58@l
/* 0000953C 00009600  38 83 00 00 */	addi r4, r3, zero_tou2_00011d54@l
/* 00009540 00009604  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00009544 00009608  38 60 00 00 */	li r3, 0x0
/* 00009548 0000960C  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 0000954C 00009610  38 A0 00 0F */	li r5, 0xf
/* 00009550 00009614  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00009554 00009618  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00009558 0000961C  EC 20 08 28 */	fsubs f1, f0, f1
/* 0000955C 00009620  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00009560 00009624  4B FF BA B5 */	bl intplGetValue
/* 00009564 00009628  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00009568 0000962C  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000956C 00009630  2C 03 00 0F */	cmpwi r3, 0xf
/* 00009570 00009634  41 80 00 0C */	blt .L_0000957C
/* 00009574 00009638  38 60 00 02 */	li r3, 0x2
/* 00009578 0000963C  48 00 00 10 */	b .L_00009588
.L_0000957C:
/* 0000957C 00009640  38 03 00 01 */	addi r0, r3, 0x1
/* 00009580 00009644  38 60 00 00 */	li r3, 0x0
/* 00009584 00009648  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00009588:
/* 00009588 0000964C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000958C 00009650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00009590 00009654  7C 08 03 A6 */	mtlr r0
/* 00009594 00009658  38 21 00 20 */	addi r1, r1, 0x20
/* 00009598 0000965C  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0x959C | size: 0x78
.fn shadow_scale_memory, local
/* 0000959C 00009660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000095A0 00009664  7C 08 02 A6 */	mflr r0
/* 000095A4 00009668  90 01 00 24 */	stw r0, 0x24(r1)
/* 000095A8 0000966C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000095AC 00009670  7C 7F 1B 78 */	mr r31, r3
/* 000095B0 00009674  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000095B4 00009678  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000095B8 0000967C  4B FF BA 5D */	bl evtGetValue
/* 000095BC 00009680  7C 64 1B 78 */	mr r4, r3
/* 000095C0 00009684  7F E3 FB 78 */	mr r3, r31
/* 000095C4 00009688  4B FF BA 51 */	bl BattleTransID
/* 000095C8 0000968C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000095CC 00009690  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000095D0 00009694  7C 64 1B 78 */	mr r4, r3
/* 000095D4 00009698  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000095D8 0000969C  4B FF BA 3D */	bl BattleGetUnitPtr
/* 000095DC 000096A0  7C 7F 1B 78 */	mr r31, r3
/* 000095E0 000096A4  38 80 00 01 */	li r4, 0x1
/* 000095E4 000096A8  4B FF BA 31 */	bl BtlUnit_GetPartsPtr
/* 000095E8 000096AC  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 000095EC 000096B0  38 60 00 02 */	li r3, 0x2
/* 000095F0 000096B4  FC 00 00 1E */	fctiwz f0, f0
/* 000095F4 000096B8  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000095F8 000096BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 000095FC 000096C0  90 1F 02 18 */	stw r0, 0x218(r31)
/* 00009600 000096C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00009604 000096C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00009608 000096CC  7C 08 03 A6 */	mtlr r0
/* 0000960C 000096D0  38 21 00 20 */	addi r1, r1, 0x20
/* 00009610 000096D4  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0x9614 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 00009614 000096D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00009618 000096DC  7C 08 02 A6 */	mflr r0
/* 0000961C 000096E0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00009620 000096E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00009624 000096E8  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00009628 000096EC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000962C 000096F0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00009630 000096F4  3C 84 00 02 */	addis r4, r4, 0x2
/* 00009634 000096F8  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 00009638 000096FC  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 0000963C 00009700  41 82 00 14 */	beq .L_00009650
/* 00009640 00009704  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00009644 00009708  38 A0 00 00 */	li r5, 0x0
/* 00009648 0000970C  4B FF B9 CD */	bl evtSetValue
/* 0000964C 00009710  48 00 00 10 */	b .L_0000965C
.L_00009650:
/* 00009650 00009714  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00009654 00009718  38 A0 00 01 */	li r5, 0x1
/* 00009658 0000971C  4B FF B9 BD */	bl evtSetValue
.L_0000965C:
/* 0000965C 00009720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00009660 00009724  38 60 00 02 */	li r3, 0x2
/* 00009664 00009728  7C 08 03 A6 */	mtlr r0
/* 00009668 0000972C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000966C 00009730  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x00008460..0x00008620 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x8460 | size: 0x19
.obj str_btl_un_monochrome_pa_tou2_00011ba0, local
	.string "btl_un_monochrome_pakkun"
.endobj str_btl_un_monochrome_pa_tou2_00011ba0

# .rodata:0x19 | 0x8479 | size: 0x3
.obj gap_03_00008479_rodata, global
.hidden gap_03_00008479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008479_rodata

# .rodata:0x1C | 0x847C | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_tou2_00011bbc, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_tou2_00011bbc

# .rodata:0x34 | 0x8494 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_00011bd4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_00011bd4

# .rodata:0x49 | 0x84A9 | size: 0x3
.obj gap_03_000084A9_rodata, global
.hidden gap_03_000084A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000084A9_rodata

# .rodata:0x4C | 0x84AC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_00011bec, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_00011bec

# .rodata:0x60 | 0x84C0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_00011c00, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_00011c00

# .rodata:0x79 | 0x84D9 | size: 0x3
.obj gap_03_000084D9_rodata, global
.hidden gap_03_000084D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000084D9_rodata

# .rodata:0x7C | 0x84DC | size: 0xC
.obj str_c_pakflwr_t_tou2_00011c1c, local
	.string "c_pakflwr_t"
.endobj str_c_pakflwr_t_tou2_00011c1c

# .rodata:0x88 | 0x84E8 | size: 0x8
.obj str_PKF_N_1_tou2_00011c28, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_tou2_00011c28

# .rodata:0x90 | 0x84F0 | size: 0x8
.obj str_PKF_Y_1_tou2_00011c30, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_tou2_00011c30

# .rodata:0x98 | 0x84F8 | size: 0x8
.obj str_PKF_K_1_tou2_00011c38, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_tou2_00011c38

# .rodata:0xA0 | 0x8500 | size: 0x8
.obj str_PKF_X_1_tou2_00011c40, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_tou2_00011c40

# .rodata:0xA8 | 0x8508 | size: 0x8
.obj str_PKF_S_1_tou2_00011c48, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_tou2_00011c48

# .rodata:0xB0 | 0x8510 | size: 0x8
.obj str_PKF_Q_1_tou2_00011c50, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_tou2_00011c50

# .rodata:0xB8 | 0x8518 | size: 0x8
.obj str_PKF_S_2_tou2_00011c58, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_tou2_00011c58

# .rodata:0xC0 | 0x8520 | size: 0x8
.obj str_PKF_D_1_tou2_00011c60, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_tou2_00011c60

# .rodata:0xC8 | 0x8528 | size: 0x9
.obj str_PKF_A_1B_tou2_00011c68, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_tou2_00011c68

# .rodata:0xD1 | 0x8531 | size: 0x3
.obj gap_03_00008531_rodata, global
.hidden gap_03_00008531_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008531_rodata

# .rodata:0xD4 | 0x8534 | size: 0x8
.obj str_PKF_T_1_tou2_00011c74, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_tou2_00011c74

# .rodata:0xDC | 0x853C | size: 0x8
.obj str_PKF_N_2_tou2_00011c7c, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_tou2_00011c7c

# .rodata:0xE4 | 0x8544 | size: 0x8
.obj str_PKF_Y_2_tou2_00011c84, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_tou2_00011c84

# .rodata:0xEC | 0x854C | size: 0x8
.obj str_PKF_K_2_tou2_00011c8c, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_tou2_00011c8c

# .rodata:0xF4 | 0x8554 | size: 0x8
.obj str_PKF_X_2_tou2_00011c94, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_tou2_00011c94

# .rodata:0xFC | 0x855C | size: 0x8
.obj str_PKF_S_3_tou2_00011c9c, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_tou2_00011c9c

# .rodata:0x104 | 0x8564 | size: 0x8
.obj str_PKF_Q_2_tou2_00011ca4, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_tou2_00011ca4

# .rodata:0x10C | 0x856C | size: 0x8
.obj str_PKF_S_4_tou2_00011cac, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_tou2_00011cac

# .rodata:0x114 | 0x8574 | size: 0x8
.obj str_PKF_D_2_tou2_00011cb4, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_tou2_00011cb4

# .rodata:0x11C | 0x857C | size: 0x8
.obj str_PKF_A_5_tou2_00011cbc, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_tou2_00011cbc

# .rodata:0x124 | 0x8584 | size: 0x1
.obj zero_tou2_00011cc4, local
	.byte 0x00
.endobj zero_tou2_00011cc4

# .rodata:0x125 | 0x8585 | size: 0x3
.obj gap_03_00008585_rodata, global
.hidden gap_03_00008585_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008585_rodata

# .rodata:0x128 | 0x8588 | size: 0xB
.obj str_toge_flush_tou2_00011cc8, local
	.string "toge_flush"
.endobj str_toge_flush_tou2_00011cc8

# .rodata:0x133 | 0x8593 | size: 0x1
.obj gap_03_00008593_rodata, global
.hidden gap_03_00008593_rodata
	.byte 0x00
.endobj gap_03_00008593_rodata

# .rodata:0x134 | 0x8594 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_tou2_00011cd4, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_tou2_00011cd4

# .rodata:0x149 | 0x85A9 | size: 0x3
.obj gap_03_000085A9_rodata, global
.hidden gap_03_000085A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000085A9_rodata

# .rodata:0x14C | 0x85AC | size: 0x8
.obj str_PKF_E_4_tou2_00011cec, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_tou2_00011cec

# .rodata:0x154 | 0x85B4 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_tou2_00011cf4, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_tou2_00011cf4

# .rodata:0x169 | 0x85C9 | size: 0x3
.obj gap_03_000085C9_rodata, global
.hidden gap_03_000085C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000085C9_rodata

# .rodata:0x16C | 0x85CC | size: 0x8
.obj str_PKF_E_1_tou2_00011d0c, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_tou2_00011d0c

# .rodata:0x174 | 0x85D4 | size: 0x8
.obj str_PKF_E_2_tou2_00011d14, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_tou2_00011d14

# .rodata:0x17C | 0x85DC | size: 0x8
.obj str_PKF_E_3_tou2_00011d1c, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_tou2_00011d1c

# .rodata:0x184 | 0x85E4 | size: 0x9
.obj str_PKF_A_1A_tou2_00011d24, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_tou2_00011d24

# .rodata:0x18D | 0x85ED | size: 0x3
.obj gap_03_000085ED_rodata, global
.hidden gap_03_000085ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000085ED_rodata

# .rodata:0x190 | 0x85F0 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_tou2_00011d30, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_tou2_00011d30

# .rodata:0x1A7 | 0x8607 | size: 0x1
.obj gap_03_00008607_rodata, global
.hidden gap_03_00008607_rodata
	.byte 0x00
.endobj gap_03_00008607_rodata

# .rodata:0x1A8 | 0x8608 | size: 0x9
.obj str_PKF_A_1C_tou2_00011d48, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_tou2_00011d48
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B4 | 0x8614 | size: 0x4
.obj zero_tou2_00011d54, local
	.float 0
.endobj zero_tou2_00011d54

# .rodata:0x1B8 | 0x8618 | size: 0x8
.obj double_to_int_tou2_00011d58, local
	.double 4503601774854144
.endobj double_to_int_tou2_00011d58

# 0x0005BA40..0x0005CBFC | size: 0x11BC
.data
.balign 8

# .data:0x0 | 0x5BA40 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5BA48 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5BA4C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5BA50 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5BA54 | size: 0x4
.obj gap_04_0005BA54_data, global
.hidden gap_04_0005BA54_data
	.4byte 0x00000000
.endobj gap_04_0005BA54_data

# .data:0x18 | 0x5BA58 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5BA60 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5BA64 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5BA68 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5BA70 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5BA74 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5BA78 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5BA7C | size: 0x4
.obj gap_04_0005BA7C_data, global
.hidden gap_04_0005BA7C_data
	.4byte 0x00000000
.endobj gap_04_0005BA7C_data

# .data:0x40 | 0x5BA80 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5BA88 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5BA8C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5BA90 | size: 0xC4
.obj unit_monochrome_pakkun_26_data_5BA90, global
	.4byte 0x00000019
	.4byte str_btl_un_monochrome_pa_tou2_00011ba0
	.4byte 0x00040000
	.4byte 0x01010B00
	.4byte 0x0146013C
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_tou2_00011bbc
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_00011bd4
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_00011bec
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_00011c00
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_monochrome_pakkun_26_data_5BA90

# .data:0x114 | 0x5BB54 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x5BB59 | size: 0x3
.obj gap_04_0005BB59_data, global
.hidden gap_04_0005BB59_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005BB59_data

# .data:0x11C | 0x5BB5C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x5BB61 | size: 0x3
.obj gap_04_0005BB61_data, global
.hidden gap_04_0005BB61_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005BB61_data

# .data:0x124 | 0x5BB64 | size: 0x16
.obj regist, local
	.4byte 0x6E5A3C64
	.4byte 0x64646450
	.4byte 0x645F645F
	.4byte 0x645F5A1E
	.4byte 0x3C645A64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x5BB7A | size: 0x2
.obj gap_04_0005BB7A_data, global
.hidden gap_04_0005BB7A_data
	.2byte 0x0000
.endobj gap_04_0005BB7A_data

# .data:0x13C | 0x5BB7C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_monochrome_pa_tou2_00011ba0
	.4byte str_c_pakflwr_t_tou2_00011c1c
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

# .data:0x188 | 0x5BBC8 | size: 0xC0
.obj weapon_pakkun_flower_attack, local
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

# .data:0x248 | 0x5BC88 | size: 0xA4
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

# .data:0x2EC | 0x5BD2C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_tou2_00011c28
	.4byte 0x00000002
	.4byte str_PKF_Y_1_tou2_00011c30
	.4byte 0x00000009
	.4byte str_PKF_Y_1_tou2_00011c30
	.4byte 0x00000005
	.4byte str_PKF_K_1_tou2_00011c38
	.4byte 0x00000004
	.4byte str_PKF_X_1_tou2_00011c40
	.4byte 0x00000003
	.4byte str_PKF_X_1_tou2_00011c40
	.4byte 0x0000001C
	.4byte str_PKF_S_1_tou2_00011c48
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_tou2_00011c50
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_tou2_00011c50
	.4byte 0x0000001F
	.4byte str_PKF_S_2_tou2_00011c58
	.4byte 0x00000027
	.4byte str_PKF_D_1_tou2_00011c60
	.4byte 0x00000032
	.4byte str_PKF_A_1B_tou2_00011c68
	.4byte 0x00000028
	.4byte str_PKF_S_1_tou2_00011c48
	.4byte 0x0000002A
	.4byte str_PKF_S_1_tou2_00011c48
	.4byte 0x00000038
	.4byte str_PKF_X_1_tou2_00011c40
	.4byte 0x00000039
	.4byte str_PKF_X_1_tou2_00011c40
	.4byte 0x00000041
	.4byte str_PKF_T_1_tou2_00011c74
	.4byte 0x00000045
	.4byte str_PKF_S_1_tou2_00011c48
.endobj pose_table

# .data:0x37C | 0x5BDBC | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_tou2_00011c7c
	.4byte 0x00000002
	.4byte str_PKF_Y_2_tou2_00011c84
	.4byte 0x00000009
	.4byte str_PKF_Y_2_tou2_00011c84
	.4byte 0x00000005
	.4byte str_PKF_K_2_tou2_00011c8c
	.4byte 0x00000004
	.4byte str_PKF_X_2_tou2_00011c94
	.4byte 0x00000003
	.4byte str_PKF_X_2_tou2_00011c94
	.4byte 0x0000001C
	.4byte str_PKF_S_3_tou2_00011c9c
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_tou2_00011ca4
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_tou2_00011ca4
	.4byte 0x0000001F
	.4byte str_PKF_S_4_tou2_00011cac
	.4byte 0x00000027
	.4byte str_PKF_D_2_tou2_00011cb4
	.4byte 0x00000032
	.4byte str_PKF_A_5_tou2_00011cbc
	.4byte 0x00000028
	.4byte str_PKF_S_3_tou2_00011c9c
	.4byte 0x0000002A
	.4byte str_PKF_S_3_tou2_00011c9c
	.4byte 0x00000038
	.4byte str_PKF_X_2_tou2_00011c94
	.4byte 0x00000039
	.4byte str_PKF_X_2_tou2_00011c94
	.4byte 0x00000041
	.4byte str_PKF_S_3_tou2_00011c9c
	.4byte 0x00000045
	.4byte str_PKF_S_3_tou2_00011c9c
.endobj pose_table_ceil

# .data:0x40C | 0x5BE4C | size: 0x78
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

# .data:0x484 | 0x5BEC4 | size: 0x7C
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

# .data:0x500 | 0x5BF40 | size: 0x11C
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
	.4byte str_PKF_S_1_tou2_00011c48
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
	.4byte zero_tou2_00011cc4
	.4byte str_toge_flush_tou2_00011cc8
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

# .data:0x61C | 0x5C05C | size: 0x28
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

# .data:0x644 | 0x5C084 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_tou2_00011c60
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

# .data:0x6BC | 0x5C0FC | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_tou2_00011cd4
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
	.4byte str_PKF_E_4_tou2_00011cec
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_tou2_00011cf4
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
	.4byte str_PKF_E_1_tou2_00011d0c
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
	.4byte str_PKF_S_1_tou2_00011c48
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0x5C308 | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_tou2_00011cd4
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
	.4byte str_PKF_E_2_tou2_00011d14
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_tou2_00011cf4
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
	.4byte str_PKF_E_1_tou2_00011d0c
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
	.4byte str_PKF_S_1_tou2_00011c48
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_tou2_00011cf4
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
	.4byte str_PKF_E_3_tou2_00011d1c
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
	.4byte str_PKF_S_3_tou2_00011c9c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0x5C708 | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_tou2_00011cd4
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
	.4byte str_PKF_E_2_tou2_00011d14
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_tou2_00011cec
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_tou2_00011cf4
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
	.4byte str_PKF_E_1_tou2_00011d0c
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_tou2_00011d24
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_tou2_00011d30
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_tou2_00011c68
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_tou2_00011d48
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

# .data:0x11A4 | 0x5CBE4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
