.include "macros.inc"
.file "battle_database_tik.o"

# 0x000055D8..0x00005770 | size: 0x198
.text
.balign 4

# .text:0x0 | 0x55D8 | size: 0x198
.fn _wave_offset, local
/* 000055D8 0000569C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000055DC 000056A0  7C 08 02 A6 */	mflr r0
/* 000055E0 000056A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 000055E4 000056A8  BE C1 00 38 */	stmw r22, 0x38(r1)
/* 000055E8 000056AC  7C 76 1B 78 */	mr r22, r3
/* 000055EC 000056B0  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 000055F0 000056B4  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 000055F4 000056B8  4B FF AB 55 */	bl evtGetValue
/* 000055F8 000056BC  83 1D 00 04 */	lwz r24, 0x4(r29)
/* 000055FC 000056C0  7C 7F 1B 78 */	mr r31, r3
/* 00005600 000056C4  7E C3 B3 78 */	mr r3, r22
/* 00005604 000056C8  7F 04 C3 78 */	mr r4, r24
/* 00005608 000056CC  4B FF AB 41 */	bl evtGetValue
/* 0000560C 000056D0  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00005610 000056D4  7C 79 1B 78 */	mr r25, r3
/* 00005614 000056D8  7E C3 B3 78 */	mr r3, r22
/* 00005618 000056DC  4B FF AB 31 */	bl evtGetValue
/* 0000561C 000056E0  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 00005620 000056E4  7C 7A 1B 78 */	mr r26, r3
/* 00005624 000056E8  7E C3 B3 78 */	mr r3, r22
/* 00005628 000056EC  4B FF AB 21 */	bl evtGetValue
/* 0000562C 000056F0  82 FD 00 10 */	lwz r23, 0x10(r29)
/* 00005630 000056F4  7C 7B 1B 78 */	mr r27, r3
/* 00005634 000056F8  7E C3 B3 78 */	mr r3, r22
/* 00005638 000056FC  7E E4 BB 78 */	mr r4, r23
/* 0000563C 00005700  4B FF AB 0D */	bl evtGetValue
/* 00005640 00005704  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 00005644 00005708  7C 7C 1B 78 */	mr r28, r3
/* 00005648 0000570C  7E C3 B3 78 */	mr r3, r22
/* 0000564C 00005710  4B FF AA FD */	bl evtGetValue
/* 00005650 00005714  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 00005654 00005718  7C 7D 1B 78 */	mr r29, r3
/* 00005658 0000571C  7E C3 B3 78 */	mr r3, r22
/* 0000565C 00005720  4B FF AA ED */	bl evtGetValue
/* 00005660 00005724  7C 7E 1B 78 */	mr r30, r3
/* 00005664 00005728  7F E3 FB 78 */	mr r3, r31
/* 00005668 0000572C  4B FF AA E1 */	bl BattleSearchObjectPtr
/* 0000566C 00005730  1C B9 01 68 */	mulli r5, r25, 0x168
/* 00005670 00005734  3C 00 43 30 */	lis r0, 0x4330
/* 00005674 00005738  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005678 0000573C  3C 80 00 00 */	lis r4, double_to_int_tik_0000b7a8@ha
/* 0000567C 00005740  C8 24 00 00 */	lfd f1, double_to_int_tik_0000b7a8@l(r4)
/* 00005680 00005744  7C 7F 1B 78 */	mr r31, r3
/* 00005684 00005748  7C 05 D3 D6 */	divw r0, r5, r26
/* 00005688 0000574C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000568C 00005750  90 01 00 0C */	stw r0, 0xc(r1)
/* 00005690 00005754  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00005694 00005758  EC 20 08 28 */	fsubs f1, f0, f1
/* 00005698 0000575C  4B FF AA B1 */	bl sinfd
/* 0000569C 00005760  1C 1C 01 68 */	mulli r0, r28, 0x168
/* 000056A0 00005764  3C 80 43 30 */	lis r4, 0x4330
/* 000056A4 00005768  6F 65 80 00 */	xoris r5, r27, 0x8000
/* 000056A8 0000576C  90 81 00 10 */	stw r4, 0x10(r1)
/* 000056AC 00005770  3C C0 00 00 */	lis r6, double_to_int_tik_0000b7a8@ha
/* 000056B0 00005774  7C 60 EB D6 */	divw r3, r0, r29
/* 000056B4 00005778  90 A1 00 14 */	stw r5, 0x14(r1)
/* 000056B8 0000577C  C8 66 00 00 */	lfd f3, double_to_int_tik_0000b7a8@l(r6)
/* 000056BC 00005780  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000056C0 00005784  90 81 00 18 */	stw r4, 0x18(r1)
/* 000056C4 00005788  EC 00 18 28 */	fsubs f0, f0, f3
/* 000056C8 0000578C  38 03 01 0E */	addi r0, r3, 0x10e
/* 000056CC 00005790  EC 40 00 72 */	fmuls f2, f0, f1
/* 000056D0 00005794  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000056D4 00005798  90 01 00 1C */	stw r0, 0x1c(r1)
/* 000056D8 0000579C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 000056DC 000057A0  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 000056E0 000057A4  EC 20 18 28 */	fsubs f1, f0, f3
/* 000056E4 000057A8  4B FF AA 65 */	bl sinfd
/* 000056E8 000057AC  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 000056EC 000057B0  3C 00 43 30 */	lis r0, 0x4330
/* 000056F0 000057B4  90 61 00 24 */	stw r3, 0x24(r1)
/* 000056F4 000057B8  3C 80 00 00 */	lis r4, double_to_int_tik_0000b7a8@ha
/* 000056F8 000057BC  38 B9 00 01 */	addi r5, r25, 0x1
/* 000056FC 000057C0  C8 64 00 00 */	lfd f3, double_to_int_tik_0000b7a8@l(r4)
/* 00005700 000057C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 00005704 000057C8  7C 05 D0 00 */	cmpw r5, r26
/* 00005708 000057CC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 0000570C 000057D0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 00005710 000057D4  EC 40 18 28 */	fsubs f2, f0, f3
/* 00005714 000057D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 00005718 000057DC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 0000571C 000057E0  EC 00 18 28 */	fsubs f0, f0, f3
/* 00005720 000057E4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00005724 000057E8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 00005728 000057EC  41 80 00 08 */	blt .L_00005730
/* 0000572C 000057F0  38 A0 00 00 */	li r5, 0x0
.L_00005730:
/* 00005730 000057F4  7E C3 B3 78 */	mr r3, r22
/* 00005734 000057F8  7F 04 C3 78 */	mr r4, r24
/* 00005738 000057FC  4B FF AA 11 */	bl evtSetValue
/* 0000573C 00005800  38 BC 00 01 */	addi r5, r28, 0x1
/* 00005740 00005804  7C 05 E8 00 */	cmpw r5, r29
/* 00005744 00005808  41 80 00 08 */	blt .L_0000574C
/* 00005748 0000580C  38 A0 00 00 */	li r5, 0x0
.L_0000574C:
/* 0000574C 00005810  7E C3 B3 78 */	mr r3, r22
/* 00005750 00005814  7E E4 BB 78 */	mr r4, r23
/* 00005754 00005818  4B FF A9 F5 */	bl evtSetValue
/* 00005758 0000581C  BA C1 00 38 */	lmw r22, 0x38(r1)
/* 0000575C 00005820  38 60 00 02 */	li r3, 0x2
/* 00005760 00005824  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005764 00005828  7C 08 03 A6 */	mtlr r0
/* 00005768 0000582C  38 21 00 60 */	addi r1, r1, 0x60
/* 0000576C 00005830  4E 80 00 20 */	blr
.endfn _wave_offset

# 0x000034F0..0x00003948 | size: 0x458
.rodata
.balign 8

# .rodata:0x0 | 0x34F0 | size: 0x6
.obj str_isi_2_tik_0000b358, local
	.string "isi_2"
.endobj str_isi_2_tik_0000b358

# .rodata:0x6 | 0x34F6 | size: 0x2
.obj gap_03_000034F6_rodata, global
.hidden gap_03_000034F6_rodata
	.2byte 0x0000
.endobj gap_03_000034F6_rodata

# .rodata:0x8 | 0x34F8 | size: 0x6
.obj str_isi_3_tik_0000b360, local
	.string "isi_3"
.endobj str_isi_3_tik_0000b360

# .rodata:0xE | 0x34FE | size: 0x2
.obj gap_03_000034FE_rodata, global
.hidden gap_03_000034FE_rodata
	.2byte 0x0000
.endobj gap_03_000034FE_rodata

# .rodata:0x10 | 0x3500 | size: 0x6
.obj str_isi_4_tik_0000b368, local
	.string "isi_4"
.endobj str_isi_4_tik_0000b368

# .rodata:0x16 | 0x3506 | size: 0x2
.obj gap_03_00003506_rodata, global
.hidden gap_03_00003506_rodata
	.2byte 0x0000
.endobj gap_03_00003506_rodata

# .rodata:0x18 | 0x3508 | size: 0x7
.obj str_nami_0_tik_0000b370, local
	.string "nami_0"
.endobj str_nami_0_tik_0000b370

# .rodata:0x1F | 0x350F | size: 0x1
.obj gap_03_0000350F_rodata, global
.hidden gap_03_0000350F_rodata
	.byte 0x00
.endobj gap_03_0000350F_rodata

# .rodata:0x20 | 0x3510 | size: 0x7
.obj str_nami_1_tik_0000b378, local
	.string "nami_1"
.endobj str_nami_1_tik_0000b378

# .rodata:0x27 | 0x3517 | size: 0x1
.obj gap_03_00003517_rodata, global
.hidden gap_03_00003517_rodata
	.byte 0x00
.endobj gap_03_00003517_rodata

# .rodata:0x28 | 0x3518 | size: 0x7
.obj str_nami_2_tik_0000b380, local
	.string "nami_2"
.endobj str_nami_2_tik_0000b380

# .rodata:0x2F | 0x351F | size: 0x1
.obj gap_03_0000351F_rodata, global
.hidden gap_03_0000351F_rodata
	.byte 0x00
.endobj gap_03_0000351F_rodata

# .rodata:0x30 | 0x3520 | size: 0x7
.obj str_nami_3_tik_0000b388, local
	.string "nami_3"
.endobj str_nami_3_tik_0000b388

# .rodata:0x37 | 0x3527 | size: 0x1
.obj gap_03_00003527_rodata, global
.hidden gap_03_00003527_rodata
	.byte 0x00
.endobj gap_03_00003527_rodata

# .rodata:0x38 | 0x3528 | size: 0x2
.obj str_C_tik_0000b390, local
	.string "C"
.endobj str_C_tik_0000b390

# .rodata:0x3A | 0x352A | size: 0x2
.obj gap_03_0000352A_rodata, global
.hidden gap_03_0000352A_rodata
	.2byte 0x0000
.endobj gap_03_0000352A_rodata

# .rodata:0x3C | 0x352C | size: 0x4
.obj str_B_0_tik_0000b394, local
	.string "B_0"
.endobj str_B_0_tik_0000b394

# .rodata:0x40 | 0x3530 | size: 0x6
.obj str_jon_0_tik_0000b398, local
	.string "jon_0"
.endobj str_jon_0_tik_0000b398

# .rodata:0x46 | 0x3536 | size: 0x2
.obj gap_03_00003536_rodata, global
.hidden gap_03_00003536_rodata
	.2byte 0x0000
.endobj gap_03_00003536_rodata

# .rodata:0x48 | 0x3538 | size: 0x6
.obj str_isi_1_tik_0000b3a0, local
	.string "isi_1"
.endobj str_isi_1_tik_0000b3a0

# .rodata:0x4E | 0x353E | size: 0x2
.obj gap_03_0000353E_rodata, global
.hidden gap_03_0000353E_rodata
	.2byte 0x0000
.endobj gap_03_0000353E_rodata

# .rodata:0x50 | 0x3540 | size: 0x3
.obj str_A1_tik_0000b3a8, local
	.string "A1"
.endobj str_A1_tik_0000b3a8

# .rodata:0x53 | 0x3543 | size: 0x1
.obj gap_03_00003543_rodata, global
.hidden gap_03_00003543_rodata
	.byte 0x00
.endobj gap_03_00003543_rodata

# .rodata:0x54 | 0x3544 | size: 0x7
.obj str_B_mati_tik_0000b3ac, local
	.string "B_mati"
.endobj str_B_mati_tik_0000b3ac

# .rodata:0x5B | 0x354B | size: 0x1
.obj gap_03_0000354B_rodata, global
.hidden gap_03_0000354B_rodata
	.byte 0x00
.endobj gap_03_0000354B_rodata

# .rodata:0x5C | 0x354C | size: 0x7
.obj str_bti_01_tik_0000b3b4, local
	.string "bti_01"
.endobj str_bti_01_tik_0000b3b4

# .rodata:0x63 | 0x3553 | size: 0x1
.obj gap_03_00003553_rodata, global
.hidden gap_03_00003553_rodata
	.byte 0x00
.endobj gap_03_00003553_rodata

# .rodata:0x64 | 0x3554 | size: 0x9
.obj str_stg_00_2_tik_0000b3bc, local
	.string "stg_00_2"
.endobj str_stg_00_2_tik_0000b3bc

# .rodata:0x6D | 0x355D | size: 0x3
.obj gap_03_0000355D_rodata, global
.hidden gap_03_0000355D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000355D_rodata

# .rodata:0x70 | 0x3560 | size: 0x9
.obj str_stg_00_3_tik_0000b3c8, local
	.string "stg_00_3"
.endobj str_stg_00_3_tik_0000b3c8

# .rodata:0x79 | 0x3569 | size: 0x3
.obj gap_03_00003569_rodata, global
.hidden gap_03_00003569_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003569_rodata

# .rodata:0x7C | 0x356C | size: 0x9
.obj str_stg_00_1_tik_0000b3d4, local
	.string "stg_00_1"
.endobj str_stg_00_1_tik_0000b3d4

# .rodata:0x85 | 0x3575 | size: 0x3
.obj gap_03_00003575_rodata, global
.hidden gap_03_00003575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003575_rodata

# .rodata:0x88 | 0x3578 | size: 0xF
.obj str_マップstg_00_1_tik_0000b3e0, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3030
	.byte 0x5F, 0x31, 0x00
.endobj str_マップstg_00_1_tik_0000b3e0

# .rodata:0x97 | 0x3587 | size: 0x1
.obj gap_03_00003587_rodata, global
.hidden gap_03_00003587_rodata
	.byte 0x00
.endobj gap_03_00003587_rodata

# .rodata:0x98 | 0x3588 | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_tik_0000b3f0, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_tik_0000b3f0

# .rodata:0xA9 | 0x3599 | size: 0x3
.obj gap_03_00003599_rodata, global
.hidden gap_03_00003599_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003599_rodata

# .rodata:0xAC | 0x359C | size: 0xF
.obj str_マップstg_00_2_tik_0000b404, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3030
	.byte 0x5F, 0x32, 0x00
.endobj str_マップstg_00_2_tik_0000b404

# .rodata:0xBB | 0x35AB | size: 0x1
.obj gap_03_000035AB_rodata, global
.hidden gap_03_000035AB_rodata
	.byte 0x00
.endobj gap_03_000035AB_rodata

# .rodata:0xBC | 0x35AC | size: 0xF
.obj str_マップstg_00_3_tik_0000b414, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3030
	.byte 0x5F, 0x33, 0x00
.endobj str_マップstg_00_3_tik_0000b414

# .rodata:0xCB | 0x35BB | size: 0x1
.obj gap_03_000035BB_rodata, global
.hidden gap_03_000035BB_rodata
	.byte 0x00
.endobj gap_03_000035BB_rodata

# .rodata:0xCC | 0x35BC | size: 0xE
.obj str_tik12ゲッソー_tik_0000b424, local
	.4byte 0x74696B31
	.4byte 0x32835183
	.4byte 0x62835C81
	.2byte 0x5B00
.endobj str_tik12ゲッソー_tik_0000b424

# .rodata:0xDA | 0x35CA | size: 0x2
.obj gap_03_000035CA_rodata, global
.hidden gap_03_000035CA_rodata
	.2byte 0x0000
.endobj gap_03_000035CA_rodata

# .rodata:0xDC | 0x35CC | size: 0x7
.obj str_tik_02_tik_0000b434, local
	.string "tik_02"
.endobj str_tik_02_tik_0000b434

# .rodata:0xE3 | 0x35D3 | size: 0x1
.obj gap_03_000035D3_rodata, global
.hidden gap_03_000035D3_rodata
	.byte 0x00
.endobj gap_03_000035D3_rodata

# .rodata:0xE4 | 0x35D4 | size: 0x14
.obj str_BGM_CHUBOSS_BATTLE1_tik_0000b43c, local
	.string "BGM_CHUBOSS_BATTLE1"
.endobj str_BGM_CHUBOSS_BATTLE1_tik_0000b43c

# .rodata:0xF8 | 0x35E8 | size: 0x14
.obj str_tik01クリボー３人衆_tik_0000b450, local
	.4byte 0x74696B30
	.4byte 0x31834E83
	.4byte 0x8A837B81
	.4byte 0x5B825290
	.4byte 0x6C8F4F00
.endobj str_tik01クリボー３人衆_tik_0000b450

# .rodata:0x10C | 0x35FC | size: 0x7
.obj str_tik_01_tik_0000b464, local
	.string "tik_01"
.endobj str_tik_01_tik_0000b464

# .rodata:0x113 | 0x3603 | size: 0x1
.obj gap_03_00003603_rodata, global
.hidden gap_03_00003603_rodata
	.byte 0x00
.endobj gap_03_00003603_rodata

# .rodata:0x114 | 0x3604 | size: 0x12
.obj str_tik01トゲクリボー_tik_0000b46c, local
	.4byte 0x74696B30
	.4byte 0x31836783
	.4byte 0x51834E83
	.4byte 0x8A837B81
	.2byte 0x5B00
.endobj str_tik01トゲクリボー_tik_0000b46c

# .rodata:0x126 | 0x3616 | size: 0x2
.obj gap_03_00003616_rodata, global
.hidden gap_03_00003616_rodata
	.2byte 0x0000
.endobj gap_03_00003616_rodata

# .rodata:0x128 | 0x3618 | size: 0x11
.obj str_tik04ヒンニャー1_tik_0000b480, local
	.4byte 0x74696B30
	.4byte 0x34837183
	.4byte 0x93836A83
	.4byte 0x83815B31
	.byte 0x00
.endobj str_tik04ヒンニャー1_tik_0000b480

# .rodata:0x139 | 0x3629 | size: 0x3
.obj gap_03_00003629_rodata, global
.hidden gap_03_00003629_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003629_rodata

# .rodata:0x13C | 0x362C | size: 0x11
.obj str_tik04ヒンニャー2_tik_0000b494, local
	.4byte 0x74696B30
	.4byte 0x34837183
	.4byte 0x93836A83
	.4byte 0x83815B32
	.byte 0x00
.endobj str_tik04ヒンニャー2_tik_0000b494

# .rodata:0x14D | 0x363D | size: 0x3
.obj gap_03_0000363D_rodata, global
.hidden gap_03_0000363D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000363D_rodata

# .rodata:0x150 | 0x3640 | size: 0xE
.obj str_tik04カメック_tik_0000b4a8, local
	.4byte 0x74696B30
	.4byte 0x34834A83
	.4byte 0x81836283
	.2byte 0x4E00
.endobj str_tik04カメック_tik_0000b4a8

# .rodata:0x15E | 0x364E | size: 0x2
.obj gap_03_0000364E_rodata, global
.hidden gap_03_0000364E_rodata
	.2byte 0x0000
.endobj gap_03_0000364E_rodata

# .rodata:0x160 | 0x3650 | size: 0xE
.obj str_tik04トゲノコ_tik_0000b4b8, local
	.4byte 0x74696B30
	.4byte 0x34836783
	.4byte 0x51836D83
	.2byte 0x5200
.endobj str_tik04トゲノコ_tik_0000b4b8

# .rodata:0x16E | 0x365E | size: 0x2
.obj gap_03_0000365E_rodata, global
.hidden gap_03_0000365E_rodata
	.2byte 0x0000
.endobj gap_03_0000365E_rodata

# .rodata:0x170 | 0x3660 | size: 0x11
.obj str_tik07ハンニャー1_tik_0000b4c8, local
	.4byte 0x74696B30
	.4byte 0x37836E83
	.4byte 0x93836A83
	.4byte 0x83815B31
	.byte 0x00
.endobj str_tik07ハンニャー1_tik_0000b4c8

# .rodata:0x181 | 0x3671 | size: 0x3
.obj gap_03_00003671_rodata, global
.hidden gap_03_00003671_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003671_rodata

# .rodata:0x184 | 0x3674 | size: 0x11
.obj str_tik07ハンニャー2_tik_0000b4dc, local
	.4byte 0x74696B30
	.4byte 0x37836E83
	.4byte 0x93836A83
	.4byte 0x83815B32
	.byte 0x00
.endobj str_tik07ハンニャー2_tik_0000b4dc

# .rodata:0x195 | 0x3685 | size: 0x3
.obj gap_03_00003685_rodata, global
.hidden gap_03_00003685_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003685_rodata

# .rodata:0x198 | 0x3688 | size: 0xE
.obj str_tik07トゲノコ_tik_0000b4f0, local
	.4byte 0x74696B30
	.4byte 0x37836783
	.4byte 0x51836D83
	.2byte 0x5200
.endobj str_tik07トゲノコ_tik_0000b4f0

# .rodata:0x1A6 | 0x3696 | size: 0x2
.obj gap_03_00003696_rodata, global
.hidden gap_03_00003696_rodata
	.2byte 0x0000
.endobj gap_03_00003696_rodata

# .rodata:0x1A8 | 0x3698 | size: 0x14
.obj str_tik07ハンマーブロス_tik_0000b500, local
	.4byte 0x74696B30
	.4byte 0x37836E83
	.4byte 0x93837D81
	.4byte 0x5B837583
	.4byte 0x8D835800
.endobj str_tik07ハンマーブロス_tik_0000b500

# .rodata:0x1BC | 0x36AC | size: 0xE
.obj str_tik15クリボー_tik_0000b514, local
	.4byte 0x74696B31
	.4byte 0x35834E83
	.4byte 0x8A837B81
	.2byte 0x5B00
.endobj str_tik15クリボー_tik_0000b514

# .rodata:0x1CA | 0x36BA | size: 0x2
.obj gap_03_000036BA_rodata, global
.hidden gap_03_000036BA_rodata
	.2byte 0x0000
.endobj gap_03_000036BA_rodata

# .rodata:0x1CC | 0x36BC | size: 0x12
.obj str_tik15パタクリボー_tik_0000b524, local
	.4byte 0x74696B31
	.4byte 0x35837083
	.4byte 0x5E834E83
	.4byte 0x8A837B81
	.2byte 0x5B00
.endobj str_tik15パタクリボー_tik_0000b524

# .rodata:0x1DE | 0x36CE | size: 0x2
.obj gap_03_000036CE_rodata, global
.hidden gap_03_000036CE_rodata
	.2byte 0x0000
.endobj gap_03_000036CE_rodata

# .rodata:0x1E0 | 0x36D0 | size: 0x12
.obj str_tik15トゲクリボー_tik_0000b538, local
	.4byte 0x74696B31
	.4byte 0x35836783
	.4byte 0x51834E83
	.4byte 0x8A837B81
	.2byte 0x5B00
.endobj str_tik15トゲクリボー_tik_0000b538

# .rodata:0x1F2 | 0x36E2 | size: 0x2
.obj gap_03_000036E2_rodata, global
.hidden gap_03_000036E2_rodata
	.2byte 0x0000
.endobj gap_03_000036E2_rodata

# .rodata:0x1F4 | 0x36E4 | size: 0x14
.obj str_tik15ハンマーブロス_tik_0000b54c, local
	.4byte 0x74696B31
	.4byte 0x35836E83
	.4byte 0x93837D81
	.4byte 0x5B837583
	.4byte 0x8D835800
.endobj str_tik15ハンマーブロス_tik_0000b54c

# .rodata:0x208 | 0x36F8 | size: 0xE
.obj str_tik15カメック_tik_0000b560, local
	.4byte 0x74696B31
	.4byte 0x35834A83
	.4byte 0x81836283
	.2byte 0x4E00
.endobj str_tik15カメック_tik_0000b560

# .rodata:0x216 | 0x3706 | size: 0x2
.obj gap_03_00003706_rodata, global
.hidden gap_03_00003706_rodata
	.2byte 0x0000
.endobj gap_03_00003706_rodata

# .rodata:0x218 | 0x3708 | size: 0x11
.obj str_tik18ハンニャー1_tik_0000b570, local
	.4byte 0x74696B31
	.4byte 0x38836E83
	.4byte 0x93836A83
	.4byte 0x83815B31
	.byte 0x00
.endobj str_tik18ハンニャー1_tik_0000b570

# .rodata:0x229 | 0x3719 | size: 0x3
.obj gap_03_00003719_rodata, global
.hidden gap_03_00003719_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003719_rodata

# .rodata:0x22C | 0x371C | size: 0x11
.obj str_tik18ハンニャー2_tik_0000b584, local
	.4byte 0x74696B31
	.4byte 0x38836E83
	.4byte 0x93836A83
	.4byte 0x83815B32
	.byte 0x00
.endobj str_tik18ハンニャー2_tik_0000b584

# .rodata:0x23D | 0x372D | size: 0x3
.obj gap_03_0000372D_rodata, global
.hidden gap_03_0000372D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000372D_rodata

# .rodata:0x240 | 0x3730 | size: 0xE
.obj str_tik18カメック_tik_0000b598, local
	.4byte 0x74696B31
	.4byte 0x38834A83
	.4byte 0x81836283
	.2byte 0x4E00
.endobj str_tik18カメック_tik_0000b598

# .rodata:0x24E | 0x373E | size: 0x2
.obj gap_03_0000373E_rodata, global
.hidden gap_03_0000373E_rodata
	.2byte 0x0000
.endobj gap_03_0000373E_rodata

# .rodata:0x250 | 0x3740 | size: 0xE
.obj str_tik18トゲノコ_tik_0000b5a8, local
	.4byte 0x74696B31
	.4byte 0x38836783
	.4byte 0x51836D83
	.2byte 0x5200
.endobj str_tik18トゲノコ_tik_0000b5a8

# .rodata:0x25E | 0x374E | size: 0x2
.obj gap_03_0000374E_rodata, global
.hidden gap_03_0000374E_rodata
	.2byte 0x0000
.endobj gap_03_0000374E_rodata

# .rodata:0x260 | 0x3750 | size: 0x10
.obj str_tik20ハンニャー_tik_0000b5b8, local
	.4byte 0x74696B32
	.4byte 0x30836E83
	.4byte 0x93836A83
	.4byte 0x83815B00
.endobj str_tik20ハンニャー_tik_0000b5b8

# .rodata:0x270 | 0x3760 | size: 0x10
.obj str_tik20ヘンニャー_tik_0000b5c8, local
	.4byte 0x74696B32
	.4byte 0x30837783
	.4byte 0x93836A83
	.4byte 0x83815B00
.endobj str_tik20ヘンニャー_tik_0000b5c8

# .rodata:0x280 | 0x3770 | size: 0x10
.obj str_BTLNO_TIK_TEST1_tik_0000b5d8, local
	.string "BTLNO_TIK_TEST1"
.endobj str_BTLNO_TIK_TEST1_tik_0000b5d8

# .rodata:0x290 | 0x3780 | size: 0x10
.obj str_BTLNO_TIK_TEST2_tik_0000b5e8, local
	.string "BTLNO_TIK_TEST2"
.endobj str_BTLNO_TIK_TEST2_tik_0000b5e8

# .rodata:0x2A0 | 0x3790 | size: 0x10
.obj str_BTLNO_TIK_TEST3_tik_0000b5f8, local
	.string "BTLNO_TIK_TEST3"
.endobj str_BTLNO_TIK_TEST3_tik_0000b5f8

# .rodata:0x2B0 | 0x37A0 | size: 0x10
.obj str_BTLNO_TIK_GESSO_tik_0000b608, local
	.string "BTLNO_TIK_GESSO"
.endobj str_BTLNO_TIK_GESSO_tik_0000b608

# .rodata:0x2C0 | 0x37B0 | size: 0x10
.obj str_BTLNO_TIK_01_01_tik_0000b618, local
	.string "BTLNO_TIK_01_01"
.endobj str_BTLNO_TIK_01_01_tik_0000b618

# .rodata:0x2D0 | 0x37C0 | size: 0x10
.obj str_BTLNO_TIK_01_02_tik_0000b628, local
	.string "BTLNO_TIK_01_02"
.endobj str_BTLNO_TIK_01_02_tik_0000b628

# .rodata:0x2E0 | 0x37D0 | size: 0x10
.obj str_BTLNO_TIK_04_01_tik_0000b638, local
	.string "BTLNO_TIK_04_01"
.endobj str_BTLNO_TIK_04_01_tik_0000b638

# .rodata:0x2F0 | 0x37E0 | size: 0x10
.obj str_BTLNO_TIK_04_02_tik_0000b648, local
	.string "BTLNO_TIK_04_02"
.endobj str_BTLNO_TIK_04_02_tik_0000b648

# .rodata:0x300 | 0x37F0 | size: 0x10
.obj str_BTLNO_TIK_04_03_tik_0000b658, local
	.string "BTLNO_TIK_04_03"
.endobj str_BTLNO_TIK_04_03_tik_0000b658

# .rodata:0x310 | 0x3800 | size: 0x10
.obj str_BTLNO_TIK_04_04_tik_0000b668, local
	.string "BTLNO_TIK_04_04"
.endobj str_BTLNO_TIK_04_04_tik_0000b668

# .rodata:0x320 | 0x3810 | size: 0x10
.obj str_BTLNO_TIK_07_01_tik_0000b678, local
	.string "BTLNO_TIK_07_01"
.endobj str_BTLNO_TIK_07_01_tik_0000b678

# .rodata:0x330 | 0x3820 | size: 0x10
.obj str_BTLNO_TIK_07_02_tik_0000b688, local
	.string "BTLNO_TIK_07_02"
.endobj str_BTLNO_TIK_07_02_tik_0000b688

# .rodata:0x340 | 0x3830 | size: 0x10
.obj str_BTLNO_TIK_07_03_tik_0000b698, local
	.string "BTLNO_TIK_07_03"
.endobj str_BTLNO_TIK_07_03_tik_0000b698

# .rodata:0x350 | 0x3840 | size: 0x10
.obj str_BTLNO_TIK_07_04_tik_0000b6a8, local
	.string "BTLNO_TIK_07_04"
.endobj str_BTLNO_TIK_07_04_tik_0000b6a8

# .rodata:0x360 | 0x3850 | size: 0x10
.obj str_BTLNO_TIK_15_01_tik_0000b6b8, local
	.string "BTLNO_TIK_15_01"
.endobj str_BTLNO_TIK_15_01_tik_0000b6b8

# .rodata:0x370 | 0x3860 | size: 0x10
.obj str_BTLNO_TIK_15_02_tik_0000b6c8, local
	.string "BTLNO_TIK_15_02"
.endobj str_BTLNO_TIK_15_02_tik_0000b6c8

# .rodata:0x380 | 0x3870 | size: 0x10
.obj str_BTLNO_TIK_15_03_tik_0000b6d8, local
	.string "BTLNO_TIK_15_03"
.endobj str_BTLNO_TIK_15_03_tik_0000b6d8

# .rodata:0x390 | 0x3880 | size: 0x10
.obj str_BTLNO_TIK_15_04_tik_0000b6e8, local
	.string "BTLNO_TIK_15_04"
.endobj str_BTLNO_TIK_15_04_tik_0000b6e8

# .rodata:0x3A0 | 0x3890 | size: 0x10
.obj str_BTLNO_TIK_15_05_tik_0000b6f8, local
	.string "BTLNO_TIK_15_05"
.endobj str_BTLNO_TIK_15_05_tik_0000b6f8

# .rodata:0x3B0 | 0x38A0 | size: 0x10
.obj str_BTLNO_TIK_18_01_tik_0000b708, local
	.string "BTLNO_TIK_18_01"
.endobj str_BTLNO_TIK_18_01_tik_0000b708

# .rodata:0x3C0 | 0x38B0 | size: 0x10
.obj str_BTLNO_TIK_18_02_tik_0000b718, local
	.string "BTLNO_TIK_18_02"
.endobj str_BTLNO_TIK_18_02_tik_0000b718

# .rodata:0x3D0 | 0x38C0 | size: 0x10
.obj str_BTLNO_TIK_18_03_tik_0000b728, local
	.string "BTLNO_TIK_18_03"
.endobj str_BTLNO_TIK_18_03_tik_0000b728

# .rodata:0x3E0 | 0x38D0 | size: 0x10
.obj str_BTLNO_TIK_18_04_tik_0000b738, local
	.string "BTLNO_TIK_18_04"
.endobj str_BTLNO_TIK_18_04_tik_0000b738

# .rodata:0x3F0 | 0x38E0 | size: 0x10
.obj str_BTLNO_TIK_20_01_tik_0000b748, local
	.string "BTLNO_TIK_20_01"
.endobj str_BTLNO_TIK_20_01_tik_0000b748

# .rodata:0x400 | 0x38F0 | size: 0x10
.obj str_BTLNO_TIK_20_02_tik_0000b758, local
	.string "BTLNO_TIK_20_02"
.endobj str_BTLNO_TIK_20_02_tik_0000b758

# .rodata:0x410 | 0x3900 | size: 0x10
.obj str_BTLNO_TIK_20_03_tik_0000b768, local
	.string "BTLNO_TIK_20_03"
.endobj str_BTLNO_TIK_20_03_tik_0000b768

# .rodata:0x420 | 0x3910 | size: 0x10
.obj str_BTLNO_TIK_20_04_tik_0000b778, local
	.string "BTLNO_TIK_20_04"
.endobj str_BTLNO_TIK_20_04_tik_0000b778

# .rodata:0x430 | 0x3920 | size: 0x10
.obj str_BTLNO_TIK_20_05_tik_0000b788, local
	.string "BTLNO_TIK_20_05"
.endobj str_BTLNO_TIK_20_05_tik_0000b788

# .rodata:0x440 | 0x3930 | size: 0x10
.obj str_BTLNO_TIK_20_06_tik_0000b798, local
	.string "BTLNO_TIK_20_06"
.endobj str_BTLNO_TIK_20_06_tik_0000b798

# .rodata:0x450 | 0x3940 | size: 0x8
.obj double_to_int_tik_0000b7a8, local
	.double 4503601774854144
.endobj double_to_int_tik_0000b7a8

# 0x00018020..0x0001B2E8 | size: 0x32C8
.data
.balign 8

# .data:0x0 | 0x18020 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x18028 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1802C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x18030 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x18034 | size: 0x4
.obj gap_04_00018034_data, global
.hidden gap_04_00018034_data
	.4byte 0x00000000
.endobj gap_04_00018034_data

# .data:0x18 | 0x18038 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x18040 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x18044 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x18048 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x18050 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x18054 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x18058 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1805C | size: 0x4
.obj gap_04_0001805C_data, global
.hidden gap_04_0001805C_data
	.4byte 0x00000000
.endobj gap_04_0001805C_data

# .data:0x40 | 0x18060 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x18068 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1806C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x18070 | size: 0x1E0
.obj tik_btlobject_data, local
	.4byte str_isi_2_tik_0000b358
	.4byte 0x00020000
	.4byte 0xC3160000
	.4byte 0x00000000
	.4byte 0xC1B80000
	.4byte 0x0A320000
	.4byte str_isi_3_tik_0000b360
	.4byte 0x00020000
	.4byte 0xC2700000
	.4byte 0x00000000
	.4byte 0xC2580000
	.4byte 0x14280000
	.4byte str_isi_4_tik_0000b368
	.4byte 0x00020000
	.4byte 0x43300000
	.4byte 0x00000000
	.4byte 0xC2780000
	.4byte 0x1E1E0000
	.4byte str_nami_0_tik_0000b370
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_1_tik_0000b378
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_2_tik_0000b380
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_3_tik_0000b388
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_tik_0000b390
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_00018130:
	.4byte str_nami_0_tik_0000b370
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_1_tik_0000b378
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_2_tik_0000b380
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_3_tik_0000b388
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_tik_0000b390
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_000181A8:
	.4byte str_B_0_tik_0000b394
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_jon_0_tik_0000b398
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_000181D8:
	.4byte str_isi_1_tik_0000b3a0
	.4byte 0x00020001
	.4byte 0xC34A0000
	.4byte 0x00000000
	.4byte 0xC1880000
	.4byte 0x003C0000
	.4byte str_isi_2_tik_0000b358
	.4byte 0x00020001
	.4byte 0x43480000
	.4byte 0x00000000
	.4byte 0xC1F00000
	.4byte 0x0A320000
	.4byte str_A1_tik_0000b3a8
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2480000
	.4byte 0x003C0000
	.4byte str_B_mati_tik_0000b3ac
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_tik_0000b390
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.endobj tik_btlobject_data

# .data:0x230 | 0x18250 | size: 0x6D0
.obj tik_btlstage_data, local
	.4byte str_bti_01_tik_0000b3b4
	.4byte str_stg_00_2_tik_0000b3bc
	.4byte 0x00000008
	.4byte tik_btlobject_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010101
	.4byte str_bti_01_tik_0000b3b4
	.4byte str_stg_00_2_tik_0000b3bc
	.4byte 0x00000005
	.rel tik_btlobject_data, .L_00018130
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_000185B8:
	.4byte str_bti_01_tik_0000b3b4
	.4byte str_stg_00_3_tik_0000b3c8
	.4byte 0x00000002
	.rel tik_btlobject_data, .L_000181A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_0001876C:
	.4byte str_bti_01_tik_0000b3b4
	.4byte str_stg_00_1_tik_0000b3d4
	.4byte 0x00000005
	.rel tik_btlobject_data, .L_000181D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tik_btlstage_data

# .data:0x900 | 0x18920 | size: 0x30
.obj btlparty_tik_tik_gesso, local
	.4byte unit_boss_gesso_24_data_168B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42F40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_gesso
.endobj btlparty_tik_tik_gesso

# .data:0x930 | 0x18950 | size: 0x20
.obj btlgrp_tik_tik_gesso, local
	.4byte 0x00000001
	.4byte btlparty_tik_tik_gesso
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_gesso

# .data:0xA30 | 0x18A50 | size: 0x60
.obj btlparty_tik_tik_01_02_off_1, local
	.4byte unit_togekuri_24_data_23200
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togekuri
	.4byte unit_togekuri_24_data_23200
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togekuri
.endobj btlparty_tik_tik_01_02_off_1

# .data:0xA90 | 0x18AB0 | size: 0x20
.obj btlgrp_tik_tik_01_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_01_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_01_02_off_1

# .data:0xAB0 | 0x18AD0 | size: 0x30
.obj btlparty_tik_tik_04_01_off_1, local
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_04_01_off_1

# .data:0xAE0 | 0x18B00 | size: 0x20
.obj btlgrp_tik_tik_04_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_tik_tik_04_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_01_off_1

# .data:0xB00 | 0x18B20 | size: 0x30
.obj btlparty_tik_tik_04_01_on_1, local
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_04_01_on_1

# .data:0xB30 | 0x18B50 | size: 0x20
.obj btlgrp_tik_tik_04_01_on_1, local
	.4byte 0x00000001
	.4byte btlparty_tik_tik_04_01_on_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_01_on_1

# .data:0xB50 | 0x18B70 | size: 0x60
.obj btlparty_tik_tik_04_01_on_2, local
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_04_01_on_2

# .data:0xBB0 | 0x18BD0 | size: 0x20
.obj btlgrp_tik_tik_04_01_on_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_01_on_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_01_on_2

# .data:0xBD0 | 0x18BF0 | size: 0x60
.obj btlparty_tik_tik_04_02_off_1, local
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_04_02_off_1

# .data:0xC30 | 0x18C50 | size: 0x20
.obj btlgrp_tik_tik_04_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_02_off_1

# .data:0xC50 | 0x18C70 | size: 0x60
.obj btlparty_tik_tik_04_02_on_1, local
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_04_02_on_1

# .data:0xCB0 | 0x18CD0 | size: 0x20
.obj btlgrp_tik_tik_04_02_on_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_02_on_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_02_on_1

# .data:0xCD0 | 0x18CF0 | size: 0x90
.obj btlparty_tik_tik_04_02_on_2, local
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_04_02_on_2

# .data:0xD60 | 0x18D80 | size: 0x20
.obj btlgrp_tik_tik_04_02_on_2, local
	.4byte 0x00000003
	.4byte btlparty_tik_tik_04_02_on_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_02_on_2

# .data:0xD80 | 0x18DA0 | size: 0x60
.obj btlparty_tik_tik_04_03_off_1, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_patapata_24_data_29648
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_patapata
.endobj btlparty_tik_tik_04_03_off_1

# .data:0xDE0 | 0x18E00 | size: 0x20
.obj btlgrp_tik_tik_04_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_03_off_1

# .data:0xE00 | 0x18E20 | size: 0x60
.obj btlparty_tik_tik_04_03_off_2, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
.endobj btlparty_tik_tik_04_03_off_2

# .data:0xE60 | 0x18E80 | size: 0x20
.obj btlgrp_tik_tik_04_03_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_03_off_2

# .data:0xE80 | 0x18EA0 | size: 0x60
.obj btlparty_tik_tik_04_03_off_3, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
.endobj btlparty_tik_tik_04_03_off_3

# .data:0xEE0 | 0x18F00 | size: 0x20
.obj btlgrp_tik_tik_04_03_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_03_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_03_off_3

# .data:0xF00 | 0x18F20 | size: 0x60
.obj btlparty_tik_tik_04_04_off_1, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_togekuri_24_data_23200
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togekuri
.endobj btlparty_tik_tik_04_04_off_1

# .data:0xF60 | 0x18F80 | size: 0x20
.obj btlgrp_tik_tik_04_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_04_off_1

# .data:0xF80 | 0x18FA0 | size: 0x60
.obj btlparty_tik_tik_04_04_off_2, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
.endobj btlparty_tik_tik_04_04_off_2

# .data:0xFE0 | 0x19000 | size: 0x20
.obj btlgrp_tik_tik_04_04_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_04_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_04_off_2

# .data:0x1000 | 0x19020 | size: 0x60
.obj btlparty_tik_tik_04_04_off_3, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
.endobj btlparty_tik_tik_04_04_off_3

# .data:0x1060 | 0x19080 | size: 0x20
.obj btlgrp_tik_tik_04_04_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_04_04_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_04_04_off_3

# .data:0x1080 | 0x190A0 | size: 0x90
.obj btlparty_tik_tik_07_01_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_07_01_off_1

# .data:0x1110 | 0x19130 | size: 0x20
.obj btlgrp_tik_tik_07_01_off_1, local
	.4byte 0x00000003
	.4byte btlparty_tik_tik_07_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_01_off_1

# .data:0x1130 | 0x19150 | size: 0x60
.obj btlparty_tik_tik_07_01_off_2, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_07_01_off_2

# .data:0x1190 | 0x191B0 | size: 0x20
.obj btlgrp_tik_tik_07_01_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_01_off_2

# .data:0x11B0 | 0x191D0 | size: 0x60
.obj btlparty_tik_tik_07_02_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_07_02_off_1

# .data:0x1210 | 0x19230 | size: 0x20
.obj btlgrp_tik_tik_07_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_02_off_1

# .data:0x1230 | 0x19250 | size: 0x90
.obj btlparty_tik_tik_07_02_off_2, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_07_02_off_2

# .data:0x12C0 | 0x192E0 | size: 0x20
.obj btlgrp_tik_tik_07_02_off_2, local
	.4byte 0x00000003
	.4byte btlparty_tik_tik_07_02_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_02_off_2

# .data:0x12E0 | 0x19300 | size: 0x60
.obj btlparty_tik_tik_07_03_off_1, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_nokonoko_24_data_2DE78
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_nokonoko
.endobj btlparty_tik_tik_07_03_off_1

# .data:0x1340 | 0x19360 | size: 0x20
.obj btlgrp_tik_tik_07_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_03_off_1

# .data:0x1360 | 0x19380 | size: 0x60
.obj btlparty_tik_tik_07_03_off_2, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
.endobj btlparty_tik_tik_07_03_off_2

# .data:0x13C0 | 0x193E0 | size: 0x20
.obj btlgrp_tik_tik_07_03_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_03_off_2

# .data:0x13E0 | 0x19400 | size: 0x60
.obj btlparty_tik_tik_07_03_off_3, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
.endobj btlparty_tik_tik_07_03_off_3

# .data:0x1440 | 0x19460 | size: 0x20
.obj btlgrp_tik_tik_07_03_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_03_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_03_off_3

# .data:0x1460 | 0x19480 | size: 0x60
.obj btlparty_tik_tik_07_04_off_1, local
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_07_04_off_1

# .data:0x14C0 | 0x194E0 | size: 0x20
.obj btlgrp_tik_tik_07_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_04_off_1

# .data:0x14E0 | 0x19500 | size: 0x60
.obj btlparty_tik_tik_07_04_off_2, local
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
.endobj btlparty_tik_tik_07_04_off_2

# .data:0x1540 | 0x19560 | size: 0x20
.obj btlgrp_tik_tik_07_04_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_04_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_04_off_2

# .data:0x1560 | 0x19580 | size: 0x60
.obj btlparty_tik_tik_07_04_off_3, local
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
.endobj btlparty_tik_tik_07_04_off_3

# .data:0x15C0 | 0x195E0 | size: 0x20
.obj btlgrp_tik_tik_07_04_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_07_04_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_tik_tik_07_04_off_3

# .data:0x15E0 | 0x19600 | size: 0x30
.obj btlparty_tik_tik_15_01_off_1, local
	.4byte unit_kuriboo_24_data_1CDA8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kuriboo
.endobj btlparty_tik_tik_15_01_off_1

# .data:0x1610 | 0x19630 | size: 0x20
.obj btlgrp_tik_tik_15_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_tik_tik_15_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_01_off_1

# .data:0x1630 | 0x19650 | size: 0x30
.obj btlparty_tik_tik_15_02_off_1, local
	.4byte unit_patakuri_24_data_21B48
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_patakuri
.endobj btlparty_tik_tik_15_02_off_1

# .data:0x1660 | 0x19680 | size: 0x20
.obj btlgrp_tik_tik_15_02_off_1, local
	.4byte 0x00000001
	.4byte btlparty_tik_tik_15_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_02_off_1

# .data:0x1680 | 0x196A0 | size: 0x30
.obj btlparty_tik_tik_15_03_off_1, local
	.4byte unit_togekuri_24_data_23200
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togekuri
.endobj btlparty_tik_tik_15_03_off_1

# .data:0x16B0 | 0x196D0 | size: 0x20
.obj btlgrp_tik_tik_15_03_off_1, local
	.4byte 0x00000001
	.4byte btlparty_tik_tik_15_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_03_off_1

# .data:0x16D0 | 0x196F0 | size: 0x60
.obj btlparty_tik_tik_15_04_off_1, local
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
	.4byte unit_kuriboo_24_data_1CDA8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kuriboo
.endobj btlparty_tik_tik_15_04_off_1

# .data:0x1730 | 0x19750 | size: 0x20
.obj btlgrp_tik_tik_15_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_15_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_04_off_1

# .data:0x1750 | 0x19770 | size: 0x60
.obj btlparty_tik_tik_15_04_off_2, local
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
.endobj btlparty_tik_tik_15_04_off_2

# .data:0x17B0 | 0x197D0 | size: 0x20
.obj btlgrp_tik_tik_15_04_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_15_04_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_04_off_2

# .data:0x17D0 | 0x197F0 | size: 0x60
.obj btlparty_tik_tik_15_04_off_3, local
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
.endobj btlparty_tik_tik_15_04_off_3

# .data:0x1830 | 0x19850 | size: 0x20
.obj btlgrp_tik_tik_15_04_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_15_04_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_04_off_3

# .data:0x1850 | 0x19870 | size: 0x60
.obj btlparty_tik_tik_15_05_off_1, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_patakuri_24_data_21B48
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_patakuri
.endobj btlparty_tik_tik_15_05_off_1

# .data:0x18B0 | 0x198D0 | size: 0x20
.obj btlgrp_tik_tik_15_05_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_15_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_05_off_1

# .data:0x18D0 | 0x198F0 | size: 0x60
.obj btlparty_tik_tik_15_05_off_2, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
.endobj btlparty_tik_tik_15_05_off_2

# .data:0x1930 | 0x19950 | size: 0x20
.obj btlgrp_tik_tik_15_05_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_15_05_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_05_off_2

# .data:0x1950 | 0x19970 | size: 0x60
.obj btlparty_tik_tik_15_05_off_3, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_hammer_bros_24_data_242A0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hammer_bros
.endobj btlparty_tik_tik_15_05_off_3

# .data:0x19B0 | 0x199D0 | size: 0x20
.obj btlgrp_tik_tik_15_05_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_15_05_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_15_05_off_3

# .data:0x19D0 | 0x199F0 | size: 0x60
.obj btlparty_tik_tik_18_01_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_18_01_off_1

# .data:0x1A30 | 0x19A50 | size: 0x20
.obj btlgrp_tik_tik_18_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_01_off_1

# .data:0x1A50 | 0x19A70 | size: 0x90
.obj btlparty_tik_tik_18_01_off_2, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_18_01_off_2

# .data:0x1AE0 | 0x19B00 | size: 0x20
.obj btlgrp_tik_tik_18_01_off_2, local
	.4byte 0x00000003
	.4byte btlparty_tik_tik_18_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_01_off_2

# .data:0x1B00 | 0x19B20 | size: 0xC0
.obj btlparty_tik_tik_18_02_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_18_02_off_1

# .data:0x1BC0 | 0x19BE0 | size: 0x20
.obj btlgrp_tik_tik_18_02_off_1, local
	.4byte 0x00000004
	.4byte btlparty_tik_tik_18_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_02_off_1

# .data:0x1BE0 | 0x19C00 | size: 0x60
.obj btlparty_tik_tik_18_02_off_2, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hinnya_24_data_20F90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hinnya
.endobj btlparty_tik_tik_18_02_off_2

# .data:0x1C40 | 0x19C60 | size: 0x20
.obj btlgrp_tik_tik_18_02_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_02_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_02_off_2

# .data:0x1C60 | 0x19C80 | size: 0x60
.obj btlparty_tik_tik_18_03_off_1, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_patakuri_24_data_21B48
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_patakuri
.endobj btlparty_tik_tik_18_03_off_1

# .data:0x1CC0 | 0x19CE0 | size: 0x20
.obj btlgrp_tik_tik_18_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_03_off_1

# .data:0x1CE0 | 0x19D00 | size: 0x60
.obj btlparty_tik_tik_18_03_off_2, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
.endobj btlparty_tik_tik_18_03_off_2

# .data:0x1D40 | 0x19D60 | size: 0x20
.obj btlgrp_tik_tik_18_03_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_03_off_2

# .data:0x1D60 | 0x19D80 | size: 0x60
.obj btlparty_tik_tik_18_03_off_3, local
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
.endobj btlparty_tik_tik_18_03_off_3

# .data:0x1DC0 | 0x19DE0 | size: 0x20
.obj btlgrp_tik_tik_18_03_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_03_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default4
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_03_off_3

# .data:0x1DE0 | 0x19E00 | size: 0x60
.obj btlparty_tik_tik_18_04_off_1, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_18_04_off_1

# .data:0x1E40 | 0x19E60 | size: 0x20
.obj btlgrp_tik_tik_18_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_04_off_1

# .data:0x1E60 | 0x19E80 | size: 0x60
.obj btlparty_tik_tik_18_04_off_2, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
.endobj btlparty_tik_tik_18_04_off_2

# .data:0x1EC0 | 0x19EE0 | size: 0x20
.obj btlgrp_tik_tik_18_04_off_2, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_04_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_04_off_2

# .data:0x1EE0 | 0x19F00 | size: 0x60
.obj btlparty_tik_tik_18_04_off_3, local
	.4byte unit_togenoko_24_data_2B928
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_togenoko
	.4byte unit_kamec_24_data_25D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kamec
.endobj btlparty_tik_tik_18_04_off_3

# .data:0x1F40 | 0x19F60 | size: 0x20
.obj btlgrp_tik_tik_18_04_off_3, local
	.4byte 0x00000002
	.4byte btlparty_tik_tik_18_04_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_18_04_off_3

# .data:0x1F60 | 0x19F80 | size: 0xF0
.obj btlparty_tik_tik_20_01_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0xC1A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x432A0000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_20_01_off_1

# .data:0x2050 | 0x1A070 | size: 0x20
.obj btlgrp_tik_tik_20_01_off_1, local
	.4byte 0x00000005
	.4byte btlparty_tik_tik_20_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_20_01_off_1

# .data:0x2070 | 0x1A090 | size: 0xC0
.obj btlparty_tik_tik_20_02_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_20_02_off_1

# .data:0x2130 | 0x1A150 | size: 0x20
.obj btlgrp_tik_tik_20_02_off_1, local
	.4byte 0x00000004
	.4byte btlparty_tik_tik_20_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_20_02_off_1

# .data:0x2150 | 0x1A170 | size: 0x90
.obj btlparty_tik_tik_20_03_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_20_03_off_1

# .data:0x21E0 | 0x1A200 | size: 0x20
.obj btlgrp_tik_tik_20_03_off_1, local
	.4byte 0x00000003
	.4byte btlparty_tik_tik_20_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_20_03_off_1

# .data:0x2200 | 0x1A220 | size: 0xC0
.obj btlparty_tik_tik_20_04_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_20_04_off_1

# .data:0x22C0 | 0x1A2E0 | size: 0x20
.obj btlgrp_tik_tik_20_04_off_1, local
	.4byte 0x00000004
	.4byte btlparty_tik_tik_20_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_20_04_off_1

# .data:0x22E0 | 0x1A300 | size: 0xF0
.obj btlparty_tik_tik_20_05_off_1, local
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0xC1A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x432A0000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_20_05_off_1

# .data:0x23D0 | 0x1A3F0 | size: 0x20
.obj btlgrp_tik_tik_20_05_off_1, local
	.4byte 0x00000005
	.4byte btlparty_tik_tik_20_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_20_05_off_1

# .data:0x23F0 | 0x1A410 | size: 0xF0
.obj btlparty_tik_tik_20_06_off_1, local
	.4byte unit_hennya_24_data_30520
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0xC1A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hennya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
	.4byte unit_hannya_24_data_203D0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x432A0000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_hannya
.endobj btlparty_tik_tik_20_06_off_1

# .data:0x24E0 | 0x1A500 | size: 0x20
.obj btlgrp_tik_tik_20_06_off_1, local
	.4byte 0x00000005
	.4byte btlparty_tik_tik_20_06_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_tik_tik_20_06_off_1

# .data:0x2500 | 0x1A520 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_tik_tik_01_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_test1_off

# .data:0x2518 | 0x1A538 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_test2_off, local
	.4byte 0x00000032
	.4byte btlgrp_tik_tik_01_01_off_1
	.4byte tik_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_test2_off

# .data:0x2530 | 0x1A550 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_test3_off, local
	.4byte 0x00000032
	.4byte btlgrp_tik_tik_01_01_off_1
	.rel tik_btlstage_data, .L_000185B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_test3_off

# .data:0x2548 | 0x1A568 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_gesso_off, local
	.4byte 0x00000032
	.4byte btlgrp_tik_tik_gesso
	.4byte tik_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_gesso_off

# .data:0x2560 | 0x1A580 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_01_01_off, local
	.4byte 0x00000032
	.4byte btlgrp_tik_tik_01_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_01_01_off

# .data:0x2578 | 0x1A598 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_01_02_off, local
	.4byte 0x00000032
	.4byte btlgrp_tik_tik_01_02_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_01_02_off

# .data:0x2590 | 0x1A5B0 | size: 0x24
.obj btlgrpsel_tik_btlno_tik_04_01_on, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_01_on_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_01_on_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_04_01_on

# .data:0x25B4 | 0x1A5D4 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_04_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_04_01_off

# .data:0x25CC | 0x1A5EC | size: 0x24
.obj btlgrpsel_tik_btlno_tik_04_02_on, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_02_on_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_02_on_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_04_02_on

# .data:0x25F0 | 0x1A610 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_04_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_02_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_04_02_off

# .data:0x2608 | 0x1A628 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_04_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_03_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_03_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_03_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_04_03_off

# .data:0x2638 | 0x1A658 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_04_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_04_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_04_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_04_04_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_04_04_off

# .data:0x2668 | 0x1A688 | size: 0x24
.obj btlgrpsel_tik_btlno_tik_07_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_01_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_07_01_off

# .data:0x268C | 0x1A6AC | size: 0x24
.obj btlgrpsel_tik_btlno_tik_07_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_02_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_02_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_07_02_off

# .data:0x26B0 | 0x1A6D0 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_07_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_03_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_03_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_03_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_07_03_off

# .data:0x26E0 | 0x1A700 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_07_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_04_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_04_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_07_04_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_07_04_off

# .data:0x2710 | 0x1A730 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_15_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_15_01_off

# .data:0x2728 | 0x1A748 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_15_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_02_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_15_02_off

# .data:0x2740 | 0x1A760 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_15_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_03_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_15_03_off

# .data:0x2758 | 0x1A778 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_15_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_04_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_04_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_04_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_15_04_off

# .data:0x2788 | 0x1A7A8 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_15_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_05_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_05_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_15_05_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_15_05_off

# .data:0x27B8 | 0x1A7D8 | size: 0x24
.obj btlgrpsel_tik_btlno_tik_18_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_01_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_18_01_off

# .data:0x27DC | 0x1A7FC | size: 0x24
.obj btlgrpsel_tik_btlno_tik_18_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_02_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_02_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_18_02_off

# .data:0x2800 | 0x1A820 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_18_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_03_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_03_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_03_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_18_03_off

# .data:0x2830 | 0x1A850 | size: 0x30
.obj btlgrpsel_tik_btlno_tik_18_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_04_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_04_off_2
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_18_04_off_3
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_18_04_off

# .data:0x2860 | 0x1A880 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_20_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_20_01_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_20_01_off

# .data:0x2878 | 0x1A898 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_20_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_20_02_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_20_02_off

# .data:0x2890 | 0x1A8B0 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_20_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_20_03_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_20_03_off

# .data:0x28A8 | 0x1A8C8 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_20_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_20_04_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_20_04_off

# .data:0x28C0 | 0x1A8E0 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_20_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_20_05_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_20_05_off

# .data:0x28D8 | 0x1A8F8 | size: 0x18
.obj btlgrpsel_tik_btlno_tik_20_06_off, local
	.4byte 0x00000014
	.4byte btlgrp_tik_tik_20_06_off_1
	.rel tik_btlstage_data, .L_0001876C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_tik_btlno_tik_20_06_off

# .data:0x28F0 | 0x1A910 | size: 0x7F8
#BattleSetupData
.obj btlsetup_tik_tbl_24_data_1A910, global
	.4byte str_マップstg_00_1_tik_0000b3e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_test1_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_マップstg_00_2_tik_0000b404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_test2_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_マップstg_00_3_tik_0000b414
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_test3_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik12ゲッソー_tik_0000b424
	.4byte str_tik_02_tik_0000b434
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_gesso_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_CHUBOSS_BATTLE1_tik_0000b43c
	.4byte str_tik01クリボー３人衆_tik_0000b450
	.4byte str_tik_01_tik_0000b464
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_01_01_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik01トゲクリボー_tik_0000b46c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_01_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A0A0000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik04ヒンニャー1_tik_0000b480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF840605E
	.4byte btlgrpsel_tik_btlno_tik_04_01_on
	.4byte btlgrpsel_tik_btlno_tik_04_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik04ヒンニャー2_tik_0000b494
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF840605E
	.4byte btlgrpsel_tik_btlno_tik_04_02_on
	.4byte btlgrpsel_tik_btlno_tik_04_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik04カメック_tik_0000b4a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_04_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik04トゲノコ_tik_0000b4b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_04_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik07ハンニャー1_tik_0000b4c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_07_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x05050505
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x05050505
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik07ハンニャー2_tik_0000b4dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_07_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x05050505
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x05050505
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik07トゲノコ_tik_0000b4f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_07_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik07ハンマーブロス_tik_0000b500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_07_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x0303030A
	.4byte 0x0A030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik15クリボー_tik_0000b514
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_15_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A0A0000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik15パタクリボー_tik_0000b524
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_15_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A0A0000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik15トゲクリボー_tik_0000b538
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_15_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x00000505
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A0A0000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik15ハンマーブロス_tik_0000b54c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_15_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x0303030A
	.4byte 0x0A030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik15カメック_tik_0000b560
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_15_05_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik18ハンニャー1_tik_0000b570
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_18_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x05050505
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x05050505
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik18ハンニャー2_tik_0000b584
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_18_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x00000000
	.4byte 0x05050505
	.4byte 0x00000000
	.4byte 0x05050000
	.4byte 0x05050505
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik18カメック_tik_0000b598
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_18_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik18トゲノコ_tik_0000b5a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_18_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik20ハンニャー_tik_0000b5b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_20_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik20ハンニャー_tik_0000b5b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_20_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik20ハンニャー_tik_0000b5b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_20_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik20ハンニャー_tik_0000b5b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_20_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik20ハンニャー_tik_0000b5b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_20_05_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte str_tik20ヘンニャー_tik_0000b5c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_tik_btlno_tik_20_06_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_tik_0000b3f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_tik_tbl_24_data_1A910

# .data:0x30E8 | 0x1B108 | size: 0xF0
.obj btl_tik_setup_no_tbl_24_data_1B108, global
	.4byte str_BTLNO_TIK_TEST1_tik_0000b5d8
	.4byte 0x00000000
	.4byte str_BTLNO_TIK_TEST2_tik_0000b5e8
	.4byte 0x00000001
	.4byte str_BTLNO_TIK_TEST3_tik_0000b5f8
	.4byte 0x00000002
	.4byte str_BTLNO_TIK_GESSO_tik_0000b608
	.4byte 0x00000003
	.4byte str_BTLNO_TIK_01_01_tik_0000b618
	.4byte 0x00000004
	.4byte str_BTLNO_TIK_01_02_tik_0000b628
	.4byte 0x00000005
	.4byte str_BTLNO_TIK_04_01_tik_0000b638
	.4byte 0x00000006
	.4byte str_BTLNO_TIK_04_02_tik_0000b648
	.4byte 0x00000007
	.4byte str_BTLNO_TIK_04_03_tik_0000b658
	.4byte 0x00000008
	.4byte str_BTLNO_TIK_04_04_tik_0000b668
	.4byte 0x00000009
	.4byte str_BTLNO_TIK_07_01_tik_0000b678
	.4byte 0x0000000A
	.4byte str_BTLNO_TIK_07_02_tik_0000b688
	.4byte 0x0000000B
	.4byte str_BTLNO_TIK_07_03_tik_0000b698
	.4byte 0x0000000C
	.4byte str_BTLNO_TIK_07_04_tik_0000b6a8
	.4byte 0x0000000D
	.4byte str_BTLNO_TIK_15_01_tik_0000b6b8
	.4byte 0x0000000E
	.4byte str_BTLNO_TIK_15_02_tik_0000b6c8
	.4byte 0x0000000F
	.4byte str_BTLNO_TIK_15_03_tik_0000b6d8
	.4byte 0x00000010
	.4byte str_BTLNO_TIK_15_04_tik_0000b6e8
	.4byte 0x00000011
	.4byte str_BTLNO_TIK_15_05_tik_0000b6f8
	.4byte 0x00000012
	.4byte str_BTLNO_TIK_18_01_tik_0000b708
	.4byte 0x00000013
	.4byte str_BTLNO_TIK_18_02_tik_0000b718
	.4byte 0x00000014
	.4byte str_BTLNO_TIK_18_03_tik_0000b728
	.4byte 0x00000015
	.4byte str_BTLNO_TIK_18_04_tik_0000b738
	.4byte 0x00000016
	.4byte str_BTLNO_TIK_20_01_tik_0000b748
	.4byte 0x00000017
	.4byte str_BTLNO_TIK_20_02_tik_0000b758
	.4byte 0x00000018
	.4byte str_BTLNO_TIK_20_03_tik_0000b768
	.4byte 0x00000019
	.4byte str_BTLNO_TIK_20_04_tik_0000b778
	.4byte 0x0000001A
	.4byte str_BTLNO_TIK_20_05_tik_0000b788
	.4byte 0x0000001B
	.4byte str_BTLNO_TIK_20_06_tik_0000b798
	.4byte 0x0000001C
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_tik_setup_no_tbl_24_data_1B108

# .data:0x31D8 | 0x1B1F8 | size: 0xEC
.obj bgset_tik_wave_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_1_tik_0000b378
	.4byte 0xFE363C82
	.4byte 0x00000258
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x000000FA
	.4byte 0x00000006
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_2_tik_0000b380
	.4byte 0xFE363C84
	.4byte 0x0000044C
	.4byte 0x00000028
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00000007
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_3_tik_0000b388
	.4byte 0xFE363C86
	.4byte 0x000004E2
	.4byte 0x00000032
	.4byte 0xFE363C87
	.4byte 0x000001C2
	.4byte 0x00000008
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_tik_wave_event

# .data:0x32C4 | 0x1B2E4 | size: 0x4
.obj gap_04_0001B2E4_data, global
.hidden gap_04_0001B2E4_data
	.4byte 0x00000000
.endobj gap_04_0001B2E4_data
