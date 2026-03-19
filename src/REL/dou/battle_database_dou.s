.include "macros.inc"
.file "battle_database_dou.o"

# 0x0000181C..0x000019B4 | size: 0x198
.text
.balign 4

# .text:0x0 | 0x181C | size: 0x198
.fn _wave_offset, local
/* 0000181C 000018E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00001820 000018E4  7C 08 02 A6 */	mflr r0
/* 00001824 000018E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 00001828 000018EC  BE C1 00 38 */	stmw r22, 0x38(r1)
/* 0000182C 000018F0  7C 76 1B 78 */	mr r22, r3
/* 00001830 000018F4  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00001834 000018F8  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00001838 000018FC  4B FF E8 35 */	bl evtGetValue
/* 0000183C 00001900  83 1D 00 04 */	lwz r24, 0x4(r29)
/* 00001840 00001904  7C 7F 1B 78 */	mr r31, r3
/* 00001844 00001908  7E C3 B3 78 */	mr r3, r22
/* 00001848 0000190C  7F 04 C3 78 */	mr r4, r24
/* 0000184C 00001910  4B FF E8 21 */	bl evtGetValue
/* 00001850 00001914  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001854 00001918  7C 79 1B 78 */	mr r25, r3
/* 00001858 0000191C  7E C3 B3 78 */	mr r3, r22
/* 0000185C 00001920  4B FF E8 11 */	bl evtGetValue
/* 00001860 00001924  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 00001864 00001928  7C 7A 1B 78 */	mr r26, r3
/* 00001868 0000192C  7E C3 B3 78 */	mr r3, r22
/* 0000186C 00001930  4B FF E8 01 */	bl evtGetValue
/* 00001870 00001934  82 FD 00 10 */	lwz r23, 0x10(r29)
/* 00001874 00001938  7C 7B 1B 78 */	mr r27, r3
/* 00001878 0000193C  7E C3 B3 78 */	mr r3, r22
/* 0000187C 00001940  7E E4 BB 78 */	mr r4, r23
/* 00001880 00001944  4B FF E7 ED */	bl evtGetValue
/* 00001884 00001948  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 00001888 0000194C  7C 7C 1B 78 */	mr r28, r3
/* 0000188C 00001950  7E C3 B3 78 */	mr r3, r22
/* 00001890 00001954  4B FF E7 DD */	bl evtGetValue
/* 00001894 00001958  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 00001898 0000195C  7C 7D 1B 78 */	mr r29, r3
/* 0000189C 00001960  7E C3 B3 78 */	mr r3, r22
/* 000018A0 00001964  4B FF E7 CD */	bl evtGetValue
/* 000018A4 00001968  7C 7E 1B 78 */	mr r30, r3
/* 000018A8 0000196C  7F E3 FB 78 */	mr r3, r31
/* 000018AC 00001970  4B FF E7 C1 */	bl BattleSearchObjectPtr
/* 000018B0 00001974  1C B9 01 68 */	mulli r5, r25, 0x168
/* 000018B4 00001978  3C 00 43 30 */	lis r0, 0x4330
/* 000018B8 0000197C  90 01 00 08 */	stw r0, 0x8(r1)
/* 000018BC 00001980  3C 80 00 00 */	lis r4, double_to_int_dou_00005b70@ha
/* 000018C0 00001984  C8 24 00 00 */	lfd f1, double_to_int_dou_00005b70@l(r4)
/* 000018C4 00001988  7C 7F 1B 78 */	mr r31, r3
/* 000018C8 0000198C  7C 05 D3 D6 */	divw r0, r5, r26
/* 000018CC 00001990  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000018D0 00001994  90 01 00 0C */	stw r0, 0xc(r1)
/* 000018D4 00001998  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000018D8 0000199C  EC 20 08 28 */	fsubs f1, f0, f1
/* 000018DC 000019A0  4B FF E7 91 */	bl sinfd
/* 000018E0 000019A4  1C 1C 01 68 */	mulli r0, r28, 0x168
/* 000018E4 000019A8  3C 80 43 30 */	lis r4, 0x4330
/* 000018E8 000019AC  6F 65 80 00 */	xoris r5, r27, 0x8000
/* 000018EC 000019B0  90 81 00 10 */	stw r4, 0x10(r1)
/* 000018F0 000019B4  3C C0 00 00 */	lis r6, double_to_int_dou_00005b70@ha
/* 000018F4 000019B8  7C 60 EB D6 */	divw r3, r0, r29
/* 000018F8 000019BC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 000018FC 000019C0  C8 66 00 00 */	lfd f3, double_to_int_dou_00005b70@l(r6)
/* 00001900 000019C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00001904 000019C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 00001908 000019CC  EC 00 18 28 */	fsubs f0, f0, f3
/* 0000190C 000019D0  38 03 01 0E */	addi r0, r3, 0x10e
/* 00001910 000019D4  EC 40 00 72 */	fmuls f2, f0, f1
/* 00001914 000019D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001918 000019DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 0000191C 000019E0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00001920 000019E4  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 00001924 000019E8  EC 20 18 28 */	fsubs f1, f0, f3
/* 00001928 000019EC  4B FF E7 45 */	bl sinfd
/* 0000192C 000019F0  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 00001930 000019F4  3C 00 43 30 */	lis r0, 0x4330
/* 00001934 000019F8  90 61 00 24 */	stw r3, 0x24(r1)
/* 00001938 000019FC  3C 80 00 00 */	lis r4, double_to_int_dou_00005b70@ha
/* 0000193C 00001A00  38 B9 00 01 */	addi r5, r25, 0x1
/* 00001940 00001A04  C8 64 00 00 */	lfd f3, double_to_int_dou_00005b70@l(r4)
/* 00001944 00001A08  90 01 00 20 */	stw r0, 0x20(r1)
/* 00001948 00001A0C  7C 05 D0 00 */	cmpw r5, r26
/* 0000194C 00001A10  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00001950 00001A14  90 61 00 2C */	stw r3, 0x2c(r1)
/* 00001954 00001A18  EC 40 18 28 */	fsubs f2, f0, f3
/* 00001958 00001A1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 0000195C 00001A20  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 00001960 00001A24  EC 00 18 28 */	fsubs f0, f0, f3
/* 00001964 00001A28  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00001968 00001A2C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 0000196C 00001A30  41 80 00 08 */	blt .L_00001974
/* 00001970 00001A34  38 A0 00 00 */	li r5, 0x0
.L_00001974:
/* 00001974 00001A38  7E C3 B3 78 */	mr r3, r22
/* 00001978 00001A3C  7F 04 C3 78 */	mr r4, r24
/* 0000197C 00001A40  4B FF E6 F1 */	bl evtSetValue
/* 00001980 00001A44  38 BC 00 01 */	addi r5, r28, 0x1
/* 00001984 00001A48  7C 05 E8 00 */	cmpw r5, r29
/* 00001988 00001A4C  41 80 00 08 */	blt .L_00001990
/* 0000198C 00001A50  38 A0 00 00 */	li r5, 0x0
.L_00001990:
/* 00001990 00001A54  7E C3 B3 78 */	mr r3, r22
/* 00001994 00001A58  7E E4 BB 78 */	mr r4, r23
/* 00001998 00001A5C  4B FF E6 D5 */	bl evtSetValue
/* 0000199C 00001A60  BA C1 00 38 */	lmw r22, 0x38(r1)
/* 000019A0 00001A64  38 60 00 02 */	li r3, 0x2
/* 000019A4 00001A68  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000019A8 00001A6C  7C 08 03 A6 */	mtlr r0
/* 000019AC 00001A70  38 21 00 60 */	addi r1, r1, 0x60
/* 000019B0 00001A74  4E 80 00 20 */	blr
.endfn _wave_offset

# 0x00001B18..0x00001EE8 | size: 0x3D0
.rodata
.balign 8

# .rodata:0x0 | 0x1B18 | size: 0x5
.obj str_taki_dou_000057a8, local
	.string "taki"
.endobj str_taki_dou_000057a8

# .rodata:0x5 | 0x1B1D | size: 0x3
.obj gap_03_00001B1D_rodata, global
.hidden gap_03_00001B1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B1D_rodata

# .rodata:0x8 | 0x1B20 | size: 0x7
.obj str_B_kabe_dou_000057b0, local
	.string "B_kabe"
.endobj str_B_kabe_dou_000057b0

# .rodata:0xF | 0x1B27 | size: 0x1
.obj gap_03_00001B27_rodata, global
.hidden gap_03_00001B27_rodata
	.byte 0x00
.endobj gap_03_00001B27_rodata

# .rodata:0x10 | 0x1B28 | size: 0x7
.obj str_zabu_1_dou_000057b8, local
	.string "zabu_1"
.endobj str_zabu_1_dou_000057b8

# .rodata:0x17 | 0x1B2F | size: 0x1
.obj gap_03_00001B2F_rodata, global
.hidden gap_03_00001B2F_rodata
	.byte 0x00
.endobj gap_03_00001B2F_rodata

# .rodata:0x18 | 0x1B30 | size: 0x7
.obj str_zabu_2_dou_000057c0, local
	.string "zabu_2"
.endobj str_zabu_2_dou_000057c0

# .rodata:0x1F | 0x1B37 | size: 0x1
.obj gap_03_00001B37_rodata, global
.hidden gap_03_00001B37_rodata
	.byte 0x00
.endobj gap_03_00001B37_rodata

# .rodata:0x20 | 0x1B38 | size: 0x2
.obj str_C_dou_000057c8, local
	.string "C"
.endobj str_C_dou_000057c8

# .rodata:0x22 | 0x1B3A | size: 0x2
.obj gap_03_00001B3A_rodata, global
.hidden gap_03_00001B3A_rodata
	.2byte 0x0000
.endobj gap_03_00001B3A_rodata

# .rodata:0x24 | 0x1B3C | size: 0xA
.obj str_takara_01_dou_000057cc, local
	.string "takara_01"
.endobj str_takara_01_dou_000057cc

# .rodata:0x2E | 0x1B46 | size: 0x2
.obj gap_03_00001B46_rodata, global
.hidden gap_03_00001B46_rodata
	.2byte 0x0000
.endobj gap_03_00001B46_rodata

# .rodata:0x30 | 0x1B48 | size: 0xA
.obj str_takara_02_dou_000057d8, local
	.string "takara_02"
.endobj str_takara_02_dou_000057d8

# .rodata:0x3A | 0x1B52 | size: 0x2
.obj gap_03_00001B52_rodata, global
.hidden gap_03_00001B52_rodata
	.2byte 0x0000
.endobj gap_03_00001B52_rodata

# .rodata:0x3C | 0x1B54 | size: 0xA
.obj str_takara_03_dou_000057e4, local
	.string "takara_03"
.endobj str_takara_03_dou_000057e4

# .rodata:0x46 | 0x1B5E | size: 0x2
.obj gap_03_00001B5E_rodata, global
.hidden gap_03_00001B5E_rodata
	.2byte 0x0000
.endobj gap_03_00001B5E_rodata

# .rodata:0x48 | 0x1B60 | size: 0xA
.obj str_takara_04_dou_000057f0, local
	.string "takara_04"
.endobj str_takara_04_dou_000057f0

# .rodata:0x52 | 0x1B6A | size: 0x2
.obj gap_03_00001B6A_rodata, global
.hidden gap_03_00001B6A_rodata
	.2byte 0x0000
.endobj gap_03_00001B6A_rodata

# .rodata:0x54 | 0x1B6C | size: 0x2
.obj str_B_dou_000057fc, local
	.string "B"
.endobj str_B_dou_000057fc

# .rodata:0x56 | 0x1B6E | size: 0x2
.obj gap_03_00001B6E_rodata, global
.hidden gap_03_00001B6E_rodata
	.2byte 0x0000
.endobj gap_03_00001B6E_rodata

# .rodata:0x58 | 0x1B70 | size: 0x7
.obj str_C_kabe_dou_00005800, local
	.string "C_kabe"
.endobj str_C_kabe_dou_00005800

# .rodata:0x5F | 0x1B77 | size: 0x1
.obj gap_03_00001B77_rodata, global
.hidden gap_03_00001B77_rodata
	.byte 0x00
.endobj gap_03_00001B77_rodata

# .rodata:0x60 | 0x1B78 | size: 0x8
.obj str_nami_00_dou_00005808, local
	.string "nami_00"
.endobj str_nami_00_dou_00005808

# .rodata:0x68 | 0x1B80 | size: 0x8
.obj str_nami_01_dou_00005810, local
	.string "nami_01"
.endobj str_nami_01_dou_00005810

# .rodata:0x70 | 0x1B88 | size: 0x7
.obj str_fune_L_dou_00005818, local
	.string "fune_L"
.endobj str_fune_L_dou_00005818

# .rodata:0x77 | 0x1B8F | size: 0x1
.obj gap_03_00001B8F_rodata, global
.hidden gap_03_00001B8F_rodata
	.byte 0x00
.endobj gap_03_00001B8F_rodata

# .rodata:0x78 | 0x1B90 | size: 0x7
.obj str_fune_R_dou_00005820, local
	.string "fune_R"
.endobj str_fune_R_dou_00005820

# .rodata:0x7F | 0x1B97 | size: 0x1
.obj gap_03_00001B97_rodata, global
.hidden gap_03_00001B97_rodata
	.byte 0x00
.endobj gap_03_00001B97_rodata

# .rodata:0x80 | 0x1B98 | size: 0x8
.obj str_A1_kabe_dou_00005828, local
	.string "A1_kabe"
.endobj str_A1_kabe_dou_00005828

# .rodata:0x88 | 0x1BA0 | size: 0x7
.obj str_iwa_01_dou_00005830, local
	.string "iwa_01"
.endobj str_iwa_01_dou_00005830

# .rodata:0x8F | 0x1BA7 | size: 0x1
.obj gap_03_00001BA7_rodata, global
.hidden gap_03_00001BA7_rodata
	.byte 0x00
.endobj gap_03_00001BA7_rodata

# .rodata:0x90 | 0x1BA8 | size: 0x7
.obj str_iwa_02_dou_00005838, local
	.string "iwa_02"
.endobj str_iwa_02_dou_00005838

# .rodata:0x97 | 0x1BAF | size: 0x1
.obj gap_03_00001BAF_rodata, global
.hidden gap_03_00001BAF_rodata
	.byte 0x00
.endobj gap_03_00001BAF_rodata

# .rodata:0x98 | 0x1BB0 | size: 0x7
.obj str_iwa_03_dou_00005840, local
	.string "iwa_03"
.endobj str_iwa_03_dou_00005840

# .rodata:0x9F | 0x1BB7 | size: 0x1
.obj gap_03_00001BB7_rodata, global
.hidden gap_03_00001BB7_rodata
	.byte 0x00
.endobj gap_03_00001BB7_rodata

# .rodata:0xA0 | 0x1BB8 | size: 0x8
.obj str_nami_02_dou_00005848, local
	.string "nami_02"
.endobj str_nami_02_dou_00005848

# .rodata:0xA8 | 0x1BC0 | size: 0x8
.obj str_nami_03_dou_00005850, local
	.string "nami_03"
.endobj str_nami_03_dou_00005850

# .rodata:0xB0 | 0x1BC8 | size: 0x8
.obj str_nami_04_dou_00005858, local
	.string "nami_04"
.endobj str_nami_04_dou_00005858

# .rodata:0xB8 | 0x1BD0 | size: 0x7
.obj str_bti_01_dou_00005860, local
	.string "bti_01"
.endobj str_bti_01_dou_00005860

# .rodata:0xBF | 0x1BD7 | size: 0x1
.obj gap_03_00001BD7_rodata, global
.hidden gap_03_00001BD7_rodata
	.byte 0x00
.endobj gap_03_00001BD7_rodata

# .rodata:0xC0 | 0x1BD8 | size: 0x9
.obj str_stg_05_4_dou_00005868, local
	.string "stg_05_4"
.endobj str_stg_05_4_dou_00005868

# .rodata:0xC9 | 0x1BE1 | size: 0x3
.obj gap_03_00001BE1_rodata, global
.hidden gap_03_00001BE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BE1_rodata

# .rodata:0xCC | 0x1BE4 | size: 0x9
.obj str_stg_05_5_dou_00005874, local
	.string "stg_05_5"
.endobj str_stg_05_5_dou_00005874

# .rodata:0xD5 | 0x1BED | size: 0x3
.obj gap_03_00001BED_rodata, global
.hidden gap_03_00001BED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BED_rodata

# .rodata:0xD8 | 0x1BF0 | size: 0x9
.obj str_stg_05_3_dou_00005880, local
	.string "stg_05_3"
.endobj str_stg_05_3_dou_00005880

# .rodata:0xE1 | 0x1BF9 | size: 0x3
.obj gap_03_00001BF9_rodata, global
.hidden gap_03_00001BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BF9_rodata

# .rodata:0xE4 | 0x1BFC | size: 0xF
.obj str_マップstg_05_3_dou_0000588c, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x33, 0x00
.endobj str_マップstg_05_3_dou_0000588c

# .rodata:0xF3 | 0x1C0B | size: 0x1
.obj gap_03_00001C0B_rodata, global
.hidden gap_03_00001C0B_rodata
	.byte 0x00
.endobj gap_03_00001C0B_rodata

# .rodata:0xF4 | 0x1C0C | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_dou_0000589c, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_dou_0000589c

# .rodata:0x105 | 0x1C1D | size: 0x3
.obj gap_03_00001C1D_rodata, global
.hidden gap_03_00001C1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C1D_rodata

# .rodata:0x108 | 0x1C20 | size: 0xF
.obj str_マップstg_05_4_dou_000058b0, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x34, 0x00
.endobj str_マップstg_05_4_dou_000058b0

# .rodata:0x117 | 0x1C2F | size: 0x1
.obj gap_03_00001C2F_rodata, global
.hidden gap_03_00001C2F_rodata
	.byte 0x00
.endobj gap_03_00001C2F_rodata

# .rodata:0x118 | 0x1C30 | size: 0xF
.obj str_マップstg_05_5_dou_000058c0, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x35, 0x00
.endobj str_マップstg_05_5_dou_000058c0

# .rodata:0x127 | 0x1C3F | size: 0x1
.obj gap_03_00001C3F_rodata, global
.hidden gap_03_00001C3F_rodata
	.byte 0x00
.endobj gap_03_00001C3F_rodata

# .rodata:0x128 | 0x1C40 | size: 0xE
.obj str_DOU01エルモス_dou_000058d0, local
	.4byte 0x444F5530
	.4byte 0x31834783
	.4byte 0x8B838283
	.2byte 0x5800
.endobj str_DOU01エルモス_dou_000058d0

# .rodata:0x136 | 0x1C4E | size: 0x2
.obj gap_03_00001C4E_rodata, global
.hidden gap_03_00001C4E_rodata
	.2byte 0x0000
.endobj gap_03_00001C4E_rodata

# .rodata:0x138 | 0x1C50 | size: 0xC
.obj str_DOU02バブル_dou_000058e0, local
	.4byte 0x444F5530
	.4byte 0x32836F83
	.4byte 0x75838B00
.endobj str_DOU02バブル_dou_000058e0

# .rodata:0x144 | 0x1C5C | size: 0x10
.obj str_DOU03キラー大砲_dou_000058ec, local
	.4byte 0x444F5530
	.4byte 0x33834C83
	.4byte 0x89815B91
	.4byte 0xE5964300
.endobj str_DOU03キラー大砲_dou_000058ec

# .rodata:0x154 | 0x1C6C | size: 0xC
.obj str_DOU03キラー_dou_000058fc, local
	.4byte 0x444F5530
	.4byte 0x33834C83
	.4byte 0x89815B00
.endobj str_DOU03キラー_dou_000058fc

# .rodata:0x160 | 0x1C78 | size: 0x10
.obj str_DOU03ヘビーボム_dou_00005908, local
	.4byte 0x444F5530
	.4byte 0x33837783
	.4byte 0x72815B83
	.4byte 0x7B838000
.endobj str_DOU03ヘビーボム_dou_00005908

# .rodata:0x170 | 0x1C88 | size: 0xE
.obj str_DOU05エルモス_dou_00005918, local
	.4byte 0x444F5530
	.4byte 0x35834783
	.4byte 0x8B838283
	.2byte 0x5800
.endobj str_DOU05エルモス_dou_00005918

# .rodata:0x17E | 0x1C96 | size: 0x2
.obj gap_03_00001C96_rodata, global
.hidden gap_03_00001C96_rodata
	.2byte 0x0000
.endobj gap_03_00001C96_rodata

# .rodata:0x180 | 0x1C98 | size: 0x10
.obj str_DOU05パタメット_dou_00005928, local
	.4byte 0x444F5530
	.4byte 0x35837083
	.4byte 0x5E838183
	.4byte 0x62836700
.endobj str_DOU05パタメット_dou_00005928

# .rodata:0x190 | 0x1CA8 | size: 0x10
.obj str_DOU06パタメット_dou_00005938, local
	.4byte 0x444F5530
	.4byte 0x36837083
	.4byte 0x5E838183
	.4byte 0x62836700
.endobj str_DOU06パタメット_dou_00005938

# .rodata:0x1A0 | 0x1CB8 | size: 0xE
.obj str_DOU07エルモス_dou_00005948, local
	.4byte 0x444F5530
	.4byte 0x37834783
	.4byte 0x8B838283
	.2byte 0x5800
.endobj str_DOU07エルモス_dou_00005948

# .rodata:0x1AE | 0x1CC6 | size: 0x2
.obj gap_03_00001CC6_rodata, global
.hidden gap_03_00001CC6_rodata
	.2byte 0x0000
.endobj gap_03_00001CC6_rodata

# .rodata:0x1B0 | 0x1CC8 | size: 0x10
.obj str_DOU08ヘビーボム_dou_00005958, local
	.4byte 0x444F5530
	.4byte 0x38837783
	.4byte 0x72815B83
	.4byte 0x7B838000
.endobj str_DOU08ヘビーボム_dou_00005958

# .rodata:0x1C0 | 0x1CD8 | size: 0xC
.obj str_DOU09バブル_dou_00005968, local
	.4byte 0x444F5530
	.4byte 0x39836F83
	.4byte 0x75838B00
.endobj str_DOU09バブル_dou_00005968

# .rodata:0x1CC | 0x1CE4 | size: 0xE
.obj str_DOU09エルモス_dou_00005974, local
	.4byte 0x444F5530
	.4byte 0x39834783
	.4byte 0x8B838283
	.2byte 0x5800
.endobj str_DOU09エルモス_dou_00005974

# .rodata:0x1DA | 0x1CF2 | size: 0x2
.obj gap_03_00001CF2_rodata, global
.hidden gap_03_00001CF2_rodata
	.2byte 0x0000
.endobj gap_03_00001CF2_rodata

# .rodata:0x1DC | 0x1CF4 | size: 0x10
.obj str_DOU12キラー大砲_dou_00005984, local
	.4byte 0x444F5531
	.4byte 0x32834C83
	.4byte 0x89815B91
	.4byte 0xE5964300
.endobj str_DOU12キラー大砲_dou_00005984

# .rodata:0x1EC | 0x1D04 | size: 0xC
.obj str_DOU12キラー_dou_00005994, local
	.4byte 0x444F5531
	.4byte 0x32834C83
	.4byte 0x89815B00
.endobj str_DOU12キラー_dou_00005994

# .rodata:0x1F8 | 0x1D10 | size: 0x10
.obj str_DOU13キラー大砲_dou_000059a0, local
	.4byte 0x444F5531
	.4byte 0x33834C83
	.4byte 0x89815B91
	.4byte 0xE5964300
.endobj str_DOU13キラー大砲_dou_000059a0

# .rodata:0x208 | 0x1D20 | size: 0xC
.obj str_DOU13キラー_dou_000059b0, local
	.4byte 0x444F5531
	.4byte 0x33834C83
	.4byte 0x89815B00
.endobj str_DOU13キラー_dou_000059b0

# .rodata:0x214 | 0x1D2C | size: 0x10
.obj str_BTLNO_DOU_TEST1_dou_000059bc, local
	.string "BTLNO_DOU_TEST1"
.endobj str_BTLNO_DOU_TEST1_dou_000059bc

# .rodata:0x224 | 0x1D3C | size: 0x10
.obj str_BTLNO_DOU_TEST2_dou_000059cc, local
	.string "BTLNO_DOU_TEST2"
.endobj str_BTLNO_DOU_TEST2_dou_000059cc

# .rodata:0x234 | 0x1D4C | size: 0x10
.obj str_BTLNO_DOU_TEST3_dou_000059dc, local
	.string "BTLNO_DOU_TEST3"
.endobj str_BTLNO_DOU_TEST3_dou_000059dc

# .rodata:0x244 | 0x1D5C | size: 0x10
.obj str_BTLNO_DOU_01_01_dou_000059ec, local
	.string "BTLNO_DOU_01_01"
.endobj str_BTLNO_DOU_01_01_dou_000059ec

# .rodata:0x254 | 0x1D6C | size: 0x10
.obj str_BTLNO_DOU_02_01_dou_000059fc, local
	.string "BTLNO_DOU_02_01"
.endobj str_BTLNO_DOU_02_01_dou_000059fc

# .rodata:0x264 | 0x1D7C | size: 0x10
.obj str_BTLNO_DOU_02_02_dou_00005a0c, local
	.string "BTLNO_DOU_02_02"
.endobj str_BTLNO_DOU_02_02_dou_00005a0c

# .rodata:0x274 | 0x1D8C | size: 0x10
.obj str_BTLNO_DOU_03_01_dou_00005a1c, local
	.string "BTLNO_DOU_03_01"
.endobj str_BTLNO_DOU_03_01_dou_00005a1c

# .rodata:0x284 | 0x1D9C | size: 0x10
.obj str_BTLNO_DOU_03_99_dou_00005a2c, local
	.string "BTLNO_DOU_03_99"
.endobj str_BTLNO_DOU_03_99_dou_00005a2c

# .rodata:0x294 | 0x1DAC | size: 0x10
.obj str_BTLNO_DOU_03_02_dou_00005a3c, local
	.string "BTLNO_DOU_03_02"
.endobj str_BTLNO_DOU_03_02_dou_00005a3c

# .rodata:0x2A4 | 0x1DBC | size: 0x10
.obj str_BTLNO_DOU_03_03_dou_00005a4c, local
	.string "BTLNO_DOU_03_03"
.endobj str_BTLNO_DOU_03_03_dou_00005a4c

# .rodata:0x2B4 | 0x1DCC | size: 0x10
.obj str_BTLNO_DOU_05_01_dou_00005a5c, local
	.string "BTLNO_DOU_05_01"
.endobj str_BTLNO_DOU_05_01_dou_00005a5c

# .rodata:0x2C4 | 0x1DDC | size: 0x10
.obj str_BTLNO_DOU_05_02_dou_00005a6c, local
	.string "BTLNO_DOU_05_02"
.endobj str_BTLNO_DOU_05_02_dou_00005a6c

# .rodata:0x2D4 | 0x1DEC | size: 0x10
.obj str_BTLNO_DOU_06_01_dou_00005a7c, local
	.string "BTLNO_DOU_06_01"
.endobj str_BTLNO_DOU_06_01_dou_00005a7c

# .rodata:0x2E4 | 0x1DFC | size: 0x10
.obj str_BTLNO_DOU_06_02_dou_00005a8c, local
	.string "BTLNO_DOU_06_02"
.endobj str_BTLNO_DOU_06_02_dou_00005a8c

# .rodata:0x2F4 | 0x1E0C | size: 0x10
.obj str_BTLNO_DOU_06_03_dou_00005a9c, local
	.string "BTLNO_DOU_06_03"
.endobj str_BTLNO_DOU_06_03_dou_00005a9c

# .rodata:0x304 | 0x1E1C | size: 0x10
.obj str_BTLNO_DOU_07_01_dou_00005aac, local
	.string "BTLNO_DOU_07_01"
.endobj str_BTLNO_DOU_07_01_dou_00005aac

# .rodata:0x314 | 0x1E2C | size: 0x10
.obj str_BTLNO_DOU_08_01_dou_00005abc, local
	.string "BTLNO_DOU_08_01"
.endobj str_BTLNO_DOU_08_01_dou_00005abc

# .rodata:0x324 | 0x1E3C | size: 0x10
.obj str_BTLNO_DOU_09_01_dou_00005acc, local
	.string "BTLNO_DOU_09_01"
.endobj str_BTLNO_DOU_09_01_dou_00005acc

# .rodata:0x334 | 0x1E4C | size: 0x10
.obj str_BTLNO_DOU_09_02_dou_00005adc, local
	.string "BTLNO_DOU_09_02"
.endobj str_BTLNO_DOU_09_02_dou_00005adc

# .rodata:0x344 | 0x1E5C | size: 0x10
.obj str_BTLNO_DOU_12_01_dou_00005aec, local
	.string "BTLNO_DOU_12_01"
.endobj str_BTLNO_DOU_12_01_dou_00005aec

# .rodata:0x354 | 0x1E6C | size: 0x10
.obj str_BTLNO_DOU_12_02_dou_00005afc, local
	.string "BTLNO_DOU_12_02"
.endobj str_BTLNO_DOU_12_02_dou_00005afc

# .rodata:0x364 | 0x1E7C | size: 0x10
.obj str_BTLNO_DOU_12_99_dou_00005b0c, local
	.string "BTLNO_DOU_12_99"
.endobj str_BTLNO_DOU_12_99_dou_00005b0c

# .rodata:0x374 | 0x1E8C | size: 0x10
.obj str_BTLNO_DOU_13_01_dou_00005b1c, local
	.string "BTLNO_DOU_13_01"
.endobj str_BTLNO_DOU_13_01_dou_00005b1c

# .rodata:0x384 | 0x1E9C | size: 0x10
.obj str_BTLNO_DOU_13_02_dou_00005b2c, local
	.string "BTLNO_DOU_13_02"
.endobj str_BTLNO_DOU_13_02_dou_00005b2c

# .rodata:0x394 | 0x1EAC | size: 0x10
.obj str_BTLNO_DOU_13_03_dou_00005b3c, local
	.string "BTLNO_DOU_13_03"
.endobj str_BTLNO_DOU_13_03_dou_00005b3c

# .rodata:0x3A4 | 0x1EBC | size: 0x10
.obj str_BTLNO_DOU_13_04_dou_00005b4c, local
	.string "BTLNO_DOU_13_04"
.endobj str_BTLNO_DOU_13_04_dou_00005b4c

# .rodata:0x3B4 | 0x1ECC | size: 0x10
.obj str_BTLNO_DOU_13_99_dou_00005b5c, local
	.string "BTLNO_DOU_13_99"
.endobj str_BTLNO_DOU_13_99_dou_00005b5c
	.4byte 0x00000000

# .rodata:0x3C8 | 0x1EE0 | size: 0x8
.obj double_to_int_dou_00005b70, local
	.double 4503601774854144
.endobj double_to_int_dou_00005b70

# 0x0000E888..0x000110A8 | size: 0x2820
.data
.balign 8

# .data:0x0 | 0xE888 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xE890 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xE894 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xE898 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xE89C | size: 0x4
.obj gap_04_0000E89C_data, global
.hidden gap_04_0000E89C_data
	.4byte 0x00000000
.endobj gap_04_0000E89C_data

# .data:0x18 | 0xE8A0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xE8A8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xE8AC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xE8B0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xE8B8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xE8BC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xE8C0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xE8C4 | size: 0x4
.obj gap_04_0000E8C4_data, global
.hidden gap_04_0000E8C4_data
	.4byte 0x00000000
.endobj gap_04_0000E8C4_data

# .data:0x40 | 0xE8C8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xE8D0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xE8D4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xE8D8 | size: 0x4C8
.obj dou_btlobject_data, local
	.4byte str_taki_dou_000057a8
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_B_kabe_dou_000057b0
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A320000
	.4byte str_zabu_1_dou_000057b8
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14280000
	.4byte str_zabu_2_dou_000057c0
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x1E1E0000
	.4byte str_C_dou_000057c8
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0000E950:
	.4byte str_B_kabe_dou_000057b0
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A320000
	.4byte str_C_dou_000057c8
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0000E980:
	.4byte str_takara_01_dou_000057cc
	.4byte 0x00020001
	.4byte 0x42DE0000
	.4byte 0x00000000
	.4byte 0xC28A0000
	.4byte 0x003C0000
	.4byte str_takara_02_dou_000057d8
	.4byte 0x00020001
	.4byte 0xC2AE0000
	.4byte 0x00000000
	.4byte 0xC2900000
	.4byte 0x0A320000
	.4byte str_takara_03_dou_000057e4
	.4byte 0x00020001
	.4byte 0x43080000
	.4byte 0x00000000
	.4byte 0x42640000
	.4byte 0x14280000
	.4byte str_takara_04_dou_000057f0
	.4byte 0x00020001
	.4byte 0xC3360000
	.4byte 0x00000000
	.4byte 0x42640000
	.4byte 0x1E1E0000
	.4byte str_B_dou_000057fc
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_kabe_dou_00005800
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_00_dou_00005808
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_01_dou_00005810
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0000EA40:
	.4byte str_fune_L_dou_00005818
	.4byte 0x00020000
	.4byte 0xC2D00000
	.4byte 0x00000000
	.4byte 0xC2800000
	.4byte 0x003C0000
	.4byte str_fune_R_dou_00005820
	.4byte 0x00020000
	.4byte 0x42F00000
	.4byte 0x00000000
	.4byte 0xC2800000
	.4byte 0x0A320000
	.4byte str_A1_kabe_dou_00005828
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC24C0000
	.4byte 0x14280000
	.4byte str_iwa_01_dou_00005830
	.4byte 0x00020001
	.4byte 0x43680000
	.4byte 0x00000000
	.4byte 0xC1A80000
	.4byte 0x003C0000
	.4byte str_iwa_02_dou_00005838
	.4byte 0x00020001
	.4byte 0xC36A0000
	.4byte 0x00000000
	.4byte 0xC1A80000
	.4byte 0x0A320000
	.4byte str_iwa_03_dou_00005840
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2180000
	.4byte 0x14280000
	.4byte str_B_kabe_dou_000057b0
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_02_dou_00005848
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A320000
	.4byte str_nami_03_dou_00005850
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14280000
	.4byte str_nami_04_dou_00005858
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x1E1E0000
	.4byte str_C_kabe_dou_00005800
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_00_dou_00005808
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_01_dou_00005810
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0000EB78:
	.4byte str_fune_R_dou_00005820
	.4byte 0x00020000
	.4byte 0x42F00000
	.4byte 0x00000000
	.4byte 0xC2800000
	.4byte 0x0A320000
	.4byte str_A1_kabe_dou_00005828
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC24C0000
	.4byte 0x14280000
	.4byte str_iwa_01_dou_00005830
	.4byte 0x00020001
	.4byte 0x43680000
	.4byte 0x00000000
	.4byte 0xC1A80000
	.4byte 0x003C0000
	.4byte str_iwa_02_dou_00005838
	.4byte 0x00020001
	.4byte 0xC36A0000
	.4byte 0x00000000
	.4byte 0xC1A80000
	.4byte 0x0A320000
	.4byte str_iwa_03_dou_00005840
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2180000
	.4byte 0x14280000
	.4byte str_B_kabe_dou_000057b0
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_02_dou_00005848
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A320000
	.4byte str_nami_03_dou_00005850
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14280000
	.4byte str_nami_04_dou_00005858
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x1E1E0000
	.4byte str_C_kabe_dou_00005800
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_00_dou_00005808
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_01_dou_00005810
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0000EC98:
	.4byte str_A1_kabe_dou_00005828
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC24C0000
	.4byte 0x14280000
	.4byte str_iwa_01_dou_00005830
	.4byte 0x00020001
	.4byte 0x43400000
	.4byte 0x00000000
	.4byte 0x42780000
	.4byte 0x003C0000
	.4byte str_iwa_02_dou_00005838
	.4byte 0x00020001
	.4byte 0xC32D0000
	.4byte 0x00000000
	.4byte 0x42540000
	.4byte 0x0A320000
	.4byte str_iwa_03_dou_00005840
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2180000
	.4byte 0x14280000
	.4byte str_B_kabe_dou_000057b0
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_02_dou_00005848
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0A320000
	.4byte str_nami_03_dou_00005850
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14280000
	.4byte str_nami_04_dou_00005858
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x1E1E0000
	.4byte str_C_kabe_dou_00005800
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_00_dou_00005808
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_01_dou_00005810
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.endobj dou_btlobject_data

# .data:0x518 | 0xEDA0 | size: 0xA38
.obj dou_btlstage_data, local
	.4byte str_bti_01_dou_00005860
	.4byte str_stg_05_4_dou_00005868
	.4byte 0x00000005
	.4byte dou_btlobject_data
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
	.4byte 0x00010101
.L_0000EF54:
	.4byte str_bti_01_dou_00005860
	.4byte str_stg_05_4_dou_00005868
	.4byte 0x00000002
	.rel dou_btlobject_data, .L_0000E950
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
	.4byte 0x00010101
.L_0000F108:
	.4byte str_bti_01_dou_00005860
	.4byte str_stg_05_5_dou_00005874
	.4byte 0x00000008
	.rel dou_btlobject_data, .L_0000E980
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
.L_0000F2BC:
	.4byte str_bti_01_dou_00005860
	.4byte str_stg_05_3_dou_00005880
	.4byte 0x0000000D
	.rel dou_btlobject_data, .L_0000EA40
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
	.4byte bgset_dou_wave_event
	.4byte 0x00000000
	.4byte 0x00010101
.L_0000F470:
	.4byte str_bti_01_dou_00005860
	.4byte str_stg_05_3_dou_00005880
	.4byte 0x0000000C
	.rel dou_btlobject_data, .L_0000EB78
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
	.4byte bgset_dou_wave_event
	.4byte 0x00000000
	.4byte 0x00010101
.L_0000F624:
	.4byte str_bti_01_dou_00005860
	.4byte str_stg_05_3_dou_00005880
	.4byte 0x0000000B
	.rel dou_btlobject_data, .L_0000EC98
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
	.4byte bgset_dou_wave_event
	.4byte 0x00000000
	.4byte 0x00010101
.endobj dou_btlstage_data

# .data:0xF50 | 0xF7D8 | size: 0x90
.obj btlparty_dou_dou_00_01_off_1, local
	.4byte unit_kuriboo_5_data_110F8
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
	.4byte 0x00000000
	.4byte unit_kuriboo_5_data_110F8
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
	.4byte unit_kuriboo_5_data_110F8
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
.endobj btlparty_dou_dou_00_01_off_1

# .data:0xFE0 | 0xF868 | size: 0x20
.obj btlgrp_dou_dou_00_01_off_1, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_00_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_00_01_off_1

# .data:0x1000 | 0xF888 | size: 0x90
.obj btlparty_dou_dou_01_01_off_01, local
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
.endobj btlparty_dou_dou_01_01_off_01

# .data:0x1090 | 0xF918 | size: 0x20
.obj btlgrp_dou_dou_01_01_off_01, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_01_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_dou_dou_01_01_off_01

# .data:0x10B0 | 0xF938 | size: 0x60
.obj btlparty_dou_dou_02_01_off_01, local
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
.endobj btlparty_dou_dou_02_01_off_01

# .data:0x1110 | 0xF998 | size: 0x20
.obj btlgrp_dou_dou_02_01_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_02_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_dou_dou_02_01_off_01

# .data:0x1130 | 0xF9B8 | size: 0xC0
.obj btlparty_dou_dou_02_02_off_01, local
	.4byte unit_bubble_5_data_11C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_bubble
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
	.4byte unit_bubble_5_data_11C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x42200000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_bubble
.endobj btlparty_dou_dou_02_02_off_01

# .data:0x11F0 | 0xFA78 | size: 0x20
.obj btlgrp_dou_dou_02_02_off_01, local
	.4byte 0x00000004
	.4byte btlparty_dou_dou_02_02_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_dou_dou_02_02_off_01

# .data:0x1210 | 0xFA98 | size: 0x60
.obj btlparty_dou_dou_03_01_off_01, local
	.4byte unit_killer_cannon_5_data_141B0
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
	.4byte battle_item_killer_cannon
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
.endobj btlparty_dou_dou_03_01_off_01

# .data:0x1270 | 0xFAF8 | size: 0x20
.obj btlgrp_dou_dou_03_01_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_03_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_03_01_off_01

# .data:0x1290 | 0xFB18 | size: 0x60
.obj btlparty_dou_dou_03_99_off_01, local
	.4byte unit_killer_5_data_13728
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
	.4byte battle_item_killer
	.4byte unit_killer_5_data_13728
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
	.4byte battle_item_killer
.endobj btlparty_dou_dou_03_99_off_01

# .data:0x12F0 | 0xFB78 | size: 0x20
.obj btlgrp_dou_dou_03_99_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_03_99_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_03_99_off_01

# .data:0x1310 | 0xFB98 | size: 0x60
.obj btlparty_dou_dou_03_02_off_01, local
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
.endobj btlparty_dou_dou_03_02_off_01

# .data:0x1370 | 0xFBF8 | size: 0x20
.obj btlgrp_dou_dou_03_02_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_03_02_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_03_02_off_01

# .data:0x1390 | 0xFC18 | size: 0x90
.obj btlparty_dou_dou_03_03_off_01, local
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
.endobj btlparty_dou_dou_03_03_off_01

# .data:0x1420 | 0xFCA8 | size: 0x20
.obj btlgrp_dou_dou_03_03_off_01, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_03_03_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_03_03_off_01

# .data:0x1440 | 0xFCC8 | size: 0x60
.obj btlparty_dou_dou_05_01_off_01, local
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
.endobj btlparty_dou_dou_05_01_off_01

# .data:0x14A0 | 0xFD28 | size: 0x20
.obj btlgrp_dou_dou_05_01_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_05_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_dou_dou_05_01_off_01

# .data:0x14C0 | 0xFD48 | size: 0x60
.obj btlparty_dou_dou_05_02_off_01, local
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
.endobj btlparty_dou_dou_05_02_off_01

# .data:0x1520 | 0xFDA8 | size: 0x20
.obj btlgrp_dou_dou_05_02_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_05_02_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_05_02_off_01

# .data:0x1540 | 0xFDC8 | size: 0x90
.obj btlparty_dou_dou_06_01_off_01, local
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
.endobj btlparty_dou_dou_06_01_off_01

# .data:0x15D0 | 0xFE58 | size: 0x20
.obj btlgrp_dou_dou_06_01_off_01, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_06_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_06_01_off_01

# .data:0x15F0 | 0xFE78 | size: 0xC0
.obj btlparty_dou_dou_06_02_off_01, local
	.4byte unit_patamet_5_data_19128
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_patamet
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
	.4byte unit_bubble_5_data_11C90
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
	.4byte 0x00000000
	.4byte unit_patamet_5_data_19128
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x42200000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_patamet
.endobj btlparty_dou_dou_06_02_off_01

# .data:0x16B0 | 0xFF38 | size: 0x20
.obj btlgrp_dou_dou_06_02_off_01, local
	.4byte 0x00000004
	.4byte btlparty_dou_dou_06_02_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_06_02_off_01

# .data:0x16D0 | 0xFF58 | size: 0x30
.obj btlparty_dou_dou_06_03_off_01, local
	.4byte unit_patamet_5_data_19128
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
	.4byte battle_item_patamet
.endobj btlparty_dou_dou_06_03_off_01

# .data:0x1700 | 0xFF88 | size: 0x20
.obj btlgrp_dou_dou_06_03_off_01, local
	.4byte 0x00000001
	.4byte btlparty_dou_dou_06_03_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_06_03_off_01

# .data:0x1720 | 0xFFA8 | size: 0x90
.obj btlparty_dou_dou_07_01_off_01, local
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
.endobj btlparty_dou_dou_07_01_off_01

# .data:0x17B0 | 0x10038 | size: 0x20
.obj btlgrp_dou_dou_07_01_off_01, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_07_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_07_01_off_01

# .data:0x17D0 | 0x10058 | size: 0xC0
.obj btlparty_dou_dou_08_01_off_01, local
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
	.4byte unit_heavy_bom_5_data_15A18
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
	.4byte battle_item_heavy_bom
.endobj btlparty_dou_dou_08_01_off_01

# .data:0x1890 | 0x10118 | size: 0x20
.obj btlgrp_dou_dou_08_01_off_01, local
	.4byte 0x00000004
	.4byte btlparty_dou_dou_08_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_08_01_off_01

# .data:0x18B0 | 0x10138 | size: 0x90
.obj btlparty_dou_dou_09_01_off_01, local
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
.endobj btlparty_dou_dou_09_01_off_01

# .data:0x1940 | 0x101C8 | size: 0x20
.obj btlgrp_dou_dou_09_01_off_01, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_09_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_dou_dou_09_01_off_01

# .data:0x1960 | 0x101E8 | size: 0x90
.obj btlparty_dou_dou_09_02_off_01, local
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_hermos_5_data_17140
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
	.4byte battle_item_hermos
	.4byte unit_bubble_5_data_11C90
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
	.4byte battle_item_bubble
.endobj btlparty_dou_dou_09_02_off_01

# .data:0x19F0 | 0x10278 | size: 0x20
.obj btlgrp_dou_dou_09_02_off_01, local
	.4byte 0x00000003
	.4byte btlparty_dou_dou_09_02_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_dou_dou_09_02_off_01

# .data:0x1A10 | 0x10298 | size: 0x60
.obj btlparty_dou_dou_12_01_off_01, local
	.4byte unit_killer_cannon_5_data_141B0
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
	.4byte battle_item_killer_cannon
	.4byte unit_killer_cannon_5_data_141B0
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
	.4byte battle_item_heavy_bom
.endobj btlparty_dou_dou_12_01_off_01

# .data:0x1A70 | 0x102F8 | size: 0x20
.obj btlgrp_dou_dou_12_01_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_12_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_12_01_off_01

# .data:0x1A90 | 0x10318 | size: 0x60
.obj btlparty_dou_dou_12_99_off_01, local
	.4byte unit_killer_5_data_13728
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
	.4byte battle_item_killer
	.4byte unit_killer_5_data_13728
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
	.4byte battle_item_killer
.endobj btlparty_dou_dou_12_99_off_01

# .data:0x1AF0 | 0x10378 | size: 0x20
.obj btlgrp_dou_dou_12_99_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_12_99_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_12_99_off_01

# .data:0x1B10 | 0x10398 | size: 0x60
.obj btlparty_dou_dou_13_01_off_01, local
	.4byte unit_killer_cannon_5_data_141B0
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
	.4byte battle_item_killer_cannon
	.4byte unit_killer_cannon_5_data_141B0
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
	.4byte battle_item_heavy_bom
.endobj btlparty_dou_dou_13_01_off_01

# .data:0x1B70 | 0x103F8 | size: 0x20
.obj btlgrp_dou_dou_13_01_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_13_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_13_01_off_01

# .data:0x1B90 | 0x10418 | size: 0x60
.obj btlparty_dou_dou_13_99_off_01, local
	.4byte unit_killer_5_data_13728
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
	.4byte battle_item_killer
	.4byte unit_killer_5_data_13728
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
	.4byte battle_item_killer
.endobj btlparty_dou_dou_13_99_off_01

# .data:0x1BF0 | 0x10478 | size: 0x20
.obj btlgrp_dou_dou_13_99_off_01, local
	.4byte 0x00000002
	.4byte btlparty_dou_dou_13_99_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_dou_dou_13_99_off_01

# .data:0x1C10 | 0x10498 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_dou_dou_00_01_off_1
	.rel dou_btlstage_data, .L_0000F2BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_test1_off

# .data:0x1C28 | 0x104B0 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_test2_off, local
	.4byte 0x00000032
	.4byte btlgrp_dou_dou_00_01_off_1
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_test2_off

# .data:0x1C40 | 0x104C8 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_test3_off, local
	.4byte 0x00000032
	.4byte btlgrp_dou_dou_00_01_off_1
	.rel dou_btlstage_data, .L_0000F108
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_test3_off

# .data:0x1C58 | 0x104E0 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_01_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_01_01_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_01_01_off

# .data:0x1C70 | 0x104F8 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_02_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_02_01_off_01
	.rel dou_btlstage_data, .L_0000F2BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_02_01_off

# .data:0x1C88 | 0x10510 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_02_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_02_02_off_01
	.rel dou_btlstage_data, .L_0000F2BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_02_02_off

# .data:0x1CA0 | 0x10528 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_03_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_03_01_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_03_01_off

# .data:0x1CB8 | 0x10540 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_03_99_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_03_99_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_03_99_off

# .data:0x1CD0 | 0x10558 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_03_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_03_02_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_03_02_off

# .data:0x1CE8 | 0x10570 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_03_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_03_03_off_01
	.rel dou_btlstage_data, .L_0000F470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_03_03_off

# .data:0x1D00 | 0x10588 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_05_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_05_01_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_05_01_off

# .data:0x1D18 | 0x105A0 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_05_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_05_02_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_05_02_off

# .data:0x1D30 | 0x105B8 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_06_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_06_01_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_06_01_off

# .data:0x1D48 | 0x105D0 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_06_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_06_02_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_06_02_off

# .data:0x1D60 | 0x105E8 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_06_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_06_03_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_06_03_off

# .data:0x1D78 | 0x10600 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_07_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_07_01_off_01
	.4byte dou_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_07_01_off

# .data:0x1D90 | 0x10618 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_08_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_08_01_off_01
	.rel dou_btlstage_data, .L_0000F470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_08_01_off

# .data:0x1DA8 | 0x10630 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_09_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_09_01_off_01
	.rel dou_btlstage_data, .L_0000F470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_09_01_off

# .data:0x1DC0 | 0x10648 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_09_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_09_02_off_01
	.rel dou_btlstage_data, .L_0000F470
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_09_02_off

# .data:0x1DD8 | 0x10660 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_12_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_12_01_off_01
	.rel dou_btlstage_data, .L_0000F624
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_12_01_off

# .data:0x1DF0 | 0x10678 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_12_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_12_01_off_01
	.rel dou_btlstage_data, .L_0000F624
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_12_02_off

# .data:0x1E08 | 0x10690 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_12_99_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_12_99_off_01
	.rel dou_btlstage_data, .L_0000F624
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_12_99_off

# .data:0x1E20 | 0x106A8 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_13_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_13_01_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_13_01_off

# .data:0x1E38 | 0x106C0 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_13_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_13_01_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_13_02_off

# .data:0x1E50 | 0x106D8 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_13_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_13_01_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_13_03_off

# .data:0x1E68 | 0x106F0 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_13_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_13_01_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_13_04_off

# .data:0x1E80 | 0x10708 | size: 0x18
.obj btlgrpsel_dou_btlno_dou_13_99_off, local
	.4byte 0x00000014
	.4byte btlgrp_dou_dou_13_99_off_01
	.rel dou_btlstage_data, .L_0000EF54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_dou_btlno_dou_13_99_off

# .data:0x1E98 | 0x10720 | size: 0x770
.obj btlsetup_dou_tbl_5_data_10720, global
	.4byte str_マップstg_05_3_dou_0000588c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_test1_off
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
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_マップstg_05_4_dou_000058b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_test2_off
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
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_マップstg_05_5_dou_000058c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_test3_off
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
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU01エルモス_dou_000058d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_01_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU02バブル_dou_000058e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_02_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU02バブル_dou_000058e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_02_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU03キラー大砲_dou_000058ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_03_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU03キラー_dou_000058fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_03_99_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU03ヘビーボム_dou_00005908
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_03_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU03ヘビーボム_dou_00005908
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_03_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU05エルモス_dou_00005918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_05_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU05パタメット_dou_00005928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_05_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU06パタメット_dou_00005938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_06_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU06パタメット_dou_00005938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_06_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU06パタメット_dou_00005938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_06_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU07エルモス_dou_00005948
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_07_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU08ヘビーボム_dou_00005958
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_08_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU09バブル_dou_00005968
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_09_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU09エルモス_dou_00005974
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_09_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU12キラー大砲_dou_00005984
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_12_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU12キラー大砲_dou_00005984
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_12_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU12キラー_dou_00005994
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_12_99_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU13キラー大砲_dou_000059a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_13_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU13キラー大砲_dou_000059a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_13_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU13キラー大砲_dou_000059a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_13_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU13キラー大砲_dou_000059a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_13_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte str_DOU13キラー_dou_000059b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_dou_btlno_dou_13_99_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_dou_0000589c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_dou_tbl_5_data_10720

# .data:0x2608 | 0x10E90 | size: 0xE0
.obj btl_dou_setup_no_tbl_5_data_10E90, global
	.4byte str_BTLNO_DOU_TEST1_dou_000059bc
	.4byte 0x00000000
	.4byte str_BTLNO_DOU_TEST2_dou_000059cc
	.4byte 0x00000001
	.4byte str_BTLNO_DOU_TEST3_dou_000059dc
	.4byte 0x00000002
	.4byte str_BTLNO_DOU_01_01_dou_000059ec
	.4byte 0x00000003
	.4byte str_BTLNO_DOU_02_01_dou_000059fc
	.4byte 0x00000004
	.4byte str_BTLNO_DOU_02_02_dou_00005a0c
	.4byte 0x00000005
	.4byte str_BTLNO_DOU_03_01_dou_00005a1c
	.4byte 0x00000006
	.4byte str_BTLNO_DOU_03_99_dou_00005a2c
	.4byte 0x00000007
	.4byte str_BTLNO_DOU_03_02_dou_00005a3c
	.4byte 0x00000008
	.4byte str_BTLNO_DOU_03_03_dou_00005a4c
	.4byte 0x00000009
	.4byte str_BTLNO_DOU_05_01_dou_00005a5c
	.4byte 0x0000000A
	.4byte str_BTLNO_DOU_05_02_dou_00005a6c
	.4byte 0x0000000B
	.4byte str_BTLNO_DOU_06_01_dou_00005a7c
	.4byte 0x0000000C
	.4byte str_BTLNO_DOU_06_02_dou_00005a8c
	.4byte 0x0000000D
	.4byte str_BTLNO_DOU_06_03_dou_00005a9c
	.4byte 0x0000000E
	.4byte str_BTLNO_DOU_07_01_dou_00005aac
	.4byte 0x0000000F
	.4byte str_BTLNO_DOU_08_01_dou_00005abc
	.4byte 0x00000010
	.4byte str_BTLNO_DOU_09_01_dou_00005acc
	.4byte 0x00000011
	.4byte str_BTLNO_DOU_09_02_dou_00005adc
	.4byte 0x00000012
	.4byte str_BTLNO_DOU_12_01_dou_00005aec
	.4byte 0x00000013
	.4byte str_BTLNO_DOU_12_02_dou_00005afc
	.4byte 0x00000014
	.4byte str_BTLNO_DOU_12_99_dou_00005b0c
	.4byte 0x00000015
	.4byte str_BTLNO_DOU_13_01_dou_00005b1c
	.4byte 0x00000016
	.4byte str_BTLNO_DOU_13_02_dou_00005b2c
	.4byte 0x00000017
	.4byte str_BTLNO_DOU_13_03_dou_00005b3c
	.4byte 0x00000018
	.4byte str_BTLNO_DOU_13_04_dou_00005b4c
	.4byte 0x00000019
	.4byte str_BTLNO_DOU_13_99_dou_00005b5c
	.4byte 0x0000001A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_dou_setup_no_tbl_5_data_10E90

# .data:0x26E8 | 0x10F70 | size: 0x134
.obj bgset_dou_wave_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000190
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x000009C4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_00_dou_00005808
	.4byte 0xFE363C80
	.4byte 0x00000320
	.4byte 0x0000001E
	.4byte 0xFE363C81
	.4byte 0x0000012C
	.4byte 0x0000000A
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_01_dou_00005810
	.4byte 0xFE363C82
	.4byte 0x00000258
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x000000FA
	.4byte 0x00000006
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_02_dou_00005848
	.4byte 0xFE363C84
	.4byte 0x0000044C
	.4byte 0x00000028
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00000007
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_03_dou_00005850
	.4byte 0xFE363C86
	.4byte 0x000004E2
	.4byte 0x00000032
	.4byte 0xFE363C87
	.4byte 0x000001C2
	.4byte 0x00000008
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_04_dou_00005858
	.4byte 0xFE363C88
	.4byte 0x0000044C
	.4byte 0x00000032
	.4byte 0xFE363C89
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_dou_wave_event

# .data:0x281C | 0x110A4 | size: 0x4
.obj gap_04_000110A4_data, global
.hidden gap_04_000110A4_data
	.4byte 0x00000000
.endobj gap_04_000110A4_data
