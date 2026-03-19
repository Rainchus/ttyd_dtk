.include "macros.inc"
.file "battle_database_moo.o"

# 0x00000604..0x000006D0 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x604 | size: 0xCC
.fn _space_rotate, local
/* 00000604 000006C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000608 000006CC  7C 08 02 A6 */	mflr r0
/* 0000060C 000006D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000610 000006D4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 00000614 000006D8  7C 7B 1B 78 */	mr r27, r3
/* 00000618 000006DC  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000061C 000006E0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000620 000006E4  4B FF FE 8D */	bl evtGetValue
/* 00000624 000006E8  83 9E 00 04 */	lwz r28, 0x4(r30)
/* 00000628 000006EC  7C 7D 1B 78 */	mr r29, r3
/* 0000062C 000006F0  7F 63 DB 78 */	mr r3, r27
/* 00000630 000006F4  7F 84 E3 78 */	mr r4, r28
/* 00000634 000006F8  4B FF FE 79 */	bl evtGetValue
/* 00000638 000006FC  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 0000063C 00000700  7C 7E 1B 78 */	mr r30, r3
/* 00000640 00000704  7F 63 DB 78 */	mr r3, r27
/* 00000644 00000708  4B FF FE 69 */	bl evtGetValue
/* 00000648 0000070C  7C 7F 1B 78 */	mr r31, r3
/* 0000064C 00000710  7F A3 EB 78 */	mr r3, r29
/* 00000650 00000714  4B FF FE 5D */	bl BattleSearchObjectPtr
/* 00000654 00000718  3C 80 43 30 */	lis r4, 0x4330
/* 00000658 0000071C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 0000065C 00000720  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000660 00000724  3C A0 00 00 */	lis r5, double_to_int_moo_000038a8@ha
/* 00000664 00000728  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 00000668 0000072C  C8 45 00 00 */	lfd f2, double_to_int_moo_000038a8@l(r5)
/* 0000066C 00000730  90 81 00 08 */	stw r4, 0x8(r1)
/* 00000670 00000734  3C C0 00 00 */	lis r6, float_360_moo_000038a0@ha
/* 00000674 00000738  38 BE 00 01 */	addi r5, r30, 0x1
/* 00000678 0000073C  C0 66 00 00 */	lfs f3, float_360_moo_000038a0@l(r6)
/* 0000067C 00000740  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00000680 00000744  7C 05 F8 00 */	cmpw r5, r31
/* 00000684 00000748  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000688 0000074C  EC 20 10 28 */	fsubs f1, f0, f2
/* 0000068C 00000750  90 81 00 10 */	stw r4, 0x10(r1)
/* 00000690 00000754  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00000694 00000758  EC 23 00 72 */	fmuls f1, f3, f1
/* 00000698 0000075C  EC 00 10 28 */	fsubs f0, f0, f2
/* 0000069C 00000760  EC 01 00 24 */	fdivs f0, f1, f0
/* 000006A0 00000764  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 000006A4 00000768  41 80 00 08 */	blt .L_000006AC
/* 000006A8 0000076C  38 A0 00 00 */	li r5, 0x0
.L_000006AC:
/* 000006AC 00000770  7F 63 DB 78 */	mr r3, r27
/* 000006B0 00000774  7F 84 E3 78 */	mr r4, r28
/* 000006B4 00000778  4B FF FD F9 */	bl evtSetValue
/* 000006B8 0000077C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 000006BC 00000780  38 60 00 02 */	li r3, 0x2
/* 000006C0 00000784  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000006C4 00000788  7C 08 03 A6 */	mtlr r0
/* 000006C8 0000078C  38 21 00 30 */	addi r1, r1, 0x30
/* 000006CC 00000790  4E 80 00 20 */	blr
.endfn _space_rotate

# 0x00000670..0x00000820 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x670 | size: 0x2
.obj str_B_moo_00003700, local
	.string "B"
.endobj str_B_moo_00003700

# .rodata:0x2 | 0x672 | size: 0x2
.obj gap_03_00000672_rodata, global
.hidden gap_03_00000672_rodata
	.2byte 0x0000
.endobj gap_03_00000672_rodata

# .rodata:0x4 | 0x674 | size: 0x6
.obj str_space_moo_00003704, local
	.string "space"
.endobj str_space_moo_00003704

# .rodata:0xA | 0x67A | size: 0x2
.obj gap_03_0000067A_rodata, global
.hidden gap_03_0000067A_rodata
	.2byte 0x0000
.endobj gap_03_0000067A_rodata

# .rodata:0xC | 0x67C | size: 0x8
.obj str_star_01_moo_0000370c, local
	.string "star_01"
.endobj str_star_01_moo_0000370c

# .rodata:0x14 | 0x684 | size: 0x8
.obj str_star_02_moo_00003714, local
	.string "star_02"
.endobj str_star_02_moo_00003714

# .rodata:0x1C | 0x68C | size: 0x8
.obj str_star_03_moo_0000371c, local
	.string "star_03"
.endobj str_star_03_moo_0000371c

# .rodata:0x24 | 0x694 | size: 0x7
.obj str_bti_01_moo_00003724, local
	.string "bti_01"
.endobj str_bti_01_moo_00003724

# .rodata:0x2B | 0x69B | size: 0x1
.obj gap_03_0000069B_rodata, global
.hidden gap_03_0000069B_rodata
	.byte 0x00
.endobj gap_03_0000069B_rodata

# .rodata:0x2C | 0x69C | size: 0x9
.obj str_stg_07_4_moo_0000372c, local
	.string "stg_07_4"
.endobj str_stg_07_4_moo_0000372c

# .rodata:0x35 | 0x6A5 | size: 0x3
.obj gap_03_000006A5_rodata, global
.hidden gap_03_000006A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006A5_rodata

# .rodata:0x38 | 0x6A8 | size: 0xF
.obj str_マップstg_07_4_moo_00003738, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x34, 0x00
.endobj str_マップstg_07_4_moo_00003738

# .rodata:0x47 | 0x6B7 | size: 0x1
.obj gap_03_000006B7_rodata, global
.hidden gap_03_000006B7_rodata
	.byte 0x00
.endobj gap_03_000006B7_rodata

# .rodata:0x48 | 0x6B8 | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_moo_00003748, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_moo_00003748

# .rodata:0x59 | 0x6C9 | size: 0x3
.obj gap_03_000006C9_rodata, global
.hidden gap_03_000006C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006C9_rodata

# .rodata:0x5C | 0x6CC | size: 0x10
.obj str_moo01シンエモン_moo_0000375c, local
	.4byte 0x6D6F6F30
	.4byte 0x31835683
	.4byte 0x93834783
	.4byte 0x82839300
.endobj str_moo01シンエモン_moo_0000375c

# .rodata:0x6C | 0x6DC | size: 0x11
.obj str_moo02バリアーンZ_moo_0000376c, local
	.4byte 0x6D6F6F30
	.4byte 0x32836F83
	.4byte 0x8A834181
	.4byte 0x5B83935A
	.byte 0x00
.endobj str_moo02バリアーンZ_moo_0000376c

# .rodata:0x7D | 0x6ED | size: 0x3
.obj gap_03_000006ED_rodata, global
.hidden gap_03_000006ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006ED_rodata

# .rodata:0x80 | 0x6F0 | size: 0x10
.obj str_moo02シンエモン_moo_00003780, local
	.4byte 0x6D6F6F30
	.4byte 0x32835683
	.4byte 0x93834783
	.4byte 0x82839300
.endobj str_moo02シンエモン_moo_00003780

# .rodata:0x90 | 0x700 | size: 0x10
.obj str_moo05シンエモン_moo_00003790, local
	.4byte 0x6D6F6F30
	.4byte 0x35835683
	.4byte 0x93834783
	.4byte 0x82839300
.endobj str_moo05シンエモン_moo_00003790

# .rodata:0xA0 | 0x710 | size: 0x10
.obj str_BTLNO_MOO_TEST1_moo_000037a0, local
	.string "BTLNO_MOO_TEST1"
.endobj str_BTLNO_MOO_TEST1_moo_000037a0

# .rodata:0xB0 | 0x720 | size: 0x10
.obj str_BTLNO_MOO_01_01_moo_000037b0, local
	.string "BTLNO_MOO_01_01"
.endobj str_BTLNO_MOO_01_01_moo_000037b0

# .rodata:0xC0 | 0x730 | size: 0x10
.obj str_BTLNO_MOO_01_02_moo_000037c0, local
	.string "BTLNO_MOO_01_02"
.endobj str_BTLNO_MOO_01_02_moo_000037c0

# .rodata:0xD0 | 0x740 | size: 0x10
.obj str_BTLNO_MOO_01_03_moo_000037d0, local
	.string "BTLNO_MOO_01_03"
.endobj str_BTLNO_MOO_01_03_moo_000037d0

# .rodata:0xE0 | 0x750 | size: 0x10
.obj str_BTLNO_MOO_01_04_moo_000037e0, local
	.string "BTLNO_MOO_01_04"
.endobj str_BTLNO_MOO_01_04_moo_000037e0

# .rodata:0xF0 | 0x760 | size: 0x10
.obj str_BTLNO_MOO_01_05_moo_000037f0, local
	.string "BTLNO_MOO_01_05"
.endobj str_BTLNO_MOO_01_05_moo_000037f0

# .rodata:0x100 | 0x770 | size: 0x10
.obj str_BTLNO_MOO_02_01_moo_00003800, local
	.string "BTLNO_MOO_02_01"
.endobj str_BTLNO_MOO_02_01_moo_00003800

# .rodata:0x110 | 0x780 | size: 0x10
.obj str_BTLNO_MOO_02_02_moo_00003810, local
	.string "BTLNO_MOO_02_02"
.endobj str_BTLNO_MOO_02_02_moo_00003810

# .rodata:0x120 | 0x790 | size: 0x10
.obj str_BTLNO_MOO_02_03_moo_00003820, local
	.string "BTLNO_MOO_02_03"
.endobj str_BTLNO_MOO_02_03_moo_00003820

# .rodata:0x130 | 0x7A0 | size: 0x10
.obj str_BTLNO_MOO_02_04_moo_00003830, local
	.string "BTLNO_MOO_02_04"
.endobj str_BTLNO_MOO_02_04_moo_00003830

# .rodata:0x140 | 0x7B0 | size: 0x10
.obj str_BTLNO_MOO_02_05_moo_00003840, local
	.string "BTLNO_MOO_02_05"
.endobj str_BTLNO_MOO_02_05_moo_00003840

# .rodata:0x150 | 0x7C0 | size: 0x10
.obj str_BTLNO_MOO_05_01_moo_00003850, local
	.string "BTLNO_MOO_05_01"
.endobj str_BTLNO_MOO_05_01_moo_00003850

# .rodata:0x160 | 0x7D0 | size: 0x10
.obj str_BTLNO_MOO_05_02_moo_00003860, local
	.string "BTLNO_MOO_05_02"
.endobj str_BTLNO_MOO_05_02_moo_00003860

# .rodata:0x170 | 0x7E0 | size: 0x10
.obj str_BTLNO_MOO_05_03_moo_00003870, local
	.string "BTLNO_MOO_05_03"
.endobj str_BTLNO_MOO_05_03_moo_00003870

# .rodata:0x180 | 0x7F0 | size: 0x10
.obj str_BTLNO_MOO_05_04_moo_00003880, local
	.string "BTLNO_MOO_05_04"
.endobj str_BTLNO_MOO_05_04_moo_00003880

# .rodata:0x190 | 0x800 | size: 0x10
.obj str_BTLNO_MOO_05_05_moo_00003890, local
	.string "BTLNO_MOO_05_05"
.endobj str_BTLNO_MOO_05_05_moo_00003890

# .rodata:0x1A0 | 0x810 | size: 0x4
.obj float_360_moo_000038a0, local
	.float 360
.endobj float_360_moo_000038a0
	.4byte 0x00000000

# .rodata:0x1A8 | 0x818 | size: 0x8
.obj double_to_int_moo_000038a8, local
	.double 4503601774854144
.endobj double_to_int_moo_000038a8

# 0x00002A40..0x00004368 | size: 0x1928
.data
.balign 8

# .data:0x0 | 0x2A40 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2A48 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2A4C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2A50 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2A54 | size: 0x4
.obj gap_04_00002A54_data, global
.hidden gap_04_00002A54_data
	.4byte 0x00000000
.endobj gap_04_00002A54_data

# .data:0x18 | 0x2A58 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2A60 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2A64 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2A68 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2A70 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2A74 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2A78 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2A7C | size: 0x4
.obj gap_04_00002A7C_data, global
.hidden gap_04_00002A7C_data
	.4byte 0x00000000
.endobj gap_04_00002A7C_data

# .data:0x40 | 0x2A80 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2A88 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2A8C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2A90 | size: 0x78
.obj moo_btlobject_data, local
	.4byte str_B_moo_00003700
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_space_moo_00003704
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_star_01_moo_0000370c
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_star_02_moo_00003714
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_star_03_moo_0000371c
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.endobj moo_btlobject_data

# .data:0xC8 | 0x2B08 | size: 0x1B4
.obj moo_btlstage_data, local
	.4byte str_bti_01_moo_00003724
	.4byte str_stg_07_4_moo_0000372c
	.4byte 0x00000005
	.4byte moo_btlobject_data
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
	.4byte bgset_moo_space_event
	.4byte 0x00000000
.endobj moo_btlstage_data

# .data:0x27C | 0x2CBC | size: 0x90
.obj btlparty_moo_moo_00_01_off_1, local
	.4byte unit_kuriboo_17_data_43B8
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
	.4byte battle_item_default_param_list
	.4byte unit_kuriboo_17_data_43B8
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
	.4byte 0x00000000
	.4byte unit_kuriboo_17_data_43B8
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
	.4byte 0x00000000
.endobj btlparty_moo_moo_00_01_off_1

# .data:0x30C | 0x2D4C | size: 0x20
.obj btlgrp_moo_moo_00_01_off_1, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_00_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_00_01_off_1

# .data:0x32C | 0x2D6C | size: 0x60
.obj btlparty_moo_moo_01_01_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_01_off_1

# .data:0x38C | 0x2DCC | size: 0x20
.obj btlgrp_moo_moo_01_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_01_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_01_off_1

# .data:0x3AC | 0x2DEC | size: 0x60
.obj btlparty_moo_moo_01_02_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_02_off_1

# .data:0x40C | 0x2E4C | size: 0x20
.obj btlgrp_moo_moo_01_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_01_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_02_off_1

# .data:0x42C | 0x2E6C | size: 0x90
.obj btlparty_moo_moo_01_02_off_2, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_02_off_2

# .data:0x4BC | 0x2EFC | size: 0x20
.obj btlgrp_moo_moo_01_02_off_2, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_01_02_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_02_off_2

# .data:0x4DC | 0x2F1C | size: 0x90
.obj btlparty_moo_moo_01_03_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_03_off_1

# .data:0x56C | 0x2FAC | size: 0x20
.obj btlgrp_moo_moo_01_03_off_1, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_01_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_03_off_1

# .data:0x58C | 0x2FCC | size: 0x60
.obj btlparty_moo_moo_01_04_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_04_off_1

# .data:0x5EC | 0x302C | size: 0x20
.obj btlgrp_moo_moo_01_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_01_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_04_off_1

# .data:0x60C | 0x304C | size: 0x90
.obj btlparty_moo_moo_01_04_off_2, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_04_off_2

# .data:0x69C | 0x30DC | size: 0x20
.obj btlgrp_moo_moo_01_04_off_2, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_01_04_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_04_off_2

# .data:0x6BC | 0x30FC | size: 0xC0
.obj btlparty_moo_moo_01_04_off_3, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_04_off_3

# .data:0x77C | 0x31BC | size: 0x20
.obj btlgrp_moo_moo_01_04_off_3, local
	.4byte 0x00000004
	.4byte btlparty_moo_moo_01_04_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_04_off_3

# .data:0x79C | 0x31DC | size: 0xC0
.obj btlparty_moo_moo_01_05_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_01_05_off_1

# .data:0x85C | 0x329C | size: 0x20
.obj btlgrp_moo_moo_01_05_off_1, local
	.4byte 0x00000004
	.4byte btlparty_moo_moo_01_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_01_05_off_1

# .data:0x87C | 0x32BC | size: 0x60
.obj btlparty_moo_moo_02_01_off_1, local
	.4byte unit_barriern_z_17_data_6C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_barriern_z
	.4byte unit_barriern_z_17_data_6C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_barriern_z
.endobj btlparty_moo_moo_02_01_off_1

# .data:0x8DC | 0x331C | size: 0x20
.obj btlgrp_moo_moo_02_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_02_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_heart_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_02_01_off_1

# .data:0x8FC | 0x333C | size: 0x60
.obj btlparty_moo_moo_02_02_off_1, local
	.4byte unit_barriern_z_17_data_6C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_barriern_z
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_02_02_off_1

# .data:0x95C | 0x339C | size: 0x20
.obj btlgrp_moo_moo_02_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_02_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_heart_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_02_02_off_1

# .data:0x97C | 0x33BC | size: 0x60
.obj btlparty_moo_moo_02_03_off_1, local
	.4byte unit_barriern_z_17_data_6C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_barriern_z
	.4byte unit_barriern_z_17_data_6C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_barriern_z
.endobj btlparty_moo_moo_02_03_off_1

# .data:0x9DC | 0x341C | size: 0x20
.obj btlgrp_moo_moo_02_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_02_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_heart_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_02_03_off_1

# .data:0x9FC | 0x343C | size: 0x90
.obj btlparty_moo_moo_02_04_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_barriern_z_17_data_6C90
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
	.4byte battle_item_barriern_z
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_02_04_off_1

# .data:0xA8C | 0x34CC | size: 0x20
.obj btlgrp_moo_moo_02_04_off_1, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_02_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_02_04_off_1

# .data:0xAAC | 0x34EC | size: 0x60
.obj btlparty_moo_moo_02_05_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_barriern_z_17_data_6C90
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
	.4byte battle_item_barriern_z
.endobj btlparty_moo_moo_02_05_off_1

# .data:0xB0C | 0x354C | size: 0x20
.obj btlgrp_moo_moo_02_05_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_02_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_02_05_off_1

# .data:0xB2C | 0x356C | size: 0x60
.obj btlparty_moo_moo_05_01_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_01_off_1

# .data:0xB8C | 0x35CC | size: 0x20
.obj btlgrp_moo_moo_05_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_05_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_01_off_1

# .data:0xBAC | 0x35EC | size: 0x90
.obj btlparty_moo_moo_05_01_off_2, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_01_off_2

# .data:0xC3C | 0x367C | size: 0x20
.obj btlgrp_moo_moo_05_01_off_2, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_05_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_01_off_2

# .data:0xC5C | 0x369C | size: 0xC0
.obj btlparty_moo_moo_05_01_off_3, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_01_off_3

# .data:0xD1C | 0x375C | size: 0x20
.obj btlgrp_moo_moo_05_01_off_3, local
	.4byte 0x00000004
	.4byte btlparty_moo_moo_05_01_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_01_off_3

# .data:0xD3C | 0x377C | size: 0x60
.obj btlparty_moo_moo_05_02_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_02_off_1

# .data:0xD9C | 0x37DC | size: 0x20
.obj btlgrp_moo_moo_05_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_05_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_02_off_1

# .data:0xDBC | 0x37FC | size: 0x60
.obj btlparty_moo_moo_05_03_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_03_off_1

# .data:0xE1C | 0x385C | size: 0x20
.obj btlgrp_moo_moo_05_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_05_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_03_off_1

# .data:0xE3C | 0x387C | size: 0x90
.obj btlparty_moo_moo_05_03_off_2, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_03_off_2

# .data:0xECC | 0x390C | size: 0x20
.obj btlgrp_moo_moo_05_03_off_2, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_05_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_03_off_2

# .data:0xEEC | 0x392C | size: 0x90
.obj btlparty_moo_moo_05_04_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_04_off_1

# .data:0xF7C | 0x39BC | size: 0x20
.obj btlgrp_moo_moo_05_04_off_1, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_05_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_04_off_1

# .data:0xF9C | 0x39DC | size: 0x60
.obj btlparty_moo_moo_05_05_off_1, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_05_off_1

# .data:0xFFC | 0x3A3C | size: 0x20
.obj btlgrp_moo_moo_05_05_off_1, local
	.4byte 0x00000002
	.4byte btlparty_moo_moo_05_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_05_off_1

# .data:0x101C | 0x3A5C | size: 0x90
.obj btlparty_moo_moo_05_05_off_2, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_05_off_2

# .data:0x10AC | 0x3AEC | size: 0x20
.obj btlgrp_moo_moo_05_05_off_2, local
	.4byte 0x00000003
	.4byte btlparty_moo_moo_05_05_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_05_off_2

# .data:0x10CC | 0x3B0C | size: 0xC0
.obj btlparty_moo_moo_05_05_off_3, local
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
	.4byte unit_sinemon_17_data_56C8
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
	.4byte battle_item_sinemon
.endobj btlparty_moo_moo_05_05_off_3

# .data:0x118C | 0x3BCC | size: 0x20
.obj btlgrp_moo_moo_05_05_off_3, local
	.4byte 0x00000004
	.4byte btlparty_moo_moo_05_05_off_3
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_moo_moo_05_05_off_3

# .data:0x11AC | 0x3BEC | size: 0x18
.obj btlgrpsel_moo_btlno_moo_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_moo_moo_00_01_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_test1_off

# .data:0x11C4 | 0x3C04 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_01_01_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_01_01_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_01_01_off

# .data:0x11DC | 0x3C1C | size: 0x24
.obj btlgrpsel_moo_btlno_moo_01_02_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_01_02_off_1
	.4byte moo_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_01_02_off_2
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_01_02_off

# .data:0x1200 | 0x3C40 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_01_03_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_01_03_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_01_03_off

# .data:0x1218 | 0x3C58 | size: 0x30
.obj btlgrpsel_moo_btlno_moo_01_04_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_01_04_off_1
	.4byte moo_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_01_04_off_2
	.4byte moo_btlstage_data
	.4byte 0x00000005
	.4byte btlgrp_moo_moo_01_04_off_3
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_01_04_off

# .data:0x1248 | 0x3C88 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_01_05_off, local
	.4byte 0x00000005
	.4byte btlgrp_moo_moo_01_05_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_01_05_off

# .data:0x1260 | 0x3CA0 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_02_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_02_01_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_02_01_off

# .data:0x1278 | 0x3CB8 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_02_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_02_02_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_02_02_off

# .data:0x1290 | 0x3CD0 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_02_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_02_03_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_02_03_off

# .data:0x12A8 | 0x3CE8 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_02_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_02_04_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_02_04_off

# .data:0x12C0 | 0x3D00 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_02_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_02_05_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_02_05_off

# .data:0x12D8 | 0x3D18 | size: 0x30
.obj btlgrpsel_moo_btlno_moo_05_01_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_05_01_off_1
	.4byte moo_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_05_01_off_2
	.4byte moo_btlstage_data
	.4byte 0x00000005
	.4byte btlgrp_moo_moo_05_01_off_3
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_05_01_off

# .data:0x1308 | 0x3D48 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_05_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_05_02_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_05_02_off

# .data:0x1320 | 0x3D60 | size: 0x24
.obj btlgrpsel_moo_btlno_moo_05_03_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_05_03_off_1
	.4byte moo_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_05_03_off_2
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_05_03_off

# .data:0x1344 | 0x3D84 | size: 0x18
.obj btlgrpsel_moo_btlno_moo_05_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_moo_moo_05_04_off_1
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_05_04_off

# .data:0x135C | 0x3D9C | size: 0x30
.obj btlgrpsel_moo_btlno_moo_05_05_off, local
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_05_05_off_1
	.4byte moo_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_moo_moo_05_05_off_2
	.4byte moo_btlstage_data
	.4byte 0x00000005
	.4byte btlgrp_moo_moo_05_05_off_3
	.4byte moo_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_moo_btlno_moo_05_05_off

# .data:0x138C | 0x3DCC | size: 0x484
.obj btlsetup_moo_tbl_17_data_3DCC, global
	.4byte str_マップstg_07_4_moo_00003738
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_test1_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo01シンエモン_moo_0000375c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_01_01_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo01シンエモン_moo_0000375c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_01_02_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo01シンエモン_moo_0000375c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_01_03_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo01シンエモン_moo_0000375c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_01_04_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo01シンエモン_moo_0000375c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_01_05_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo02バリアーンZ_moo_0000376c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_02_01_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo02バリアーンZ_moo_0000376c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_02_02_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo02バリアーンZ_moo_0000376c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_02_03_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo02シンエモン_moo_00003780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_02_04_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo02シンエモン_moo_00003780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_02_05_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo05シンエモン_moo_00003790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_05_01_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo05シンエモン_moo_00003790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_05_02_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo05シンエモン_moo_00003790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_05_03_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo05シンエモン_moo_00003790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_05_04_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte str_moo05シンエモン_moo_00003790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_moo_btlno_moo_05_05_off
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
	.4byte str_BGM_ZAKO_BATTLE1_moo_00003748
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_moo_tbl_17_data_3DCC

# .data:0x1810 | 0x4250 | size: 0x88
.obj btl_moo_setup_no_tbl_17_data_4250, global
	.4byte str_BTLNO_MOO_TEST1_moo_000037a0
	.4byte 0x00000000
	.4byte str_BTLNO_MOO_01_01_moo_000037b0
	.4byte 0x00000001
	.4byte str_BTLNO_MOO_01_02_moo_000037c0
	.4byte 0x00000002
	.4byte str_BTLNO_MOO_01_03_moo_000037d0
	.4byte 0x00000003
	.4byte str_BTLNO_MOO_01_04_moo_000037e0
	.4byte 0x00000004
	.4byte str_BTLNO_MOO_01_05_moo_000037f0
	.4byte 0x00000005
	.4byte str_BTLNO_MOO_02_01_moo_00003800
	.4byte 0x00000006
	.4byte str_BTLNO_MOO_02_02_moo_00003810
	.4byte 0x00000007
	.4byte str_BTLNO_MOO_02_03_moo_00003820
	.4byte 0x00000008
	.4byte str_BTLNO_MOO_02_04_moo_00003830
	.4byte 0x00000009
	.4byte str_BTLNO_MOO_02_05_moo_00003840
	.4byte 0x0000000A
	.4byte str_BTLNO_MOO_05_01_moo_00003850
	.4byte 0x0000000B
	.4byte str_BTLNO_MOO_05_02_moo_00003860
	.4byte 0x0000000C
	.4byte str_BTLNO_MOO_05_03_moo_00003870
	.4byte 0x0000000D
	.4byte str_BTLNO_MOO_05_04_moo_00003880
	.4byte 0x0000000E
	.4byte str_BTLNO_MOO_05_05_moo_00003890
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_moo_setup_no_tbl_17_data_4250

# .data:0x1898 | 0x42D8 | size: 0x8C
.obj bgset_moo_space_event, local
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte _space_rotate
	.4byte str_star_01_moo_0000370c
	.4byte 0xFE363C81
	.4byte 0x00001D4C
	.4byte 0x0004005B
	.4byte _space_rotate
	.4byte str_star_02_moo_00003714
	.4byte 0xFE363C82
	.4byte 0x00001A5E
	.4byte 0x0004005B
	.4byte _space_rotate
	.4byte str_star_03_moo_0000371c
	.4byte 0xFE363C83
	.4byte 0x00001770
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_moo_space_event

# .data:0x1924 | 0x4364 | size: 0x4
.obj gap_04_00004364_data, global
.hidden gap_04_00004364_data
	.4byte 0x00000000
.endobj gap_04_00004364_data
