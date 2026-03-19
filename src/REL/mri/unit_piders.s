.include "macros.inc"
.file "unit_piders.o"

# 0x0001E2BC..0x0001E994 | size: 0x6D8
.text
.balign 4

# .text:0x0 | 0x1E2BC | size: 0x54
.fn piders_yarn_init, local
/* 0001E2BC 0001E380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001E2C0 0001E384  7C 08 02 A6 */	mflr r0
/* 0001E2C4 0001E388  38 80 FF FE */	li r4, -0x2
/* 0001E2C8 0001E38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001E2CC 0001E390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0001E2D0 0001E394  4B FE 1F 89 */	bl BattleTransID
/* 0001E2D4 0001E398  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E2D8 0001E39C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001E2DC 0001E3A0  7C 64 1B 78 */	mr r4, r3
/* 0001E2E0 0001E3A4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001E2E4 0001E3A8  4B FE 1F 75 */	bl BattleGetUnitPtr
/* 0001E2E8 0001E3AC  7C 7F 1B 78 */	mr r31, r3
/* 0001E2EC 0001E3B0  38 60 00 1C */	li r3, 0x1c
/* 0001E2F0 0001E3B4  4B FE 1F 69 */	bl BattleAlloc
/* 0001E2F4 0001E3B8  90 7F 03 14 */	stw r3, 0x314(r31)
/* 0001E2F8 0001E3BC  38 60 00 02 */	li r3, 0x2
/* 0001E2FC 0001E3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001E300 0001E3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0001E304 0001E3C8  7C 08 03 A6 */	mtlr r0
/* 0001E308 0001E3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 0001E30C 0001E3D0  4E 80 00 20 */	blr
.endfn piders_yarn_init

# .text:0x54 | 0x1E310 | size: 0x1F0
.fn piders_draw_yarn_sub, local
/* 0001E310 0001E3D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001E314 0001E3D8  7C 08 02 A6 */	mflr r0
/* 0001E318 0001E3DC  38 60 00 04 */	li r3, 0x4
/* 0001E31C 0001E3E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001E320 0001E3E4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001E324 0001E3E8  7C 9E 23 78 */	mr r30, r4
/* 0001E328 0001E3EC  4B FE 1F 31 */	bl camGetPtr
/* 0001E32C 0001E3F0  7C 7F 1B 78 */	mr r31, r3
/* 0001E330 0001E3F4  38 60 00 00 */	li r3, 0x0
/* 0001E334 0001E3F8  4B FE 1F 25 */	bl GXSetCullMode
/* 0001E338 0001E3FC  4B FE 1F 21 */	bl GXClearVtxDesc
/* 0001E33C 0001E400  38 60 00 09 */	li r3, 0x9
/* 0001E340 0001E404  38 80 00 01 */	li r4, 0x1
/* 0001E344 0001E408  4B FE 1F 15 */	bl GXSetVtxDesc
/* 0001E348 0001E40C  38 60 00 00 */	li r3, 0x0
/* 0001E34C 0001E410  38 80 00 09 */	li r4, 0x9
/* 0001E350 0001E414  38 A0 00 01 */	li r5, 0x1
/* 0001E354 0001E418  38 C0 00 04 */	li r6, 0x4
/* 0001E358 0001E41C  38 E0 00 00 */	li r7, 0x0
/* 0001E35C 0001E420  4B FE 1E FD */	bl GXSetVtxAttrFmt
/* 0001E360 0001E424  38 60 00 01 */	li r3, 0x1
/* 0001E364 0001E428  4B FE 1E F5 */	bl GXSetNumChans
/* 0001E368 0001E42C  38 60 00 04 */	li r3, 0x4
/* 0001E36C 0001E430  38 80 00 00 */	li r4, 0x0
/* 0001E370 0001E434  38 A0 00 00 */	li r5, 0x0
/* 0001E374 0001E438  38 C0 00 00 */	li r6, 0x0
/* 0001E378 0001E43C  38 E0 00 00 */	li r7, 0x0
/* 0001E37C 0001E440  39 00 00 02 */	li r8, 0x2
/* 0001E380 0001E444  39 20 00 02 */	li r9, 0x2
/* 0001E384 0001E448  4B FE 1E D5 */	bl GXSetChanCtrl
/* 0001E388 0001E44C  3C 60 00 00 */	lis r3, dat_mri_00026fb0@ha
/* 0001E38C 0001E450  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 0001E390 0001E454  80 A3 00 00 */	lwz r5, dat_mri_00026fb0@l(r3)
/* 0001E394 0001E458  38 81 00 0C */	addi r4, r1, 0xc
/* 0001E398 0001E45C  38 60 00 04 */	li r3, 0x4
/* 0001E39C 0001E460  90 A1 00 08 */	stw r5, 0x8(r1)
/* 0001E3A0 0001E464  98 01 00 0B */	stb r0, 0xb(r1)
/* 0001E3A4 0001E468  80 01 00 08 */	lwz r0, 0x8(r1)
/* 0001E3A8 0001E46C  90 01 00 0C */	stw r0, 0xc(r1)
/* 0001E3AC 0001E470  4B FE 1E AD */	bl GXSetChanMatColor
/* 0001E3B0 0001E474  38 60 00 00 */	li r3, 0x0
/* 0001E3B4 0001E478  4B FE 1E A5 */	bl GXSetNumTexGens
/* 0001E3B8 0001E47C  38 60 00 01 */	li r3, 0x1
/* 0001E3BC 0001E480  4B FE 1E 9D */	bl GXSetNumTevStages
/* 0001E3C0 0001E484  38 60 00 00 */	li r3, 0x0
/* 0001E3C4 0001E488  38 80 00 00 */	li r4, 0x0
/* 0001E3C8 0001E48C  38 A0 00 00 */	li r5, 0x0
/* 0001E3CC 0001E490  38 C0 00 00 */	li r6, 0x0
/* 0001E3D0 0001E494  38 E0 00 01 */	li r7, 0x1
/* 0001E3D4 0001E498  39 00 00 00 */	li r8, 0x0
/* 0001E3D8 0001E49C  4B FE 1E 81 */	bl GXSetTevColorOp
/* 0001E3DC 0001E4A0  38 60 00 00 */	li r3, 0x0
/* 0001E3E0 0001E4A4  38 80 00 0F */	li r4, 0xf
/* 0001E3E4 0001E4A8  38 A0 00 0F */	li r5, 0xf
/* 0001E3E8 0001E4AC  38 C0 00 0F */	li r6, 0xf
/* 0001E3EC 0001E4B0  38 E0 00 0A */	li r7, 0xa
/* 0001E3F0 0001E4B4  4B FE 1E 69 */	bl GXSetTevColorIn
/* 0001E3F4 0001E4B8  38 60 00 00 */	li r3, 0x0
/* 0001E3F8 0001E4BC  38 80 00 00 */	li r4, 0x0
/* 0001E3FC 0001E4C0  38 A0 00 00 */	li r5, 0x0
/* 0001E400 0001E4C4  38 C0 00 00 */	li r6, 0x0
/* 0001E404 0001E4C8  38 E0 00 01 */	li r7, 0x1
/* 0001E408 0001E4CC  39 00 00 00 */	li r8, 0x0
/* 0001E40C 0001E4D0  4B FE 1E 4D */	bl GXSetTevAlphaOp
/* 0001E410 0001E4D4  38 60 00 00 */	li r3, 0x0
/* 0001E414 0001E4D8  38 80 00 07 */	li r4, 0x7
/* 0001E418 0001E4DC  38 A0 00 07 */	li r5, 0x7
/* 0001E41C 0001E4E0  38 C0 00 07 */	li r6, 0x7
/* 0001E420 0001E4E4  38 E0 00 05 */	li r7, 0x5
/* 0001E424 0001E4E8  4B FE 1E 35 */	bl GXSetTevAlphaIn
/* 0001E428 0001E4EC  38 60 00 00 */	li r3, 0x0
/* 0001E42C 0001E4F0  38 80 00 FF */	li r4, 0xff
/* 0001E430 0001E4F4  38 A0 00 FF */	li r5, 0xff
/* 0001E434 0001E4F8  38 C0 00 04 */	li r6, 0x4
/* 0001E438 0001E4FC  4B FE 1E 21 */	bl GXSetTevOrder
/* 0001E43C 0001E500  38 7F 01 1C */	addi r3, r31, 0x11c
/* 0001E440 0001E504  38 80 00 00 */	li r4, 0x0
/* 0001E444 0001E508  4B FE 1E 15 */	bl GXLoadPosMtxImm
/* 0001E448 0001E50C  38 60 00 80 */	li r3, 0x80
/* 0001E44C 0001E510  38 80 00 00 */	li r4, 0x0
/* 0001E450 0001E514  38 A0 00 04 */	li r5, 0x4
/* 0001E454 0001E518  4B FE 1E 05 */	bl GXBegin
/* 0001E458 0001E51C  3C 60 00 00 */	lis r3, float_1_mri_00026fb8@ha
/* 0001E45C 0001E520  3C 80 00 00 */	lis r4, float_5_mri_00026fb4@ha
/* 0001E460 0001E524  C0 43 00 00 */	lfs f2, float_1_mri_00026fb8@l(r3)
/* 0001E464 0001E528  3C 60 CC 01 */	lis r3, 0xcc01
/* 0001E468 0001E52C  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 0001E46C 0001E530  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 0001E470 0001E534  EC 00 10 28 */	fsubs f0, f0, f2
/* 0001E474 0001E538  C0 9E 00 04 */	lfs f4, 0x4(r30)
/* 0001E478 0001E53C  C0 64 00 00 */	lfs f3, float_5_mri_00026fb4@l(r4)
/* 0001E47C 0001E540  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0001E480 0001E544  EC 01 18 28 */	fsubs f0, f1, f3
/* 0001E484 0001E548  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 0001E488 0001E54C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0001E48C 0001E550  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 0001E490 0001E554  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 0001E494 0001E558  EC 02 00 2A */	fadds f0, f2, f0
/* 0001E498 0001E55C  C0 9E 00 04 */	lfs f4, 0x4(r30)
/* 0001E49C 0001E560  EC 21 18 28 */	fsubs f1, f1, f3
/* 0001E4A0 0001E564  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0001E4A4 0001E568  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 0001E4A8 0001E56C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 0001E4AC 0001E570  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 0001E4B0 0001E574  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 0001E4B4 0001E578  EC 02 00 2A */	fadds f0, f2, f0
/* 0001E4B8 0001E57C  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 0001E4BC 0001E580  EC 21 18 28 */	fsubs f1, f1, f3
/* 0001E4C0 0001E584  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0001E4C4 0001E588  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 0001E4C8 0001E58C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 0001E4CC 0001E590  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 0001E4D0 0001E594  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 0001E4D4 0001E598  EC 00 10 28 */	fsubs f0, f0, f2
/* 0001E4D8 0001E59C  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 0001E4DC 0001E5A0  EC 21 18 28 */	fsubs f1, f1, f3
/* 0001E4E0 0001E5A4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 0001E4E4 0001E5A8  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 0001E4E8 0001E5AC  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 0001E4EC 0001E5B0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0001E4F0 0001E5B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001E4F4 0001E5B8  7C 08 03 A6 */	mtlr r0
/* 0001E4F8 0001E5BC  38 21 00 20 */	addi r1, r1, 0x20
/* 0001E4FC 0001E5C0  4E 80 00 20 */	blr
.endfn piders_draw_yarn_sub

# .text:0x244 | 0x1E500 | size: 0xE4
.fn piders_draw_yarn, local
/* 0001E500 0001E5C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001E504 0001E5C8  7C 08 02 A6 */	mflr r0
/* 0001E508 0001E5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001E50C 0001E5D0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0001E510 0001E5D4  7C 7D 1B 78 */	mr r29, r3
/* 0001E514 0001E5D8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001E518 0001E5DC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001E51C 0001E5E0  4B FE 1D 3D */	bl evtGetValue
/* 0001E520 0001E5E4  54 7F 06 3E */	clrlwi r31, r3, 24
/* 0001E524 0001E5E8  7F A3 EB 78 */	mr r3, r29
/* 0001E528 0001E5EC  38 80 FF FE */	li r4, -0x2
/* 0001E52C 0001E5F0  4B FE 1D 2D */	bl BattleTransID
/* 0001E530 0001E5F4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E534 0001E5F8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001E538 0001E5FC  7C 64 1B 78 */	mr r4, r3
/* 0001E53C 0001E600  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001E540 0001E604  4B FE 1D 19 */	bl BattleGetUnitPtr
/* 0001E544 0001E608  83 A3 03 14 */	lwz r29, 0x314(r3)
/* 0001E548 0001E60C  7C 7E 1B 78 */	mr r30, r3
/* 0001E54C 0001E610  38 9D 00 0C */	addi r4, r29, 0xc
/* 0001E550 0001E614  38 BD 00 10 */	addi r5, r29, 0x10
/* 0001E554 0001E618  38 DD 00 14 */	addi r6, r29, 0x14
/* 0001E558 0001E61C  4B FE 1D 01 */	bl BtlUnit_GetHomePos
/* 0001E55C 0001E620  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 0001E560 0001E624  3C 00 43 30 */	lis r0, 0x4330
/* 0001E564 0001E628  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001E568 0001E62C  3C 80 00 00 */	lis r4, double_to_int_mri_00026fc8@ha
/* 0001E56C 0001E630  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 0001E570 0001E634  C8 24 00 00 */	lfd f1, double_to_int_mri_00026fc8@l(r4)
/* 0001E574 0001E638  90 01 00 0C */	stw r0, 0xc(r1)
/* 0001E578 0001E63C  7F C3 F3 78 */	mr r3, r30
/* 0001E57C 0001E640  7F A4 EB 78 */	mr r4, r29
/* 0001E580 0001E644  38 BD 00 04 */	addi r5, r29, 0x4
/* 0001E584 0001E648  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001E588 0001E64C  38 DD 00 08 */	addi r6, r29, 0x8
/* 0001E58C 0001E650  EC 00 08 28 */	fsubs f0, f0, f1
/* 0001E590 0001E654  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 0001E594 0001E658  4B FE 1C C5 */	bl BtlUnit_GetHomePos
/* 0001E598 0001E65C  3C 60 00 00 */	lis r3, float_400_mri_00026fbc@ha
/* 0001E59C 0001E660  3C 80 00 00 */	lis r4, zero_mri_00026fc0@ha
/* 0001E5A0 0001E664  38 A3 00 00 */	addi r5, r3, float_400_mri_00026fbc@l
/* 0001E5A4 0001E668  C0 24 00 00 */	lfs f1, zero_mri_00026fc0@l(r4)
/* 0001E5A8 0001E66C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0001E5AC 0001E670  3C 60 00 00 */	lis r3, piders_draw_yarn_sub@ha
/* 0001E5B0 0001E674  38 A3 00 00 */	addi r5, r3, piders_draw_yarn_sub@l
/* 0001E5B4 0001E678  7F A6 EB 78 */	mr r6, r29
/* 0001E5B8 0001E67C  D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 0001E5BC 0001E680  38 60 00 04 */	li r3, 0x4
/* 0001E5C0 0001E684  38 80 00 02 */	li r4, 0x2
/* 0001E5C4 0001E688  9B FD 00 18 */	stb r31, 0x18(r29)
/* 0001E5C8 0001E68C  4B FE 1C 91 */	bl dispEntry
/* 0001E5CC 0001E690  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0001E5D0 0001E694  38 60 00 02 */	li r3, 0x2
/* 0001E5D4 0001E698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001E5D8 0001E69C  7C 08 03 A6 */	mtlr r0
/* 0001E5DC 0001E6A0  38 21 00 20 */	addi r1, r1, 0x20
/* 0001E5E0 0001E6A4  4E 80 00 20 */	blr
.endfn piders_draw_yarn

# .text:0x328 | 0x1E5E4 | size: 0x9C
.fn piders_get_num, local
/* 0001E5E4 0001E6A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001E5E8 0001E6AC  7C 08 02 A6 */	mflr r0
/* 0001E5EC 0001E6B0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E5F0 0001E6B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001E5F4 0001E6B8  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 0001E5F8 0001E6BC  7C 7A 1B 78 */	mr r26, r3
/* 0001E5FC 0001E6C0  3B 80 00 00 */	li r28, 0x0
/* 0001E600 0001E6C4  3B C0 00 00 */	li r30, 0x0
/* 0001E604 0001E6C8  3B E0 00 00 */	li r31, 0x0
/* 0001E608 0001E6CC  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 0001E60C 0001E6D0  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_0001E610:
/* 0001E610 0001E6D4  38 1F 00 20 */	addi r0, r31, 0x20
/* 0001E614 0001E6D8  7C 7B 00 2E */	lwzx r3, r27, r0
/* 0001E618 0001E6DC  28 03 00 00 */	cmplwi r3, 0x0
/* 0001E61C 0001E6E0  41 82 00 2C */	beq .L_0001E648
/* 0001E620 0001E6E4  80 03 00 08 */	lwz r0, 0x8(r3)
/* 0001E624 0001E6E8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 0001E628 0001E6EC  41 82 00 0C */	beq .L_0001E634
/* 0001E62C 0001E6F0  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 0001E630 0001E6F4  40 82 00 18 */	bne .L_0001E648
.L_0001E634:
/* 0001E634 0001E6F8  38 80 00 1B */	li r4, 0x1b
/* 0001E638 0001E6FC  4B FE 1C 21 */	bl BtlUnit_CheckStatus
/* 0001E63C 0001E700  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001E640 0001E704  40 82 00 08 */	bne .L_0001E648
/* 0001E644 0001E708  3B 9C 00 01 */	addi r28, r28, 0x1
.L_0001E648:
/* 0001E648 0001E70C  3B DE 00 01 */	addi r30, r30, 0x1
/* 0001E64C 0001E710  3B FF 00 04 */	addi r31, r31, 0x4
/* 0001E650 0001E714  2C 1E 00 40 */	cmpwi r30, 0x40
/* 0001E654 0001E718  41 80 FF BC */	blt .L_0001E610
/* 0001E658 0001E71C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0001E65C 0001E720  7F 43 D3 78 */	mr r3, r26
/* 0001E660 0001E724  7F 85 E3 78 */	mr r5, r28
/* 0001E664 0001E728  4B FE 1B F5 */	bl evtSetValue
/* 0001E668 0001E72C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 0001E66C 0001E730  38 60 00 02 */	li r3, 0x2
/* 0001E670 0001E734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001E674 0001E738  7C 08 03 A6 */	mtlr r0
/* 0001E678 0001E73C  38 21 00 20 */	addi r1, r1, 0x20
/* 0001E67C 0001E740  4E 80 00 20 */	blr
.endfn piders_get_num

# .text:0x3C4 | 0x1E680 | size: 0xCC
.fn piders_get_zyun, local
/* 0001E680 0001E744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0001E684 0001E748  7C 08 02 A6 */	mflr r0
/* 0001E688 0001E74C  90 01 00 34 */	stw r0, 0x34(r1)
/* 0001E68C 0001E750  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 0001E690 0001E754  7C 78 1B 78 */	mr r24, r3
/* 0001E694 0001E758  3B 60 00 00 */	li r27, 0x0
/* 0001E698 0001E75C  83 83 00 18 */	lwz r28, 0x18(r3)
/* 0001E69C 0001E760  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0001E6A0 0001E764  4B FE 1B B9 */	bl evtGetValue
/* 0001E6A4 0001E768  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E6A8 0001E76C  7C 60 1B 78 */	mr r0, r3
/* 0001E6AC 0001E770  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001E6B0 0001E774  7F 03 C3 78 */	mr r3, r24
/* 0001E6B4 0001E778  83 45 00 00 */	lwz r26, 0x0(r5)
/* 0001E6B8 0001E77C  7C 04 03 78 */	mr r4, r0
/* 0001E6BC 0001E780  4B FE 1B 9D */	bl BattleTransID
/* 0001E6C0 0001E784  7C 7E 1B 78 */	mr r30, r3
/* 0001E6C4 0001E788  3B A0 00 00 */	li r29, 0x0
/* 0001E6C8 0001E78C  3B E0 00 00 */	li r31, 0x0
.L_0001E6CC:
/* 0001E6CC 0001E790  38 1F 00 20 */	addi r0, r31, 0x20
/* 0001E6D0 0001E794  7F 3A 00 2E */	lwzx r25, r26, r0
/* 0001E6D4 0001E798  28 19 00 00 */	cmplwi r25, 0x0
/* 0001E6D8 0001E79C  41 82 00 3C */	beq .L_0001E714
/* 0001E6DC 0001E7A0  80 19 00 08 */	lwz r0, 0x8(r25)
/* 0001E6E0 0001E7A4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 0001E6E4 0001E7A8  41 82 00 0C */	beq .L_0001E6F0
/* 0001E6E8 0001E7AC  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 0001E6EC 0001E7B0  40 82 00 28 */	bne .L_0001E714
.L_0001E6F0:
/* 0001E6F0 0001E7B4  7F 23 CB 78 */	mr r3, r25
/* 0001E6F4 0001E7B8  38 80 00 1B */	li r4, 0x1b
/* 0001E6F8 0001E7BC  4B FE 1B 61 */	bl BtlUnit_CheckStatus
/* 0001E6FC 0001E7C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001E700 0001E7C4  40 82 00 08 */	bne .L_0001E708
/* 0001E704 0001E7C8  3B 7B 00 01 */	addi r27, r27, 0x1
.L_0001E708:
/* 0001E708 0001E7CC  80 19 00 00 */	lwz r0, 0x0(r25)
/* 0001E70C 0001E7D0  7C 00 F0 00 */	cmpw r0, r30
/* 0001E710 0001E7D4  41 82 00 14 */	beq .L_0001E724
.L_0001E714:
/* 0001E714 0001E7D8  3B BD 00 01 */	addi r29, r29, 0x1
/* 0001E718 0001E7DC  3B FF 00 04 */	addi r31, r31, 0x4
/* 0001E71C 0001E7E0  2C 1D 00 40 */	cmpwi r29, 0x40
/* 0001E720 0001E7E4  41 80 FF AC */	blt .L_0001E6CC
.L_0001E724:
/* 0001E724 0001E7E8  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 0001E728 0001E7EC  7F 03 C3 78 */	mr r3, r24
/* 0001E72C 0001E7F0  7F 65 DB 78 */	mr r5, r27
/* 0001E730 0001E7F4  4B FE 1B 29 */	bl evtSetValue
/* 0001E734 0001E7F8  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 0001E738 0001E7FC  38 60 00 02 */	li r3, 0x2
/* 0001E73C 0001E800  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0001E740 0001E804  7C 08 03 A6 */	mtlr r0
/* 0001E744 0001E808  38 21 00 30 */	addi r1, r1, 0x30
/* 0001E748 0001E80C  4E 80 00 20 */	blr
.endfn piders_get_zyun

# .text:0x490 | 0x1E74C | size: 0xC0
.fn piders_get_first_pos_attr, local
/* 0001E74C 0001E810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001E750 0001E814  7C 08 02 A6 */	mflr r0
/* 0001E754 0001E818  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E758 0001E81C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001E75C 0001E820  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 0001E760 0001E824  7C 7A 1B 78 */	mr r26, r3
/* 0001E764 0001E828  3B C0 00 00 */	li r30, 0x0
/* 0001E768 0001E82C  3B E0 00 00 */	li r31, 0x0
/* 0001E76C 0001E830  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 0001E770 0001E834  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
.L_0001E774:
/* 0001E774 0001E838  38 1F 00 20 */	addi r0, r31, 0x20
/* 0001E778 0001E83C  7F 7C 00 2E */	lwzx r27, r28, r0
/* 0001E77C 0001E840  28 1B 00 00 */	cmplwi r27, 0x0
/* 0001E780 0001E844  41 82 00 2C */	beq .L_0001E7AC
/* 0001E784 0001E848  80 1B 00 08 */	lwz r0, 0x8(r27)
/* 0001E788 0001E84C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 0001E78C 0001E850  41 82 00 0C */	beq .L_0001E798
/* 0001E790 0001E854  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 0001E794 0001E858  40 82 00 18 */	bne .L_0001E7AC
.L_0001E798:
/* 0001E798 0001E85C  7F 63 DB 78 */	mr r3, r27
/* 0001E79C 0001E860  38 80 00 1B */	li r4, 0x1b
/* 0001E7A0 0001E864  4B FE 1A B9 */	bl BtlUnit_CheckStatus
/* 0001E7A4 0001E868  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001E7A8 0001E86C  41 82 00 14 */	beq .L_0001E7BC
.L_0001E7AC:
/* 0001E7AC 0001E870  3B DE 00 01 */	addi r30, r30, 0x1
/* 0001E7B0 0001E874  3B FF 00 04 */	addi r31, r31, 0x4
/* 0001E7B4 0001E878  2C 1E 00 40 */	cmpwi r30, 0x40
/* 0001E7B8 0001E87C  41 80 FF BC */	blt .L_0001E774
.L_0001E7BC:
/* 0001E7BC 0001E880  83 DB 02 18 */	lwz r30, 0x218(r27)
/* 0001E7C0 0001E884  7F 63 DB 78 */	mr r3, r27
/* 0001E7C4 0001E888  4B FE 1A 95 */	bl BtlUnit_CanActStatus
/* 0001E7C8 0001E88C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001E7CC 0001E890  41 82 00 18 */	beq .L_0001E7E4
/* 0001E7D0 0001E894  2C 1E 00 00 */	cmpwi r30, 0x0
/* 0001E7D4 0001E898  40 82 00 0C */	bne .L_0001E7E0
/* 0001E7D8 0001E89C  3B C0 00 01 */	li r30, 0x1
/* 0001E7DC 0001E8A0  48 00 00 08 */	b .L_0001E7E4
.L_0001E7E0:
/* 0001E7E0 0001E8A4  3B C0 00 00 */	li r30, 0x0
.L_0001E7E4:
/* 0001E7E4 0001E8A8  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0001E7E8 0001E8AC  7F 43 D3 78 */	mr r3, r26
/* 0001E7EC 0001E8B0  7F C5 F3 78 */	mr r5, r30
/* 0001E7F0 0001E8B4  4B FE 1A 69 */	bl evtSetValue
/* 0001E7F4 0001E8B8  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 0001E7F8 0001E8BC  38 60 00 02 */	li r3, 0x2
/* 0001E7FC 0001E8C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001E800 0001E8C4  7C 08 03 A6 */	mtlr r0
/* 0001E804 0001E8C8  38 21 00 20 */	addi r1, r1, 0x20
/* 0001E808 0001E8CC  4E 80 00 20 */	blr
.endfn piders_get_first_pos_attr

# .text:0x550 | 0x1E80C | size: 0xD0
.fn piders_renzoku_attack_set_target, local
/* 0001E80C 0001E8D0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 0001E810 0001E8D4  7C 08 02 A6 */	mflr r0
/* 0001E814 0001E8D8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001E818 0001E8DC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 0001E81C 0001E8E0  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 0001E820 0001E8E4  3B E0 00 00 */	li r31, 0x0
/* 0001E824 0001E8E8  7C 79 1B 78 */	mr r25, r3
/* 0001E828 0001E8EC  3B 80 00 00 */	li r28, 0x0
/* 0001E82C 0001E8F0  83 63 00 18 */	lwz r27, 0x18(r3)
/* 0001E830 0001E8F4  38 61 00 58 */	addi r3, r1, 0x58
/* 0001E834 0001E8F8  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 0001E838 0001E8FC  38 81 00 08 */	addi r4, r1, 0x8
/* 0001E83C 0001E900  9B E5 0E DF */	stb r31, 0xedf(r5)
/* 0001E840 0001E904  48 00 00 9D */	bl piders_get_target
/* 0001E844 0001E908  3B C1 00 58 */	addi r30, r1, 0x58
.L_0001E848:
/* 0001E848 0001E90C  7C 1E F8 2E */	lwzx r0, r30, r31
/* 0001E84C 0001E910  2C 00 FF FF */	cmpwi r0, -0x1
/* 0001E850 0001E914  40 82 00 0C */	bne .L_0001E85C
/* 0001E854 0001E918  7F 9A E3 78 */	mr r26, r28
/* 0001E858 0001E91C  48 00 00 24 */	b .L_0001E87C
.L_0001E85C:
/* 0001E85C 0001E920  7F C3 F3 78 */	mr r3, r30
/* 0001E860 0001E924  3B FF 00 04 */	addi r31, r31, 0x4
/* 0001E864 0001E928  38 81 00 08 */	addi r4, r1, 0x8
/* 0001E868 0001E92C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 0001E86C 0001E930  7C 63 FA 14 */	add r3, r3, r31
/* 0001E870 0001E934  7C 84 FA 14 */	add r4, r4, r31
/* 0001E874 0001E938  48 00 00 AD */	bl piders_get_next_target
/* 0001E878 0001E93C  4B FF FF D0 */	b .L_0001E848
.L_0001E87C:
/* 0001E87C 0001E940  3B C1 00 58 */	addi r30, r1, 0x58
/* 0001E880 0001E944  3B E1 00 08 */	addi r31, r1, 0x8
/* 0001E884 0001E948  3B 80 00 00 */	li r28, 0x0
.L_0001E888:
/* 0001E888 0001E94C  7F 43 D3 78 */	mr r3, r26
/* 0001E88C 0001E950  4B FE 19 CD */	bl irand
/* 0001E890 0001E954  54 7D 10 3A */	slwi r29, r3, 2
/* 0001E894 0001E958  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 0001E898 0001E95C  7C BE E8 2E */	lwzx r5, r30, r29
/* 0001E89C 0001E960  7F 23 CB 78 */	mr r3, r25
/* 0001E8A0 0001E964  4B FE 19 B9 */	bl evtSetValue
/* 0001E8A4 0001E968  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 0001E8A8 0001E96C  7F 23 CB 78 */	mr r3, r25
/* 0001E8AC 0001E970  7C BF E8 2E */	lwzx r5, r31, r29
/* 0001E8B0 0001E974  3B 7B 00 08 */	addi r27, r27, 0x8
/* 0001E8B4 0001E978  4B FE 19 A5 */	bl evtSetValue
/* 0001E8B8 0001E97C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 0001E8BC 0001E980  2C 1C 00 03 */	cmpwi r28, 0x3
/* 0001E8C0 0001E984  41 80 FF C8 */	blt .L_0001E888
/* 0001E8C4 0001E988  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 0001E8C8 0001E98C  38 60 00 02 */	li r3, 0x2
/* 0001E8CC 0001E990  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 0001E8D0 0001E994  7C 08 03 A6 */	mtlr r0
/* 0001E8D4 0001E998  38 21 00 D0 */	addi r1, r1, 0xd0
/* 0001E8D8 0001E99C  4E 80 00 20 */	blr
.endfn piders_renzoku_attack_set_target

# .text:0x620 | 0x1E8DC | size: 0x44
.fn piders_get_target, local
/* 0001E8DC 0001E9A0  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 0001E8E0 0001E9A4  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 0001E8E4 0001E9A8  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 0001E8E8 0001E9AC  38 C5 04 28 */	addi r6, r5, 0x428
/* 0001E8EC 0001E9B0  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 0001E8F0 0001E9B4  7C 00 07 74 */	extsb r0, r0
/* 0001E8F4 0001E9B8  7C A6 02 14 */	add r5, r6, r0
/* 0001E8F8 0001E9BC  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 0001E8FC 0001E9C0  7C 00 07 74 */	extsb r0, r0
/* 0001E900 0001E9C4  1C A0 00 24 */	mulli r5, r0, 0x24
/* 0001E904 0001E9C8  38 A5 00 04 */	addi r5, r5, 0x4
/* 0001E908 0001E9CC  7C A6 2A 14 */	add r5, r6, r5
/* 0001E90C 0001E9D0  A8 05 00 00 */	lha r0, 0x0(r5)
/* 0001E910 0001E9D4  90 03 00 00 */	stw r0, 0x0(r3)
/* 0001E914 0001E9D8  A8 05 00 02 */	lha r0, 0x2(r5)
/* 0001E918 0001E9DC  90 04 00 00 */	stw r0, 0x0(r4)
/* 0001E91C 0001E9E0  4E 80 00 20 */	blr
.endfn piders_get_target

# .text:0x664 | 0x1E920 | size: 0x74
.fn piders_get_next_target, local
/* 0001E920 0001E9E4  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 0001E924 0001E9E8  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 0001E928 0001E9EC  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 0001E92C 0001E9F0  38 C5 04 28 */	addi r6, r5, 0x428
/* 0001E930 0001E9F4  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 0001E934 0001E9F8  38 05 00 01 */	addi r0, r5, 0x1
/* 0001E938 0001E9FC  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 0001E93C 0001EA00  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 0001E940 0001EA04  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 0001E944 0001EA08  7C A5 07 74 */	extsb r5, r5
/* 0001E948 0001EA0C  7C 00 07 74 */	extsb r0, r0
/* 0001E94C 0001EA10  7C 05 00 00 */	cmpw r5, r0
/* 0001E950 0001EA14  40 80 00 30 */	bge .L_0001E980
/* 0001E954 0001EA18  7C A6 2A 14 */	add r5, r6, r5
/* 0001E958 0001EA1C  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 0001E95C 0001EA20  7C 00 07 74 */	extsb r0, r0
/* 0001E960 0001EA24  1C A0 00 24 */	mulli r5, r0, 0x24
/* 0001E964 0001EA28  38 A5 00 04 */	addi r5, r5, 0x4
/* 0001E968 0001EA2C  7C A6 2A 14 */	add r5, r6, r5
/* 0001E96C 0001EA30  A8 05 00 00 */	lha r0, 0x0(r5)
/* 0001E970 0001EA34  90 03 00 00 */	stw r0, 0x0(r3)
/* 0001E974 0001EA38  A8 05 00 02 */	lha r0, 0x2(r5)
/* 0001E978 0001EA3C  90 04 00 00 */	stw r0, 0x0(r4)
/* 0001E97C 0001EA40  4E 80 00 20 */	blr
.L_0001E980:
/* 0001E980 0001EA44  38 A0 FF FF */	li r5, -0x1
/* 0001E984 0001EA48  38 00 00 00 */	li r0, 0x0
/* 0001E988 0001EA4C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 0001E98C 0001EA50  90 04 00 00 */	stw r0, 0x0(r4)
/* 0001E990 0001EA54  4E 80 00 20 */	blr
.endfn piders_get_next_target

# 0x00006858..0x00006A08 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x6858 | size: 0xE
.obj str_btl_un_piders_mri_00026ef8, local
	.string "btl_un_piders"
.endobj str_btl_un_piders_mri_00026ef8

# .rodata:0xE | 0x6866 | size: 0x2
.obj gap_03_00006866_rodata, global
.hidden gap_03_00006866_rodata
	.2byte 0x0000
.endobj gap_03_00006866_rodata

# .rodata:0x10 | 0x6868 | size: 0x17
.obj str_SFX_ENM_PAIDA_DAMAGE_mri_00026f08, local
	.string "SFX_ENM_PAIDA_DAMAGED1"
.endobj str_SFX_ENM_PAIDA_DAMAGE_mri_00026f08

# .rodata:0x27 | 0x687F | size: 0x1
.obj gap_03_0000687F_rodata, global
.hidden gap_03_0000687F_rodata
	.byte 0x00
.endobj gap_03_0000687F_rodata

# .rodata:0x28 | 0x6880 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_00026f20, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_00026f20

# .rodata:0x3D | 0x6895 | size: 0x3
.obj gap_03_00006895_rodata, global
.hidden gap_03_00006895_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006895_rodata

# .rodata:0x40 | 0x6898 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_00026f38, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_00026f38

# .rodata:0x54 | 0x68AC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_00026f4c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_00026f4c

# .rodata:0x6D | 0x68C5 | size: 0x3
.obj gap_03_000068C5_rodata, global
.hidden gap_03_000068C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068C5_rodata

# .rodata:0x70 | 0x68C8 | size: 0x8
.obj str_PAI_N_1_mri_00026f68, local
	.string "PAI_N_1"
.endobj str_PAI_N_1_mri_00026f68

# .rodata:0x78 | 0x68D0 | size: 0x8
.obj str_PAI_Y_1_mri_00026f70, local
	.string "PAI_Y_1"
.endobj str_PAI_Y_1_mri_00026f70

# .rodata:0x80 | 0x68D8 | size: 0x8
.obj str_PAI_K_1_mri_00026f78, local
	.string "PAI_K_1"
.endobj str_PAI_K_1_mri_00026f78

# .rodata:0x88 | 0x68E0 | size: 0x8
.obj str_PAI_X_1_mri_00026f80, local
	.string "PAI_X_1"
.endobj str_PAI_X_1_mri_00026f80

# .rodata:0x90 | 0x68E8 | size: 0x8
.obj str_PAI_S_1_mri_00026f88, local
	.string "PAI_S_1"
.endobj str_PAI_S_1_mri_00026f88

# .rodata:0x98 | 0x68F0 | size: 0x8
.obj str_PAI_D_1_mri_00026f90, local
	.string "PAI_D_1"
.endobj str_PAI_D_1_mri_00026f90

# .rodata:0xA0 | 0x68F8 | size: 0x8
.obj str_PAI_A_1_mri_00026f98, local
	.string "PAI_A_1"
.endobj str_PAI_A_1_mri_00026f98

# .rodata:0xA8 | 0x6900 | size: 0x8
.obj str_PAI_W_1_mri_00026fa0, local
	.string "PAI_W_1"
.endobj str_PAI_W_1_mri_00026fa0

# .rodata:0xB0 | 0x6908 | size: 0x7
.obj str_c_paid_mri_00026fa8, local
	.string "c_paid"
.endobj str_c_paid_mri_00026fa8

# .rodata:0xB7 | 0x690F | size: 0x1
.obj gap_03_0000690F_rodata, global
.hidden gap_03_0000690F_rodata
	.byte 0x00
.endobj gap_03_0000690F_rodata

# .rodata:0xB8 | 0x6910 | size: 0x4
.obj dat_mri_00026fb0, local
	.4byte 0xFFFFFF00
.endobj dat_mri_00026fb0

# .rodata:0xBC | 0x6914 | size: 0x4
.obj float_5_mri_00026fb4, local
	.float 5
.endobj float_5_mri_00026fb4

# .rodata:0xC0 | 0x6918 | size: 0x4
.obj float_1_mri_00026fb8, local
	.float 1
.endobj float_1_mri_00026fb8

# .rodata:0xC4 | 0x691C | size: 0x4
.obj float_400_mri_00026fbc, local
	.float 400
.endobj float_400_mri_00026fbc

# .rodata:0xC8 | 0x6920 | size: 0x4
.obj zero_mri_00026fc0, local
	.float 0
.endobj zero_mri_00026fc0
	.4byte 0x00000000

# .rodata:0xD0 | 0x6928 | size: 0x8
.obj double_to_int_mri_00026fc8, local
	.double 4503601774854144
.endobj double_to_int_mri_00026fc8

# .rodata:0xD8 | 0x6930 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_mri_00026fd0, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_mri_00026fd0

# .rodata:0xED | 0x6945 | size: 0x3
.obj gap_03_00006945_rodata, global
.hidden gap_03_00006945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006945_rodata

# .rodata:0xF0 | 0x6948 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_mri_00026fe8, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_mri_00026fe8

# .rodata:0x105 | 0x695D | size: 0x3
.obj gap_03_0000695D_rodata, global
.hidden gap_03_0000695D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000695D_rodata

# .rodata:0x108 | 0x6960 | size: 0x1
.obj zero_mri_00027000, local
	.byte 0x00
.endobj zero_mri_00027000

# .rodata:0x109 | 0x6961 | size: 0x3
.obj gap_03_00006961_rodata, global
.hidden gap_03_00006961_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006961_rodata

# .rodata:0x10C | 0x6964 | size: 0xB
.obj str_expbom_n64_mri_00027004, local
	.string "expbom_n64"
.endobj str_expbom_n64_mri_00027004

# .rodata:0x117 | 0x696F | size: 0x1
.obj gap_03_0000696F_rodata, global
.hidden gap_03_0000696F_rodata
	.byte 0x00
.endobj gap_03_0000696F_rodata

# .rodata:0x118 | 0x6970 | size: 0xB
.obj str_star_point_mri_00027010, local
	.string "star_point"
.endobj str_star_point_mri_00027010

# .rodata:0x123 | 0x697B | size: 0x1
.obj gap_03_0000697B_rodata, global
.hidden gap_03_0000697B_rodata
	.byte 0x00
.endobj gap_03_0000697B_rodata

# .rodata:0x124 | 0x697C | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_mri_0002701c, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_mri_0002701c

# .rodata:0x13A | 0x6992 | size: 0x2
.obj gap_03_00006992_rodata, global
.hidden gap_03_00006992_rodata
	.2byte 0x0000
.endobj gap_03_00006992_rodata

# .rodata:0x13C | 0x6994 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE1_mri_00027034, local
	.string "SFX_ENM_PAIDA_MOVE1"
.endobj str_SFX_ENM_PAIDA_MOVE1_mri_00027034

# .rodata:0x150 | 0x69A8 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE2_mri_00027048, local
	.string "SFX_ENM_PAIDA_MOVE2"
.endobj str_SFX_ENM_PAIDA_MOVE2_mri_00027048

# .rodata:0x164 | 0x69BC | size: 0x9
.obj str_PAI_A_2a_mri_0002705c, local
	.string "PAI_A_2a"
.endobj str_PAI_A_2a_mri_0002705c

# .rodata:0x16D | 0x69C5 | size: 0x3
.obj gap_03_000069C5_rodata, global
.hidden gap_03_000069C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069C5_rodata

# .rodata:0x170 | 0x69C8 | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_mri_00027068, local
	.string "SFX_ENM_PAIDA_ATTACK1"
.endobj str_SFX_ENM_PAIDA_ATTACK_mri_00027068

# .rodata:0x186 | 0x69DE | size: 0x2
.obj gap_03_000069DE_rodata, global
.hidden gap_03_000069DE_rodata
	.2byte 0x0000
.endobj gap_03_000069DE_rodata

# .rodata:0x188 | 0x69E0 | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_mri_00027080, local
	.string "SFX_ENM_PAIDA_ATTACK2"
.endobj str_SFX_ENM_PAIDA_ATTACK_mri_00027080

# .rodata:0x19E | 0x69F6 | size: 0x2
.obj gap_03_000069F6_rodata, global
.hidden gap_03_000069F6_rodata
	.2byte 0x0000
.endobj gap_03_000069F6_rodata

# .rodata:0x1A0 | 0x69F8 | size: 0x9
.obj str_PAI_A_3a_mri_00027098, local
	.string "PAI_A_3a"
.endobj str_PAI_A_3a_mri_00027098

# .rodata:0x1A9 | 0x6A01 | size: 0x7
.obj gap_03_00006A01_rodata, global
.hidden gap_03_00006A01_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A01_rodata

# 0x0002EAB8..0x00030BF8 | size: 0x2140
.data
.balign 8

# .data:0x0 | 0x2EAB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2EAC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2EAC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2EAC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2EACC | size: 0x4
.obj gap_04_0002EACC_data, global
.hidden gap_04_0002EACC_data
	.4byte 0x00000000
.endobj gap_04_0002EACC_data

# .data:0x18 | 0x2EAD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2EAD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2EADC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2EAE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2EAE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2EAEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2EAF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2EAF4 | size: 0x4
.obj gap_04_0002EAF4_data, global
.hidden gap_04_0002EAF4_data
	.4byte 0x00000000
.endobj gap_04_0002EAF4_data

# .data:0x40 | 0x2EAF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2EB00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2EB04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2EB08 | size: 0xC4
.obj unit_piders_18_data_2EB08, global
	.4byte 0x0000001B
	.4byte str_btl_un_piders_mri_00026ef8
	.4byte 0x00050000
	.4byte 0x01010C00
	.4byte 0x02460046
	.4byte 0x270F002E
	.4byte 0x00380000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x42380000
	.4byte 0x42600000
	.4byte 0x00000002
	.4byte 0x64000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAIDA_DAMAGE_mri_00026f08
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_00026f20
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_00026f38
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_00026f4c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x05000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_piders_18_data_2EB08

# .data:0x114 | 0x2EBCC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x2EBD1 | size: 0x3
.obj gap_04_0002EBD1_data, global
.hidden gap_04_0002EBD1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002EBD1_data

# .data:0x11C | 0x2EBD4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x2EBD9 | size: 0x3
.obj gap_04_0002EBD9_data, global
.hidden gap_04_0002EBD9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002EBD9_data

# .data:0x124 | 0x2EBDC | size: 0x16
.obj regist, local
	.ascii "ZZ2dZddZdZdZd_ZdFdZdd_"
.endobj regist

# .data:0x13A | 0x2EBF2 | size: 0x2
.obj gap_04_0002EBF2_data, global
.hidden gap_04_0002EBF2_data
	.2byte 0x0000
.endobj gap_04_0002EBF2_data

# .data:0x13C | 0x2EBF4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PAI_N_1_mri_00026f68
	.4byte 0x00000002
	.4byte str_PAI_Y_1_mri_00026f70
	.4byte 0x00000009
	.4byte str_PAI_Y_1_mri_00026f70
	.4byte 0x00000005
	.4byte str_PAI_K_1_mri_00026f78
	.4byte 0x00000004
	.4byte str_PAI_X_1_mri_00026f80
	.4byte 0x00000003
	.4byte str_PAI_X_1_mri_00026f80
	.4byte 0x0000001C
	.4byte str_PAI_S_1_mri_00026f88
	.4byte 0x0000001D
	.4byte str_PAI_D_1_mri_00026f90
	.4byte 0x0000001E
	.4byte str_PAI_D_1_mri_00026f90
	.4byte 0x0000001F
	.4byte str_PAI_S_1_mri_00026f88
	.4byte 0x00000027
	.4byte str_PAI_D_1_mri_00026f90
	.4byte 0x00000032
	.4byte str_PAI_A_1_mri_00026f98
	.4byte 0x00000028
	.4byte str_PAI_W_1_mri_00026fa0
	.4byte 0x0000002A
	.4byte str_PAI_W_1_mri_00026fa0
	.4byte 0x00000038
	.4byte str_PAI_X_1_mri_00026f80
	.4byte 0x00000039
	.4byte str_PAI_X_1_mri_00026f80
	.4byte 0x00000041
	.4byte str_PAI_S_1_mri_00026f88
	.4byte 0x00000045
	.4byte str_PAI_S_1_mri_00026f88
.endobj pose_table

# .data:0x1CC | 0x2EC84 | size: 0x28
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x0000003A
	.4byte blow_dead_event
	.4byte 0x0000003F
	.4byte battle_end_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1F4 | 0x2ECAC | size: 0x17C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_piders_mri_00026ef8
	.4byte str_c_paid_mri_00026fa8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_piders_mri_00026ef8
	.4byte str_c_paid_mri_00026fa8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_piders_mri_00026ef8
	.4byte str_c_paid_mri_00026fa8
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_piders_mri_00026ef8
	.4byte str_c_paid_mri_00026fa8
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_piders_mri_00026ef8
	.4byte str_c_paid_mri_00026fa8
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
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x370 | 0x2EE28 | size: 0xC0
.obj weapon_piders_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_piders_attack

# .data:0x430 | 0x2EEE8 | size: 0xC0
.obj weapon_piders_renzoku_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_piders_renzoku_attack

# .data:0x4F0 | 0x2EFA8 | size: 0xD4
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte piders_yarn_init
	.4byte 0x0001005C
	.4byte yarn_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x5C4 | 0x2F07C | size: 0x4C
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

# .data:0x610 | 0x2F0C8 | size: 0xB0
.obj yarn_event, local
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte piders_draw_yarn
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yarn_event

# .data:0x6C0 | 0x2F178 | size: 0xC0
.obj entry_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000190
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x780 | 0x2F238 | size: 0x28
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

# .data:0x7A8 | 0x2F260 | size: 0x2F4
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_mri_00026fd0
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_mri_00026fe8
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
	.4byte evt_eff64
	.4byte zero_mri_00027000
	.4byte str_expbom_n64_mri_00027004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte zero_mri_00027000
	.4byte str_star_point_mri_00027010
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
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xA9C | 0x2F554 | size: 0x1A0
.obj blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_mri_0002701c
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
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blow_dead_event

# .data:0xC3C | 0x2F6F4 | size: 0x1C
.obj battle_end_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_end_event

# .data:0xC58 | 0x2F710 | size: 0x130
.obj yure_event, local
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000016
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yure_event

# .data:0xD88 | 0x2F840 | size: 0x14C
.obj move_kuutei_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE1_mri_00027034
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE2_mri_00027048
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte yure_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_kuutei_event

# .data:0xED4 | 0x2F98C | size: 0xD8
.obj move_kuuchu_event, local
	.4byte 0x0001005C
	.4byte yure_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE2_mri_00027048
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_kuuchu_event

# .data:0xFAC | 0x2FA64 | size: 0x1E0
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
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
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte piders_get_zyun
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte piders_get_first_pos_attr
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte piders_get_num
	.4byte 0xFE363C8F
	.4byte 0x00020039
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020039
	.4byte 0xFE363C8E
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x118C | 0x2FC44 | size: 0x120
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000000
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_piders_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_piders_renzoku_attack
	.4byte 0x0001005E
	.4byte renzoku_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x12AC | 0x2FD64 | size: 0x274
.obj damage_check_event_sub, local
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
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
	.4byte 0x00000063
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_event_sub

# .data:0x1520 | 0x2FFD8 | size: 0x28C
.obj piders_attack_common_event1, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_A_1_mri_00026f98
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_mri_0002705c
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_mri_00027068
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_mri_00027068
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x0000006E
	.4byte 0x00000046
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_mri_00027068
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000046
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event1

# .data:0x17AC | 0x30264 | size: 0x1B4
.obj piders_attack_common_event1_2, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_A_1_mri_00026f98
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_mri_0002705c
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_mri_00027068
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event1_2

# .data:0x1960 | 0x30418 | size: 0xBC
.obj piders_attack_common_event2, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x0000000F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_S_1_mri_00026f88
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event2

# .data:0x1A1C | 0x304D4 | size: 0x118
.obj piders_attack_common_event3, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_mri_00027080
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte str_PAI_A_3a_mri_00027098
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xF24A8280
	.4byte 0xF24A8280
	.4byte 0xF24A8280
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event3

# .data:0x1B34 | 0x305EC | size: 0x15C
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte piders_attack_common_event1
	.4byte 0x0001005C
	.4byte piders_attack_common_event2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1C90 | 0x30748 | size: 0x254
.obj renzoku_attack_event, local
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte piders_renzoku_attack_set_target
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000008
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte piders_attack_common_event1
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte piders_attack_common_event2
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event

# .data:0x1EE4 | 0x3099C | size: 0xDC
.obj renzoku_attack_event_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub_no_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub

# .data:0x1FC0 | 0x30A78 | size: 0x28
.obj renzoku_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_no_last

# .data:0x1FE8 | 0x30AA0 | size: 0x13C
.obj renzoku_attack_event_sub_last, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
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
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_last

# .data:0x2124 | 0x30BDC | size: 0x1C
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_event
