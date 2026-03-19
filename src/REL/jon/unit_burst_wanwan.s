.include "macros.inc"
.file "unit_burst_wanwan.o"

# 0x000054DC..0x00005C44 | size: 0x768
.text
.balign 4

# .text:0x0 | 0x54DC | size: 0x5EC
.fn chain_main, local
/* 000054DC 000055A0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 000054E0 000055A4  7C 08 02 A6 */	mflr r0
/* 000054E4 000055A8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 000054E8 000055AC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 000054EC 000055B0  F3 E1 00 B8 */	psq_st f31, 0xb8(r1), 0, qr0
/* 000054F0 000055B4  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 000054F4 000055B8  F3 C1 00 A8 */	psq_st f30, 0xa8(r1), 0, qr0
/* 000054F8 000055BC  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 000054FC 000055C0  F3 A1 00 98 */	psq_st f29, 0x98(r1), 0, qr0
/* 00005500 000055C4  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 00005504 000055C8  F3 81 00 88 */	psq_st f28, 0x88(r1), 0, qr0
/* 00005508 000055CC  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 0000550C 000055D0  F3 61 00 78 */	psq_st f27, 0x78(r1), 0, qr0
/* 00005510 000055D4  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 00005514 000055D8  F3 41 00 68 */	psq_st f26, 0x68(r1), 0, qr0
/* 00005518 000055DC  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 0000551C 000055E0  F3 21 00 58 */	psq_st f25, 0x58(r1), 0, qr0
/* 00005520 000055E4  BF A1 00 44 */	stmw r29, 0x44(r1)
/* 00005524 000055E8  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00005528 000055EC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000552C 000055F0  83 A4 00 00 */	lwz r29, _battleWorkPointer@l(r4)
/* 00005530 000055F4  7C 7E 1B 78 */	mr r30, r3
/* 00005534 000055F8  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00005538 000055FC  4B FF B5 39 */	bl evtGetValue
/* 0000553C 00005600  7C 60 1B 78 */	mr r0, r3
/* 00005540 00005604  7F C3 F3 78 */	mr r3, r30
/* 00005544 00005608  7C 04 03 78 */	mr r4, r0
/* 00005548 0000560C  4B FF B5 29 */	bl BattleTransID
/* 0000554C 00005610  7C 7E 1B 78 */	mr r30, r3
/* 00005550 00005614  7F A3 EB 78 */	mr r3, r29
/* 00005554 00005618  7F C4 F3 78 */	mr r4, r30
/* 00005558 0000561C  4B FF B5 19 */	bl BattleGetUnitPtr
/* 0000555C 00005620  28 03 00 00 */	cmplwi r3, 0x0
/* 00005560 00005624  40 82 00 0C */	bne .L_0000556C
/* 00005564 00005628  38 60 00 00 */	li r3, 0x0
/* 00005568 0000562C  48 00 05 14 */	b .L_00005A7C
.L_0000556C:
/* 0000556C 00005630  38 80 00 01 */	li r4, 0x1
/* 00005570 00005634  4B FF B5 01 */	bl BtlUnit_GetPartsPtr
/* 00005574 00005638  7F A3 EB 78 */	mr r3, r29
/* 00005578 0000563C  7F C4 F3 78 */	mr r4, r30
/* 0000557C 00005640  4B FF B4 F5 */	bl BattleGetUnitPtr
/* 00005580 00005644  38 81 00 28 */	addi r4, r1, 0x28
/* 00005584 00005648  7C 7F 1B 78 */	mr r31, r3
/* 00005588 0000564C  38 A1 00 24 */	addi r5, r1, 0x24
/* 0000558C 00005650  38 C1 00 20 */	addi r6, r1, 0x20
/* 00005590 00005654  4B FF B4 E1 */	bl BtlUnit_GetPos
/* 00005594 00005658  7F E3 FB 78 */	mr r3, r31
/* 00005598 0000565C  38 80 00 09 */	li r4, 0x9
/* 0000559C 00005660  4B FF B4 D5 */	bl BtlUnit_GetPartsPtr
/* 000055A0 00005664  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 000055A4 00005668  3C 00 43 30 */	lis r0, 0x4330
/* 000055A8 0000566C  3C 80 00 00 */	lis r4, double_to_int_jon_0000dc50@ha
/* 000055AC 00005670  3C C0 00 00 */	lis r6, float_20_jon_0000dc2c@ha
/* 000055B0 00005674  7C A5 07 74 */	extsb r5, r5
/* 000055B4 00005678  90 01 00 30 */	stw r0, 0x30(r1)
/* 000055B8 0000567C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 000055BC 00005680  C8 24 00 00 */	lfd f1, double_to_int_jon_0000dc50@l(r4)
/* 000055C0 00005684  90 01 00 34 */	stw r0, 0x34(r1)
/* 000055C4 00005688  C0 86 00 00 */	lfs f4, float_20_jon_0000dc2c@l(r6)
/* 000055C8 0000568C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 000055CC 00005690  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 000055D0 00005694  EC 20 08 28 */	fsubs f1, f0, f1
/* 000055D4 00005698  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 000055D8 0000569C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 000055DC 000056A0  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 000055E0 000056A4  4B FF B4 91 */	bl BtlUnit_SetPartsPos
/* 000055E4 000056A8  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 000055E8 000056AC  2C 00 00 02 */	cmpwi r0, 0x2
/* 000055EC 000056B0  40 82 00 90 */	bne .L_0000567C
/* 000055F0 000056B4  7F E3 FB 78 */	mr r3, r31
/* 000055F4 000056B8  38 80 00 09 */	li r4, 0x9
/* 000055F8 000056BC  4B FF B4 79 */	bl BtlUnit_GetPartsPtr
/* 000055FC 000056C0  38 81 00 28 */	addi r4, r1, 0x28
/* 00005600 000056C4  38 A1 00 24 */	addi r5, r1, 0x24
/* 00005604 000056C8  38 C1 00 20 */	addi r6, r1, 0x20
/* 00005608 000056CC  4B FF B4 69 */	bl BtlUnit_GetPartsPos
/* 0000560C 000056D0  3B A0 00 08 */	li r29, 0x8
.L_00005610:
/* 00005610 000056D4  7F E3 FB 78 */	mr r3, r31
/* 00005614 000056D8  7F A4 EB 78 */	mr r4, r29
/* 00005618 000056DC  4B FF B4 59 */	bl BtlUnit_GetPartsPtr
/* 0000561C 000056E0  7C 7E 1B 78 */	mr r30, r3
/* 00005620 000056E4  38 81 00 10 */	addi r4, r1, 0x10
/* 00005624 000056E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 00005628 000056EC  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000562C 000056F0  4B FF B4 45 */	bl BtlUnit_GetPartsPos
/* 00005630 000056F4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00005634 000056F8  3B BD FF FF */	subi r29, r29, 0x1
/* 00005638 000056FC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 0000563C 00005700  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00005640 00005704  EC 01 00 28 */	fsubs f0, f1, f0
/* 00005644 00005708  FC 00 00 1E */	fctiwz f0, f0
/* 00005648 0000570C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 0000564C 00005710  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00005650 00005714  90 1E 01 30 */	stw r0, 0x130(r30)
/* 00005654 00005718  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00005658 0000571C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 0000565C 00005720  EC 01 00 28 */	fsubs f0, f1, f0
/* 00005660 00005724  FC 00 00 1E */	fctiwz f0, f0
/* 00005664 00005728  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 00005668 0000572C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 0000566C 00005730  90 1E 01 34 */	stw r0, 0x134(r30)
/* 00005670 00005734  40 80 FF A0 */	bge .L_00005610
/* 00005674 00005738  38 00 00 01 */	li r0, 0x1
/* 00005678 0000573C  90 1F 02 20 */	stw r0, 0x220(r31)
.L_0000567C:
/* 0000567C 00005740  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 00005680 00005744  2C 00 00 01 */	cmpwi r0, 0x1
/* 00005684 00005748  40 82 00 98 */	bne .L_0000571C
/* 00005688 0000574C  7F E3 FB 78 */	mr r3, r31
/* 0000568C 00005750  38 80 00 09 */	li r4, 0x9
/* 00005690 00005754  4B FF B3 E1 */	bl BtlUnit_GetPartsPtr
/* 00005694 00005758  38 81 00 28 */	addi r4, r1, 0x28
/* 00005698 0000575C  38 A1 00 24 */	addi r5, r1, 0x24
/* 0000569C 00005760  38 C1 00 20 */	addi r6, r1, 0x20
/* 000056A0 00005764  4B FF B3 D1 */	bl BtlUnit_GetPartsPos
/* 000056A4 00005768  3C 60 00 00 */	lis r3, double_to_int_jon_0000dc50@ha
/* 000056A8 0000576C  3B A0 00 08 */	li r29, 0x8
/* 000056AC 00005770  CB 83 00 00 */	lfd f28, double_to_int_jon_0000dc50@l(r3)
/* 000056B0 00005774  3F C0 43 30 */	lis r30, 0x4330
.L_000056B4:
/* 000056B4 00005778  7F E3 FB 78 */	mr r3, r31
/* 000056B8 0000577C  7F A4 EB 78 */	mr r4, r29
/* 000056BC 00005780  4B FF B3 B5 */	bl BtlUnit_GetPartsPtr
/* 000056C0 00005784  80 83 01 30 */	lwz r4, 0x130(r3)
/* 000056C4 00005788  80 03 01 34 */	lwz r0, 0x134(r3)
/* 000056C8 0000578C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000056CC 00005790  93 C1 00 38 */	stw r30, 0x38(r1)
/* 000056D0 00005794  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000056D4 00005798  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 000056D8 0000579C  90 81 00 3C */	stw r4, 0x3c(r1)
/* 000056DC 000057A0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 000056E0 000057A4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 000056E4 000057A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 000056E8 000057AC  EC 20 E0 28 */	fsubs f1, f0, f28
/* 000056EC 000057B0  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 000056F0 000057B4  93 C1 00 30 */	stw r30, 0x30(r1)
/* 000056F4 000057B8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 000056F8 000057BC  EC 24 08 2A */	fadds f1, f4, f1
/* 000056FC 000057C0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 00005700 000057C4  EC 42 00 2A */	fadds f2, f2, f0
/* 00005704 000057C8  4B FF B3 6D */	bl BtlUnit_SetPartsPos
/* 00005708 000057CC  3B BD FF FF */	subi r29, r29, 0x1
/* 0000570C 000057D0  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00005710 000057D4  40 80 FF A4 */	bge .L_000056B4
/* 00005714 000057D8  38 60 00 02 */	li r3, 0x2
/* 00005718 000057DC  48 00 03 64 */	b .L_00005A7C
.L_0000571C:
/* 0000571C 000057E0  7F E3 FB 78 */	mr r3, r31
/* 00005720 000057E4  38 80 00 01 */	li r4, 0x1
/* 00005724 000057E8  4B FF B3 4D */	bl BtlUnit_GetPartsPtr
/* 00005728 000057EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 0000572C 000057F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 00005730 000057F4  38 C1 00 14 */	addi r6, r1, 0x14
/* 00005734 000057F8  4B FF B3 3D */	bl BtlUnit_GetPartsPos
/* 00005738 000057FC  7F E3 FB 78 */	mr r3, r31
/* 0000573C 00005800  38 80 00 09 */	li r4, 0x9
/* 00005740 00005804  4B FF B3 31 */	bl BtlUnit_GetPartsPtr
/* 00005744 00005808  38 81 00 10 */	addi r4, r1, 0x10
/* 00005748 0000580C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000574C 00005810  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005750 00005814  4B FF B3 21 */	bl BtlUnit_GetPartsPos
/* 00005754 00005818  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 00005758 0000581C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 0000575C 00005820  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 00005760 00005824  EC 81 00 28 */	fsubs f4, f1, f0
/* 00005764 00005828  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00005768 0000582C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 0000576C 00005830  EC 63 00 28 */	fsubs f3, f3, f0
/* 00005770 00005834  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00005774 00005838  EC 04 01 32 */	fmuls f0, f4, f4
/* 00005778 0000583C  EC 22 08 28 */	fsubs f1, f2, f1
/* 0000577C 00005840  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 00005780 00005844  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 00005784 00005848  4B FF B2 ED */	bl sqrt
/* 00005788 0000584C  3C 80 00 00 */	lis r4, float_0p125_jon_0000dc30@ha
/* 0000578C 00005850  FC 40 08 18 */	frsp f2, f1
/* 00005790 00005854  C0 24 00 00 */	lfs f1, float_0p125_jon_0000dc30@l(r4)
/* 00005794 00005858  3C 60 00 00 */	lis r3, float_10_jon_0000dc34@ha
/* 00005798 0000585C  C0 03 00 00 */	lfs f0, float_10_jon_0000dc34@l(r3)
/* 0000579C 00005860  EF E2 00 72 */	fmuls f31, f2, f1
/* 000057A0 00005864  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 000057A4 00005868  40 80 00 08 */	bge .L_000057AC
/* 000057A8 0000586C  FF E0 00 90 */	fmr f31, f0
.L_000057AC:
/* 000057AC 00005870  3C 60 00 00 */	lis r3, float_300_jon_0000dc38@ha
/* 000057B0 00005874  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 000057B4 00005878  38 83 00 00 */	addi r4, r3, float_300_jon_0000dc38@l
/* 000057B8 0000587C  7F E3 FB 78 */	mr r3, r31
/* 000057BC 00005880  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 000057C0 00005884  38 80 00 01 */	li r4, 0x1
/* 000057C4 00005888  EF C1 00 24 */	fdivs f30, f1, f0
/* 000057C8 0000588C  4B FF B2 A9 */	bl BtlUnit_GetPartsPtr
/* 000057CC 00005890  38 81 00 28 */	addi r4, r1, 0x28
/* 000057D0 00005894  7C 7E 1B 78 */	mr r30, r3
/* 000057D4 00005898  38 A1 00 24 */	addi r5, r1, 0x24
/* 000057D8 0000589C  38 C1 00 20 */	addi r6, r1, 0x20
/* 000057DC 000058A0  4B FF B2 95 */	bl BtlUnit_GetPartsPos
/* 000057E0 000058A4  3C 60 00 00 */	lis r3, float_110_jon_0000dc3c@ha
/* 000057E4 000058A8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 000057E8 000058AC  C0 03 00 00 */	lfs f0, float_110_jon_0000dc3c@l(r3)
/* 000057EC 000058B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000057F0 000058B4  40 81 00 08 */	ble .L_000057F8
/* 000057F4 000058B8  D0 01 00 24 */	stfs f0, 0x24(r1)
.L_000057F8:
/* 000057F8 000058BC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 000057FC 000058C0  7F C3 F3 78 */	mr r3, r30
/* 00005800 000058C4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00005804 000058C8  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00005808 000058CC  4B FF B2 69 */	bl BtlUnit_SetPartsPos
/* 0000580C 000058D0  7F E3 FB 78 */	mr r3, r31
/* 00005810 000058D4  38 80 00 01 */	li r4, 0x1
/* 00005814 000058D8  4B FF B2 5D */	bl BtlUnit_GetPartsPtr
/* 00005818 000058DC  38 81 00 28 */	addi r4, r1, 0x28
/* 0000581C 000058E0  38 A1 00 24 */	addi r5, r1, 0x24
/* 00005820 000058E4  38 C1 00 20 */	addi r6, r1, 0x20
/* 00005824 000058E8  4B FF B2 4D */	bl BtlUnit_GetPartsPos
/* 00005828 000058EC  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 0000582C 000058F0  3C 00 43 30 */	lis r0, 0x4330
/* 00005830 000058F4  3C 80 00 00 */	lis r4, double_to_int_jon_0000dc50@ha
/* 00005834 000058F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 00005838 000058FC  7C A5 07 74 */	extsb r5, r5
/* 0000583C 00005900  C8 44 00 00 */	lfd f2, double_to_int_jon_0000dc50@l(r4)
/* 00005840 00005904  54 A0 20 36 */	slwi r0, r5, 4
/* 00005844 00005908  3C 60 00 00 */	lis r3, float_16_jon_0000dc40@ha
/* 00005848 0000590C  7C 00 00 D0 */	neg r0, r0
/* 0000584C 00005910  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 00005850 00005914  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00005854 00005918  38 A3 00 00 */	addi r5, r3, float_16_jon_0000dc40@l
/* 00005858 0000591C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 0000585C 00005920  7F E3 FB 78 */	mr r3, r31
/* 00005860 00005924  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 00005864 00005928  38 80 00 02 */	li r4, 0x2
/* 00005868 0000592C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 0000586C 00005930  EC 40 10 28 */	fsubs f2, f0, f2
/* 00005870 00005934  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00005874 00005938  EC 01 00 2A */	fadds f0, f1, f0
/* 00005878 0000593C  EC 23 10 2A */	fadds f1, f3, f2
/* 0000587C 00005940  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 00005880 00005944  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 00005884 00005948  4B FF B1 ED */	bl BtlUnit_GetPartsPtr
/* 00005888 0000594C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 0000588C 00005950  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 00005890 00005954  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00005894 00005958  4B FF B1 DD */	bl BtlUnit_SetPartsPos
/* 00005898 0000595C  3C 80 00 00 */	lis r4, float_1_jon_0000dc44@ha
/* 0000589C 00005960  3C 60 00 00 */	lis r3, zero_jon_0000dc48@ha
/* 000058A0 00005964  C3 A4 00 00 */	lfs f29, float_1_jon_0000dc44@l(r4)
/* 000058A4 00005968  3B A0 00 02 */	li r29, 0x2
/* 000058A8 0000596C  C3 83 00 00 */	lfs f28, zero_jon_0000dc48@l(r3)
.L_000058AC:
/* 000058AC 00005970  7F E3 FB 78 */	mr r3, r31
/* 000058B0 00005974  7F A4 EB 78 */	mr r4, r29
/* 000058B4 00005978  4B FF B1 BD */	bl BtlUnit_GetPartsPtr
/* 000058B8 0000597C  38 81 00 1C */	addi r4, r1, 0x1c
/* 000058BC 00005980  38 A1 00 18 */	addi r5, r1, 0x18
/* 000058C0 00005984  38 C1 00 14 */	addi r6, r1, 0x14
/* 000058C4 00005988  4B FF B1 AD */	bl BtlUnit_GetPartsPos
/* 000058C8 0000598C  7F E3 FB 78 */	mr r3, r31
/* 000058CC 00005990  38 9D 00 01 */	addi r4, r29, 0x1
/* 000058D0 00005994  4B FF B1 A1 */	bl BtlUnit_GetPartsPtr
/* 000058D4 00005998  38 81 00 10 */	addi r4, r1, 0x10
/* 000058D8 0000599C  7C 7E 1B 78 */	mr r30, r3
/* 000058DC 000059A0  38 A1 00 0C */	addi r5, r1, 0xc
/* 000058E0 000059A4  38 C1 00 08 */	addi r6, r1, 0x8
/* 000058E4 000059A8  4B FF B1 8D */	bl BtlUnit_GetPartsPos
/* 000058E8 000059AC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000058EC 000059B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 000058F0 000059B4  EC 81 F0 28 */	fsubs f4, f1, f30
/* 000058F4 000059B8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 000058F8 000059BC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 000058FC 000059C0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 00005900 000059C4  EF 40 20 28 */	fsubs f26, f0, f4
/* 00005904 000059C8  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00005908 000059CC  EF 63 10 28 */	fsubs f27, f3, f2
/* 0000590C 000059D0  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 00005910 000059D4  EF 21 00 28 */	fsubs f25, f1, f0
/* 00005914 000059D8  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 00005918 000059DC  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 0000591C 000059E0  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 00005920 000059E4  4B FF B1 51 */	bl sqrt
/* 00005924 000059E8  FC 60 08 18 */	frsp f3, f1
/* 00005928 000059EC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 0000592C 000059F0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00005930 000059F4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00005934 000059F8  EC 7F 18 24 */	fdivs f3, f31, f3
/* 00005938 000059FC  EC 7D 18 28 */	fsubs f3, f29, f3
/* 0000593C 00005A00  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 00005940 00005A04  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 00005944 00005A08  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 00005948 00005A0C  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 0000594C 00005A10  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 00005950 00005A14  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 00005954 00005A18  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 00005958 00005A1C  40 80 00 10 */	bge .L_00005968
/* 0000595C 00005A20  3C 60 00 00 */	lis r3, zero_jon_0000dc48@ha
/* 00005960 00005A24  C0 03 00 00 */	lfs f0, zero_jon_0000dc48@l(r3)
/* 00005964 00005A28  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_00005968:
/* 00005968 00005A2C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 0000596C 00005A30  7F C3 F3 78 */	mr r3, r30
/* 00005970 00005A34  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00005974 00005A38  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00005978 00005A3C  4B FF B0 F9 */	bl BtlUnit_SetPartsPos
/* 0000597C 00005A40  3B BD 00 01 */	addi r29, r29, 0x1
/* 00005980 00005A44  2C 1D 00 07 */	cmpwi r29, 0x7
/* 00005984 00005A48  40 81 FF 28 */	ble .L_000058AC
/* 00005988 00005A4C  3C 80 00 00 */	lis r4, float_1_jon_0000dc44@ha
/* 0000598C 00005A50  3C 60 00 00 */	lis r3, zero_jon_0000dc48@ha
/* 00005990 00005A54  C3 84 00 00 */	lfs f28, float_1_jon_0000dc44@l(r4)
/* 00005994 00005A58  3B A0 00 09 */	li r29, 0x9
/* 00005998 00005A5C  C3 A3 00 00 */	lfs f29, zero_jon_0000dc48@l(r3)
.L_0000599C:
/* 0000599C 00005A60  7F E3 FB 78 */	mr r3, r31
/* 000059A0 00005A64  7F A4 EB 78 */	mr r4, r29
/* 000059A4 00005A68  4B FF B0 CD */	bl BtlUnit_GetPartsPtr
/* 000059A8 00005A6C  38 81 00 1C */	addi r4, r1, 0x1c
/* 000059AC 00005A70  38 A1 00 18 */	addi r5, r1, 0x18
/* 000059B0 00005A74  38 C1 00 14 */	addi r6, r1, 0x14
/* 000059B4 00005A78  4B FF B0 BD */	bl BtlUnit_GetPartsPos
/* 000059B8 00005A7C  7F E3 FB 78 */	mr r3, r31
/* 000059BC 00005A80  38 9D FF FF */	subi r4, r29, 0x1
/* 000059C0 00005A84  4B FF B0 B1 */	bl BtlUnit_GetPartsPtr
/* 000059C4 00005A88  38 81 00 10 */	addi r4, r1, 0x10
/* 000059C8 00005A8C  7C 7E 1B 78 */	mr r30, r3
/* 000059CC 00005A90  38 A1 00 0C */	addi r5, r1, 0xc
/* 000059D0 00005A94  38 C1 00 08 */	addi r6, r1, 0x8
/* 000059D4 00005A98  4B FF B0 9D */	bl BtlUnit_GetPartsPos
/* 000059D8 00005A9C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 000059DC 00005AA0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 000059E0 00005AA4  EC 81 F0 28 */	fsubs f4, f1, f30
/* 000059E4 00005AA8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 000059E8 00005AAC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 000059EC 00005AB0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 000059F0 00005AB4  EF 40 20 28 */	fsubs f26, f0, f4
/* 000059F4 00005AB8  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000059F8 00005ABC  EF 63 10 28 */	fsubs f27, f3, f2
/* 000059FC 00005AC0  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 00005A00 00005AC4  EF 21 00 28 */	fsubs f25, f1, f0
/* 00005A04 00005AC8  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 00005A08 00005ACC  EC 1B 06 FA */	fmadds f0, f27, f27, f0
/* 00005A0C 00005AD0  EC 39 06 7A */	fmadds f1, f25, f25, f0
/* 00005A10 00005AD4  4B FF B0 61 */	bl sqrt
/* 00005A14 00005AD8  FC 60 08 18 */	frsp f3, f1
/* 00005A18 00005ADC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00005A1C 00005AE0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00005A20 00005AE4  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00005A24 00005AE8  EC 7F 18 24 */	fdivs f3, f31, f3
/* 00005A28 00005AEC  EC 7C 18 28 */	fsubs f3, f28, f3
/* 00005A2C 00005AF0  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 00005A30 00005AF4  EC 5B 10 FA */	fmadds f2, f27, f3, f2
/* 00005A34 00005AF8  EC 19 00 FA */	fmadds f0, f25, f3, f0
/* 00005A38 00005AFC  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 00005A3C 00005B00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 00005A40 00005B04  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 00005A44 00005B08  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 00005A48 00005B0C  40 80 00 10 */	bge .L_00005A58
/* 00005A4C 00005B10  3C 60 00 00 */	lis r3, zero_jon_0000dc48@ha
/* 00005A50 00005B14  C0 03 00 00 */	lfs f0, zero_jon_0000dc48@l(r3)
/* 00005A54 00005B18  D0 01 00 0C */	stfs f0, 0xc(r1)
.L_00005A58:
/* 00005A58 00005B1C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00005A5C 00005B20  7F C3 F3 78 */	mr r3, r30
/* 00005A60 00005B24  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00005A64 00005B28  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00005A68 00005B2C  4B FF B0 09 */	bl BtlUnit_SetPartsPos
/* 00005A6C 00005B30  3B BD FF FF */	subi r29, r29, 0x1
/* 00005A70 00005B34  2C 1D 00 03 */	cmpwi r29, 0x3
/* 00005A74 00005B38  40 80 FF 28 */	bge .L_0000599C
/* 00005A78 00005B3C  38 60 00 02 */	li r3, 0x2
.L_00005A7C:
/* 00005A7C 00005B40  E3 E1 00 B8 */	psq_l f31, 0xb8(r1), 0, qr0
/* 00005A80 00005B44  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 00005A84 00005B48  E3 C1 00 A8 */	psq_l f30, 0xa8(r1), 0, qr0
/* 00005A88 00005B4C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 00005A8C 00005B50  E3 A1 00 98 */	psq_l f29, 0x98(r1), 0, qr0
/* 00005A90 00005B54  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 00005A94 00005B58  E3 81 00 88 */	psq_l f28, 0x88(r1), 0, qr0
/* 00005A98 00005B5C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 00005A9C 00005B60  E3 61 00 78 */	psq_l f27, 0x78(r1), 0, qr0
/* 00005AA0 00005B64  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 00005AA4 00005B68  E3 41 00 68 */	psq_l f26, 0x68(r1), 0, qr0
/* 00005AA8 00005B6C  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 00005AAC 00005B70  E3 21 00 58 */	psq_l f25, 0x58(r1), 0, qr0
/* 00005AB0 00005B74  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 00005AB4 00005B78  BB A1 00 44 */	lmw r29, 0x44(r1)
/* 00005AB8 00005B7C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 00005ABC 00005B80  7C 08 03 A6 */	mtlr r0
/* 00005AC0 00005B84  38 21 00 C0 */	addi r1, r1, 0xc0
/* 00005AC4 00005B88  4E 80 00 20 */	blr
.endfn chain_main

# .text:0x5EC | 0x5AC8 | size: 0x17C
.fn chain_init, local
/* 00005AC8 00005B8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00005ACC 00005B90  7C 08 02 A6 */	mflr r0
/* 00005AD0 00005B94  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005AD4 00005B98  90 01 00 44 */	stw r0, 0x44(r1)
/* 00005AD8 00005B9C  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 00005ADC 00005BA0  7C 7C 1B 78 */	mr r28, r3
/* 00005AE0 00005BA4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00005AE4 00005BA8  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00005AE8 00005BAC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00005AEC 00005BB0  4B FF AF 85 */	bl evtGetValue
/* 00005AF0 00005BB4  7C 60 1B 78 */	mr r0, r3
/* 00005AF4 00005BB8  7F 83 E3 78 */	mr r3, r28
/* 00005AF8 00005BBC  7C 04 03 78 */	mr r4, r0
/* 00005AFC 00005BC0  4B FF AF 75 */	bl BattleTransID
/* 00005B00 00005BC4  7C 64 1B 78 */	mr r4, r3
/* 00005B04 00005BC8  7F E3 FB 78 */	mr r3, r31
/* 00005B08 00005BCC  4B FF AF 69 */	bl BattleGetUnitPtr
/* 00005B0C 00005BD0  38 81 00 10 */	addi r4, r1, 0x10
/* 00005B10 00005BD4  7C 7E 1B 78 */	mr r30, r3
/* 00005B14 00005BD8  38 A1 00 0C */	addi r5, r1, 0xc
/* 00005B18 00005BDC  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005B1C 00005BE0  4B FF AF 55 */	bl BtlUnit_GetPos
/* 00005B20 00005BE4  3C 60 00 00 */	lis r3, str_WAN_S_1B_jon_0000dc58@ha
/* 00005B24 00005BE8  3B 80 00 02 */	li r28, 0x2
/* 00005B28 00005BEC  3B E3 00 00 */	addi r31, r3, str_WAN_S_1B_jon_0000dc58@l
.L_00005B2C:
/* 00005B2C 00005BF0  7F C3 F3 78 */	mr r3, r30
/* 00005B30 00005BF4  7F 84 E3 78 */	mr r4, r28
/* 00005B34 00005BF8  4B FF AF 3D */	bl BtlUnit_GetPartsPtr
/* 00005B38 00005BFC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00005B3C 00005C00  7C 7D 1B 78 */	mr r29, r3
/* 00005B40 00005C04  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00005B44 00005C08  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00005B48 00005C0C  4B FF AF 29 */	bl BtlUnit_SetPartsPos
/* 00005B4C 00005C10  7F A3 EB 78 */	mr r3, r29
/* 00005B50 00005C14  7F E4 FB 78 */	mr r4, r31
/* 00005B54 00005C18  4B FF AF 1D */	bl BtlUnit_SetAnim
/* 00005B58 00005C1C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00005B5C 00005C20  2C 1C 00 07 */	cmpwi r28, 0x7
/* 00005B60 00005C24  40 81 FF CC */	ble .L_00005B2C
/* 00005B64 00005C28  7F C3 F3 78 */	mr r3, r30
/* 00005B68 00005C2C  38 80 00 08 */	li r4, 0x8
/* 00005B6C 00005C30  4B FF AF 05 */	bl BtlUnit_GetPartsPtr
/* 00005B70 00005C34  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 00005B74 00005C38  3C 00 43 30 */	lis r0, 0x4330
/* 00005B78 00005C3C  3C A0 00 00 */	lis r5, double_to_int_jon_0000dc50@ha
/* 00005B7C 00005C40  3C C0 00 00 */	lis r6, float_20_jon_0000dc2c@ha
/* 00005B80 00005C44  7C 84 07 74 */	extsb r4, r4
/* 00005B84 00005C48  90 01 00 18 */	stw r0, 0x18(r1)
/* 00005B88 00005C4C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00005B8C 00005C50  C8 45 00 00 */	lfd f2, double_to_int_jon_0000dc50@l(r5)
/* 00005B90 00005C54  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00005B94 00005C58  7C 7F 1B 78 */	mr r31, r3
/* 00005B98 00005C5C  C0 86 00 00 */	lfs f4, float_20_jon_0000dc2c@l(r6)
/* 00005B9C 00005C60  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00005BA0 00005C64  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00005BA4 00005C68  EC 21 10 28 */	fsubs f1, f1, f2
/* 00005BA8 00005C6C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00005BAC 00005C70  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00005BB0 00005C74  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00005BB4 00005C78  4B FF AE BD */	bl BtlUnit_SetPartsPos
/* 00005BB8 00005C7C  3C 80 00 00 */	lis r4, str_WAN_S_1B_jon_0000dc58@ha
/* 00005BBC 00005C80  7F E3 FB 78 */	mr r3, r31
/* 00005BC0 00005C84  38 84 00 00 */	addi r4, r4, str_WAN_S_1B_jon_0000dc58@l
/* 00005BC4 00005C88  4B FF AE AD */	bl BtlUnit_SetAnim
/* 00005BC8 00005C8C  7F C3 F3 78 */	mr r3, r30
/* 00005BCC 00005C90  38 80 00 09 */	li r4, 0x9
/* 00005BD0 00005C94  4B FF AE A1 */	bl BtlUnit_GetPartsPtr
/* 00005BD4 00005C98  88 9E 01 89 */	lbz r4, 0x189(r30)
/* 00005BD8 00005C9C  3C 00 43 30 */	lis r0, 0x4330
/* 00005BDC 00005CA0  3C A0 00 00 */	lis r5, double_to_int_jon_0000dc50@ha
/* 00005BE0 00005CA4  3C C0 00 00 */	lis r6, float_20_jon_0000dc2c@ha
/* 00005BE4 00005CA8  7C 84 07 74 */	extsb r4, r4
/* 00005BE8 00005CAC  90 01 00 20 */	stw r0, 0x20(r1)
/* 00005BEC 00005CB0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00005BF0 00005CB4  C8 45 00 00 */	lfd f2, double_to_int_jon_0000dc50@l(r5)
/* 00005BF4 00005CB8  90 81 00 24 */	stw r4, 0x24(r1)
/* 00005BF8 00005CBC  7C 7F 1B 78 */	mr r31, r3
/* 00005BFC 00005CC0  C0 86 00 00 */	lfs f4, float_20_jon_0000dc2c@l(r6)
/* 00005C00 00005CC4  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 00005C04 00005CC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00005C08 00005CCC  EC 21 10 28 */	fsubs f1, f1, f2
/* 00005C0C 00005CD0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00005C10 00005CD4  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 00005C14 00005CD8  EC 24 00 7C */	fnmsubs f1, f4, f1, f0
/* 00005C18 00005CDC  4B FF AE 59 */	bl BtlUnit_SetPartsPos
/* 00005C1C 00005CE0  3C 80 00 00 */	lis r4, str_WAN_Z_2_jon_0000dc64@ha
/* 00005C20 00005CE4  7F E3 FB 78 */	mr r3, r31
/* 00005C24 00005CE8  38 84 00 00 */	addi r4, r4, str_WAN_Z_2_jon_0000dc64@l
/* 00005C28 00005CEC  4B FF AE 49 */	bl BtlUnit_SetAnim
/* 00005C2C 00005CF0  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 00005C30 00005CF4  38 60 00 02 */	li r3, 0x2
/* 00005C34 00005CF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00005C38 00005CFC  7C 08 03 A6 */	mtlr r0
/* 00005C3C 00005D00  38 21 00 40 */	addi r1, r1, 0x40
/* 00005C40 00005D04  4E 80 00 20 */	blr
.endfn chain_init

# 0x00006A48..0x00006C40 | size: 0x1F8
.rodata
.balign 8

# .rodata:0x0 | 0x6A48 | size: 0x14
.obj str_btl_un_burst_wanwan_jon_0000da78, local
	.string "btl_un_burst_wanwan"
.endobj str_btl_un_burst_wanwan_jon_0000da78

# .rodata:0x14 | 0x6A5C | size: 0x15
.obj str_SFX_ENM_WAN_DAMAGED1_jon_0000da8c, local
	.string "SFX_ENM_WAN_DAMAGED1"
.endobj str_SFX_ENM_WAN_DAMAGED1_jon_0000da8c

# .rodata:0x29 | 0x6A71 | size: 0x3
.obj gap_03_00006A71_rodata, global
.hidden gap_03_00006A71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A71_rodata

# .rodata:0x2C | 0x6A74 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000daa4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000daa4

# .rodata:0x41 | 0x6A89 | size: 0x3
.obj gap_03_00006A89_rodata, global
.hidden gap_03_00006A89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A89_rodata

# .rodata:0x44 | 0x6A8C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000dabc, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000dabc

# .rodata:0x58 | 0x6AA0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000dad0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000dad0

# .rodata:0x71 | 0x6AB9 | size: 0x3
.obj gap_03_00006AB9_rodata, global
.hidden gap_03_00006AB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AB9_rodata

# .rodata:0x74 | 0x6ABC | size: 0x8
.obj str_WAN_N_1_jon_0000daec, local
	.string "WAN_N_1"
.endobj str_WAN_N_1_jon_0000daec

# .rodata:0x7C | 0x6AC4 | size: 0x8
.obj str_WAN_Y_1_jon_0000daf4, local
	.string "WAN_Y_1"
.endobj str_WAN_Y_1_jon_0000daf4

# .rodata:0x84 | 0x6ACC | size: 0x8
.obj str_WAN_K_1_jon_0000dafc, local
	.string "WAN_K_1"
.endobj str_WAN_K_1_jon_0000dafc

# .rodata:0x8C | 0x6AD4 | size: 0x8
.obj str_WAN_X_1_jon_0000db04, local
	.string "WAN_X_1"
.endobj str_WAN_X_1_jon_0000db04

# .rodata:0x94 | 0x6ADC | size: 0x8
.obj str_WAN_Z_1_jon_0000db0c, local
	.string "WAN_Z_1"
.endobj str_WAN_Z_1_jon_0000db0c

# .rodata:0x9C | 0x6AE4 | size: 0x9
.obj str_WAN_S_1A_jon_0000db14, local
	.string "WAN_S_1A"
.endobj str_WAN_S_1A_jon_0000db14

# .rodata:0xA5 | 0x6AED | size: 0x3
.obj gap_03_00006AED_rodata, global
.hidden gap_03_00006AED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AED_rodata

# .rodata:0xA8 | 0x6AF0 | size: 0x8
.obj str_WAN_D_1_jon_0000db20, local
	.string "WAN_D_1"
.endobj str_WAN_D_1_jon_0000db20

# .rodata:0xB0 | 0x6AF8 | size: 0x8
.obj str_WAN_A_1_jon_0000db28, local
	.string "WAN_A_1"
.endobj str_WAN_A_1_jon_0000db28

# .rodata:0xB8 | 0x6B00 | size: 0x8
.obj str_WAN_R_1_jon_0000db30, local
	.string "WAN_R_1"
.endobj str_WAN_R_1_jon_0000db30

# .rodata:0xC0 | 0x6B08 | size: 0x8
.obj str_WAN_W_1_jon_0000db38, local
	.string "WAN_W_1"
.endobj str_WAN_W_1_jon_0000db38

# .rodata:0xC8 | 0x6B10 | size: 0xB
.obj str_c_wanwan_a_jon_0000db40, local
	.string "c_wanwan_a"
.endobj str_c_wanwan_a_jon_0000db40

# .rodata:0xD3 | 0x6B1B | size: 0x1
.obj gap_03_00006B1B_rodata, global
.hidden gap_03_00006B1B_rodata
	.byte 0x00
.endobj gap_03_00006B1B_rodata

# .rodata:0xD4 | 0x6B1C | size: 0x2
.obj str_0_jon_0000db4c, local
	.string "0"
.endobj str_0_jon_0000db4c

# .rodata:0xD6 | 0x6B1E | size: 0x2
.obj gap_03_00006B1E_rodata, global
.hidden gap_03_00006B1E_rodata
	.2byte 0x0000
.endobj gap_03_00006B1E_rodata

# .rodata:0xD8 | 0x6B20 | size: 0x15
.obj str_SFX_ENM_WAN_LANDING1_jon_0000db50, local
	.string "SFX_ENM_WAN_LANDING1"
.endobj str_SFX_ENM_WAN_LANDING1_jon_0000db50

# .rodata:0xED | 0x6B35 | size: 0x3
.obj gap_03_00006B35_rodata, global
.hidden gap_03_00006B35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B35_rodata

# .rodata:0xF0 | 0x6B38 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_jon_0000db68, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_jon_0000db68

# .rodata:0x105 | 0x6B4D | size: 0x3
.obj gap_03_00006B4D_rodata, global
.hidden gap_03_00006B4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B4D_rodata

# .rodata:0x108 | 0x6B50 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_jon_0000db80, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_jon_0000db80

# .rodata:0x11D | 0x6B65 | size: 0x3
.obj gap_03_00006B65_rodata, global
.hidden gap_03_00006B65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B65_rodata

# .rodata:0x120 | 0x6B68 | size: 0xC
.obj str_kemuri_test_jon_0000db98, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000db98

# .rodata:0x12C | 0x6B74 | size: 0x1
.obj zero_jon_0000dba4, local
	.byte 0x00
.endobj zero_jon_0000dba4

# .rodata:0x12D | 0x6B75 | size: 0x3
.obj gap_03_00006B75_rodata, global
.hidden gap_03_00006B75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B75_rodata

# .rodata:0x130 | 0x6B78 | size: 0xB
.obj str_star_point_jon_0000dba8, local
	.string "star_point"
.endobj str_star_point_jon_0000dba8

# .rodata:0x13B | 0x6B83 | size: 0x1
.obj gap_03_00006B83_rodata, global
.hidden gap_03_00006B83_rodata
	.byte 0x00
.endobj gap_03_00006B83_rodata

# .rodata:0x13C | 0x6B84 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT1_jon_0000dbb4, local
	.string "SFX_ENM_WAN_WAIT1"
.endobj str_SFX_ENM_WAN_WAIT1_jon_0000dbb4

# .rodata:0x14E | 0x6B96 | size: 0x2
.obj gap_03_00006B96_rodata, global
.hidden gap_03_00006B96_rodata
	.2byte 0x0000
.endobj gap_03_00006B96_rodata

# .rodata:0x150 | 0x6B98 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT3_jon_0000dbc8, local
	.string "SFX_ENM_WAN_WAIT3"
.endobj str_SFX_ENM_WAN_WAIT3_jon_0000dbc8

# .rodata:0x162 | 0x6BAA | size: 0x2
.obj gap_03_00006BAA_rodata, global
.hidden gap_03_00006BAA_rodata
	.2byte 0x0000
.endobj gap_03_00006BAA_rodata

# .rodata:0x164 | 0x6BAC | size: 0x12
.obj str_SFX_ENM_WAN_WAIT2_jon_0000dbdc, local
	.string "SFX_ENM_WAN_WAIT2"
.endobj str_SFX_ENM_WAN_WAIT2_jon_0000dbdc

# .rodata:0x176 | 0x6BBE | size: 0x2
.obj gap_03_00006BBE_rodata, global
.hidden gap_03_00006BBE_rodata
	.2byte 0x0000
.endobj gap_03_00006BBE_rodata

# .rodata:0x178 | 0x6BC0 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK1_jon_0000dbf0, local
	.string "SFX_ENM_WAN_ATTACK1"
.endobj str_SFX_ENM_WAN_ATTACK1_jon_0000dbf0

# .rodata:0x18C | 0x6BD4 | size: 0x14
.obj str_SFX_ENM_WAN_ATTACK2_jon_0000dc04, local
	.string "SFX_ENM_WAN_ATTACK2"
.endobj str_SFX_ENM_WAN_ATTACK2_jon_0000dc04

# .rodata:0x1A0 | 0x6BE8 | size: 0x12
.obj str_SFX_ENM_WAN_WAIT4_jon_0000dc18, local
	.string "SFX_ENM_WAN_WAIT4"
.endobj str_SFX_ENM_WAN_WAIT4_jon_0000dc18
	.2byte 0x0000

# .rodata:0x1B4 | 0x6BFC | size: 0x4
.obj float_20_jon_0000dc2c, local
	.float 20
.endobj float_20_jon_0000dc2c

# .rodata:0x1B8 | 0x6C00 | size: 0x4
.obj float_0p125_jon_0000dc30, local
	.float 0.125
.endobj float_0p125_jon_0000dc30

# .rodata:0x1BC | 0x6C04 | size: 0x4
.obj float_10_jon_0000dc34, local
	.float 10
.endobj float_10_jon_0000dc34

# .rodata:0x1C0 | 0x6C08 | size: 0x4
.obj float_300_jon_0000dc38, local
	.float 300
.endobj float_300_jon_0000dc38

# .rodata:0x1C4 | 0x6C0C | size: 0x4
.obj float_110_jon_0000dc3c, local
	.float 110
.endobj float_110_jon_0000dc3c

# .rodata:0x1C8 | 0x6C10 | size: 0x4
.obj float_16_jon_0000dc40, local
	.float 16
.endobj float_16_jon_0000dc40

# .rodata:0x1CC | 0x6C14 | size: 0x4
.obj float_1_jon_0000dc44, local
	.float 1
.endobj float_1_jon_0000dc44

# .rodata:0x1D0 | 0x6C18 | size: 0x4
.obj zero_jon_0000dc48, local
	.float 0
.endobj zero_jon_0000dc48
	.4byte 0x00000000

# .rodata:0x1D8 | 0x6C20 | size: 0x8
.obj double_to_int_jon_0000dc50, local
	.double 4503601774854144
.endobj double_to_int_jon_0000dc50

# .rodata:0x1E0 | 0x6C28 | size: 0x9
.obj str_WAN_S_1B_jon_0000dc58, local
	.string "WAN_S_1B"
.endobj str_WAN_S_1B_jon_0000dc58

# .rodata:0x1E9 | 0x6C31 | size: 0x3
.obj gap_03_00006C31_rodata, global
.hidden gap_03_00006C31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C31_rodata

# .rodata:0x1EC | 0x6C34 | size: 0x8
.obj str_WAN_Z_2_jon_0000dc64, local
	.string "WAN_Z_2"
.endobj str_WAN_Z_2_jon_0000dc64

# .rodata:0x1F4 | 0x6C3C | size: 0x4
.obj gap_03_00006C3C_rodata, global
.hidden gap_03_00006C3C_rodata
	.4byte 0x00000000
.endobj gap_03_00006C3C_rodata

# 0x0005F6E0..0x000611B8 | size: 0x1AD8
.data
.balign 8

# .data:0x0 | 0x5F6E0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5F6E8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5F6EC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5F6F0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5F6F4 | size: 0x4
.obj gap_04_0005F6F4_data, global
.hidden gap_04_0005F6F4_data
	.4byte 0x00000000
.endobj gap_04_0005F6F4_data

# .data:0x18 | 0x5F6F8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5F700 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5F704 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5F708 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5F710 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5F714 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5F718 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5F71C | size: 0x4
.obj gap_04_0005F71C_data, global
.hidden gap_04_0005F71C_data
	.4byte 0x00000000
.endobj gap_04_0005F71C_data

# .data:0x40 | 0x5F720 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5F728 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5F72C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5F730 | size: 0xC4
.obj unit_burst_wanwan_14_data_5F730, global
	.4byte 0x0000003B
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte 0x00060000
	.4byte 0x01011800
	.4byte 0x01460332
	.4byte 0x270F0022
	.4byte 0x00240006
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x42080000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_WAN_DAMAGED1_jon_0000da8c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000daa4
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000dabc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000dad0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x09000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_burst_wanwan_14_data_5F730

# .data:0x114 | 0x5F7F4 | size: 0x5
.obj defence, local
	.4byte 0x03636303
	.byte 0x03
.endobj defence

# .data:0x119 | 0x5F7F9 | size: 0x3
.obj gap_04_0005F7F9_data, global
.hidden gap_04_0005F7F9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005F7F9_data

# .data:0x11C | 0x5F7FC | size: 0x5
.obj defence_attr, local
	.4byte 0x00020200
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x5F801 | size: 0x3
.obj gap_04_0005F801_data, global
.hidden gap_04_0005F801_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005F801_data

# .data:0x124 | 0x5F804 | size: 0x16
.obj regist, local
	.4byte 0x00464164
	.4byte 0x41640046
	.4byte 0x645A645A
	.4byte 0x645F412D
	.4byte 0x1E644164
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x5F81A | size: 0x2
.obj gap_04_0005F81A_data, global
.hidden gap_04_0005F81A_data
	.2byte 0x0000
.endobj gap_04_0005F81A_data

# .data:0x13C | 0x5F81C | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_WAN_N_1_jon_0000daec
	.4byte 0x00000002
	.4byte str_WAN_Y_1_jon_0000daf4
	.4byte 0x00000009
	.4byte str_WAN_Y_1_jon_0000daf4
	.4byte 0x00000005
	.4byte str_WAN_K_1_jon_0000dafc
	.4byte 0x00000004
	.4byte str_WAN_X_1_jon_0000db04
	.4byte 0x00000003
	.4byte str_WAN_X_1_jon_0000db04
	.4byte 0x0000001B
	.4byte str_WAN_Z_1_jon_0000db0c
	.4byte 0x0000001C
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x0000001D
	.4byte str_WAN_D_1_jon_0000db20
	.4byte 0x0000001E
	.4byte str_WAN_D_1_jon_0000db20
	.4byte 0x0000001F
	.4byte str_WAN_A_1_jon_0000db28
	.4byte 0x00000027
	.4byte str_WAN_D_1_jon_0000db20
	.4byte 0x00000032
	.4byte str_WAN_A_1_jon_0000db28
	.4byte 0x0000002A
	.4byte str_WAN_R_1_jon_0000db30
	.4byte 0x00000028
	.4byte str_WAN_W_1_jon_0000db38
	.4byte 0x00000038
	.4byte str_WAN_X_1_jon_0000db04
	.4byte 0x00000039
	.4byte str_WAN_X_1_jon_0000db04
	.4byte 0x00000041
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x00000045
	.4byte str_WAN_S_1A_jon_0000db14
.endobj pose_table

# .data:0x1D4 | 0x5F8B4 | size: 0x78
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
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

# .data:0x24C | 0x5F92C | size: 0x2AC
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x10000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000006
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000007
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000008
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000009
	.4byte str_btl_un_burst_wanwan_jon_0000da78
	.4byte str_c_wanwan_a_jon_0000db40
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
	.4byte 0x12010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x4F8 | 0x5FBD8 | size: 0xC0
.obj weapon_wanwan_attack, local
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
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000072
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
.endobj weapon_wanwan_attack

# .data:0x5B8 | 0x5FC98 | size: 0xA4
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte chain_init
	.4byte 0xFFFFFFFE
	.4byte 0x0001005C
	.4byte chain_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_0_jon_0000db4c
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000007F
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x65C | 0x5FD3C | size: 0x5C
.obj chain_event, local
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
	.4byte chain_main
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj chain_event

# .data:0x6B8 | 0x5FD98 | size: 0x84
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
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x73C | 0x5FE1C | size: 0x110
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsFallAccel
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_PartsFaceDirectionSub
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0x84C | 0x5FF2C | size: 0x320
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_jon_0000db68
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_0000db80
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
	.4byte str_kemuri_test_jon_0000db98
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
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000dba4
	.4byte str_star_point_jon_0000dba8
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
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
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
.endobj dead_event

# .data:0xB6C | 0x6024C | size: 0x710
.obj attack_event, local
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_wanwan_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_wanwan_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000007F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_wanwan_attack
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
	.4byte weapon_wanwan_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_ChangePartsFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
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
	.4byte str_WAN_A_1_jon_0000db28
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7D4C
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000dbb4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_jon_0000dbc8
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_jon_0000dbdc
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK1_jon_0000dbf0
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_jon_0000db28
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_ATTACK2_jon_0000dc04
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24ABA80
	.4byte 0xF24A7A80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_wanwan_attack
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000dbb4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7A80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte weapon_wanwan_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_wanwan_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000dbb4
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_ChangePartsFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x127C | 0x6095C | size: 0x770
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_N_1_jon_0000daec
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8F
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_Y_1_jon_0000daf4
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C8D
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C8F
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte wait_sound_event1
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte sound_gensui_event
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0x0001005C
	.4byte wait_sound_event1
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_jon_0000db28
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7B80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_A_1_jon_0000db28
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x0001005C
	.4byte wait_sound_event2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_WAN_S_1A_jon_0000db14
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_LANDING1_jon_0000db50
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000070
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x19EC | 0x610CC | size: 0x58
.obj sound_gensui_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24A7D4C
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sound_gensui_event

# .data:0x1A44 | 0x61124 | size: 0x64
.obj wait_sound_event1, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT1_jon_0000dbb4
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT3_jon_0000dbc8
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT2_jon_0000dbdc
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_sound_event1

# .data:0x1AA8 | 0x61188 | size: 0x30
.obj wait_sound_event2, local
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_WAN_WAIT4_jon_0000dc18
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_sound_event2
