.include "macros.inc"
.file "unit_kamec_white.o"

# 0x000074EC..0x00007CE0 | size: 0x7F4
.text
.balign 4

# .text:0x0 | 0x74EC | size: 0x70
.fn eff_magic_get_posX, local
/* 000074EC 000075B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000074F0 000075B4  7C 08 02 A6 */	mflr r0
/* 000074F4 000075B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 000074F8 000075BC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000074FC 000075C0  7C 7E 1B 78 */	mr r30, r3
/* 00007500 000075C4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00007504 000075C8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00007508 000075CC  4B FF DB 0D */	bl evtGetValue
/* 0000750C 000075D0  7C 64 1B 78 */	mr r4, r3
/* 00007510 000075D4  7F C3 F3 78 */	mr r3, r30
/* 00007514 000075D8  4B FF DB 01 */	bl BattleTransID
/* 00007518 000075DC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000751C 000075E0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00007520 000075E4  7C 64 1B 78 */	mr r4, r3
/* 00007524 000075E8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00007528 000075EC  4B FF DA ED */	bl BattleGetUnitPtr
/* 0000752C 000075F0  80 A3 02 2C */	lwz r5, 0x22c(r3)
/* 00007530 000075F4  7F C3 F3 78 */	mr r3, r30
/* 00007534 000075F8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00007538 000075FC  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 0000753C 00007600  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 00007540 00007604  4B FF DA D5 */	bl evtSetFloat
/* 00007544 00007608  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00007548 0000760C  38 60 00 02 */	li r3, 0x2
/* 0000754C 00007610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007550 00007614  7C 08 03 A6 */	mtlr r0
/* 00007554 00007618  38 21 00 10 */	addi r1, r1, 0x10
/* 00007558 0000761C  4E 80 00 20 */	blr
.endfn eff_magic_get_posX

# .text:0x70 | 0x755C | size: 0x17C
.fn eff_magic, local
/* 0000755C 00007620  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00007560 00007624  7C 08 02 A6 */	mflr r0
/* 00007564 00007628  90 01 00 64 */	stw r0, 0x64(r1)
/* 00007568 0000762C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000756C 00007630  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00007570 00007634  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00007574 00007638  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00007578 0000763C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000757C 00007640  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00007580 00007644  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00007584 00007648  7C 7D 1B 78 */	mr r29, r3
/* 00007588 0000764C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000758C 00007650  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00007590 00007654  4B FF DA 85 */	bl evtGetValue
/* 00007594 00007658  7C 64 1B 78 */	mr r4, r3
/* 00007598 0000765C  7F A3 EB 78 */	mr r3, r29
/* 0000759C 00007660  4B FF DA 79 */	bl BattleTransID
/* 000075A0 00007664  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000075A4 00007668  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000075A8 0000766C  7C 64 1B 78 */	mr r4, r3
/* 000075AC 00007670  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000075B0 00007674  4B FF DA 65 */	bl BattleGetUnitPtr
/* 000075B4 00007678  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000075B8 0000767C  7C 7E 1B 78 */	mr r30, r3
/* 000075BC 00007680  7F A3 EB 78 */	mr r3, r29
/* 000075C0 00007684  4B FF DA 55 */	bl evtGetFloat
/* 000075C4 00007688  FF E0 08 90 */	fmr f31, f1
/* 000075C8 0000768C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000075CC 00007690  7F A3 EB 78 */	mr r3, r29
/* 000075D0 00007694  4B FF DA 45 */	bl evtGetFloat
/* 000075D4 00007698  FF C0 08 90 */	fmr f30, f1
/* 000075D8 0000769C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000075DC 000076A0  7F A3 EB 78 */	mr r3, r29
/* 000075E0 000076A4  4B FF DA 35 */	bl evtGetFloat
/* 000075E4 000076A8  FF A0 08 90 */	fmr f29, f1
/* 000075E8 000076AC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000075EC 000076B0  7F A3 EB 78 */	mr r3, r29
/* 000075F0 000076B4  4B FF DA 25 */	bl evtGetValue
/* 000075F4 000076B8  7C 60 1B 78 */	mr r0, r3
/* 000075F8 000076BC  7F C3 F3 78 */	mr r3, r30
/* 000075FC 000076C0  7C 1F 03 78 */	mr r31, r0
/* 00007600 000076C4  38 81 00 10 */	addi r4, r1, 0x10
/* 00007604 000076C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 00007608 000076CC  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000760C 000076D0  4B FF DA 09 */	bl BtlUnit_GetPos
/* 00007610 000076D4  88 7E 01 89 */	lbz r3, 0x189(r30)
/* 00007614 000076D8  3C 00 43 30 */	lis r0, 0x4330
/* 00007618 000076DC  3C C0 00 00 */	lis r6, float_25_tou2_000103fc@ha
/* 0000761C 000076E0  3C A0 00 00 */	lis r5, double_to_int_tou2_00010408@ha
/* 00007620 000076E4  7C 63 07 74 */	extsb r3, r3
/* 00007624 000076E8  3C 80 00 00 */	lis r4, float_20_tou2_00010400@ha
/* 00007628 000076EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000762C 000076F0  C1 04 00 00 */	lfs f8, float_20_tou2_00010400@l(r4)
/* 00007630 000076F4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00007634 000076F8  3C 60 00 00 */	lis r3, float_5_tou2_00010404@ha
/* 00007638 000076FC  C0 66 00 00 */	lfs f3, float_25_tou2_000103fc@l(r6)
/* 0000763C 00007700  FC 80 F8 90 */	fmr f4, f31
/* 00007640 00007704  90 01 00 18 */	stw r0, 0x18(r1)
/* 00007644 00007708  FC A0 F0 90 */	fmr f5, f30
/* 00007648 0000770C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 0000764C 00007710  FC C0 E8 90 */	fmr f6, f29
/* 00007650 00007714  C8 45 00 00 */	lfd f2, double_to_int_tou2_00010408@l(r5)
/* 00007654 00007718  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00007658 0000771C  EC 63 00 32 */	fmuls f3, f3, f0
/* 0000765C 00007720  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00007660 00007724  7F E4 FB 78 */	mr r4, r31
/* 00007664 00007728  EC 21 10 28 */	fsubs f1, f1, f2
/* 00007668 0000772C  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 0000766C 00007730  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 00007670 00007734  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 00007674 00007738  C0 03 00 00 */	lfs f0, float_5_tou2_00010404@l(r3)
/* 00007678 0000773C  38 60 00 00 */	li r3, 0x0
/* 0000767C 00007740  EC 62 00 2A */	fadds f3, f2, f0
/* 00007680 00007744  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00007684 00007748  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00007688 0000774C  EC 48 38 3A */	fmadds f2, f8, f0, f7
/* 0000768C 00007750  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 00007690 00007754  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00007694 00007758  4B FF D9 81 */	bl effMagic1N64Entry
/* 00007698 0000775C  90 7E 02 2C */	stw r3, 0x22c(r30)
/* 0000769C 00007760  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000076A0 00007764  38 60 00 02 */	li r3, 0x2
/* 000076A4 00007768  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000076A8 0000776C  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 000076AC 00007770  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000076B0 00007774  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000076B4 00007778  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000076B8 0000777C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000076BC 00007780  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000076C0 00007784  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000076C4 00007788  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 000076C8 0000778C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000076CC 00007790  7C 08 03 A6 */	mtlr r0
/* 000076D0 00007794  38 21 00 60 */	addi r1, r1, 0x60
/* 000076D4 00007798  4E 80 00 20 */	blr
.endfn eff_magic

# .text:0x1EC | 0x76D8 | size: 0x150
.fn eff_staff2, local
/* 000076D8 0000779C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000076DC 000077A0  7C 08 02 A6 */	mflr r0
/* 000076E0 000077A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 000076E4 000077A8  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 000076E8 000077AC  7C 9E 23 78 */	mr r30, r4
/* 000076EC 000077B0  7C 7F 1B 78 */	mr r31, r3
/* 000076F0 000077B4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000076F4 000077B8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000076F8 000077BC  4B FF D9 1D */	bl evtGetValue
/* 000076FC 000077C0  7C 64 1B 78 */	mr r4, r3
/* 00007700 000077C4  7F E3 FB 78 */	mr r3, r31
/* 00007704 000077C8  4B FF D9 11 */	bl BattleTransID
/* 00007708 000077CC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000770C 000077D0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00007710 000077D4  7C 64 1B 78 */	mr r4, r3
/* 00007714 000077D8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00007718 000077DC  4B FF D8 FD */	bl BattleGetUnitPtr
/* 0000771C 000077E0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00007720 000077E4  7C 7F 1B 78 */	mr r31, r3
/* 00007724 000077E8  41 82 00 34 */	beq .L_00007758
/* 00007728 000077EC  3C 60 00 00 */	lis r3, zero_tou2_00010410@ha
/* 0000772C 000077F0  3C 80 00 00 */	lis r4, float_neg1000_tou2_00010414@ha
/* 00007730 000077F4  38 A3 00 00 */	addi r5, r3, zero_tou2_00010410@l
/* 00007734 000077F8  C0 44 00 00 */	lfs f2, float_neg1000_tou2_00010414@l(r4)
/* 00007738 000077FC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000773C 00007800  3C 60 00 00 */	lis r3, float_1_tou2_00010418@ha
/* 00007740 00007804  C0 83 00 00 */	lfs f4, float_1_tou2_00010418@l(r3)
/* 00007744 00007808  38 60 00 00 */	li r3, 0x0
/* 00007748 0000780C  FC 60 08 90 */	fmr f3, f1
/* 0000774C 00007810  38 80 00 3C */	li r4, 0x3c
/* 00007750 00007814  4B FF D8 C5 */	bl effPokopiPchargeN64Entry
/* 00007754 00007818  90 7F 02 28 */	stw r3, 0x228(r31)
.L_00007758:
/* 00007758 0000781C  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 0000775C 00007820  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00007760 00007824  54 00 07 FF */	clrlwi. r0, r0, 31
/* 00007764 00007828  40 82 00 0C */	bne .L_00007770
/* 00007768 0000782C  38 60 00 02 */	li r3, 0x2
/* 0000776C 00007830  48 00 00 A8 */	b .L_00007814
.L_00007770:
/* 00007770 00007834  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 00007774 00007838  7F E3 FB 78 */	mr r3, r31
/* 00007778 0000783C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 0000777C 00007840  38 81 00 10 */	addi r4, r1, 0x10
/* 00007780 00007844  38 A1 00 0C */	addi r5, r1, 0xc
/* 00007784 00007848  38 C1 00 08 */	addi r6, r1, 0x8
/* 00007788 0000784C  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 0000778C 00007850  4B FF D8 89 */	bl BtlUnit_GetPos
/* 00007790 00007854  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 00007794 00007858  3C 00 43 30 */	lis r0, 0x4330
/* 00007798 0000785C  3C C0 00 00 */	lis r6, float_22p5_tou2_0001041c@ha
/* 0000779C 00007860  3C A0 00 00 */	lis r5, double_to_int_tou2_00010408@ha
/* 000077A0 00007864  7C 64 07 74 */	extsb r4, r3
/* 000077A4 00007868  3C 60 00 00 */	lis r3, float_40_tou2_00010420@ha
/* 000077A8 0000786C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000077AC 00007870  38 E6 00 00 */	addi r7, r6, float_22p5_tou2_0001041c@l
/* 000077B0 00007874  90 81 00 1C */	stw r4, 0x1c(r1)
/* 000077B4 00007878  38 C5 00 00 */	addi r6, r5, double_to_int_tou2_00010408@l
/* 000077B8 0000787C  38 A3 00 00 */	addi r5, r3, float_40_tou2_00010420@l
/* 000077BC 00007880  3C 60 00 00 */	lis r3, float_5_tou2_00010404@ha
/* 000077C0 00007884  90 01 00 18 */	stw r0, 0x18(r1)
/* 000077C4 00007888  38 83 00 00 */	addi r4, r3, float_5_tou2_00010404@l
/* 000077C8 0000788C  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 000077CC 00007890  38 60 00 00 */	li r3, 0x0
/* 000077D0 00007894  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000077D4 00007898  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 000077D8 0000789C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 000077DC 000078A0  EC 83 00 32 */	fmuls f4, f3, f0
/* 000077E0 000078A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000077E4 000078A8  EC 41 10 28 */	fsubs f2, f1, f2
/* 000077E8 000078AC  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 000077EC 000078B0  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 000077F0 000078B4  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 000077F4 000078B8  D0 1E 00 04 */	stfs f0, 0x4(r30)
/* 000077F8 000078BC  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 000077FC 000078C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00007800 000078C4  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 00007804 000078C8  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00007808 000078CC  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000780C 000078D0  EC 01 00 2A */	fadds f0, f1, f0
/* 00007810 000078D4  D0 1E 00 0C */	stfs f0, 0xc(r30)
.L_00007814:
/* 00007814 000078D8  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00007818 000078DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000781C 000078E0  7C 08 03 A6 */	mtlr r0
/* 00007820 000078E4  38 21 00 30 */	addi r1, r1, 0x30
/* 00007824 000078E8  4E 80 00 20 */	blr
.endfn eff_staff2

# .text:0x33C | 0x7828 | size: 0x150
.fn eff_staff1, local
/* 00007828 000078EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000782C 000078F0  7C 08 02 A6 */	mflr r0
/* 00007830 000078F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007834 000078F8  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00007838 000078FC  7C 9E 23 78 */	mr r30, r4
/* 0000783C 00007900  7C 7F 1B 78 */	mr r31, r3
/* 00007840 00007904  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00007844 00007908  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00007848 0000790C  4B FF D7 CD */	bl evtGetValue
/* 0000784C 00007910  7C 64 1B 78 */	mr r4, r3
/* 00007850 00007914  7F E3 FB 78 */	mr r3, r31
/* 00007854 00007918  4B FF D7 C1 */	bl BattleTransID
/* 00007858 0000791C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000785C 00007920  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00007860 00007924  7C 64 1B 78 */	mr r4, r3
/* 00007864 00007928  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00007868 0000792C  4B FF D7 AD */	bl BattleGetUnitPtr
/* 0000786C 00007930  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00007870 00007934  7C 7F 1B 78 */	mr r31, r3
/* 00007874 00007938  41 82 00 34 */	beq .L_000078A8
/* 00007878 0000793C  3C 60 00 00 */	lis r3, zero_tou2_00010410@ha
/* 0000787C 00007940  3C 80 00 00 */	lis r4, float_neg1000_tou2_00010414@ha
/* 00007880 00007944  38 A3 00 00 */	addi r5, r3, zero_tou2_00010410@l
/* 00007884 00007948  C0 44 00 00 */	lfs f2, float_neg1000_tou2_00010414@l(r4)
/* 00007888 0000794C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000788C 00007950  3C 60 00 00 */	lis r3, float_1_tou2_00010418@ha
/* 00007890 00007954  C0 83 00 00 */	lfs f4, float_1_tou2_00010418@l(r3)
/* 00007894 00007958  38 60 00 00 */	li r3, 0x0
/* 00007898 0000795C  FC 60 08 90 */	fmr f3, f1
/* 0000789C 00007960  38 80 00 3C */	li r4, 0x3c
/* 000078A0 00007964  4B FF D7 75 */	bl effThunderflareN64Entry
/* 000078A4 00007968  90 7F 02 28 */	stw r3, 0x228(r31)
.L_000078A8:
/* 000078A8 0000796C  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 000078AC 00007970  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000078B0 00007974  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000078B4 00007978  40 82 00 0C */	bne .L_000078C0
/* 000078B8 0000797C  38 60 00 02 */	li r3, 0x2
/* 000078BC 00007980  48 00 00 A8 */	b .L_00007964
.L_000078C0:
/* 000078C0 00007984  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 000078C4 00007988  7F E3 FB 78 */	mr r3, r31
/* 000078C8 0000798C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000078CC 00007990  38 81 00 10 */	addi r4, r1, 0x10
/* 000078D0 00007994  38 A1 00 0C */	addi r5, r1, 0xc
/* 000078D4 00007998  38 C1 00 08 */	addi r6, r1, 0x8
/* 000078D8 0000799C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 000078DC 000079A0  4B FF D7 39 */	bl BtlUnit_GetPos
/* 000078E0 000079A4  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 000078E4 000079A8  3C 00 43 30 */	lis r0, 0x4330
/* 000078E8 000079AC  3C C0 00 00 */	lis r6, float_22p5_tou2_0001041c@ha
/* 000078EC 000079B0  3C A0 00 00 */	lis r5, double_to_int_tou2_00010408@ha
/* 000078F0 000079B4  7C 64 07 74 */	extsb r4, r3
/* 000078F4 000079B8  3C 60 00 00 */	lis r3, float_40_tou2_00010420@ha
/* 000078F8 000079BC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000078FC 000079C0  38 E6 00 00 */	addi r7, r6, float_22p5_tou2_0001041c@l
/* 00007900 000079C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00007904 000079C8  38 C5 00 00 */	addi r6, r5, double_to_int_tou2_00010408@l
/* 00007908 000079CC  38 A3 00 00 */	addi r5, r3, float_40_tou2_00010420@l
/* 0000790C 000079D0  3C 60 00 00 */	lis r3, float_5_tou2_00010404@ha
/* 00007910 000079D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 00007914 000079D8  38 83 00 00 */	addi r4, r3, float_5_tou2_00010404@l
/* 00007918 000079DC  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 0000791C 000079E0  38 60 00 00 */	li r3, 0x0
/* 00007920 000079E4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00007924 000079E8  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 00007928 000079EC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 0000792C 000079F0  EC 83 00 32 */	fmuls f4, f3, f0
/* 00007930 000079F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00007934 000079F8  EC 41 10 28 */	fsubs f2, f1, f2
/* 00007938 000079FC  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 0000793C 00007A00  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00007940 00007A04  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 00007944 00007A08  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00007948 00007A0C  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 0000794C 00007A10  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00007950 00007A14  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 00007954 00007A18  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 00007958 00007A1C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000795C 00007A20  EC 01 00 2A */	fadds f0, f1, f0
/* 00007960 00007A24  D0 1E 00 10 */	stfs f0, 0x10(r30)
.L_00007964:
/* 00007964 00007A28  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00007968 00007A2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000796C 00007A30  7C 08 03 A6 */	mtlr r0
/* 00007970 00007A34  38 21 00 30 */	addi r1, r1, 0x30
/* 00007974 00007A38  4E 80 00 20 */	blr
.endfn eff_staff1

# .text:0x48C | 0x7978 | size: 0xF0
.fn kamec_copy_status, local
/* 00007978 00007A3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000797C 00007A40  7C 08 02 A6 */	mflr r0
/* 00007980 00007A44  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007984 00007A48  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00007988 00007A4C  7C 7D 1B 78 */	mr r29, r3
/* 0000798C 00007A50  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00007990 00007A54  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00007994 00007A58  4B FF D6 81 */	bl evtGetValue
/* 00007998 00007A5C  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000799C 00007A60  7C 7E 1B 78 */	mr r30, r3
/* 000079A0 00007A64  7F A3 EB 78 */	mr r3, r29
/* 000079A4 00007A68  4B FF D6 71 */	bl evtGetValue
/* 000079A8 00007A6C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000079AC 00007A70  7C 7F 1B 78 */	mr r31, r3
/* 000079B0 00007A74  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000079B4 00007A78  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000079B8 00007A7C  7F C4 F3 78 */	mr r4, r30
/* 000079BC 00007A80  7C 1D 03 78 */	mr r29, r0
/* 000079C0 00007A84  7C 03 03 78 */	mr r3, r0
/* 000079C4 00007A88  4B FF D6 51 */	bl BattleGetUnitPtr
/* 000079C8 00007A8C  7C 7E 1B 78 */	mr r30, r3
/* 000079CC 00007A90  7F A3 EB 78 */	mr r3, r29
/* 000079D0 00007A94  7F E4 FB 78 */	mr r4, r31
/* 000079D4 00007A98  4B FF D6 41 */	bl BattleGetUnitPtr
/* 000079D8 00007A9C  A8 1E 01 0C */	lha r0, 0x10c(r30)
/* 000079DC 00007AA0  7C 7F 1B 78 */	mr r31, r3
/* 000079E0 00007AA4  38 7F 01 18 */	addi r3, r31, 0x118
/* 000079E4 00007AA8  38 9E 01 18 */	addi r4, r30, 0x118
/* 000079E8 00007AAC  B0 1F 01 0C */	sth r0, 0x10c(r31)
/* 000079EC 00007AB0  38 A0 00 1E */	li r5, 0x1e
/* 000079F0 00007AB4  4B FF D6 25 */	bl memcpy
/* 000079F4 00007AB8  A8 BF 01 0C */	lha r5, 0x10c(r31)
/* 000079F8 00007ABC  3C 00 43 30 */	lis r0, 0x4330
/* 000079FC 00007AC0  3C 60 00 00 */	lis r3, double_to_int_tou2_00010408@ha
/* 00007A00 00007AC4  90 01 00 08 */	stw r0, 0x8(r1)
/* 00007A04 00007AC8  38 83 00 00 */	addi r4, r3, double_to_int_tou2_00010408@l
/* 00007A08 00007ACC  38 60 00 02 */	li r3, 0x2
/* 00007A0C 00007AD0  90 BF 02 08 */	stw r5, 0x208(r31)
/* 00007A10 00007AD4  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00007A14 00007AD8  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00007A18 00007ADC  90 01 00 10 */	stw r0, 0x10(r1)
/* 00007A1C 00007AE0  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 00007A20 00007AE4  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00007A24 00007AE8  A8 1F 01 08 */	lha r0, 0x108(r31)
/* 00007A28 00007AEC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00007A2C 00007AF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00007A30 00007AF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 00007A34 00007AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007A38 00007AFC  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00007A3C 00007B00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00007A40 00007B04  EC 21 10 28 */	fsubs f1, f1, f2
/* 00007A44 00007B08  EC 00 10 28 */	fsubs f0, f0, f2
/* 00007A48 00007B0C  EC 01 00 24 */	fdivs f0, f1, f0
/* 00007A4C 00007B10  D0 1F 02 14 */	stfs f0, 0x214(r31)
/* 00007A50 00007B14  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 00007A54 00007B18  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00007A58 00007B1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007A5C 00007B20  7C 08 03 A6 */	mtlr r0
/* 00007A60 00007B24  38 21 00 30 */	addi r1, r1, 0x30
/* 00007A64 00007B28  4E 80 00 20 */	blr
.endfn kamec_copy_status

# .text:0x57C | 0x7A68 | size: 0xFC
.fn kamec_shuffle, local
/* 00007A68 00007B2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007A6C 00007B30  7C 08 02 A6 */	mflr r0
/* 00007A70 00007B34  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00007A74 00007B38  38 80 00 00 */	li r4, 0x0
/* 00007A78 00007B3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007A7C 00007B40  38 00 00 40 */	li r0, 0x40
/* 00007A80 00007B44  38 A1 00 08 */	addi r5, r1, 0x8
/* 00007A84 00007B48  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 00007A88 00007B4C  3B 80 00 00 */	li r28, 0x0
/* 00007A8C 00007B50  80 E3 00 00 */	lwz r7, _battleWorkPointer@l(r3)
/* 00007A90 00007B54  38 60 00 00 */	li r3, 0x0
/* 00007A94 00007B58  7C 09 03 A6 */	mtctr r0
.L_00007A98:
/* 00007A98 00007B5C  38 04 00 20 */	addi r0, r4, 0x20
/* 00007A9C 00007B60  7C 07 00 2E */	lwzx r0, r7, r0
/* 00007AA0 00007B64  7C 05 19 2E */	stwx r0, r5, r3
/* 00007AA4 00007B68  7C C5 18 2E */	lwzx r6, r5, r3
/* 00007AA8 00007B6C  28 06 00 00 */	cmplwi r6, 0x0
/* 00007AAC 00007B70  41 82 00 20 */	beq .L_00007ACC
/* 00007AB0 00007B74  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00007AB4 00007B78  2C 00 00 33 */	cmpwi r0, 0x33
/* 00007AB8 00007B7C  41 82 00 0C */	beq .L_00007AC4
/* 00007ABC 00007B80  2C 00 00 34 */	cmpwi r0, 0x34
/* 00007AC0 00007B84  40 82 00 0C */	bne .L_00007ACC
.L_00007AC4:
/* 00007AC4 00007B88  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00007AC8 00007B8C  38 63 00 04 */	addi r3, r3, 0x4
.L_00007ACC:
/* 00007ACC 00007B90  38 84 00 04 */	addi r4, r4, 0x4
/* 00007AD0 00007B94  42 00 FF C8 */	bdnz .L_00007A98
/* 00007AD4 00007B98  3B A0 00 00 */	li r29, 0x0
/* 00007AD8 00007B9C  3B E1 00 08 */	addi r31, r1, 0x8
.L_00007ADC:
/* 00007ADC 00007BA0  7F 83 E3 78 */	mr r3, r28
/* 00007AE0 00007BA4  4B FF D5 35 */	bl irand
/* 00007AE4 00007BA8  7C 7E 1B 78 */	mr r30, r3
/* 00007AE8 00007BAC  7F 83 E3 78 */	mr r3, r28
/* 00007AEC 00007BB0  4B FF D5 29 */	bl irand
/* 00007AF0 00007BB4  57 C4 10 3A */	slwi r4, r30, 2
/* 00007AF4 00007BB8  54 60 10 3A */	slwi r0, r3, 2
/* 00007AF8 00007BBC  7C 7F 20 2E */	lwzx r3, r31, r4
/* 00007AFC 00007BC0  3B BD 00 01 */	addi r29, r29, 0x1
/* 00007B00 00007BC4  7C 9F 00 2E */	lwzx r4, r31, r0
/* 00007B04 00007BC8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 00007B08 00007BCC  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 00007B0C 00007BD0  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 00007B10 00007BD4  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 00007B14 00007BD8  D0 24 00 3C */	stfs f1, 0x3c(r4)
/* 00007B18 00007BDC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 00007B1C 00007BE0  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 00007B20 00007BE4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 00007B24 00007BE8  D0 24 00 30 */	stfs f1, 0x30(r4)
/* 00007B28 00007BEC  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 00007B2C 00007BF0  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 00007B30 00007BF4  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 00007B34 00007BF8  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 00007B38 00007BFC  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 00007B3C 00007C00  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 00007B40 00007C04  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 00007B44 00007C08  D0 24 00 38 */	stfs f1, 0x38(r4)
/* 00007B48 00007C0C  41 80 FF 94 */	blt .L_00007ADC
/* 00007B4C 00007C10  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 00007B50 00007C14  38 60 00 02 */	li r3, 0x2
/* 00007B54 00007C18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007B58 00007C1C  7C 08 03 A6 */	mtlr r0
/* 00007B5C 00007C20  38 21 00 30 */	addi r1, r1, 0x30
/* 00007B60 00007C24  4E 80 00 20 */	blr
.endfn kamec_shuffle

# .text:0x678 | 0x7B64 | size: 0xE8
.fn kamec_get_bunsin, local
/* 00007B64 00007C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007B68 00007C2C  7C 08 02 A6 */	mflr r0
/* 00007B6C 00007C30  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007B70 00007C34  38 C0 00 00 */	li r6, 0x0
/* 00007B74 00007C38  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007B78 00007C3C  38 00 00 40 */	li r0, 0x40
/* 00007B7C 00007C40  38 A1 00 08 */	addi r5, r1, 0x8
/* 00007B80 00007C44  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 00007B84 00007C48  7C 7A 1B 78 */	mr r26, r3
/* 00007B88 00007C4C  3B 60 00 00 */	li r27, 0x0
/* 00007B8C 00007C50  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00007B90 00007C54  38 60 00 00 */	li r3, 0x0
/* 00007B94 00007C58  80 E4 00 00 */	lwz r7, _battleWorkPointer@l(r4)
/* 00007B98 00007C5C  38 80 00 00 */	li r4, 0x0
/* 00007B9C 00007C60  7C 09 03 A6 */	mtctr r0
.L_00007BA0:
/* 00007BA0 00007C64  38 04 00 20 */	addi r0, r4, 0x20
/* 00007BA4 00007C68  7D 07 00 2E */	lwzx r8, r7, r0
/* 00007BA8 00007C6C  28 08 00 00 */	cmplwi r8, 0x0
/* 00007BAC 00007C70  41 82 00 1C */	beq .L_00007BC8
/* 00007BB0 00007C74  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00007BB4 00007C78  2C 00 00 34 */	cmpwi r0, 0x34
/* 00007BB8 00007C7C  40 82 00 10 */	bne .L_00007BC8
/* 00007BBC 00007C80  7C C5 19 2E */	stwx r6, r5, r3
/* 00007BC0 00007C84  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00007BC4 00007C88  38 63 00 04 */	addi r3, r3, 0x4
.L_00007BC8:
/* 00007BC8 00007C8C  38 C6 00 01 */	addi r6, r6, 0x1
/* 00007BCC 00007C90  38 84 00 04 */	addi r4, r4, 0x4
/* 00007BD0 00007C94  42 00 FF D0 */	bdnz .L_00007BA0
/* 00007BD4 00007C98  3B C1 00 08 */	addi r30, r1, 0x8
/* 00007BD8 00007C9C  3B A0 00 00 */	li r29, 0x0
/* 00007BDC 00007CA0  3B E0 00 00 */	li r31, 0x0
.L_00007BE0:
/* 00007BE0 00007CA4  7C 1D D8 00 */	cmpw r29, r27
/* 00007BE4 00007CA8  40 80 00 1C */	bge .L_00007C00
/* 00007BE8 00007CAC  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00007BEC 00007CB0  7F 43 D3 78 */	mr r3, r26
/* 00007BF0 00007CB4  7C BE F8 2E */	lwzx r5, r30, r31
/* 00007BF4 00007CB8  3B 9C 00 04 */	addi r28, r28, 0x4
/* 00007BF8 00007CBC  4B FF D4 1D */	bl evtSetValue
/* 00007BFC 00007CC0  48 00 00 18 */	b .L_00007C14
.L_00007C00:
/* 00007C00 00007CC4  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00007C04 00007CC8  7F 43 D3 78 */	mr r3, r26
/* 00007C08 00007CCC  38 A0 FF FF */	li r5, -0x1
/* 00007C0C 00007CD0  3B 9C 00 04 */	addi r28, r28, 0x4
/* 00007C10 00007CD4  4B FF D4 05 */	bl evtSetValue
.L_00007C14:
/* 00007C14 00007CD8  3B BD 00 01 */	addi r29, r29, 0x1
/* 00007C18 00007CDC  3B FF 00 04 */	addi r31, r31, 0x4
/* 00007C1C 00007CE0  2C 1D 00 04 */	cmpwi r29, 0x4
/* 00007C20 00007CE4  41 80 FF C0 */	blt .L_00007BE0
/* 00007C24 00007CE8  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00007C28 00007CEC  7F 43 D3 78 */	mr r3, r26
/* 00007C2C 00007CF0  7F 65 DB 78 */	mr r5, r27
/* 00007C30 00007CF4  4B FF D3 E5 */	bl evtSetValue
/* 00007C34 00007CF8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 00007C38 00007CFC  38 60 00 02 */	li r3, 0x2
/* 00007C3C 00007D00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007C40 00007D04  7C 08 03 A6 */	mtlr r0
/* 00007C44 00007D08  38 21 00 30 */	addi r1, r1, 0x30
/* 00007C48 00007D0C  4E 80 00 20 */	blr
.endfn kamec_get_bunsin

# .text:0x760 | 0x7C4C | size: 0x94
.fn kamec_get_live_num, local
/* 00007C4C 00007D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00007C50 00007D14  7C 08 02 A6 */	mflr r0
/* 00007C54 00007D18  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007C58 00007D1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00007C5C 00007D20  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00007C60 00007D24  7C 7A 1B 78 */	mr r26, r3
/* 00007C64 00007D28  3B 80 00 00 */	li r28, 0x0
/* 00007C68 00007D2C  3B C0 00 00 */	li r30, 0x0
/* 00007C6C 00007D30  3B E0 00 00 */	li r31, 0x0
/* 00007C70 00007D34  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00007C74 00007D38  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_00007C78:
/* 00007C78 00007D3C  38 1F 00 20 */	addi r0, r31, 0x20
/* 00007C7C 00007D40  7C 7B 00 2E */	lwzx r3, r27, r0
/* 00007C80 00007D44  28 03 00 00 */	cmplwi r3, 0x0
/* 00007C84 00007D48  41 82 00 24 */	beq .L_00007CA8
/* 00007C88 00007D4C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 00007C8C 00007D50  2C 00 00 01 */	cmpwi r0, 0x1
/* 00007C90 00007D54  40 82 00 18 */	bne .L_00007CA8
/* 00007C94 00007D58  38 80 00 1B */	li r4, 0x1b
/* 00007C98 00007D5C  4B FF D3 7D */	bl BtlUnit_CheckStatus
/* 00007C9C 00007D60  2C 03 00 00 */	cmpwi r3, 0x0
/* 00007CA0 00007D64  40 82 00 08 */	bne .L_00007CA8
/* 00007CA4 00007D68  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00007CA8:
/* 00007CA8 00007D6C  3B DE 00 01 */	addi r30, r30, 0x1
/* 00007CAC 00007D70  3B FF 00 04 */	addi r31, r31, 0x4
/* 00007CB0 00007D74  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00007CB4 00007D78  41 80 FF C4 */	blt .L_00007C78
/* 00007CB8 00007D7C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00007CBC 00007D80  7F 43 D3 78 */	mr r3, r26
/* 00007CC0 00007D84  7F 85 E3 78 */	mr r5, r28
/* 00007CC4 00007D88  4B FF D3 51 */	bl evtSetValue
/* 00007CC8 00007D8C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00007CCC 00007D90  38 60 00 02 */	li r3, 0x2
/* 00007CD0 00007D94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00007CD4 00007D98  7C 08 03 A6 */	mtlr r0
/* 00007CD8 00007D9C  38 21 00 20 */	addi r1, r1, 0x20
/* 00007CDC 00007DA0  4E 80 00 20 */	blr
.endfn kamec_get_live_num

# 0x000069A0..0x00006CE8 | size: 0x348
.rodata
.balign 8

# .rodata:0x0 | 0x69A0 | size: 0x13
.obj str_btl_un_kamec_white_tou2_000100e0, local
	.string "btl_un_kamec_white"
.endobj str_btl_un_kamec_white_tou2_000100e0

# .rodata:0x13 | 0x69B3 | size: 0x1
.obj gap_03_000069B3_rodata, global
.hidden gap_03_000069B3_rodata
	.byte 0x00
.endobj gap_03_000069B3_rodata

# .rodata:0x14 | 0x69B4 | size: 0x18
.obj str_SFX_ENM_KAMEKU_DAMAG_tou2_000100f4, local
	.string "SFX_ENM_KAMEKU_DAMAGED1"
.endobj str_SFX_ENM_KAMEKU_DAMAG_tou2_000100f4

# .rodata:0x2C | 0x69CC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0001010c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0001010c

# .rodata:0x41 | 0x69E1 | size: 0x3
.obj gap_03_000069E1_rodata, global
.hidden gap_03_000069E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069E1_rodata

# .rodata:0x44 | 0x69E4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_00010124, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_00010124

# .rodata:0x58 | 0x69F8 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010138, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010138

# .rodata:0x71 | 0x6A11 | size: 0x3
.obj gap_03_00006A11_rodata, global
.hidden gap_03_00006A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A11_rodata

# .rodata:0x74 | 0x6A14 | size: 0x1A
.obj str_btl_un_kamec_white_b_tou2_00010154, local
	.string "btl_un_kamec_white_bunsin"
.endobj str_btl_un_kamec_white_b_tou2_00010154

# .rodata:0x8E | 0x6A2E | size: 0x2
.obj gap_03_00006A2E_rodata, global
.hidden gap_03_00006A2E_rodata
	.2byte 0x0000
.endobj gap_03_00006A2E_rodata

# .rodata:0x90 | 0x6A30 | size: 0x8
.obj str_KMW_N_1_tou2_00010170, local
	.string "KMW_N_1"
.endobj str_KMW_N_1_tou2_00010170

# .rodata:0x98 | 0x6A38 | size: 0x8
.obj str_KMW_Y_1_tou2_00010178, local
	.string "KMW_Y_1"
.endobj str_KMW_Y_1_tou2_00010178

# .rodata:0xA0 | 0x6A40 | size: 0x8
.obj str_KMW_K_1_tou2_00010180, local
	.string "KMW_K_1"
.endobj str_KMW_K_1_tou2_00010180

# .rodata:0xA8 | 0x6A48 | size: 0x8
.obj str_KMW_X_1_tou2_00010188, local
	.string "KMW_X_1"
.endobj str_KMW_X_1_tou2_00010188

# .rodata:0xB0 | 0x6A50 | size: 0x8
.obj str_KMW_S_1_tou2_00010190, local
	.string "KMW_S_1"
.endobj str_KMW_S_1_tou2_00010190

# .rodata:0xB8 | 0x6A58 | size: 0x8
.obj str_KMW_Q_1_tou2_00010198, local
	.string "KMW_Q_1"
.endobj str_KMW_Q_1_tou2_00010198

# .rodata:0xC0 | 0x6A60 | size: 0x8
.obj str_KMW_D_1_tou2_000101a0, local
	.string "KMW_D_1"
.endobj str_KMW_D_1_tou2_000101a0

# .rodata:0xC8 | 0x6A68 | size: 0x8
.obj str_KMW_R_1_tou2_000101a8, local
	.string "KMW_R_1"
.endobj str_KMW_R_1_tou2_000101a8

# .rodata:0xD0 | 0x6A70 | size: 0x8
.obj str_KMW_W_1_tou2_000101b0, local
	.string "KMW_W_1"
.endobj str_KMW_W_1_tou2_000101b0

# .rodata:0xD8 | 0x6A78 | size: 0x8
.obj str_KMW_T_1_tou2_000101b8, local
	.string "KMW_T_1"
.endobj str_KMW_T_1_tou2_000101b8

# .rodata:0xE0 | 0x6A80 | size: 0x8
.obj str_KMW_N_2_tou2_000101c0, local
	.string "KMW_N_2"
.endobj str_KMW_N_2_tou2_000101c0

# .rodata:0xE8 | 0x6A88 | size: 0x8
.obj str_KMW_Y_2_tou2_000101c8, local
	.string "KMW_Y_2"
.endobj str_KMW_Y_2_tou2_000101c8

# .rodata:0xF0 | 0x6A90 | size: 0x8
.obj str_KMW_K_2_tou2_000101d0, local
	.string "KMW_K_2"
.endobj str_KMW_K_2_tou2_000101d0

# .rodata:0xF8 | 0x6A98 | size: 0x8
.obj str_KMW_X_2_tou2_000101d8, local
	.string "KMW_X_2"
.endobj str_KMW_X_2_tou2_000101d8

# .rodata:0x100 | 0x6AA0 | size: 0x8
.obj str_KMW_S_2_tou2_000101e0, local
	.string "KMW_S_2"
.endobj str_KMW_S_2_tou2_000101e0

# .rodata:0x108 | 0x6AA8 | size: 0x8
.obj str_KMW_Q_2_tou2_000101e8, local
	.string "KMW_Q_2"
.endobj str_KMW_Q_2_tou2_000101e8

# .rodata:0x110 | 0x6AB0 | size: 0x8
.obj str_KMW_D_2_tou2_000101f0, local
	.string "KMW_D_2"
.endobj str_KMW_D_2_tou2_000101f0

# .rodata:0x118 | 0x6AB8 | size: 0x8
.obj str_KMW_R_2_tou2_000101f8, local
	.string "KMW_R_2"
.endobj str_KMW_R_2_tou2_000101f8

# .rodata:0x120 | 0x6AC0 | size: 0x8
.obj str_KMW_W_2_tou2_00010200, local
	.string "KMW_W_2"
.endobj str_KMW_W_2_tou2_00010200

# .rodata:0x128 | 0x6AC8 | size: 0x8
.obj str_KMW_T_2_tou2_00010208, local
	.string "KMW_T_2"
.endobj str_KMW_T_2_tou2_00010208

# .rodata:0x130 | 0x6AD0 | size: 0xA
.obj str_c_kamek_w_tou2_00010210, local
	.string "c_kamek_w"
.endobj str_c_kamek_w_tou2_00010210

# .rodata:0x13A | 0x6ADA | size: 0x2
.obj gap_03_00006ADA_rodata, global
.hidden gap_03_00006ADA_rodata
	.2byte 0x0000
.endobj gap_03_00006ADA_rodata

# .rodata:0x13C | 0x6ADC | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tou2_0001021c, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tou2_0001021c

# .rodata:0x151 | 0x6AF1 | size: 0x3
.obj gap_03_00006AF1_rodata, global
.hidden gap_03_00006AF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AF1_rodata

# .rodata:0x154 | 0x6AF4 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tou2_00010234, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tou2_00010234

# .rodata:0x169 | 0x6B09 | size: 0x3
.obj gap_03_00006B09_rodata, global
.hidden gap_03_00006B09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B09_rodata

# .rodata:0x16C | 0x6B0C | size: 0xC
.obj str_kemuri_test_tou2_0001024c, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0001024c

# .rodata:0x178 | 0x6B18 | size: 0x1
.obj zero_tou2_00010258, local
	.byte 0x00
.endobj zero_tou2_00010258

# .rodata:0x179 | 0x6B19 | size: 0x3
.obj gap_03_00006B19_rodata, global
.hidden gap_03_00006B19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B19_rodata

# .rodata:0x17C | 0x6B1C | size: 0xB
.obj str_star_point_tou2_0001025c, local
	.string "star_point"
.endobj str_star_point_tou2_0001025c

# .rodata:0x187 | 0x6B27 | size: 0x1
.obj gap_03_00006B27_rodata, global
.hidden gap_03_00006B27_rodata
	.byte 0x00
.endobj gap_03_00006B27_rodata

# .rodata:0x188 | 0x6B28 | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_tou2_00010268, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_tou2_00010268

# .rodata:0x19E | 0x6B3E | size: 0x2
.obj gap_03_00006B3E_rodata, global
.hidden gap_03_00006B3E_rodata
	.2byte 0x0000
.endobj gap_03_00006B3E_rodata

# .rodata:0x1A0 | 0x6B40 | size: 0x8
.obj str_KMW_H_1_tou2_00010280, local
	.string "KMW_H_1"
.endobj str_KMW_H_1_tou2_00010280

# .rodata:0x1A8 | 0x6B48 | size: 0xE
.obj str_SFX_ENM_FALL1_tou2_00010288, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_tou2_00010288

# .rodata:0x1B6 | 0x6B56 | size: 0x2
.obj gap_03_00006B56_rodata, global
.hidden gap_03_00006B56_rodata
	.2byte 0x0000
.endobj gap_03_00006B56_rodata

# .rodata:0x1B8 | 0x6B58 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_00010298, local
	.string "SFX_ENM_KAMEKU_MAGIC1"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_00010298

# .rodata:0x1CE | 0x6B6E | size: 0x2
.obj gap_03_00006B6E_rodata, global
.hidden gap_03_00006B6E_rodata
	.2byte 0x0000
.endobj gap_03_00006B6E_rodata

# .rodata:0x1D0 | 0x6B70 | size: 0x9
.obj str_KMW_A_1A_tou2_000102b0, local
	.string "KMW_A_1A"
.endobj str_KMW_A_1A_tou2_000102b0

# .rodata:0x1D9 | 0x6B79 | size: 0x3
.obj gap_03_00006B79_rodata, global
.hidden gap_03_00006B79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B79_rodata

# .rodata:0x1DC | 0x6B7C | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_000102bc, local
	.string "SFX_ENM_KAMEKU_MAGIC4"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_000102bc

# .rodata:0x1F2 | 0x6B92 | size: 0x2
.obj gap_03_00006B92_rodata, global
.hidden gap_03_00006B92_rodata
	.2byte 0x0000
.endobj gap_03_00006B92_rodata

# .rodata:0x1F4 | 0x6B94 | size: 0x9
.obj str_KMW_A_1B_tou2_000102d4, local
	.string "KMW_A_1B"
.endobj str_KMW_A_1B_tou2_000102d4

# .rodata:0x1FD | 0x6B9D | size: 0x3
.obj gap_03_00006B9D_rodata, global
.hidden gap_03_00006B9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B9D_rodata

# .rodata:0x200 | 0x6BA0 | size: 0x9
.obj str_KMW_A_1C_tou2_000102e0, local
	.string "KMW_A_1C"
.endobj str_KMW_A_1C_tou2_000102e0

# .rodata:0x209 | 0x6BA9 | size: 0x3
.obj gap_03_00006BA9_rodata, global
.hidden gap_03_00006BA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BA9_rodata

# .rodata:0x20C | 0x6BAC | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_000102ec, local
	.string "SFX_ENM_KAMEKU_MAGIC8"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_000102ec

# .rodata:0x222 | 0x6BC2 | size: 0x2
.obj gap_03_00006BC2_rodata, global
.hidden gap_03_00006BC2_rodata
	.2byte 0x0000
.endobj gap_03_00006BC2_rodata

# .rodata:0x224 | 0x6BC4 | size: 0x9
.obj str_KMW_A_1D_tou2_00010304, local
	.string "KMW_A_1D"
.endobj str_KMW_A_1D_tou2_00010304

# .rodata:0x22D | 0x6BCD | size: 0x3
.obj gap_03_00006BCD_rodata, global
.hidden gap_03_00006BCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BCD_rodata

# .rodata:0x230 | 0x6BD0 | size: 0x9
.obj str_KMW_A_1E_tou2_00010310, local
	.string "KMW_A_1E"
.endobj str_KMW_A_1E_tou2_00010310

# .rodata:0x239 | 0x6BD9 | size: 0x3
.obj gap_03_00006BD9_rodata, global
.hidden gap_03_00006BD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BD9_rodata

# .rodata:0x23C | 0x6BDC | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0001031c, local
	.string "SFX_ENM_KAMEKU_MAGIC6"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0001031c

# .rodata:0x252 | 0x6BF2 | size: 0x2
.obj gap_03_00006BF2_rodata, global
.hidden gap_03_00006BF2_rodata
	.2byte 0x0000
.endobj gap_03_00006BF2_rodata

# .rodata:0x254 | 0x6BF4 | size: 0x9
.obj str_KMW_A_2A_tou2_00010334, local
	.string "KMW_A_2A"
.endobj str_KMW_A_2A_tou2_00010334

# .rodata:0x25D | 0x6BFD | size: 0x3
.obj gap_03_00006BFD_rodata, global
.hidden gap_03_00006BFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BFD_rodata

# .rodata:0x260 | 0x6C00 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_00010340, local
	.string "SFX_ENM_KAMEKU_MAGIC7"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_00010340

# .rodata:0x276 | 0x6C16 | size: 0x2
.obj gap_03_00006C16_rodata, global
.hidden gap_03_00006C16_rodata
	.2byte 0x0000
.endobj gap_03_00006C16_rodata

# .rodata:0x278 | 0x6C18 | size: 0x9
.obj str_KMW_A_2B_tou2_00010358, local
	.string "KMW_A_2B"
.endobj str_KMW_A_2B_tou2_00010358

# .rodata:0x281 | 0x6C21 | size: 0x3
.obj gap_03_00006C21_rodata, global
.hidden gap_03_00006C21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C21_rodata

# .rodata:0x284 | 0x6C24 | size: 0x9
.obj str_KMW_A_2C_tou2_00010364, local
	.string "KMW_A_2C"
.endobj str_KMW_A_2C_tou2_00010364

# .rodata:0x28D | 0x6C2D | size: 0x3
.obj gap_03_00006C2D_rodata, global
.hidden gap_03_00006C2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C2D_rodata

# .rodata:0x290 | 0x6C30 | size: 0x9
.obj str_KMW_A_3A_tou2_00010370, local
	.string "KMW_A_3A"
.endobj str_KMW_A_3A_tou2_00010370

# .rodata:0x299 | 0x6C39 | size: 0x3
.obj gap_03_00006C39_rodata, global
.hidden gap_03_00006C39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C39_rodata

# .rodata:0x29C | 0x6C3C | size: 0x9
.obj str_KMW_A_3B_tou2_0001037c, local
	.string "KMW_A_3B"
.endobj str_KMW_A_3B_tou2_0001037c

# .rodata:0x2A5 | 0x6C45 | size: 0x3
.obj gap_03_00006C45_rodata, global
.hidden gap_03_00006C45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C45_rodata

# .rodata:0x2A8 | 0x6C48 | size: 0x9
.obj str_KMW_A_3C_tou2_00010388, local
	.string "KMW_A_3C"
.endobj str_KMW_A_3C_tou2_00010388

# .rodata:0x2B1 | 0x6C51 | size: 0x3
.obj gap_03_00006C51_rodata, global
.hidden gap_03_00006C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C51_rodata

# .rodata:0x2B4 | 0x6C54 | size: 0x9
.obj str_KMW_A_3D_tou2_00010394, local
	.string "KMW_A_3D"
.endobj str_KMW_A_3D_tou2_00010394

# .rodata:0x2BD | 0x6C5D | size: 0x3
.obj gap_03_00006C5D_rodata, global
.hidden gap_03_00006C5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C5D_rodata

# .rodata:0x2C0 | 0x6C60 | size: 0x18
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_000103a0, local
	.string "SFX_ENM_KAMEKU_MAGIC3_2"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_000103a0

# .rodata:0x2D8 | 0x6C78 | size: 0x9
.obj str_recovery_tou2_000103b8, local
	.string "recovery"
.endobj str_recovery_tou2_000103b8

# .rodata:0x2E1 | 0x6C81 | size: 0x3
.obj gap_03_00006C81_rodata, global
.hidden gap_03_00006C81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C81_rodata

# .rodata:0x2E4 | 0x6C84 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tou2_000103c4, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT1"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tou2_000103c4

# .rodata:0x2FD | 0x6C9D | size: 0x3
.obj gap_03_00006C9D_rodata, global
.hidden gap_03_00006C9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C9D_rodata

# .rodata:0x300 | 0x6CA0 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tou2_000103e0, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT2"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tou2_000103e0
	.byte 0x00, 0x00, 0x00

# .rodata:0x31C | 0x6CBC | size: 0x4
.obj float_25_tou2_000103fc, local
	.float 25
.endobj float_25_tou2_000103fc

# .rodata:0x320 | 0x6CC0 | size: 0x4
.obj float_20_tou2_00010400, local
	.float 20
.endobj float_20_tou2_00010400

# .rodata:0x324 | 0x6CC4 | size: 0x4
.obj float_5_tou2_00010404, local
	.float 5
.endobj float_5_tou2_00010404

# .rodata:0x328 | 0x6CC8 | size: 0x8
.obj double_to_int_tou2_00010408, local
	.double 4503601774854144
.endobj double_to_int_tou2_00010408

# .rodata:0x330 | 0x6CD0 | size: 0x4
.obj zero_tou2_00010410, local
	.float 0
.endobj zero_tou2_00010410

# .rodata:0x334 | 0x6CD4 | size: 0x4
.obj float_neg1000_tou2_00010414, local
	.float -1000
.endobj float_neg1000_tou2_00010414

# .rodata:0x338 | 0x6CD8 | size: 0x4
.obj float_1_tou2_00010418, local
	.float 1
.endobj float_1_tou2_00010418

# .rodata:0x33C | 0x6CDC | size: 0x4
.obj float_22p5_tou2_0001041c, local
	.float 22.5
.endobj float_22p5_tou2_0001041c

# .rodata:0x340 | 0x6CE0 | size: 0x4
.obj float_40_tou2_00010420, local
	.float 40
.endobj float_40_tou2_00010420

# .rodata:0x344 | 0x6CE4 | size: 0x4
.obj gap_03_00006CE4_rodata, global
.hidden gap_03_00006CE4_rodata
	.4byte 0x00000000
.endobj gap_03_00006CE4_rodata

# 0x000455B8..0x00048EE0 | size: 0x3928
.data
.balign 8

# .data:0x0 | 0x455B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x455C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x455C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x455C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x455CC | size: 0x4
.obj gap_04_000455CC_data, global
.hidden gap_04_000455CC_data
	.4byte 0x00000000
.endobj gap_04_000455CC_data

# .data:0x18 | 0x455D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x455D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x455DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x455E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x455E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x455EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x455F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x455F4 | size: 0x4
.obj gap_04_000455F4_data, global
.hidden gap_04_000455F4_data
	.4byte 0x00000000
.endobj gap_04_000455F4_data

# .data:0x40 | 0x455F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x45600 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x45604 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x45608 | size: 0xC4
.obj unit_kamec_white_26_data_45608, global
	.4byte 0x00000033
	.4byte str_btl_un_kamec_white_tou2_000100e0
	.4byte 0x00070000
	.4byte 0x01011100
	.4byte 0x02460232
	.4byte 0x270F002A
	.4byte 0x002A0000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
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
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tou2_000100f4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0001010c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_00010124
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_00010138
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kamec_white_26_data_45608

# .data:0x114 | 0x456CC | size: 0xC4
.obj unit_kamec_white_bunsin, local
	.4byte 0x00000034
	.4byte str_btl_un_kamec_white_b_tou2_00010154
	.4byte 0x00070000
	.4byte 0x01010000
	.4byte 0x00460032
	.4byte 0x270F002A
	.4byte 0x002A0000
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
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
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x00140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tou2_000100f4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0001010c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_00010124
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_00010138
	.4byte 0x00400000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table_bunsin
.endobj unit_kamec_white_bunsin

# .data:0x1D8 | 0x45790 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1DD | 0x45795 | size: 0x3
.obj gap_04_00045795_data, global
.hidden gap_04_00045795_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00045795_data

# .data:0x1E0 | 0x45798 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E5 | 0x4579D | size: 0x3
.obj gap_04_0004579D_data, global
.hidden gap_04_0004579D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004579D_data

# .data:0x1E8 | 0x457A0 | size: 0x16
.obj regist, local
	.ascii "FKPdFddFdZdZd_PFPdPdd_"
.endobj regist

# .data:0x1FE | 0x457B6 | size: 0x2
.obj gap_04_000457B6_data, global
.hidden gap_04_000457B6_data
	.2byte 0x0000
.endobj gap_04_000457B6_data

# .data:0x200 | 0x457B8 | size: 0x16
.obj regist_bunsin, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist_bunsin

# .data:0x216 | 0x457CE | size: 0x2
.obj gap_04_000457CE_data, global
.hidden gap_04_000457CE_data
	.2byte 0x0000
.endobj gap_04_000457CE_data

# .data:0x218 | 0x457D0 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KMW_N_1_tou2_00010170
	.4byte 0x00000002
	.4byte str_KMW_Y_1_tou2_00010178
	.4byte 0x00000009
	.4byte str_KMW_Y_1_tou2_00010178
	.4byte 0x00000005
	.4byte str_KMW_K_1_tou2_00010180
	.4byte 0x00000004
	.4byte str_KMW_X_1_tou2_00010188
	.4byte 0x00000003
	.4byte str_KMW_X_1_tou2_00010188
	.4byte 0x0000001C
	.4byte str_KMW_S_1_tou2_00010190
	.4byte 0x0000001D
	.4byte str_KMW_Q_1_tou2_00010198
	.4byte 0x0000001E
	.4byte str_KMW_Q_1_tou2_00010198
	.4byte 0x0000001F
	.4byte str_KMW_S_1_tou2_00010190
	.4byte 0x00000027
	.4byte str_KMW_D_1_tou2_000101a0
	.4byte 0x0000002A
	.4byte str_KMW_R_1_tou2_000101a8
	.4byte 0x00000028
	.4byte str_KMW_W_1_tou2_000101b0
	.4byte 0x00000038
	.4byte str_KMW_X_1_tou2_00010188
	.4byte 0x00000039
	.4byte str_KMW_X_1_tou2_00010188
	.4byte 0x00000041
	.4byte str_KMW_T_1_tou2_000101b8
	.4byte 0x00000045
	.4byte str_KMW_S_1_tou2_00010190
.endobj pose_table

# .data:0x2A0 | 0x45858 | size: 0x88
.obj pose_table_sky, local
	.4byte 0x00000001
	.4byte str_KMW_N_2_tou2_000101c0
	.4byte 0x00000002
	.4byte str_KMW_Y_2_tou2_000101c8
	.4byte 0x00000009
	.4byte str_KMW_Y_2_tou2_000101c8
	.4byte 0x00000005
	.4byte str_KMW_K_2_tou2_000101d0
	.4byte 0x00000004
	.4byte str_KMW_X_2_tou2_000101d8
	.4byte 0x00000003
	.4byte str_KMW_X_2_tou2_000101d8
	.4byte 0x0000001C
	.4byte str_KMW_S_2_tou2_000101e0
	.4byte 0x0000001D
	.4byte str_KMW_Q_2_tou2_000101e8
	.4byte 0x0000001E
	.4byte str_KMW_Q_2_tou2_000101e8
	.4byte 0x0000001F
	.4byte str_KMW_S_2_tou2_000101e0
	.4byte 0x00000027
	.4byte str_KMW_D_2_tou2_000101f0
	.4byte 0x0000002A
	.4byte str_KMW_R_2_tou2_000101f8
	.4byte 0x00000028
	.4byte str_KMW_W_2_tou2_00010200
	.4byte 0x00000038
	.4byte str_KMW_X_2_tou2_000101d8
	.4byte 0x00000039
	.4byte str_KMW_X_2_tou2_000101d8
	.4byte 0x00000041
	.4byte str_KMW_T_2_tou2_00010208
	.4byte 0x00000045
	.4byte str_KMW_S_2_tou2_000101e0
.endobj pose_table_sky

# .data:0x328 | 0x458E0 | size: 0x28
.obj data_table, local
	.4byte 0x00000031
	.4byte kamec_subset_dead_event
	.4byte 0x0000003A
	.4byte kamec_subset_blow_dead_event
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x350 | 0x45908 | size: 0x30
.obj data_table_sky, local
	.4byte 0x00000031
	.4byte kamec_subset_dead_event
	.4byte 0x0000003A
	.4byte kamec_subset_blow_dead_event
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sky

# .data:0x380 | 0x45938 | size: 0x18
.obj data_table_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_bunsin

# .data:0x398 | 0x45950 | size: 0x20
.obj data_table_sky_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_sky_bunsin

# .data:0x3B8 | 0x45970 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kamec_white_tou2_000100e0
	.4byte str_c_kamek_w_tou2_00010210
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_kamec_white_tou2_000100e0
	.4byte str_c_kamek_w_tou2_00010210
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x450 | 0x45A08 | size: 0xC0
.obj weapon_kamec_attack_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
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
.endobj weapon_kamec_attack_magic

# .data:0x510 | 0x45AC8 | size: 0xC0
.obj weapon_kamec_dekadeka_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03020000
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
.endobj weapon_kamec_dekadeka_magic

# .data:0x5D0 | 0x45B88 | size: 0xC0
.obj weapon_kamec_biribiri_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03000000
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
.endobj weapon_kamec_biribiri_magic

# .data:0x690 | 0x45C48 | size: 0xC0
.obj weapon_kamec_trans_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
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
	.4byte 0x64030000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_trans_magic

# .data:0x750 | 0x45D08 | size: 0xC0
.obj weapon_kamec_katikati_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640303
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_katikati_magic

# .data:0x810 | 0x45DC8 | size: 0xC0
.obj weapon_kamec_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00001500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_kamec_recover_magic

# .data:0x8D0 | 0x45E88 | size: 0xC0
.obj weapon_kamec_all_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_kamec_all_recover_magic

# .data:0x990 | 0x45F48 | size: 0x30
.obj entry_kamec, local
	.4byte unit_kamec_white_bunsin
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_kamec

# .data:0x9C0 | 0x45F78 | size: 0x58
.obj init_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
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
	.4byte 0x0001005E
	.4byte init_event2
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xA18 | 0x45FD0 | size: 0x15C
.obj init_event2, local
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
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_sky
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sky
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_sky_bunsin
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event2

# .data:0xB74 | 0x4612C | size: 0xE8
.obj alpha_down_event, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FE
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj alpha_down_event

# .data:0xC5C | 0x46214 | size: 0xE8
.obj alpha_up_event, local
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FE
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj alpha_up_event

# .data:0xD44 | 0x462FC | size: 0x108
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
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte bunsin_kill_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xE4C | 0x46404 | size: 0x110
.obj kamec_subset_bunsin_all_kill, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte bunsin_kill_event
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_bunsin_all_kill

# .data:0xF5C | 0x46514 | size: 0x32C
.obj kamec_subset_dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDataOfDataTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x08000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tou2_0001021c
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_00010234
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
	.4byte str_kemuri_test_tou2_0001024c
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
	.4byte 0x0005005B
	.4byte _add_star_point_disp_offset
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_00010258
	.4byte str_star_point_tou2_0001025c
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
	.4byte 0x0002005B
	.4byte btlevtcmd_GetBackItem
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x20000000
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
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
.endobj kamec_subset_dead_event

# .data:0x1288 | 0x46840 | size: 0x138
.obj kamec_subset_blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_tou2_00010268
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
	.4byte 0x0001005E
	.4byte kamec_subset_bunsin_all_kill
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_subset_blow_dead_event

# .data:0x13C0 | 0x46978 | size: 0x40
.obj avoid_miss_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte bunsin_kill_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_miss_event

# .data:0x1400 | 0x469B8 | size: 0x94
.obj bunsin_kill_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte alpha_down_event
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunsin_kill_event

# .data:0x1494 | 0x46A4C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x149C | 0x46A54 | size: 0x27C
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFFFFFFFE
	.4byte data_table_bunsin
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KMW_H_1_tou2_00010280
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_tou2_00010288
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte init_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0x1718 | 0x46CD0 | size: 0x4C
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

# .data:0x1764 | 0x46D1C | size: 0x4A0
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
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte kamec_get_live_num
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte bunsin_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_dekadeka_magic
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_katikati_magic
	.4byte 0x0001005E
	.4byte katikati_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_biribiri_magic
	.4byte 0x0001005E
	.4byte biribiri_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_trans_magic
	.4byte 0x0001005E
	.4byte trans_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_all_recover_magic
	.4byte 0x0001005E
	.4byte all_recover_magic_event
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1C04 | 0x471BC | size: 0x4C4
.obj ground_magic_common_event1, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_00010298
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff2
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_1A_tou2_000102b0
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_1A_tou2_000102b0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_1A_tou2_000102b0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_1A_tou2_000102b0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_1A_tou2_000102b0
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_000102bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_1B_tou2_000102d4
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_1B_tou2_000102d4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_1B_tou2_000102d4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_1B_tou2_000102d4
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_1B_tou2_000102d4
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_1C_tou2_000102e0
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_1C_tou2_000102e0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_1C_tou2_000102e0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_1C_tou2_000102e0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_1C_tou2_000102e0
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_000102ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_1D_tou2_00010304
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_1D_tou2_00010304
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_1D_tou2_00010304
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_1D_tou2_00010304
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_1D_tou2_00010304
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_1E_tou2_00010310
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_1E_tou2_00010310
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_1E_tou2_00010310
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_1E_tou2_00010310
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_1E_tou2_00010310
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event1

# .data:0x20C8 | 0x47680 | size: 0xF4
.obj ground_magic_common_event2, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_00010298
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_1A_tou2_000102b0
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0001031c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_2A_tou2_00010334
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_00010340
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_2B_tou2_00010358
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_2C_tou2_00010364
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event2

# .data:0x21BC | 0x47774 | size: 0x408
.obj sky_magic_common_event, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_00010298
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte eff_staff1
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff2
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_3A_tou2_00010370
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_3A_tou2_00010370
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_3A_tou2_00010370
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_3A_tou2_00010370
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_3A_tou2_00010370
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_000102ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_3B_tou2_0001037c
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_3B_tou2_0001037c
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_3B_tou2_0001037c
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_3B_tou2_0001037c
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_3B_tou2_0001037c
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_00010340
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_3C_tou2_00010388
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_3C_tou2_00010388
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_3C_tou2_00010388
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_3C_tou2_00010388
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_3C_tou2_00010388
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMW_A_3D_tou2_00010394
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMW_A_3D_tou2_00010394
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMW_A_3D_tou2_00010394
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMW_A_3D_tou2_00010394
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMW_A_3D_tou2_00010394
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sky_magic_common_event

# .data:0x25C4 | 0x47B7C | size: 0x6C
.obj magic_common_event1, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte ground_magic_common_event1
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event1

# .data:0x2630 | 0x47BE8 | size: 0x40
.obj magic_common_event2, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event2

# .data:0x2670 | 0x47C28 | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0x26D8 | 0x47C90 | size: 0x514
.obj attack_magic_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_000103a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C87
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_no_hit
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C87
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C88
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte attack_magic_event_sub_hit
	.4byte 0x00010009
	.4byte 0x0000002D
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00020019
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event

# .data:0x2BEC | 0x481A4 | size: 0xB4
.obj attack_magic_event_sub_no_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C8A
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8E
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event_sub_no_hit

# .data:0x2CA0 | 0x48258 | size: 0x78
.obj attack_magic_event_sub_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8E
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000002D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event_sub_hit

# .data:0x2D18 | 0x482D0 | size: 0x230
.obj support_magic_event, local
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj support_magic_event

# .data:0x2F48 | 0x48500 | size: 0x1C
.obj dekadeka_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dekadeka_magic_event

# .data:0x2F64 | 0x4851C | size: 0x1C
.obj katikati_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj katikati_magic_event

# .data:0x2F80 | 0x48538 | size: 0x1C
.obj biribiri_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj biribiri_magic_event

# .data:0x2F9C | 0x48554 | size: 0x1C
.obj trans_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_magic_event

# .data:0x2FB8 | 0x48570 | size: 0x238
.obj recover_magic_event, local
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_00010258
	.4byte str_recovery_tou2_000103b8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj recover_magic_event

# .data:0x31F0 | 0x487A8 | size: 0x2D0
.obj all_recover_magic_event, local
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010004
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00010003
	.4byte 0x00000008
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
	.4byte 0x0001005E
	.4byte magic_common_event2
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_00010258
	.4byte str_recovery_tou2_000103b8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_recover_magic_event

# .data:0x34C0 | 0x48A78 | size: 0x280
.obj bunsin_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tou2_000103c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte alpha_down_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte spawn_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte spawn_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte kamec_shuffle
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tou2_000103e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0001005C
	.4byte alpha_up_event
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bunsin_magic_event

# .data:0x3740 | 0x48CF8 | size: 0x108
.obj spawn_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_kamec
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte kamec_copy_status
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C83
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFE363C83
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C83
	.4byte regist_bunsin
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00004000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj spawn_event

# .data:0x3848 | 0x48E00 | size: 0xDC
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte kamec_get_bunsin
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C84
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x3924 | 0x48EDC | size: 0x4
.obj gap_04_00048EDC_data, global
.hidden gap_04_00048EDC_data
	.4byte 0x00000000
.endobj gap_04_00048EDC_data
