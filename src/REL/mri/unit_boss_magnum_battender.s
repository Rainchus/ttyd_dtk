.include "macros.inc"
.file "unit_boss_magnum_battender.o"

# 0x0001B544..0x0001BD40 | size: 0x7FC
.text
.balign 4

# .text:0x0 | 0x1B544 | size: 0xF8
.fn waku_main, local
/* 0001B544 0001B608  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001B548 0001B60C  7C 08 02 A6 */	mflr r0
/* 0001B54C 0001B610  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001B550 0001B614  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001B554 0001B618  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0001B558 0001B61C  7C 7D 1B 78 */	mr r29, r3
/* 0001B55C 0001B620  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0001B560 0001B624  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 0001B564 0001B628  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0001B568 0001B62C  4B FE 4C F1 */	bl evtGetValue
/* 0001B56C 0001B630  7C 7E 1B 78 */	mr r30, r3
/* 0001B570 0001B634  4B FE 4C E9 */	bl animGetPtr
/* 0001B574 0001B638  7F A3 EB 78 */	mr r3, r29
/* 0001B578 0001B63C  7F C4 F3 78 */	mr r4, r30
/* 0001B57C 0001B640  4B FE 4C DD */	bl BattleTransID
/* 0001B580 0001B644  7C 64 1B 78 */	mr r4, r3
/* 0001B584 0001B648  7F E3 FB 78 */	mr r3, r31
/* 0001B588 0001B64C  4B FE 4C D1 */	bl BattleGetUnitPtr
/* 0001B58C 0001B650  38 80 00 01 */	li r4, 0x1
/* 0001B590 0001B654  7C 7E 1B 78 */	mr r30, r3
/* 0001B594 0001B658  4B FE 4C C5 */	bl BtlUnit_GetPartsPtr
/* 0001B598 0001B65C  7C 7F 1B 78 */	mr r31, r3
/* 0001B59C 0001B660  7F C3 F3 78 */	mr r3, r30
/* 0001B5A0 0001B664  38 80 00 03 */	li r4, 0x3
/* 0001B5A4 0001B668  4B FE 4C B5 */	bl BtlUnit_GetPartsPtr
/* 0001B5A8 0001B66C  83 BF 01 C0 */	lwz r29, 0x1c0(r31)
/* 0001B5AC 0001B670  7C 7E 1B 78 */	mr r30, r3
/* 0001B5B0 0001B674  7F A3 EB 78 */	mr r3, r29
/* 0001B5B4 0001B678  4B FE 4C A5 */	bl animPoseWorldPositionEvalOn
/* 0001B5B8 0001B67C  7F A3 EB 78 */	mr r3, r29
/* 0001B5BC 0001B680  4B FE 4C 9D */	bl animPoseGetAnimBaseDataPtr
/* 0001B5C0 0001B684  7F A3 EB 78 */	mr r3, r29
/* 0001B5C4 0001B688  4B FE 4C 95 */	bl animPoseGetAnimPosePtr
/* 0001B5C8 0001B68C  3C 80 00 00 */	lis r4, str_locator17_mri_000266e8@ha
/* 0001B5CC 0001B690  7C 7F 1B 78 */	mr r31, r3
/* 0001B5D0 0001B694  38 84 00 00 */	addi r4, r4, str_locator17_mri_000266e8@l
/* 0001B5D4 0001B698  7F A3 EB 78 */	mr r3, r29
/* 0001B5D8 0001B69C  4B FE 4C 81 */	bl animPoseGetGroupIdx
/* 0001B5DC 0001B6A0  80 9F 01 5C */	lwz r4, 0x15c(r31)
/* 0001B5E0 0001B6A4  1C 03 00 0C */	mulli r0, r3, 0xc
/* 0001B5E4 0001B6A8  7F C3 F3 78 */	mr r3, r30
/* 0001B5E8 0001B6AC  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 0001B5EC 0001B6B0  7C 85 02 14 */	add r4, r5, r0
/* 0001B5F0 0001B6B4  7C 25 04 2E */	lfsx f1, r5, r0
/* 0001B5F4 0001B6B8  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 0001B5F8 0001B6BC  C0 64 00 08 */	lfs f3, 0x8(r4)
/* 0001B5FC 0001B6C0  4B FE 4C 5D */	bl BtlUnit_SetPartsPos
/* 0001B600 0001B6C4  38 60 00 04 */	li r3, 0x4
/* 0001B604 0001B6C8  4B FE 4C 55 */	bl camGetPtr
/* 0001B608 0001B6CC  3C 80 00 00 */	lis r4, zero_mri_000266f4@ha
/* 0001B60C 0001B6D0  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 0001B610 0001B6D4  C0 24 00 00 */	lfs f1, zero_mri_000266f4@l(r4)
/* 0001B614 0001B6D8  7F C3 F3 78 */	mr r3, r30
/* 0001B618 0001B6DC  FC 40 00 50 */	fneg f2, f0
/* 0001B61C 0001B6E0  FC 60 08 90 */	fmr f3, f1
/* 0001B620 0001B6E4  4B FE 4C 39 */	bl BtlUnit_SetPartsRotate
/* 0001B624 0001B6E8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0001B628 0001B6EC  38 60 00 02 */	li r3, 0x2
/* 0001B62C 0001B6F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001B630 0001B6F4  7C 08 03 A6 */	mtlr r0
/* 0001B634 0001B6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 0001B638 0001B6FC  4E 80 00 20 */	blr
.endfn waku_main

# .text:0xF8 | 0x1B63C | size: 0xD8
.fn arm_check, local
/* 0001B63C 0001B700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001B640 0001B704  7C 08 02 A6 */	mflr r0
/* 0001B644 0001B708  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001B648 0001B70C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001B64C 0001B710  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0001B650 0001B714  7C 7D 1B 78 */	mr r29, r3
/* 0001B654 0001B718  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0001B658 0001B71C  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 0001B65C 0001B720  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0001B660 0001B724  4B FE 4B F9 */	bl evtGetValue
/* 0001B664 0001B728  38 00 00 40 */	li r0, 0x40
/* 0001B668 0001B72C  38 A0 FF FF */	li r5, -0x1
/* 0001B66C 0001B730  38 E0 00 00 */	li r7, 0x0
/* 0001B670 0001B734  38 80 00 00 */	li r4, 0x0
/* 0001B674 0001B738  7C 09 03 A6 */	mtctr r0
.L_0001B678:
/* 0001B678 0001B73C  38 04 00 20 */	addi r0, r4, 0x20
/* 0001B67C 0001B740  7C DF 00 2E */	lwzx r6, r31, r0
/* 0001B680 0001B744  28 06 00 00 */	cmplwi r6, 0x0
/* 0001B684 0001B748  41 82 00 60 */	beq .L_0001B6E4
/* 0001B688 0001B74C  80 06 00 08 */	lwz r0, 0x8(r6)
/* 0001B68C 0001B750  2C 00 00 23 */	cmpwi r0, 0x23
/* 0001B690 0001B754  41 82 00 0C */	beq .L_0001B69C
/* 0001B694 0001B758  2C 00 00 7A */	cmpwi r0, 0x7a
/* 0001B698 0001B75C  40 82 00 4C */	bne .L_0001B6E4
.L_0001B69C:
/* 0001B69C 0001B760  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001B6A0 0001B764  40 82 00 20 */	bne .L_0001B6C0
/* 0001B6A4 0001B768  80 06 02 18 */	lwz r0, 0x218(r6)
/* 0001B6A8 0001B76C  2C 00 00 00 */	cmpwi r0, 0x0
/* 0001B6AC 0001B770  41 82 00 0C */	beq .L_0001B6B8
/* 0001B6B0 0001B774  2C 00 00 02 */	cmpwi r0, 0x2
/* 0001B6B4 0001B778  40 82 00 0C */	bne .L_0001B6C0
.L_0001B6B8:
/* 0001B6B8 0001B77C  7C E5 3B 78 */	mr r5, r7
/* 0001B6BC 0001B780  48 00 00 34 */	b .L_0001B6F0
.L_0001B6C0:
/* 0001B6C0 0001B784  2C 03 00 01 */	cmpwi r3, 0x1
/* 0001B6C4 0001B788  40 82 00 20 */	bne .L_0001B6E4
/* 0001B6C8 0001B78C  80 06 02 18 */	lwz r0, 0x218(r6)
/* 0001B6CC 0001B790  2C 00 00 01 */	cmpwi r0, 0x1
/* 0001B6D0 0001B794  41 82 00 0C */	beq .L_0001B6DC
/* 0001B6D4 0001B798  2C 00 00 03 */	cmpwi r0, 0x3
/* 0001B6D8 0001B79C  40 82 00 0C */	bne .L_0001B6E4
.L_0001B6DC:
/* 0001B6DC 0001B7A0  7C E5 3B 78 */	mr r5, r7
/* 0001B6E0 0001B7A4  48 00 00 10 */	b .L_0001B6F0
.L_0001B6E4:
/* 0001B6E4 0001B7A8  38 E7 00 01 */	addi r7, r7, 0x1
/* 0001B6E8 0001B7AC  38 84 00 04 */	addi r4, r4, 0x4
/* 0001B6EC 0001B7B0  42 00 FF 8C */	bdnz .L_0001B678
.L_0001B6F0:
/* 0001B6F0 0001B7B4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0001B6F4 0001B7B8  7F A3 EB 78 */	mr r3, r29
/* 0001B6F8 0001B7BC  4B FE 4B 61 */	bl evtSetValue
/* 0001B6FC 0001B7C0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0001B700 0001B7C4  38 60 00 02 */	li r3, 0x2
/* 0001B704 0001B7C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001B708 0001B7CC  7C 08 03 A6 */	mtlr r0
/* 0001B70C 0001B7D0  38 21 00 20 */	addi r1, r1, 0x20
/* 0001B710 0001B7D4  4E 80 00 20 */	blr
.endfn arm_check

# .text:0x1D0 | 0x1B714 | size: 0xA4
.fn eff_dead, local
/* 0001B714 0001B7D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0001B718 0001B7DC  7C 08 02 A6 */	mflr r0
/* 0001B71C 0001B7E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 0001B720 0001B7E4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 0001B724 0001B7E8  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 0001B728 0001B7EC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 0001B72C 0001B7F0  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 0001B730 0001B7F4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0001B734 0001B7F8  7C 7E 1B 78 */	mr r30, r3
/* 0001B738 0001B7FC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0001B73C 0001B800  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0001B740 0001B804  4B FE 4B 19 */	bl evtGetFloat
/* 0001B744 0001B808  FF E0 08 90 */	fmr f31, f1
/* 0001B748 0001B80C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0001B74C 0001B810  7F C3 F3 78 */	mr r3, r30
/* 0001B750 0001B814  4B FE 4B 09 */	bl evtGetFloat
/* 0001B754 0001B818  FF C0 08 90 */	fmr f30, f1
/* 0001B758 0001B81C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0001B75C 0001B820  7F C3 F3 78 */	mr r3, r30
/* 0001B760 0001B824  4B FE 4A F9 */	bl evtGetFloat
/* 0001B764 0001B828  FC 00 08 90 */	fmr f0, f1
/* 0001B768 0001B82C  3C 60 00 00 */	lis r3, float_1p5_mri_00026724@ha
/* 0001B76C 0001B830  C0 83 00 00 */	lfs f4, float_1p5_mri_00026724@l(r3)
/* 0001B770 0001B834  FC 20 F8 90 */	fmr f1, f31
/* 0001B774 0001B838  FC 40 F0 90 */	fmr f2, f30
/* 0001B778 0001B83C  38 60 00 00 */	li r3, 0x0
/* 0001B77C 0001B840  FC 60 00 90 */	fmr f3, f0
/* 0001B780 0001B844  38 80 03 E8 */	li r4, 0x3e8
/* 0001B784 0001B848  4B FE 4A D5 */	bl effAkariChargeN64Entry
/* 0001B788 0001B84C  3C 80 00 00 */	lis r4, eff_charge@ha
/* 0001B78C 0001B850  90 64 00 00 */	stw r3, eff_charge@l(r4)
/* 0001B790 0001B854  38 60 00 02 */	li r3, 0x2
/* 0001B794 0001B858  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 0001B798 0001B85C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 0001B79C 0001B860  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 0001B7A0 0001B864  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 0001B7A4 0001B868  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0001B7A8 0001B86C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0001B7AC 0001B870  7C 08 03 A6 */	mtlr r0
/* 0001B7B0 0001B874  38 21 00 30 */	addi r1, r1, 0x30
/* 0001B7B4 0001B878  4E 80 00 20 */	blr
.endfn eff_dead

# .text:0x274 | 0x1B7B8 | size: 0x30
.fn eff_dead_delete, local
/* 0001B7B8 0001B87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001B7BC 0001B880  7C 08 02 A6 */	mflr r0
/* 0001B7C0 0001B884  3C 60 00 00 */	lis r3, eff_charge@ha
/* 0001B7C4 0001B888  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001B7C8 0001B88C  38 63 00 00 */	addi r3, r3, eff_charge@l
/* 0001B7CC 0001B890  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0001B7D0 0001B894  4B FE 4A 89 */	bl effDelete
/* 0001B7D4 0001B898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001B7D8 0001B89C  38 60 00 02 */	li r3, 0x2
/* 0001B7DC 0001B8A0  7C 08 03 A6 */	mtlr r0
/* 0001B7E0 0001B8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 0001B7E4 0001B8A8  4E 80 00 20 */	blr
.endfn eff_dead_delete

# .text:0x2A4 | 0x1B7E8 | size: 0xC8
.fn eff_hokori, local
/* 0001B7E8 0001B8AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0001B7EC 0001B8B0  7C 08 02 A6 */	mflr r0
/* 0001B7F0 0001B8B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 0001B7F4 0001B8B8  39 61 00 30 */	addi r11, r1, 0x30
/* 0001B7F8 0001B8BC  4B FE 4A 61 */	bl _savefpr_29
/* 0001B7FC 0001B8C0  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 0001B800 0001B8C4  7C 7E 1B 78 */	mr r30, r3
/* 0001B804 0001B8C8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0001B808 0001B8CC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0001B80C 0001B8D0  4B FE 4A 4D */	bl evtGetFloat
/* 0001B810 0001B8D4  FF E0 08 90 */	fmr f31, f1
/* 0001B814 0001B8D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0001B818 0001B8DC  7F C3 F3 78 */	mr r3, r30
/* 0001B81C 0001B8E0  4B FE 4A 3D */	bl evtGetFloat
/* 0001B820 0001B8E4  FF C0 08 90 */	fmr f30, f1
/* 0001B824 0001B8E8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0001B828 0001B8EC  7F C3 F3 78 */	mr r3, r30
/* 0001B82C 0001B8F0  4B FE 4A 2D */	bl evtGetFloat
/* 0001B830 0001B8F4  FF A0 08 90 */	fmr f29, f1
/* 0001B834 0001B8F8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0001B838 0001B8FC  7F C3 F3 78 */	mr r3, r30
/* 0001B83C 0001B900  4B FE 4A 1D */	bl evtGetValue
/* 0001B840 0001B904  FC 20 F8 90 */	fmr f1, f31
/* 0001B844 0001B908  7C 64 1B 78 */	mr r4, r3
/* 0001B848 0001B90C  FC 40 F0 90 */	fmr f2, f30
/* 0001B84C 0001B910  38 60 00 00 */	li r3, 0x0
/* 0001B850 0001B914  FC 60 E8 90 */	fmr f3, f29
/* 0001B854 0001B918  4B FE 4A 05 */	bl effHokoriN64Entry
/* 0001B858 0001B91C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0001B85C 0001B920  38 A0 00 FF */	li r5, 0xff
/* 0001B860 0001B924  38 00 00 00 */	li r0, 0x0
/* 0001B864 0001B928  90 A4 00 30 */	stw r5, 0x30(r4)
/* 0001B868 0001B92C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0001B86C 0001B930  90 A4 00 34 */	stw r5, 0x34(r4)
/* 0001B870 0001B934  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0001B874 0001B938  90 A4 00 38 */	stw r5, 0x38(r4)
/* 0001B878 0001B93C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0001B87C 0001B940  90 04 00 3C */	stw r0, 0x3c(r4)
/* 0001B880 0001B944  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0001B884 0001B948  90 04 00 40 */	stw r0, 0x40(r4)
/* 0001B888 0001B94C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0001B88C 0001B950  38 60 00 02 */	li r3, 0x2
/* 0001B890 0001B954  90 04 00 44 */	stw r0, 0x44(r4)
/* 0001B894 0001B958  39 61 00 30 */	addi r11, r1, 0x30
/* 0001B898 0001B95C  4B FE 49 C1 */	bl _restfpr_29
/* 0001B89C 0001B960  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 0001B8A0 0001B964  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0001B8A4 0001B968  7C 08 03 A6 */	mtlr r0
/* 0001B8A8 0001B96C  38 21 00 30 */	addi r1, r1, 0x30
/* 0001B8AC 0001B970  4E 80 00 20 */	blr
.endfn eff_hokori

# .text:0x36C | 0x1B8B0 | size: 0x94
.fn arm_init, local
/* 0001B8B0 0001B974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0001B8B4 0001B978  7C 08 02 A6 */	mflr r0
/* 0001B8B8 0001B97C  3C 80 00 00 */	lis r4, work_2@ha
/* 0001B8BC 0001B980  3C 60 00 00 */	lis r3, vec3_mri_00026950@ha
/* 0001B8C0 0001B984  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001B8C4 0001B988  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0001B8C8 0001B98C  3B A4 00 00 */	addi r29, r4, work_2@l
/* 0001B8CC 0001B990  3B 80 00 00 */	li r28, 0x0
/* 0001B8D0 0001B994  3B C3 00 00 */	addi r30, r3, vec3_mri_00026950@l
/* 0001B8D4 0001B998  3B E0 00 00 */	li r31, 0x0
.L_0001B8D8:
/* 0001B8D8 0001B99C  38 60 00 24 */	li r3, 0x24
/* 0001B8DC 0001B9A0  4B FE 49 7D */	bl BattleAlloc
/* 0001B8E0 0001B9A4  7C 7D F9 2E */	stwx r3, r29, r31
/* 0001B8E4 0001B9A8  3B 9C 00 01 */	addi r28, r28, 0x1
/* 0001B8E8 0001B9AC  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 0001B8EC 0001B9B0  2C 1C 00 02 */	cmpwi r28, 0x2
/* 0001B8F0 0001B9B4  7C BD F8 2E */	lwzx r5, r29, r31
/* 0001B8F4 0001B9B8  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 0001B8F8 0001B9BC  90 65 00 0C */	stw r3, 0xc(r5)
/* 0001B8FC 0001B9C0  90 05 00 10 */	stw r0, 0x10(r5)
/* 0001B900 0001B9C4  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 0001B904 0001B9C8  90 05 00 14 */	stw r0, 0x14(r5)
/* 0001B908 0001B9CC  7C 9D F8 2E */	lwzx r4, r29, r31
/* 0001B90C 0001B9D0  3B FF 00 04 */	addi r31, r31, 0x4
/* 0001B910 0001B9D4  80 65 00 0C */	lwz r3, 0xc(r5)
/* 0001B914 0001B9D8  80 05 00 10 */	lwz r0, 0x10(r5)
/* 0001B918 0001B9DC  90 64 00 00 */	stw r3, 0x0(r4)
/* 0001B91C 0001B9E0  90 04 00 04 */	stw r0, 0x4(r4)
/* 0001B920 0001B9E4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 0001B924 0001B9E8  90 04 00 08 */	stw r0, 0x8(r4)
/* 0001B928 0001B9EC  41 80 FF B0 */	blt .L_0001B8D8
/* 0001B92C 0001B9F0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0001B930 0001B9F4  38 60 00 02 */	li r3, 0x2
/* 0001B934 0001B9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0001B938 0001B9FC  7C 08 03 A6 */	mtlr r0
/* 0001B93C 0001BA00  38 21 00 20 */	addi r1, r1, 0x20
/* 0001B940 0001BA04  4E 80 00 20 */	blr
.endfn arm_init

# .text:0x400 | 0x1B944 | size: 0x70
.fn arm_init2, local
/* 0001B944 0001BA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001B948 0001BA0C  7C 08 02 A6 */	mflr r0
/* 0001B94C 0001BA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001B950 0001BA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0001B954 0001BA18  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001B958 0001BA1C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001B95C 0001BA20  4B FE 48 FD */	bl evtGetValue
/* 0001B960 0001BA24  3C 80 00 00 */	lis r4, zero_mri_000266f4@ha
/* 0001B964 0001BA28  3C C0 00 00 */	lis r6, work_2@ha
/* 0001B968 0001BA2C  C0 24 00 00 */	lfs f1, zero_mri_000266f4@l(r4)
/* 0001B96C 0001BA30  3C A0 00 00 */	lis r5, float_neg1000_mri_0002695c@ha
/* 0001B970 0001BA34  3C 80 00 00 */	lis r4, float_1_mri_00026960@ha
/* 0001B974 0001BA38  54 60 10 3A */	slwi r0, r3, 2
/* 0001B978 0001BA3C  38 C6 00 00 */	addi r6, r6, work_2@l
/* 0001B97C 0001BA40  FC 60 08 90 */	fmr f3, f1
/* 0001B980 0001BA44  C0 84 00 00 */	lfs f4, float_1_mri_00026960@l(r4)
/* 0001B984 0001BA48  38 60 00 03 */	li r3, 0x3
/* 0001B988 0001BA4C  7F E6 00 2E */	lwzx r31, r6, r0
/* 0001B98C 0001BA50  38 80 03 E8 */	li r4, 0x3e8
/* 0001B990 0001BA54  C0 45 00 00 */	lfs f2, float_neg1000_mri_0002695c@l(r5)
/* 0001B994 0001BA58  4B FE 48 C5 */	bl effBattenEntry
/* 0001B998 0001BA5C  90 7F 00 20 */	stw r3, 0x20(r31)
/* 0001B99C 0001BA60  38 60 00 02 */	li r3, 0x2
/* 0001B9A0 0001BA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001B9A4 0001BA68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0001B9A8 0001BA6C  7C 08 03 A6 */	mtlr r0
/* 0001B9AC 0001BA70  38 21 00 10 */	addi r1, r1, 0x10
/* 0001B9B0 0001BA74  4E 80 00 20 */	blr
.endfn arm_init2

# .text:0x470 | 0x1B9B4 | size: 0x330
.fn arm_main, local
/* 0001B9B4 0001BA78  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 0001B9B8 0001BA7C  7C 08 02 A6 */	mflr r0
/* 0001B9BC 0001BA80  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001B9C0 0001BA84  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 0001B9C4 0001BA88  BF 61 00 AC */	stmw r27, 0xac(r1)
/* 0001B9C8 0001BA8C  7C 7B 1B 78 */	mr r27, r3
/* 0001B9CC 0001BA90  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 0001B9D0 0001BA94  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 0001B9D4 0001BA98  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0001B9D8 0001BA9C  4B FE 48 81 */	bl evtGetValue
/* 0001B9DC 0001BAA0  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 0001B9E0 0001BAA4  7C 7C 1B 78 */	mr r28, r3
/* 0001B9E4 0001BAA8  7F 63 DB 78 */	mr r3, r27
/* 0001B9E8 0001BAAC  4B FE 48 71 */	bl evtGetValue
/* 0001B9EC 0001BAB0  3C 80 00 00 */	lis r4, work_2@ha
/* 0001B9F0 0001BAB4  54 60 10 3A */	slwi r0, r3, 2
/* 0001B9F4 0001BAB8  38 64 00 00 */	addi r3, r4, work_2@l
/* 0001B9F8 0001BABC  7F C3 00 2E */	lwzx r30, r3, r0
/* 0001B9FC 0001BAC0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 0001BA00 0001BAC4  28 03 00 00 */	cmplwi r3, 0x0
/* 0001BA04 0001BAC8  40 82 00 0C */	bne .L_0001BA10
/* 0001BA08 0001BACC  38 60 00 02 */	li r3, 0x2
/* 0001BA0C 0001BAD0  48 00 02 C4 */	b .L_0001BCD0
.L_0001BA10:
/* 0001BA10 0001BAD4  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 0001BA14 0001BAD8  7F 63 DB 78 */	mr r3, r27
/* 0001BA18 0001BADC  7F 84 E3 78 */	mr r4, r28
/* 0001BA1C 0001BAE0  4B FE 48 3D */	bl BattleTransID
/* 0001BA20 0001BAE4  7C 64 1B 78 */	mr r4, r3
/* 0001BA24 0001BAE8  7F E3 FB 78 */	mr r3, r31
/* 0001BA28 0001BAEC  4B FE 48 31 */	bl BattleGetUnitPtr
/* 0001BA2C 0001BAF0  38 81 00 28 */	addi r4, r1, 0x28
/* 0001BA30 0001BAF4  7C 7F 1B 78 */	mr r31, r3
/* 0001BA34 0001BAF8  38 A1 00 24 */	addi r5, r1, 0x24
/* 0001BA38 0001BAFC  38 C1 00 20 */	addi r6, r1, 0x20
/* 0001BA3C 0001BB00  4B FE 48 1D */	bl BtlUnit_GetPos
/* 0001BA40 0001BB04  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 0001BA44 0001BB08  3C 60 00 00 */	lis r3, vec3_mri_00026964@ha
/* 0001BA48 0001BB0C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 0001BA4C 0001BB10  38 83 00 00 */	addi r4, r3, vec3_mri_00026964@l
/* 0001BA50 0001BB14  90 BE 00 00 */	stw r5, 0x0(r30)
/* 0001BA54 0001BB18  90 1E 00 04 */	stw r0, 0x4(r30)
/* 0001BA58 0001BB1C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 0001BA5C 0001BB20  90 1E 00 08 */	stw r0, 0x8(r30)
/* 0001BA60 0001BB24  80 04 00 00 */	lwz r0, 0x0(r4)
/* 0001BA64 0001BB28  80 64 00 04 */	lwz r3, 0x4(r4)
/* 0001BA68 0001BB2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 0001BA6C 0001BB30  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 0001BA70 0001BB34  80 04 00 08 */	lwz r0, 0x8(r4)
/* 0001BA74 0001BB38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 0001BA78 0001BB3C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 0001BA7C 0001BB40  90 61 00 30 */	stw r3, 0x30(r1)
/* 0001BA80 0001BB44  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 0001BA84 0001BB48  90 01 00 34 */	stw r0, 0x34(r1)
/* 0001BA88 0001BB4C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 0001BA8C 0001BB50  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 0001BA90 0001BB54  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 0001BA94 0001BB58  80 61 00 30 */	lwz r3, 0x30(r1)
/* 0001BA98 0001BB5C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 0001BA9C 0001BB60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0001BAA0 0001BB64  90 7E 00 10 */	stw r3, 0x10(r30)
/* 0001BAA4 0001BB68  90 1E 00 14 */	stw r0, 0x14(r30)
/* 0001BAA8 0001BB6C  80 7F 02 90 */	lwz r3, 0x290(r31)
/* 0001BAAC 0001BB70  4B FE 47 AD */	bl evtCheckID
/* 0001BAB0 0001BB74  2C 03 00 01 */	cmpwi r3, 0x1
/* 0001BAB4 0001BB78  41 82 00 AC */	beq .L_0001BB60
/* 0001BAB8 0001BB7C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 0001BABC 0001BB80  3C 60 00 00 */	lis r3, zero_mri_000266f4@ha
/* 0001BAC0 0001BB84  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 0001BAC4 0001BB88  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 0001BAC8 0001BB8C  EC 63 00 28 */	fsubs f3, f3, f0
/* 0001BACC 0001BB90  C0 3E 00 04 */	lfs f1, 0x4(r30)
/* 0001BAD0 0001BB94  C0 03 00 00 */	lfs f0, zero_mri_000266f4@l(r3)
/* 0001BAD4 0001BB98  EC 22 08 28 */	fsubs f1, f2, f1
/* 0001BAD8 0001BB9C  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 0001BADC 0001BBA0  41 82 00 80 */	beq .L_0001BB5C
/* 0001BAE0 0001BBA4  EC 21 18 24 */	fdivs f1, f1, f3
/* 0001BAE4 0001BBA8  4B FE 47 75 */	bl atan
/* 0001BAE8 0001BBAC  3C 80 00 00 */	lis r4, float_360_mri_0002697c@ha
/* 0001BAEC 0001BBB0  FC 40 08 18 */	frsp f2, f1
/* 0001BAF0 0001BBB4  C0 04 00 00 */	lfs f0, float_360_mri_0002697c@l(r4)
/* 0001BAF4 0001BBB8  3C 60 00 00 */	lis r3, float_6p2832_mri_00026980@ha
/* 0001BAF8 0001BBBC  38 83 00 00 */	addi r4, r3, float_6p2832_mri_00026980@l
/* 0001BAFC 0001BBC0  38 A1 00 18 */	addi r5, r1, 0x18
/* 0001BB00 0001BBC4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 0001BB04 0001BBC8  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0001BB08 0001BBCC  3C 60 00 00 */	lis r3, float_3_mri_00026984@ha
/* 0001BB0C 0001BBD0  38 83 00 00 */	addi r4, r3, float_3_mri_00026984@l
/* 0001BB10 0001BBD4  38 C1 00 14 */	addi r6, r1, 0x14
/* 0001BB14 0001BBD8  EC 22 08 24 */	fdivs f1, f2, f1
/* 0001BB18 0001BBDC  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 0001BB1C 0001BBE0  7F E3 FB 78 */	mr r3, r31
/* 0001BB20 0001BBE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 0001BB24 0001BBE8  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 0001BB28 0001BBEC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 0001BB2C 0001BBF0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 0001BB30 0001BBF4  EC 21 10 28 */	fsubs f1, f1, f2
/* 0001BB34 0001BBF8  EC 01 00 24 */	fdivs f0, f1, f0
/* 0001BB38 0001BBFC  EC 02 00 2A */	fadds f0, f2, f0
/* 0001BB3C 0001BC00  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 0001BB40 0001BC04  4B FE 47 19 */	bl BtlUnit_GetRotate
/* 0001BB44 0001BC08  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 0001BB48 0001BC0C  7F E3 FB 78 */	mr r3, r31
/* 0001BB4C 0001BC10  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 0001BB50 0001BC14  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 0001BB54 0001BC18  4B FE 47 05 */	bl BtlUnit_SetRotate
/* 0001BB58 0001BC1C  48 00 00 08 */	b .L_0001BB60
.L_0001BB5C:
/* 0001BB5C 0001BC20  D0 1E 00 1C */	stfs f0, 0x1c(r30)
.L_0001BB60:
/* 0001BB60 0001BC24  7F E3 FB 78 */	mr r3, r31
/* 0001BB64 0001BC28  38 81 00 10 */	addi r4, r1, 0x10
/* 0001BB68 0001BC2C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0001BB6C 0001BC30  38 C1 00 08 */	addi r6, r1, 0x8
/* 0001BB70 0001BC34  4B FE 46 E9 */	bl BtlUnit_GetBaseRotate
/* 0001BB74 0001BC38  7F E3 FB 78 */	mr r3, r31
/* 0001BB78 0001BC3C  38 81 00 1C */	addi r4, r1, 0x1c
/* 0001BB7C 0001BC40  38 A1 00 18 */	addi r5, r1, 0x18
/* 0001BB80 0001BC44  38 C1 00 14 */	addi r6, r1, 0x14
/* 0001BB84 0001BC48  4B FE 46 D5 */	bl BtlUnit_GetRotate
/* 0001BB88 0001BC4C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 0001BB8C 0001BC50  3C 60 00 00 */	lis r3, float_1p5708_mri_00026988@ha
/* 0001BB90 0001BC54  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0001BB94 0001BC58  38 A3 00 00 */	addi r5, r3, float_1p5708_mri_00026988@l
/* 0001BB98 0001BC5C  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 0001BB9C 0001BC60  38 61 00 74 */	addi r3, r1, 0x74
/* 0001BBA0 0001BC64  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 0001BBA4 0001BC68  EC 81 00 2A */	fadds f4, f1, f0
/* 0001BBA8 0001BC6C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 0001BBAC 0001BC70  38 80 00 78 */	li r4, 0x78
/* 0001BBB0 0001BC74  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0001BBB4 0001BC78  EC 43 10 2A */	fadds f2, f3, f2
/* 0001BBB8 0001BC7C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 0001BBBC 0001BC80  EC 01 00 2A */	fadds f0, f1, f0
/* 0001BBC0 0001BC84  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0001BBC4 0001BC88  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 0001BBC8 0001BC8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 0001BBCC 0001BC90  4B FE 46 8D */	bl PSMTXRotRad
/* 0001BBD0 0001BC94  3C 60 00 00 */	lis r3, float_deg2rad_mri_0002698c@ha
/* 0001BBD4 0001BC98  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 0001BBD8 0001BC9C  38 83 00 00 */	addi r4, r3, float_deg2rad_mri_0002698c@l
/* 0001BBDC 0001BCA0  38 61 00 44 */	addi r3, r1, 0x44
/* 0001BBE0 0001BCA4  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0001BBE4 0001BCA8  38 80 00 79 */	li r4, 0x79
/* 0001BBE8 0001BCAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 0001BBEC 0001BCB0  4B FE 46 6D */	bl PSMTXRotRad
/* 0001BBF0 0001BCB4  38 81 00 74 */	addi r4, r1, 0x74
/* 0001BBF4 0001BCB8  38 61 00 44 */	addi r3, r1, 0x44
/* 0001BBF8 0001BCBC  7C 85 23 78 */	mr r5, r4
/* 0001BBFC 0001BCC0  4B FE 46 5D */	bl PSMTXConcat
/* 0001BC00 0001BCC4  3C 60 00 00 */	lis r3, float_deg2rad_mri_0002698c@ha
/* 0001BC04 0001BCC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 0001BC08 0001BCCC  38 83 00 00 */	addi r4, r3, float_deg2rad_mri_0002698c@l
/* 0001BC0C 0001BCD0  38 61 00 44 */	addi r3, r1, 0x44
/* 0001BC10 0001BCD4  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0001BC14 0001BCD8  38 80 00 78 */	li r4, 0x78
/* 0001BC18 0001BCDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 0001BC1C 0001BCE0  4B FE 46 3D */	bl PSMTXRotRad
/* 0001BC20 0001BCE4  38 81 00 74 */	addi r4, r1, 0x74
/* 0001BC24 0001BCE8  38 61 00 44 */	addi r3, r1, 0x44
/* 0001BC28 0001BCEC  7C 85 23 78 */	mr r5, r4
/* 0001BC2C 0001BCF0  4B FE 46 2D */	bl PSMTXConcat
/* 0001BC30 0001BCF4  3C 60 00 00 */	lis r3, float_deg2rad_mri_0002698c@ha
/* 0001BC34 0001BCF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 0001BC38 0001BCFC  38 83 00 00 */	addi r4, r3, float_deg2rad_mri_0002698c@l
/* 0001BC3C 0001BD00  38 61 00 44 */	addi r3, r1, 0x44
/* 0001BC40 0001BD04  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0001BC44 0001BD08  38 80 00 7A */	li r4, 0x7a
/* 0001BC48 0001BD0C  EC 21 00 32 */	fmuls f1, f1, f0
/* 0001BC4C 0001BD10  4B FE 46 0D */	bl PSMTXRotRad
/* 0001BC50 0001BD14  38 81 00 74 */	addi r4, r1, 0x74
/* 0001BC54 0001BD18  38 61 00 44 */	addi r3, r1, 0x44
/* 0001BC58 0001BD1C  7C 85 23 78 */	mr r5, r4
/* 0001BC5C 0001BD20  4B FE 45 FD */	bl PSMTXConcat
/* 0001BC60 0001BD24  38 61 00 74 */	addi r3, r1, 0x74
/* 0001BC64 0001BD28  38 9D 00 28 */	addi r4, r29, 0x28
/* 0001BC68 0001BD2C  4B FE 45 F1 */	bl PSMTXCopy
/* 0001BC6C 0001BD30  3C 60 00 00 */	lis r3, vec3_mri_00026970@ha
/* 0001BC70 0001BD34  38 81 00 38 */	addi r4, r1, 0x38
/* 0001BC74 0001BD38  39 03 00 00 */	addi r8, r3, vec3_mri_00026970@l
/* 0001BC78 0001BD3C  38 61 00 74 */	addi r3, r1, 0x74
/* 0001BC7C 0001BD40  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 0001BC80 0001BD44  7C 85 23 78 */	mr r5, r4
/* 0001BC84 0001BD48  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 0001BC88 0001BD4C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 0001BC8C 0001BD50  90 E1 00 38 */	stw r7, 0x38(r1)
/* 0001BC90 0001BD54  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 0001BC94 0001BD58  90 01 00 40 */	stw r0, 0x40(r1)
/* 0001BC98 0001BD5C  4B FE 45 C1 */	bl PSMTXMultVec
/* 0001BC9C 0001BD60  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 0001BCA0 0001BD64  38 60 00 02 */	li r3, 0x2
/* 0001BCA4 0001BD68  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 0001BCA8 0001BD6C  EC 01 00 2A */	fadds f0, f1, f0
/* 0001BCAC 0001BD70  D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 0001BCB0 0001BD74  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 0001BCB4 0001BD78  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 0001BCB8 0001BD7C  EC 01 00 2A */	fadds f0, f1, f0
/* 0001BCBC 0001BD80  D0 1D 00 08 */	stfs f0, 0x8(r29)
/* 0001BCC0 0001BD84  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 0001BCC4 0001BD88  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 0001BCC8 0001BD8C  EC 01 00 2A */	fadds f0, f1, f0
/* 0001BCCC 0001BD90  D0 1D 00 0C */	stfs f0, 0xc(r29)
.L_0001BCD0:
/* 0001BCD0 0001BD94  BB 61 00 AC */	lmw r27, 0xac(r1)
/* 0001BCD4 0001BD98  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 0001BCD8 0001BD9C  7C 08 03 A6 */	mtlr r0
/* 0001BCDC 0001BDA0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 0001BCE0 0001BDA4  4E 80 00 20 */	blr
.endfn arm_main

# .text:0x7A0 | 0x1BCE4 | size: 0x5C
.fn arm_end, local
/* 0001BCE4 0001BDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0001BCE8 0001BDAC  7C 08 02 A6 */	mflr r0
/* 0001BCEC 0001BDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 0001BCF0 0001BDB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0001BCF4 0001BDB8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001BCF8 0001BDBC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001BCFC 0001BDC0  4B FE 45 5D */	bl evtGetValue
/* 0001BD00 0001BDC4  3C 80 00 00 */	lis r4, work_2@ha
/* 0001BD04 0001BDC8  54 60 10 3A */	slwi r0, r3, 2
/* 0001BD08 0001BDCC  38 64 00 00 */	addi r3, r4, work_2@l
/* 0001BD0C 0001BDD0  7F E3 00 2E */	lwzx r31, r3, r0
/* 0001BD10 0001BDD4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 0001BD14 0001BDD8  28 03 00 00 */	cmplwi r3, 0x0
/* 0001BD18 0001BDDC  41 82 00 10 */	beq .L_0001BD28
/* 0001BD1C 0001BDE0  4B FE 45 3D */	bl effDelete
/* 0001BD20 0001BDE4  38 00 00 00 */	li r0, 0x0
/* 0001BD24 0001BDE8  90 1F 00 20 */	stw r0, 0x20(r31)
.L_0001BD28:
/* 0001BD28 0001BDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001BD2C 0001BDF0  38 60 00 02 */	li r3, 0x2
/* 0001BD30 0001BDF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0001BD34 0001BDF8  7C 08 03 A6 */	mtlr r0
/* 0001BD38 0001BDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 0001BD3C 0001BE00  4E 80 00 20 */	blr
.endfn arm_end

# 0x00005F40..0x000062F0 | size: 0x3B0
.rodata
.balign 8

# .rodata:0x0 | 0x5F40 | size: 0x18
.obj str_btl_un_magnum_batten_mri_000265e0, local
	.string "btl_un_magnum_battender"
.endobj str_btl_un_magnum_batten_mri_000265e0

# .rodata:0x18 | 0x5F58 | size: 0x17
.obj str_SFX_BOSS_MBTN_DAMAGE_mri_000265f8, local
	.string "SFX_BOSS_MBTN_DAMAGED1"
.endobj str_SFX_BOSS_MBTN_DAMAGE_mri_000265f8

# .rodata:0x2F | 0x5F6F | size: 0x1
.obj gap_03_00005F6F_rodata, global
.hidden gap_03_00005F6F_rodata
	.byte 0x00
.endobj gap_03_00005F6F_rodata

# .rodata:0x30 | 0x5F70 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_00026610, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_00026610

# .rodata:0x45 | 0x5F85 | size: 0x3
.obj gap_03_00005F85_rodata, global
.hidden gap_03_00005F85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F85_rodata

# .rodata:0x48 | 0x5F88 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_00026628, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_00026628

# .rodata:0x5C | 0x5F9C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_0002663c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_0002663c

# .rodata:0x75 | 0x5FB5 | size: 0x3
.obj gap_03_00005FB5_rodata, global
.hidden gap_03_00005FB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FB5_rodata

# .rodata:0x78 | 0x5FB8 | size: 0x8
.obj str_MGN_S_1_mri_00026658, local
	.string "MGN_S_1"
.endobj str_MGN_S_1_mri_00026658

# .rodata:0x80 | 0x5FC0 | size: 0x9
.obj str_MGN_2D_1_mri_00026660, local
	.string "MGN_2D_1"
.endobj str_MGN_2D_1_mri_00026660

# .rodata:0x89 | 0x5FC9 | size: 0x3
.obj gap_03_00005FC9_rodata, global
.hidden gap_03_00005FC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005FC9_rodata

# .rodata:0x8C | 0x5FCC | size: 0x8
.obj str_MGN_X_1_mri_0002666c, local
	.string "MGN_X_1"
.endobj str_MGN_X_1_mri_0002666c

# .rodata:0x94 | 0x5FD4 | size: 0x8
.obj str_MGN_Q_1_mri_00026674, local
	.string "MGN_Q_1"
.endobj str_MGN_Q_1_mri_00026674

# .rodata:0x9C | 0x5FDC | size: 0x8
.obj str_MGN_D_1_mri_0002667c, local
	.string "MGN_D_1"
.endobj str_MGN_D_1_mri_0002667c

# .rodata:0xA4 | 0x5FE4 | size: 0x8
.obj str_MGN_W_1_mri_00026684, local
	.string "MGN_W_1"
.endobj str_MGN_W_1_mri_00026684

# .rodata:0xAC | 0x5FEC | size: 0x8
.obj str_MGN_W_2_mri_0002668c, local
	.string "MGN_W_2"
.endobj str_MGN_W_2_mri_0002668c

# .rodata:0xB4 | 0x5FF4 | size: 0x8
.obj str_MGN_T_1_mri_00026694, local
	.string "MGN_T_1"
.endobj str_MGN_T_1_mri_00026694

# .rodata:0xBC | 0x5FFC | size: 0x8
.obj str_MGN_S_2_mri_0002669c, local
	.string "MGN_S_2"
.endobj str_MGN_S_2_mri_0002669c

# .rodata:0xC4 | 0x6004 | size: 0x9
.obj str_MGN_2D_2_mri_000266a4, local
	.string "MGN_2D_2"
.endobj str_MGN_2D_2_mri_000266a4

# .rodata:0xCD | 0x600D | size: 0x3
.obj gap_03_0000600D_rodata, global
.hidden gap_03_0000600D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000600D_rodata

# .rodata:0xD0 | 0x6010 | size: 0x8
.obj str_MGN_X_2_mri_000266b0, local
	.string "MGN_X_2"
.endobj str_MGN_X_2_mri_000266b0

# .rodata:0xD8 | 0x6018 | size: 0x8
.obj str_MGN_Q_2_mri_000266b8, local
	.string "MGN_Q_2"
.endobj str_MGN_Q_2_mri_000266b8

# .rodata:0xE0 | 0x6020 | size: 0x8
.obj str_MGN_D_2_mri_000266c0, local
	.string "MGN_D_2"
.endobj str_MGN_D_2_mri_000266c0

# .rodata:0xE8 | 0x6028 | size: 0x8
.obj str_MGN_W_3_mri_000266c8, local
	.string "MGN_W_3"
.endobj str_MGN_W_3_mri_000266c8

# .rodata:0xF0 | 0x6030 | size: 0x8
.obj str_MGN_T_2_mri_000266d0, local
	.string "MGN_T_2"
.endobj str_MGN_T_2_mri_000266d0

# .rodata:0xF8 | 0x6038 | size: 0xD
.obj str_c_mb_robo_1b_mri_000266d8, local
	.string "c_mb_robo_1b"
.endobj str_c_mb_robo_1b_mri_000266d8

# .rodata:0x105 | 0x6045 | size: 0x3
.obj gap_03_00006045_rodata, global
.hidden gap_03_00006045_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006045_rodata

# .rodata:0x108 | 0x6048 | size: 0xA
.obj str_locator17_mri_000266e8, local
	.string "locator17"
.endobj str_locator17_mri_000266e8
	.2byte 0x0000

# .rodata:0x114 | 0x6054 | size: 0x4
.obj zero_mri_000266f4, local
	.float 0
.endobj zero_mri_000266f4

# .rodata:0x118 | 0x6058 | size: 0x8
.obj str_MGN_L_1_mri_000266f8, local
	.string "MGN_L_1"
.endobj str_MGN_L_1_mri_000266f8

# .rodata:0x120 | 0x6060 | size: 0x14
.obj str_SFX_BOSS_MBTN_MOVE1_mri_00026700, local
	.string "SFX_BOSS_MBTN_MOVE1"
.endobj str_SFX_BOSS_MBTN_MOVE1_mri_00026700

# .rodata:0x134 | 0x6074 | size: 0x10
.obj str_stg2_mri_e24_15_mri_00026714, local
	.string "stg2_mri_e24_15"
.endobj str_stg2_mri_e24_15_mri_00026714

# .rodata:0x144 | 0x6084 | size: 0x4
.obj float_1p5_mri_00026724, local
	.float 1.5
.endobj float_1p5_mri_00026724

# .rodata:0x148 | 0x6088 | size: 0x10
.obj str_stg2_mri_e24_16_mri_00026728, local
	.string "stg2_mri_e24_16"
.endobj str_stg2_mri_e24_16_mri_00026728

# .rodata:0x158 | 0x6098 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_mri_00026738, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_mri_00026738

# .rodata:0x16D | 0x60AD | size: 0x3
.obj gap_03_000060AD_rodata, global
.hidden gap_03_000060AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060AD_rodata

# .rodata:0x170 | 0x60B0 | size: 0x1
.obj zero_mri_00026750, local
	.byte 0x00
.endobj zero_mri_00026750

# .rodata:0x171 | 0x60B1 | size: 0x3
.obj gap_03_000060B1_rodata, global
.hidden gap_03_000060B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000060B1_rodata

# .rodata:0x174 | 0x60B4 | size: 0xB
.obj str_star_point_mri_00026754, local
	.string "star_point"
.endobj str_star_point_mri_00026754

# .rodata:0x17F | 0x60BF | size: 0x1
.obj gap_03_000060BF_rodata, global
.hidden gap_03_000060BF_rodata
	.byte 0x00
.endobj gap_03_000060BF_rodata

# .rodata:0x180 | 0x60C0 | size: 0x10
.obj str_stg2_mri_e24_09_mri_00026760, local
	.string "stg2_mri_e24_09"
.endobj str_stg2_mri_e24_09_mri_00026760

# .rodata:0x190 | 0x60D0 | size: 0x10
.obj str_stg2_mri_e24_10_mri_00026770, local
	.string "stg2_mri_e24_10"
.endobj str_stg2_mri_e24_10_mri_00026770

# .rodata:0x1A0 | 0x60E0 | size: 0x10
.obj str_stg2_mri_e24_11_mri_00026780, local
	.string "stg2_mri_e24_11"
.endobj str_stg2_mri_e24_11_mri_00026780

# .rodata:0x1B0 | 0x60F0 | size: 0x16
.obj str_SFX_BOSS_MBTN_LEG_UP_mri_00026790, local
	.string "SFX_BOSS_MBTN_LEG_UP1"
.endobj str_SFX_BOSS_MBTN_LEG_UP_mri_00026790

# .rodata:0x1C6 | 0x6106 | size: 0x2
.obj gap_03_00006106_rodata, global
.hidden gap_03_00006106_rodata
	.2byte 0x0000
.endobj gap_03_00006106_rodata

# .rodata:0x1C8 | 0x6108 | size: 0x9
.obj str_MGN_A2_1_mri_000267a8, local
	.string "MGN_A2_1"
.endobj str_MGN_A2_1_mri_000267a8

# .rodata:0x1D1 | 0x6111 | size: 0x3
.obj gap_03_00006111_rodata, global
.hidden gap_03_00006111_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006111_rodata

# .rodata:0x1D4 | 0x6114 | size: 0x1B
.obj str_SFX_BOSS_MBTN_LEG_PE_mri_000267b4, local
	.string "SFX_BOSS_MBTN_LEG_PERPLEX1"
.endobj str_SFX_BOSS_MBTN_LEG_PE_mri_000267b4

# .rodata:0x1EF | 0x612F | size: 0x1
.obj gap_03_0000612F_rodata, global
.hidden gap_03_0000612F_rodata
	.byte 0x00
.endobj gap_03_0000612F_rodata

# .rodata:0x1F0 | 0x6130 | size: 0x9
.obj str_MGN_A2_2_mri_000267d0, local
	.string "MGN_A2_2"
.endobj str_MGN_A2_2_mri_000267d0

# .rodata:0x1F9 | 0x6139 | size: 0x3
.obj gap_03_00006139_rodata, global
.hidden gap_03_00006139_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006139_rodata

# .rodata:0x1FC | 0x613C | size: 0x9
.obj str_MGN_A2_3_mri_000267dc, local
	.string "MGN_A2_3"
.endobj str_MGN_A2_3_mri_000267dc

# .rodata:0x205 | 0x6145 | size: 0x3
.obj gap_03_00006145_rodata, global
.hidden gap_03_00006145_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006145_rodata

# .rodata:0x208 | 0x6148 | size: 0x9
.obj str_MGN_A2_4_mri_000267e8, local
	.string "MGN_A2_4"
.endobj str_MGN_A2_4_mri_000267e8

# .rodata:0x211 | 0x6151 | size: 0x3
.obj gap_03_00006151_rodata, global
.hidden gap_03_00006151_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006151_rodata

# .rodata:0x214 | 0x6154 | size: 0x9
.obj str_MGN_A2_5_mri_000267f4, local
	.string "MGN_A2_5"
.endobj str_MGN_A2_5_mri_000267f4

# .rodata:0x21D | 0x615D | size: 0x3
.obj gap_03_0000615D_rodata, global
.hidden gap_03_0000615D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000615D_rodata

# .rodata:0x220 | 0x6160 | size: 0x9
.obj str_MGN_A2_6_mri_00026800, local
	.string "MGN_A2_6"
.endobj str_MGN_A2_6_mri_00026800

# .rodata:0x229 | 0x6169 | size: 0x3
.obj gap_03_00006169_rodata, global
.hidden gap_03_00006169_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006169_rodata

# .rodata:0x22C | 0x616C | size: 0x9
.obj str_MGN_A3_3_mri_0002680c, local
	.string "MGN_A3_3"
.endobj str_MGN_A3_3_mri_0002680c

# .rodata:0x235 | 0x6175 | size: 0x3
.obj gap_03_00006175_rodata, global
.hidden gap_03_00006175_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006175_rodata

# .rodata:0x238 | 0x6178 | size: 0x6
.obj str_M_I_O_mri_00026818, local
	.string "M_I_O"
.endobj str_M_I_O_mri_00026818

# .rodata:0x23E | 0x617E | size: 0x2
.obj gap_03_0000617E_rodata, global
.hidden gap_03_0000617E_rodata
	.2byte 0x0000
.endobj gap_03_0000617E_rodata

# .rodata:0x240 | 0x6180 | size: 0x15
.obj str_SFX_BOSS_MBTN_QUAKE1_mri_00026820, local
	.string "SFX_BOSS_MBTN_QUAKE1"
.endobj str_SFX_BOSS_MBTN_QUAKE1_mri_00026820

# .rodata:0x255 | 0x6195 | size: 0x3
.obj gap_03_00006195_rodata, global
.hidden gap_03_00006195_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006195_rodata

# .rodata:0x258 | 0x6198 | size: 0x17
.obj str_SFX_BOSS_MBTN_CAILIN_mri_00026838, local
	.string "SFX_BOSS_MBTN_CAILING1"
.endobj str_SFX_BOSS_MBTN_CAILIN_mri_00026838

# .rodata:0x26F | 0x61AF | size: 0x1
.obj gap_03_000061AF_rodata, global
.hidden gap_03_000061AF_rodata
	.byte 0x00
.endobj gap_03_000061AF_rodata

# .rodata:0x270 | 0x61B0 | size: 0x9
.obj str_MGN_A3_4_mri_00026850, local
	.string "MGN_A3_4"
.endobj str_MGN_A3_4_mri_00026850

# .rodata:0x279 | 0x61B9 | size: 0x3
.obj gap_03_000061B9_rodata, global
.hidden gap_03_000061B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061B9_rodata

# .rodata:0x27C | 0x61BC | size: 0x10
.obj str_stg2_mri_e24_12_mri_0002685c, local
	.string "stg2_mri_e24_12"
.endobj str_stg2_mri_e24_12_mri_0002685c

# .rodata:0x28C | 0x61CC | size: 0x1C
.obj str_SFX_BOSS_MBTN_PUNCH__mri_0002686c, local
	.string "SFX_BOSS_MBTN_PUNCH_ACTIVE1"
.endobj str_SFX_BOSS_MBTN_PUNCH__mri_0002686c

# .rodata:0x2A8 | 0x61E8 | size: 0x9
.obj str_MGN_A1_1_mri_00026888, local
	.string "MGN_A1_1"
.endobj str_MGN_A1_1_mri_00026888

# .rodata:0x2B1 | 0x61F1 | size: 0x3
.obj gap_03_000061F1_rodata, global
.hidden gap_03_000061F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061F1_rodata

# .rodata:0x2B4 | 0x61F4 | size: 0x1A
.obj str_SFX_BOSS_MBTN_PUNCH__mri_00026894, local
	.string "SFX_BOSS_MBTN_PUNCH_STOP1"
.endobj str_SFX_BOSS_MBTN_PUNCH__mri_00026894

# .rodata:0x2CE | 0x620E | size: 0x2
.obj gap_03_0000620E_rodata, global
.hidden gap_03_0000620E_rodata
	.2byte 0x0000
.endobj gap_03_0000620E_rodata

# .rodata:0x2D0 | 0x6210 | size: 0x9
.obj str_MGN_A1_2_mri_000268b0, local
	.string "MGN_A1_2"
.endobj str_MGN_A1_2_mri_000268b0

# .rodata:0x2D9 | 0x6219 | size: 0x3
.obj gap_03_00006219_rodata, global
.hidden gap_03_00006219_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006219_rodata

# .rodata:0x2DC | 0x621C | size: 0x9
.obj str_MGN_A1_3_mri_000268bc, local
	.string "MGN_A1_3"
.endobj str_MGN_A1_3_mri_000268bc

# .rodata:0x2E5 | 0x6225 | size: 0x3
.obj gap_03_00006225_rodata, global
.hidden gap_03_00006225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006225_rodata

# .rodata:0x2E8 | 0x6228 | size: 0x1C
.obj str_SFX_BOSS_MBTN_PUNCH__mri_000268c8, local
	.string "SFX_BOSS_MBTN_PUNCH_IGNITE1"
.endobj str_SFX_BOSS_MBTN_PUNCH__mri_000268c8

# .rodata:0x304 | 0x6244 | size: 0x9
.obj str_MGN_A1_6_mri_000268e4, local
	.string "MGN_A1_6"
.endobj str_MGN_A1_6_mri_000268e4

# .rodata:0x30D | 0x624D | size: 0x3
.obj gap_03_0000624D_rodata, global
.hidden gap_03_0000624D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000624D_rodata

# .rodata:0x310 | 0x6250 | size: 0x19
.obj str_SFX_BOSS_MBTN_PUNCH__mri_000268f0, local
	.string "SFX_BOSS_MBTN_PUNCH_FLY1"
.endobj str_SFX_BOSS_MBTN_PUNCH__mri_000268f0

# .rodata:0x329 | 0x6269 | size: 0x3
.obj gap_03_00006269_rodata, global
.hidden gap_03_00006269_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006269_rodata

# .rodata:0x32C | 0x626C | size: 0x9
.obj str_MGN_A1_7_mri_0002690c, local
	.string "MGN_A1_7"
.endobj str_MGN_A1_7_mri_0002690c

# .rodata:0x335 | 0x6275 | size: 0x3
.obj gap_03_00006275_rodata, global
.hidden gap_03_00006275_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006275_rodata

# .rodata:0x338 | 0x6278 | size: 0x9
.obj str_MGN_A1_8_mri_00026918, local
	.string "MGN_A1_8"
.endobj str_MGN_A1_8_mri_00026918

# .rodata:0x341 | 0x6281 | size: 0x3
.obj gap_03_00006281_rodata, global
.hidden gap_03_00006281_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006281_rodata

# .rodata:0x344 | 0x6284 | size: 0x14
.obj str_btl_un_rocket_punch_mri_00026924, local
	.string "btl_un_rocket_punch"
.endobj str_btl_un_rocket_punch_mri_00026924

# .rodata:0x358 | 0x6298 | size: 0x9
.obj str_MGN_A1_9_mri_00026938, local
	.string "MGN_A1_9"
.endobj str_MGN_A1_9_mri_00026938

# .rodata:0x361 | 0x62A1 | size: 0x3
.obj gap_03_000062A1_rodata, global
.hidden gap_03_000062A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062A1_rodata

# .rodata:0x364 | 0x62A4 | size: 0x9
.obj str_MGN_A1_4_mri_00026944, local
	.string "MGN_A1_4"
.endobj str_MGN_A1_4_mri_00026944

# .rodata:0x36D | 0x62AD | size: 0x3
.obj gap_03_000062AD_rodata, global
.hidden gap_03_000062AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062AD_rodata

# .rodata:0x370 | 0x62B0 | size: 0xC
.obj vec3_mri_00026950, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00026950

# .rodata:0x37C | 0x62BC | size: 0x4
.obj float_neg1000_mri_0002695c, local
	.float -1000
.endobj float_neg1000_mri_0002695c

# .rodata:0x380 | 0x62C0 | size: 0x4
.obj float_1_mri_00026960, local
	.float 1
.endobj float_1_mri_00026960

# .rodata:0x384 | 0x62C4 | size: 0xC
.obj vec3_mri_00026964, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_00026964

# .rodata:0x390 | 0x62D0 | size: 0xC
.obj vec3_mri_00026970, local
	.4byte 0x00000000
	.4byte 0xC1900000
	.4byte 0x00000000
.endobj vec3_mri_00026970

# .rodata:0x39C | 0x62DC | size: 0x4
.obj float_360_mri_0002697c, local
	.float 360
.endobj float_360_mri_0002697c

# .rodata:0x3A0 | 0x62E0 | size: 0x4
.obj float_6p2832_mri_00026980, local
	.float 6.283184
.endobj float_6p2832_mri_00026980

# .rodata:0x3A4 | 0x62E4 | size: 0x4
.obj float_3_mri_00026984, local
	.float 3
.endobj float_3_mri_00026984

# .rodata:0x3A8 | 0x62E8 | size: 0x4
.obj float_1p5708_mri_00026988, local
	.float 1.5707964
.endobj float_1p5708_mri_00026988

# .rodata:0x3AC | 0x62EC | size: 0x4
.obj float_deg2rad_mri_0002698c, local
	.float 0.017453292
.endobj float_deg2rad_mri_0002698c

# 0x00027678..0x0002A3A8 | size: 0x2D30
.data
.balign 8

# .data:0x0 | 0x27678 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x27680 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x27684 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x27688 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2768C | size: 0x4
.obj gap_04_0002768C_data, global
.hidden gap_04_0002768C_data
	.4byte 0x00000000
.endobj gap_04_0002768C_data

# .data:0x18 | 0x27690 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x27698 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2769C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x276A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x276A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x276AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x276B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x276B4 | size: 0x4
.obj gap_04_000276B4_data, global
.hidden gap_04_000276B4_data
	.4byte 0x00000000
.endobj gap_04_000276B4_data

# .data:0x40 | 0x276B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x276C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x276C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x276C8 | size: 0xC4
.obj unit_boss_magnum_battender_18_data_276C8, global
	.4byte 0x00000022
	.4byte str_btl_un_magnum_batten_mri_000265e0
	.4byte 0x001E0000
	.4byte 0x01014400
	.4byte 0x00640032
	.4byte 0x00060078
	.4byte 0x00A0001E
	.4byte 0x00640000
	.4byte 0x00000000
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x42E60000
	.4byte 0x00000000
	.4byte 0x42700000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x42DC0000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0x42F00000
	.4byte 0x43200000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_MBTN_DAMAGE_mri_000265f8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_00026610
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_00026628
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_0002663c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x03000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_magnum_battender_18_data_276C8

# .data:0x114 | 0x2778C | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x27791 | size: 0x3
.obj gap_04_00027791_data, global
.hidden gap_04_00027791_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00027791_data

# .data:0x11C | 0x27794 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x27799 | size: 0x3
.obj gap_04_00027799_data, global
.hidden gap_04_00027799_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00027799_data

# .data:0x124 | 0x2779C | size: 0x16
.obj regist, local
	.4byte 0x00323200
	.4byte 0x3200641E
	.4byte 0x00006400
	.4byte 0x645A3200
	.4byte 0x00642800
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x277B2 | size: 0x2
.obj gap_04_000277B2_data, global
.hidden gap_04_000277B2_data
	.2byte 0x0000
.endobj gap_04_000277B2_data

# .data:0x13C | 0x277B4 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_MGN_S_1_mri_00026658
	.4byte 0x00000002
	.4byte str_MGN_2D_1_mri_00026660
	.4byte 0x00000009
	.4byte str_MGN_2D_1_mri_00026660
	.4byte 0x00000005
	.4byte str_MGN_X_1_mri_0002666c
	.4byte 0x00000004
	.4byte str_MGN_X_1_mri_0002666c
	.4byte 0x00000003
	.4byte str_MGN_X_1_mri_0002666c
	.4byte 0x0000001C
	.4byte str_MGN_S_1_mri_00026658
	.4byte 0x0000001D
	.4byte str_MGN_Q_1_mri_00026674
	.4byte 0x0000001E
	.4byte str_MGN_Q_1_mri_00026674
	.4byte 0x0000001F
	.4byte str_MGN_S_1_mri_00026658
	.4byte 0x00000027
	.4byte str_MGN_D_1_mri_0002667c
	.4byte 0x00000028
	.4byte str_MGN_W_1_mri_00026684
	.4byte 0x00000029
	.4byte str_MGN_W_2_mri_0002668c
	.4byte 0x00000038
	.4byte str_MGN_S_1_mri_00026658
	.4byte 0x00000039
	.4byte str_MGN_S_1_mri_00026658
	.4byte 0x00000041
	.4byte str_MGN_T_1_mri_00026694
	.4byte 0x00000045
	.4byte str_MGN_S_1_mri_00026658
.endobj pose_table

# .data:0x1C4 | 0x2783C | size: 0x80
.obj pose_table_no_arm, local
	.4byte 0x00000001
	.4byte str_MGN_S_2_mri_0002669c
	.4byte 0x00000002
	.4byte str_MGN_2D_2_mri_000266a4
	.4byte 0x00000009
	.4byte str_MGN_2D_2_mri_000266a4
	.4byte 0x00000005
	.4byte str_MGN_X_2_mri_000266b0
	.4byte 0x00000004
	.4byte str_MGN_X_2_mri_000266b0
	.4byte 0x00000003
	.4byte str_MGN_X_2_mri_000266b0
	.4byte 0x0000001C
	.4byte str_MGN_S_2_mri_0002669c
	.4byte 0x0000001D
	.4byte str_MGN_Q_2_mri_000266b8
	.4byte 0x0000001E
	.4byte str_MGN_Q_2_mri_000266b8
	.4byte 0x0000001F
	.4byte str_MGN_S_2_mri_0002669c
	.4byte 0x00000027
	.4byte str_MGN_D_2_mri_000266c0
	.4byte 0x00000028
	.4byte str_MGN_W_3_mri_000266c8
	.4byte 0x00000038
	.4byte str_MGN_S_2_mri_0002669c
	.4byte 0x00000039
	.4byte str_MGN_S_2_mri_0002669c
	.4byte 0x00000041
	.4byte str_MGN_T_2_mri_000266d0
	.4byte 0x00000045
	.4byte str_MGN_S_2_mri_0002669c
.endobj pose_table_no_arm

# .data:0x244 | 0x278BC | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x254 | 0x278CC | size: 0xE4
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_magnum_batten_mri_000265e0
	.4byte str_c_mb_robo_1b_mri_000266d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42140000
	.4byte 0x42CE0000
	.4byte 0x41F00000
	.4byte 0x42140000
	.4byte 0x42E20000
	.4byte 0x42740000
	.4byte 0x006A00AE
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600019
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_magnum_batten_mri_000265e0
	.4byte str_c_mb_robo_1b_mri_000266d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41200000
	.4byte 0x41F00000
	.4byte 0x41200000
	.4byte 0x41A00000
	.4byte 0x42740000
	.4byte 0x006A00AE
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x03100002
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_magnum_batten_mri_000265e0
	.4byte str_c_mb_robo_1b_mri_000266d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x001E001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x338 | 0x279B0 | size: 0xC0
.obj weapon_batten_stamp_attack, local
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
	.4byte 0x20001000
	.4byte 0x000C0302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x0000000C
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
.endobj weapon_batten_stamp_attack

# .data:0x3F8 | 0x27A70 | size: 0xC0
.obj weapon_batten_shake_attack, local
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
	.4byte 0x02101260
	.4byte 0x20000008
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x000010C7
	.4byte 0x000007FF
	.4byte 0x00002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_batten_shake_attack

# .data:0x4B8 | 0x27B30 | size: 0x30
.obj entry_rocket_punch, local
	.4byte unit_boss_rocket_punch
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
.endobj entry_rocket_punch

# .data:0x4E8 | 0x27B60 | size: 0x170
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MGN_L_1_mri_000266f8
	.4byte 0x0001005C
	.4byte waku_event
	.4byte 0x0001005B
	.4byte arm_init
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_MOVE1_mri_00026700
	.4byte str_SFX_BOSS_MBTN_MOVE1_mri_00026700
	.4byte 0x0000001A
	.4byte 0x0000001A
	.4byte 0x0000001A
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_MOVE1_mri_00026700
	.4byte str_SFX_BOSS_MBTN_MOVE1_mri_00026700
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x658 | 0x27CD0 | size: 0x5C
.obj waku_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
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
	.4byte 0x0002005B
	.4byte waku_main
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj waku_event

# .data:0x6B4 | 0x27D2C | size: 0x1BC
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamagePattern
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0xFFFFFF9C
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000045
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg2_mri_e24_15_mri_00026714
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x870 | 0x27EE8 | size: 0x3A8
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte eff_dead
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0xFFFFFF9C
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000027
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000027
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg2_mri_e24_16_mri_00026728
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte arm_check
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C80
	.4byte 0x00000200
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0001005E
	.4byte subsetevt_dead_core
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000000
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
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte arm_check
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C80
	.4byte 0x00000200
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0001005E
	.4byte subsetevt_dead_core
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000001
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
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_mri_00026738
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00000032
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
	.4byte zero_mri_00026750
	.4byte str_star_point_mri_00026754
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
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0002005B
	.4byte btlevtcmd_GetBackItem
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte eff_dead_delete
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xC18 | 0x28290 | size: 0x138
.obj entry_event, local
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0xFFFFFF9C
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg2_mri_e24_09_mri_00026760
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF9A
	.4byte 0x00000053
	.4byte 0x0000014E
	.4byte 0xFFFFFF9A
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg2_mri_e24_10_mri_00026770
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0xD50 | 0x283C8 | size: 0x258
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte arm_check
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte arm_check
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte arm_return_event
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte stamp_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0001005E
	.4byte stamp_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte arm_bunri_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte stamp_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte arm_bunri_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte shake_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
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

# .data:0xFA8 | 0x28620 | size: 0x580
.obj stamp_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_batten_stamp_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_batten_stamp_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0xFFFFFF9C
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg2_mri_e24_11_mri_00026780
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_batten_stamp_attack
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
	.4byte weapon_batten_stamp_attack
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
	.4byte 0x00000064
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000078
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF83
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_LEG_UP_mri_00026790
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A2_1_mri_000267a8
	.4byte 0x0001000A
	.4byte 0x000001C2
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_LEG_PE_mri_000267b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A2_2_mri_000267d0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A2_3_mri_000267dc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A2_4_mri_000267e8
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_batten_stamp_attack
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
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_batten_stamp_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_batten_stamp_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A2_5_mri_000267f4
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A2_6_mri_00026800
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000029
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stamp_attack_event

# .data:0x1528 | 0x28BA0 | size: 0x510
.obj shake_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_batten_shake_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_batten_shake_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_batten_shake_attack
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
	.4byte weapon_batten_shake_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A3_3_mri_0002680c
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFD
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_O_mri_00026818
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_QUAKE1_mri_00026820
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_CAILIN_mri_00026838
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte eff_hokori
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A3_4_mri_00026850
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte eff_hokori
	.4byte 0x00000064
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte eff_hokori
	.4byte 0xFFFFFF9C
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte eff_hokori
	.4byte 0x00000032
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte eff_hokori
	.4byte 0xFFFFFF9C
	.4byte 0x000000FA
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A7D4C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_QUAKE1_mri_00026820
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_batten_shake_attack
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
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFD
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x0000005D
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_batten_shake_attack
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_batten_shake_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x0000005D
	.4byte 0x00010003
	.4byte 0x0000005D
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shake_attack_event

# .data:0x1A38 | 0x290B0 | size: 0x31C
.obj arm_bunri_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x000000A0
	.4byte 0x00000258
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0xFFFFFF9C
	.4byte 0x00000014
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg2_mri_e24_12_mri_0002685c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_0002686c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_1_mri_00026888
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_00026894
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_2_mri_000268b0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_3_mri_000268bc
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_w
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_rocket_punch
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C84
	.4byte entry_rocket_punch
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_no_arm
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj arm_bunri_event

# .data:0x1D54 | 0x293CC | size: 0x25C
.obj arm_return_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_6_mri_000268e4
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_rocket_punch
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C84
	.4byte entry_rocket_punch
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x0000012C
	.4byte 0x00000028
	.4byte 0xFFFFFF9C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x00000064
	.4byte 0xFFFFFFD8
	.4byte 0x0000001E
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C84
	.4byte 0x0000015E
	.4byte 0x00000028
	.4byte 0x00000064
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C84
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_w
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_7_mri_0002690c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_8_mri_00026918
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj arm_return_event

# .data:0x1FB0 | 0x29628 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1FC8 | 0x29640 | size: 0xC4
.obj unit_boss_rocket_punch, local
	.4byte 0x00000023
	.4byte str_btl_un_rocket_punch_mri_00026924
	.4byte 0x00020000
	.4byte 0x01010000
	.4byte 0x00640032
	.4byte 0x000A0032
	.4byte 0x00220000
	.4byte 0x000F0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000FFEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0xC0A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x42080000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_MBTN_DAMAGE_mri_000265f8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_00026610
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_00026628
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_0002663c
	.4byte 0x00000004
	.4byte regist_r
	.4byte 0x01000000
	.4byte parts_r
	.4byte init_event_r
	.4byte data_table_r
.endobj unit_boss_rocket_punch

# .data:0x208C | 0x29704 | size: 0x5
.obj defence_r, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_r

# .data:0x2091 | 0x29709 | size: 0x3
.obj gap_04_00029709_data, global
.hidden gap_04_00029709_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029709_data

# .data:0x2094 | 0x2970C | size: 0x5
.obj defence_attr_r, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_r

# .data:0x2099 | 0x29711 | size: 0x3
.obj gap_04_00029711_data, global
.hidden gap_04_00029711_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00029711_data

# .data:0x209C | 0x29714 | size: 0x16
.obj regist_r, local
	.4byte 0x00505064
	.4byte 0x50646450
	.4byte 0x00006400
	.4byte 0x645F5000
	.4byte 0x64645000
	.2byte 0x0000
.endobj regist_r

# .data:0x20B2 | 0x2972A | size: 0x2
.obj gap_04_0002972A_data, global
.hidden gap_04_0002972A_data
	.2byte 0x0000
.endobj gap_04_0002972A_data

# .data:0x20B4 | 0x2972C | size: 0x70
.obj pose_table_r, local
	.4byte 0x00000001
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000002
	.4byte str_MGN_A1_4_mri_00026944
	.4byte 0x00000009
	.4byte str_MGN_A1_4_mri_00026944
	.4byte 0x00000005
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000004
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000003
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x0000001C
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x0000001D
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x0000001E
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x0000001F
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000027
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000038
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000039
	.4byte str_MGN_A1_9_mri_00026938
	.4byte 0x00000045
	.4byte str_MGN_A1_9_mri_00026938
.endobj pose_table_r

# .data:0x2124 | 0x2979C | size: 0x8
.obj data_table_r, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_r

# .data:0x212C | 0x297A4 | size: 0x4C
.obj parts_r, local
	.4byte 0x00000001
	.4byte str_btl_un_rocket_punch_mri_00026924
	.4byte str_c_mb_robo_1b_mri_000266d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x006A00AE
	.4byte 0x00FF0000
	.4byte defence_r
	.4byte defence_attr_r
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table_r
.endobj parts_r

# .data:0x2178 | 0x297F0 | size: 0xC0
.obj weapon_batten_rocket_attack, local
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
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
.endobj weapon_batten_rocket_attack

# .data:0x2238 | 0x298B0 | size: 0x2FC
.obj init_event_r, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MGN_A1_4_mri_00026944
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_r
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_r
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event_r
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte arm_init2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte arm_init2
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte arm_init2
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte arm_init2
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte arm_event
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x0000001E
	.4byte 0x00000064
	.4byte 0xFFFFFFD8
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFF9C
	.4byte 0x00000096
	.4byte 0xFFFFFFC4
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0x0000015E
	.4byte 0x0000006E
	.4byte 0xFFFFFFB0
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0x0000001E
	.4byte 0x0000003C
	.4byte 0xFFFFFFD8
	.4byte 0x00000019
	.4byte 0xFFFFFFE2
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0x0000001E
	.4byte 0x0000003C
	.4byte 0xFFFFFFD8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000050
	.4byte 0x00000064
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFCE
	.4byte 0x00000096
	.4byte 0x0000003C
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0x00000078
	.4byte 0x00000050
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000050
	.4byte 0x0000003C
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0x00000050
	.4byte 0x0000003C
	.4byte 0x00000028
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_r

# .data:0x2534 | 0x29BAC | size: 0xEC
.obj arm_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte arm_event_end
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte arm_main
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte arm_main
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte arm_main
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte arm_main
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj arm_event

# .data:0x2620 | 0x29C98 | size: 0x8C
.obj arm_event_end, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte arm_end
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj arm_event_end

# .data:0x26AC | 0x29D24 | size: 0x78
.obj damage_event_r, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
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
	.4byte 0x0001005E
	.4byte arm_event_end
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event_r

# .data:0x2724 | 0x29D9C | size: 0x5C0
.obj attack_event_r, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_batten_rocket_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_batten_rocket_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_batten_rocket_attack
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
	.4byte weapon_batten_rocket_attack
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
	.4byte str_MGN_A1_4_mri_00026944
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_batten_rocket_attack
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
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
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
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001C
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_batten_rocket_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_batten_rocket_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_w
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000078
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFFFFFF38
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000008C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0xFFFFFFB0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFFFFFF9C
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MBTN_PUNCH__mri_000268f0
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
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_r

# .data:0x2CE4 | 0x2A35C | size: 0x48
.obj wait_event_r, local
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_r

# .data:0x2D2C | 0x2A3A4 | size: 0x4
.obj gap_04_0002A3A4_data, global
.hidden gap_04_0002A3A4_data
	.4byte 0x00000000
.endobj gap_04_0002A3A4_data

# 0x00000070..0x00000080 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x70 | size: 0x8
.obj work_2, local
	.skip 0x8
.endobj work_2

# .bss:0x8 | 0x78 | size: 0x4
.obj eff_charge, local
	.skip 0x4
.endobj eff_charge

# .bss:0xC | 0x7C | size: 0x4
.obj gap_05_0000007C_bss, global
.hidden gap_05_0000007C_bss
	.skip 0x4
.endobj gap_05_0000007C_bss
