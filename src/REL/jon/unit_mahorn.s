.include "macros.inc"
.file "unit_mahorn.o"

# 0x00004500..0x00004C84 | size: 0x784
.text
.balign 4

# .text:0x0 | 0x4500 | size: 0xCC
.fn eff_magic_get_posX, local
/* 00004500 000045C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004504 000045C8  7C 08 02 A6 */	mflr r0
/* 00004508 000045CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000450C 000045D0  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00004510 000045D4  7C 7C 1B 78 */	mr r28, r3
/* 00004514 000045D8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004518 000045DC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000451C 000045E0  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004520 000045E4  4B FF C5 51 */	bl evtGetValue
/* 00004524 000045E8  7C 64 1B 78 */	mr r4, r3
/* 00004528 000045EC  7F 83 E3 78 */	mr r3, r28
/* 0000452C 000045F0  4B FF C5 45 */	bl BattleTransID
/* 00004530 000045F4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004534 000045F8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00004538 000045FC  7C 64 1B 78 */	mr r4, r3
/* 0000453C 00004600  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00004540 00004604  4B FF C5 31 */	bl BattleGetUnitPtr
/* 00004544 00004608  83 C3 02 34 */	lwz r30, 0x234(r3)
/* 00004548 0000460C  3B A0 00 00 */	li r29, 0x0
/* 0000454C 00004610  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00004550 00004614  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 00004554 00004618  7C 09 03 A6 */	mtctr r0
/* 00004558 0000461C  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000455C 00004620  40 81 00 34 */	ble .L_00004590
.L_00004560:
/* 00004560 00004624  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 00004564 00004628  2C 00 00 03 */	cmpwi r0, 0x3
/* 00004568 0000462C  40 82 00 1C */	bne .L_00004584
/* 0000456C 00004630  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004570 00004634  7F 83 E3 78 */	mr r3, r28
/* 00004574 00004638  C0 25 00 04 */	lfs f1, 0x4(r5)
/* 00004578 0000463C  3B FF 00 04 */	addi r31, r31, 0x4
/* 0000457C 00004640  4B FF C4 F5 */	bl evtSetFloat
/* 00004580 00004644  48 00 00 10 */	b .L_00004590
.L_00004584:
/* 00004584 00004648  3B BD 00 01 */	addi r29, r29, 0x1
/* 00004588 0000464C  38 A5 00 3C */	addi r5, r5, 0x3c
/* 0000458C 00004650  42 00 FF D4 */	bdnz .L_00004560
.L_00004590:
/* 00004590 00004654  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00004594 00004658  7C 1D 00 00 */	cmpw r29, r0
/* 00004598 0000465C  40 82 00 1C */	bne .L_000045B4
/* 0000459C 00004660  3C 60 00 00 */	lis r3, zero_jon_0000cd24@ha
/* 000045A0 00004664  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000045A4 00004668  38 A3 00 00 */	addi r5, r3, zero_jon_0000cd24@l
/* 000045A8 0000466C  7F 83 E3 78 */	mr r3, r28
/* 000045AC 00004670  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000045B0 00004674  4B FF C4 C1 */	bl evtSetFloat
.L_000045B4:
/* 000045B4 00004678  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 000045B8 0000467C  38 60 00 02 */	li r3, 0x2
/* 000045BC 00004680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000045C0 00004684  7C 08 03 A6 */	mtlr r0
/* 000045C4 00004688  38 21 00 20 */	addi r1, r1, 0x20
/* 000045C8 0000468C  4E 80 00 20 */	blr
.endfn eff_magic_get_posX

# .text:0xCC | 0x45CC | size: 0x168
.fn eff_magic, local
/* 000045CC 00004690  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000045D0 00004694  7C 08 02 A6 */	mflr r0
/* 000045D4 00004698  90 01 00 54 */	stw r0, 0x54(r1)
/* 000045D8 0000469C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 000045DC 000046A0  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 000045E0 000046A4  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 000045E4 000046A8  7C 7D 1B 78 */	mr r29, r3
/* 000045E8 000046AC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000045EC 000046B0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000045F0 000046B4  4B FF C4 81 */	bl evtGetValue
/* 000045F4 000046B8  7C 64 1B 78 */	mr r4, r3
/* 000045F8 000046BC  7F A3 EB 78 */	mr r3, r29
/* 000045FC 000046C0  4B FF C4 75 */	bl BattleTransID
/* 00004600 000046C4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004604 000046C8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00004608 000046CC  7C 64 1B 78 */	mr r4, r3
/* 0000460C 000046D0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00004610 000046D4  4B FF C4 61 */	bl BattleGetUnitPtr
/* 00004614 000046D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004618 000046DC  7C 7E 1B 78 */	mr r30, r3
/* 0000461C 000046E0  7F A3 EB 78 */	mr r3, r29
/* 00004620 000046E4  4B FF C4 51 */	bl evtGetFloat
/* 00004624 000046E8  FF E0 08 90 */	fmr f31, f1
/* 00004628 000046EC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000462C 000046F0  7F A3 EB 78 */	mr r3, r29
/* 00004630 000046F4  4B FF C4 41 */	bl evtGetFloat
/* 00004634 000046F8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00004638 000046FC  7F A3 EB 78 */	mr r3, r29
/* 0000463C 00004700  4B FF C4 35 */	bl evtGetFloat
/* 00004640 00004704  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00004644 00004708  7F A3 EB 78 */	mr r3, r29
/* 00004648 0000470C  4B FF C4 29 */	bl evtGetValue
/* 0000464C 00004710  7C 7F 1B 78 */	mr r31, r3
/* 00004650 00004714  7F C3 F3 78 */	mr r3, r30
/* 00004654 00004718  38 81 00 10 */	addi r4, r1, 0x10
/* 00004658 0000471C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000465C 00004720  38 C1 00 08 */	addi r6, r1, 0x8
/* 00004660 00004724  4B FF C4 11 */	bl BtlUnit_GetPos
/* 00004664 00004728  88 7E 01 89 */	lbz r3, 0x189(r30)
/* 00004668 0000472C  3C C0 43 30 */	lis r6, 0x4330
/* 0000466C 00004730  3C A0 00 00 */	lis r5, double_to_int_jon_0000cd30@ha
/* 00004670 00004734  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 00004674 00004738  7C 63 07 74 */	extsb r3, r3
/* 00004678 0000473C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 0000467C 00004740  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004680 00004744  38 E5 00 00 */	addi r7, r5, double_to_int_jon_0000cd30@l
/* 00004684 00004748  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00004688 0000474C  3C 80 00 00 */	lis r4, float_18_jon_0000cd28@ha
/* 0000468C 00004750  38 A4 00 00 */	addi r5, r4, float_18_jon_0000cd28@l
/* 00004690 00004754  3C 60 00 00 */	lis r3, float_5_jon_0000cd2c@ha
/* 00004694 00004758  C8 67 00 00 */	lfd f3, 0x0(r7)
/* 00004698 0000475C  38 83 00 00 */	addi r4, r3, float_5_jon_0000cd2c@l
/* 0000469C 00004760  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 000046A0 00004764  FC 80 F8 90 */	fmr f4, f31
/* 000046A4 00004768  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 000046A8 0000476C  38 60 00 00 */	li r3, 0x0
/* 000046AC 00004770  EC 21 18 28 */	fsubs f1, f1, f3
/* 000046B0 00004774  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000046B4 00004778  90 01 00 24 */	stw r0, 0x24(r1)
/* 000046B8 0000477C  C1 05 00 00 */	lfs f8, 0x0(r5)
/* 000046BC 00004780  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 000046C0 00004784  90 C1 00 20 */	stw r6, 0x20(r1)
/* 000046C4 00004788  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 000046C8 0000478C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 000046CC 00004790  EC 5F 08 28 */	fsubs f2, f31, f1
/* 000046D0 00004794  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 000046D4 00004798  EC 00 18 28 */	fsubs f0, f0, f3
/* 000046D8 0000479C  C0 A1 00 08 */	lfs f5, 0x8(r1)
/* 000046DC 000047A0  C0 64 00 00 */	lfs f3, 0x0(r4)
/* 000046E0 000047A4  C0 FE 01 14 */	lfs f7, 0x114(r30)
/* 000046E4 000047A8  EC 02 00 24 */	fdivs f0, f2, f0
/* 000046E8 000047AC  EC 48 31 FA */	fmadds f2, f8, f7, f6
/* 000046EC 000047B0  EC 65 18 2A */	fadds f3, f5, f3
/* 000046F0 000047B4  FC 00 02 10 */	fabs f0, f0
/* 000046F4 000047B8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 000046F8 000047BC  FC A0 10 90 */	fmr f5, f2
/* 000046FC 000047C0  FC C0 18 90 */	fmr f6, f3
/* 00004700 000047C4  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 00004704 000047C8  FD 00 00 18 */	frsp f8, f0
/* 00004708 000047CC  C0 FE 01 14 */	lfs f7, 0x114(r30)
/* 0000470C 000047D0  4B FF C3 65 */	bl effMahorn2Entry
/* 00004710 000047D4  90 7E 02 34 */	stw r3, 0x234(r30)
/* 00004714 000047D8  38 60 00 02 */	li r3, 0x2
/* 00004718 000047DC  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 0000471C 000047E0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00004720 000047E4  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 00004724 000047E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00004728 000047EC  7C 08 03 A6 */	mtlr r0
/* 0000472C 000047F0  38 21 00 50 */	addi r1, r1, 0x50
/* 00004730 000047F4  4E 80 00 20 */	blr
.endfn eff_magic

# .text:0x234 | 0x4734 | size: 0xF0
.fn mahorn_get_bunsin, local
/* 00004734 000047F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00004738 000047FC  7C 08 02 A6 */	mflr r0
/* 0000473C 00004800  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004740 00004804  38 C0 00 00 */	li r6, 0x0
/* 00004744 00004808  90 01 00 34 */	stw r0, 0x34(r1)
/* 00004748 0000480C  38 00 00 40 */	li r0, 0x40
/* 0000474C 00004810  38 A1 00 08 */	addi r5, r1, 0x8
/* 00004750 00004814  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 00004754 00004818  7C 7A 1B 78 */	mr r26, r3
/* 00004758 0000481C  3B 60 00 00 */	li r27, 0x0
/* 0000475C 00004820  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00004760 00004824  38 60 00 00 */	li r3, 0x0
/* 00004764 00004828  80 E4 00 00 */	lwz r7, _battleWorkPointer@l(r4)
/* 00004768 0000482C  38 80 00 00 */	li r4, 0x0
/* 0000476C 00004830  7C 09 03 A6 */	mtctr r0
.L_00004770:
/* 00004770 00004834  38 04 00 20 */	addi r0, r4, 0x20
/* 00004774 00004838  7D 07 00 2E */	lwzx r8, r7, r0
/* 00004778 0000483C  28 08 00 00 */	cmplwi r8, 0x0
/* 0000477C 00004840  41 82 00 24 */	beq .L_000047A0
/* 00004780 00004844  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00004784 00004848  2C 00 00 81 */	cmpwi r0, 0x81
/* 00004788 0000484C  41 82 00 0C */	beq .L_00004794
/* 0000478C 00004850  2C 00 00 AA */	cmpwi r0, 0xaa
/* 00004790 00004854  40 82 00 10 */	bne .L_000047A0
.L_00004794:
/* 00004794 00004858  7C C5 19 2E */	stwx r6, r5, r3
/* 00004798 0000485C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 0000479C 00004860  38 63 00 04 */	addi r3, r3, 0x4
.L_000047A0:
/* 000047A0 00004864  38 C6 00 01 */	addi r6, r6, 0x1
/* 000047A4 00004868  38 84 00 04 */	addi r4, r4, 0x4
/* 000047A8 0000486C  42 00 FF C8 */	bdnz .L_00004770
/* 000047AC 00004870  3B C1 00 08 */	addi r30, r1, 0x8
/* 000047B0 00004874  3B A0 00 00 */	li r29, 0x0
/* 000047B4 00004878  3B E0 00 00 */	li r31, 0x0
.L_000047B8:
/* 000047B8 0000487C  7C 1D D8 00 */	cmpw r29, r27
/* 000047BC 00004880  40 80 00 1C */	bge .L_000047D8
/* 000047C0 00004884  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 000047C4 00004888  7F 43 D3 78 */	mr r3, r26
/* 000047C8 0000488C  7C BE F8 2E */	lwzx r5, r30, r31
/* 000047CC 00004890  3B 9C 00 04 */	addi r28, r28, 0x4
/* 000047D0 00004894  4B FF C2 A1 */	bl evtSetValue
/* 000047D4 00004898  48 00 00 18 */	b .L_000047EC
.L_000047D8:
/* 000047D8 0000489C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 000047DC 000048A0  7F 43 D3 78 */	mr r3, r26
/* 000047E0 000048A4  38 A0 FF FF */	li r5, -0x1
/* 000047E4 000048A8  3B 9C 00 04 */	addi r28, r28, 0x4
/* 000047E8 000048AC  4B FF C2 89 */	bl evtSetValue
.L_000047EC:
/* 000047EC 000048B0  3B BD 00 01 */	addi r29, r29, 0x1
/* 000047F0 000048B4  3B FF 00 04 */	addi r31, r31, 0x4
/* 000047F4 000048B8  2C 1D 00 04 */	cmpwi r29, 0x4
/* 000047F8 000048BC  41 80 FF C0 */	blt .L_000047B8
/* 000047FC 000048C0  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00004800 000048C4  7F 43 D3 78 */	mr r3, r26
/* 00004804 000048C8  7F 65 DB 78 */	mr r5, r27
/* 00004808 000048CC  4B FF C2 69 */	bl evtSetValue
/* 0000480C 000048D0  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 00004810 000048D4  38 60 00 02 */	li r3, 0x2
/* 00004814 000048D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00004818 000048DC  7C 08 03 A6 */	mtlr r0
/* 0000481C 000048E0  38 21 00 30 */	addi r1, r1, 0x30
/* 00004820 000048E4  4E 80 00 20 */	blr
.endfn mahorn_get_bunsin

# .text:0x324 | 0x4824 | size: 0x170
.fn set_hand_dest, local
/* 00004824 000048E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00004828 000048EC  7C 08 02 A6 */	mflr r0
/* 0000482C 000048F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 00004830 000048F4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00004834 000048F8  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00004838 000048FC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 0000483C 00004900  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00004840 00004904  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00004844 00004908  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00004848 0000490C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 0000484C 00004910  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00004850 00004914  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004854 00004918  83 C4 00 00 */	lwz r30, _battleWorkPointer@l(r4)
/* 00004858 0000491C  7C 7B 1B 78 */	mr r27, r3
/* 0000485C 00004920  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00004860 00004924  4B FF C2 11 */	bl evtGetValue
/* 00004864 00004928  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00004868 0000492C  7C 7C 1B 78 */	mr r28, r3
/* 0000486C 00004930  7F 63 DB 78 */	mr r3, r27
/* 00004870 00004934  4B FF C2 01 */	bl evtGetValue
/* 00004874 00004938  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00004878 0000493C  7C 7F 1B 78 */	mr r31, r3
/* 0000487C 00004940  7F 63 DB 78 */	mr r3, r27
/* 00004880 00004944  4B FF C1 F1 */	bl evtGetFloat
/* 00004884 00004948  FF A0 08 90 */	fmr f29, f1
/* 00004888 0000494C  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 0000488C 00004950  7F 63 DB 78 */	mr r3, r27
/* 00004890 00004954  4B FF C1 E1 */	bl evtGetFloat
/* 00004894 00004958  FF C0 08 90 */	fmr f30, f1
/* 00004898 0000495C  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 0000489C 00004960  7F 63 DB 78 */	mr r3, r27
/* 000048A0 00004964  4B FF C1 D1 */	bl evtGetFloat
/* 000048A4 00004968  FF E0 08 90 */	fmr f31, f1
/* 000048A8 0000496C  7F 63 DB 78 */	mr r3, r27
/* 000048AC 00004970  7F 84 E3 78 */	mr r4, r28
/* 000048B0 00004974  4B FF C1 C1 */	bl BattleTransID
/* 000048B4 00004978  7C 64 1B 78 */	mr r4, r3
/* 000048B8 0000497C  7F C3 F3 78 */	mr r3, r30
/* 000048BC 00004980  4B FF C1 B5 */	bl BattleGetUnitPtr
/* 000048C0 00004984  7C 7E 1B 79 */	mr. r30, r3
/* 000048C4 00004988  40 82 00 0C */	bne .L_000048D0
/* 000048C8 0000498C  38 60 00 00 */	li r3, 0x0
/* 000048CC 00004990  48 00 00 9C */	b .L_00004968
.L_000048D0:
/* 000048D0 00004994  38 1F FF FE */	subi r0, r31, 0x2
/* 000048D4 00004998  38 80 00 0A */	li r4, 0xa
/* 000048D8 0000499C  54 00 10 3A */	slwi r0, r0, 2
/* 000048DC 000049A0  7C BE 02 14 */	add r5, r30, r0
/* 000048E0 000049A4  83 85 02 18 */	lwz r28, 0x218(r5)
/* 000048E4 000049A8  4B FF C1 8D */	bl BtlUnit_CheckStatus
/* 000048E8 000049AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 000048EC 000049B0  41 82 00 2C */	beq .L_00004918
/* 000048F0 000049B4  3C 60 00 00 */	lis r3, float_1p25_jon_0000cd38@ha
/* 000048F4 000049B8  FC 00 E8 50 */	fneg f0, f29
/* 000048F8 000049BC  C0 63 00 00 */	lfs f3, float_1p25_jon_0000cd38@l(r3)
/* 000048FC 000049C0  EC 43 00 32 */	fmuls f2, f3, f0
/* 00004900 000049C4  EC 23 07 B2 */	fmuls f1, f3, f30
/* 00004904 000049C8  EC 03 07 F2 */	fmuls f0, f3, f31
/* 00004908 000049CC  D0 5C 00 00 */	stfs f2, 0x0(r28)
/* 0000490C 000049D0  D0 3C 00 04 */	stfs f1, 0x4(r28)
/* 00004910 000049D4  D0 1C 00 08 */	stfs f0, 0x8(r28)
/* 00004914 000049D8  48 00 00 50 */	b .L_00004964
.L_00004918:
/* 00004918 000049DC  7F C3 F3 78 */	mr r3, r30
/* 0000491C 000049E0  38 80 00 0B */	li r4, 0xb
/* 00004920 000049E4  4B FF C1 51 */	bl BtlUnit_CheckStatus
/* 00004924 000049E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00004928 000049EC  41 82 00 2C */	beq .L_00004954
/* 0000492C 000049F0  3C 60 00 00 */	lis r3, float_0p75_jon_0000cd3c@ha
/* 00004930 000049F4  FC 00 E8 50 */	fneg f0, f29
/* 00004934 000049F8  C0 63 00 00 */	lfs f3, float_0p75_jon_0000cd3c@l(r3)
/* 00004938 000049FC  EC 43 00 32 */	fmuls f2, f3, f0
/* 0000493C 00004A00  EC 23 07 B2 */	fmuls f1, f3, f30
/* 00004940 00004A04  EC 03 07 F2 */	fmuls f0, f3, f31
/* 00004944 00004A08  D0 5C 00 00 */	stfs f2, 0x0(r28)
/* 00004948 00004A0C  D0 3C 00 04 */	stfs f1, 0x4(r28)
/* 0000494C 00004A10  D0 1C 00 08 */	stfs f0, 0x8(r28)
/* 00004950 00004A14  48 00 00 14 */	b .L_00004964
.L_00004954:
/* 00004954 00004A18  FC 00 E8 50 */	fneg f0, f29
/* 00004958 00004A1C  D0 1C 00 00 */	stfs f0, 0x0(r28)
/* 0000495C 00004A20  D3 DC 00 04 */	stfs f30, 0x4(r28)
/* 00004960 00004A24  D3 FC 00 08 */	stfs f31, 0x8(r28)
.L_00004964:
/* 00004964 00004A28  38 60 00 02 */	li r3, 0x2
.L_00004968:
/* 00004968 00004A2C  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 0000496C 00004A30  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00004970 00004A34  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00004974 00004A38  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00004978 00004A3C  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 0000497C 00004A40  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00004980 00004A44  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00004984 00004A48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00004988 00004A4C  7C 08 03 A6 */	mtlr r0
/* 0000498C 00004A50  38 21 00 50 */	addi r1, r1, 0x50
/* 00004990 00004A54  4E 80 00 20 */	blr
.endfn set_hand_dest

# .text:0x494 | 0x4994 | size: 0x184
.fn hand_ctrl, local
/* 00004994 00004A58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00004998 00004A5C  7C 08 02 A6 */	mflr r0
/* 0000499C 00004A60  90 01 00 34 */	stw r0, 0x34(r1)
/* 000049A0 00004A64  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 000049A4 00004A68  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 000049A8 00004A6C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000049AC 00004A70  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000049B0 00004A74  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000049B4 00004A78  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 000049B8 00004A7C  7C 7D 1B 78 */	mr r29, r3
/* 000049BC 00004A80  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000049C0 00004A84  4B FF C0 B1 */	bl evtGetValue
/* 000049C4 00004A88  7C 60 1B 78 */	mr r0, r3
/* 000049C8 00004A8C  7F A3 EB 78 */	mr r3, r29
/* 000049CC 00004A90  7C 04 03 78 */	mr r4, r0
/* 000049D0 00004A94  4B FF C0 A1 */	bl BattleTransID
/* 000049D4 00004A98  7C 64 1B 78 */	mr r4, r3
/* 000049D8 00004A9C  7F E3 FB 78 */	mr r3, r31
/* 000049DC 00004AA0  4B FF C0 95 */	bl BattleGetUnitPtr
/* 000049E0 00004AA4  7C 7E 1B 79 */	mr. r30, r3
/* 000049E4 00004AA8  40 82 00 0C */	bne .L_000049F0
/* 000049E8 00004AAC  38 60 00 00 */	li r3, 0x0
/* 000049EC 00004AB0  48 00 01 10 */	b .L_00004AFC
.L_000049F0:
/* 000049F0 00004AB4  38 A1 00 09 */	addi r5, r1, 0x9
/* 000049F4 00004AB8  38 C1 00 08 */	addi r6, r1, 0x8
/* 000049F8 00004ABC  38 80 00 02 */	li r4, 0x2
/* 000049FC 00004AC0  4B FF C0 75 */	bl BtlUnit_GetStatus
/* 00004A00 00004AC4  88 01 00 09 */	lbz r0, 0x9(r1)
/* 00004A04 00004AC8  7C 00 07 75 */	extsb. r0, r0
/* 00004A08 00004ACC  40 81 00 0C */	ble .L_00004A14
/* 00004A0C 00004AD0  38 60 00 02 */	li r3, 0x2
/* 00004A10 00004AD4  48 00 00 EC */	b .L_00004AFC
.L_00004A14:
/* 00004A14 00004AD8  7F C3 F3 78 */	mr r3, r30
/* 00004A18 00004ADC  38 A1 00 09 */	addi r5, r1, 0x9
/* 00004A1C 00004AE0  38 C1 00 08 */	addi r6, r1, 0x8
/* 00004A20 00004AE4  38 80 00 09 */	li r4, 0x9
/* 00004A24 00004AE8  4B FF C0 4D */	bl BtlUnit_GetStatus
/* 00004A28 00004AEC  88 01 00 09 */	lbz r0, 0x9(r1)
/* 00004A2C 00004AF0  7C 00 07 75 */	extsb. r0, r0
/* 00004A30 00004AF4  40 81 00 0C */	ble .L_00004A3C
/* 00004A34 00004AF8  38 60 00 02 */	li r3, 0x2
/* 00004A38 00004AFC  48 00 00 C4 */	b .L_00004AFC
.L_00004A3C:
/* 00004A3C 00004B00  7F C3 F3 78 */	mr r3, r30
/* 00004A40 00004B04  38 A1 00 09 */	addi r5, r1, 0x9
/* 00004A44 00004B08  38 C1 00 08 */	addi r6, r1, 0x8
/* 00004A48 00004B0C  38 80 00 01 */	li r4, 0x1
/* 00004A4C 00004B10  4B FF C0 25 */	bl BtlUnit_GetStatus
/* 00004A50 00004B14  88 01 00 09 */	lbz r0, 0x9(r1)
/* 00004A54 00004B18  7C 00 07 75 */	extsb. r0, r0
/* 00004A58 00004B1C  40 81 00 0C */	ble .L_00004A64
/* 00004A5C 00004B20  38 60 00 02 */	li r3, 0x2
/* 00004A60 00004B24  48 00 00 9C */	b .L_00004AFC
.L_00004A64:
/* 00004A64 00004B28  3C 60 00 00 */	lis r3, float_10_jon_0000cd40@ha
/* 00004A68 00004B2C  3B E0 00 00 */	li r31, 0x0
/* 00004A6C 00004B30  C3 E3 00 00 */	lfs f31, float_10_jon_0000cd40@l(r3)
/* 00004A70 00004B34  3B A0 00 02 */	li r29, 0x2
.L_00004A74:
/* 00004A74 00004B38  7F C3 F3 78 */	mr r3, r30
/* 00004A78 00004B3C  7F A4 EB 78 */	mr r4, r29
/* 00004A7C 00004B40  4B FF BF F5 */	bl BtlUnit_GetPartsPtr
/* 00004A80 00004B44  38 1F 02 18 */	addi r0, r31, 0x218
/* 00004A84 00004B48  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 00004A88 00004B4C  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 00004A8C 00004B50  3B BD 00 01 */	addi r29, r29, 0x1
/* 00004A90 00004B54  7C 9E 00 2E */	lwzx r4, r30, r0
/* 00004A94 00004B58  2C 1D 00 05 */	cmpwi r29, 0x5
/* 00004A98 00004B5C  EC A3 00 72 */	fmuls f5, f3, f1
/* 00004A9C 00004B60  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 00004AA0 00004B64  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 00004AA4 00004B68  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004AA8 00004B6C  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00004AAC 00004B70  EC C2 00 32 */	fmuls f6, f2, f0
/* 00004AB0 00004B74  EC 41 28 28 */	fsubs f2, f1, f5
/* 00004AB4 00004B78  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 00004AB8 00004B7C  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 00004ABC 00004B80  EC 20 30 28 */	fsubs f1, f0, f6
/* 00004AC0 00004B84  C0 63 00 74 */	lfs f3, 0x74(r3)
/* 00004AC4 00004B88  EC 42 F8 24 */	fdivs f2, f2, f31
/* 00004AC8 00004B8C  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 00004ACC 00004B90  EC 64 00 F2 */	fmuls f3, f4, f3
/* 00004AD0 00004B94  EC 21 F8 24 */	fdivs f1, f1, f31
/* 00004AD4 00004B98  EC 00 18 28 */	fsubs f0, f0, f3
/* 00004AD8 00004B9C  EC A5 10 2A */	fadds f5, f5, f2
/* 00004ADC 00004BA0  EC C6 08 2A */	fadds f6, f6, f1
/* 00004AE0 00004BA4  EC 00 F8 24 */	fdivs f0, f0, f31
/* 00004AE4 00004BA8  D0 A3 00 24 */	stfs f5, 0x24(r3)
/* 00004AE8 00004BAC  D0 C3 00 28 */	stfs f6, 0x28(r3)
/* 00004AEC 00004BB0  EC 63 00 2A */	fadds f3, f3, f0
/* 00004AF0 00004BB4  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 00004AF4 00004BB8  40 81 FF 80 */	ble .L_00004A74
/* 00004AF8 00004BBC  38 60 00 02 */	li r3, 0x2
.L_00004AFC:
/* 00004AFC 00004BC0  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00004B00 00004BC4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00004B04 00004BC8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00004B08 00004BCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00004B0C 00004BD0  7C 08 03 A6 */	mtlr r0
/* 00004B10 00004BD4  38 21 00 30 */	addi r1, r1, 0x30
/* 00004B14 00004BD8  4E 80 00 20 */	blr
.endfn hand_ctrl

# .text:0x618 | 0x4B18 | size: 0x94
.fn hand_end, local
/* 00004B18 00004BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004B1C 00004BE0  7C 08 02 A6 */	mflr r0
/* 00004B20 00004BE4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004B24 00004BE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004B28 00004BEC  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00004B2C 00004BF0  7C 7B 1B 78 */	mr r27, r3
/* 00004B30 00004BF4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00004B34 00004BF8  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
/* 00004B38 00004BFC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00004B3C 00004C00  4B FF BF 35 */	bl evtGetValue
/* 00004B40 00004C04  7C 60 1B 78 */	mr r0, r3
/* 00004B44 00004C08  7F 63 DB 78 */	mr r3, r27
/* 00004B48 00004C0C  7C 04 03 78 */	mr r4, r0
/* 00004B4C 00004C10  4B FF BF 25 */	bl BattleTransID
/* 00004B50 00004C14  7C 64 1B 78 */	mr r4, r3
/* 00004B54 00004C18  7F 83 E3 78 */	mr r3, r28
/* 00004B58 00004C1C  4B FF BF 19 */	bl BattleGetUnitPtr
/* 00004B5C 00004C20  3B E0 00 00 */	li r31, 0x0
/* 00004B60 00004C24  7C 7D 1B 78 */	mr r29, r3
/* 00004B64 00004C28  7F FE FB 78 */	mr r30, r31
/* 00004B68 00004C2C  3B 60 00 02 */	li r27, 0x2
.L_00004B6C:
/* 00004B6C 00004C30  3B 9F 02 18 */	addi r28, r31, 0x218
/* 00004B70 00004C34  7C 7D E0 2E */	lwzx r3, r29, r28
/* 00004B74 00004C38  28 03 00 00 */	cmplwi r3, 0x0
/* 00004B78 00004C3C  41 82 00 0C */	beq .L_00004B84
/* 00004B7C 00004C40  4B FF BE F5 */	bl BattleFree
/* 00004B80 00004C44  7F DD E1 2E */	stwx r30, r29, r28
.L_00004B84:
/* 00004B84 00004C48  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00004B88 00004C4C  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004B8C 00004C50  2C 1B 00 05 */	cmpwi r27, 0x5
/* 00004B90 00004C54  40 81 FF DC */	ble .L_00004B6C
/* 00004B94 00004C58  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00004B98 00004C5C  38 60 00 02 */	li r3, 0x2
/* 00004B9C 00004C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004BA0 00004C64  7C 08 03 A6 */	mtlr r0
/* 00004BA4 00004C68  38 21 00 20 */	addi r1, r1, 0x20
/* 00004BA8 00004C6C  4E 80 00 20 */	blr
.endfn hand_end

# .text:0x6AC | 0x4BAC | size: 0xD8
.fn hand_init, local
/* 00004BAC 00004C70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00004BB0 00004C74  7C 08 02 A6 */	mflr r0
/* 00004BB4 00004C78  90 01 00 44 */	stw r0, 0x44(r1)
/* 00004BB8 00004C7C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00004BBC 00004C80  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00004BC0 00004C84  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 00004BC4 00004C88  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00004BC8 00004C8C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004BCC 00004C90  83 C4 00 00 */	lwz r30, _battleWorkPointer@l(r4)
/* 00004BD0 00004C94  7C 7C 1B 78 */	mr r28, r3
/* 00004BD4 00004C98  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00004BD8 00004C9C  4B FF BE 99 */	bl evtGetValue
/* 00004BDC 00004CA0  7C 60 1B 78 */	mr r0, r3
/* 00004BE0 00004CA4  7F 83 E3 78 */	mr r3, r28
/* 00004BE4 00004CA8  7C 04 03 78 */	mr r4, r0
/* 00004BE8 00004CAC  4B FF BE 89 */	bl BattleTransID
/* 00004BEC 00004CB0  7C 64 1B 78 */	mr r4, r3
/* 00004BF0 00004CB4  7F C3 F3 78 */	mr r3, r30
/* 00004BF4 00004CB8  4B FF BE 7D */	bl BattleGetUnitPtr
/* 00004BF8 00004CBC  38 81 00 10 */	addi r4, r1, 0x10
/* 00004BFC 00004CC0  7C 7D 1B 78 */	mr r29, r3
/* 00004C00 00004CC4  38 A1 00 0C */	addi r5, r1, 0xc
/* 00004C04 00004CC8  38 C1 00 08 */	addi r6, r1, 0x8
/* 00004C08 00004CCC  4B FF BE 69 */	bl BtlUnit_GetPos
/* 00004C0C 00004CD0  3C 60 00 00 */	lis r3, zero_jon_0000cd24@ha
/* 00004C10 00004CD4  3C 80 00 00 */	lis r4, str_MAH_Z_2_jon_0000cbf0@ha
/* 00004C14 00004CD8  C3 E3 00 00 */	lfs f31, zero_jon_0000cd24@l(r3)
/* 00004C18 00004CDC  3B C4 00 00 */	addi r30, r4, str_MAH_Z_2_jon_0000cbf0@l
/* 00004C1C 00004CE0  3B E0 00 00 */	li r31, 0x0
/* 00004C20 00004CE4  3B 80 00 02 */	li r28, 0x2
.L_00004C24:
/* 00004C24 00004CE8  7F A3 EB 78 */	mr r3, r29
/* 00004C28 00004CEC  7F 84 E3 78 */	mr r4, r28
/* 00004C2C 00004CF0  4B FF BE 45 */	bl BtlUnit_GetPartsPtr
/* 00004C30 00004CF4  7F C4 F3 78 */	mr r4, r30
/* 00004C34 00004CF8  4B FF BE 3D */	bl BtlUnit_SetAnim
/* 00004C38 00004CFC  38 60 00 0C */	li r3, 0xc
/* 00004C3C 00004D00  4B FF BE 35 */	bl BattleAlloc
/* 00004C40 00004D04  38 1F 02 18 */	addi r0, r31, 0x218
/* 00004C44 00004D08  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00004C48 00004D0C  7C 7D 01 2E */	stwx r3, r29, r0
/* 00004C4C 00004D10  2C 1C 00 05 */	cmpwi r28, 0x5
/* 00004C50 00004D14  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004C54 00004D18  D3 E3 00 00 */	stfs f31, 0x0(r3)
/* 00004C58 00004D1C  D3 E3 00 04 */	stfs f31, 0x4(r3)
/* 00004C5C 00004D20  D3 E3 00 08 */	stfs f31, 0x8(r3)
/* 00004C60 00004D24  40 81 FF C4 */	ble .L_00004C24
/* 00004C64 00004D28  38 60 00 02 */	li r3, 0x2
/* 00004C68 00004D2C  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00004C6C 00004D30  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00004C70 00004D34  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 00004C74 00004D38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00004C78 00004D3C  7C 08 03 A6 */	mtlr r0
/* 00004C7C 00004D40  38 21 00 40 */	addi r1, r1, 0x40
/* 00004C80 00004D44  4E 80 00 20 */	blr
.endfn hand_init

# 0x00005AD8..0x00005D18 | size: 0x240
.rodata
.balign 8

# .rodata:0x0 | 0x5AD8 | size: 0xE
.obj str_btl_un_mahorn_jon_0000cb08, local
	.string "btl_un_mahorn"
.endobj str_btl_un_mahorn_jon_0000cb08

# .rodata:0xE | 0x5AE6 | size: 0x2
.obj gap_03_00005AE6_rodata, global
.hidden gap_03_00005AE6_rodata
	.2byte 0x0000
.endobj gap_03_00005AE6_rodata

# .rodata:0x10 | 0x5AE8 | size: 0x16
.obj str_SFX_ENM_MAHO_DAMAGED_jon_0000cb18, local
	.string "SFX_ENM_MAHO_DAMAGED1"
.endobj str_SFX_ENM_MAHO_DAMAGED_jon_0000cb18

# .rodata:0x26 | 0x5AFE | size: 0x2
.obj gap_03_00005AFE_rodata, global
.hidden gap_03_00005AFE_rodata
	.2byte 0x0000
.endobj gap_03_00005AFE_rodata

# .rodata:0x28 | 0x5B00 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000cb30, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000cb30

# .rodata:0x3D | 0x5B15 | size: 0x3
.obj gap_03_00005B15_rodata, global
.hidden gap_03_00005B15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B15_rodata

# .rodata:0x40 | 0x5B18 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000cb48, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000cb48

# .rodata:0x54 | 0x5B2C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000cb5c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000cb5c

# .rodata:0x6D | 0x5B45 | size: 0x3
.obj gap_03_00005B45_rodata, global
.hidden gap_03_00005B45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B45_rodata

# .rodata:0x70 | 0x5B48 | size: 0x7
.obj str_c_maho_jon_0000cb78, local
	.string "c_maho"
.endobj str_c_maho_jon_0000cb78

# .rodata:0x77 | 0x5B4F | size: 0x1
.obj gap_03_00005B4F_rodata, global
.hidden gap_03_00005B4F_rodata
	.byte 0x00
.endobj gap_03_00005B4F_rodata

# .rodata:0x78 | 0x5B50 | size: 0x8
.obj str_MAH_N_1_jon_0000cb80, local
	.string "MAH_N_1"
.endobj str_MAH_N_1_jon_0000cb80

# .rodata:0x80 | 0x5B58 | size: 0x8
.obj str_MAH_Y_1_jon_0000cb88, local
	.string "MAH_Y_1"
.endobj str_MAH_Y_1_jon_0000cb88

# .rodata:0x88 | 0x5B60 | size: 0x8
.obj str_MAH_K_1_jon_0000cb90, local
	.string "MAH_K_1"
.endobj str_MAH_K_1_jon_0000cb90

# .rodata:0x90 | 0x5B68 | size: 0x8
.obj str_MAH_X_1_jon_0000cb98, local
	.string "MAH_X_1"
.endobj str_MAH_X_1_jon_0000cb98

# .rodata:0x98 | 0x5B70 | size: 0x8
.obj str_MAH_S_1_jon_0000cba0, local
	.string "MAH_S_1"
.endobj str_MAH_S_1_jon_0000cba0

# .rodata:0xA0 | 0x5B78 | size: 0x8
.obj str_MAH_Q_1_jon_0000cba8, local
	.string "MAH_Q_1"
.endobj str_MAH_Q_1_jon_0000cba8

# .rodata:0xA8 | 0x5B80 | size: 0x8
.obj str_MAH_A_1_jon_0000cbb0, local
	.string "MAH_A_1"
.endobj str_MAH_A_1_jon_0000cbb0

# .rodata:0xB0 | 0x5B88 | size: 0x8
.obj str_MAH_D_1_jon_0000cbb8, local
	.string "MAH_D_1"
.endobj str_MAH_D_1_jon_0000cbb8

# .rodata:0xB8 | 0x5B90 | size: 0x8
.obj str_MAH_W_1_jon_0000cbc0, local
	.string "MAH_W_1"
.endobj str_MAH_W_1_jon_0000cbc0

# .rodata:0xC0 | 0x5B98 | size: 0x8
.obj str_MAH_R_1_jon_0000cbc8, local
	.string "MAH_R_1"
.endobj str_MAH_R_1_jon_0000cbc8

# .rodata:0xC8 | 0x5BA0 | size: 0x8
.obj str_MAH_T_1_jon_0000cbd0, local
	.string "MAH_T_1"
.endobj str_MAH_T_1_jon_0000cbd0

# .rodata:0xD0 | 0x5BA8 | size: 0x15
.obj str_SFX_ENM_MAHO_ATTACK1_jon_0000cbd8, local
	.string "SFX_ENM_MAHO_ATTACK1"
.endobj str_SFX_ENM_MAHO_ATTACK1_jon_0000cbd8

# .rodata:0xE5 | 0x5BBD | size: 0x3
.obj gap_03_00005BBD_rodata, global
.hidden gap_03_00005BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005BBD_rodata

# .rodata:0xE8 | 0x5BC0 | size: 0x8
.obj str_MAH_Z_2_jon_0000cbf0, local
	.string "MAH_Z_2"
.endobj str_MAH_Z_2_jon_0000cbf0

# .rodata:0xF0 | 0x5BC8 | size: 0x15
.obj str_SFX_ENM_MAHO_ATTACK2_jon_0000cbf8, local
	.string "SFX_ENM_MAHO_ATTACK2"
.endobj str_SFX_ENM_MAHO_ATTACK2_jon_0000cbf8

# .rodata:0x105 | 0x5BDD | size: 0x3
.obj gap_03_00005BDD_rodata, global
.hidden gap_03_00005BDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005BDD_rodata

# .rodata:0x108 | 0x5BE0 | size: 0x17
.obj str_SFX_ENM_MAHO_ATTACK1_jon_0000cc10, local
	.string "SFX_ENM_MAHO_ATTACK1_2"
.endobj str_SFX_ENM_MAHO_ATTACK1_jon_0000cc10

# .rodata:0x11F | 0x5BF7 | size: 0x1
.obj gap_03_00005BF7_rodata, global
.hidden gap_03_00005BF7_rodata
	.byte 0x00
.endobj gap_03_00005BF7_rodata

# .rodata:0x120 | 0x5BF8 | size: 0x15
.obj str_SFX_ENM_MAHO_CHARGE1_jon_0000cc28, local
	.string "SFX_ENM_MAHO_CHARGE1"
.endobj str_SFX_ENM_MAHO_CHARGE1_jon_0000cc28

# .rodata:0x135 | 0x5C0D | size: 0x3
.obj gap_03_00005C0D_rodata, global
.hidden gap_03_00005C0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C0D_rodata

# .rodata:0x138 | 0x5C10 | size: 0x14
.obj str_SFX_ENM_MAHO_MAGIC2_jon_0000cc40, local
	.string "SFX_ENM_MAHO_MAGIC2"
.endobj str_SFX_ENM_MAHO_MAGIC2_jon_0000cc40

# .rodata:0x14C | 0x5C24 | size: 0x1
.obj zero_jon_0000cc54, local
	.byte 0x00
.endobj zero_jon_0000cc54

# .rodata:0x14D | 0x5C25 | size: 0x3
.obj gap_03_00005C25_rodata, global
.hidden gap_03_00005C25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C25_rodata

# .rodata:0x150 | 0x5C28 | size: 0xC
.obj str_thunder_n64_jon_0000cc58, local
	.string "thunder_n64"
.endobj str_thunder_n64_jon_0000cc58

# .rodata:0x15C | 0x5C34 | size: 0x11
.obj str_akari_charge_n64_jon_0000cc64, local
	.string "akari_charge_n64"
.endobj str_akari_charge_n64_jon_0000cc64

# .rodata:0x16D | 0x5C45 | size: 0x3
.obj gap_03_00005C45_rodata, global
.hidden gap_03_00005C45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C45_rodata

# .rodata:0x170 | 0x5C48 | size: 0x8
.obj str_MAH_A_4_jon_0000cc78, local
	.string "MAH_A_4"
.endobj str_MAH_A_4_jon_0000cc78

# .rodata:0x178 | 0x5C50 | size: 0x9
.obj str_MAH_S_5A_jon_0000cc80, local
	.string "MAH_S_5A"
.endobj str_MAH_S_5A_jon_0000cc80

# .rodata:0x181 | 0x5C59 | size: 0x3
.obj gap_03_00005C59_rodata, global
.hidden gap_03_00005C59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C59_rodata

# .rodata:0x184 | 0x5C5C | size: 0x9
.obj str_MAH_S_2B_jon_0000cc8c, local
	.string "MAH_S_2B"
.endobj str_MAH_S_2B_jon_0000cc8c

# .rodata:0x18D | 0x5C65 | size: 0x3
.obj gap_03_00005C65_rodata, global
.hidden gap_03_00005C65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C65_rodata

# .rodata:0x190 | 0x5C68 | size: 0x9
.obj str_MAH_S_2A_jon_0000cc98, local
	.string "MAH_S_2A"
.endobj str_MAH_S_2A_jon_0000cc98

# .rodata:0x199 | 0x5C71 | size: 0x3
.obj gap_03_00005C71_rodata, global
.hidden gap_03_00005C71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C71_rodata

# .rodata:0x19C | 0x5C74 | size: 0x14
.obj str_SFX_ENM_MAHO_MAGIC1_jon_0000cca4, local
	.string "SFX_ENM_MAHO_MAGIC1"
.endobj str_SFX_ENM_MAHO_MAGIC1_jon_0000cca4

# .rodata:0x1B0 | 0x5C88 | size: 0x14
.obj str_SFX_ENM_MAHO_MAGIC3_jon_0000ccb8, local
	.string "SFX_ENM_MAHO_MAGIC3"
.endobj str_SFX_ENM_MAHO_MAGIC3_jon_0000ccb8

# .rodata:0x1C4 | 0x5C9C | size: 0x9
.obj str_MAH_A_2A_jon_0000cccc, local
	.string "MAH_A_2A"
.endobj str_MAH_A_2A_jon_0000cccc

# .rodata:0x1CD | 0x5CA5 | size: 0x3
.obj gap_03_00005CA5_rodata, global
.hidden gap_03_00005CA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CA5_rodata

# .rodata:0x1D0 | 0x5CA8 | size: 0x9
.obj str_MAH_S_4A_jon_0000ccd8, local
	.string "MAH_S_4A"
.endobj str_MAH_S_4A_jon_0000ccd8

# .rodata:0x1D9 | 0x5CB1 | size: 0x3
.obj gap_03_00005CB1_rodata, global
.hidden gap_03_00005CB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CB1_rodata

# .rodata:0x1DC | 0x5CB4 | size: 0x14
.obj str_SFX_ENM_MAHO_MAGIC4_jon_0000cce4, local
	.string "SFX_ENM_MAHO_MAGIC4"
.endobj str_SFX_ENM_MAHO_MAGIC4_jon_0000cce4

# .rodata:0x1F0 | 0x5CC8 | size: 0x7
.obj str_mahorn_jon_0000ccf8, local
	.string "mahorn"
.endobj str_mahorn_jon_0000ccf8

# .rodata:0x1F7 | 0x5CCF | size: 0x1
.obj gap_03_00005CCF_rodata, global
.hidden gap_03_00005CCF_rodata
	.byte 0x00
.endobj gap_03_00005CCF_rodata

# .rodata:0x1F8 | 0x5CD0 | size: 0x9
.obj str_MAH_A_2C_jon_0000cd00, local
	.string "MAH_A_2C"
.endobj str_MAH_A_2C_jon_0000cd00

# .rodata:0x201 | 0x5CD9 | size: 0x3
.obj gap_03_00005CD9_rodata, global
.hidden gap_03_00005CD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CD9_rodata

# .rodata:0x204 | 0x5CDC | size: 0x9
.obj str_recovery_jon_0000cd0c, local
	.string "recovery"
.endobj str_recovery_jon_0000cd0c

# .rodata:0x20D | 0x5CE5 | size: 0x3
.obj gap_03_00005CE5_rodata, global
.hidden gap_03_00005CE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CE5_rodata

# .rodata:0x210 | 0x5CE8 | size: 0x9
.obj str_MAH_S_4B_jon_0000cd18, local
	.string "MAH_S_4B"
.endobj str_MAH_S_4B_jon_0000cd18
	.byte 0x00, 0x00, 0x00

# .rodata:0x21C | 0x5CF4 | size: 0x4
.obj zero_jon_0000cd24, local
	.float 0
.endobj zero_jon_0000cd24

# .rodata:0x220 | 0x5CF8 | size: 0x4
.obj float_18_jon_0000cd28, local
	.float 18
.endobj float_18_jon_0000cd28

# .rodata:0x224 | 0x5CFC | size: 0x4
.obj float_5_jon_0000cd2c, local
	.float 5
.endobj float_5_jon_0000cd2c

# .rodata:0x228 | 0x5D00 | size: 0x8
.obj double_to_int_jon_0000cd30, local
	.double 4503601774854144
.endobj double_to_int_jon_0000cd30

# .rodata:0x230 | 0x5D08 | size: 0x4
.obj float_1p25_jon_0000cd38, local
	.float 1.25
.endobj float_1p25_jon_0000cd38

# .rodata:0x234 | 0x5D0C | size: 0x4
.obj float_0p75_jon_0000cd3c, local
	.float 0.75
.endobj float_0p75_jon_0000cd3c

# .rodata:0x238 | 0x5D10 | size: 0x4
.obj float_10_jon_0000cd40, local
	.float 10
.endobj float_10_jon_0000cd40

# .rodata:0x23C | 0x5D14 | size: 0x4
.obj gap_03_00005D14_rodata, global
.hidden gap_03_00005D14_rodata
	.4byte 0x00000000
.endobj gap_03_00005D14_rodata

# 0x00051F90..0x000556A0 | size: 0x3710
.data
.balign 8

# .data:0x0 | 0x51F90 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x51F98 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x51F9C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x51FA0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x51FA4 | size: 0x4
.obj gap_04_00051FA4_data, global
.hidden gap_04_00051FA4_data
	.4byte 0x00000000
.endobj gap_04_00051FA4_data

# .data:0x18 | 0x51FA8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x51FB0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x51FB4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x51FB8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x51FC0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x51FC4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x51FC8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x51FCC | size: 0x4
.obj gap_04_00051FCC_data, global
.hidden gap_04_00051FCC_data
	.4byte 0x00000000
.endobj gap_04_00051FCC_data

# .data:0x40 | 0x51FD0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x51FD8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x51FDC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x51FE0 | size: 0xC4
.obj unit_mahorn_14_data_51FE0, global
	.4byte 0x000000A1
	.4byte str_btl_un_mahorn_jon_0000cb08
	.4byte 0x000A0000
	.4byte 0x01011E01
	.4byte 0x04460032
	.4byte 0x270F0030
	.4byte 0x002C0000
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x0000FFF7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x41E4CCCD
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x42400000
	.4byte 0x42300000
	.4byte 0x00000002
	.4byte 0x00140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_MAHO_DAMAGED_jon_0000cb18
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000cb30
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000cb48
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000cb5c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x05000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_mahorn_14_data_51FE0

# .data:0x114 | 0x520A4 | size: 0x5
.obj defence, local
	.4byte 0x03030303
	.byte 0x03
.endobj defence

# .data:0x119 | 0x520A9 | size: 0x3
.obj gap_04_000520A9_data, global
.hidden gap_04_000520A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000520A9_data

# .data:0x11C | 0x520AC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x520B1 | size: 0x3
.obj gap_04_000520B1_data, global
.hidden gap_04_000520B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000520B1_data

# .data:0x124 | 0x520B4 | size: 0x16
.obj regist, local
	.4byte 0x0A325A64
	.4byte 0x28646432
	.4byte 0x64556455
	.4byte 0x645A281E
	.4byte 0x55642864
	.2byte 0x6428
.endobj regist

# .data:0x13A | 0x520CA | size: 0x2
.obj gap_04_000520CA_data, global
.hidden gap_04_000520CA_data
	.2byte 0x0000
.endobj gap_04_000520CA_data

# .data:0x13C | 0x520CC | size: 0x17C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_mahorn_jon_0000cb08
	.4byte str_c_maho_jon_0000cb78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_mahorn_jon_0000cb08
	.4byte str_c_maho_jon_0000cb78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02010009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_mahorn_jon_0000cb08
	.4byte str_c_maho_jon_0000cb78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02010009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_mahorn_jon_0000cb08
	.4byte str_c_maho_jon_0000cb78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02010009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_mahorn_jon_0000cb08
	.4byte str_c_maho_jon_0000cb78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x02010009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2B8 | 0x52248 | size: 0xC0
.obj weapon_mahorn_attack_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_mahorn_attack_magic

# .data:0x378 | 0x52308 | size: 0xC0
.obj weapon_mahorn_all_attack_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20000000
	.4byte 0x04000302
	.4byte 0x00000000
	.4byte 0x00000007
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
.endobj weapon_mahorn_all_attack_magic

# .data:0x438 | 0x523C8 | size: 0xC0
.obj weapon_mahorn_dekadeka_magic, local
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
.endobj weapon_mahorn_dekadeka_magic

# .data:0x4F8 | 0x52488 | size: 0xC0
.obj weapon_mahorn_katikati_magic, local
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
.endobj weapon_mahorn_katikati_magic

# .data:0x5B8 | 0x52548 | size: 0xC0
.obj weapon_mahorn_confuse_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00320300
	.4byte 0x00000000
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
.endobj weapon_mahorn_confuse_magic

# .data:0x678 | 0x52608 | size: 0xC0
.obj weapon_mahorn_recover_magic, local
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
.endobj weapon_mahorn_recover_magic

# .data:0x738 | 0x526C8 | size: 0x260
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
	.4byte weapon_mahorn_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_mahorn_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_mahorn_all_attack_magic
	.4byte 0x0001005E
	.4byte all_attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_mahorn_dekadeka_magic
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_mahorn_katikati_magic
	.4byte 0x0001005E
	.4byte katikati_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_mahorn_confuse_magic
	.4byte 0x0001005E
	.4byte confuse_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_mahorn_recover_magic
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x998 | 0x52928 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_MAH_N_1_jon_0000cb80
	.4byte 0x00000002
	.4byte str_MAH_Y_1_jon_0000cb88
	.4byte 0x00000009
	.4byte str_MAH_Y_1_jon_0000cb88
	.4byte 0x00000005
	.4byte str_MAH_K_1_jon_0000cb90
	.4byte 0x00000004
	.4byte str_MAH_X_1_jon_0000cb98
	.4byte 0x00000003
	.4byte str_MAH_X_1_jon_0000cb98
	.4byte 0x0000001C
	.4byte str_MAH_S_1_jon_0000cba0
	.4byte 0x0000001D
	.4byte str_MAH_Q_1_jon_0000cba8
	.4byte 0x0000001E
	.4byte str_MAH_Q_1_jon_0000cba8
	.4byte 0x0000001F
	.4byte str_MAH_A_1_jon_0000cbb0
	.4byte 0x00000027
	.4byte str_MAH_D_1_jon_0000cbb8
	.4byte 0x00000028
	.4byte str_MAH_W_1_jon_0000cbc0
	.4byte 0x0000002A
	.4byte str_MAH_R_1_jon_0000cbc8
	.4byte 0x00000038
	.4byte str_MAH_X_1_jon_0000cb98
	.4byte 0x00000039
	.4byte str_MAH_X_1_jon_0000cb98
	.4byte 0x00000041
	.4byte str_MAH_T_1_jon_0000cbd0
	.4byte 0x00000045
	.4byte str_MAH_S_1_jon_0000cba0
.endobj pose_table

# .data:0xA20 | 0x529B0 | size: 0x18
.obj data_table, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xA38 | 0x529C8 | size: 0x18
.obj data_table_bunsin, local
	.4byte 0x0000002E
	.4byte avoid_miss_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_bunsin

# .data:0xA50 | 0x529E0 | size: 0x160
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
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0xFE363C82
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
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte hand_init
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A1680
	.4byte 0xF24AF280
	.4byte 0xF24A5280
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24ADE80
	.4byte 0xF24AF280
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A1680
	.4byte 0xF24AA280
	.4byte 0xF24A5280
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24ADE80
	.4byte 0xF24AA280
	.4byte 0xF24AA280
	.4byte 0x0001005C
	.4byte hand_ctrl_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xBB0 | 0x52B40 | size: 0x188
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
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000005
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
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000005
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

# .data:0xD38 | 0x52CC8 | size: 0x1D8
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
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C80
	.4byte 0x00000005
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C80
	.4byte 0x00000005
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

# .data:0xF10 | 0x52EA0 | size: 0x5C
.obj hand_ctrl_event, local
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
	.4byte hand_ctrl
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hand_ctrl_event

# .data:0xF6C | 0x52EFC | size: 0x28
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

# .data:0xF94 | 0x52F24 | size: 0x8
.obj avoid_miss_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_miss_event

# .data:0xF9C | 0x52F2C | size: 0x6B4
.obj attack_punch_event, local
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
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A3A80
	.4byte 0xF24AEE80
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24ABA80
	.4byte 0xF24AEE80
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A3A80
	.4byte 0xF24AA680
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24ABA80
	.4byte 0xF24AA680
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_ATTACK1_jon_0000cbd8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MAH_S_1_jon_0000cba0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x000C005B
	.4byte btlevtcmd_SetPartsBlur
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x04000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_ATTACK2_jon_0000cbf8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000019
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000078
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFA6
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000078
	.4byte 0xFE363C8B
	.4byte 0x00020037
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000003C
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFEC
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MAH_S_1_jon_0000cba0
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A3A80
	.4byte 0xF24AEE80
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24ABA80
	.4byte 0xF24AEE80
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A3A80
	.4byte 0xF24AA680
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24ABA80
	.4byte 0xF24AA680
	.4byte 0xF24A8E80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x04000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_ATTACK1_jon_0000cc10
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0xF24A7A81
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000002D
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_punch_event

# .data:0x1650 | 0x535E0 | size: 0x68
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

# .data:0x16B8 | 0x53648 | size: 0x4AC
.obj attack_enemy_common_event, local
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_CHARGE1_jon_0000cc28
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte mahorn_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub1
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8C
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub1
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub1
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub1
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub1
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC2_jon_0000cc40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC2_jon_0000cc40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
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
	.4byte 0x0000003C
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
	.4byte mahorn_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8C
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_no_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub_no_hit
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte mahorn_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8B
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8C
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0001005C
	.4byte attack_enemy_common_event_sub_hit
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub_hit
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
	.4byte 0x0006005B
	.4byte mahorn_get_bunsin
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8D
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_enemy_common_event

# .data:0x1B64 | 0x53AF4 | size: 0x2F4
.obj attack_enemy_all_common_event, local
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_CHARGE1_jon_0000cc28
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub1
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC2_jon_0000cc40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC2_jon_0000cc40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub2
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_jon_0000cc54
	.4byte str_thunder_n64_jon_0000cc58
	.4byte 0x00000004
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
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
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_enemy_all_common_event

# .data:0x1E58 | 0x53DE8 | size: 0x168
.obj attack_enemy_common_event_sub1, local
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_jon_0000cc54
	.4byte str_akari_charge_n64_jon_0000cc64
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte str_MAH_A_4_jon_0000cc78
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0xF24A3A80
	.4byte 0xF24AEE80
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0xF24ABA80
	.4byte 0xF24AEE80
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte 0xF24A3A80
	.4byte 0xF24AA680
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte 0xF24ABA80
	.4byte 0xF24AA680
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000032
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_enemy_common_event_sub1

# .data:0x1FC0 | 0x53F50 | size: 0x39C
.obj attack_enemy_common_event_sub2, local
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte str_MAH_A_1_jon_0000cbb0
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A3A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24ACA80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte str_MAH_S_2B_jon_0000cc8c
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xF24AEE80
	.4byte 0xF24A6680
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte str_MAH_S_2A_jon_0000cc98
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xF24AEE80
	.4byte 0xF24A6680
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24ABA80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24ACA80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte str_MAH_S_2B_jon_0000cc8c
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xF24AA680
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte str_MAH_S_2A_jon_0000cc98
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xF24AA680
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A3A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24ACA80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte str_MAH_S_2B_jon_0000cc8c
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24AA680
	.4byte 0xF24A6680
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte str_MAH_S_2A_jon_0000cc98
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24AA680
	.4byte 0xF24A6680
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24ABA80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24ACA80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte str_MAH_S_2B_jon_0000cc8c
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xF24AEE80
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte str_MAH_S_2A_jon_0000cc98
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFE363C8F
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xF24AEE80
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00010009
	.4byte 0x00000037
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_enemy_common_event_sub2

# .data:0x235C | 0x542EC | size: 0x104
.obj attack_enemy_common_event_sub_no_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8F
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
	.4byte 0xFE363C8F
	.4byte 0xFE363C8D
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFE363C8D
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFE363C8F
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub2
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC1_jon_0000cca4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC3_jon_0000ccb8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_enemy_common_event_sub_no_hit

# .data:0x2460 | 0x543F0 | size: 0xC8
.obj attack_enemy_common_event_sub_hit, local
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8F
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
	.4byte 0xFE363C8F
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x0001005E
	.4byte attack_enemy_common_event_sub2
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC1_jon_0000cca4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC3_jon_0000ccb8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_enemy_common_event_sub_hit

# .data:0x2528 | 0x544B8 | size: 0xD8
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
	.4byte 0x0001005E
	.4byte attack_enemy_common_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event

# .data:0x2600 | 0x54590 | size: 0xA4
.obj confuse_magic_event, local
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
	.4byte 0x0001005E
	.4byte attack_enemy_common_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj confuse_magic_event

# .data:0x26A4 | 0x54634 | size: 0xA4
.obj all_attack_magic_event, local
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
	.4byte 0x0001005E
	.4byte attack_enemy_all_common_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_attack_magic_event

# .data:0x2748 | 0x546D8 | size: 0x38C
.obj support_friend_common_event, local
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
	.4byte str_SFX_ENM_MAHO_CHARGE1_jon_0000cc28
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_jon_0000cc54
	.4byte str_akari_charge_n64_jon_0000cc64
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MAH_A_4_jon_0000cc78
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_MAH_S_5A_jon_0000cc80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A3A80
	.4byte 0xF24AEE80
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24ABA80
	.4byte 0xF24AEE80
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A3A80
	.4byte 0xF24AA680
	.4byte 0xF24A6680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24ABA80
	.4byte 0xF24AA680
	.4byte 0xF24A8E80
	.4byte 0x00010009
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MAH_A_2A_jon_0000cccc
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A2A80
	.4byte 0xF24B1A80
	.4byte 0xF24A3E80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24ACA80
	.4byte 0xF24B1A80
	.4byte 0xF24AB680
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A2A80
	.4byte 0xF24A7A80
	.4byte 0xF24A3E80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24ACA80
	.4byte 0xF24A7A80
	.4byte 0xF24AB680
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC4_jon_0000cce4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000cc54
	.4byte str_mahorn_jon_0000ccf8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8019
	.4byte 0x00000002
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_MAHO_MAGIC4_jon_0000cce4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000cc54
	.4byte str_mahorn_jon_0000ccf8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8019
	.4byte 0x00000002
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MAH_A_2C_jon_0000cd00
	.4byte 0x00000002
	.4byte 0x00000001
.endobj support_friend_common_event

# .data:0x2AD4 | 0x54A64 | size: 0x12C
.obj dekadeka_magic_event, local
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
	.4byte support_friend_common_event
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dekadeka_magic_event

# .data:0x2C00 | 0x54B90 | size: 0x12C
.obj katikati_magic_event, local
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
	.4byte support_friend_common_event
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj katikati_magic_event

# .data:0x2D2C | 0x54CBC | size: 0x12C
.obj trans_magic_event, local
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
	.4byte support_friend_common_event
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_magic_event

# .data:0x2E58 | 0x54DE8 | size: 0x12C
.obj yokeyoke_magic_event, local
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
	.4byte support_friend_common_event
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yokeyoke_magic_event

# .data:0x2F84 | 0x54F14 | size: 0x180
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
	.4byte 0x0001005E
	.4byte support_friend_common_event
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_0000cc54
	.4byte str_recovery_jon_0000cd0c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj recover_magic_event

# .data:0x3104 | 0x55094 | size: 0x608
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte mahorn_get_bunsin
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
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C8D
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_MAH_Z_2_jon_0000cbf0
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_MAH_S_4B_jon_0000cd18
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_MAH_S_4B_jon_0000cd18
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x0000000C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_MAH_S_4B_jon_0000cd18
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x0000000C
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x0000000D
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_MAH_S_4A_jon_0000ccd8
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_MAH_S_4B_jon_0000cd18
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x0000000D
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A1680
	.4byte 0xF24AF280
	.4byte 0xF24A5280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xF24A3E80
	.4byte 0xF24B1A80
	.4byte 0xF24A5280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24ADE80
	.4byte 0xF24AF280
	.4byte 0xF24AA280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24AB680
	.4byte 0xF24B1A80
	.4byte 0xF24AA280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A1680
	.4byte 0xF24AA280
	.4byte 0xF24A5280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xF24A3E80
	.4byte 0xF24A7A80
	.4byte 0xF24A5280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000070
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24ADE80
	.4byte 0xF24AA280
	.4byte 0xF24AA280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte set_hand_dest
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xF24AB680
	.4byte 0xF24A7A80
	.4byte 0xF24AA280
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x370C | 0x5569C | size: 0x4
.obj gap_04_0005569C_data, global
.hidden gap_04_0005569C_data
	.4byte 0x00000000
.endobj gap_04_0005569C_data
