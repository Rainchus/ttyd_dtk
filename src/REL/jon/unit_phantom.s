.include "macros.inc"
.file "unit_phantom.o"

# 0x0000338C..0x0000385C | size: 0x4D0
.text
.balign 4

# .text:0x0 | 0x338C | size: 0x21C
.fn eff_all_fire, local
/* 0000338C 00003450  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00003390 00003454  7C 08 02 A6 */	mflr r0
/* 00003394 00003458  90 01 00 74 */	stw r0, 0x74(r1)
/* 00003398 0000345C  BF 81 00 60 */	stmw r28, 0x60(r1)
/* 0000339C 00003460  7C 9E 23 78 */	mr r30, r4
/* 000033A0 00003464  7C 7D 1B 78 */	mr r29, r3
/* 000033A4 00003468  83 83 00 18 */	lwz r28, 0x18(r3)
/* 000033A8 0000346C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 000033AC 00003470  4B FF D6 C5 */	bl evtGetValue
/* 000033B0 00003474  7C 64 1B 78 */	mr r4, r3
/* 000033B4 00003478  7F A3 EB 78 */	mr r3, r29
/* 000033B8 0000347C  4B FF D6 B9 */	bl BattleTransID
/* 000033BC 00003480  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 000033C0 00003484  7C 7C 1B 78 */	mr r28, r3
/* 000033C4 00003488  7F A3 EB 78 */	mr r3, r29
/* 000033C8 0000348C  4B FF D6 A9 */	bl evtGetValue
/* 000033CC 00003490  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000033D0 00003494  7C 7F 1B 78 */	mr r31, r3
/* 000033D4 00003498  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 000033D8 0000349C  7F 84 E3 78 */	mr r4, r28
/* 000033DC 000034A0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000033E0 000034A4  4B FF D6 91 */	bl BattleGetUnitPtr
/* 000033E4 000034A8  3C 80 00 00 */	lis r4, dat_jon_0000c5cc@ha
/* 000033E8 000034AC  38 00 00 05 */	li r0, 0x5
/* 000033EC 000034B0  38 84 00 00 */	addi r4, r4, dat_jon_0000c5cc@l
/* 000033F0 000034B4  7C 7D 1B 78 */	mr r29, r3
/* 000033F4 000034B8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 000033F8 000034BC  38 84 FF FC */	subi r4, r4, 0x4
/* 000033FC 000034C0  7C 09 03 A6 */	mtctr r0
.L_00003400:
/* 00003400 000034C4  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00003404 000034C8  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00003408 000034CC  90 65 00 04 */	stw r3, 0x4(r5)
/* 0000340C 000034D0  94 05 00 08 */	stwu r0, 0x8(r5)
/* 00003410 000034D4  42 00 FF F0 */	bdnz .L_00003400
/* 00003414 000034D8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00003418 000034DC  41 82 00 70 */	beq .L_00003488
/* 0000341C 000034E0  3C 60 00 00 */	lis r3, zero_jon_0000c620@ha
/* 00003420 000034E4  3C 80 00 00 */	lis r4, float_neg1000_jon_0000c624@ha
/* 00003424 000034E8  38 A3 00 00 */	addi r5, r3, zero_jon_0000c620@l
/* 00003428 000034EC  C0 44 00 00 */	lfs f2, float_neg1000_jon_0000c624@l(r4)
/* 0000342C 000034F0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00003430 000034F4  3C 60 00 00 */	lis r3, float_1_jon_0000c628@ha
/* 00003434 000034F8  C0 83 00 00 */	lfs f4, float_1_jon_0000c628@l(r3)
/* 00003438 000034FC  38 60 00 07 */	li r3, 0x7
/* 0000343C 00003500  FC 60 08 90 */	fmr f3, f1
/* 00003440 00003504  38 80 00 78 */	li r4, 0x78
/* 00003444 00003508  4B FF D6 2D */	bl effFireEntry
/* 00003448 0000350C  3C C0 00 00 */	lis r6, eff2@ha
/* 0000344C 00003510  3C A0 00 00 */	lis r5, float_2_jon_0000c62c@ha
/* 00003450 00003514  57 E0 10 3A */	slwi r0, r31, 2
/* 00003454 00003518  C0 05 00 00 */	lfs f0, float_2_jon_0000c62c@l(r5)
/* 00003458 0000351C  38 C6 00 00 */	addi r6, r6, eff2@l
/* 0000345C 00003520  38 81 00 20 */	addi r4, r1, 0x20
/* 00003460 00003524  7C 66 01 2E */	stwx r3, r6, r0
/* 00003464 00003528  7C 66 00 2E */	lwzx r3, r6, r0
/* 00003468 0000352C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000346C 00003530  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00003470 00003534  7C 66 00 2E */	lwzx r3, r6, r0
/* 00003474 00003538  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 00003478 0000353C  7C 04 04 2E */	lfsx f0, r4, r0
/* 0000347C 00003540  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00003480 00003544  EC 01 00 32 */	fmuls f0, f1, f0
/* 00003484 00003548  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00003488:
/* 00003488 0000354C  3C 60 00 00 */	lis r3, eff2@ha
/* 0000348C 00003550  57 FE 10 3A */	slwi r30, r31, 2
/* 00003490 00003554  38 63 00 00 */	addi r3, r3, eff2@l
/* 00003494 00003558  7C 63 F0 2E */	lwzx r3, r3, r30
/* 00003498 0000355C  83 83 00 0C */	lwz r28, 0xc(r3)
/* 0000349C 00003560  28 1C 00 00 */	cmplwi r28, 0x0
/* 000034A0 00003564  41 82 00 F0 */	beq .L_00003590
/* 000034A4 00003568  7F A3 EB 78 */	mr r3, r29
/* 000034A8 0000356C  38 81 00 10 */	addi r4, r1, 0x10
/* 000034AC 00003570  38 A1 00 0C */	addi r5, r1, 0xc
/* 000034B0 00003574  38 C1 00 08 */	addi r6, r1, 0x8
/* 000034B4 00003578  4B FF D5 BD */	bl BtlUnit_GetPos
/* 000034B8 0000357C  88 7D 01 89 */	lbz r3, 0x189(r29)
/* 000034BC 00003580  3C A0 43 30 */	lis r5, 0x4330
/* 000034C0 00003584  3C 80 00 00 */	lis r4, double_to_int_jon_0000c640@ha
/* 000034C4 00003588  38 1F 00 01 */	addi r0, r31, 0x1
/* 000034C8 0000358C  7C 63 07 74 */	extsb r3, r3
/* 000034CC 00003590  3C E0 00 00 */	lis r7, float_24_jon_0000c630@ha
/* 000034D0 00003594  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000034D4 00003598  38 C4 00 00 */	addi r6, r4, double_to_int_jon_0000c640@l
/* 000034D8 0000359C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 000034DC 000035A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000034E0 000035A4  3C 60 00 00 */	lis r3, float_15_jon_0000c634@ha
/* 000034E4 000035A8  C8 A6 00 00 */	lfd f5, 0x0(r6)
/* 000034E8 000035AC  90 A1 00 48 */	stw r5, 0x48(r1)
/* 000034EC 000035B0  38 83 00 00 */	addi r4, r3, float_15_jon_0000c634@l
/* 000034F0 000035B4  3C 60 00 00 */	lis r3, vec3_jon_0000c5f4@ha
/* 000034F4 000035B8  C0 87 00 00 */	lfs f4, float_24_jon_0000c630@l(r7)
/* 000034F8 000035BC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 000034FC 000035C0  39 03 00 00 */	addi r8, r3, vec3_jon_0000c5f4@l
/* 00003500 000035C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 00003504 000035C8  3C 60 00 00 */	lis r3, float_2_jon_0000c62c@ha
/* 00003508 000035CC  EC 60 28 28 */	fsubs f3, f0, f5
/* 0000350C 000035D0  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00003510 000035D4  90 A1 00 50 */	stw r5, 0x50(r1)
/* 00003514 000035D8  38 C3 00 00 */	addi r6, r3, float_2_jon_0000c62c@l
/* 00003518 000035DC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 0000351C 000035E0  38 A1 00 20 */	addi r5, r1, 0x20
/* 00003520 000035E4  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00003524 000035E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 00003528 000035EC  80 08 00 04 */	lwz r0, 0x4(r8)
/* 0000352C 000035F0  EC 84 00 F2 */	fmuls f4, f4, f3
/* 00003530 000035F4  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 00003534 000035F8  3C 60 00 00 */	lis r3, float_10_jon_0000c638@ha
/* 00003538 000035FC  80 88 00 08 */	lwz r4, 0x8(r8)
/* 0000353C 00003600  EC 62 28 28 */	fsubs f3, f2, f5
/* 00003540 00003604  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00003544 00003608  7C 25 F4 2E */	lfsx f1, r5, r30
/* 00003548 0000360C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 0000354C 00003610  EC 64 10 FA */	fmadds f3, f4, f3, f2
/* 00003550 00003614  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 00003554 00003618  90 01 00 18 */	stw r0, 0x18(r1)
/* 00003558 0000361C  EC 42 00 7C */	fnmsubs f2, f2, f1, f0
/* 0000355C 00003620  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00003560 00003624  C0 03 00 00 */	lfs f0, float_10_jon_0000c638@l(r3)
/* 00003564 00003628  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 00003568 0000362C  EC 01 00 28 */	fsubs f0, f1, f0
/* 0000356C 00003630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003570 00003634  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00003574 00003638  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 00003578 0000363C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 0000357C 00003640  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00003580 00003644  90 1C 00 04 */	stw r0, 0x4(r28)
/* 00003584 00003648  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00003588 0000364C  90 7C 00 08 */	stw r3, 0x8(r28)
/* 0000358C 00003650  90 1C 00 0C */	stw r0, 0xc(r28)
.L_00003590:
/* 00003590 00003654  BB 81 00 60 */	lmw r28, 0x60(r1)
/* 00003594 00003658  38 60 00 00 */	li r3, 0x0
/* 00003598 0000365C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000359C 00003660  7C 08 03 A6 */	mtlr r0
/* 000035A0 00003664  38 21 00 70 */	addi r1, r1, 0x70
/* 000035A4 00003668  4E 80 00 20 */	blr
.endfn eff_all_fire

# .text:0x21C | 0x35A8 | size: 0x1A0
.fn eff_fire, local
/* 000035A8 0000366C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000035AC 00003670  7C 08 02 A6 */	mflr r0
/* 000035B0 00003674  90 01 00 34 */	stw r0, 0x34(r1)
/* 000035B4 00003678  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000035B8 0000367C  7C 9D 23 78 */	mr r29, r4
/* 000035BC 00003680  7C 7E 1B 78 */	mr r30, r3
/* 000035C0 00003684  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000035C4 00003688  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000035C8 0000368C  4B FF D4 A9 */	bl evtGetValue
/* 000035CC 00003690  7C 64 1B 78 */	mr r4, r3
/* 000035D0 00003694  7F C3 F3 78 */	mr r3, r30
/* 000035D4 00003698  4B FF D4 9D */	bl BattleTransID
/* 000035D8 0000369C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000035DC 000036A0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000035E0 000036A4  7C 64 1B 78 */	mr r4, r3
/* 000035E4 000036A8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000035E8 000036AC  4B FF D4 89 */	bl BattleGetUnitPtr
/* 000035EC 000036B0  7C 7F 1B 78 */	mr r31, r3
/* 000035F0 000036B4  38 80 00 02 */	li r4, 0x2
/* 000035F4 000036B8  4B FF D4 7D */	bl BtlUnit_GetPartsPtr
/* 000035F8 000036BC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 000035FC 000036C0  7C 7E 1B 78 */	mr r30, r3
/* 00003600 000036C4  41 82 00 54 */	beq .L_00003654
/* 00003604 000036C8  3C 60 00 00 */	lis r3, zero_jon_0000c620@ha
/* 00003608 000036CC  3C 80 00 00 */	lis r4, float_neg1000_jon_0000c624@ha
/* 0000360C 000036D0  38 A3 00 00 */	addi r5, r3, zero_jon_0000c620@l
/* 00003610 000036D4  C0 44 00 00 */	lfs f2, float_neg1000_jon_0000c624@l(r4)
/* 00003614 000036D8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00003618 000036DC  3C 60 00 00 */	lis r3, float_1_jon_0000c628@ha
/* 0000361C 000036E0  C0 83 00 00 */	lfs f4, float_1_jon_0000c628@l(r3)
/* 00003620 000036E4  38 60 00 07 */	li r3, 0x7
/* 00003624 000036E8  FC 60 08 90 */	fmr f3, f1
/* 00003628 000036EC  38 80 00 6A */	li r4, 0x6a
/* 0000362C 000036F0  4B FF D4 45 */	bl effFireEntry
/* 00003630 000036F4  3C A0 00 00 */	lis r5, eff@ha
/* 00003634 000036F8  94 65 00 00 */	stwu r3, eff@l(r5)
/* 00003638 000036FC  3C 80 00 00 */	lis r4, zero_jon_0000c620@ha
/* 0000363C 00003700  C0 04 00 00 */	lfs f0, zero_jon_0000c620@l(r4)
/* 00003640 00003704  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00003644 00003708  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00003648 0000370C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000364C 00003710  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00003650 00003714  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00003654:
/* 00003654 00003718  3C 60 00 00 */	lis r3, eff@ha
/* 00003658 0000371C  38 63 00 00 */	addi r3, r3, eff@l
/* 0000365C 00003720  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00003660 00003724  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 00003664 00003728  28 1D 00 00 */	cmplwi r29, 0x0
/* 00003668 0000372C  41 82 00 C8 */	beq .L_00003730
/* 0000366C 00003730  7F C3 F3 78 */	mr r3, r30
/* 00003670 00003734  38 81 00 10 */	addi r4, r1, 0x10
/* 00003674 00003738  38 A1 00 0C */	addi r5, r1, 0xc
/* 00003678 0000373C  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000367C 00003740  4B FF D3 F5 */	bl BtlUnit_GetPartsPos
/* 00003680 00003744  3C 80 00 00 */	lis r4, vec3_jon_0000c580@ha
/* 00003684 00003748  3C 60 00 00 */	lis r3, float_0p1_jon_0000c648@ha
/* 00003688 0000374C  38 A4 00 00 */	addi r5, r4, vec3_jon_0000c580@l
/* 0000368C 00003750  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00003690 00003754  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00003694 00003758  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00003698 0000375C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000369C 00003760  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000036A0 00003764  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 000036A4 00003768  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000036A8 0000376C  90 81 00 18 */	stw r4, 0x18(r1)
/* 000036AC 00003770  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000036B0 00003774  90 01 00 1C */	stw r0, 0x1c(r1)
/* 000036B4 00003778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000036B8 0000377C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 000036BC 00003780  C0 43 00 00 */	lfs f2, float_0p1_jon_0000c648@l(r3)
/* 000036C0 00003784  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 000036C4 00003788  80 61 00 18 */	lwz r3, 0x18(r1)
/* 000036C8 0000378C  90 1D 00 04 */	stw r0, 0x4(r29)
/* 000036CC 00003790  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000036D0 00003794  90 7D 00 08 */	stw r3, 0x8(r29)
/* 000036D4 00003798  90 1D 00 0C */	stw r0, 0xc(r29)
/* 000036D8 0000379C  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 000036DC 000037A0  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 000036E0 000037A4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 000036E4 000037A8  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 000036E8 000037AC  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 000036EC 000037B0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 000036F0 000037B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 000036F4 000037B8  4C 41 13 82 */	cror eq, gt, eq
/* 000036F8 000037BC  40 82 00 08 */	bne .L_00003700
/* 000036FC 000037C0  D0 3D 00 78 */	stfs f1, 0x78(r29)
.L_00003700:
/* 00003700 000037C4  3C 60 00 00 */	lis r3, float_0p1_jon_0000c648@ha
/* 00003704 000037C8  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00003708 000037CC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 0000370C 000037D0  C0 43 00 00 */	lfs f2, float_0p1_jon_0000c648@l(r3)
/* 00003710 000037D4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00003714 000037D8  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 00003718 000037DC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 0000371C 000037E0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00003720 000037E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00003724 000037E8  4C 41 13 82 */	cror eq, gt, eq
/* 00003728 000037EC  40 82 00 08 */	bne .L_00003730
/* 0000372C 000037F0  D0 3D 00 7C */	stfs f1, 0x7c(r29)
.L_00003730:
/* 00003730 000037F4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00003734 000037F8  38 60 00 00 */	li r3, 0x0
/* 00003738 000037FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000373C 00003800  7C 08 03 A6 */	mtlr r0
/* 00003740 00003804  38 21 00 30 */	addi r1, r1, 0x30
/* 00003744 00003808  4E 80 00 20 */	blr
.endfn eff_fire

# .text:0x3BC | 0x3748 | size: 0x114
.fn bubble_copy_status, local
/* 00003748 0000380C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000374C 00003810  7C 08 02 A6 */	mflr r0
/* 00003750 00003814  90 01 00 34 */	stw r0, 0x34(r1)
/* 00003754 00003818  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00003758 0000381C  7C 7D 1B 78 */	mr r29, r3
/* 0000375C 00003820  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003760 00003824  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003764 00003828  4B FF D3 0D */	bl evtGetValue
/* 00003768 0000382C  7C 64 1B 78 */	mr r4, r3
/* 0000376C 00003830  7F A3 EB 78 */	mr r3, r29
/* 00003770 00003834  4B FF D3 01 */	bl BattleTransID
/* 00003774 00003838  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003778 0000383C  7C 7F 1B 78 */	mr r31, r3
/* 0000377C 00003840  7F A3 EB 78 */	mr r3, r29
/* 00003780 00003844  4B FF D2 F1 */	bl evtGetValue
/* 00003784 00003848  7C 64 1B 78 */	mr r4, r3
/* 00003788 0000384C  7F A3 EB 78 */	mr r3, r29
/* 0000378C 00003850  4B FF D2 E5 */	bl BattleTransID
/* 00003790 00003854  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00003794 00003858  7C 7E 1B 78 */	mr r30, r3
/* 00003798 0000385C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000379C 00003860  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000037A0 00003864  7F E4 FB 78 */	mr r4, r31
/* 000037A4 00003868  7C 1D 03 78 */	mr r29, r0
/* 000037A8 0000386C  7C 03 03 78 */	mr r3, r0
/* 000037AC 00003870  4B FF D2 C5 */	bl BattleGetUnitPtr
/* 000037B0 00003874  7C 7F 1B 78 */	mr r31, r3
/* 000037B4 00003878  7F A3 EB 78 */	mr r3, r29
/* 000037B8 0000387C  7F C4 F3 78 */	mr r4, r30
/* 000037BC 00003880  4B FF D2 B5 */	bl BattleGetUnitPtr
/* 000037C0 00003884  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 000037C4 00003888  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 000037C8 0000388C  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 000037CC 00003890  A8 83 01 08 */	lha r4, 0x108(r3)
/* 000037D0 00003894  7C 00 20 00 */	cmpw r0, r4
/* 000037D4 00003898  40 81 00 08 */	ble .L_000037DC
/* 000037D8 0000389C  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_000037DC:
/* 000037DC 000038A0  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 000037E0 000038A4  3C 00 43 30 */	lis r0, 0x4330
/* 000037E4 000038A8  3C 80 00 00 */	lis r4, double_to_int_jon_0000c640@ha
/* 000037E8 000038AC  90 01 00 08 */	stw r0, 0x8(r1)
/* 000037EC 000038B0  C8 44 00 00 */	lfd f2, double_to_int_jon_0000c640@l(r4)
/* 000037F0 000038B4  98 A3 01 23 */	stb r5, 0x123(r3)
/* 000037F4 000038B8  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 000037F8 000038BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 000037FC 000038C0  98 83 01 24 */	stb r4, 0x124(r3)
/* 00003800 000038C4  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00003804 000038C8  90 03 02 08 */	stw r0, 0x208(r3)
/* 00003808 000038CC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000380C 000038D0  90 03 02 0C */	stw r0, 0x20c(r3)
/* 00003810 000038D4  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 00003814 000038D8  A8 03 01 08 */	lha r0, 0x108(r3)
/* 00003818 000038DC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 0000381C 000038E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00003820 000038E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 00003824 000038E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003828 000038EC  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 0000382C 000038F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00003830 000038F4  EC 21 10 28 */	fsubs f1, f1, f2
/* 00003834 000038F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 00003838 000038FC  EC 01 00 24 */	fdivs f0, f1, f0
/* 0000383C 00003900  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 00003840 00003904  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 00003844 00003908  38 60 00 02 */	li r3, 0x2
/* 00003848 0000390C  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000384C 00003910  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00003850 00003914  7C 08 03 A6 */	mtlr r0
/* 00003854 00003918  38 21 00 30 */	addi r1, r1, 0x30
/* 00003858 0000391C  4E 80 00 20 */	blr
.endfn bubble_copy_status

# 0x00005430..0x00005620 | size: 0x1F0
.rodata
.balign 8

# .rodata:0x0 | 0x5430 | size: 0xF
.obj str_btl_un_phantom_jon_0000c460, local
	.string "btl_un_phantom"
.endobj str_btl_un_phantom_jon_0000c460

# .rodata:0xF | 0x543F | size: 0x1
.obj gap_03_0000543F_rodata, global
.hidden gap_03_0000543F_rodata
	.byte 0x00
.endobj gap_03_0000543F_rodata

# .rodata:0x10 | 0x5440 | size: 0x18
.obj str_SFX_ENM_BUBBLE_DAMAG_jon_0000c470, local
	.string "SFX_ENM_BUBBLE_DAMAGED1"
.endobj str_SFX_ENM_BUBBLE_DAMAG_jon_0000c470

# .rodata:0x28 | 0x5458 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000c488, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000c488

# .rodata:0x3D | 0x546D | size: 0x3
.obj gap_03_0000546D_rodata, global
.hidden gap_03_0000546D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000546D_rodata

# .rodata:0x40 | 0x5470 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000c4a0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000c4a0

# .rodata:0x54 | 0x5484 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000c4b4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000c4b4

# .rodata:0x6D | 0x549D | size: 0x3
.obj gap_03_0000549D_rodata, global
.hidden gap_03_0000549D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000549D_rodata

# .rodata:0x70 | 0x54A0 | size: 0x4
.obj str_N_1_jon_0000c4d0, local
	.string "N_1"
.endobj str_N_1_jon_0000c4d0

# .rodata:0x74 | 0x54A4 | size: 0x4
.obj str_Y_1_jon_0000c4d4, local
	.string "Y_1"
.endobj str_Y_1_jon_0000c4d4

# .rodata:0x78 | 0x54A8 | size: 0x4
.obj str_K_1_jon_0000c4d8, local
	.string "K_1"
.endobj str_K_1_jon_0000c4d8

# .rodata:0x7C | 0x54AC | size: 0x4
.obj str_X_1_jon_0000c4dc, local
	.string "X_1"
.endobj str_X_1_jon_0000c4dc

# .rodata:0x80 | 0x54B0 | size: 0x4
.obj str_S_1_jon_0000c4e0, local
	.string "S_1"
.endobj str_S_1_jon_0000c4e0

# .rodata:0x84 | 0x54B4 | size: 0x4
.obj str_Q_1_jon_0000c4e4, local
	.string "Q_1"
.endobj str_Q_1_jon_0000c4e4

# .rodata:0x88 | 0x54B8 | size: 0x5
.obj str_A_2B_jon_0000c4e8, local
	.string "A_2B"
.endobj str_A_2B_jon_0000c4e8

# .rodata:0x8D | 0x54BD | size: 0x3
.obj gap_03_000054BD_rodata, global
.hidden gap_03_000054BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000054BD_rodata

# .rodata:0x90 | 0x54C0 | size: 0x4
.obj str_D_1_jon_0000c4f0, local
	.string "D_1"
.endobj str_D_1_jon_0000c4f0

# .rodata:0x94 | 0x54C4 | size: 0x4
.obj str_A_1_jon_0000c4f4, local
	.string "A_1"
.endobj str_A_1_jon_0000c4f4

# .rodata:0x98 | 0x54C8 | size: 0x4
.obj str_R_1_jon_0000c4f8, local
	.string "R_1"
.endobj str_R_1_jon_0000c4f8

# .rodata:0x9C | 0x54CC | size: 0x4
.obj str_W_1_jon_0000c4fc, local
	.string "W_1"
.endobj str_W_1_jon_0000c4fc

# .rodata:0xA0 | 0x54D0 | size: 0x4
.obj str_T_1_jon_0000c500, local
	.string "T_1"
.endobj str_T_1_jon_0000c500

# .rodata:0xA4 | 0x54D4 | size: 0xA
.obj str_c_phantom_jon_0000c504, local
	.string "c_phantom"
.endobj str_c_phantom_jon_0000c504

# .rodata:0xAE | 0x54DE | size: 0x2
.obj gap_03_000054DE_rodata, global
.hidden gap_03_000054DE_rodata
	.2byte 0x0000
.endobj gap_03_000054DE_rodata

# .rodata:0xB0 | 0x54E0 | size: 0x15
.obj str_SFX_ENM_BUBBLE_FIRE1_jon_0000c510, local
	.string "SFX_ENM_BUBBLE_FIRE1"
.endobj str_SFX_ENM_BUBBLE_FIRE1_jon_0000c510

# .rodata:0xC5 | 0x54F5 | size: 0x3
.obj gap_03_000054F5_rodata, global
.hidden gap_03_000054F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000054F5_rodata

# .rodata:0xC8 | 0x54F8 | size: 0x16
.obj str_SFX_ENM_BUBBLE_SPLIT_jon_0000c528, local
	.string "SFX_ENM_BUBBLE_SPLIT1"
.endobj str_SFX_ENM_BUBBLE_SPLIT_jon_0000c528

# .rodata:0xDE | 0x550E | size: 0x2
.obj gap_03_0000550E_rodata, global
.hidden gap_03_0000550E_rodata
	.2byte 0x0000
.endobj gap_03_0000550E_rodata

# .rodata:0xE0 | 0x5510 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE1_jon_0000c540, local
	.string "SFX_ENM_BUBBLE_MOVE1"
.endobj str_SFX_ENM_BUBBLE_MOVE1_jon_0000c540

# .rodata:0xF5 | 0x5525 | size: 0x3
.obj gap_03_00005525_rodata, global
.hidden gap_03_00005525_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005525_rodata

# .rodata:0xF8 | 0x5528 | size: 0x5
.obj str_A_1A_jon_0000c558, local
	.string "A_1A"
.endobj str_A_1A_jon_0000c558

# .rodata:0xFD | 0x552D | size: 0x3
.obj gap_03_0000552D_rodata, global
.hidden gap_03_0000552D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000552D_rodata

# .rodata:0x100 | 0x5530 | size: 0x5
.obj str_A_1B_jon_0000c560, local
	.string "A_1B"
.endobj str_A_1B_jon_0000c560

# .rodata:0x105 | 0x5535 | size: 0x3
.obj gap_03_00005535_rodata, global
.hidden gap_03_00005535_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005535_rodata

# .rodata:0x108 | 0x5538 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE2_jon_0000c568, local
	.string "SFX_ENM_BUBBLE_MOVE2"
.endobj str_SFX_ENM_BUBBLE_MOVE2_jon_0000c568

# .rodata:0x11D | 0x554D | size: 0x3
.obj gap_03_0000554D_rodata, global
.hidden gap_03_0000554D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000554D_rodata

# .rodata:0x120 | 0x5550 | size: 0xC
.obj vec3_jon_0000c580, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_jon_0000c580

# .rodata:0x12C | 0x555C | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_jon_0000c58c, local
	.string "SFX_ENM_BUBBLE_ATTACK2"
.endobj str_SFX_ENM_BUBBLE_ATTAC_jon_0000c58c

# .rodata:0x143 | 0x5573 | size: 0x1
.obj gap_03_00005573_rodata, global
.hidden gap_03_00005573_rodata
	.byte 0x00
.endobj gap_03_00005573_rodata

# .rodata:0x144 | 0x5574 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_jon_0000c5a4, local
	.string "SFX_ENM_BUBBLE_ATTACK3"
.endobj str_SFX_ENM_BUBBLE_ATTAC_jon_0000c5a4

# .rodata:0x15B | 0x558B | size: 0x1
.obj gap_03_0000558B_rodata, global
.hidden gap_03_0000558B_rodata
	.byte 0x00
.endobj gap_03_0000558B_rodata

# .rodata:0x15C | 0x558C | size: 0x1
.obj zero_jon_0000c5bc, local
	.byte 0x00
.endobj zero_jon_0000c5bc

# .rodata:0x15D | 0x558D | size: 0x3
.obj gap_03_0000558D_rodata, global
.hidden gap_03_0000558D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000558D_rodata

# .rodata:0x160 | 0x5590 | size: 0xC
.obj str_kemuri_test_jon_0000c5c0, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000c5c0

# .rodata:0x16C | 0x559C | size: 0x28
.obj dat_jon_0000c5cc, local
	.4byte 0x3F800000
	.4byte 0x3FA00000
	.4byte 0x3FC00000
	.4byte 0x3FE00000
	.4byte 0x40000000
	.4byte 0x40100000
	.4byte 0x40000000
	.4byte 0x3FE00000
	.4byte 0x3FC00000
	.4byte 0x3FA00000
.endobj dat_jon_0000c5cc

# .rodata:0x194 | 0x55C4 | size: 0xC
.obj vec3_jon_0000c5f4, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_jon_0000c5f4

# .rodata:0x1A0 | 0x55D0 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_jon_0000c600, local
	.string "SFX_ENM_BUBBLE_ATTACK4"
.endobj str_SFX_ENM_BUBBLE_ATTAC_jon_0000c600

# .rodata:0x1B7 | 0x55E7 | size: 0x1
.obj gap_03_000055E7_rodata, global
.hidden gap_03_000055E7_rodata
	.byte 0x00
.endobj gap_03_000055E7_rodata

# .rodata:0x1B8 | 0x55E8 | size: 0x5
.obj str_A_2A_jon_0000c618, local
	.string "A_2A"
.endobj str_A_2A_jon_0000c618
	.byte 0x00, 0x00, 0x00

# .rodata:0x1C0 | 0x55F0 | size: 0x4
.obj zero_jon_0000c620, local
	.float 0
.endobj zero_jon_0000c620

# .rodata:0x1C4 | 0x55F4 | size: 0x4
.obj float_neg1000_jon_0000c624, local
	.float -1000
.endobj float_neg1000_jon_0000c624

# .rodata:0x1C8 | 0x55F8 | size: 0x4
.obj float_1_jon_0000c628, local
	.float 1
.endobj float_1_jon_0000c628

# .rodata:0x1CC | 0x55FC | size: 0x4
.obj float_2_jon_0000c62c, local
	.float 2
.endobj float_2_jon_0000c62c

# .rodata:0x1D0 | 0x5600 | size: 0x4
.obj float_24_jon_0000c630, local
	.float 24
.endobj float_24_jon_0000c630

# .rodata:0x1D4 | 0x5604 | size: 0x4
.obj float_15_jon_0000c634, local
	.float 15
.endobj float_15_jon_0000c634

# .rodata:0x1D8 | 0x5608 | size: 0x4
.obj float_10_jon_0000c638, local
	.float 10
.endobj float_10_jon_0000c638
	.4byte 0x00000000

# .rodata:0x1E0 | 0x5610 | size: 0x8
.obj double_to_int_jon_0000c640, local
	.double 4503601774854144
.endobj double_to_int_jon_0000c640

# .rodata:0x1E8 | 0x5618 | size: 0x4
.obj float_0p1_jon_0000c648, local
	.float 0.1
.endobj float_0p1_jon_0000c648

# .rodata:0x1EC | 0x561C | size: 0x4
.obj gap_03_0000561C_rodata, global
.hidden gap_03_0000561C_rodata
	.4byte 0x00000000
.endobj gap_03_0000561C_rodata

# 0x0004AF70..0x0004CA08 | size: 0x1A98
.data
.balign 8

# .data:0x0 | 0x4AF70 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4AF78 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4AF7C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4AF80 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4AF84 | size: 0x4
.obj gap_04_0004AF84_data, global
.hidden gap_04_0004AF84_data
	.4byte 0x00000000
.endobj gap_04_0004AF84_data

# .data:0x18 | 0x4AF88 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4AF90 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4AF94 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4AF98 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4AFA0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4AFA4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4AFA8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4AFAC | size: 0x4
.obj gap_04_0004AFAC_data, global
.hidden gap_04_0004AFAC_data
	.4byte 0x00000000
.endobj gap_04_0004AFAC_data

# .data:0x40 | 0x4AFB0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4AFB8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4AFBC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4AFC0 | size: 0xC4
.obj unit_phantom_14_data_4AFC0, global
	.4byte 0x0000007C
	.4byte str_btl_un_phantom_jon_0000c460
	.4byte 0x000A0000
	.4byte 0x01011E00
	.4byte 0x02460232
	.4byte 0x270F001A
	.4byte 0x00240008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_BUBBLE_DAMAG_jon_0000c470
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000c488
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000c4a0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000c4b4
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_phantom_14_data_4AFC0

# .data:0x114 | 0x4B084 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x4B089 | size: 0x3
.obj gap_04_0004B089_data, global
.hidden gap_04_0004B089_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004B089_data

# .data:0x11C | 0x4B08C | size: 0x5
.obj defence_attr, local
	.4byte 0x00030101
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x4B091 | size: 0x3
.obj gap_04_0004B091_data, global
.hidden gap_04_0004B091_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004B091_data

# .data:0x124 | 0x4B094 | size: 0x16
.obj regist, local
	.4byte 0x28506464
	.4byte 0x41640028
	.4byte 0x64506450
	.4byte 0x645A4128
	.4byte 0x50644164
	.2byte 0x645A
.endobj regist

# .data:0x13A | 0x4B0AA | size: 0x2
.obj gap_04_0004B0AA_data, global
.hidden gap_04_0004B0AA_data
	.2byte 0x0000
.endobj gap_04_0004B0AA_data

# .data:0x13C | 0x4B0AC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000c4d0
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000c4d4
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000c4d4
	.4byte 0x00000005
	.4byte str_K_1_jon_0000c4d8
	.4byte 0x00000004
	.4byte str_X_1_jon_0000c4dc
	.4byte 0x00000003
	.4byte str_X_1_jon_0000c4dc
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000c4e0
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000c4e4
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000c4e4
	.4byte 0x0000001F
	.4byte str_A_2B_jon_0000c4e8
	.4byte 0x00000027
	.4byte str_D_1_jon_0000c4f0
	.4byte 0x00000032
	.4byte str_A_1_jon_0000c4f4
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000c4f8
	.4byte 0x00000028
	.4byte str_W_1_jon_0000c4fc
	.4byte 0x00000038
	.4byte str_X_1_jon_0000c4dc
	.4byte 0x00000039
	.4byte str_X_1_jon_0000c4dc
	.4byte 0x00000041
	.4byte str_T_1_jon_0000c500
	.4byte 0x00000045
	.4byte str_S_1_jon_0000c4e0
.endobj pose_table

# .data:0x1CC | 0x4B13C | size: 0x20
.obj data_table, local
	.4byte 0x0000000B
	.4byte damage_fire_explosion_event
	.4byte 0x00000028
	.4byte avoid_fire_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1EC | 0x4B15C | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_phantom_jon_0000c460
	.4byte str_c_phantom_jon_0000c504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000109
	.4byte 0x00000010
	.4byte pose_table
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte str_c_phantom_jon_0000c504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x284 | 0x4B1F4 | size: 0xC0
.obj weapon_bubble_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000070
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03000000
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
.endobj weapon_bubble_attack

# .data:0x344 | 0x4B2B4 | size: 0xC0
.obj weapon_bubble_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_fire_attack

# .data:0x404 | 0x4B374 | size: 0x30
.obj entry_bubble, local
	.4byte unit_phantom_14_data_4AFC0
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
.endobj entry_bubble

# .data:0x434 | 0x4B3A4 | size: 0x9C
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
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x4D0 | 0x4B440 | size: 0x28
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

# .data:0x4F8 | 0x4B468 | size: 0x40
.obj avoid_fire_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_jon_0000c510
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000c4e8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_fire_event

# .data:0x538 | 0x4B4A8 | size: 0x19C
.obj damage_fire_explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000c4e8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0xFE363C80
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
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x0000000A
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
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_fire_explosion_event

# .data:0x6D4 | 0x4B644 | size: 0x18C
.obj friend_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_jon_0000c4e0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_bubble
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte bubble_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_SPLIT_jon_0000c528
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x0000001E
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x860 | 0x4B7D0 | size: 0xCC
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x92C | 0x4B89C | size: 0x670
.obj normal_attack_event, local
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
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_jon_0000c540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jon_0000c558
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000D
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_jon_0000c510
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_jon_0000c560
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_jon_0000c510
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_jon_0000c560
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
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_jon_0000c560
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE2_jon_0000c568
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jon_0000c558
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000019
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000c4e0
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0xF9C | 0x4BF0C | size: 0x5B4
.obj fire_attack_event, local
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_jon_0000c500
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000c4e0
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000c58c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_fire
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
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
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7CE6
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7C19
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7C19
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000c5a4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000c5bc
	.4byte str_kemuri_test_jon_0000c5c0
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_attack_event

# .data:0x1550 | 0x4C4C0 | size: 0x28
.obj all_fire_attackEvent_sub, local
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte eff_all_fire
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attackEvent_sub

# .data:0x1578 | 0x4C4E8 | size: 0x504
.obj all_fire_attack_event, local
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
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jon_0000c558
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_jon_0000c540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF1
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000c600
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_jon_0000c618
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte all_fire_attackEvent_sub
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000c58c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000c4e8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
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
	.4byte 0x00010004
	.4byte 0x00000061
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
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jon_0000c558
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_jon_0000c540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attack_event

# .data:0x1A7C | 0x4C9EC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1A94 | 0x4CA04 | size: 0x4
.obj gap_04_0004CA04_data, global
.hidden gap_04_0004CA04_data
	.4byte 0x00000000
.endobj gap_04_0004CA04_data

# 0x00000058..0x000000AC | size: 0x54
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x58 | size: 0x28
.obj step, local
	.skip 0x28
.endobj step

# .bss:0x28 | 0x80 | size: 0x28
.obj eff2, local
	.skip 0x28
.endobj eff2

# .bss:0x50 | 0xA8 | size: 0x4
.obj eff, local
	.skip 0x4
.endobj eff
