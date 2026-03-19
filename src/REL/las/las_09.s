.include "macros.inc"
.file "las_09.o"

# 0x00004A80..0x00004B64 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x4A80 | size: 0xE4
.fn eff_guruguru, local
/* 00004A80 00004B4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00004A84 00004B50  7C 08 02 A6 */	mflr r0
/* 00004A88 00004B54  90 01 00 54 */	stw r0, 0x54(r1)
/* 00004A8C 00004B58  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00004A90 00004B5C  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00004A94 00004B60  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00004A98 00004B64  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00004A9C 00004B68  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00004AA0 00004B6C  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00004AA4 00004B70  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00004AA8 00004B74  7C 7D 1B 78 */	mr r29, r3
/* 00004AAC 00004B78  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004AB0 00004B7C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004AB4 00004B80  4B FF B6 89 */	bl evtGetValue
/* 00004AB8 00004B84  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004ABC 00004B88  7C 7E 1B 78 */	mr r30, r3
/* 00004AC0 00004B8C  7F A3 EB 78 */	mr r3, r29
/* 00004AC4 00004B90  4B FF B6 79 */	bl evtGetFloat
/* 00004AC8 00004B94  FF E0 08 90 */	fmr f31, f1
/* 00004ACC 00004B98  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00004AD0 00004B9C  7F A3 EB 78 */	mr r3, r29
/* 00004AD4 00004BA0  4B FF B6 69 */	bl evtGetFloat
/* 00004AD8 00004BA4  FF C0 08 90 */	fmr f30, f1
/* 00004ADC 00004BA8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00004AE0 00004BAC  7F A3 EB 78 */	mr r3, r29
/* 00004AE4 00004BB0  4B FF B6 59 */	bl evtGetFloat
/* 00004AE8 00004BB4  FF A0 08 90 */	fmr f29, f1
/* 00004AEC 00004BB8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00004AF0 00004BBC  7F A3 EB 78 */	mr r3, r29
/* 00004AF4 00004BC0  4B FF B6 49 */	bl evtGetFloat
/* 00004AF8 00004BC4  FC 00 08 90 */	fmr f0, f1
/* 00004AFC 00004BC8  38 60 00 00 */	li r3, 0x0
/* 00004B00 00004BCC  FC 20 F8 90 */	fmr f1, f31
/* 00004B04 00004BD0  38 80 00 03 */	li r4, 0x3
/* 00004B08 00004BD4  FC 40 F0 90 */	fmr f2, f30
/* 00004B0C 00004BD8  FC 80 00 90 */	fmr f4, f0
/* 00004B10 00004BDC  FC 60 E8 90 */	fmr f3, f29
/* 00004B14 00004BE0  4B FF B6 29 */	bl effGuruguruN64Entry
/* 00004B18 00004BE4  3C 80 00 00 */	lis r4, float_0p8_las_00012de0@ha
/* 00004B1C 00004BE8  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 00004B20 00004BEC  38 C4 00 00 */	addi r6, r4, float_0p8_las_00012de0@l
/* 00004B24 00004BF0  7F C4 F3 78 */	mr r4, r30
/* 00004B28 00004BF4  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00004B2C 00004BF8  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 00004B30 00004BFC  4B FF B6 0D */	bl effSetName
/* 00004B34 00004C00  38 60 00 02 */	li r3, 0x2
/* 00004B38 00004C04  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00004B3C 00004C08  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00004B40 00004C0C  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00004B44 00004C10  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00004B48 00004C14  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00004B4C 00004C18  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00004B50 00004C1C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00004B54 00004C20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00004B58 00004C24  7C 08 03 A6 */	mtlr r0
/* 00004B5C 00004C28  38 21 00 50 */	addi r1, r1, 0x50
/* 00004B60 00004C2C  4E 80 00 20 */	blr
.endfn eff_guruguru

# 0x00000D60..0x00001380 | size: 0x620
.rodata
.balign 8

# .rodata:0x0 | 0xD60 | size: 0xA
.obj str_S_door1_1_las_000127c8, local
	.string "S_door1_1"
.endobj str_S_door1_1_las_000127c8

# .rodata:0xA | 0xD6A | size: 0x2
.obj gap_03_00000D6A_rodata, global
.hidden gap_03_00000D6A_rodata
	.2byte 0x0000
.endobj gap_03_00000D6A_rodata

# .rodata:0xC | 0xD6C | size: 0xA
.obj str_S_door1_2_las_000127d4, local
	.string "S_door1_2"
.endobj str_S_door1_2_las_000127d4

# .rodata:0x16 | 0xD76 | size: 0x2
.obj gap_03_00000D76_rodata, global
.hidden gap_03_00000D76_rodata
	.2byte 0x0000
.endobj gap_03_00000D76_rodata

# .rodata:0x18 | 0xD78 | size: 0xA
.obj str_S_door2_1_las_000127e0, local
	.string "S_door2_1"
.endobj str_S_door2_1_las_000127e0

# .rodata:0x22 | 0xD82 | size: 0x2
.obj gap_03_00000D82_rodata, global
.hidden gap_03_00000D82_rodata
	.2byte 0x0000
.endobj gap_03_00000D82_rodata

# .rodata:0x24 | 0xD84 | size: 0xA
.obj str_S_door2_2_las_000127ec, local
	.string "S_door2_2"
.endobj str_S_door2_2_las_000127ec

# .rodata:0x2E | 0xD8E | size: 0x2
.obj gap_03_00000D8E_rodata, global
.hidden gap_03_00000D8E_rodata
	.2byte 0x0000
.endobj gap_03_00000D8E_rodata

# .rodata:0x30 | 0xD90 | size: 0xA
.obj str_S_door3_1_las_000127f8, local
	.string "S_door3_1"
.endobj str_S_door3_1_las_000127f8

# .rodata:0x3A | 0xD9A | size: 0x2
.obj gap_03_00000D9A_rodata, global
.hidden gap_03_00000D9A_rodata
	.2byte 0x0000
.endobj gap_03_00000D9A_rodata

# .rodata:0x3C | 0xD9C | size: 0xA
.obj str_S_door3_2_las_00012804, local
	.string "S_door3_2"
.endobj str_S_door3_2_las_00012804

# .rodata:0x46 | 0xDA6 | size: 0x2
.obj gap_03_00000DA6_rodata, global
.hidden gap_03_00000DA6_rodata
	.2byte 0x0000
.endobj gap_03_00000DA6_rodata

# .rodata:0x48 | 0xDA8 | size: 0x7
.obj str_w_bero_las_00012810, local
	.string "w_bero"
.endobj str_w_bero_las_00012810

# .rodata:0x4F | 0xDAF | size: 0x1
.obj gap_03_00000DAF_rodata, global
.hidden gap_03_00000DAF_rodata
	.byte 0x00
.endobj gap_03_00000DAF_rodata

# .rodata:0x50 | 0xDB0 | size: 0x7
.obj str_las_08_las_00012818, local
	.string "las_08"
.endobj str_las_08_las_00012818

# .rodata:0x57 | 0xDB7 | size: 0x1
.obj gap_03_00000DB7_rodata, global
.hidden gap_03_00000DB7_rodata
	.byte 0x00
.endobj gap_03_00000DB7_rodata

# .rodata:0x58 | 0xDB8 | size: 0x9
.obj str_e_bero_1_las_00012820, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_00012820

# .rodata:0x61 | 0xDC1 | size: 0x3
.obj gap_03_00000DC1_rodata, global
.hidden gap_03_00000DC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000DC1_rodata

# .rodata:0x64 | 0xDC4 | size: 0x7
.obj str_e_bero_las_0001282c, local
	.string "e_bero"
.endobj str_e_bero_las_0001282c

# .rodata:0x6B | 0xDCB | size: 0x1
.obj gap_03_00000DCB_rodata, global
.hidden gap_03_00000DCB_rodata
	.byte 0x00
.endobj gap_03_00000DCB_rodata

# .rodata:0x6C | 0xDCC | size: 0x7
.obj str_las_19_las_00012834, local
	.string "las_19"
.endobj str_las_19_las_00012834

# .rodata:0x73 | 0xDD3 | size: 0x1
.obj gap_03_00000DD3_rodata, global
.hidden gap_03_00000DD3_rodata
	.byte 0x00
.endobj gap_03_00000DD3_rodata

# .rodata:0x74 | 0xDD4 | size: 0x7
.obj str_n_bero_las_0001283c, local
	.string "n_bero"
.endobj str_n_bero_las_0001283c

# .rodata:0x7B | 0xDDB | size: 0x1
.obj gap_03_00000DDB_rodata, global
.hidden gap_03_00000DDB_rodata
	.byte 0x00
.endobj gap_03_00000DDB_rodata

# .rodata:0x7C | 0xDDC | size: 0x7
.obj str_las_10_las_00012844, local
	.string "las_10"
.endobj str_las_10_las_00012844

# .rodata:0x83 | 0xDE3 | size: 0x1
.obj gap_03_00000DE3_rodata, global
.hidden gap_03_00000DE3_rodata
	.byte 0x00
.endobj gap_03_00000DE3_rodata

# .rodata:0x84 | 0xDE4 | size: 0x7
.obj str_s_bero_las_0001284c, local
	.string "s_bero"
.endobj str_s_bero_las_0001284c

# .rodata:0x8B | 0xDEB | size: 0x1
.obj gap_03_00000DEB_rodata, global
.hidden gap_03_00000DEB_rodata
	.byte 0x00
.endobj gap_03_00000DEB_rodata

# .rodata:0x8C | 0xDEC | size: 0x8
.obj str_dokan_1_las_00012854, local
	.string "dokan_1"
.endobj str_dokan_1_las_00012854

# .rodata:0x94 | 0xDF4 | size: 0x8
.obj str_dokan_5_las_0001285c, local
	.string "dokan_5"
.endobj str_dokan_5_las_0001285c

# .rodata:0x9C | 0xDFC | size: 0x8
.obj str_dokan_2_las_00012864, local
	.string "dokan_2"
.endobj str_dokan_2_las_00012864

# .rodata:0xA4 | 0xE04 | size: 0x8
.obj str_dokan_4_las_0001286c, local
	.string "dokan_4"
.endobj str_dokan_4_las_0001286c

# .rodata:0xAC | 0xE0C | size: 0x7
.obj str_mod_00_las_00012874, local
	.string "mod_00"
.endobj str_mod_00_las_00012874

# .rodata:0xB3 | 0xE13 | size: 0x1
.obj gap_03_00000E13_rodata, global
.hidden gap_03_00000E13_rodata
	.byte 0x00
.endobj gap_03_00000E13_rodata

# .rodata:0xB4 | 0xE14 | size: 0x7
.obj str_mod_01_las_0001287c, local
	.string "mod_01"
.endobj str_mod_01_las_0001287c

# .rodata:0xBB | 0xE1B | size: 0x1
.obj gap_03_00000E1B_rodata, global
.hidden gap_03_00000E1B_rodata
	.byte 0x00
.endobj gap_03_00000E1B_rodata

# .rodata:0xBC | 0xE1C | size: 0x7
.obj str_mod_02_las_00012884, local
	.string "mod_02"
.endobj str_mod_02_las_00012884

# .rodata:0xC3 | 0xE23 | size: 0x1
.obj gap_03_00000E23_rodata, global
.hidden gap_03_00000E23_rodata
	.byte 0x00
.endobj gap_03_00000E23_rodata

# .rodata:0xC4 | 0xE24 | size: 0x7
.obj str_mod_03_las_0001288c, local
	.string "mod_03"
.endobj str_mod_03_las_0001288c

# .rodata:0xCB | 0xE2B | size: 0x1
.obj gap_03_00000E2B_rodata, global
.hidden gap_03_00000E2B_rodata
	.byte 0x00
.endobj gap_03_00000E2B_rodata

# .rodata:0xCC | 0xE2C | size: 0x7
.obj str_mod_05_las_00012894, local
	.string "mod_05"
.endobj str_mod_05_las_00012894

# .rodata:0xD3 | 0xE33 | size: 0x1
.obj gap_03_00000E33_rodata, global
.hidden gap_03_00000E33_rodata
	.byte 0x00
.endobj gap_03_00000E33_rodata

# .rodata:0xD4 | 0xE34 | size: 0x7
.obj str_mod_06_las_0001289c, local
	.string "mod_06"
.endobj str_mod_06_las_0001289c

# .rodata:0xDB | 0xE3B | size: 0x1
.obj gap_03_00000E3B_rodata, global
.hidden gap_03_00000E3B_rodata
	.byte 0x00
.endobj gap_03_00000E3B_rodata

# .rodata:0xDC | 0xE3C | size: 0x7
.obj str_mod_07_las_000128a4, local
	.string "mod_07"
.endobj str_mod_07_las_000128a4

# .rodata:0xE3 | 0xE43 | size: 0x1
.obj gap_03_00000E43_rodata, global
.hidden gap_03_00000E43_rodata
	.byte 0x00
.endobj gap_03_00000E43_rodata

# .rodata:0xE4 | 0xE44 | size: 0x7
.obj str_mod_08_las_000128ac, local
	.string "mod_08"
.endobj str_mod_08_las_000128ac

# .rodata:0xEB | 0xE4B | size: 0x1
.obj gap_03_00000E4B_rodata, global
.hidden gap_03_00000E4B_rodata
	.byte 0x00
.endobj gap_03_00000E4B_rodata

# .rodata:0xEC | 0xE4C | size: 0x7
.obj str_mod_09_las_000128b4, local
	.string "mod_09"
.endobj str_mod_09_las_000128b4

# .rodata:0xF3 | 0xE53 | size: 0x1
.obj gap_03_00000E53_rodata, global
.hidden gap_03_00000E53_rodata
	.byte 0x00
.endobj gap_03_00000E53_rodata

# .rodata:0xF4 | 0xE54 | size: 0x7
.obj str_mod_10_las_000128bc, local
	.string "mod_10"
.endobj str_mod_10_las_000128bc

# .rodata:0xFB | 0xE5B | size: 0x1
.obj gap_03_00000E5B_rodata, global
.hidden gap_03_00000E5B_rodata
	.byte 0x00
.endobj gap_03_00000E5B_rodata

# .rodata:0xFC | 0xE5C | size: 0x7
.obj str_mod_11_las_000128c4, local
	.string "mod_11"
.endobj str_mod_11_las_000128c4

# .rodata:0x103 | 0xE63 | size: 0x1
.obj gap_03_00000E63_rodata, global
.hidden gap_03_00000E63_rodata
	.byte 0x00
.endobj gap_03_00000E63_rodata

# .rodata:0x104 | 0xE64 | size: 0x7
.obj str_mod_12_las_000128cc, local
	.string "mod_12"
.endobj str_mod_12_las_000128cc

# .rodata:0x10B | 0xE6B | size: 0x1
.obj gap_03_00000E6B_rodata, global
.hidden gap_03_00000E6B_rodata
	.byte 0x00
.endobj gap_03_00000E6B_rodata

# .rodata:0x10C | 0xE6C | size: 0x7
.obj str_mod_13_las_000128d4, local
	.string "mod_13"
.endobj str_mod_13_las_000128d4

# .rodata:0x113 | 0xE73 | size: 0x1
.obj gap_03_00000E73_rodata, global
.hidden gap_03_00000E73_rodata
	.byte 0x00
.endobj gap_03_00000E73_rodata

# .rodata:0x114 | 0xE74 | size: 0x7
.obj str_mod_14_las_000128dc, local
	.string "mod_14"
.endobj str_mod_14_las_000128dc

# .rodata:0x11B | 0xE7B | size: 0x1
.obj gap_03_00000E7B_rodata, global
.hidden gap_03_00000E7B_rodata
	.byte 0x00
.endobj gap_03_00000E7B_rodata

# .rodata:0x11C | 0xE7C | size: 0x7
.obj str_mod_15_las_000128e4, local
	.string "mod_15"
.endobj str_mod_15_las_000128e4

# .rodata:0x123 | 0xE83 | size: 0x1
.obj gap_03_00000E83_rodata, global
.hidden gap_03_00000E83_rodata
	.byte 0x00
.endobj gap_03_00000E83_rodata

# .rodata:0x124 | 0xE84 | size: 0x7
.obj str_mod_16_las_000128ec, local
	.string "mod_16"
.endobj str_mod_16_las_000128ec

# .rodata:0x12B | 0xE8B | size: 0x1
.obj gap_03_00000E8B_rodata, global
.hidden gap_03_00000E8B_rodata
	.byte 0x00
.endobj gap_03_00000E8B_rodata

# .rodata:0x12C | 0xE8C | size: 0x7
.obj str_mod_17_las_000128f4, local
	.string "mod_17"
.endobj str_mod_17_las_000128f4

# .rodata:0x133 | 0xE93 | size: 0x1
.obj gap_03_00000E93_rodata, global
.hidden gap_03_00000E93_rodata
	.byte 0x00
.endobj gap_03_00000E93_rodata

# .rodata:0x134 | 0xE94 | size: 0x7
.obj str_mod_18_las_000128fc, local
	.string "mod_18"
.endobj str_mod_18_las_000128fc

# .rodata:0x13B | 0xE9B | size: 0x1
.obj gap_03_00000E9B_rodata, global
.hidden gap_03_00000E9B_rodata
	.byte 0x00
.endobj gap_03_00000E9B_rodata

# .rodata:0x13C | 0xE9C | size: 0x7
.obj str_mod_20_las_00012904, local
	.string "mod_20"
.endobj str_mod_20_las_00012904

# .rodata:0x143 | 0xEA3 | size: 0x1
.obj gap_03_00000EA3_rodata, global
.hidden gap_03_00000EA3_rodata
	.byte 0x00
.endobj gap_03_00000EA3_rodata

# .rodata:0x144 | 0xEA4 | size: 0x7
.obj str_mod_21_las_0001290c, local
	.string "mod_21"
.endobj str_mod_21_las_0001290c

# .rodata:0x14B | 0xEAB | size: 0x1
.obj gap_03_00000EAB_rodata, global
.hidden gap_03_00000EAB_rodata
	.byte 0x00
.endobj gap_03_00000EAB_rodata

# .rodata:0x14C | 0xEAC | size: 0x7
.obj str_mod_22_las_00012914, local
	.string "mod_22"
.endobj str_mod_22_las_00012914

# .rodata:0x153 | 0xEB3 | size: 0x1
.obj gap_03_00000EB3_rodata, global
.hidden gap_03_00000EB3_rodata
	.byte 0x00
.endobj gap_03_00000EB3_rodata

# .rodata:0x154 | 0xEB4 | size: 0x7
.obj str_mod_23_las_0001291c, local
	.string "mod_23"
.endobj str_mod_23_las_0001291c

# .rodata:0x15B | 0xEBB | size: 0x1
.obj gap_03_00000EBB_rodata, global
.hidden gap_03_00000EBB_rodata
	.byte 0x00
.endobj gap_03_00000EBB_rodata

# .rodata:0x15C | 0xEBC | size: 0x7
.obj str_mod_24_las_00012924, local
	.string "mod_24"
.endobj str_mod_24_las_00012924

# .rodata:0x163 | 0xEC3 | size: 0x1
.obj gap_03_00000EC3_rodata, global
.hidden gap_03_00000EC3_rodata
	.byte 0x00
.endobj gap_03_00000EC3_rodata

# .rodata:0x164 | 0xEC4 | size: 0x7
.obj str_mod_25_las_0001292c, local
	.string "mod_25"
.endobj str_mod_25_las_0001292c

# .rodata:0x16B | 0xECB | size: 0x1
.obj gap_03_00000ECB_rodata, global
.hidden gap_03_00000ECB_rodata
	.byte 0x00
.endobj gap_03_00000ECB_rodata

# .rodata:0x16C | 0xECC | size: 0x7
.obj str_mod_26_las_00012934, local
	.string "mod_26"
.endobj str_mod_26_las_00012934

# .rodata:0x173 | 0xED3 | size: 0x1
.obj gap_03_00000ED3_rodata, global
.hidden gap_03_00000ED3_rodata
	.byte 0x00
.endobj gap_03_00000ED3_rodata

# .rodata:0x174 | 0xED4 | size: 0x7
.obj str_mod_27_las_0001293c, local
	.string "mod_27"
.endobj str_mod_27_las_0001293c

# .rodata:0x17B | 0xEDB | size: 0x1
.obj gap_03_00000EDB_rodata, global
.hidden gap_03_00000EDB_rodata
	.byte 0x00
.endobj gap_03_00000EDB_rodata

# .rodata:0x17C | 0xEDC | size: 0x7
.obj str_mod_28_las_00012944, local
	.string "mod_28"
.endobj str_mod_28_las_00012944

# .rodata:0x183 | 0xEE3 | size: 0x1
.obj gap_03_00000EE3_rodata, global
.hidden gap_03_00000EE3_rodata
	.byte 0x00
.endobj gap_03_00000EE3_rodata

# .rodata:0x184 | 0xEE4 | size: 0x7
.obj str_mod_29_las_0001294c, local
	.string "mod_29"
.endobj str_mod_29_las_0001294c

# .rodata:0x18B | 0xEEB | size: 0x1
.obj gap_03_00000EEB_rodata, global
.hidden gap_03_00000EEB_rodata
	.byte 0x00
.endobj gap_03_00000EEB_rodata

# .rodata:0x18C | 0xEEC | size: 0x7
.obj str_mod_30_las_00012954, local
	.string "mod_30"
.endobj str_mod_30_las_00012954

# .rodata:0x193 | 0xEF3 | size: 0x1
.obj gap_03_00000EF3_rodata, global
.hidden gap_03_00000EF3_rodata
	.byte 0x00
.endobj gap_03_00000EF3_rodata

# .rodata:0x194 | 0xEF4 | size: 0x7
.obj str_mod_31_las_0001295c, local
	.string "mod_31"
.endobj str_mod_31_las_0001295c

# .rodata:0x19B | 0xEFB | size: 0x1
.obj gap_03_00000EFB_rodata, global
.hidden gap_03_00000EFB_rodata
	.byte 0x00
.endobj gap_03_00000EFB_rodata

# .rodata:0x19C | 0xEFC | size: 0x7
.obj str_mod_32_las_00012964, local
	.string "mod_32"
.endobj str_mod_32_las_00012964

# .rodata:0x1A3 | 0xF03 | size: 0x1
.obj gap_03_00000F03_rodata, global
.hidden gap_03_00000F03_rodata
	.byte 0x00
.endobj gap_03_00000F03_rodata

# .rodata:0x1A4 | 0xF04 | size: 0x7
.obj str_mod_33_las_0001296c, local
	.string "mod_33"
.endobj str_mod_33_las_0001296c

# .rodata:0x1AB | 0xF0B | size: 0x1
.obj gap_03_00000F0B_rodata, global
.hidden gap_03_00000F0B_rodata
	.byte 0x00
.endobj gap_03_00000F0B_rodata

# .rodata:0x1AC | 0xF0C | size: 0x7
.obj str_mod_34_las_00012974, local
	.string "mod_34"
.endobj str_mod_34_las_00012974

# .rodata:0x1B3 | 0xF13 | size: 0x1
.obj gap_03_00000F13_rodata, global
.hidden gap_03_00000F13_rodata
	.byte 0x00
.endobj gap_03_00000F13_rodata

# .rodata:0x1B4 | 0xF14 | size: 0x7
.obj str_mod_35_las_0001297c, local
	.string "mod_35"
.endobj str_mod_35_las_0001297c

# .rodata:0x1BB | 0xF1B | size: 0x1
.obj gap_03_00000F1B_rodata, global
.hidden gap_03_00000F1B_rodata
	.byte 0x00
.endobj gap_03_00000F1B_rodata

# .rodata:0x1BC | 0xF1C | size: 0x7
.obj str_mod_36_las_00012984, local
	.string "mod_36"
.endobj str_mod_36_las_00012984

# .rodata:0x1C3 | 0xF23 | size: 0x1
.obj gap_03_00000F23_rodata, global
.hidden gap_03_00000F23_rodata
	.byte 0x00
.endobj gap_03_00000F23_rodata

# .rodata:0x1C4 | 0xF24 | size: 0x7
.obj str_mod_37_las_0001298c, local
	.string "mod_37"
.endobj str_mod_37_las_0001298c

# .rodata:0x1CB | 0xF2B | size: 0x1
.obj gap_03_00000F2B_rodata, global
.hidden gap_03_00000F2B_rodata
	.byte 0x00
.endobj gap_03_00000F2B_rodata

# .rodata:0x1CC | 0xF2C | size: 0x7
.obj str_mod_38_las_00012994, local
	.string "mod_38"
.endobj str_mod_38_las_00012994

# .rodata:0x1D3 | 0xF33 | size: 0x1
.obj gap_03_00000F33_rodata, global
.hidden gap_03_00000F33_rodata
	.byte 0x00
.endobj gap_03_00000F33_rodata

# .rodata:0x1D4 | 0xF34 | size: 0x7
.obj str_mod_39_las_0001299c, local
	.string "mod_39"
.endobj str_mod_39_las_0001299c

# .rodata:0x1DB | 0xF3B | size: 0x1
.obj gap_03_00000F3B_rodata, global
.hidden gap_03_00000F3B_rodata
	.byte 0x00
.endobj gap_03_00000F3B_rodata

# .rodata:0x1DC | 0xF3C | size: 0x7
.obj str_mod_40_las_000129a4, local
	.string "mod_40"
.endobj str_mod_40_las_000129a4

# .rodata:0x1E3 | 0xF43 | size: 0x1
.obj gap_03_00000F43_rodata, global
.hidden gap_03_00000F43_rodata
	.byte 0x00
.endobj gap_03_00000F43_rodata

# .rodata:0x1E4 | 0xF44 | size: 0x7
.obj str_mod_41_las_000129ac, local
	.string "mod_41"
.endobj str_mod_41_las_000129ac

# .rodata:0x1EB | 0xF4B | size: 0x1
.obj gap_03_00000F4B_rodata, global
.hidden gap_03_00000F4B_rodata
	.byte 0x00
.endobj gap_03_00000F4B_rodata

# .rodata:0x1EC | 0xF4C | size: 0x7
.obj str_mod_42_las_000129b4, local
	.string "mod_42"
.endobj str_mod_42_las_000129b4

# .rodata:0x1F3 | 0xF53 | size: 0x1
.obj gap_03_00000F53_rodata, global
.hidden gap_03_00000F53_rodata
	.byte 0x00
.endobj gap_03_00000F53_rodata

# .rodata:0x1F4 | 0xF54 | size: 0x7
.obj str_mod_43_las_000129bc, local
	.string "mod_43"
.endobj str_mod_43_las_000129bc

# .rodata:0x1FB | 0xF5B | size: 0x1
.obj gap_03_00000F5B_rodata, global
.hidden gap_03_00000F5B_rodata
	.byte 0x00
.endobj gap_03_00000F5B_rodata

# .rodata:0x1FC | 0xF5C | size: 0x7
.obj str_mod_44_las_000129c4, local
	.string "mod_44"
.endobj str_mod_44_las_000129c4

# .rodata:0x203 | 0xF63 | size: 0x1
.obj gap_03_00000F63_rodata, global
.hidden gap_03_00000F63_rodata
	.byte 0x00
.endobj gap_03_00000F63_rodata

# .rodata:0x204 | 0xF64 | size: 0x7
.obj str_mod_45_las_000129cc, local
	.string "mod_45"
.endobj str_mod_45_las_000129cc

# .rodata:0x20B | 0xF6B | size: 0x1
.obj gap_03_00000F6B_rodata, global
.hidden gap_03_00000F6B_rodata
	.byte 0x00
.endobj gap_03_00000F6B_rodata

# .rodata:0x20C | 0xF6C | size: 0x7
.obj str_mod_46_las_000129d4, local
	.string "mod_46"
.endobj str_mod_46_las_000129d4

# .rodata:0x213 | 0xF73 | size: 0x1
.obj gap_03_00000F73_rodata, global
.hidden gap_03_00000F73_rodata
	.byte 0x00
.endobj gap_03_00000F73_rodata

# .rodata:0x214 | 0xF74 | size: 0x7
.obj str_mod_47_las_000129dc, local
	.string "mod_47"
.endobj str_mod_47_las_000129dc

# .rodata:0x21B | 0xF7B | size: 0x1
.obj gap_03_00000F7B_rodata, global
.hidden gap_03_00000F7B_rodata
	.byte 0x00
.endobj gap_03_00000F7B_rodata

# .rodata:0x21C | 0xF7C | size: 0x7
.obj str_mod_48_las_000129e4, local
	.string "mod_48"
.endobj str_mod_48_las_000129e4

# .rodata:0x223 | 0xF83 | size: 0x1
.obj gap_03_00000F83_rodata, global
.hidden gap_03_00000F83_rodata
	.byte 0x00
.endobj gap_03_00000F83_rodata

# .rodata:0x224 | 0xF84 | size: 0x7
.obj str_mod_49_las_000129ec, local
	.string "mod_49"
.endobj str_mod_49_las_000129ec

# .rodata:0x22B | 0xF8B | size: 0x1
.obj gap_03_00000F8B_rodata, global
.hidden gap_03_00000F8B_rodata
	.byte 0x00
.endobj gap_03_00000F8B_rodata

# .rodata:0x22C | 0xF8C | size: 0x7
.obj str_mod_50_las_000129f4, local
	.string "mod_50"
.endobj str_mod_50_las_000129f4

# .rodata:0x233 | 0xF93 | size: 0x1
.obj gap_03_00000F93_rodata, global
.hidden gap_03_00000F93_rodata
	.byte 0x00
.endobj gap_03_00000F93_rodata

# .rodata:0x234 | 0xF94 | size: 0x7
.obj str_mod_51_las_000129fc, local
	.string "mod_51"
.endobj str_mod_51_las_000129fc

# .rodata:0x23B | 0xF9B | size: 0x1
.obj gap_03_00000F9B_rodata, global
.hidden gap_03_00000F9B_rodata
	.byte 0x00
.endobj gap_03_00000F9B_rodata

# .rodata:0x23C | 0xF9C | size: 0x7
.obj str_mod_52_las_00012a04, local
	.string "mod_52"
.endobj str_mod_52_las_00012a04

# .rodata:0x243 | 0xFA3 | size: 0x1
.obj gap_03_00000FA3_rodata, global
.hidden gap_03_00000FA3_rodata
	.byte 0x00
.endobj gap_03_00000FA3_rodata

# .rodata:0x244 | 0xFA4 | size: 0x7
.obj str_mod_53_las_00012a0c, local
	.string "mod_53"
.endobj str_mod_53_las_00012a0c

# .rodata:0x24B | 0xFAB | size: 0x1
.obj gap_03_00000FAB_rodata, global
.hidden gap_03_00000FAB_rodata
	.byte 0x00
.endobj gap_03_00000FAB_rodata

# .rodata:0x24C | 0xFAC | size: 0x7
.obj str_mod_54_las_00012a14, local
	.string "mod_54"
.endobj str_mod_54_las_00012a14

# .rodata:0x253 | 0xFB3 | size: 0x1
.obj gap_03_00000FB3_rodata, global
.hidden gap_03_00000FB3_rodata
	.byte 0x00
.endobj gap_03_00000FB3_rodata

# .rodata:0x254 | 0xFB4 | size: 0x7
.obj str_mod_55_las_00012a1c, local
	.string "mod_55"
.endobj str_mod_55_las_00012a1c

# .rodata:0x25B | 0xFBB | size: 0x1
.obj gap_03_00000FBB_rodata, global
.hidden gap_03_00000FBB_rodata
	.byte 0x00
.endobj gap_03_00000FBB_rodata

# .rodata:0x25C | 0xFBC | size: 0x7
.obj str_mod_56_las_00012a24, local
	.string "mod_56"
.endobj str_mod_56_las_00012a24

# .rodata:0x263 | 0xFC3 | size: 0x1
.obj gap_03_00000FC3_rodata, global
.hidden gap_03_00000FC3_rodata
	.byte 0x00
.endobj gap_03_00000FC3_rodata

# .rodata:0x264 | 0xFC4 | size: 0x7
.obj str_mod_57_las_00012a2c, local
	.string "mod_57"
.endobj str_mod_57_las_00012a2c

# .rodata:0x26B | 0xFCB | size: 0x1
.obj gap_03_00000FCB_rodata, global
.hidden gap_03_00000FCB_rodata
	.byte 0x00
.endobj gap_03_00000FCB_rodata

# .rodata:0x26C | 0xFCC | size: 0x7
.obj str_mod_58_las_00012a34, local
	.string "mod_58"
.endobj str_mod_58_las_00012a34

# .rodata:0x273 | 0xFD3 | size: 0x1
.obj gap_03_00000FD3_rodata, global
.hidden gap_03_00000FD3_rodata
	.byte 0x00
.endobj gap_03_00000FD3_rodata

# .rodata:0x274 | 0xFD4 | size: 0xC
.obj str_stg8_las_11_las_00012a3c, local
	.string "stg8_las_11"
.endobj str_stg8_las_11_las_00012a3c

# .rodata:0x280 | 0xFE0 | size: 0x14
.obj str_SFX_OFF_WALL_BREAK1_las_00012a48, local
	.string "SFX_OFF_WALL_BREAK1"
.endobj str_SFX_OFF_WALL_BREAK1_las_00012a48

# .rodata:0x294 | 0xFF4 | size: 0xF
.obj str_OFF_d_bom_ver2_las_00012a5c, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_las_00012a5c

# .rodata:0x2A3 | 0x1003 | size: 0x1
.obj gap_03_00001003_rodata, global
.hidden gap_03_00001003_rodata
	.byte 0x00
.endobj gap_03_00001003_rodata

# .rodata:0x2A4 | 0x1004 | size: 0x4
.obj str_ofs_las_00012a6c, local
	.string "ofs"
.endobj str_ofs_las_00012a6c

# .rodata:0x2A8 | 0x1008 | size: 0x4
.obj str_img_las_00012a70, local
	.string "img"
.endobj str_img_las_00012a70

# .rodata:0x2AC | 0x100C | size: 0x4
.obj str_A_1_las_00012a74, local
	.string "A_1"
.endobj str_A_1_las_00012a74

# .rodata:0x2B0 | 0x1010 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_las_00012a78, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_las_00012a78

# .rodata:0x2C4 | 0x1024 | size: 0x5
.obj str_wan3_las_00012a8c, local
	.string "wan3"
.endobj str_wan3_las_00012a8c

# .rodata:0x2C9 | 0x1029 | size: 0x3
.obj gap_03_00001029_rodata, global
.hidden gap_03_00001029_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001029_rodata

# .rodata:0x2CC | 0x102C | size: 0x7
.obj str_A_wan1_las_00012a94, local
	.string "A_wan1"
.endobj str_A_wan1_las_00012a94

# .rodata:0x2D3 | 0x1033 | size: 0x1
.obj gap_03_00001033_rodata, global
.hidden gap_03_00001033_rodata
	.byte 0x00
.endobj gap_03_00001033_rodata

# .rodata:0x2D4 | 0x1034 | size: 0x5
.obj str_wan1_las_00012a9c, local
	.string "wan1"
.endobj str_wan1_las_00012a9c

# .rodata:0x2D9 | 0x1039 | size: 0x3
.obj gap_03_00001039_rodata, global
.hidden gap_03_00001039_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001039_rodata

# .rodata:0x2DC | 0x103C | size: 0x7
.obj str_A_wan2_las_00012aa4, local
	.string "A_wan2"
.endobj str_A_wan2_las_00012aa4

# .rodata:0x2E3 | 0x1043 | size: 0x1
.obj gap_03_00001043_rodata, global
.hidden gap_03_00001043_rodata
	.byte 0x00
.endobj gap_03_00001043_rodata

# .rodata:0x2E4 | 0x1044 | size: 0x10
.obj str_SFX_STG8_QUAKE2_las_00012aac, local
	.string "SFX_STG8_QUAKE2"
.endobj str_SFX_STG8_QUAKE2_las_00012aac

# .rodata:0x2F4 | 0x1054 | size: 0xE
.obj str_S_daizadai1_3_las_00012abc, local
	.string "S_daizadai1_3"
.endobj str_S_daizadai1_3_las_00012abc

# .rodata:0x302 | 0x1062 | size: 0x2
.obj gap_03_00001062_rodata, global
.hidden gap_03_00001062_rodata
	.2byte 0x0000
.endobj gap_03_00001062_rodata

# .rodata:0x304 | 0x1064 | size: 0x16
.obj str_SFX_STG8_PORT_APPEAR_las_00012acc, local
	.string "SFX_STG8_PORT_APPEAR1"
.endobj str_SFX_STG8_PORT_APPEAR_las_00012acc

# .rodata:0x31A | 0x107A | size: 0x2
.obj gap_03_0000107A_rodata, global
.hidden gap_03_0000107A_rodata
	.2byte 0x0000
.endobj gap_03_0000107A_rodata

# .rodata:0x31C | 0x107C | size: 0xE
.obj str_S_daizadai1_2_las_00012ae4, local
	.string "S_daizadai1_2"
.endobj str_S_daizadai1_2_las_00012ae4

# .rodata:0x32A | 0x108A | size: 0x2
.obj gap_03_0000108A_rodata, global
.hidden gap_03_0000108A_rodata
	.2byte 0x0000
.endobj gap_03_0000108A_rodata

# .rodata:0x32C | 0x108C | size: 0xE
.obj str_S_daizadai1_1_las_00012af4, local
	.string "S_daizadai1_1"
.endobj str_S_daizadai1_1_las_00012af4

# .rodata:0x33A | 0x109A | size: 0x2
.obj gap_03_0000109A_rodata, global
.hidden gap_03_0000109A_rodata
	.2byte 0x0000
.endobj gap_03_0000109A_rodata

# .rodata:0x33C | 0x109C | size: 0x16
.obj str_SFX_STG8_PORT_APPEAR_las_00012b04, local
	.string "SFX_STG8_PORT_APPEAR2"
.endobj str_SFX_STG8_PORT_APPEAR_las_00012b04

# .rodata:0x352 | 0x10B2 | size: 0x2
.obj gap_03_000010B2_rodata, global
.hidden gap_03_000010B2_rodata
	.2byte 0x0000
.endobj gap_03_000010B2_rodata

# .rodata:0x354 | 0x10B4 | size: 0xC
.obj str_A_daizadai1_las_00012b1c, local
	.string "A_daizadai1"
.endobj str_A_daizadai1_las_00012b1c

# .rodata:0x360 | 0x10C0 | size: 0xE
.obj str_S_Ship_Change_las_00012b28, local
	.string "S_Ship_Change"
.endobj str_S_Ship_Change_las_00012b28

# .rodata:0x36E | 0x10CE | size: 0x2
.obj gap_03_000010CE_rodata, global
.hidden gap_03_000010CE_rodata
	.2byte 0x0000
.endobj gap_03_000010CE_rodata

# .rodata:0x370 | 0x10D0 | size: 0xD
.obj str_Ship_Change2_las_00012b38, local
	.string "Ship_Change2"
.endobj str_Ship_Change2_las_00012b38

# .rodata:0x37D | 0x10DD | size: 0x3
.obj gap_03_000010DD_rodata, global
.hidden gap_03_000010DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010DD_rodata

# .rodata:0x380 | 0x10E0 | size: 0xE
.obj str_S_daizadai2_3_las_00012b48, local
	.string "S_daizadai2_3"
.endobj str_S_daizadai2_3_las_00012b48

# .rodata:0x38E | 0x10EE | size: 0x2
.obj gap_03_000010EE_rodata, global
.hidden gap_03_000010EE_rodata
	.2byte 0x0000
.endobj gap_03_000010EE_rodata

# .rodata:0x390 | 0x10F0 | size: 0xE
.obj str_S_daizadai2_2_las_00012b58, local
	.string "S_daizadai2_2"
.endobj str_S_daizadai2_2_las_00012b58

# .rodata:0x39E | 0x10FE | size: 0x2
.obj gap_03_000010FE_rodata, global
.hidden gap_03_000010FE_rodata
	.2byte 0x0000
.endobj gap_03_000010FE_rodata

# .rodata:0x3A0 | 0x1100 | size: 0xE
.obj str_S_daizadai2_1_las_00012b68, local
	.string "S_daizadai2_1"
.endobj str_S_daizadai2_1_las_00012b68

# .rodata:0x3AE | 0x110E | size: 0x2
.obj gap_03_0000110E_rodata, global
.hidden gap_03_0000110E_rodata
	.2byte 0x0000
.endobj gap_03_0000110E_rodata

# .rodata:0x3B0 | 0x1110 | size: 0xF
.obj str_S_Ship_Change1_las_00012b78, local
	.string "S_Ship_Change1"
.endobj str_S_Ship_Change1_las_00012b78

# .rodata:0x3BF | 0x111F | size: 0x1
.obj gap_03_0000111F_rodata, global
.hidden gap_03_0000111F_rodata
	.byte 0x00
.endobj gap_03_0000111F_rodata

# .rodata:0x3C0 | 0x1120 | size: 0xD
.obj str_Ship_Change1_las_00012b88, local
	.string "Ship_Change1"
.endobj str_Ship_Change1_las_00012b88

# .rodata:0x3CD | 0x112D | size: 0x3
.obj gap_03_0000112D_rodata, global
.hidden gap_03_0000112D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000112D_rodata

# .rodata:0x3D0 | 0x1130 | size: 0xC
.obj str_stg8_las_27_las_00012b98, local
	.string "stg8_las_27"
.endobj str_stg8_las_27_las_00012b98

# .rodata:0x3DC | 0x113C | size: 0xB
.obj str_マジョリン_las_00012ba4, local
	.4byte 0x837D8357
	.4byte 0x8387838A
	.byte 0x83, 0x93, 0x00
.endobj str_マジョリン_las_00012ba4

# .rodata:0x3E7 | 0x1147 | size: 0x1
.obj gap_03_00001147_rodata, global
.hidden gap_03_00001147_rodata
	.byte 0x00
.endobj gap_03_00001147_rodata

# .rodata:0x3E8 | 0x1148 | size: 0xC
.obj str_stg8_las_28_las_00012bb0, local
	.string "stg8_las_28"
.endobj str_stg8_las_28_las_00012bb0

# .rodata:0x3F4 | 0x1154 | size: 0x9
.obj str_マリリン_las_00012bbc, local
	.4byte 0x837D838A
	.4byte 0x838A8393
	.byte 0x00
.endobj str_マリリン_las_00012bbc

# .rodata:0x3FD | 0x115D | size: 0x3
.obj gap_03_0000115D_rodata, global
.hidden gap_03_0000115D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000115D_rodata

# .rodata:0x400 | 0x1160 | size: 0xC
.obj str_stg8_las_29_las_00012bc8, local
	.string "stg8_las_29"
.endobj str_stg8_las_29_las_00012bc8

# .rodata:0x40C | 0x116C | size: 0x9
.obj str_ランペル_las_00012bd4, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.byte 0x00
.endobj str_ランペル_las_00012bd4

# .rodata:0x415 | 0x1175 | size: 0x3
.obj gap_03_00001175_rodata, global
.hidden gap_03_00001175_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001175_rodata

# .rodata:0x418 | 0x1178 | size: 0xC
.obj str_stg8_las_30_las_00012be0, local
	.string "stg8_las_30"
.endobj str_stg8_las_30_las_00012be0

# .rodata:0x424 | 0x1184 | size: 0x3
.obj str_me_las_00012bec, local
	.string "me"
.endobj str_me_las_00012bec

# .rodata:0x427 | 0x1187 | size: 0x1
.obj gap_03_00001187_rodata, global
.hidden gap_03_00001187_rodata
	.byte 0x00
.endobj gap_03_00001187_rodata

# .rodata:0x428 | 0x1188 | size: 0x5
.obj str_にせ_las_00012bf0, local
	.4byte 0x82C982B9
	.byte 0x00
.endobj str_にせ_las_00012bf0

# .rodata:0x42D | 0x118D | size: 0x3
.obj gap_03_0000118D_rodata, global
.hidden gap_03_0000118D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000118D_rodata

# .rodata:0x430 | 0x1190 | size: 0x9
.obj str_c_kuri_h_las_00012bf8, local
	.string "c_kuri_h"
.endobj str_c_kuri_h_las_00012bf8

# .rodata:0x439 | 0x1199 | size: 0x3
.obj gap_03_00001199_rodata, global
.hidden gap_03_00001199_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001199_rodata

# .rodata:0x43C | 0x119C | size: 0xB
.obj str_クリハカセ_las_00012c04, local
	.4byte 0x834E838A
	.4byte 0x836E834A
	.byte 0x83, 0x5A, 0x00
.endobj str_クリハカセ_las_00012c04

# .rodata:0x447 | 0x11A7 | size: 0x1
.obj gap_03_000011A7_rodata, global
.hidden gap_03_000011A7_rodata
	.byte 0x00
.endobj gap_03_000011A7_rodata

# .rodata:0x448 | 0x11A8 | size: 0xF
.obj str_BGM_EVT_WITCH1_las_00012c10, local
	.string "BGM_EVT_WITCH1"
.endobj str_BGM_EVT_WITCH1_las_00012c10

# .rodata:0x457 | 0x11B7 | size: 0x1
.obj gap_03_000011B7_rodata, global
.hidden gap_03_000011B7_rodata
	.byte 0x00
.endobj gap_03_000011B7_rodata

# .rodata:0x458 | 0x11B8 | size: 0xC
.obj str_stg8_las_12_las_00012c20, local
	.string "stg8_las_12"
.endobj str_stg8_las_12_las_00012c20

# .rodata:0x464 | 0x11C4 | size: 0xF
.obj str_stg8_las_12_01_las_00012c2c, local
	.string "stg8_las_12_01"
.endobj str_stg8_las_12_01_las_00012c2c

# .rodata:0x473 | 0x11D3 | size: 0x1
.obj gap_03_000011D3_rodata, global
.hidden gap_03_000011D3_rodata
	.byte 0x00
.endobj gap_03_000011D3_rodata

# .rodata:0x474 | 0x11D4 | size: 0xC
.obj str_stg8_las_13_las_00012c3c, local
	.string "stg8_las_13"
.endobj str_stg8_las_13_las_00012c3c

# .rodata:0x480 | 0x11E0 | size: 0xC
.obj str_stg8_las_14_las_00012c48, local
	.string "stg8_las_14"
.endobj str_stg8_las_14_las_00012c48

# .rodata:0x48C | 0x11EC | size: 0xC
.obj str_stg8_las_15_las_00012c54, local
	.string "stg8_las_15"
.endobj str_stg8_las_15_las_00012c54

# .rodata:0x498 | 0x11F8 | size: 0xC
.obj str_kemuri_test_las_00012c60, local
	.string "kemuri_test"
.endobj str_kemuri_test_las_00012c60

# .rodata:0x4A4 | 0x1204 | size: 0x1B
.obj str_SFX_STG8_RANPEL_TRAN_las_00012c6c, local
	.string "SFX_STG8_RANPEL_TRANSFORM1"
.endobj str_SFX_STG8_RANPEL_TRAN_las_00012c6c

# .rodata:0x4BF | 0x121F | size: 0x1
.obj gap_03_0000121F_rodata, global
.hidden gap_03_0000121F_rodata
	.byte 0x00
.endobj gap_03_0000121F_rodata

# .rodata:0x4C0 | 0x1220 | size: 0xF
.obj str_stg8_las_15_01_las_00012c88, local
	.string "stg8_las_15_01"
.endobj str_stg8_las_15_01_las_00012c88

# .rodata:0x4CF | 0x122F | size: 0x1
.obj gap_03_0000122F_rodata, global
.hidden gap_03_0000122F_rodata
	.byte 0x00
.endobj gap_03_0000122F_rodata

# .rodata:0x4D0 | 0x1230 | size: 0xF
.obj str_stg8_las_15_02_las_00012c98, local
	.string "stg8_las_15_02"
.endobj str_stg8_las_15_02_las_00012c98

# .rodata:0x4DF | 0x123F | size: 0x1
.obj gap_03_0000123F_rodata, global
.hidden gap_03_0000123F_rodata
	.byte 0x00
.endobj gap_03_0000123F_rodata

# .rodata:0x4E0 | 0x1240 | size: 0xC
.obj str_stg8_las_16_las_00012ca8, local
	.string "stg8_las_16"
.endobj str_stg8_las_16_las_00012ca8

# .rodata:0x4EC | 0x124C | size: 0xC
.obj str_stg8_las_17_las_00012cb4, local
	.string "stg8_las_17"
.endobj str_stg8_las_17_las_00012cb4

# .rodata:0x4F8 | 0x1258 | size: 0xC
.obj str_stg8_las_18_las_00012cc0, local
	.string "stg8_las_18"
.endobj str_stg8_las_18_las_00012cc0

# .rodata:0x504 | 0x1264 | size: 0xC
.obj str_stg8_las_19_las_00012ccc, local
	.string "stg8_las_19"
.endobj str_stg8_las_19_las_00012ccc

# .rodata:0x510 | 0x1270 | size: 0xC
.obj str_stg8_las_20_las_00012cd8, local
	.string "stg8_las_20"
.endobj str_stg8_las_20_las_00012cd8

# .rodata:0x51C | 0x127C | size: 0xC
.obj str_stg8_las_21_las_00012ce4, local
	.string "stg8_las_21"
.endobj str_stg8_las_21_las_00012ce4

# .rodata:0x528 | 0x1288 | size: 0xC
.obj str_stg8_las_22_las_00012cf0, local
	.string "stg8_las_22"
.endobj str_stg8_las_22_las_00012cf0

# .rodata:0x534 | 0x1294 | size: 0xC
.obj str_stg8_las_23_las_00012cfc, local
	.string "stg8_las_23"
.endobj str_stg8_las_23_las_00012cfc

# .rodata:0x540 | 0x12A0 | size: 0x6
.obj str_M_I_Y_las_00012d08, local
	.string "M_I_Y"
.endobj str_M_I_Y_las_00012d08

# .rodata:0x546 | 0x12A6 | size: 0x2
.obj gap_03_000012A6_rodata, global
.hidden gap_03_000012A6_rodata
	.2byte 0x0000
.endobj gap_03_000012A6_rodata

# .rodata:0x548 | 0x12A8 | size: 0x8
.obj str_MJR_D_4_las_00012d10, local
	.string "MJR_D_4"
.endobj str_MJR_D_4_las_00012d10

# .rodata:0x550 | 0x12B0 | size: 0x8
.obj str_MRR_D_4_las_00012d18, local
	.string "MRR_D_4"
.endobj str_MRR_D_4_las_00012d18

# .rodata:0x558 | 0x12B8 | size: 0x4
.obj str_D_2_las_00012d20, local
	.string "D_2"
.endobj str_D_2_las_00012d20

# .rodata:0x55C | 0x12BC | size: 0x8
.obj str_MJR_T_3_las_00012d24, local
	.string "MJR_T_3"
.endobj str_MJR_T_3_las_00012d24

# .rodata:0x564 | 0x12C4 | size: 0x8
.obj str_MRR_T_2_las_00012d2c, local
	.string "MRR_T_2"
.endobj str_MRR_T_2_las_00012d2c

# .rodata:0x56C | 0x12CC | size: 0x4
.obj str_T_4_las_00012d34, local
	.string "T_4"
.endobj str_T_4_las_00012d34

# .rodata:0x570 | 0x12D0 | size: 0x5
.obj str_eff0_las_00012d38, local
	.string "eff0"
.endobj str_eff0_las_00012d38

# .rodata:0x575 | 0x12D5 | size: 0x3
.obj gap_03_000012D5_rodata, global
.hidden gap_03_000012D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012D5_rodata

# .rodata:0x578 | 0x12D8 | size: 0x5
.obj str_eff1_las_00012d40, local
	.string "eff1"
.endobj str_eff1_las_00012d40

# .rodata:0x57D | 0x12DD | size: 0x3
.obj gap_03_000012DD_rodata, global
.hidden gap_03_000012DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012DD_rodata

# .rodata:0x580 | 0x12E0 | size: 0x5
.obj str_eff2_las_00012d48, local
	.string "eff2"
.endobj str_eff2_las_00012d48

# .rodata:0x585 | 0x12E5 | size: 0x3
.obj gap_03_000012E5_rodata, global
.hidden gap_03_000012E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012E5_rodata

# .rodata:0x588 | 0x12E8 | size: 0x15
.obj str_SFX_STG8_WITCH_PIYO1_las_00012d50, local
	.string "SFX_STG8_WITCH_PIYO1"
.endobj str_SFX_STG8_WITCH_PIYO1_las_00012d50

# .rodata:0x59D | 0x12FD | size: 0x3
.obj gap_03_000012FD_rodata, global
.hidden gap_03_000012FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012FD_rodata

# .rodata:0x5A0 | 0x1300 | size: 0xC
.obj str_stg8_las_24_las_00012d68, local
	.string "stg8_las_24"
.endobj str_stg8_las_24_las_00012d68

# .rodata:0x5AC | 0x130C | size: 0xC
.obj str_stg8_las_25_las_00012d74, local
	.string "stg8_las_25"
.endobj str_stg8_las_25_las_00012d74

# .rodata:0x5B8 | 0x1318 | size: 0xC
.obj str_stg8_las_26_las_00012d80, local
	.string "stg8_las_26"
.endobj str_stg8_las_26_las_00012d80

# .rodata:0x5C4 | 0x1324 | size: 0xE
.obj str_ENV_STG8_LAS3_las_00012d8c, local
	.string "ENV_STG8_LAS3"
.endobj str_ENV_STG8_LAS3_las_00012d8c

# .rodata:0x5D2 | 0x1332 | size: 0x2
.obj gap_03_00001332_rodata, global
.hidden gap_03_00001332_rodata
	.2byte 0x0000
.endobj gap_03_00001332_rodata

# .rodata:0x5D4 | 0x1334 | size: 0x5
.obj str_mizu_las_00012d9c, local
	.string "mizu"
.endobj str_mizu_las_00012d9c

# .rodata:0x5D9 | 0x1339 | size: 0x3
.obj gap_03_00001339_rodata, global
.hidden gap_03_00001339_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001339_rodata

# .rodata:0x5DC | 0x133C | size: 0x6
.obj str_r_blk_las_00012da4, local
	.string "r_blk"
.endobj str_r_blk_las_00012da4

# .rodata:0x5E2 | 0x1342 | size: 0x2
.obj gap_03_00001342_rodata, global
.hidden gap_03_00001342_rodata
	.2byte 0x0000
.endobj gap_03_00001342_rodata

# .rodata:0x5E4 | 0x1344 | size: 0xA
.obj str_mobj_save_las_00012dac, local
	.string "mobj_save"
.endobj str_mobj_save_las_00012dac

# .rodata:0x5EE | 0x134E | size: 0x2
.obj gap_03_0000134E_rodata, global
.hidden gap_03_0000134E_rodata
	.2byte 0x0000
.endobj gap_03_0000134E_rodata

# .rodata:0x5F0 | 0x1350 | size: 0x8
.obj str_switch1_las_00012db8, local
	.string "switch1"
.endobj str_switch1_las_00012db8

# .rodata:0x5F8 | 0x1358 | size: 0x8
.obj str_switch2_las_00012dc0, local
	.string "switch2"
.endobj str_switch2_las_00012dc0

# .rodata:0x600 | 0x1360 | size: 0x6
.obj str_S_den_las_00012dc8, local
	.string "S_den"
.endobj str_S_den_las_00012dc8

# .rodata:0x606 | 0x1366 | size: 0x2
.obj gap_03_00001366_rodata, global
.hidden gap_03_00001366_rodata
	.2byte 0x0000
.endobj gap_03_00001366_rodata

# .rodata:0x608 | 0x1368 | size: 0xD
.obj str_majyorin_evt_las_00012dd0, local
	.string "majyorin_evt"
.endobj str_majyorin_evt_las_00012dd0
	.byte 0x00, 0x00, 0x00

# .rodata:0x618 | 0x1378 | size: 0x4
.obj float_0p8_las_00012de0, local
	.float 0.8
.endobj float_0p8_las_00012de0

# .rodata:0x61C | 0x137C | size: 0x4
.obj gap_03_0000137C_rodata, global
.hidden gap_03_0000137C_rodata
	.4byte 0x00000000
.endobj gap_03_0000137C_rodata

# 0x00004BF0..0x000074F8 | size: 0x2908
.data
.balign 8

# .data:0x0 | 0x4BF0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4BF8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4BFC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4C00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4C04 | size: 0x4
.obj gap_04_00004C04_data, global
.hidden gap_04_00004C04_data
	.4byte 0x00000000
.endobj gap_04_00004C04_data

# .data:0x18 | 0x4C08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4C10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4C14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4C18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4C20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4C24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4C28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4C2C | size: 0x4
.obj gap_04_00004C2C_data, global
.hidden gap_04_00004C2C_data
	.4byte 0x00000000
.endobj gap_04_00004C2C_data

# .data:0x40 | 0x4C30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4C38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4C40 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_000127c8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_000127d4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x4C98 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_000127c8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_000127d4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x4CF0 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_000127e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_000127ec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x4D48 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_000127e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_000127ec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x4DA0 | size: 0x58
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door3_1_las_000127f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door3_2_las_00012804
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0x208 | 0x4DF8 | size: 0x58
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door3_1_las_000127f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door3_2_las_00012804
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0x260 | 0x4E50 | size: 0x1E0
.obj bero_entry_data, local
	.4byte str_w_bero_las_00012810
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_08_las_00012818
	.4byte str_e_bero_1_las_00012820
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_0001282c
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_19_las_00012834
	.4byte str_w_bero_las_00012810
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte str_n_bero_las_0001283c
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_10_las_00012844
	.4byte str_s_bero_las_0001284c
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte str_dokan_1_las_00012854
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
	.4byte str_dokan_5_las_0001285c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_las_00012864
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
	.4byte str_dokan_4_las_0001286c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_5_las_0001285c
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_las_00012854
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_4_las_0001286c
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_las_00012864
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

# .data:0x440 | 0x5030 | size: 0x3A0
.obj dmgRetPoint, local
	.4byte str_mod_00_las_00012874
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_01_las_0001287c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_02_las_00012884
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_03_las_0001288c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_05_las_00012894
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_06_las_0001289c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_07_las_000128a4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_08_las_000128ac
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_09_las_000128b4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_10_las_000128bc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_11_las_000128c4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_12_las_000128cc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_13_las_000128d4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_14_las_000128dc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_15_las_000128e4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_16_las_000128ec
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_17_las_000128f4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_18_las_000128fc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_20_las_00012904
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_21_las_0001290c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_22_las_00012914
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_23_las_0001291c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_24_las_00012924
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_25_las_0001292c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_26_las_00012934
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_27_las_0001293c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_28_las_00012944
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_29_las_0001294c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_30_las_00012954
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_31_las_0001295c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_32_las_00012964
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_33_las_0001296c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_34_las_00012974
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_35_las_0001297c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_36_las_00012984
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_37_las_0001298c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_38_las_00012994
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_39_las_0001299c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_40_las_000129a4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_41_las_000129ac
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_42_las_000129b4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_43_las_000129bc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_44_las_000129c4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_45_las_000129cc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_46_las_000129d4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_47_las_000129dc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_48_las_000129e4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_49_las_000129ec
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_50_las_000129f4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_51_las_000129fc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_52_las_00012a04
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_53_las_00012a0c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_54_las_00012a14
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_55_las_00012a1c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_56_las_00012a24
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_57_las_00012a2c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_58_las_00012a34
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgRetPoint

# .data:0x7E0 | 0x53D0 | size: 0x348
.obj first_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_set_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFC04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFBD2
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000001D2
	.4byte 0x00000586
	.4byte 0x00000000
	.4byte 0x0000016A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000057
	.4byte 0x00000586
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000009D
	.4byte 0x00000057
	.4byte 0x00000466
	.4byte 0xFFFFFCE0
	.4byte 0x0000006E
	.4byte 0x00000055
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
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
	.4byte 0xF247AA80
	.4byte 0x0001005E
	.4byte w_door_open
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte w_door_open
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFC63
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFC95
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
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
	.4byte w_door_close
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte w_door_close
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFC7C
	.4byte 0x00000050
	.4byte 0x00000103
	.4byte 0xFFFFFC7C
	.4byte 0x00000020
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_11_las_00012a3c
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000183
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_evt

# .data:0xB28 | 0x5718 | size: 0x254
.obj bomb_wanwan, local
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C81
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_WALL_BREAK1_las_00012a48
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_las_00012a5c
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_ofs_las_00012a6c
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_las_00012a70
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_00012a70
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_las_00012a70
	.4byte str_OFF_d_bom_ver2_las_00012a5c
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte str_ofs_las_00012a6c
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox2
	.4byte str_ofs_las_00012a6c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_las_00012a70
	.4byte 0x00000000
	.4byte str_ofs_las_00012a6c
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_las_00012a70
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_00012a70
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_las_00012a70
	.4byte str_A_1_las_00012a74
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_las_00012a70
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_00012a70
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_las_00012a70
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_bom_ver2_las_00012a5c
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_ofs_las_00012a6c
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_las_00012a78
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bomb_wanwan

# .data:0xD7C | 0x596C | size: 0x6C
.obj bomb_wanwan1_evt, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_wan3_las_00012a8c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_wan1_las_00012a94
	.4byte 0x0001005E
	.4byte bomb_wanwan
	.4byte 0x00020032
	.4byte 0xF8406C66
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bomb_wanwan1_evt

# .data:0xDE8 | 0x59D8 | size: 0x6C
.obj bomb_wanwan2_evt, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_wan1_las_00012a9c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_wan2_las_00012aa4
	.4byte 0x0001005E
	.4byte bomb_wanwan
	.4byte 0x00020032
	.4byte 0xF8406C67
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bomb_wanwan2_evt

# .data:0xE54 | 0x5A44 | size: 0x45C
.obj switch_1_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00000558
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x000002BC
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_QUAKE2_las_00012aac
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A85
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai1_3_las_00012abc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PORT_APPEAR_las_00012acc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_daizadai1_3_las_00012abc
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_daizadai1_3_las_00012abc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai1_2_las_00012ae4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PORT_APPEAR_las_00012acc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_daizadai1_2_las_00012ae4
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_daizadai1_2_las_00012ae4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai1_1_las_00012af4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PORT_APPEAR_las_00012b04
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_daizadai1_1_las_00012af4
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_daizadai1_1_las_00012af4
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_daizadai1_las_00012b1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406C69
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_las_00012a78
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change_las_00012b28
	.4byte str_Ship_Change2_las_00012b38
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_1_evt

# .data:0x12B0 | 0x5EA0 | size: 0x460
.obj switch_2_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0xFFFFFDD2
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_QUAKE2_las_00012aac
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A85
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai2_3_las_00012b48
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PORT_APPEAR_las_00012acc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_daizadai2_3_las_00012b48
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_daizadai2_3_las_00012b48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai2_2_las_00012b58
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PORT_APPEAR_las_00012acc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_daizadai2_2_las_00012b58
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_daizadai2_2_las_00012b58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai2_1_las_00012b68
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PORT_APPEAR_las_00012b04
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00000032
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_daizadai2_1_las_00012b68
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_daizadai2_1_las_00012b68
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xF8406C68
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_las_00012a78
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change1_las_00012b78
	.4byte str_Ship_Change1_las_00012b88
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_Ship_Change1_las_00012b88
	.4byte 0x00008000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_2_evt

# .data:0x1710 | 0x6300 | size: 0x7C
.obj goikkou_talk, local
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_27_las_00012b98
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_28_las_00012bb0
	.4byte 0x00000000
	.4byte str_マリリン_las_00012bbc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_29_las_00012bc8
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_30_las_00012be0
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj goikkou_talk

# .data:0x178C | 0x637C | size: 0x30
.obj majyorin_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_las_00012bec
	.4byte 0x10000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_las_00012bec
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majyorin_init

# .data:0x17BC | 0x63AC | size: 0x30
.obj maririn_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_las_00012bec
	.4byte 0x10000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_las_00012bec
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj maririn_init

# .data:0x17EC | 0x63DC | size: 0x30
.obj ranpel_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_las_00012bec
	.4byte 0x10000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_las_00012bec
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ranpel_init

# .data:0x181C | 0x640C | size: 0x170
.obj npcEnt, local
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte majyorin_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マリリン_las_00012bbc
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte maririn_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte ranpel_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x198C | 0x657C | size: 0x68
.obj majyorin_evt_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_にせ_las_00012bf0
	.4byte str_c_kuri_h_las_00012bf8
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_にせ_las_00012bf0
	.4byte str_クリハカセ_las_00012c04
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせ_las_00012bf0
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_にせ_las_00012bf0
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせ_las_00012bf0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majyorin_evt_npc_entry

# .data:0x19F4 | 0x65E4 | size: 0xA30
.obj majyorin_evt_main, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000007
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_WITCH1_las_00012c10
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_12_las_00012c20
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000002FD
	.4byte 0x00000066
	.4byte 0x00000154
	.4byte 0x000002FD
	.4byte 0x0000002B
	.4byte 0x00000009
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_npc_majo_disp_on
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x000002EE
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_npc_majo_disp_on
	.4byte str_マリリン_las_00012bbc
	.4byte 0x0000030C
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせ_las_00012bf0
	.4byte 0x000003B6
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_にせ_las_00012bf0
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_にせ_las_00012bf0
	.4byte 0x00000320
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_12_01_las_00012c2c
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000028A
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000029E
	.4byte 0x00000000
	.4byte 0x00000041
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_13_las_00012c3c
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000294
	.4byte 0x00000052
	.4byte 0x00000152
	.4byte 0x00000294
	.4byte 0x0000001E
	.4byte 0x0000002B
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_14_las_00012c48
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000002FD
	.4byte 0x00000066
	.4byte 0x00000154
	.4byte 0x000002FD
	.4byte 0x0000002B
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_15_las_00012c54
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせ_las_00012bf0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_get_dir
	.4byte str_にせ_las_00012bf0
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_las_00012c60
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0xF24A8019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_RANPEL_TRAN_las_00012c6c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_las_00012bd4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ランペル_las_00012bd4
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせ_las_00012bf0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_15_01_las_00012c88
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_15_02_las_00012c98
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_16_las_00012ca8
	.4byte 0x00000000
	.4byte str_マリリン_las_00012bbc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_17_las_00012cb4
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_18_las_00012cc0
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_19_las_00012ccc
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000294
	.4byte 0x00000052
	.4byte 0x00000152
	.4byte 0x00000294
	.4byte 0x0000001E
	.4byte 0x0000002B
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_20_las_00012cd8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000030B
	.4byte 0x00000068
	.4byte 0x00000154
	.4byte 0x0000030B
	.4byte 0x0000002D
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_21_las_00012ce4
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_22_las_00012cf0
	.4byte 0x00000000
	.4byte str_マリリン_las_00012bbc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_23_las_00012cfc
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000002BC
	.4byte 0x000000C1
	.4byte 0x000002F8
	.4byte 0x000002BC
	.4byte 0x00000039
	.4byte 0xFFFFFFF4
	.4byte 0x000003E8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_las_00012d08
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マジョリン_las_00012ba4
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マリリン_las_00012bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ランペル_las_00012bd4
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マリリン_las_00012bbc
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マリリン_las_00012bbc
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ランペル_las_00012bd4
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte evt_npc_set_force_regl_anim
	.4byte str_マジョリン_las_00012ba4
	.4byte str_MJR_D_4_las_00012d10
	.4byte 0x0003005B
	.4byte evt_npc_set_force_regl_anim
	.4byte str_マリリン_las_00012bbc
	.4byte str_MRR_D_4_las_00012d18
	.4byte 0x0003005B
	.4byte evt_npc_set_force_regl_anim
	.4byte str_ランペル_las_00012bd4
	.4byte str_D_2_las_00012d20
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_マジョリン_las_00012ba4
	.4byte str_MJR_D_4_las_00012d10
	.4byte str_MJR_T_3_las_00012d24
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_マリリン_las_00012bbc
	.4byte str_MRR_D_4_las_00012d18
	.4byte str_MRR_T_2_las_00012d2c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ランペル_las_00012bd4
	.4byte str_D_2_las_00012d20
	.4byte str_T_4_las_00012d34
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マジョリン_las_00012ba4
	.4byte str_MJR_D_4_las_00012d10
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マリリン_las_00012bbc
	.4byte str_MRR_D_4_las_00012d18
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ランペル_las_00012bd4
	.4byte str_D_2_las_00012d20
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x00000016
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_マリリン_las_00012bbc
	.4byte 0x0000001D
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_ランペル_las_00012bd4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_las_00012ba4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte eff_guruguru
	.4byte str_eff0_las_00012d38
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マリリン_las_00012bbc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000027
	.4byte 0x0006005B
	.4byte eff_guruguru
	.4byte str_eff1_las_00012d40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ランペル_las_00012bd4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte eff_guruguru
	.4byte str_eff2_las_00012d48
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_las_00012ba4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_WITCH_PIYO1_las_00012d50
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_24_las_00012d68
	.4byte 0x00000000
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_25_las_00012d74
	.4byte 0x00000000
	.4byte str_マリリン_las_00012bbc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_26_las_00012d80
	.4byte 0x00000000
	.4byte str_ランペル_las_00012bd4
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_マジョリン_las_00012ba4
	.4byte 0x00000006
	.4byte goikkou_talk
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_マリリン_las_00012bbc
	.4byte 0x00000006
	.4byte goikkou_talk
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ランペル_las_00012bd4
	.4byte 0x00000006
	.4byte goikkou_talk
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000187
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_npc_start_for_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majyorin_evt_main

# .data:0x2424 | 0x7014 | size: 0xDC
.obj majyorin_evt, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000001
	.4byte 0x0000026C
	.4byte 0x0000005A
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C84
	.4byte 0x0002000D
	.4byte 0xFE363C84
	.4byte str_mod_38_las_00012994
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFB
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000280
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte majyorin_evt_main
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majyorin_evt

# .data:0x2500 | 0x70F0 | size: 0x404
.obj las_09_init_evt_16_data_70F0, global
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS3_las_00012d8c
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000182
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgRetPoint
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_las_00012d9c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_r_blk_las_00012da4
	.4byte 0x0000000A
	.4byte 0x000000BE
	.4byte 0x00000032
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_las_00012dac
	.4byte 0xFFFFFF42
	.4byte 0x00000032
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000182
	.4byte 0x0001005C
	.4byte first_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C66
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_wan1_las_00012a94
	.4byte 0x00000000
	.4byte bomb_wanwan1_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_wan3_las_00012a8c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_wan1_las_00012a94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C67
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_wan2_las_00012aa4
	.4byte 0x00000000
	.4byte bomb_wanwan2_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_wan1_las_00012a9c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_wan2_las_00012aa4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000002
	.4byte str_switch1_las_00012db8
	.4byte 0xFFFFFDE4
	.4byte 0x0000000A
	.4byte 0xFFFFFAEC
	.4byte switch_1_evt
	.4byte 0xF8406C68
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000002
	.4byte str_switch2_las_00012dc0
	.4byte 0x0000021C
	.4byte 0x0000000A
	.4byte 0xFFFFFAEC
	.4byte switch_2_evt
	.4byte 0xF8406C69
	.4byte 0x00020018
	.4byte 0xF8406C68
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_daizadai1_1_las_00012af4
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_daizadai1_2_las_00012ae4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_daizadai1_3_las_00012abc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_daizadai1_las_00012b1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change_las_00012b28
	.4byte str_Ship_Change2_las_00012b38
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C69
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_daizadai2_1_las_00012b68
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_daizadai2_2_las_00012b58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_daizadai2_3_las_00012b48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change1_las_00012b78
	.4byte str_Ship_Change1_las_00012b88
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_Ship_Change1_las_00012b88
	.4byte 0x00008000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_den_las_00012dc8
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000186
	.4byte 0x0001005E
	.4byte majyorin_evt_npc_entry
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_majyorin_evt_las_00012dd0
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000026C
	.4byte 0x00000000
	.4byte 0x00000052
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0x00000056
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
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005C
	.4byte majyorin_evt_main
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte majyorin_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000184
	.4byte 0x00020032
	.4byte 0xF8406C9C
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_09_init_evt_16_data_70F0

# .data:0x2904 | 0x74F4 | size: 0x4
.obj gap_04_000074F4_data, global
.hidden gap_04_000074F4_data
	.4byte 0x00000000
.endobj gap_04_000074F4_data
