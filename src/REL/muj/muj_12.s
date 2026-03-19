.include "macros.inc"
.file "muj_12.o"

# 0x00003674..0x00003AD0 | size: 0x45C
.text
.balign 4

# .text:0x0 | 0x3674 | size: 0x80
.fn accdec_type, local
/* 00003674 00003738  1D 04 00 14 */	mulli r8, r4, 0x14
/* 00003678 0000373C  3C C0 00 00 */	lis r6, zero_muj_000117d0@ha
/* 0000367C 00003740  C0 86 00 00 */	lfs f4, zero_muj_000117d0@l(r6)
/* 00003680 00003744  38 E0 00 64 */	li r7, 0x64
/* 00003684 00003748  3C A0 00 00 */	lis r5, float_1_muj_000117d4@ha
/* 00003688 0000374C  1C 04 00 50 */	mulli r0, r4, 0x50
/* 0000368C 00003750  C0 05 00 00 */	lfs f0, float_1_muj_000117d4@l(r5)
/* 00003690 00003754  FC A0 20 90 */	fmr f5, f4
/* 00003694 00003758  38 A0 00 00 */	li r5, 0x0
/* 00003698 0000375C  7C C8 3B D6 */	divw r6, r8, r7
/* 0000369C 00003760  7C 00 3B D6 */	divw r0, r0, r7
/* 000036A0 00003764  7C 89 03 A6 */	mtctr r4
/* 000036A4 00003768  2C 04 00 00 */	cmpwi r4, 0x0
/* 000036A8 0000376C  40 81 00 38 */	ble .L_000036E0
.L_000036AC:
/* 000036AC 00003770  7C 05 30 00 */	cmpw r5, r6
/* 000036B0 00003774  41 81 00 0C */	bgt .L_000036BC
/* 000036B4 00003778  EC 84 00 2A */	fadds f4, f4, f0
/* 000036B8 0000377C  48 00 00 10 */	b .L_000036C8
.L_000036BC:
/* 000036BC 00003780  7C 05 00 00 */	cmpw r5, r0
/* 000036C0 00003784  41 80 00 08 */	blt .L_000036C8
/* 000036C4 00003788  EC 84 00 28 */	fsubs f4, f4, f0
.L_000036C8:
/* 000036C8 0000378C  7C 05 18 00 */	cmpw r5, r3
/* 000036CC 00003790  EC A5 20 2A */	fadds f5, f5, f4
/* 000036D0 00003794  40 82 00 08 */	bne .L_000036D8
/* 000036D4 00003798  FC 60 28 90 */	fmr f3, f5
.L_000036D8:
/* 000036D8 0000379C  38 A5 00 01 */	addi r5, r5, 0x1
/* 000036DC 000037A0  42 00 FF D0 */	bdnz .L_000036AC
.L_000036E0:
/* 000036E0 000037A4  EC 02 08 28 */	fsubs f0, f2, f1
/* 000036E4 000037A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 000036E8 000037AC  EC 00 28 24 */	fdivs f0, f0, f5
/* 000036EC 000037B0  EC 21 00 2A */	fadds f1, f1, f0
/* 000036F0 000037B4  4E 80 00 20 */	blr
.endfn accdec_type

# .text:0x80 | 0x36F4 | size: 0x244
.fn muj_item_move_3d_position, local
/* 000036F4 000037B8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 000036F8 000037BC  7C 08 02 A6 */	mflr r0
/* 000036FC 000037C0  90 01 00 84 */	stw r0, 0x84(r1)
/* 00003700 000037C4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 00003704 000037C8  F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 00003708 000037CC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 0000370C 000037D0  F3 C1 00 68 */	psq_st f30, 0x68(r1), 0, qr0
/* 00003710 000037D4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 00003714 000037D8  F3 A1 00 58 */	psq_st f29, 0x58(r1), 0, qr0
/* 00003718 000037DC  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 0000371C 000037E0  F3 81 00 48 */	psq_st f28, 0x48(r1), 0, qr0
/* 00003720 000037E4  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 00003724 000037E8  7C 7A 1B 78 */	mr r26, r3
/* 00003728 000037EC  7C 9B 23 78 */	mr r27, r4
/* 0000372C 000037F0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003730 000037F4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003734 000037F8  4B FF D2 75 */	bl evtGetValue
/* 00003738 000037FC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000373C 00003800  7C 7E 1B 78 */	mr r30, r3
/* 00003740 00003804  7F 43 D3 78 */	mr r3, r26
/* 00003744 00003808  4B FF D2 65 */	bl evtGetValue
/* 00003748 0000380C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000374C 00003810  3C 00 43 30 */	lis r0, 0x4330
/* 00003750 00003814  3C 80 00 00 */	lis r4, double_to_int_muj_000117d8@ha
/* 00003754 00003818  90 61 00 0C */	stw r3, 0xc(r1)
/* 00003758 0000381C  38 A4 00 00 */	addi r5, r4, double_to_int_muj_000117d8@l
/* 0000375C 00003820  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00003760 00003824  90 01 00 08 */	stw r0, 0x8(r1)
/* 00003764 00003828  7F 43 D3 78 */	mr r3, r26
/* 00003768 0000382C  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 0000376C 00003830  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00003770 00003834  EF C0 08 28 */	fsubs f30, f0, f1
/* 00003774 00003838  4B FF D2 35 */	bl evtGetValue
/* 00003778 0000383C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000377C 00003840  3C 00 43 30 */	lis r0, 0x4330
/* 00003780 00003844  3C 80 00 00 */	lis r4, double_to_int_muj_000117d8@ha
/* 00003784 00003848  90 61 00 14 */	stw r3, 0x14(r1)
/* 00003788 0000384C  38 A4 00 00 */	addi r5, r4, double_to_int_muj_000117d8@l
/* 0000378C 00003850  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00003790 00003854  90 01 00 10 */	stw r0, 0x10(r1)
/* 00003794 00003858  7F 43 D3 78 */	mr r3, r26
/* 00003798 0000385C  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 0000379C 00003860  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000037A0 00003864  EF A0 08 28 */	fsubs f29, f0, f1
/* 000037A4 00003868  4B FF D2 05 */	bl evtGetValue
/* 000037A8 0000386C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000037AC 00003870  3C 00 43 30 */	lis r0, 0x4330
/* 000037B0 00003874  3C 80 00 00 */	lis r4, double_to_int_muj_000117d8@ha
/* 000037B4 00003878  90 61 00 1C */	stw r3, 0x1c(r1)
/* 000037B8 0000387C  38 A4 00 00 */	addi r5, r4, double_to_int_muj_000117d8@l
/* 000037BC 00003880  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000037C0 00003884  90 01 00 18 */	stw r0, 0x18(r1)
/* 000037C4 00003888  7F 43 D3 78 */	mr r3, r26
/* 000037C8 0000388C  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 000037CC 00003890  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 000037D0 00003894  EF 80 08 28 */	fsubs f28, f0, f1
/* 000037D4 00003898  4B FF D1 D5 */	bl evtGetValue
/* 000037D8 0000389C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 000037DC 000038A0  7C 7D 1B 78 */	mr r29, r3
/* 000037E0 000038A4  7F 43 D3 78 */	mr r3, r26
/* 000037E4 000038A8  4B FF D1 C5 */	bl evtGetValue
/* 000037E8 000038AC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 000037EC 000038B0  7C 7C 1B 78 */	mr r28, r3
/* 000037F0 000038B4  7F 43 D3 78 */	mr r3, r26
/* 000037F4 000038B8  4B FF D1 B5 */	bl evtGetFloat
/* 000037F8 000038BC  FF E0 08 90 */	fmr f31, f1
/* 000037FC 000038C0  7F C3 F3 78 */	mr r3, r30
/* 00003800 000038C4  4B FF D1 A9 */	bl itemNameToPtr
/* 00003804 000038C8  2C 1B 00 00 */	cmpwi r27, 0x0
/* 00003808 000038CC  7C 7F 1B 78 */	mr r31, r3
/* 0000380C 000038D0  41 82 00 48 */	beq .L_00003854
/* 00003810 000038D4  28 1F 00 00 */	cmplwi r31, 0x0
/* 00003814 000038D8  40 82 00 0C */	bne .L_00003820
/* 00003818 000038DC  38 60 00 02 */	li r3, 0x2
/* 0000381C 000038E0  48 00 00 E8 */	b .L_00003904
.L_00003820:
/* 00003820 000038E4  3C 60 00 00 */	lis r3, gp@ha
/* 00003824 000038E8  38 63 00 00 */	addi r3, r3, gp@l
/* 00003828 000038EC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000382C 000038F0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 00003830 000038F4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 00003834 000038F8  90 7A 01 9C */	stw r3, 0x19c(r26)
/* 00003838 000038FC  90 1A 01 98 */	stw r0, 0x198(r26)
/* 0000383C 00003900  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 00003840 00003904  D0 1A 00 7C */	stfs f0, 0x7c(r26)
/* 00003844 00003908  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 00003848 0000390C  D0 1A 00 80 */	stfs f0, 0x80(r26)
/* 0000384C 00003910  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 00003850 00003914  D0 1A 00 84 */	stfs f0, 0x84(r26)
.L_00003854:
/* 00003854 00003918  3C 60 80 00 */	lis r3, 0x8000
/* 00003858 0000391C  3C 80 00 00 */	lis r4, gp@ha
/* 0000385C 00003920  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 00003860 00003924  38 84 00 00 */	addi r4, r4, gp@l
/* 00003864 00003928  38 00 03 E8 */	li r0, 0x3e8
/* 00003868 0000392C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000386C 00003930  54 63 F0 BE */	srwi r3, r3, 2
/* 00003870 00003934  80 BA 01 9C */	lwz r5, 0x19c(r26)
/* 00003874 00003938  7C 03 03 96 */	divwu r0, r3, r0
/* 00003878 0000393C  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 0000387C 00003940  7C 65 18 50 */	subf r3, r5, r3
/* 00003880 00003944  7C 83 03 96 */	divwu r4, r3, r0
/* 00003884 00003948  7C 04 E8 00 */	cmpw r4, r29
/* 00003888 0000394C  40 80 00 6C */	bge .L_000038F4
/* 0000388C 00003950  FC 40 F0 90 */	fmr f2, f30
/* 00003890 00003954  C0 3A 00 7C */	lfs f1, 0x7c(r26)
/* 00003894 00003958  7F 83 E3 78 */	mr r3, r28
/* 00003898 0000395C  7C 9B 23 78 */	mr r27, r4
/* 0000389C 00003960  7F A5 EB 78 */	mr r5, r29
/* 000038A0 00003964  4B FF D1 09 */	bl intplGetValue
/* 000038A4 00003968  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 000038A8 0000396C  FC 40 E8 90 */	fmr f2, f29
/* 000038AC 00003970  7F 83 E3 78 */	mr r3, r28
/* 000038B0 00003974  7F 64 DB 78 */	mr r4, r27
/* 000038B4 00003978  C0 3A 00 80 */	lfs f1, 0x80(r26)
/* 000038B8 0000397C  7F A5 EB 78 */	mr r5, r29
/* 000038BC 00003980  4B FF D0 ED */	bl intplGetValue
/* 000038C0 00003984  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 000038C4 00003988  FC 40 E0 90 */	fmr f2, f28
/* 000038C8 0000398C  7F 83 E3 78 */	mr r3, r28
/* 000038CC 00003990  7F 64 DB 78 */	mr r4, r27
/* 000038D0 00003994  C0 3A 00 84 */	lfs f1, 0x84(r26)
/* 000038D4 00003998  7F A5 EB 78 */	mr r5, r29
/* 000038D8 0000399C  4B FF D0 D1 */	bl intplGetValue
/* 000038DC 000039A0  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 000038E0 000039A4  38 60 00 00 */	li r3, 0x0
/* 000038E4 000039A8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 000038E8 000039AC  EC 00 F8 2A */	fadds f0, f0, f31
/* 000038EC 000039B0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 000038F0 000039B4  48 00 00 14 */	b .L_00003904
.L_000038F4:
/* 000038F4 000039B8  D3 DF 00 3C */	stfs f30, 0x3c(r31)
/* 000038F8 000039BC  38 60 00 02 */	li r3, 0x2
/* 000038FC 000039C0  D3 BF 00 40 */	stfs f29, 0x40(r31)
/* 00003900 000039C4  D3 9F 00 44 */	stfs f28, 0x44(r31)
.L_00003904:
/* 00003904 000039C8  E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 00003908 000039CC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 0000390C 000039D0  E3 C1 00 68 */	psq_l f30, 0x68(r1), 0, qr0
/* 00003910 000039D4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 00003914 000039D8  E3 A1 00 58 */	psq_l f29, 0x58(r1), 0, qr0
/* 00003918 000039DC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 0000391C 000039E0  E3 81 00 48 */	psq_l f28, 0x48(r1), 0, qr0
/* 00003920 000039E4  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 00003924 000039E8  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 00003928 000039EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 0000392C 000039F0  7C 08 03 A6 */	mtlr r0
/* 00003930 000039F4  38 21 00 80 */	addi r1, r1, 0x80
/* 00003934 000039F8  4E 80 00 20 */	blr
.endfn muj_item_move_3d_position

# .text:0x2C4 | 0x3938 | size: 0x198
.fn evtflash, local
/* 00003938 000039FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000393C 00003A00  7C 08 02 A6 */	mflr r0
/* 00003940 00003A04  2C 04 00 00 */	cmpwi r4, 0x0
/* 00003944 00003A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003948 00003A0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 0000394C 00003A10  7C 7F 1B 78 */	mr r31, r3
/* 00003950 00003A14  41 82 00 0C */	beq .L_0000395C
/* 00003954 00003A18  38 00 00 00 */	li r0, 0x0
/* 00003958 00003A1C  90 1F 00 80 */	stw r0, 0x80(r31)
.L_0000395C:
/* 0000395C 00003A20  80 DF 00 80 */	lwz r6, 0x80(r31)
/* 00003960 00003A24  2C 06 00 02 */	cmpwi r6, 0x2
/* 00003964 00003A28  41 82 00 B8 */	beq .L_00003A1C
/* 00003968 00003A2C  40 80 00 14 */	bge .L_0000397C
/* 0000396C 00003A30  2C 06 00 00 */	cmpwi r6, 0x0
/* 00003970 00003A34  41 82 00 1C */	beq .L_0000398C
/* 00003974 00003A38  40 80 00 44 */	bge .L_000039B8
/* 00003978 00003A3C  48 00 01 40 */	b .L_00003AB8
.L_0000397C:
/* 0000397C 00003A40  2C 06 00 04 */	cmpwi r6, 0x4
/* 00003980 00003A44  41 82 01 1C */	beq .L_00003A9C
/* 00003984 00003A48  40 80 01 34 */	bge .L_00003AB8
/* 00003988 00003A4C  48 00 00 E8 */	b .L_00003A70
.L_0000398C:
/* 0000398C 00003A50  3C 60 00 00 */	lis r3, dat_muj_00011400@ha
/* 00003990 00003A54  38 A1 00 0C */	addi r5, r1, 0xc
/* 00003994 00003A58  38 83 00 00 */	addi r4, r3, dat_muj_00011400@l
/* 00003998 00003A5C  38 60 00 0A */	li r3, 0xa
/* 0000399C 00003A60  80 04 00 00 */	lwz r0, 0x0(r4)
/* 000039A0 00003A64  38 80 00 14 */	li r4, 0x14
/* 000039A4 00003A68  90 01 00 0C */	stw r0, 0xc(r1)
/* 000039A8 00003A6C  4B FF D0 01 */	bl fadeEntry
/* 000039AC 00003A70  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 000039B0 00003A74  38 03 00 01 */	addi r0, r3, 0x1
/* 000039B4 00003A78  90 1F 00 80 */	stw r0, 0x80(r31)
.L_000039B8:
/* 000039B8 00003A7C  4B FF CF F1 */	bl fadeIsFinish
/* 000039BC 00003A80  2C 03 00 01 */	cmpwi r3, 0x1
/* 000039C0 00003A84  41 82 00 0C */	beq .L_000039CC
/* 000039C4 00003A88  38 60 00 00 */	li r3, 0x0
/* 000039C8 00003A8C  48 00 00 F4 */	b .L_00003ABC
.L_000039CC:
/* 000039CC 00003A90  38 00 00 32 */	li r0, 0x32
/* 000039D0 00003A94  3C 60 00 00 */	lis r3, gp@ha
/* 000039D4 00003A98  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000039D8 00003A9C  38 63 00 00 */	addi r3, r3, gp@l
/* 000039DC 00003AA0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000039E0 00003AA4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 000039E4 00003AA8  90 7F 01 9C */	stw r3, 0x19c(r31)
/* 000039E8 00003AAC  7C 60 FE 70 */	srawi r0, r3, 31
/* 000039EC 00003AB0  90 1F 01 98 */	stw r0, 0x198(r31)
/* 000039F0 00003AB4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 000039F4 00003AB8  38 03 00 01 */	addi r0, r3, 0x1
/* 000039F8 00003ABC  90 1F 00 80 */	stw r0, 0x80(r31)
/* 000039FC 00003AC0  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00003A00 00003AC4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003A04 00003AC8  40 82 00 10 */	bne .L_00003A14
/* 00003A08 00003ACC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00003A0C 00003AD0  38 03 00 01 */	addi r0, r3, 0x1
/* 00003A10 00003AD4  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00003A14:
/* 00003A14 00003AD8  38 60 00 00 */	li r3, 0x0
/* 00003A18 00003ADC  48 00 00 A4 */	b .L_00003ABC
.L_00003A1C:
/* 00003A1C 00003AE0  3C 60 80 00 */	lis r3, 0x8000
/* 00003A20 00003AE4  3C 80 00 00 */	lis r4, gp@ha
/* 00003A24 00003AE8  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 00003A28 00003AEC  38 84 00 00 */	addi r4, r4, gp@l
/* 00003A2C 00003AF0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003A30 00003AF4  38 00 03 E8 */	li r0, 0x3e8
/* 00003A34 00003AF8  54 63 F0 BE */	srwi r3, r3, 2
/* 00003A38 00003AFC  80 BF 01 9C */	lwz r5, 0x19c(r31)
/* 00003A3C 00003B00  7C 63 03 96 */	divwu r3, r3, r0
/* 00003A40 00003B04  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 00003A44 00003B08  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 00003A48 00003B0C  7C 85 20 50 */	subf r4, r5, r4
/* 00003A4C 00003B10  7C 64 1B 96 */	divwu r3, r4, r3
/* 00003A50 00003B14  7C 03 00 40 */	cmplw r3, r0
/* 00003A54 00003B18  40 80 00 0C */	bge .L_00003A60
/* 00003A58 00003B1C  38 60 00 00 */	li r3, 0x0
/* 00003A5C 00003B20  48 00 00 60 */	b .L_00003ABC
.L_00003A60:
/* 00003A60 00003B24  38 06 00 01 */	addi r0, r6, 0x1
/* 00003A64 00003B28  38 60 00 00 */	li r3, 0x0
/* 00003A68 00003B2C  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00003A6C 00003B30  48 00 00 50 */	b .L_00003ABC
.L_00003A70:
/* 00003A70 00003B34  3C 60 00 00 */	lis r3, dat_muj_00011404@ha
/* 00003A74 00003B38  38 A1 00 08 */	addi r5, r1, 0x8
/* 00003A78 00003B3C  38 83 00 00 */	addi r4, r3, dat_muj_00011404@l
/* 00003A7C 00003B40  38 60 00 09 */	li r3, 0x9
/* 00003A80 00003B44  80 04 00 00 */	lwz r0, 0x0(r4)
/* 00003A84 00003B48  38 80 00 50 */	li r4, 0x50
/* 00003A88 00003B4C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00003A8C 00003B50  4B FF CF 1D */	bl fadeEntry
/* 00003A90 00003B54  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 00003A94 00003B58  38 03 00 01 */	addi r0, r3, 0x1
/* 00003A98 00003B5C  90 1F 00 80 */	stw r0, 0x80(r31)
.L_00003A9C:
/* 00003A9C 00003B60  4B FF CF 0D */	bl fadeIsFinish
/* 00003AA0 00003B64  2C 03 00 01 */	cmpwi r3, 0x1
/* 00003AA4 00003B68  41 82 00 0C */	beq .L_00003AB0
/* 00003AA8 00003B6C  38 60 00 00 */	li r3, 0x0
/* 00003AAC 00003B70  48 00 00 10 */	b .L_00003ABC
.L_00003AB0:
/* 00003AB0 00003B74  38 60 00 02 */	li r3, 0x2
/* 00003AB4 00003B78  48 00 00 08 */	b .L_00003ABC
.L_00003AB8:
/* 00003AB8 00003B7C  38 60 00 02 */	li r3, 0x2
.L_00003ABC:
/* 00003ABC 00003B80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003AC0 00003B84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00003AC4 00003B88  7C 08 03 A6 */	mtlr r0
/* 00003AC8 00003B8C  38 21 00 20 */	addi r1, r1, 0x20
/* 00003ACC 00003B90  4E 80 00 20 */	blr
.endfn evtflash

# 0x00003750..0x00003B30 | size: 0x3E0
.rodata
.balign 8

# .rodata:0x0 | 0x3750 | size: 0x4
.obj dat_muj_00011400, local
	.4byte 0xFFFFFFFF
.endobj dat_muj_00011400

# .rodata:0x4 | 0x3754 | size: 0x4
.obj dat_muj_00011404, local
	.4byte 0xFFFFFFFF
.endobj dat_muj_00011404

# .rodata:0x8 | 0x3758 | size: 0x6
.obj str_S_doa_muj_00011408, local
	.string "S_doa"
.endobj str_S_doa_muj_00011408

# .rodata:0xE | 0x375E | size: 0x2
.obj gap_03_0000375E_rodata, global
.hidden gap_03_0000375E_rodata
	.2byte 0x0000
.endobj gap_03_0000375E_rodata

# .rodata:0x10 | 0x3760 | size: 0x7
.obj str_w_bero_muj_00011410, local
	.string "w_bero"
.endobj str_w_bero_muj_00011410

# .rodata:0x17 | 0x3767 | size: 0x1
.obj gap_03_00003767_rodata, global
.hidden gap_03_00003767_rodata
	.byte 0x00
.endobj gap_03_00003767_rodata

# .rodata:0x18 | 0x3768 | size: 0x7
.obj str_muj_11_muj_00011418, local
	.string "muj_11"
.endobj str_muj_11_muj_00011418

# .rodata:0x1F | 0x376F | size: 0x1
.obj gap_03_0000376F_rodata, global
.hidden gap_03_0000376F_rodata
	.byte 0x00
.endobj gap_03_0000376F_rodata

# .rodata:0x20 | 0x3770 | size: 0x7
.obj str_e_bero_muj_00011420, local
	.string "e_bero"
.endobj str_e_bero_muj_00011420

# .rodata:0x27 | 0x3777 | size: 0x1
.obj gap_03_00003777_rodata, global
.hidden gap_03_00003777_rodata
	.byte 0x00
.endobj gap_03_00003777_rodata

# .rodata:0x28 | 0x3778 | size: 0x9
.obj str_コルテス_muj_00011428, local
	.4byte 0x8352838B
	.4byte 0x83658358
	.byte 0x00
.endobj str_コルテス_muj_00011428

# .rodata:0x31 | 0x3781 | size: 0x3
.obj gap_03_00003781_rodata, global
.hidden gap_03_00003781_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003781_rodata

# .rodata:0x34 | 0x3784 | size: 0x15
.obj str_SFX_STG5_SHIP_SHAKE2_muj_00011434, local
	.string "SFX_STG5_SHIP_SHAKE2"
.endobj str_SFX_STG5_SHIP_SHAKE2_muj_00011434

# .rodata:0x49 | 0x3799 | size: 0x3
.obj gap_03_00003799_rodata, global
.hidden gap_03_00003799_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003799_rodata

# .rodata:0x4C | 0x379C | size: 0x1B
.obj str_SFX_STG5_KOR_APPEAR__muj_0001144c, local
	.string "SFX_STG5_KOR_APPEAR_LIGHT1"
.endobj str_SFX_STG5_KOR_APPEAR__muj_0001144c

# .rodata:0x67 | 0x37B7 | size: 0x1
.obj gap_03_000037B7_rodata, global
.hidden gap_03_000037B7_rodata
	.byte 0x00
.endobj gap_03_000037B7_rodata

# .rodata:0x68 | 0x37B8 | size: 0x2
.obj str_S_muj_00011468, local
	.string "S"
.endobj str_S_muj_00011468

# .rodata:0x6A | 0x37BA | size: 0x2
.obj gap_03_000037BA_rodata, global
.hidden gap_03_000037BA_rodata
	.2byte 0x0000
.endobj gap_03_000037BA_rodata

# .rodata:0x6C | 0x37BC | size: 0x7
.obj str_M_N_5B_muj_0001146c, local
	.string "M_N_5B"
.endobj str_M_N_5B_muj_0001146c

# .rodata:0x73 | 0x37C3 | size: 0x1
.obj gap_03_000037C3_rodata, global
.hidden gap_03_000037C3_rodata
	.byte 0x00
.endobj gap_03_000037C3_rodata

# .rodata:0x74 | 0x37C4 | size: 0x6
.obj str_M_S_1_muj_00011474, local
	.string "M_S_1"
.endobj str_M_S_1_muj_00011474

# .rodata:0x7A | 0x37CA | size: 0x2
.obj gap_03_000037CA_rodata, global
.hidden gap_03_000037CA_rodata
	.2byte 0x0000
.endobj gap_03_000037CA_rodata

# .rodata:0x7C | 0x37CC | size: 0x16
.obj str_SFX_STG5_ELMOS_VOICE_muj_0001147c, local
	.string "SFX_STG5_ELMOS_VOICE1"
.endobj str_SFX_STG5_ELMOS_VOICE_muj_0001147c

# .rodata:0x92 | 0x37E2 | size: 0x2
.obj gap_03_000037E2_rodata, global
.hidden gap_03_000037E2_rodata
	.2byte 0x0000
.endobj gap_03_000037E2_rodata

# .rodata:0x94 | 0x37E4 | size: 0xC
.obj str_stg5_dou_21_muj_00011494, local
	.string "stg5_dou_21"
.endobj str_stg5_dou_21_muj_00011494

# .rodata:0xA0 | 0x37F0 | size: 0x6
.obj str_M_I_Y_muj_000114a0, local
	.string "M_I_Y"
.endobj str_M_I_Y_muj_000114a0

# .rodata:0xA6 | 0x37F6 | size: 0x2
.obj gap_03_000037F6_rodata, global
.hidden gap_03_000037F6_rodata
	.2byte 0x0000
.endobj gap_03_000037F6_rodata

# .rodata:0xA8 | 0x37F8 | size: 0x16
.obj str_BGM_EVT_STG5_KORTESS_muj_000114a8, local
	.string "BGM_EVT_STG5_KORTESS1"
.endobj str_BGM_EVT_STG5_KORTESS_muj_000114a8

# .rodata:0xBE | 0x380E | size: 0x2
.obj gap_03_0000380E_rodata, global
.hidden gap_03_0000380E_rodata
	.2byte 0x0000
.endobj gap_03_0000380E_rodata

# .rodata:0xC0 | 0x3810 | size: 0xC
.obj str_stg5_dou_22_muj_000114c0, local
	.string "stg5_dou_22"
.endobj str_stg5_dou_22_muj_000114c0

# .rodata:0xCC | 0x381C | size: 0x8
.obj str_KRT_S_1_muj_000114cc, local
	.string "KRT_S_1"
.endobj str_KRT_S_1_muj_000114cc

# .rodata:0xD4 | 0x3824 | size: 0x8
.obj str_KRT_T_3_muj_000114d4, local
	.string "KRT_T_3"
.endobj str_KRT_T_3_muj_000114d4

# .rodata:0xDC | 0x382C | size: 0x16
.obj str_BGM_FF_ENV_SURPRISED_muj_000114dc, local
	.string "BGM_FF_ENV_SURPRISED3"
.endobj str_BGM_FF_ENV_SURPRISED_muj_000114dc

# .rodata:0xF2 | 0x3842 | size: 0x2
.obj gap_03_00003842_rodata, global
.hidden gap_03_00003842_rodata
	.2byte 0x0000
.endobj gap_03_00003842_rodata

# .rodata:0xF4 | 0x3844 | size: 0xC
.obj str_stg5_dou_23_muj_000114f4, local
	.string "stg5_dou_23"
.endobj str_stg5_dou_23_muj_000114f4

# .rodata:0x100 | 0x3850 | size: 0x8
.obj str_KRT_T_2_muj_00011500, local
	.string "KRT_T_2"
.endobj str_KRT_T_2_muj_00011500

# .rodata:0x108 | 0x3858 | size: 0xC
.obj str_stg5_dou_24_muj_00011508, local
	.string "stg5_dou_24"
.endobj str_stg5_dou_24_muj_00011508

# .rodata:0x114 | 0x3864 | size: 0xC
.obj str_stg5_dou_25_muj_00011514, local
	.string "stg5_dou_25"
.endobj str_stg5_dou_25_muj_00011514

# .rodata:0x120 | 0x3870 | size: 0x18
.obj str_SFX_STG5_KOR_HEAD_MO_muj_00011520, local
	.string "SFX_STG5_KOR_HEAD_MOVE1"
.endobj str_SFX_STG5_KOR_HEAD_MO_muj_00011520

# .rodata:0x138 | 0x3888 | size: 0xC
.obj str_stg5_dou_26_muj_00011538, local
	.string "stg5_dou_26"
.endobj str_stg5_dou_26_muj_00011538

# .rodata:0x144 | 0x3894 | size: 0x18
.obj str_SFX_STG5_KOR_HEAD_MO_muj_00011544, local
	.string "SFX_STG5_KOR_HEAD_MOVE2"
.endobj str_SFX_STG5_KOR_HEAD_MO_muj_00011544

# .rodata:0x15C | 0x38AC | size: 0xC
.obj str_stg5_dou_27_muj_0001155c, local
	.string "stg5_dou_27"
.endobj str_stg5_dou_27_muj_0001155c

# .rodata:0x168 | 0x38B8 | size: 0x6
.obj str_M_I_2_muj_00011568, local
	.string "M_I_2"
.endobj str_M_I_2_muj_00011568

# .rodata:0x16E | 0x38BE | size: 0x2
.obj gap_03_000038BE_rodata, global
.hidden gap_03_000038BE_rodata
	.2byte 0x0000
.endobj gap_03_000038BE_rodata

# .rodata:0x170 | 0x38C0 | size: 0xC
.obj str_stg5_dou_28_muj_00011570, local
	.string "stg5_dou_28"
.endobj str_stg5_dou_28_muj_00011570

# .rodata:0x17C | 0x38CC | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_muj_0001157c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_1"
.endobj str_SFX_VOICE_MARIO_HAND_muj_0001157c

# .rodata:0x197 | 0x38E7 | size: 0x1
.obj gap_03_000038E7_rodata, global
.hidden gap_03_000038E7_rodata
	.byte 0x00
.endobj gap_03_000038E7_rodata

# .rodata:0x198 | 0x38E8 | size: 0x6
.obj str_M_N_2_muj_00011598, local
	.string "M_N_2"
.endobj str_M_N_2_muj_00011598

# .rodata:0x19E | 0x38EE | size: 0x2
.obj gap_03_000038EE_rodata, global
.hidden gap_03_000038EE_rodata
	.2byte 0x0000
.endobj gap_03_000038EE_rodata

# .rodata:0x1A0 | 0x38F0 | size: 0xD
.obj str_stg5_dou_28a_muj_000115a0, local
	.string "stg5_dou_28a"
.endobj str_stg5_dou_28a_muj_000115a0

# .rodata:0x1AD | 0x38FD | size: 0x3
.obj gap_03_000038FD_rodata, global
.hidden gap_03_000038FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038FD_rodata

# .rodata:0x1B0 | 0x3900 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_muj_000115b0, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_muj_000115b0

# .rodata:0x1CB | 0x391B | size: 0x1
.obj gap_03_0000391B_rodata, global
.hidden gap_03_0000391B_rodata
	.byte 0x00
.endobj gap_03_0000391B_rodata

# .rodata:0x1CC | 0x391C | size: 0xD
.obj str_stg5_dou_28b_muj_000115cc, local
	.string "stg5_dou_28b"
.endobj str_stg5_dou_28b_muj_000115cc

# .rodata:0x1D9 | 0x3929 | size: 0x3
.obj gap_03_00003929_rodata, global
.hidden gap_03_00003929_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003929_rodata

# .rodata:0x1DC | 0x392C | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_muj_000115dc, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_muj_000115dc

# .rodata:0x1F3 | 0x3943 | size: 0x1
.obj gap_03_00003943_rodata, global
.hidden gap_03_00003943_rodata
	.byte 0x00
.endobj gap_03_00003943_rodata

# .rodata:0x1F4 | 0x3944 | size: 0xD
.obj str_stg5_dou_28c_muj_000115f4, local
	.string "stg5_dou_28c"
.endobj str_stg5_dou_28c_muj_000115f4

# .rodata:0x201 | 0x3951 | size: 0x3
.obj gap_03_00003951_rodata, global
.hidden gap_03_00003951_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003951_rodata

# .rodata:0x204 | 0x3954 | size: 0xC
.obj str_stg5_dou_29_muj_00011604, local
	.string "stg5_dou_29"
.endobj str_stg5_dou_29_muj_00011604

# .rodata:0x210 | 0x3960 | size: 0x6
.obj str_stone_muj_00011610, local
	.string "stone"
.endobj str_stone_muj_00011610

# .rodata:0x216 | 0x3966 | size: 0x2
.obj gap_03_00003966_rodata, global
.hidden gap_03_00003966_rodata
	.2byte 0x0000
.endobj gap_03_00003966_rodata

# .rodata:0x218 | 0x3968 | size: 0xE
.obj str_BGM_STG5_DOU1_muj_00011618, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_muj_00011618

# .rodata:0x226 | 0x3976 | size: 0x2
.obj gap_03_00003976_rodata, global
.hidden gap_03_00003976_rodata
	.2byte 0x0000
.endobj gap_03_00003976_rodata

# .rodata:0x228 | 0x3978 | size: 0xE
.obj str_ENV_STG5_MUJ9_muj_00011628, local
	.string "ENV_STG5_MUJ9"
.endobj str_ENV_STG5_MUJ9_muj_00011628

# .rodata:0x236 | 0x3986 | size: 0x2
.obj gap_03_00003986_rodata, global
.hidden gap_03_00003986_rodata
	.2byte 0x0000
.endobj gap_03_00003986_rodata

# .rodata:0x238 | 0x3988 | size: 0x9
.obj str_S_kabe_r_muj_00011638, local
	.string "S_kabe_r"
.endobj str_S_kabe_r_muj_00011638

# .rodata:0x241 | 0x3991 | size: 0x3
.obj gap_03_00003991_rodata, global
.hidden gap_03_00003991_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003991_rodata

# .rodata:0x244 | 0x3994 | size: 0xA
.obj str_S_t_doa02_muj_00011644, local
	.string "S_t_doa02"
.endobj str_S_t_doa02_muj_00011644

# .rodata:0x24E | 0x399E | size: 0x2
.obj gap_03_0000399E_rodata, global
.hidden gap_03_0000399E_rodata
	.2byte 0x0000
.endobj gap_03_0000399E_rodata

# .rodata:0x250 | 0x39A0 | size: 0xA
.obj str_S_t_doa03_muj_00011650, local
	.string "S_t_doa03"
.endobj str_S_t_doa03_muj_00011650

# .rodata:0x25A | 0x39AA | size: 0x2
.obj gap_03_000039AA_rodata, global
.hidden gap_03_000039AA_rodata
	.2byte 0x0000
.endobj gap_03_000039AA_rodata

# .rodata:0x25C | 0x39AC | size: 0xC
.obj str_stg5_dou_30_muj_0001165c, local
	.string "stg5_dou_30"
.endobj str_stg5_dou_30_muj_0001165c

# .rodata:0x268 | 0x39B8 | size: 0xC
.obj str_stg5_dou_39_muj_00011668, local
	.string "stg5_dou_39"
.endobj str_stg5_dou_39_muj_00011668

# .rodata:0x274 | 0x39C4 | size: 0x7
.obj str_muj_10_muj_00011674, local
	.string "muj_10"
.endobj str_muj_10_muj_00011674

# .rodata:0x27B | 0x39CB | size: 0x1
.obj gap_03_000039CB_rodata, global
.hidden gap_03_000039CB_rodata
	.byte 0x00
.endobj gap_03_000039CB_rodata

# .rodata:0x27C | 0x39CC | size: 0x1
.obj zero_muj_0001167c, local
	.byte 0x00
.endobj zero_muj_0001167c

# .rodata:0x27D | 0x39CD | size: 0x3
.obj gap_03_000039CD_rodata, global
.hidden gap_03_000039CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000039CD_rodata

# .rodata:0x280 | 0x39D0 | size: 0xC
.obj str_stg5_dou_31_muj_00011680, local
	.string "stg5_dou_31"
.endobj str_stg5_dou_31_muj_00011680

# .rodata:0x28C | 0x39DC | size: 0x16
.obj str_SFX_STG5_MARCO_SHAKE_muj_0001168c, local
	.string "SFX_STG5_MARCO_SHAKE1"
.endobj str_SFX_STG5_MARCO_SHAKE_muj_0001168c

# .rodata:0x2A2 | 0x39F2 | size: 0x2
.obj gap_03_000039F2_rodata, global
.hidden gap_03_000039F2_rodata
	.2byte 0x0000
.endobj gap_03_000039F2_rodata

# .rodata:0x2A4 | 0x39F4 | size: 0x4
.obj str_O_1_muj_000116a4, local
	.string "O_1"
.endobj str_O_1_muj_000116a4

# .rodata:0x2A8 | 0x39F8 | size: 0xC
.obj str_stg5_dou_32_muj_000116a8, local
	.string "stg5_dou_32"
.endobj str_stg5_dou_32_muj_000116a8

# .rodata:0x2B4 | 0x3A04 | size: 0xC
.obj str_stg5_dou_33_muj_000116b4, local
	.string "stg5_dou_33"
.endobj str_stg5_dou_33_muj_000116b4

# .rodata:0x2C0 | 0x3A10 | size: 0xC
.obj str_stg5_dou_34_muj_000116c0, local
	.string "stg5_dou_34"
.endobj str_stg5_dou_34_muj_000116c0

# .rodata:0x2CC | 0x3A1C | size: 0xC
.obj str_stg5_dou_35_muj_000116cc, local
	.string "stg5_dou_35"
.endobj str_stg5_dou_35_muj_000116cc

# .rodata:0x2D8 | 0x3A28 | size: 0x4
.obj str_S_1_muj_000116d8, local
	.string "S_1"
.endobj str_S_1_muj_000116d8

# .rodata:0x2DC | 0x3A2C | size: 0x1A
.obj str_SFX_EVT_NPC_BIKKURI__muj_000116dc, local
	.string "SFX_EVT_NPC_BIKKURI_MARK1"
.endobj str_SFX_EVT_NPC_BIKKURI__muj_000116dc

# .rodata:0x2F6 | 0x3A46 | size: 0x2
.obj gap_03_00003A46_rodata, global
.hidden gap_03_00003A46_rodata
	.2byte 0x0000
.endobj gap_03_00003A46_rodata

# .rodata:0x2F8 | 0x3A48 | size: 0xC
.obj str_stg5_dou_36_muj_000116f8, local
	.string "stg5_dou_36"
.endobj str_stg5_dou_36_muj_000116f8

# .rodata:0x304 | 0x3A54 | size: 0x9
.obj str_extparty_muj_00011704, local
	.string "extparty"
.endobj str_extparty_muj_00011704

# .rodata:0x30D | 0x3A5D | size: 0x3
.obj gap_03_00003A5D_rodata, global
.hidden gap_03_00003A5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003A5D_rodata

# .rodata:0x310 | 0x3A60 | size: 0x6
.obj str_jewel_muj_00011710, local
	.string "jewel"
.endobj str_jewel_muj_00011710

# .rodata:0x316 | 0x3A66 | size: 0x2
.obj gap_03_00003A66_rodata, global
.hidden gap_03_00003A66_rodata
	.2byte 0x0000
.endobj gap_03_00003A66_rodata

# .rodata:0x318 | 0x3A68 | size: 0xF
.obj str_stg5_dou_36_01_muj_00011718, local
	.string "stg5_dou_36_01"
.endobj str_stg5_dou_36_01_muj_00011718

# .rodata:0x327 | 0x3A77 | size: 0x1
.obj gap_03_00003A77_rodata, global
.hidden gap_03_00003A77_rodata
	.byte 0x00
.endobj gap_03_00003A77_rodata

# .rodata:0x328 | 0x3A78 | size: 0xF
.obj str_stg5_dou_36_02_muj_00011728, local
	.string "stg5_dou_36_02"
.endobj str_stg5_dou_36_02_muj_00011728

# .rodata:0x337 | 0x3A87 | size: 0x1
.obj gap_03_00003A87_rodata, global
.hidden gap_03_00003A87_rodata
	.byte 0x00
.endobj gap_03_00003A87_rodata

# .rodata:0x338 | 0x3A88 | size: 0xF
.obj str_stg5_dou_36_03_muj_00011738, local
	.string "stg5_dou_36_03"
.endobj str_stg5_dou_36_03_muj_00011738

# .rodata:0x347 | 0x3A97 | size: 0x1
.obj gap_03_00003A97_rodata, global
.hidden gap_03_00003A97_rodata
	.byte 0x00
.endobj gap_03_00003A97_rodata

# .rodata:0x348 | 0x3A98 | size: 0xF
.obj str_stg5_dou_36_04_muj_00011748, local
	.string "stg5_dou_36_04"
.endobj str_stg5_dou_36_04_muj_00011748

# .rodata:0x357 | 0x3AA7 | size: 0x1
.obj gap_03_00003AA7_rodata, global
.hidden gap_03_00003AA7_rodata
	.byte 0x00
.endobj gap_03_00003AA7_rodata

# .rodata:0x358 | 0x3AA8 | size: 0xF
.obj str_stg5_dou_36_05_muj_00011758, local
	.string "stg5_dou_36_05"
.endobj str_stg5_dou_36_05_muj_00011758

# .rodata:0x367 | 0x3AB7 | size: 0x1
.obj gap_03_00003AB7_rodata, global
.hidden gap_03_00003AB7_rodata
	.byte 0x00
.endobj gap_03_00003AB7_rodata

# .rodata:0x368 | 0x3AB8 | size: 0xF
.obj str_stg5_dou_36_06_muj_00011768, local
	.string "stg5_dou_36_06"
.endobj str_stg5_dou_36_06_muj_00011768

# .rodata:0x377 | 0x3AC7 | size: 0x1
.obj gap_03_00003AC7_rodata, global
.hidden gap_03_00003AC7_rodata
	.byte 0x00
.endobj gap_03_00003AC7_rodata

# .rodata:0x378 | 0x3AC8 | size: 0x15
.obj str_SFX_STG5_JUWEL_MOVE1_muj_00011778, local
	.string "SFX_STG5_JUWEL_MOVE1"
.endobj str_SFX_STG5_JUWEL_MOVE1_muj_00011778

# .rodata:0x38D | 0x3ADD | size: 0x3
.obj gap_03_00003ADD_rodata, global
.hidden gap_03_00003ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003ADD_rodata

# .rodata:0x390 | 0x3AE0 | size: 0xC
.obj str_stg5_dou_37_muj_00011790, local
	.string "stg5_dou_37"
.endobj str_stg5_dou_37_muj_00011790

# .rodata:0x39C | 0x3AEC | size: 0xC
.obj str_stg5_dou_38_muj_0001179c, local
	.string "stg5_dou_38"
.endobj str_stg5_dou_38_muj_0001179c

# .rodata:0x3A8 | 0x3AF8 | size: 0x13
.obj str_hagetaka_flush_n64_muj_000117a8, local
	.string "hagetaka_flush_n64"
.endobj str_hagetaka_flush_n64_muj_000117a8

# .rodata:0x3BB | 0x3B0B | size: 0x1
.obj gap_03_00003B0B_rodata, global
.hidden gap_03_00003B0B_rodata
	.byte 0x00
.endobj gap_03_00003B0B_rodata

# .rodata:0x3BC | 0x3B0C | size: 0x14
.obj str_BGM_EVT_STG5_GHOST1_muj_000117bc, local
	.string "BGM_EVT_STG5_GHOST1"
.endobj str_BGM_EVT_STG5_GHOST1_muj_000117bc

# .rodata:0x3D0 | 0x3B20 | size: 0x4
.obj zero_muj_000117d0, local
	.float 0
.endobj zero_muj_000117d0

# .rodata:0x3D4 | 0x3B24 | size: 0x4
.obj float_1_muj_000117d4, local
	.float 1
.endobj float_1_muj_000117d4

# .rodata:0x3D8 | 0x3B28 | size: 0x8
.obj double_to_int_muj_000117d8, local
	.double 4503601774854144
.endobj double_to_int_muj_000117d8

# 0x00018B80..0x0001AEA8 | size: 0x2328
.data
.balign 8

# .data:0x0 | 0x18B80 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x18B88 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x18B8C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x18B90 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x18B94 | size: 0x4
.obj gap_04_00018B94_data, global
.hidden gap_04_00018B94_data
	.4byte 0x00000000
.endobj gap_04_00018B94_data

# .data:0x18 | 0x18B98 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x18BA0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x18BA4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x18BA8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x18BB0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x18BB4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x18BB8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x18BBC | size: 0x4
.obj gap_04_00018BBC_data, global
.hidden gap_04_00018BBC_data
	.4byte 0x00000000
.endobj gap_04_00018BBC_data

# .data:0x40 | 0x18BC0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x18BC8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x18BCC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x18BD0 | size: 0x6C
.obj back_dark, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj back_dark

# .data:0xBC | 0x18C3C | size: 0xD4
.obj door_custom, local
	.4byte 0x0006005B
	.4byte evt_bero_get_info_anime
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24D4A80
	.4byte 0x0001005E
	.4byte 0xFE363C8C
	.4byte 0x0001005B
	.4byte evt_bero_mario_go
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0001005E
	.4byte 0xFE363C89
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_custom

# .data:0x190 | 0x18D10 | size: 0x21C
.obj bero_custom, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000FC
	.4byte 0x0001005C
	.4byte door_custom
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF26
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF1A
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0x00000014
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000101
	.4byte 0x0001005C
	.4byte door_custom
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF26
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF10
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFFE7
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFF24
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFF88
	.4byte 0x00000019
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_custom

# .data:0x3AC | 0x18F2C | size: 0x30
.obj w_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CF1
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_muj_00011408
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_close

# .data:0x3DC | 0x18F5C | size: 0x30
.obj w_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A780F
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_muj_00011408
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_open

# .data:0x40C | 0x18F8C | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_muj_00011410
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_custom
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_11_muj_00011418
	.4byte str_e_bero_muj_00011420
	.4byte 0x00050005
	.4byte w_close
	.4byte w_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x484 | 0x19004 | size: 0x158
.obj korutesu_yure, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_SHIP_SHAKE2_muj_00011434
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A89
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A88
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A87
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A86
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A83
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A82
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_yure

# .data:0x5DC | 0x1915C | size: 0x60
.obj korutesu_flush, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KOR_APPEAR__muj_0001144c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_flush

# .data:0x63C | 0x191BC | size: 0x90
.obj korutesu_flush2, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KOR_APPEAR__muj_0001144c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KOR_APPEAR__muj_0001144c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003E8
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KOR_APPEAR__muj_0001144c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_flush2

# .data:0x6CC | 0x1924C | size: 0x70
.obj korutesu_rotate, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000708
	.4byte 0x00000A8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_rotate

# .data:0x73C | 0x192BC | size: 0xE0
.obj korutesu_small, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000A8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000064
	.4byte 0x00000A8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_small

# .data:0x81C | 0x1939C | size: 0xE0
.obj korutesu_small2, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000A8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000A8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_small2

# .data:0x8FC | 0x1947C | size: 0x70
.obj korutesu_rotate2, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000708
	.4byte 0x00000000
	.4byte 0x00000514
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_rotate2

# .data:0x96C | 0x194EC | size: 0xE0
.obj korutesu_large, local
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFFFFFFE2
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000514
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0x00000514
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_large

# .data:0xA4C | 0x195CC | size: 0xAC
.obj korutesu_blur, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000001
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF35
	.4byte 0x00000048
	.4byte 0x00000167
	.4byte 0x00000000
	.4byte 0x0000005E
	.4byte 0x0000004B
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF51
	.4byte 0x0000004B
	.4byte 0x00000140
	.4byte 0x00000000
	.4byte 0x0000005E
	.4byte 0x0000004B
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_blur

# .data:0xAF8 | 0x19678 | size: 0xD4
.obj starstone_fuwafuwa, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj starstone_fuwafuwa

# .data:0xBCC | 0x1974C | size: 0x9CC
.obj korutesu_event, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_muj_00011468
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000002E
	.4byte 0x00000023
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_コルテス_muj_00011428
	.4byte 0x42000220
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000080
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_muj_0001146c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_00011474
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_VOICE_muj_0001147c
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_21_muj_00011494
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFED4
	.4byte 0x0000003C
	.4byte 0x000001BC
	.4byte 0xFFFFFFE7
	.4byte 0x0000005A
	.4byte 0x00000039
	.4byte 0x000002EE
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_muj_000114a0
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KOR_APPEAR__muj_0001144c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KOR_APPEAR__muj_0001144c
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evtflash
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG5_KORTESS_muj_000114a8
	.4byte 0x0001005C
	.4byte korutesu_flush
	.4byte 0x0001005E
	.4byte korutesu_apper_19_data_F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_22_muj_000114c0
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF51
	.4byte 0x0000004B
	.4byte 0x00000140
	.4byte 0x00000000
	.4byte 0x0000005E
	.4byte 0x0000004B
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_コルテス_muj_00011428
	.4byte str_KRT_S_1_muj_000114cc
	.4byte str_KRT_T_3_muj_000114d4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte korutesu_blur
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000201
	.4byte str_BGM_FF_ENV_SURPRISED_muj_000114dc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_23_muj_000114f4
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_コルテス_muj_00011428
	.4byte str_KRT_S_1_muj_000114cc
	.4byte str_KRT_T_2_muj_00011500
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0001000B
	.4byte 0xFAA2B581
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x0000021E
	.4byte 0xFFFFFFD8
	.4byte 0x00000050
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_24_muj_00011508
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x0000005E
	.4byte 0x00000317
	.4byte 0xFFFFFFD8
	.4byte 0x00000050
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_コルテス_muj_00011428
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_00011474
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB0
	.4byte 0x0000001E
	.4byte 0x00000170
	.4byte 0x0000002C
	.4byte 0x0000005A
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFBF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte korutesu_yure
	.4byte 0x0001005C
	.4byte korutesu_flush2
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_コルテス_muj_00011428
	.4byte str_KRT_S_1_muj_000114cc
	.4byte str_KRT_T_3_muj_000114d4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_25_muj_00011514
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_コルテス_muj_00011428
	.4byte str_KRT_S_1_muj_000114cc
	.4byte str_KRT_T_2_muj_00011500
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_KOR_HEAD_MO_muj_00011520
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00007D00
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000204
	.4byte 0x0003005B
	.4byte evt_snd_bgm_freq
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte korutesu_rotate
	.4byte 0x0001005C
	.4byte korutesu_small
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_26_muj_00011538
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_コルテス_muj_00011428
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_KOR_HEAD_MO_muj_00011544
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000042A
	.4byte 0x0003005B
	.4byte evt_snd_bgm_freq
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte korutesu_rotate2
	.4byte 0x0001005C
	.4byte korutesu_large
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_27_muj_0001155c
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFFFFFFEC
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_00011568
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_28_muj_00011570
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_muj_0001157c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_muj_00011598
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_28a_muj_000115a0
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_muj_000115b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_00011568
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000028
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0x00000028
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x000002BC
	.4byte 0x0000000B
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000056
	.4byte 0x00000033
	.4byte 0x00000070
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_28b_muj_000115cc
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_muj_000115dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_muj_00011598
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_28c_muj_000115f4
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFFFFFFEC
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x000002BC
	.4byte 0x0000000B
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000002E
	.4byte 0x00000023
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_29_muj_00011604
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_stone_muj_00011610
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0002005D
	.4byte starstone_fuwafuwa
	.4byte 0xFE363C89
	.4byte 0x0008005B
	.4byte muj_item_move_3d_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0xFD050F81
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0001005E
	.4byte evt_sub_starstone
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_muj_00011618
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ9_muj_00011628
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_event

# .data:0x1598 | 0x1A118 | size: 0x230
.obj korutesu_event_after, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFBF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000002E
	.4byte 0x00000023
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_コルテス_muj_00011428
	.4byte 0x42000220
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFFFFFFEC
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kabe_r_muj_00011638
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000320
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_t_doa02_muj_00011644
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_t_doa03_muj_00011650
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_30_muj_0001165c
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005F
	.4byte 0xFD050F80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000258
	.4byte 0x0001005E
	.4byte back_dark
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_39_muj_00011668
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_muj_10_muj_00011674
	.4byte zero_muj_0001167c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_event_after

# .data:0x17C8 | 0x1A348 | size: 0x814
.obj kosho_event, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コルテス_muj_00011428
	.4byte 0x0000002E
	.4byte 0x00000023
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_コルテス_muj_00011428
	.4byte 0x42000220
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000080
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000009D
	.4byte 0x00000151
	.4byte 0x00000014
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_STG5_KORTESS_muj_000114a8
	.4byte 0x0001005E
	.4byte korutesu_apper_19_data_F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_31_muj_00011680
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_MARCO_SHAKE_muj_0001168c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000001
	.4byte str_O_1_muj_000116a4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE7
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFFFFFFE7
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_32_muj_000116a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_33_muj_000116b4
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF88
	.4byte 0x0000006B
	.4byte 0x00000151
	.4byte 0xFFFFFF88
	.4byte 0x00000028
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_34_muj_000116c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE7
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFFFFFFE7
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_35_muj_000116cc
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF88
	.4byte 0x0000006B
	.4byte 0x00000151
	.4byte 0xFFFFFF88
	.4byte 0x00000028
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000001
	.4byte str_S_1_muj_000116d8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000002
	.4byte zero_muj_0001167c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_NPC_BIKKURI__muj_000116dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_muj_000116f8
	.4byte 0x00000000
	.4byte str_extparty_muj_00011704
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_jewel_muj_00011710
	.4byte 0x00000047
	.4byte 0xFFFFFF8D
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000009D
	.4byte 0x00000151
	.4byte 0x00000014
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_01_muj_00011718
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE7
	.4byte 0x0000007D
	.4byte 0x000001F9
	.4byte 0xFFFFFFE7
	.4byte 0x00000050
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_02_muj_00011728
	.4byte 0x00000000
	.4byte str_extparty_muj_00011704
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_03_muj_00011738
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF88
	.4byte 0x0000006B
	.4byte 0x00000151
	.4byte 0xFFFFFF88
	.4byte 0x00000028
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_04_muj_00011748
	.4byte 0x00000000
	.4byte str_extparty_muj_00011704
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000009D
	.4byte 0x00000151
	.4byte 0x00000014
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_05_muj_00011758
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF88
	.4byte 0x0000006B
	.4byte 0x00000151
	.4byte 0xFFFFFF88
	.4byte 0x00000028
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_36_06_muj_00011768
	.4byte 0x00000000
	.4byte str_extparty_muj_00011704
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_jewel_muj_00011710
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_JUWEL_MOVE1_muj_00011778
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_jewel_muj_00011710
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B582
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_jewel_muj_00011710
	.4byte 0xFFFFFF8D
	.4byte 0x00000046
	.4byte 0x0000001E
	.4byte 0x000003E8
	.4byte accdec_type
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000009D
	.4byte 0x00000151
	.4byte 0x00000014
	.4byte 0x0000005A
	.4byte 0xFFFFFFFA
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0003005B
	.4byte evt_item_set_alpha
	.4byte str_jewel_muj_00011710
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005D
	.4byte starstone_fuwafuwa
	.4byte 0xFE363C8A
	.4byte 0x0008005B
	.4byte muj_item_move_3d_position
	.4byte str_jewel_muj_00011710
	.4byte 0x00000028
	.4byte 0x00000046
	.4byte 0x0000001E
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0xFD050F81
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_jewel_muj_00011710
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_37_muj_00011790
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011428
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF88
	.4byte 0x0000006B
	.4byte 0x00000151
	.4byte 0xFFFFFF88
	.4byte 0x00000028
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_38_muj_0001179c
	.4byte 0x00000000
	.4byte str_extparty_muj_00011704
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD3
	.4byte 0x000000A0
	.4byte 0x00000216
	.4byte 0xFFFFFFD3
	.4byte 0x00000037
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x0001005E
	.4byte korutesu_vanish_19_data_49C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コルテス_muj_00011428
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000102
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kosho_event

# .data:0x1FDC | 0x1AB5C | size: 0x25C
.obj coin_effect, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C8A
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000008A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000092
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000008F
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000004E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001C
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000093
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000005B
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFC2
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFAE
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFAE
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFBD
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFCE
	.4byte 0x00010024
	.4byte 0x00000008
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF5
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000062
	.4byte 0x00010024
	.4byte 0x00000009
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000085
	.4byte 0x00010024
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000052
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000094
	.4byte 0x00000031
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_muj_0001167c
	.4byte str_hagetaka_flush_n64_muj_000117a8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj coin_effect

# .data:0x2238 | 0x1ADB8 | size: 0xF0
.obj muj_12_init_evt_19_data_1ADB8, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG5_GHOST1_muj_000117bc
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_muj_00011618
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ9_muj_00011628
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FC
	.4byte 0x0001005C
	.4byte korutesu_event
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_stone_muj_00011610
	.4byte 0x00000076
	.4byte 0x0000003F
	.4byte 0x00000026
	.4byte 0x0000008A
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0001005C
	.4byte korutesu_event_after
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000101
	.4byte 0x0001005C
	.4byte kosho_event
	.4byte 0x00000021
	.4byte 0x0002005D
	.4byte coin_effect
	.4byte 0xFD050F80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_12_init_evt_19_data_1ADB8
