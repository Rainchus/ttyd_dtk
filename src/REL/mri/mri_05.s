.include "macros.inc"
.file "mri_05.o"

# 0x00003558..0x000037CC | size: 0x274
.text
.balign 4

# .text:0x0 | 0x3558 | size: 0x3C
.fn mario_shabon_init, local
/* 00003558 0000361C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000355C 00003620  7C 08 02 A6 */	mflr r0
/* 00003560 00003624  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003564 00003628  4B FF CC F5 */	bl marioGetPtr
/* 00003568 0000362C  38 80 00 00 */	li r4, 0x0
/* 0000356C 00003630  38 00 00 01 */	li r0, 0x1
/* 00003570 00003634  90 83 01 E8 */	stw r4, 0x1e8(r3)
/* 00003574 00003638  B0 03 00 50 */	sth r0, 0x50(r3)
/* 00003578 0000363C  38 60 00 08 */	li r3, 0x8
/* 0000357C 00003640  4B FF CC DD */	bl marioChgMot
/* 00003580 00003644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003584 00003648  38 60 00 02 */	li r3, 0x2
/* 00003588 0000364C  7C 08 03 A6 */	mtlr r0
/* 0000358C 00003650  38 21 00 10 */	addi r1, r1, 0x10
/* 00003590 00003654  4E 80 00 20 */	blr
.endfn mario_shabon_init

# .text:0x3C | 0x3594 | size: 0xAC
.fn mario_shabon_eff, local
/* 00003594 00003658  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00003598 0000365C  7C 08 02 A6 */	mflr r0
/* 0000359C 00003660  90 01 00 44 */	stw r0, 0x44(r1)
/* 000035A0 00003664  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 000035A4 00003668  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 000035A8 0000366C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 000035AC 00003670  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 000035B0 00003674  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000035B4 00003678  7C 7D 1B 78 */	mr r29, r3
/* 000035B8 0000367C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000035BC 00003680  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000035C0 00003684  4B FF CC 99 */	bl evtGetValue
/* 000035C4 00003688  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000035C8 0000368C  7C 7E 1B 78 */	mr r30, r3
/* 000035CC 00003690  7F A3 EB 78 */	mr r3, r29
/* 000035D0 00003694  4B FF CC 89 */	bl evtGetFloat
/* 000035D4 00003698  FF E0 08 90 */	fmr f31, f1
/* 000035D8 0000369C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000035DC 000036A0  7F A3 EB 78 */	mr r3, r29
/* 000035E0 000036A4  4B FF CC 79 */	bl evtGetFloat
/* 000035E4 000036A8  FF C0 08 90 */	fmr f30, f1
/* 000035E8 000036AC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000035EC 000036B0  7F A3 EB 78 */	mr r3, r29
/* 000035F0 000036B4  4B FF CC 69 */	bl evtGetFloat
/* 000035F4 000036B8  FC 60 08 90 */	fmr f3, f1
/* 000035F8 000036BC  3C 60 00 00 */	lis r3, float_2p5_mri_0002330c@ha
/* 000035FC 000036C0  C0 83 00 00 */	lfs f4, float_2p5_mri_0002330c@l(r3)
/* 00003600 000036C4  FC 20 F8 90 */	fmr f1, f31
/* 00003604 000036C8  FC 40 F0 90 */	fmr f2, f30
/* 00003608 000036CC  7F C3 F3 78 */	mr r3, r30
/* 0000360C 000036D0  4B FF CC 4D */	bl effPuniBalloonEntry
/* 00003610 000036D4  3C 80 00 00 */	lis r4, marioeff@ha
/* 00003614 000036D8  90 64 00 00 */	stw r3, marioeff@l(r4)
/* 00003618 000036DC  38 60 00 02 */	li r3, 0x2
/* 0000361C 000036E0  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00003620 000036E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00003624 000036E8  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 00003628 000036EC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000362C 000036F0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00003630 000036F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00003634 000036F8  7C 08 03 A6 */	mtlr r0
/* 00003638 000036FC  38 21 00 40 */	addi r1, r1, 0x40
/* 0000363C 00003700  4E 80 00 20 */	blr
.endfn mario_shabon_eff

# .text:0xE8 | 0x3640 | size: 0x94
.fn mario_shabon_effpos, local
/* 00003640 00003704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003644 00003708  7C 08 02 A6 */	mflr r0
/* 00003648 0000370C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000364C 00003710  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 00003650 00003714  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 00003654 00003718  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00003658 0000371C  7C 7E 1B 78 */	mr r30, r3
/* 0000365C 00003720  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003660 00003724  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003664 00003728  4B FF CB F5 */	bl evtGetFloat
/* 00003668 0000372C  FF C0 08 90 */	fmr f30, f1
/* 0000366C 00003730  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003670 00003734  7F C3 F3 78 */	mr r3, r30
/* 00003674 00003738  4B FF CB E5 */	bl evtGetFloat
/* 00003678 0000373C  FF E0 08 90 */	fmr f31, f1
/* 0000367C 00003740  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00003680 00003744  7F C3 F3 78 */	mr r3, r30
/* 00003684 00003748  4B FF CB D5 */	bl evtGetFloat
/* 00003688 0000374C  3C 80 00 00 */	lis r4, marioeff@ha
/* 0000368C 00003750  38 60 00 02 */	li r3, 0x2
/* 00003690 00003754  38 A4 00 00 */	addi r5, r4, marioeff@l
/* 00003694 00003758  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00003698 0000375C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 0000369C 00003760  D3 C4 00 04 */	stfs f30, 0x4(r4)
/* 000036A0 00003764  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000036A4 00003768  80 84 00 0C */	lwz r4, 0xc(r4)
/* 000036A8 0000376C  D3 E4 00 08 */	stfs f31, 0x8(r4)
/* 000036AC 00003770  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000036B0 00003774  80 84 00 0C */	lwz r4, 0xc(r4)
/* 000036B4 00003778  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 000036B8 0000377C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 000036BC 00003780  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 000036C0 00003784  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000036C4 00003788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000036C8 0000378C  7C 08 03 A6 */	mtlr r0
/* 000036CC 00003790  38 21 00 20 */	addi r1, r1, 0x20
/* 000036D0 00003794  4E 80 00 20 */	blr
.endfn mario_shabon_effpos

# .text:0x17C | 0x36D4 | size: 0x30
.fn mario_shabon_effdel, local
/* 000036D4 00003798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000036D8 0000379C  7C 08 02 A6 */	mflr r0
/* 000036DC 000037A0  3C 60 00 00 */	lis r3, marioeff@ha
/* 000036E0 000037A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 000036E4 000037A8  38 63 00 00 */	addi r3, r3, marioeff@l
/* 000036E8 000037AC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000036EC 000037B0  4B FF CB 6D */	bl effDelete
/* 000036F0 000037B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000036F4 000037B8  38 60 00 02 */	li r3, 0x2
/* 000036F8 000037BC  7C 08 03 A6 */	mtlr r0
/* 000036FC 000037C0  38 21 00 10 */	addi r1, r1, 0x10
/* 00003700 000037C4  4E 80 00 20 */	blr
.endfn mario_shabon_effdel

# .text:0x1AC | 0x3704 | size: 0xC8
.fn evt_pcharge_pos, local
/* 00003704 000037C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00003708 000037CC  7C 08 02 A6 */	mflr r0
/* 0000370C 000037D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 00003710 000037D4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00003714 000037D8  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00003718 000037DC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 0000371C 000037E0  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00003720 000037E4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00003724 000037E8  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00003728 000037EC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000372C 000037F0  7C 7D 1B 78 */	mr r29, r3
/* 00003730 000037F4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003734 000037F8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003738 000037FC  4B FF CB 21 */	bl evtGetValue
/* 0000373C 00003800  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003740 00003804  7C 7E 1B 78 */	mr r30, r3
/* 00003744 00003808  7F A3 EB 78 */	mr r3, r29
/* 00003748 0000380C  4B FF CB 11 */	bl evtGetFloat
/* 0000374C 00003810  FF C0 08 90 */	fmr f30, f1
/* 00003750 00003814  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00003754 00003818  7F A3 EB 78 */	mr r3, r29
/* 00003758 0000381C  4B FF CB 01 */	bl evtGetFloat
/* 0000375C 00003820  3C 60 00 00 */	lis r3, float_15_mri_0002336c@ha
/* 00003760 00003824  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00003764 00003828  38 A3 00 00 */	addi r5, r3, float_15_mri_0002336c@l
/* 00003768 0000382C  7F A3 EB 78 */	mr r3, r29
/* 0000376C 00003830  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00003770 00003834  EF A0 08 2A */	fadds f29, f0, f1
/* 00003774 00003838  4B FF CA E5 */	bl evtGetFloat
/* 00003778 0000383C  FF E0 08 90 */	fmr f31, f1
/* 0000377C 00003840  7F C3 F3 78 */	mr r3, r30
/* 00003780 00003844  4B FF CA D9 */	bl effNameToPtr
/* 00003784 00003848  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00003788 0000384C  D3 C4 00 04 */	stfs f30, 0x4(r4)
/* 0000378C 00003850  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00003790 00003854  D3 A4 00 08 */	stfs f29, 0x8(r4)
/* 00003794 00003858  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00003798 0000385C  38 60 00 02 */	li r3, 0x2
/* 0000379C 00003860  D3 E4 00 0C */	stfs f31, 0xc(r4)
/* 000037A0 00003864  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 000037A4 00003868  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 000037A8 0000386C  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 000037AC 00003870  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 000037B0 00003874  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 000037B4 00003878  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 000037B8 0000387C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000037BC 00003880  80 01 00 54 */	lwz r0, 0x54(r1)
/* 000037C0 00003884  7C 08 03 A6 */	mtlr r0
/* 000037C4 00003888  38 21 00 50 */	addi r1, r1, 0x50
/* 000037C8 0000388C  4E 80 00 20 */	blr
.endfn evt_pcharge_pos

# 0x00002AA8..0x00002E00 | size: 0x358
.rodata
.balign 8

# .rodata:0x0 | 0x2AA8 | size: 0x3
.obj str_me_mri_00023148, local
	.string "me"
.endobj str_me_mri_00023148

# .rodata:0x3 | 0x2AAB | size: 0x1
.obj gap_03_00002AAB_rodata, global
.hidden gap_03_00002AAB_rodata
	.byte 0x00
.endobj gap_03_00002AAB_rodata

# .rodata:0x4 | 0x2AAC | size: 0x12
.obj str_stg2_mri_re_019_1_mri_0002314c, local
	.string "stg2_mri_re_019_1"
.endobj str_stg2_mri_re_019_1_mri_0002314c

# .rodata:0x16 | 0x2ABE | size: 0x2
.obj gap_03_00002ABE_rodata, global
.hidden gap_03_00002ABE_rodata
	.2byte 0x0000
.endobj gap_03_00002ABE_rodata

# .rodata:0x18 | 0x2AC0 | size: 0x14
.obj str_stg2_mri_re_019_1_1_mri_00023160, local
	.string "stg2_mri_re_019_1_1"
.endobj str_stg2_mri_re_019_1_1_mri_00023160

# .rodata:0x2C | 0x2AD4 | size: 0x10
.obj str_stg2_mri_re_020_mri_00023174, local
	.string "stg2_mri_re_020"
.endobj str_stg2_mri_re_020_mri_00023174

# .rodata:0x3C | 0x2AE4 | size: 0x12
.obj str_stg2_mri_re_020_1_mri_00023184, local
	.string "stg2_mri_re_020_1"
.endobj str_stg2_mri_re_020_1_mri_00023184

# .rodata:0x4E | 0x2AF6 | size: 0x2
.obj gap_03_00002AF6_rodata, global
.hidden gap_03_00002AF6_rodata
	.2byte 0x0000
.endobj gap_03_00002AF6_rodata

# .rodata:0x50 | 0x2AF8 | size: 0x9
.obj str_プニ族４_mri_00023198, local
	.4byte 0x8376836A
	.4byte 0x91B08253
	.byte 0x00
.endobj str_プニ族４_mri_00023198

# .rodata:0x59 | 0x2B01 | size: 0x3
.obj gap_03_00002B01_rodata, global
.hidden gap_03_00002B01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B01_rodata

# .rodata:0x5C | 0x2B04 | size: 0x9
.obj str_プニ族５_mri_000231a4, local
	.4byte 0x8376836A
	.4byte 0x91B08254
	.byte 0x00
.endobj str_プニ族５_mri_000231a4

# .rodata:0x65 | 0x2B0D | size: 0x3
.obj gap_03_00002B0D_rodata, global
.hidden gap_03_00002B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B0D_rodata

# .rodata:0x68 | 0x2B10 | size: 0x6
.obj str_S_doa_mri_000231b0, local
	.string "S_doa"
.endobj str_S_doa_mri_000231b0

# .rodata:0x6E | 0x2B16 | size: 0x2
.obj gap_03_00002B16_rodata, global
.hidden gap_03_00002B16_rodata
	.2byte 0x0000
.endobj gap_03_00002B16_rodata

# .rodata:0x70 | 0x2B18 | size: 0x7
.obj str_w_bero_mri_000231b8, local
	.string "w_bero"
.endobj str_w_bero_mri_000231b8

# .rodata:0x77 | 0x2B1F | size: 0x1
.obj gap_03_00002B1F_rodata, global
.hidden gap_03_00002B1F_rodata
	.byte 0x00
.endobj gap_03_00002B1F_rodata

# .rodata:0x78 | 0x2B20 | size: 0x7
.obj str_mri_01_mri_000231c0, local
	.string "mri_01"
.endobj str_mri_01_mri_000231c0

# .rodata:0x7F | 0x2B27 | size: 0x1
.obj gap_03_00002B27_rodata, global
.hidden gap_03_00002B27_rodata
	.byte 0x00
.endobj gap_03_00002B27_rodata

# .rodata:0x80 | 0x2B28 | size: 0x7
.obj str_e_bero_mri_000231c8, local
	.string "e_bero"
.endobj str_e_bero_mri_000231c8

# .rodata:0x87 | 0x2B2F | size: 0x1
.obj gap_03_00002B2F_rodata, global
.hidden gap_03_00002B2F_rodata
	.byte 0x00
.endobj gap_03_00002B2F_rodata

# .rodata:0x88 | 0x2B30 | size: 0x7
.obj str_dokan1_mri_000231d0, local
	.string "dokan1"
.endobj str_dokan1_mri_000231d0

# .rodata:0x8F | 0x2B37 | size: 0x1
.obj gap_03_00002B37_rodata, global
.hidden gap_03_00002B37_rodata
	.byte 0x00
.endobj gap_03_00002B37_rodata

# .rodata:0x90 | 0x2B38 | size: 0x7
.obj str_dokan2_mri_000231d8, local
	.string "dokan2"
.endobj str_dokan2_mri_000231d8

# .rodata:0x97 | 0x2B3F | size: 0x1
.obj gap_03_00002B3F_rodata, global
.hidden gap_03_00002B3F_rodata
	.byte 0x00
.endobj gap_03_00002B3F_rodata

# .rodata:0x98 | 0x2B40 | size: 0x7
.obj str_dokan3_mri_000231e0, local
	.string "dokan3"
.endobj str_dokan3_mri_000231e0

# .rodata:0x9F | 0x2B47 | size: 0x1
.obj gap_03_00002B47_rodata, global
.hidden gap_03_00002B47_rodata
	.byte 0x00
.endobj gap_03_00002B47_rodata

# .rodata:0xA0 | 0x2B48 | size: 0x7
.obj str_mri_02_mri_000231e8, local
	.string "mri_02"
.endobj str_mri_02_mri_000231e8

# .rodata:0xA7 | 0x2B4F | size: 0x1
.obj gap_03_00002B4F_rodata, global
.hidden gap_03_00002B4F_rodata
	.byte 0x00
.endobj gap_03_00002B4F_rodata

# .rodata:0xA8 | 0x2B50 | size: 0x7
.obj str_dokan4_mri_000231f0, local
	.string "dokan4"
.endobj str_dokan4_mri_000231f0

# .rodata:0xAF | 0x2B57 | size: 0x1
.obj gap_03_00002B57_rodata, global
.hidden gap_03_00002B57_rodata
	.byte 0x00
.endobj gap_03_00002B57_rodata

# .rodata:0xB0 | 0x2B58 | size: 0x7
.obj str_mri_19_mri_000231f8, local
	.string "mri_19"
.endobj str_mri_19_mri_000231f8

# .rodata:0xB7 | 0x2B5F | size: 0x1
.obj gap_03_00002B5F_rodata, global
.hidden gap_03_00002B5F_rodata
	.byte 0x00
.endobj gap_03_00002B5F_rodata

# .rodata:0xB8 | 0x2B60 | size: 0x9
.obj str_doalight_mri_00023200, local
	.string "doalight"
.endobj str_doalight_mri_00023200

# .rodata:0xC1 | 0x2B69 | size: 0x3
.obj gap_03_00002B69_rodata, global
.hidden gap_03_00002B69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B69_rodata

# .rodata:0xC4 | 0x2B6C | size: 0x9
.obj str_S_lights_mri_0002320c, local
	.string "S_lights"
.endobj str_S_lights_mri_0002320c

# .rodata:0xCD | 0x2B75 | size: 0x3
.obj gap_03_00002B75_rodata, global
.hidden gap_03_00002B75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B75_rodata

# .rodata:0xD0 | 0x2B78 | size: 0x15
.obj str_SFX_STG2_DOOR_UNLOCK_mri_00023218, local
	.string "SFX_STG2_DOOR_UNLOCK"
.endobj str_SFX_STG2_DOOR_UNLOCK_mri_00023218

# .rodata:0xE5 | 0x2B8D | size: 0x3
.obj gap_03_00002B8D_rodata, global
.hidden gap_03_00002B8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B8D_rodata

# .rodata:0xE8 | 0x2B90 | size: 0x13
.obj str_SFX_STG2_DOOR_LAMP_mri_00023230, local
	.string "SFX_STG2_DOOR_LAMP"
.endobj str_SFX_STG2_DOOR_LAMP_mri_00023230

# .rodata:0xFB | 0x2BA3 | size: 0x1
.obj gap_03_00002BA3_rodata, global
.hidden gap_03_00002BA3_rodata
	.byte 0x00
.endobj gap_03_00002BA3_rodata

# .rodata:0xFC | 0x2BA4 | size: 0xD
.obj str_item_ueki_04_mri_00023244, local
	.string "item_ueki_04"
.endobj str_item_ueki_04_mri_00023244

# .rodata:0x109 | 0x2BB1 | size: 0x3
.obj gap_03_00002BB1_rodata, global
.hidden gap_03_00002BB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BB1_rodata

# .rodata:0x10C | 0x2BB4 | size: 0x9
.obj str_A_ueki01_mri_00023254, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_00023254

# .rodata:0x115 | 0x2BBD | size: 0x3
.obj gap_03_00002BBD_rodata, global
.hidden gap_03_00002BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BBD_rodata

# .rodata:0x118 | 0x2BC0 | size: 0x9
.obj str_S_ueki01_mri_00023260, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_00023260

# .rodata:0x121 | 0x2BC9 | size: 0x3
.obj gap_03_00002BC9_rodata, global
.hidden gap_03_00002BC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BC9_rodata

# .rodata:0x124 | 0x2BCC | size: 0x9
.obj str_A_ueki02_mri_0002326c, local
	.string "A_ueki02"
.endobj str_A_ueki02_mri_0002326c

# .rodata:0x12D | 0x2BD5 | size: 0x3
.obj gap_03_00002BD5_rodata, global
.hidden gap_03_00002BD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BD5_rodata

# .rodata:0x130 | 0x2BD8 | size: 0x9
.obj str_S_ueki02_mri_00023278, local
	.string "S_ueki02"
.endobj str_S_ueki02_mri_00023278

# .rodata:0x139 | 0x2BE1 | size: 0x3
.obj gap_03_00002BE1_rodata, global
.hidden gap_03_00002BE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BE1_rodata

# .rodata:0x13C | 0x2BE4 | size: 0x9
.obj str_A_ueki03_mri_00023284, local
	.string "A_ueki03"
.endobj str_A_ueki03_mri_00023284

# .rodata:0x145 | 0x2BED | size: 0x3
.obj gap_03_00002BED_rodata, global
.hidden gap_03_00002BED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BED_rodata

# .rodata:0x148 | 0x2BF0 | size: 0x9
.obj str_S_ueki03_mri_00023290, local
	.string "S_ueki03"
.endobj str_S_ueki03_mri_00023290

# .rodata:0x151 | 0x2BF9 | size: 0x3
.obj gap_03_00002BF9_rodata, global
.hidden gap_03_00002BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002BF9_rodata

# .rodata:0x154 | 0x2BFC | size: 0x9
.obj str_A_ueki04_mri_0002329c, local
	.string "A_ueki04"
.endobj str_A_ueki04_mri_0002329c

# .rodata:0x15D | 0x2C05 | size: 0x3
.obj gap_03_00002C05_rodata, global
.hidden gap_03_00002C05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C05_rodata

# .rodata:0x160 | 0x2C08 | size: 0x9
.obj str_S_ueki04_mri_000232a8, local
	.string "S_ueki04"
.endobj str_S_ueki04_mri_000232a8

# .rodata:0x169 | 0x2C11 | size: 0x3
.obj gap_03_00002C11_rodata, global
.hidden gap_03_00002C11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C11_rodata

# .rodata:0x16C | 0x2C14 | size: 0x9
.obj str_A_ueki05_mri_000232b4, local
	.string "A_ueki05"
.endobj str_A_ueki05_mri_000232b4

# .rodata:0x175 | 0x2C1D | size: 0x3
.obj gap_03_00002C1D_rodata, global
.hidden gap_03_00002C1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C1D_rodata

# .rodata:0x178 | 0x2C20 | size: 0x9
.obj str_S_ueki05_mri_000232c0, local
	.string "S_ueki05"
.endobj str_S_ueki05_mri_000232c0

# .rodata:0x181 | 0x2C29 | size: 0x3
.obj gap_03_00002C29_rodata, global
.hidden gap_03_00002C29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C29_rodata

# .rodata:0x184 | 0x2C2C | size: 0x10
.obj str_S_sui_hikari_01_mri_000232cc, local
	.string "S_sui_hikari_01"
.endobj str_S_sui_hikari_01_mri_000232cc

# .rodata:0x194 | 0x2C3C | size: 0xE
.obj str_A_dai_01_soko_mri_000232dc, local
	.string "A_dai_01_soko"
.endobj str_A_dai_01_soko_mri_000232dc

# .rodata:0x1A2 | 0x2C4A | size: 0x2
.obj gap_03_00002C4A_rodata, global
.hidden gap_03_00002C4A_rodata
	.2byte 0x0000
.endobj gap_03_00002C4A_rodata

# .rodata:0x1A4 | 0x2C4C | size: 0x10
.obj str_S_sui_hikari_02_mri_000232ec, local
	.string "S_sui_hikari_02"
.endobj str_S_sui_hikari_02_mri_000232ec

# .rodata:0x1B4 | 0x2C5C | size: 0xE
.obj str_A_dai_02_soko_mri_000232fc, local
	.string "A_dai_02_soko"
.endobj str_A_dai_02_soko_mri_000232fc
	.2byte 0x0000

# .rodata:0x1C4 | 0x2C6C | size: 0x4
.obj float_2p5_mri_0002330c, local
	.float 2.5
.endobj float_2p5_mri_0002330c

# .rodata:0x1C8 | 0x2C70 | size: 0x18
.obj str_SFX_STG2_SOAPBALL_MO_mri_00023310, local
	.string "SFX_STG2_SOAPBALL_MOVE1"
.endobj str_SFX_STG2_SOAPBALL_MO_mri_00023310

# .rodata:0x1E0 | 0x2C88 | size: 0x19
.obj str_SFX_STG2_SOAPBALL_BR_mri_00023328, local
	.string "SFX_STG2_SOAPBALL_BREAK1"
.endobj str_SFX_STG2_SOAPBALL_BR_mri_00023328

# .rodata:0x1F9 | 0x2CA1 | size: 0x3
.obj gap_03_00002CA1_rodata, global
.hidden gap_03_00002CA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CA1_rodata

# .rodata:0x1FC | 0x2CA4 | size: 0xE
.obj str_A_syabon_yuka_mri_00023344, local
	.string "A_syabon_yuka"
.endobj str_A_syabon_yuka_mri_00023344

# .rodata:0x20A | 0x2CB2 | size: 0x2
.obj gap_03_00002CB2_rodata, global
.hidden gap_03_00002CB2_rodata
	.2byte 0x0000
.endobj gap_03_00002CB2_rodata

# .rodata:0x20C | 0x2CB4 | size: 0x6
.obj str_M_N_7_mri_00023354, local
	.string "M_N_7"
.endobj str_M_N_7_mri_00023354

# .rodata:0x212 | 0x2CBA | size: 0x2
.obj gap_03_00002CBA_rodata, global
.hidden gap_03_00002CBA_rodata
	.2byte 0x0000
.endobj gap_03_00002CBA_rodata

# .rodata:0x214 | 0x2CBC | size: 0x6
.obj str_M_F_1_mri_0002335c, local
	.string "M_F_1"
.endobj str_M_F_1_mri_0002335c

# .rodata:0x21A | 0x2CC2 | size: 0x2
.obj gap_03_00002CC2_rodata, global
.hidden gap_03_00002CC2_rodata
	.2byte 0x0000
.endobj gap_03_00002CC2_rodata

# .rodata:0x21C | 0x2CC4 | size: 0x6
.obj str_M_S_1_mri_00023364, local
	.string "M_S_1"
.endobj str_M_S_1_mri_00023364
	.2byte 0x0000

# .rodata:0x224 | 0x2CCC | size: 0x4
.obj float_15_mri_0002336c, local
	.float 15
.endobj float_15_mri_0002336c

# .rodata:0x228 | 0x2CD0 | size: 0xB
.obj str_shabon1eff_mri_00023370, local
	.string "shabon1eff"
.endobj str_shabon1eff_mri_00023370

# .rodata:0x233 | 0x2CDB | size: 0x1
.obj gap_03_00002CDB_rodata, global
.hidden gap_03_00002CDB_rodata
	.byte 0x00
.endobj gap_03_00002CDB_rodata

# .rodata:0x234 | 0x2CDC | size: 0xD
.obj str_puni_balloon_mri_0002337c, local
	.string "puni_balloon"
.endobj str_puni_balloon_mri_0002337c

# .rodata:0x241 | 0x2CE9 | size: 0x3
.obj gap_03_00002CE9_rodata, global
.hidden gap_03_00002CE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CE9_rodata

# .rodata:0x244 | 0x2CEC | size: 0xC
.obj str_shabon1eff_mri_0002338c, local
	.string "_shabon1eff"
.endobj str_shabon1eff_mri_0002338c

# .rodata:0x250 | 0x2CF8 | size: 0xB
.obj str_shabon2eff_mri_00023398, local
	.string "shabon2eff"
.endobj str_shabon2eff_mri_00023398

# .rodata:0x25B | 0x2D03 | size: 0x1
.obj gap_03_00002D03_rodata, global
.hidden gap_03_00002D03_rodata
	.byte 0x00
.endobj gap_03_00002D03_rodata

# .rodata:0x25C | 0x2D04 | size: 0xC
.obj str_shabon2eff_mri_000233a4, local
	.string "_shabon2eff"
.endobj str_shabon2eff_mri_000233a4

# .rodata:0x268 | 0x2D10 | size: 0xB
.obj str_shabon3eff_mri_000233b0, local
	.string "shabon3eff"
.endobj str_shabon3eff_mri_000233b0

# .rodata:0x273 | 0x2D1B | size: 0x1
.obj gap_03_00002D1B_rodata, global
.hidden gap_03_00002D1B_rodata
	.byte 0x00
.endobj gap_03_00002D1B_rodata

# .rodata:0x274 | 0x2D1C | size: 0xC
.obj str_shabon3eff_mri_000233bc, local
	.string "_shabon3eff"
.endobj str_shabon3eff_mri_000233bc

# .rodata:0x280 | 0x2D28 | size: 0x9
.obj str_軍団ザコ_mri_000233c8, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.byte 0x00
.endobj str_軍団ザコ_mri_000233c8

# .rodata:0x289 | 0x2D31 | size: 0x3
.obj gap_03_00002D31_rodata, global
.hidden gap_03_00002D31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D31_rodata

# .rodata:0x28C | 0x2D34 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_000233d4, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_000233d4

# .rodata:0x29C | 0x2D44 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_000233e4, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_000233e4

# .rodata:0x2AA | 0x2D52 | size: 0x2
.obj gap_03_00002D52_rodata, global
.hidden gap_03_00002D52_rodata
	.2byte 0x0000
.endobj gap_03_00002D52_rodata

# .rodata:0x2AC | 0x2D54 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_000233f4, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_000233f4

# .rodata:0x2BA | 0x2D62 | size: 0x2
.obj gap_03_00002D62_rodata, global
.hidden gap_03_00002D62_rodata
	.2byte 0x0000
.endobj gap_03_00002D62_rodata

# .rodata:0x2BC | 0x2D64 | size: 0xE
.obj str_ENV_STG2_MRI6_mri_00023404, local
	.string "ENV_STG2_MRI6"
.endobj str_ENV_STG2_MRI6_mri_00023404

# .rodata:0x2CA | 0x2D72 | size: 0x2
.obj gap_03_00002D72_rodata, global
.hidden gap_03_00002D72_rodata
	.2byte 0x0000
.endobj gap_03_00002D72_rodata

# .rodata:0x2CC | 0x2D74 | size: 0x8
.obj str_mizu_01_mri_00023414, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00023414

# .rodata:0x2D4 | 0x2D7C | size: 0x8
.obj str_mizu_02_mri_0002341c, local
	.string "mizu_02"
.endobj str_mizu_02_mri_0002341c

# .rodata:0x2DC | 0x2D84 | size: 0x7
.obj str_awa_01_mri_00023424, local
	.string "awa_01"
.endobj str_awa_01_mri_00023424

# .rodata:0x2E3 | 0x2D8B | size: 0x1
.obj gap_03_00002D8B_rodata, global
.hidden gap_03_00002D8B_rodata
	.byte 0x00
.endobj gap_03_00002D8B_rodata

# .rodata:0x2E4 | 0x2D8C | size: 0x7
.obj str_awa_02_mri_0002342c, local
	.string "awa_02"
.endobj str_awa_02_mri_0002342c

# .rodata:0x2EB | 0x2D93 | size: 0x1
.obj gap_03_00002D93_rodata, global
.hidden gap_03_00002D93_rodata
	.byte 0x00
.endobj gap_03_00002D93_rodata

# .rodata:0x2EC | 0x2D94 | size: 0xA
.obj str_syabon_01_mri_00023434, local
	.string "syabon_01"
.endobj str_syabon_01_mri_00023434

# .rodata:0x2F6 | 0x2D9E | size: 0x2
.obj gap_03_00002D9E_rodata, global
.hidden gap_03_00002D9E_rodata
	.2byte 0x0000
.endobj gap_03_00002D9E_rodata

# .rodata:0x2F8 | 0x2DA0 | size: 0xA
.obj str_syabon_02_mri_00023440, local
	.string "syabon_02"
.endobj str_syabon_02_mri_00023440

# .rodata:0x302 | 0x2DAA | size: 0x2
.obj gap_03_00002DAA_rodata, global
.hidden gap_03_00002DAA_rodata
	.2byte 0x0000
.endobj gap_03_00002DAA_rodata

# .rodata:0x304 | 0x2DAC | size: 0xB
.obj str_sui_hikari_mri_0002344c, local
	.string "sui_hikari"
.endobj str_sui_hikari_mri_0002344c

# .rodata:0x30F | 0x2DB7 | size: 0x1
.obj gap_03_00002DB7_rodata, global
.hidden gap_03_00002DB7_rodata
	.byte 0x00
.endobj gap_03_00002DB7_rodata

# .rodata:0x310 | 0x2DB8 | size: 0xB
.obj str_punipuni00_mri_00023458, local
	.string "punipuni00"
.endobj str_punipuni00_mri_00023458

# .rodata:0x31B | 0x2DC3 | size: 0x1
.obj gap_03_00002DC3_rodata, global
.hidden gap_03_00002DC3_rodata
	.byte 0x00
.endobj gap_03_00002DC3_rodata

# .rodata:0x31C | 0x2DC4 | size: 0xD
.obj str_A_dai_01_mae_mri_00023464, local
	.string "A_dai_01_mae"
.endobj str_A_dai_01_mae_mri_00023464

# .rodata:0x329 | 0x2DD1 | size: 0x3
.obj gap_03_00002DD1_rodata, global
.hidden gap_03_00002DD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002DD1_rodata

# .rodata:0x32C | 0x2DD4 | size: 0xB
.obj str_punipuni01_mri_00023474, local
	.string "punipuni01"
.endobj str_punipuni01_mri_00023474

# .rodata:0x337 | 0x2DDF | size: 0x1
.obj gap_03_00002DDF_rodata, global
.hidden gap_03_00002DDF_rodata
	.byte 0x00
.endobj gap_03_00002DDF_rodata

# .rodata:0x338 | 0x2DE0 | size: 0xA
.obj str_A_dai_mae_mri_00023480, local
	.string "A_dai_mae"
.endobj str_A_dai_mae_mri_00023480

# .rodata:0x342 | 0x2DEA | size: 0x2
.obj gap_03_00002DEA_rodata, global
.hidden gap_03_00002DEA_rodata
	.2byte 0x0000
.endobj gap_03_00002DEA_rodata

# .rodata:0x344 | 0x2DEC | size: 0x6
.obj str_A_sui_mri_0002348c, local
	.string "A_sui"
.endobj str_A_sui_mri_0002348c

# .rodata:0x34A | 0x2DF2 | size: 0x2
.obj gap_03_00002DF2_rodata, global
.hidden gap_03_00002DF2_rodata
	.2byte 0x0000
.endobj gap_03_00002DF2_rodata

# .rodata:0x34C | 0x2DF4 | size: 0x7
.obj str_pblk00_mri_00023494, local
	.string "pblk00"
.endobj str_pblk00_mri_00023494

# .rodata:0x353 | 0x2DFB | size: 0x5
.obj gap_03_00002DFB_rodata, global
.hidden gap_03_00002DFB_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00002DFB_rodata

# 0x00015ED8..0x000173D0 | size: 0x14F8
.data
.balign 8

# .data:0x0 | 0x15ED8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x15EE0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x15EE4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x15EE8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x15EEC | size: 0x4
.obj gap_04_00015EEC_data, global
.hidden gap_04_00015EEC_data
	.4byte 0x00000000
.endobj gap_04_00015EEC_data

# .data:0x18 | 0x15EF0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x15EF8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x15EFC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x15F00 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x15F08 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x15F0C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x15F10 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x15F14 | size: 0x4
.obj gap_04_00015F14_data, global
.hidden gap_04_00015F14_data
	.4byte 0x00000000
.endobj gap_04_00015F14_data

# .data:0x40 | 0x15F18 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x15F20 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x15F24 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x15F28 | size: 0x44
.obj puni_4_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023148
	.4byte 0xFFFFFF7E
	.4byte 0xFFFFFECB
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_4_init

# .data:0x94 | 0x15F6C | size: 0x50
.obj puni_4_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_019_1_mri_0002314c
	.4byte 0x00000000
	.4byte str_me_mri_00023148
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_019_1_1_mri_00023160
	.4byte 0x00000000
	.4byte str_me_mri_00023148
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_4_talk

# .data:0xE4 | 0x15FBC | size: 0x44
.obj puni_5_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_00023148
	.4byte 0x00000082
	.4byte 0xFFFFFECB
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_5_init

# .data:0x128 | 0x16000 | size: 0x50
.obj puni_5_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_020_mri_00023174
	.4byte 0x00000000
	.4byte str_me_mri_00023148
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_020_1_mri_00023184
	.4byte 0x00000000
	.4byte str_me_mri_00023148
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_5_talk

# .data:0x178 | 0x16050 | size: 0x114
.obj npcEnt, local
	.4byte str_プニ族４_mri_00023198
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte puni_4_init
	.4byte 0x00000000
	.4byte puni_4_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_プニ族５_mri_000231a4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte puni_5_init
	.4byte 0x00000000
	.4byte puni_5_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x28C | 0x16164 | size: 0x28
.obj bero_s_doa_close, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_mri_000231b0
	.4byte 0x0001005C
	.4byte evt_mri_door_close_18_data_3B4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_s_doa_close

# .data:0x2B4 | 0x1618C | size: 0x28
.obj bero_s_doa_open, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_doa_mri_000231b0
	.4byte 0x0001005C
	.4byte evt_mri_door_open_18_data_1DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_s_doa_open

# .data:0x2DC | 0x161B4 | size: 0x168
.obj bero_entry_data, local
	.4byte str_w_bero_mri_000231b8
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_01_mri_000231c0
	.4byte str_e_bero_mri_000231c8
	.4byte 0x00040004
	.4byte bero_s_doa_close
	.4byte bero_s_doa_open
	.4byte str_dokan1_mri_000231d0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_mri_000231d8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_mri_000231d8
	.4byte 0x00020000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan1_mri_000231d0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan3_mri_000231e0
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_mri_02_mri_000231e8
	.4byte str_dokan2_mri_000231d8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan4_mri_000231f0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_mri_19_mri_000231f8
	.4byte str_dokan1_mri_000231d0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x444 | 0x1631C | size: 0x44
.obj door_switch_init, local
	.4byte 0x00020018
	.4byte 0xF8406699
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_mri_000231b8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight_mri_00023200
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_switch_init

# .data:0x488 | 0x16360 | size: 0xEC
.obj door_switch, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_lights_mri_0002320c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_UNLOCK_mri_00023218
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_LAMP_mri_00023230
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406699
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406699
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_mri_000231b8
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight_mri_00023200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF8406699
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_w_bero_mri_000231b8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_doalight_mri_00023200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_pauseanim
	.4byte 0x00000000
	.4byte str_doalight_mri_00023200
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_switch

# .data:0x574 | 0x1644C | size: 0x50
.obj evt_ueki_04, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_ueki_04_mri_00023244
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_ueki_04_mri_00023244
	.4byte 0x00000081
	.4byte 0x000000E1
	.4byte 0xFFFFFECB
	.4byte 0xFFFFFFD8
	.4byte 0x00000004
	.4byte 0xF840669C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ueki_04

# .data:0x5C4 | 0x1649C | size: 0x60
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_00023254
	.4byte str_S_ueki01_mri_00023260
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki02_mri_0002326c
	.4byte str_S_ueki02_mri_00023278
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki03_mri_00023284
	.4byte str_S_ueki03_mri_00023290
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki04_mri_0002329c
	.4byte str_S_ueki04_mri_000232a8
	.4byte evt_ueki_04
	.4byte 0x00000001
	.4byte str_A_ueki05_mri_000232b4
	.4byte str_S_ueki05_mri_000232c0
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x624 | 0x164FC | size: 0xA4
.obj punipuni_ball00_init, local
	.4byte 0x0001005E
	.4byte mri_punipuni_setup_18_data_790
	.4byte 0x00020018
	.4byte 0xF840669A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFFDB
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_01_mri_000232cc
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF75
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_target_set_soko_18_text_1ACF0
	.4byte 0xFE363C8B
	.4byte str_A_dai_01_soko_mri_000232dc
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00_init

# .data:0x6C8 | 0x165A0 | size: 0xCC
.obj punipuni_ball00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840669A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemselect_18_data_7D0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840669A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFFDB
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sui_hikari_01_mri_000232cc
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemset_18_data_870
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF840669A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_01_mri_000232cc
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemremove_18_data_900
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball00

# .data:0x794 | 0x1666C | size: 0xA4
.obj punipuni_ball01_init, local
	.4byte 0x0001005E
	.4byte mri_punipuni_setup_18_data_790
	.4byte 0x00020018
	.4byte 0xF840669B
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFFDB
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_02_mri_000232ec
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_target_set_position_18_text_1AC14
	.4byte 0xFE363C8B
	.4byte 0x00000096
	.4byte 0xFFFFFF75
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_target_set_soko_18_text_1ACF0
	.4byte 0xFE363C8B
	.4byte str_A_dai_02_soko_mri_000232fc
	.4byte 0x0004005B
	.4byte evt_target_flag_onoff_18_text_1AB84
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball01_init

# .data:0x838 | 0x16710 | size: 0xCC
.obj punipuni_ball01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840669B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_punipuni_itemselect_18_data_7D0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840669B
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte 0xFE363C8A
	.4byte 0x00000096
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFFDB
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_sui_hikari_02_mri_000232ec
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemset_18_data_870
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF840669B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_sui_hikari_02_mri_000232ec
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte mri_punipuni_itemremove_18_data_900
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj punipuni_ball01

# .data:0x904 | 0x167DC | size: 0x38
.obj mario_shabon_move_sound, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SOAPBALL_MO_mri_00023310
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_shabon_move_sound

# .data:0x93C | 0x16814 | size: 0x24
.obj mario_shabon_break_sound, local
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_SOAPBALL_BR_mri_00023328
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_shabon_break_sound

# .data:0x960 | 0x16838 | size: 0x3EC
.obj mario_shabon_check, local
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_A_syabon_yuka_mri_00023344
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_state
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte mario_shabon_init
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFFFFFFE2
	.4byte 0x0005005B
	.4byte mario_shabon_eff
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002005D
	.4byte mario_shabon_move_sound
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte mario_shabon_effpos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_mri_00023354
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte mario_shabon_effpos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte mario_shabon_effdel
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte mario_shabon_eff
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001005C
	.4byte mario_shabon_break_sound
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_F_1_mri_0002335c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_mri_00023364
	.4byte 0x0002005B
	.4byte evt_mario_set_motion
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte mario_shabon_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_shabon_check

# .data:0xD4C | 0x16C24 | size: 0x4E0
.obj evt_shabon_s, local
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000002BC
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000003C
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFB0
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000037
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_shabon1eff_mri_00023370
	.4byte str_puni_balloon_mri_0002337c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFFFFFEC1
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
	.4byte evt_sub_random
	.4byte 0x00000118
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFFFFFFBB
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFEC1
	.4byte 0xFE363C84
	.4byte 0x000019C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_pcharge_pos
	.4byte str_shabon1eff_mri_00023370
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_shabon1eff_mri_00023370
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_shabon1eff_mri_0002338c
	.4byte str_puni_balloon_mri_0002337c
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24A7BD1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000002BC
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000005DC
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFCE
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_shabon2eff_mri_00023398
	.4byte str_puni_balloon_mri_0002337c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFFFFFEC1
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
	.4byte evt_sub_random
	.4byte 0x00000118
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFFFFFFBB
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFEC1
	.4byte 0xFE363C84
	.4byte 0x00001D4C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_pcharge_pos
	.4byte str_shabon2eff_mri_00023398
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_shabon2eff_mri_00023398
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_shabon2eff_mri_000233a4
	.4byte str_puni_balloon_mri_0002337c
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24A7BD1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003B6
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003E8
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000A0
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x0000003C
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_shabon3eff_mri_000233b0
	.4byte str_puni_balloon_mri_0002337c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFFFFFEC1
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
	.4byte evt_sub_random
	.4byte 0x00000118
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFFFFFFBB
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFEC1
	.4byte 0xFE363C84
	.4byte 0x00001C20
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_pcharge_pos
	.4byte str_shabon3eff_mri_000233b0
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_shabon3eff_mri_000233b0
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0x00000028
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_shabon3eff_mri_000233bc
	.4byte str_puni_balloon_mri_0002337c
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24A7BD1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_shabon_s

# .data:0x122C | 0x17104 | size: 0x2C8
.obj mri_05_init_evt_18_data_17104, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000005
	.4byte 0xFFFFFF75
	.4byte 0xFFFFFECB
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0x00000000
	.4byte 0xFFFFFF75
	.4byte 0x00000000
	.4byte 0xFFFFFF77
	.4byte 0xFFFFFF73
	.4byte 0xFFFFFECF
	.4byte 0xFFFFFEC0
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x0002001B
	.4byte 0xF5DE0180
	.4byte 0x00000071
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコ_mri_000233c8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_000233d4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_000233e4
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_000233f4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI6_mri_00023404
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00023414
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_0002341c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00023424
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_0002342c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_syabon_01_mri_00023434
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_syabon_02_mri_00023440
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sui_hikari_mri_0002344c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_shabon_s
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_punipuni00_mri_00023458
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte punipuni_ball00_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dai_01_mae_mri_00023464
	.4byte 0x00000000
	.4byte punipuni_ball00
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_punipuni01_mri_00023474
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte punipuni_ball01_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dai_mae_mri_00023480
	.4byte 0x00000000
	.4byte punipuni_ball01
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte door_switch_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_sui_mri_0002348c
	.4byte 0x00000000
	.4byte door_switch
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_mri_00023494
	.4byte 0x000000FA
	.4byte 0xFFFFFF06
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xF8407126
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte mario_shabon_check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_05_init_evt_18_data_17104

# .data:0x14F4 | 0x173CC | size: 0x4
.obj gap_04_000173CC_data, global
.hidden gap_04_000173CC_data
	.4byte 0x00000000
.endobj gap_04_000173CC_data

# 0x00000028..0x00000030 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x28 | size: 0x4
.obj marioeff, local
	.skip 0x4
.endobj marioeff

# .bss:0x4 | 0x2C | size: 0x4
.obj gap_05_0000002C_bss, global
.hidden gap_05_0000002C_bss
	.skip 0x4
.endobj gap_05_0000002C_bss
