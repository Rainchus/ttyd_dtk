.include "macros.inc"
.file "unit_kamec_green.o"

# 0x00006504..0x00006CF8 | size: 0x7F4
.text
.balign 4

# .text:0x0 | 0x6504 | size: 0x70
.fn eff_magic_get_posX, local
/* 00006504 000065C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006508 000065CC  7C 08 02 A6 */	mflr r0
/* 0000650C 000065D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006510 000065D4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006514 000065D8  7C 7E 1B 78 */	mr r30, r3
/* 00006518 000065DC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000651C 000065E0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006520 000065E4  4B FF EA F5 */	bl evtGetValue
/* 00006524 000065E8  7C 64 1B 78 */	mr r4, r3
/* 00006528 000065EC  7F C3 F3 78 */	mr r3, r30
/* 0000652C 000065F0  4B FF EA E9 */	bl BattleTransID
/* 00006530 000065F4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006534 000065F8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006538 000065FC  7C 64 1B 78 */	mr r4, r3
/* 0000653C 00006600  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006540 00006604  4B FF EA D5 */	bl BattleGetUnitPtr
/* 00006544 00006608  80 A3 02 2C */	lwz r5, 0x22c(r3)
/* 00006548 0000660C  7F C3 F3 78 */	mr r3, r30
/* 0000654C 00006610  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006550 00006614  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 00006554 00006618  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 00006558 0000661C  4B FF EA BD */	bl evtSetFloat
/* 0000655C 00006620  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00006560 00006624  38 60 00 02 */	li r3, 0x2
/* 00006564 00006628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006568 0000662C  7C 08 03 A6 */	mtlr r0
/* 0000656C 00006630  38 21 00 10 */	addi r1, r1, 0x10
/* 00006570 00006634  4E 80 00 20 */	blr
.endfn eff_magic_get_posX

# .text:0x70 | 0x6574 | size: 0x17C
.fn eff_magic, local
/* 00006574 00006638  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00006578 0000663C  7C 08 02 A6 */	mflr r0
/* 0000657C 00006640  90 01 00 64 */	stw r0, 0x64(r1)
/* 00006580 00006644  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00006584 00006648  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00006588 0000664C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 0000658C 00006650  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00006590 00006654  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00006594 00006658  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00006598 0000665C  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000659C 00006660  7C 7D 1B 78 */	mr r29, r3
/* 000065A0 00006664  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000065A4 00006668  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000065A8 0000666C  4B FF EA 6D */	bl evtGetValue
/* 000065AC 00006670  7C 64 1B 78 */	mr r4, r3
/* 000065B0 00006674  7F A3 EB 78 */	mr r3, r29
/* 000065B4 00006678  4B FF EA 61 */	bl BattleTransID
/* 000065B8 0000667C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000065BC 00006680  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000065C0 00006684  7C 64 1B 78 */	mr r4, r3
/* 000065C4 00006688  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000065C8 0000668C  4B FF EA 4D */	bl BattleGetUnitPtr
/* 000065CC 00006690  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000065D0 00006694  7C 7E 1B 78 */	mr r30, r3
/* 000065D4 00006698  7F A3 EB 78 */	mr r3, r29
/* 000065D8 0000669C  4B FF EA 3D */	bl evtGetFloat
/* 000065DC 000066A0  FF E0 08 90 */	fmr f31, f1
/* 000065E0 000066A4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000065E4 000066A8  7F A3 EB 78 */	mr r3, r29
/* 000065E8 000066AC  4B FF EA 2D */	bl evtGetFloat
/* 000065EC 000066B0  FF C0 08 90 */	fmr f30, f1
/* 000065F0 000066B4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000065F4 000066B8  7F A3 EB 78 */	mr r3, r29
/* 000065F8 000066BC  4B FF EA 1D */	bl evtGetFloat
/* 000065FC 000066C0  FF A0 08 90 */	fmr f29, f1
/* 00006600 000066C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00006604 000066C8  7F A3 EB 78 */	mr r3, r29
/* 00006608 000066CC  4B FF EA 0D */	bl evtGetValue
/* 0000660C 000066D0  7C 60 1B 78 */	mr r0, r3
/* 00006610 000066D4  7F C3 F3 78 */	mr r3, r30
/* 00006614 000066D8  7C 1F 03 78 */	mr r31, r0
/* 00006618 000066DC  38 81 00 10 */	addi r4, r1, 0x10
/* 0000661C 000066E0  38 A1 00 0C */	addi r5, r1, 0xc
/* 00006620 000066E4  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006624 000066E8  4B FF E9 F1 */	bl BtlUnit_GetPos
/* 00006628 000066EC  88 7E 01 89 */	lbz r3, 0x189(r30)
/* 0000662C 000066F0  3C 00 43 30 */	lis r0, 0x4330
/* 00006630 000066F4  3C C0 00 00 */	lis r6, float_25_tou2_0000fd6c@ha
/* 00006634 000066F8  3C A0 00 00 */	lis r5, double_to_int_tou2_0000fd78@ha
/* 00006638 000066FC  7C 63 07 74 */	extsb r3, r3
/* 0000663C 00006700  3C 80 00 00 */	lis r4, float_20_tou2_0000fd70@ha
/* 00006640 00006704  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00006644 00006708  C1 04 00 00 */	lfs f8, float_20_tou2_0000fd70@l(r4)
/* 00006648 0000670C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 0000664C 00006710  3C 60 00 00 */	lis r3, float_5_tou2_0000fd74@ha
/* 00006650 00006714  C0 66 00 00 */	lfs f3, float_25_tou2_0000fd6c@l(r6)
/* 00006654 00006718  FC 80 F8 90 */	fmr f4, f31
/* 00006658 0000671C  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000665C 00006720  FC A0 F0 90 */	fmr f5, f30
/* 00006660 00006724  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00006664 00006728  FC C0 E8 90 */	fmr f6, f29
/* 00006668 0000672C  C8 45 00 00 */	lfd f2, double_to_int_tou2_0000fd78@l(r5)
/* 0000666C 00006730  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00006670 00006734  EC 63 00 32 */	fmuls f3, f3, f0
/* 00006674 00006738  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00006678 0000673C  7F E4 FB 78 */	mr r4, r31
/* 0000667C 00006740  EC 21 10 28 */	fsubs f1, f1, f2
/* 00006680 00006744  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 00006684 00006748  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 00006688 0000674C  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 0000668C 00006750  C0 03 00 00 */	lfs f0, float_5_tou2_0000fd74@l(r3)
/* 00006690 00006754  38 60 00 00 */	li r3, 0x0
/* 00006694 00006758  EC 62 00 2A */	fadds f3, f2, f0
/* 00006698 0000675C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 0000669C 00006760  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000066A0 00006764  EC 48 38 3A */	fmadds f2, f8, f0, f7
/* 000066A4 00006768  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 000066A8 0000676C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 000066AC 00006770  4B FF E9 69 */	bl effMagic1N64Entry
/* 000066B0 00006774  90 7E 02 2C */	stw r3, 0x22c(r30)
/* 000066B4 00006778  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000066B8 0000677C  38 60 00 02 */	li r3, 0x2
/* 000066BC 00006780  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000066C0 00006784  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 000066C4 00006788  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000066C8 0000678C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000066CC 00006790  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000066D0 00006794  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000066D4 00006798  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000066D8 0000679C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000066DC 000067A0  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 000066E0 000067A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000066E4 000067A8  7C 08 03 A6 */	mtlr r0
/* 000066E8 000067AC  38 21 00 60 */	addi r1, r1, 0x60
/* 000066EC 000067B0  4E 80 00 20 */	blr
.endfn eff_magic

# .text:0x1EC | 0x66F0 | size: 0x150
.fn eff_staff2, local
/* 000066F0 000067B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000066F4 000067B8  7C 08 02 A6 */	mflr r0
/* 000066F8 000067BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 000066FC 000067C0  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00006700 000067C4  7C 9E 23 78 */	mr r30, r4
/* 00006704 000067C8  7C 7F 1B 78 */	mr r31, r3
/* 00006708 000067CC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000670C 000067D0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006710 000067D4  4B FF E9 05 */	bl evtGetValue
/* 00006714 000067D8  7C 64 1B 78 */	mr r4, r3
/* 00006718 000067DC  7F E3 FB 78 */	mr r3, r31
/* 0000671C 000067E0  4B FF E8 F9 */	bl BattleTransID
/* 00006720 000067E4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006724 000067E8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006728 000067EC  7C 64 1B 78 */	mr r4, r3
/* 0000672C 000067F0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006730 000067F4  4B FF E8 E5 */	bl BattleGetUnitPtr
/* 00006734 000067F8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00006738 000067FC  7C 7F 1B 78 */	mr r31, r3
/* 0000673C 00006800  41 82 00 34 */	beq .L_00006770
/* 00006740 00006804  3C 60 00 00 */	lis r3, zero_tou2_0000fd80@ha
/* 00006744 00006808  3C 80 00 00 */	lis r4, float_neg1000_tou2_0000fd84@ha
/* 00006748 0000680C  38 A3 00 00 */	addi r5, r3, zero_tou2_0000fd80@l
/* 0000674C 00006810  C0 44 00 00 */	lfs f2, float_neg1000_tou2_0000fd84@l(r4)
/* 00006750 00006814  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00006754 00006818  3C 60 00 00 */	lis r3, float_1_tou2_0000fd88@ha
/* 00006758 0000681C  C0 83 00 00 */	lfs f4, float_1_tou2_0000fd88@l(r3)
/* 0000675C 00006820  38 60 00 00 */	li r3, 0x0
/* 00006760 00006824  FC 60 08 90 */	fmr f3, f1
/* 00006764 00006828  38 80 00 3C */	li r4, 0x3c
/* 00006768 0000682C  4B FF E8 AD */	bl effPokopiPchargeN64Entry
/* 0000676C 00006830  90 7F 02 28 */	stw r3, 0x228(r31)
.L_00006770:
/* 00006770 00006834  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 00006774 00006838  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00006778 0000683C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 0000677C 00006840  40 82 00 0C */	bne .L_00006788
/* 00006780 00006844  38 60 00 02 */	li r3, 0x2
/* 00006784 00006848  48 00 00 A8 */	b .L_0000682C
.L_00006788:
/* 00006788 0000684C  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 0000678C 00006850  7F E3 FB 78 */	mr r3, r31
/* 00006790 00006854  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00006794 00006858  38 81 00 10 */	addi r4, r1, 0x10
/* 00006798 0000685C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000679C 00006860  38 C1 00 08 */	addi r6, r1, 0x8
/* 000067A0 00006864  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 000067A4 00006868  4B FF E8 71 */	bl BtlUnit_GetPos
/* 000067A8 0000686C  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 000067AC 00006870  3C 00 43 30 */	lis r0, 0x4330
/* 000067B0 00006874  3C C0 00 00 */	lis r6, float_22p5_tou2_0000fd8c@ha
/* 000067B4 00006878  3C A0 00 00 */	lis r5, double_to_int_tou2_0000fd78@ha
/* 000067B8 0000687C  7C 64 07 74 */	extsb r4, r3
/* 000067BC 00006880  3C 60 00 00 */	lis r3, float_40_tou2_0000fd90@ha
/* 000067C0 00006884  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000067C4 00006888  38 E6 00 00 */	addi r7, r6, float_22p5_tou2_0000fd8c@l
/* 000067C8 0000688C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 000067CC 00006890  38 C5 00 00 */	addi r6, r5, double_to_int_tou2_0000fd78@l
/* 000067D0 00006894  38 A3 00 00 */	addi r5, r3, float_40_tou2_0000fd90@l
/* 000067D4 00006898  3C 60 00 00 */	lis r3, float_5_tou2_0000fd74@ha
/* 000067D8 0000689C  90 01 00 18 */	stw r0, 0x18(r1)
/* 000067DC 000068A0  38 83 00 00 */	addi r4, r3, float_5_tou2_0000fd74@l
/* 000067E0 000068A4  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 000067E4 000068A8  38 60 00 00 */	li r3, 0x0
/* 000067E8 000068AC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000067EC 000068B0  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 000067F0 000068B4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 000067F4 000068B8  EC 83 00 32 */	fmuls f4, f3, f0
/* 000067F8 000068BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000067FC 000068C0  EC 41 10 28 */	fsubs f2, f1, f2
/* 00006800 000068C4  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00006804 000068C8  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00006808 000068CC  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 0000680C 000068D0  D0 1E 00 04 */	stfs f0, 0x4(r30)
/* 00006810 000068D4  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 00006814 000068D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00006818 000068DC  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 0000681C 000068E0  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00006820 000068E4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00006824 000068E8  EC 01 00 2A */	fadds f0, f1, f0
/* 00006828 000068EC  D0 1E 00 0C */	stfs f0, 0xc(r30)
.L_0000682C:
/* 0000682C 000068F0  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00006830 000068F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006834 000068F8  7C 08 03 A6 */	mtlr r0
/* 00006838 000068FC  38 21 00 30 */	addi r1, r1, 0x30
/* 0000683C 00006900  4E 80 00 20 */	blr
.endfn eff_staff2

# .text:0x33C | 0x6840 | size: 0x150
.fn eff_staff1, local
/* 00006840 00006904  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006844 00006908  7C 08 02 A6 */	mflr r0
/* 00006848 0000690C  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000684C 00006910  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 00006850 00006914  7C 9E 23 78 */	mr r30, r4
/* 00006854 00006918  7C 7F 1B 78 */	mr r31, r3
/* 00006858 0000691C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000685C 00006920  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006860 00006924  4B FF E7 B5 */	bl evtGetValue
/* 00006864 00006928  7C 64 1B 78 */	mr r4, r3
/* 00006868 0000692C  7F E3 FB 78 */	mr r3, r31
/* 0000686C 00006930  4B FF E7 A9 */	bl BattleTransID
/* 00006870 00006934  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006874 00006938  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006878 0000693C  7C 64 1B 78 */	mr r4, r3
/* 0000687C 00006940  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006880 00006944  4B FF E7 95 */	bl BattleGetUnitPtr
/* 00006884 00006948  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00006888 0000694C  7C 7F 1B 78 */	mr r31, r3
/* 0000688C 00006950  41 82 00 34 */	beq .L_000068C0
/* 00006890 00006954  3C 60 00 00 */	lis r3, zero_tou2_0000fd80@ha
/* 00006894 00006958  3C 80 00 00 */	lis r4, float_neg1000_tou2_0000fd84@ha
/* 00006898 0000695C  38 A3 00 00 */	addi r5, r3, zero_tou2_0000fd80@l
/* 0000689C 00006960  C0 44 00 00 */	lfs f2, float_neg1000_tou2_0000fd84@l(r4)
/* 000068A0 00006964  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000068A4 00006968  3C 60 00 00 */	lis r3, float_1_tou2_0000fd88@ha
/* 000068A8 0000696C  C0 83 00 00 */	lfs f4, float_1_tou2_0000fd88@l(r3)
/* 000068AC 00006970  38 60 00 00 */	li r3, 0x0
/* 000068B0 00006974  FC 60 08 90 */	fmr f3, f1
/* 000068B4 00006978  38 80 00 3C */	li r4, 0x3c
/* 000068B8 0000697C  4B FF E7 5D */	bl effThunderflareN64Entry
/* 000068BC 00006980  90 7F 02 28 */	stw r3, 0x228(r31)
.L_000068C0:
/* 000068C0 00006984  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 000068C4 00006988  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000068C8 0000698C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000068CC 00006990  40 82 00 0C */	bne .L_000068D8
/* 000068D0 00006994  38 60 00 02 */	li r3, 0x2
/* 000068D4 00006998  48 00 00 A8 */	b .L_0000697C
.L_000068D8:
/* 000068D8 0000699C  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 000068DC 000069A0  7F E3 FB 78 */	mr r3, r31
/* 000068E0 000069A4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000068E4 000069A8  38 81 00 10 */	addi r4, r1, 0x10
/* 000068E8 000069AC  38 A1 00 0C */	addi r5, r1, 0xc
/* 000068EC 000069B0  38 C1 00 08 */	addi r6, r1, 0x8
/* 000068F0 000069B4  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 000068F4 000069B8  4B FF E7 21 */	bl BtlUnit_GetPos
/* 000068F8 000069BC  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 000068FC 000069C0  3C 00 43 30 */	lis r0, 0x4330
/* 00006900 000069C4  3C C0 00 00 */	lis r6, float_22p5_tou2_0000fd8c@ha
/* 00006904 000069C8  3C A0 00 00 */	lis r5, double_to_int_tou2_0000fd78@ha
/* 00006908 000069CC  7C 64 07 74 */	extsb r4, r3
/* 0000690C 000069D0  3C 60 00 00 */	lis r3, float_40_tou2_0000fd90@ha
/* 00006910 000069D4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00006914 000069D8  38 E6 00 00 */	addi r7, r6, float_22p5_tou2_0000fd8c@l
/* 00006918 000069DC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 0000691C 000069E0  38 C5 00 00 */	addi r6, r5, double_to_int_tou2_0000fd78@l
/* 00006920 000069E4  38 A3 00 00 */	addi r5, r3, float_40_tou2_0000fd90@l
/* 00006924 000069E8  3C 60 00 00 */	lis r3, float_5_tou2_0000fd74@ha
/* 00006928 000069EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000692C 000069F0  38 83 00 00 */	addi r4, r3, float_5_tou2_0000fd74@l
/* 00006930 000069F4  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 00006934 000069F8  38 60 00 00 */	li r3, 0x0
/* 00006938 000069FC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 0000693C 00006A00  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 00006940 00006A04  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00006944 00006A08  EC 83 00 32 */	fmuls f4, f3, f0
/* 00006948 00006A0C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000694C 00006A10  EC 41 10 28 */	fsubs f2, f1, f2
/* 00006950 00006A14  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00006954 00006A18  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00006958 00006A1C  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 0000695C 00006A20  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 00006960 00006A24  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 00006964 00006A28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00006968 00006A2C  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 0000696C 00006A30  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 00006970 00006A34  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00006974 00006A38  EC 01 00 2A */	fadds f0, f1, f0
/* 00006978 00006A3C  D0 1E 00 10 */	stfs f0, 0x10(r30)
.L_0000697C:
/* 0000697C 00006A40  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 00006980 00006A44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006984 00006A48  7C 08 03 A6 */	mtlr r0
/* 00006988 00006A4C  38 21 00 30 */	addi r1, r1, 0x30
/* 0000698C 00006A50  4E 80 00 20 */	blr
.endfn eff_staff1

# .text:0x48C | 0x6990 | size: 0xF0
.fn kamec_copy_status, local
/* 00006990 00006A54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006994 00006A58  7C 08 02 A6 */	mflr r0
/* 00006998 00006A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000699C 00006A60  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000069A0 00006A64  7C 7D 1B 78 */	mr r29, r3
/* 000069A4 00006A68  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000069A8 00006A6C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000069AC 00006A70  4B FF E6 69 */	bl evtGetValue
/* 000069B0 00006A74  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000069B4 00006A78  7C 7E 1B 78 */	mr r30, r3
/* 000069B8 00006A7C  7F A3 EB 78 */	mr r3, r29
/* 000069BC 00006A80  4B FF E6 59 */	bl evtGetValue
/* 000069C0 00006A84  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000069C4 00006A88  7C 7F 1B 78 */	mr r31, r3
/* 000069C8 00006A8C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000069CC 00006A90  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000069D0 00006A94  7F C4 F3 78 */	mr r4, r30
/* 000069D4 00006A98  7C 1D 03 78 */	mr r29, r0
/* 000069D8 00006A9C  7C 03 03 78 */	mr r3, r0
/* 000069DC 00006AA0  4B FF E6 39 */	bl BattleGetUnitPtr
/* 000069E0 00006AA4  7C 7E 1B 78 */	mr r30, r3
/* 000069E4 00006AA8  7F A3 EB 78 */	mr r3, r29
/* 000069E8 00006AAC  7F E4 FB 78 */	mr r4, r31
/* 000069EC 00006AB0  4B FF E6 29 */	bl BattleGetUnitPtr
/* 000069F0 00006AB4  A8 1E 01 0C */	lha r0, 0x10c(r30)
/* 000069F4 00006AB8  7C 7F 1B 78 */	mr r31, r3
/* 000069F8 00006ABC  38 7F 01 18 */	addi r3, r31, 0x118
/* 000069FC 00006AC0  38 9E 01 18 */	addi r4, r30, 0x118
/* 00006A00 00006AC4  B0 1F 01 0C */	sth r0, 0x10c(r31)
/* 00006A04 00006AC8  38 A0 00 1E */	li r5, 0x1e
/* 00006A08 00006ACC  4B FF E6 0D */	bl memcpy
/* 00006A0C 00006AD0  A8 BF 01 0C */	lha r5, 0x10c(r31)
/* 00006A10 00006AD4  3C 00 43 30 */	lis r0, 0x4330
/* 00006A14 00006AD8  3C 60 00 00 */	lis r3, double_to_int_tou2_0000fd78@ha
/* 00006A18 00006ADC  90 01 00 08 */	stw r0, 0x8(r1)
/* 00006A1C 00006AE0  38 83 00 00 */	addi r4, r3, double_to_int_tou2_0000fd78@l
/* 00006A20 00006AE4  38 60 00 02 */	li r3, 0x2
/* 00006A24 00006AE8  90 BF 02 08 */	stw r5, 0x208(r31)
/* 00006A28 00006AEC  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00006A2C 00006AF0  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00006A30 00006AF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 00006A34 00006AF8  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 00006A38 00006AFC  A8 9F 01 0C */	lha r4, 0x10c(r31)
/* 00006A3C 00006B00  A8 1F 01 08 */	lha r0, 0x108(r31)
/* 00006A40 00006B04  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00006A44 00006B08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00006A48 00006B0C  90 81 00 0C */	stw r4, 0xc(r1)
/* 00006A4C 00006B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006A50 00006B14  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00006A54 00006B18  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00006A58 00006B1C  EC 21 10 28 */	fsubs f1, f1, f2
/* 00006A5C 00006B20  EC 00 10 28 */	fsubs f0, f0, f2
/* 00006A60 00006B24  EC 01 00 24 */	fdivs f0, f1, f0
/* 00006A64 00006B28  D0 1F 02 14 */	stfs f0, 0x214(r31)
/* 00006A68 00006B2C  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 00006A6C 00006B30  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00006A70 00006B34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006A74 00006B38  7C 08 03 A6 */	mtlr r0
/* 00006A78 00006B3C  38 21 00 30 */	addi r1, r1, 0x30
/* 00006A7C 00006B40  4E 80 00 20 */	blr
.endfn kamec_copy_status

# .text:0x57C | 0x6A80 | size: 0xFC
.fn kamec_shuffle, local
/* 00006A80 00006B44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006A84 00006B48  7C 08 02 A6 */	mflr r0
/* 00006A88 00006B4C  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00006A8C 00006B50  38 80 00 00 */	li r4, 0x0
/* 00006A90 00006B54  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006A94 00006B58  38 00 00 40 */	li r0, 0x40
/* 00006A98 00006B5C  38 A1 00 08 */	addi r5, r1, 0x8
/* 00006A9C 00006B60  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 00006AA0 00006B64  3B 80 00 00 */	li r28, 0x0
/* 00006AA4 00006B68  80 E3 00 00 */	lwz r7, _battleWorkPointer@l(r3)
/* 00006AA8 00006B6C  38 60 00 00 */	li r3, 0x0
/* 00006AAC 00006B70  7C 09 03 A6 */	mtctr r0
.L_00006AB0:
/* 00006AB0 00006B74  38 04 00 20 */	addi r0, r4, 0x20
/* 00006AB4 00006B78  7C 07 00 2E */	lwzx r0, r7, r0
/* 00006AB8 00006B7C  7C 05 19 2E */	stwx r0, r5, r3
/* 00006ABC 00006B80  7C C5 18 2E */	lwzx r6, r5, r3
/* 00006AC0 00006B84  28 06 00 00 */	cmplwi r6, 0x0
/* 00006AC4 00006B88  41 82 00 20 */	beq .L_00006AE4
/* 00006AC8 00006B8C  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00006ACC 00006B90  2C 00 00 35 */	cmpwi r0, 0x35
/* 00006AD0 00006B94  41 82 00 0C */	beq .L_00006ADC
/* 00006AD4 00006B98  2C 00 00 36 */	cmpwi r0, 0x36
/* 00006AD8 00006B9C  40 82 00 0C */	bne .L_00006AE4
.L_00006ADC:
/* 00006ADC 00006BA0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00006AE0 00006BA4  38 63 00 04 */	addi r3, r3, 0x4
.L_00006AE4:
/* 00006AE4 00006BA8  38 84 00 04 */	addi r4, r4, 0x4
/* 00006AE8 00006BAC  42 00 FF C8 */	bdnz .L_00006AB0
/* 00006AEC 00006BB0  3B A0 00 00 */	li r29, 0x0
/* 00006AF0 00006BB4  3B E1 00 08 */	addi r31, r1, 0x8
.L_00006AF4:
/* 00006AF4 00006BB8  7F 83 E3 78 */	mr r3, r28
/* 00006AF8 00006BBC  4B FF E5 1D */	bl irand
/* 00006AFC 00006BC0  7C 7E 1B 78 */	mr r30, r3
/* 00006B00 00006BC4  7F 83 E3 78 */	mr r3, r28
/* 00006B04 00006BC8  4B FF E5 11 */	bl irand
/* 00006B08 00006BCC  57 C4 10 3A */	slwi r4, r30, 2
/* 00006B0C 00006BD0  54 60 10 3A */	slwi r0, r3, 2
/* 00006B10 00006BD4  7C 7F 20 2E */	lwzx r3, r31, r4
/* 00006B14 00006BD8  3B BD 00 01 */	addi r29, r29, 0x1
/* 00006B18 00006BDC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 00006B1C 00006BE0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 00006B20 00006BE4  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 00006B24 00006BE8  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 00006B28 00006BEC  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 00006B2C 00006BF0  D0 24 00 3C */	stfs f1, 0x3c(r4)
/* 00006B30 00006BF4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 00006B34 00006BF8  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 00006B38 00006BFC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 00006B3C 00006C00  D0 24 00 30 */	stfs f1, 0x30(r4)
/* 00006B40 00006C04  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 00006B44 00006C08  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 00006B48 00006C0C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 00006B4C 00006C10  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 00006B50 00006C14  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 00006B54 00006C18  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 00006B58 00006C1C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 00006B5C 00006C20  D0 24 00 38 */	stfs f1, 0x38(r4)
/* 00006B60 00006C24  41 80 FF 94 */	blt .L_00006AF4
/* 00006B64 00006C28  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 00006B68 00006C2C  38 60 00 02 */	li r3, 0x2
/* 00006B6C 00006C30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006B70 00006C34  7C 08 03 A6 */	mtlr r0
/* 00006B74 00006C38  38 21 00 30 */	addi r1, r1, 0x30
/* 00006B78 00006C3C  4E 80 00 20 */	blr
.endfn kamec_shuffle

# .text:0x678 | 0x6B7C | size: 0xE8
.fn kamec_get_bunsin, local
/* 00006B7C 00006C40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006B80 00006C44  7C 08 02 A6 */	mflr r0
/* 00006B84 00006C48  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006B88 00006C4C  38 C0 00 00 */	li r6, 0x0
/* 00006B8C 00006C50  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006B90 00006C54  38 00 00 40 */	li r0, 0x40
/* 00006B94 00006C58  38 A1 00 08 */	addi r5, r1, 0x8
/* 00006B98 00006C5C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 00006B9C 00006C60  7C 7A 1B 78 */	mr r26, r3
/* 00006BA0 00006C64  3B 60 00 00 */	li r27, 0x0
/* 00006BA4 00006C68  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00006BA8 00006C6C  38 60 00 00 */	li r3, 0x0
/* 00006BAC 00006C70  80 E4 00 00 */	lwz r7, _battleWorkPointer@l(r4)
/* 00006BB0 00006C74  38 80 00 00 */	li r4, 0x0
/* 00006BB4 00006C78  7C 09 03 A6 */	mtctr r0
.L_00006BB8:
/* 00006BB8 00006C7C  38 04 00 20 */	addi r0, r4, 0x20
/* 00006BBC 00006C80  7D 07 00 2E */	lwzx r8, r7, r0
/* 00006BC0 00006C84  28 08 00 00 */	cmplwi r8, 0x0
/* 00006BC4 00006C88  41 82 00 1C */	beq .L_00006BE0
/* 00006BC8 00006C8C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00006BCC 00006C90  2C 00 00 36 */	cmpwi r0, 0x36
/* 00006BD0 00006C94  40 82 00 10 */	bne .L_00006BE0
/* 00006BD4 00006C98  7C C5 19 2E */	stwx r6, r5, r3
/* 00006BD8 00006C9C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00006BDC 00006CA0  38 63 00 04 */	addi r3, r3, 0x4
.L_00006BE0:
/* 00006BE0 00006CA4  38 C6 00 01 */	addi r6, r6, 0x1
/* 00006BE4 00006CA8  38 84 00 04 */	addi r4, r4, 0x4
/* 00006BE8 00006CAC  42 00 FF D0 */	bdnz .L_00006BB8
/* 00006BEC 00006CB0  3B C1 00 08 */	addi r30, r1, 0x8
/* 00006BF0 00006CB4  3B A0 00 00 */	li r29, 0x0
/* 00006BF4 00006CB8  3B E0 00 00 */	li r31, 0x0
.L_00006BF8:
/* 00006BF8 00006CBC  7C 1D D8 00 */	cmpw r29, r27
/* 00006BFC 00006CC0  40 80 00 1C */	bge .L_00006C18
/* 00006C00 00006CC4  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006C04 00006CC8  7F 43 D3 78 */	mr r3, r26
/* 00006C08 00006CCC  7C BE F8 2E */	lwzx r5, r30, r31
/* 00006C0C 00006CD0  3B 9C 00 04 */	addi r28, r28, 0x4
/* 00006C10 00006CD4  4B FF E4 05 */	bl evtSetValue
/* 00006C14 00006CD8  48 00 00 18 */	b .L_00006C2C
.L_00006C18:
/* 00006C18 00006CDC  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006C1C 00006CE0  7F 43 D3 78 */	mr r3, r26
/* 00006C20 00006CE4  38 A0 FF FF */	li r5, -0x1
/* 00006C24 00006CE8  3B 9C 00 04 */	addi r28, r28, 0x4
/* 00006C28 00006CEC  4B FF E3 ED */	bl evtSetValue
.L_00006C2C:
/* 00006C2C 00006CF0  3B BD 00 01 */	addi r29, r29, 0x1
/* 00006C30 00006CF4  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006C34 00006CF8  2C 1D 00 04 */	cmpwi r29, 0x4
/* 00006C38 00006CFC  41 80 FF C0 */	blt .L_00006BF8
/* 00006C3C 00006D00  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006C40 00006D04  7F 43 D3 78 */	mr r3, r26
/* 00006C44 00006D08  7F 65 DB 78 */	mr r5, r27
/* 00006C48 00006D0C  4B FF E3 CD */	bl evtSetValue
/* 00006C4C 00006D10  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 00006C50 00006D14  38 60 00 02 */	li r3, 0x2
/* 00006C54 00006D18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006C58 00006D1C  7C 08 03 A6 */	mtlr r0
/* 00006C5C 00006D20  38 21 00 30 */	addi r1, r1, 0x30
/* 00006C60 00006D24  4E 80 00 20 */	blr
.endfn kamec_get_bunsin

# .text:0x760 | 0x6C64 | size: 0x94
.fn kamec_get_live_num, local
/* 00006C64 00006D28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006C68 00006D2C  7C 08 02 A6 */	mflr r0
/* 00006C6C 00006D30  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006C70 00006D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006C74 00006D38  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00006C78 00006D3C  7C 7A 1B 78 */	mr r26, r3
/* 00006C7C 00006D40  3B 80 00 00 */	li r28, 0x0
/* 00006C80 00006D44  3B C0 00 00 */	li r30, 0x0
/* 00006C84 00006D48  3B E0 00 00 */	li r31, 0x0
/* 00006C88 00006D4C  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00006C8C 00006D50  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_00006C90:
/* 00006C90 00006D54  38 1F 00 20 */	addi r0, r31, 0x20
/* 00006C94 00006D58  7C 7B 00 2E */	lwzx r3, r27, r0
/* 00006C98 00006D5C  28 03 00 00 */	cmplwi r3, 0x0
/* 00006C9C 00006D60  41 82 00 24 */	beq .L_00006CC0
/* 00006CA0 00006D64  88 03 00 0C */	lbz r0, 0xc(r3)
/* 00006CA4 00006D68  2C 00 00 01 */	cmpwi r0, 0x1
/* 00006CA8 00006D6C  40 82 00 18 */	bne .L_00006CC0
/* 00006CAC 00006D70  38 80 00 1B */	li r4, 0x1b
/* 00006CB0 00006D74  4B FF E3 65 */	bl BtlUnit_CheckStatus
/* 00006CB4 00006D78  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006CB8 00006D7C  40 82 00 08 */	bne .L_00006CC0
/* 00006CBC 00006D80  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00006CC0:
/* 00006CC0 00006D84  3B DE 00 01 */	addi r30, r30, 0x1
/* 00006CC4 00006D88  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006CC8 00006D8C  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00006CCC 00006D90  41 80 FF C4 */	blt .L_00006C90
/* 00006CD0 00006D94  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00006CD4 00006D98  7F 43 D3 78 */	mr r3, r26
/* 00006CD8 00006D9C  7F 85 E3 78 */	mr r5, r28
/* 00006CDC 00006DA0  4B FF E3 39 */	bl evtSetValue
/* 00006CE0 00006DA4  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00006CE4 00006DA8  38 60 00 02 */	li r3, 0x2
/* 00006CE8 00006DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006CEC 00006DB0  7C 08 03 A6 */	mtlr r0
/* 00006CF0 00006DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 00006CF4 00006DB8  4E 80 00 20 */	blr
.endfn kamec_get_live_num

# 0x00006310..0x00006658 | size: 0x348
.rodata
.balign 8

# .rodata:0x0 | 0x6310 | size: 0x13
.obj str_btl_un_kamec_green_tou2_0000fa50, local
	.string "btl_un_kamec_green"
.endobj str_btl_un_kamec_green_tou2_0000fa50

# .rodata:0x13 | 0x6323 | size: 0x1
.obj gap_03_00006323_rodata, global
.hidden gap_03_00006323_rodata
	.byte 0x00
.endobj gap_03_00006323_rodata

# .rodata:0x14 | 0x6324 | size: 0x18
.obj str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fa64, local
	.string "SFX_ENM_KAMEKU_DAMAGED1"
.endobj str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fa64

# .rodata:0x2C | 0x633C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fa7c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fa7c

# .rodata:0x41 | 0x6351 | size: 0x3
.obj gap_03_00006351_rodata, global
.hidden gap_03_00006351_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006351_rodata

# .rodata:0x44 | 0x6354 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000fa94, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000fa94

# .rodata:0x58 | 0x6368 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000faa8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000faa8

# .rodata:0x71 | 0x6381 | size: 0x3
.obj gap_03_00006381_rodata, global
.hidden gap_03_00006381_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006381_rodata

# .rodata:0x74 | 0x6384 | size: 0x1A
.obj str_btl_un_kamec_green_b_tou2_0000fac4, local
	.string "btl_un_kamec_green_bunsin"
.endobj str_btl_un_kamec_green_b_tou2_0000fac4

# .rodata:0x8E | 0x639E | size: 0x2
.obj gap_03_0000639E_rodata, global
.hidden gap_03_0000639E_rodata
	.2byte 0x0000
.endobj gap_03_0000639E_rodata

# .rodata:0x90 | 0x63A0 | size: 0x8
.obj str_KMG_N_1_tou2_0000fae0, local
	.string "KMG_N_1"
.endobj str_KMG_N_1_tou2_0000fae0

# .rodata:0x98 | 0x63A8 | size: 0x8
.obj str_KMG_Y_1_tou2_0000fae8, local
	.string "KMG_Y_1"
.endobj str_KMG_Y_1_tou2_0000fae8

# .rodata:0xA0 | 0x63B0 | size: 0x8
.obj str_KMG_K_1_tou2_0000faf0, local
	.string "KMG_K_1"
.endobj str_KMG_K_1_tou2_0000faf0

# .rodata:0xA8 | 0x63B8 | size: 0x8
.obj str_KMG_X_1_tou2_0000faf8, local
	.string "KMG_X_1"
.endobj str_KMG_X_1_tou2_0000faf8

# .rodata:0xB0 | 0x63C0 | size: 0x8
.obj str_KMG_S_1_tou2_0000fb00, local
	.string "KMG_S_1"
.endobj str_KMG_S_1_tou2_0000fb00

# .rodata:0xB8 | 0x63C8 | size: 0x8
.obj str_KMG_Q_1_tou2_0000fb08, local
	.string "KMG_Q_1"
.endobj str_KMG_Q_1_tou2_0000fb08

# .rodata:0xC0 | 0x63D0 | size: 0x8
.obj str_KMG_D_1_tou2_0000fb10, local
	.string "KMG_D_1"
.endobj str_KMG_D_1_tou2_0000fb10

# .rodata:0xC8 | 0x63D8 | size: 0x8
.obj str_KMG_R_1_tou2_0000fb18, local
	.string "KMG_R_1"
.endobj str_KMG_R_1_tou2_0000fb18

# .rodata:0xD0 | 0x63E0 | size: 0x8
.obj str_KMG_W_1_tou2_0000fb20, local
	.string "KMG_W_1"
.endobj str_KMG_W_1_tou2_0000fb20

# .rodata:0xD8 | 0x63E8 | size: 0x8
.obj str_KMG_T_1_tou2_0000fb28, local
	.string "KMG_T_1"
.endobj str_KMG_T_1_tou2_0000fb28

# .rodata:0xE0 | 0x63F0 | size: 0x8
.obj str_KMG_N_2_tou2_0000fb30, local
	.string "KMG_N_2"
.endobj str_KMG_N_2_tou2_0000fb30

# .rodata:0xE8 | 0x63F8 | size: 0x8
.obj str_KMG_Y_2_tou2_0000fb38, local
	.string "KMG_Y_2"
.endobj str_KMG_Y_2_tou2_0000fb38

# .rodata:0xF0 | 0x6400 | size: 0x8
.obj str_KMG_K_2_tou2_0000fb40, local
	.string "KMG_K_2"
.endobj str_KMG_K_2_tou2_0000fb40

# .rodata:0xF8 | 0x6408 | size: 0x8
.obj str_KMG_X_2_tou2_0000fb48, local
	.string "KMG_X_2"
.endobj str_KMG_X_2_tou2_0000fb48

# .rodata:0x100 | 0x6410 | size: 0x8
.obj str_KMG_S_2_tou2_0000fb50, local
	.string "KMG_S_2"
.endobj str_KMG_S_2_tou2_0000fb50

# .rodata:0x108 | 0x6418 | size: 0x8
.obj str_KMG_Q_2_tou2_0000fb58, local
	.string "KMG_Q_2"
.endobj str_KMG_Q_2_tou2_0000fb58

# .rodata:0x110 | 0x6420 | size: 0x8
.obj str_KMG_D_2_tou2_0000fb60, local
	.string "KMG_D_2"
.endobj str_KMG_D_2_tou2_0000fb60

# .rodata:0x118 | 0x6428 | size: 0x8
.obj str_KMG_R_2_tou2_0000fb68, local
	.string "KMG_R_2"
.endobj str_KMG_R_2_tou2_0000fb68

# .rodata:0x120 | 0x6430 | size: 0x8
.obj str_KMG_W_2_tou2_0000fb70, local
	.string "KMG_W_2"
.endobj str_KMG_W_2_tou2_0000fb70

# .rodata:0x128 | 0x6438 | size: 0x8
.obj str_KMG_T_2_tou2_0000fb78, local
	.string "KMG_T_2"
.endobj str_KMG_T_2_tou2_0000fb78

# .rodata:0x130 | 0x6440 | size: 0xA
.obj str_c_kamek_g_tou2_0000fb80, local
	.string "c_kamek_g"
.endobj str_c_kamek_g_tou2_0000fb80

# .rodata:0x13A | 0x644A | size: 0x2
.obj gap_03_0000644A_rodata, global
.hidden gap_03_0000644A_rodata
	.2byte 0x0000
.endobj gap_03_0000644A_rodata

# .rodata:0x13C | 0x644C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000fb8c, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000fb8c

# .rodata:0x151 | 0x6461 | size: 0x3
.obj gap_03_00006461_rodata, global
.hidden gap_03_00006461_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006461_rodata

# .rodata:0x154 | 0x6464 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000fba4, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000fba4

# .rodata:0x169 | 0x6479 | size: 0x3
.obj gap_03_00006479_rodata, global
.hidden gap_03_00006479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006479_rodata

# .rodata:0x16C | 0x647C | size: 0xC
.obj str_kemuri_test_tou2_0000fbbc, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0000fbbc

# .rodata:0x178 | 0x6488 | size: 0x1
.obj zero_tou2_0000fbc8, local
	.byte 0x00
.endobj zero_tou2_0000fbc8

# .rodata:0x179 | 0x6489 | size: 0x3
.obj gap_03_00006489_rodata, global
.hidden gap_03_00006489_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006489_rodata

# .rodata:0x17C | 0x648C | size: 0xB
.obj str_star_point_tou2_0000fbcc, local
	.string "star_point"
.endobj str_star_point_tou2_0000fbcc

# .rodata:0x187 | 0x6497 | size: 0x1
.obj gap_03_00006497_rodata, global
.hidden gap_03_00006497_rodata
	.byte 0x00
.endobj gap_03_00006497_rodata

# .rodata:0x188 | 0x6498 | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_tou2_0000fbd8, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_tou2_0000fbd8

# .rodata:0x19E | 0x64AE | size: 0x2
.obj gap_03_000064AE_rodata, global
.hidden gap_03_000064AE_rodata
	.2byte 0x0000
.endobj gap_03_000064AE_rodata

# .rodata:0x1A0 | 0x64B0 | size: 0x8
.obj str_KMG_H_1_tou2_0000fbf0, local
	.string "KMG_H_1"
.endobj str_KMG_H_1_tou2_0000fbf0

# .rodata:0x1A8 | 0x64B8 | size: 0xE
.obj str_SFX_ENM_FALL1_tou2_0000fbf8, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_tou2_0000fbf8

# .rodata:0x1B6 | 0x64C6 | size: 0x2
.obj gap_03_000064C6_rodata, global
.hidden gap_03_000064C6_rodata
	.2byte 0x0000
.endobj gap_03_000064C6_rodata

# .rodata:0x1B8 | 0x64C8 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc08, local
	.string "SFX_ENM_KAMEKU_MAGIC1"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc08

# .rodata:0x1CE | 0x64DE | size: 0x2
.obj gap_03_000064DE_rodata, global
.hidden gap_03_000064DE_rodata
	.2byte 0x0000
.endobj gap_03_000064DE_rodata

# .rodata:0x1D0 | 0x64E0 | size: 0x9
.obj str_KMG_A_1A_tou2_0000fc20, local
	.string "KMG_A_1A"
.endobj str_KMG_A_1A_tou2_0000fc20

# .rodata:0x1D9 | 0x64E9 | size: 0x3
.obj gap_03_000064E9_rodata, global
.hidden gap_03_000064E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064E9_rodata

# .rodata:0x1DC | 0x64EC | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc2c, local
	.string "SFX_ENM_KAMEKU_MAGIC4"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc2c

# .rodata:0x1F2 | 0x6502 | size: 0x2
.obj gap_03_00006502_rodata, global
.hidden gap_03_00006502_rodata
	.2byte 0x0000
.endobj gap_03_00006502_rodata

# .rodata:0x1F4 | 0x6504 | size: 0x9
.obj str_KMG_A_1B_tou2_0000fc44, local
	.string "KMG_A_1B"
.endobj str_KMG_A_1B_tou2_0000fc44

# .rodata:0x1FD | 0x650D | size: 0x3
.obj gap_03_0000650D_rodata, global
.hidden gap_03_0000650D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000650D_rodata

# .rodata:0x200 | 0x6510 | size: 0x9
.obj str_KMG_A_1C_tou2_0000fc50, local
	.string "KMG_A_1C"
.endobj str_KMG_A_1C_tou2_0000fc50

# .rodata:0x209 | 0x6519 | size: 0x3
.obj gap_03_00006519_rodata, global
.hidden gap_03_00006519_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006519_rodata

# .rodata:0x20C | 0x651C | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc5c, local
	.string "SFX_ENM_KAMEKU_MAGIC8"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc5c

# .rodata:0x222 | 0x6532 | size: 0x2
.obj gap_03_00006532_rodata, global
.hidden gap_03_00006532_rodata
	.2byte 0x0000
.endobj gap_03_00006532_rodata

# .rodata:0x224 | 0x6534 | size: 0x9
.obj str_KMG_A_1D_tou2_0000fc74, local
	.string "KMG_A_1D"
.endobj str_KMG_A_1D_tou2_0000fc74

# .rodata:0x22D | 0x653D | size: 0x3
.obj gap_03_0000653D_rodata, global
.hidden gap_03_0000653D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000653D_rodata

# .rodata:0x230 | 0x6540 | size: 0x9
.obj str_KMG_A_1E_tou2_0000fc80, local
	.string "KMG_A_1E"
.endobj str_KMG_A_1E_tou2_0000fc80

# .rodata:0x239 | 0x6549 | size: 0x3
.obj gap_03_00006549_rodata, global
.hidden gap_03_00006549_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006549_rodata

# .rodata:0x23C | 0x654C | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc8c, local
	.string "SFX_ENM_KAMEKU_MAGIC6"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc8c

# .rodata:0x252 | 0x6562 | size: 0x2
.obj gap_03_00006562_rodata, global
.hidden gap_03_00006562_rodata
	.2byte 0x0000
.endobj gap_03_00006562_rodata

# .rodata:0x254 | 0x6564 | size: 0x9
.obj str_KMG_A_2A_tou2_0000fca4, local
	.string "KMG_A_2A"
.endobj str_KMG_A_2A_tou2_0000fca4

# .rodata:0x25D | 0x656D | size: 0x3
.obj gap_03_0000656D_rodata, global
.hidden gap_03_0000656D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000656D_rodata

# .rodata:0x260 | 0x6570 | size: 0x16
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fcb0, local
	.string "SFX_ENM_KAMEKU_MAGIC7"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fcb0

# .rodata:0x276 | 0x6586 | size: 0x2
.obj gap_03_00006586_rodata, global
.hidden gap_03_00006586_rodata
	.2byte 0x0000
.endobj gap_03_00006586_rodata

# .rodata:0x278 | 0x6588 | size: 0x9
.obj str_KMG_A_2B_tou2_0000fcc8, local
	.string "KMG_A_2B"
.endobj str_KMG_A_2B_tou2_0000fcc8

# .rodata:0x281 | 0x6591 | size: 0x3
.obj gap_03_00006591_rodata, global
.hidden gap_03_00006591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006591_rodata

# .rodata:0x284 | 0x6594 | size: 0x9
.obj str_KMG_A_2C_tou2_0000fcd4, local
	.string "KMG_A_2C"
.endobj str_KMG_A_2C_tou2_0000fcd4

# .rodata:0x28D | 0x659D | size: 0x3
.obj gap_03_0000659D_rodata, global
.hidden gap_03_0000659D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000659D_rodata

# .rodata:0x290 | 0x65A0 | size: 0x9
.obj str_KMG_A_3A_tou2_0000fce0, local
	.string "KMG_A_3A"
.endobj str_KMG_A_3A_tou2_0000fce0

# .rodata:0x299 | 0x65A9 | size: 0x3
.obj gap_03_000065A9_rodata, global
.hidden gap_03_000065A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065A9_rodata

# .rodata:0x29C | 0x65AC | size: 0x9
.obj str_KMG_A_3B_tou2_0000fcec, local
	.string "KMG_A_3B"
.endobj str_KMG_A_3B_tou2_0000fcec

# .rodata:0x2A5 | 0x65B5 | size: 0x3
.obj gap_03_000065B5_rodata, global
.hidden gap_03_000065B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065B5_rodata

# .rodata:0x2A8 | 0x65B8 | size: 0x9
.obj str_KMG_A_3C_tou2_0000fcf8, local
	.string "KMG_A_3C"
.endobj str_KMG_A_3C_tou2_0000fcf8

# .rodata:0x2B1 | 0x65C1 | size: 0x3
.obj gap_03_000065C1_rodata, global
.hidden gap_03_000065C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065C1_rodata

# .rodata:0x2B4 | 0x65C4 | size: 0x9
.obj str_KMG_A_3D_tou2_0000fd04, local
	.string "KMG_A_3D"
.endobj str_KMG_A_3D_tou2_0000fd04

# .rodata:0x2BD | 0x65CD | size: 0x3
.obj gap_03_000065CD_rodata, global
.hidden gap_03_000065CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065CD_rodata

# .rodata:0x2C0 | 0x65D0 | size: 0x18
.obj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fd10, local
	.string "SFX_ENM_KAMEKU_MAGIC3_2"
.endobj str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fd10

# .rodata:0x2D8 | 0x65E8 | size: 0x9
.obj str_recovery_tou2_0000fd28, local
	.string "recovery"
.endobj str_recovery_tou2_0000fd28

# .rodata:0x2E1 | 0x65F1 | size: 0x3
.obj gap_03_000065F1_rodata, global
.hidden gap_03_000065F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065F1_rodata

# .rodata:0x2E4 | 0x65F4 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tou2_0000fd34, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT1"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tou2_0000fd34

# .rodata:0x2FD | 0x660D | size: 0x3
.obj gap_03_0000660D_rodata, global
.hidden gap_03_0000660D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000660D_rodata

# .rodata:0x300 | 0x6610 | size: 0x19
.obj str_SFX_ENM_KAMEKU_OFFSH_tou2_0000fd50, local
	.string "SFX_ENM_KAMEKU_OFFSHOOT2"
.endobj str_SFX_ENM_KAMEKU_OFFSH_tou2_0000fd50
	.byte 0x00, 0x00, 0x00

# .rodata:0x31C | 0x662C | size: 0x4
.obj float_25_tou2_0000fd6c, local
	.float 25
.endobj float_25_tou2_0000fd6c

# .rodata:0x320 | 0x6630 | size: 0x4
.obj float_20_tou2_0000fd70, local
	.float 20
.endobj float_20_tou2_0000fd70

# .rodata:0x324 | 0x6634 | size: 0x4
.obj float_5_tou2_0000fd74, local
	.float 5
.endobj float_5_tou2_0000fd74

# .rodata:0x328 | 0x6638 | size: 0x8
.obj double_to_int_tou2_0000fd78, local
	.double 4503601774854144
.endobj double_to_int_tou2_0000fd78

# .rodata:0x330 | 0x6640 | size: 0x4
.obj zero_tou2_0000fd80, local
	.float 0
.endobj zero_tou2_0000fd80

# .rodata:0x334 | 0x6644 | size: 0x4
.obj float_neg1000_tou2_0000fd84, local
	.float -1000
.endobj float_neg1000_tou2_0000fd84

# .rodata:0x338 | 0x6648 | size: 0x4
.obj float_1_tou2_0000fd88, local
	.float 1
.endobj float_1_tou2_0000fd88

# .rodata:0x33C | 0x664C | size: 0x4
.obj float_22p5_tou2_0000fd8c, local
	.float 22.5
.endobj float_22p5_tou2_0000fd8c

# .rodata:0x340 | 0x6650 | size: 0x4
.obj float_40_tou2_0000fd90, local
	.float 40
.endobj float_40_tou2_0000fd90

# .rodata:0x344 | 0x6654 | size: 0x4
.obj gap_03_00006654_rodata, global
.hidden gap_03_00006654_rodata
	.4byte 0x00000000
.endobj gap_03_00006654_rodata

# 0x0003E368..0x00041C90 | size: 0x3928
.data
.balign 8

# .data:0x0 | 0x3E368 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3E370 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3E374 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3E378 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3E37C | size: 0x4
.obj gap_04_0003E37C_data, global
.hidden gap_04_0003E37C_data
	.4byte 0x00000000
.endobj gap_04_0003E37C_data

# .data:0x18 | 0x3E380 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3E388 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3E38C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3E390 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3E398 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3E39C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3E3A0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3E3A4 | size: 0x4
.obj gap_04_0003E3A4_data, global
.hidden gap_04_0003E3A4_data
	.4byte 0x00000000
.endobj gap_04_0003E3A4_data

# .data:0x40 | 0x3E3A8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3E3B0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3E3B4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3E3B8 | size: 0xC4
.obj unit_kamec_green_26_data_3E3B8, global
	.4byte 0x00000035
	.4byte str_btl_un_kamec_green_tou2_0000fa50
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
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fa64
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fa7c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000fa94
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000faa8
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_kamec_green_26_data_3E3B8

# .data:0x114 | 0x3E47C | size: 0xC4
.obj unit_kamec_green_bunsin, local
	.4byte 0x00000036
	.4byte str_btl_un_kamec_green_b_tou2_0000fac4
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
	.4byte str_SFX_ENM_KAMEKU_DAMAG_tou2_0000fa64
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000fa7c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000fa94
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000faa8
	.4byte 0x00400000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table_bunsin
.endobj unit_kamec_green_bunsin

# .data:0x1D8 | 0x3E540 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1DD | 0x3E545 | size: 0x3
.obj gap_04_0003E545_data, global
.hidden gap_04_0003E545_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003E545_data

# .data:0x1E0 | 0x3E548 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E5 | 0x3E54D | size: 0x3
.obj gap_04_0003E54D_data, global
.hidden gap_04_0003E54D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0003E54D_data

# .data:0x1E8 | 0x3E550 | size: 0x16
.obj regist, local
	.ascii "FKPdFddFdZdZd_PFPdPdd_"
.endobj regist

# .data:0x1FE | 0x3E566 | size: 0x2
.obj gap_04_0003E566_data, global
.hidden gap_04_0003E566_data
	.2byte 0x0000
.endobj gap_04_0003E566_data

# .data:0x200 | 0x3E568 | size: 0x16
.obj regist_bunsin, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist_bunsin

# .data:0x216 | 0x3E57E | size: 0x2
.obj gap_04_0003E57E_data, global
.hidden gap_04_0003E57E_data
	.2byte 0x0000
.endobj gap_04_0003E57E_data

# .data:0x218 | 0x3E580 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KMG_N_1_tou2_0000fae0
	.4byte 0x00000002
	.4byte str_KMG_Y_1_tou2_0000fae8
	.4byte 0x00000009
	.4byte str_KMG_Y_1_tou2_0000fae8
	.4byte 0x00000005
	.4byte str_KMG_K_1_tou2_0000faf0
	.4byte 0x00000004
	.4byte str_KMG_X_1_tou2_0000faf8
	.4byte 0x00000003
	.4byte str_KMG_X_1_tou2_0000faf8
	.4byte 0x0000001C
	.4byte str_KMG_S_1_tou2_0000fb00
	.4byte 0x0000001D
	.4byte str_KMG_Q_1_tou2_0000fb08
	.4byte 0x0000001E
	.4byte str_KMG_Q_1_tou2_0000fb08
	.4byte 0x0000001F
	.4byte str_KMG_S_1_tou2_0000fb00
	.4byte 0x00000027
	.4byte str_KMG_D_1_tou2_0000fb10
	.4byte 0x0000002A
	.4byte str_KMG_R_1_tou2_0000fb18
	.4byte 0x00000028
	.4byte str_KMG_W_1_tou2_0000fb20
	.4byte 0x00000038
	.4byte str_KMG_X_1_tou2_0000faf8
	.4byte 0x00000039
	.4byte str_KMG_X_1_tou2_0000faf8
	.4byte 0x00000041
	.4byte str_KMG_T_1_tou2_0000fb28
	.4byte 0x00000045
	.4byte str_KMG_S_1_tou2_0000fb00
.endobj pose_table

# .data:0x2A0 | 0x3E608 | size: 0x88
.obj pose_table_sky, local
	.4byte 0x00000001
	.4byte str_KMG_N_2_tou2_0000fb30
	.4byte 0x00000002
	.4byte str_KMG_Y_2_tou2_0000fb38
	.4byte 0x00000009
	.4byte str_KMG_Y_2_tou2_0000fb38
	.4byte 0x00000005
	.4byte str_KMG_K_2_tou2_0000fb40
	.4byte 0x00000004
	.4byte str_KMG_X_2_tou2_0000fb48
	.4byte 0x00000003
	.4byte str_KMG_X_2_tou2_0000fb48
	.4byte 0x0000001C
	.4byte str_KMG_S_2_tou2_0000fb50
	.4byte 0x0000001D
	.4byte str_KMG_Q_2_tou2_0000fb58
	.4byte 0x0000001E
	.4byte str_KMG_Q_2_tou2_0000fb58
	.4byte 0x0000001F
	.4byte str_KMG_S_2_tou2_0000fb50
	.4byte 0x00000027
	.4byte str_KMG_D_2_tou2_0000fb60
	.4byte 0x0000002A
	.4byte str_KMG_R_2_tou2_0000fb68
	.4byte 0x00000028
	.4byte str_KMG_W_2_tou2_0000fb70
	.4byte 0x00000038
	.4byte str_KMG_X_2_tou2_0000fb48
	.4byte 0x00000039
	.4byte str_KMG_X_2_tou2_0000fb48
	.4byte 0x00000041
	.4byte str_KMG_T_2_tou2_0000fb78
	.4byte 0x00000045
	.4byte str_KMG_S_2_tou2_0000fb50
.endobj pose_table_sky

# .data:0x328 | 0x3E690 | size: 0x28
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

# .data:0x350 | 0x3E6B8 | size: 0x30
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

# .data:0x380 | 0x3E6E8 | size: 0x18
.obj data_table_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_bunsin

# .data:0x398 | 0x3E700 | size: 0x20
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

# .data:0x3B8 | 0x3E720 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kamec_green_tou2_0000fa50
	.4byte str_c_kamek_g_tou2_0000fb80
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
	.4byte str_btl_un_kamec_green_tou2_0000fa50
	.4byte str_c_kamek_g_tou2_0000fb80
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

# .data:0x450 | 0x3E7B8 | size: 0xC0
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

# .data:0x510 | 0x3E878 | size: 0xC0
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

# .data:0x5D0 | 0x3E938 | size: 0xC0
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

# .data:0x690 | 0x3E9F8 | size: 0xC0
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

# .data:0x750 | 0x3EAB8 | size: 0xC0
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

# .data:0x810 | 0x3EB78 | size: 0xC0
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

# .data:0x8D0 | 0x3EC38 | size: 0xC0
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

# .data:0x990 | 0x3ECF8 | size: 0x30
.obj entry_kamec, local
	.4byte unit_kamec_green_bunsin
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

# .data:0x9C0 | 0x3ED28 | size: 0x58
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

# .data:0xA18 | 0x3ED80 | size: 0x15C
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

# .data:0xB74 | 0x3EEDC | size: 0xE8
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

# .data:0xC5C | 0x3EFC4 | size: 0xE8
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

# .data:0xD44 | 0x3F0AC | size: 0x108
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

# .data:0xE4C | 0x3F1B4 | size: 0x110
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

# .data:0xF5C | 0x3F2C4 | size: 0x32C
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
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tou2_0000fb8c
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_0000fba4
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
	.4byte str_kemuri_test_tou2_0000fbbc
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
	.4byte zero_tou2_0000fbc8
	.4byte str_star_point_tou2_0000fbcc
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

# .data:0x1288 | 0x3F5F0 | size: 0x138
.obj kamec_subset_blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_tou2_0000fbd8
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

# .data:0x13C0 | 0x3F728 | size: 0x40
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

# .data:0x1400 | 0x3F768 | size: 0x94
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

# .data:0x1494 | 0x3F7FC | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x149C | 0x3F804 | size: 0x27C
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
	.4byte str_KMG_H_1_tou2_0000fbf0
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
	.4byte str_SFX_ENM_FALL1_tou2_0000fbf8
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

# .data:0x1718 | 0x3FA80 | size: 0x4C
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

# .data:0x1764 | 0x3FACC | size: 0x4A0
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
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
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
	.4byte 0x00000028
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
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000000
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
	.4byte 0x00000014
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
	.4byte 0x00000014
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
	.4byte 0x00000000
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

# .data:0x1C04 | 0x3FF6C | size: 0x4C4
.obj ground_magic_common_event1, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc08
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
	.4byte str_KMG_A_1A_tou2_0000fc20
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_1A_tou2_0000fc20
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_1A_tou2_0000fc20
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_1A_tou2_0000fc20
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_1A_tou2_0000fc20
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc2c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_1B_tou2_0000fc44
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_1B_tou2_0000fc44
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_1B_tou2_0000fc44
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_1B_tou2_0000fc44
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_1B_tou2_0000fc44
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_1C_tou2_0000fc50
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_1C_tou2_0000fc50
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_1C_tou2_0000fc50
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_1C_tou2_0000fc50
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_1C_tou2_0000fc50
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc5c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_1D_tou2_0000fc74
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_1D_tou2_0000fc74
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_1D_tou2_0000fc74
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_1D_tou2_0000fc74
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_1D_tou2_0000fc74
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_1E_tou2_0000fc80
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_1E_tou2_0000fc80
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_1E_tou2_0000fc80
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_1E_tou2_0000fc80
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_1E_tou2_0000fc80
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event1

# .data:0x20C8 | 0x40430 | size: 0xF4
.obj ground_magic_common_event2, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc08
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
	.4byte str_KMG_A_1A_tou2_0000fc20
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc8c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_2A_tou2_0000fca4
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fcb0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_2B_tou2_0000fcc8
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_2C_tou2_0000fcd4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event2

# .data:0x21BC | 0x40524 | size: 0x408
.obj sky_magic_common_event, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc08
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
	.4byte str_KMG_A_3A_tou2_0000fce0
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_3A_tou2_0000fce0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_3A_tou2_0000fce0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_3A_tou2_0000fce0
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_3A_tou2_0000fce0
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fc5c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_3B_tou2_0000fcec
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_3B_tou2_0000fcec
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_3B_tou2_0000fcec
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_3B_tou2_0000fcec
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_3B_tou2_0000fcec
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fcb0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_3C_tou2_0000fcf8
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_3C_tou2_0000fcf8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_3C_tou2_0000fcf8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_3C_tou2_0000fcf8
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_3C_tou2_0000fcf8
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KMG_A_3D_tou2_0000fd04
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte str_KMG_A_3D_tou2_0000fd04
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte str_KMG_A_3D_tou2_0000fd04
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte str_KMG_A_3D_tou2_0000fd04
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte str_KMG_A_3D_tou2_0000fd04
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sky_magic_common_event

# .data:0x25C4 | 0x4092C | size: 0x6C
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

# .data:0x2630 | 0x40998 | size: 0x40
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

# .data:0x2670 | 0x409D8 | size: 0x68
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

# .data:0x26D8 | 0x40A40 | size: 0x514
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
	.4byte str_SFX_ENM_KAMEKU_MAGIC_tou2_0000fd10
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

# .data:0x2BEC | 0x40F54 | size: 0xB4
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

# .data:0x2CA0 | 0x41008 | size: 0x78
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

# .data:0x2D18 | 0x41080 | size: 0x230
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

# .data:0x2F48 | 0x412B0 | size: 0x1C
.obj dekadeka_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dekadeka_magic_event

# .data:0x2F64 | 0x412CC | size: 0x1C
.obj katikati_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x0000000E
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj katikati_magic_event

# .data:0x2F80 | 0x412E8 | size: 0x1C
.obj biribiri_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj biribiri_magic_event

# .data:0x2F9C | 0x41304 | size: 0x1C
.obj trans_magic_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000012
	.4byte 0x0001005E
	.4byte support_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_magic_event

# .data:0x2FB8 | 0x41320 | size: 0x238
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
	.4byte zero_tou2_0000fbc8
	.4byte str_recovery_tou2_0000fd28
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

# .data:0x31F0 | 0x41558 | size: 0x2D0
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
	.4byte zero_tou2_0000fbc8
	.4byte str_recovery_tou2_0000fd28
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

# .data:0x34C0 | 0x41828 | size: 0x280
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
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tou2_0000fd34
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
	.4byte str_SFX_ENM_KAMEKU_OFFSH_tou2_0000fd50
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

# .data:0x3740 | 0x41AA8 | size: 0x108
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

# .data:0x3848 | 0x41BB0 | size: 0xDC
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

# .data:0x3924 | 0x41C8C | size: 0x4
.obj gap_04_00041C8C_data, global
.hidden gap_04_00041C8C_data
	.4byte 0x00000000
.endobj gap_04_00041C8C_data
