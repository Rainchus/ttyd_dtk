.include "macros.inc"
.file "battle_database_aji.o"

# 0x000081E8..0x000082B4 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x81E8 | size: 0xCC
.fn _space_rotate, local
/* 000081E8 000082AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000081EC 000082B0  7C 08 02 A6 */	mflr r0
/* 000081F0 000082B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 000081F4 000082B8  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 000081F8 000082BC  7C 7B 1B 78 */	mr r27, r3
/* 000081FC 000082C0  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00008200 000082C4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00008204 000082C8  4B FF E0 39 */	bl evtGetValue
/* 00008208 000082CC  83 9E 00 04 */	lwz r28, 0x4(r30)
/* 0000820C 000082D0  7C 7D 1B 78 */	mr r29, r3
/* 00008210 000082D4  7F 63 DB 78 */	mr r3, r27
/* 00008214 000082D8  7F 84 E3 78 */	mr r4, r28
/* 00008218 000082DC  4B FF E0 25 */	bl evtGetValue
/* 0000821C 000082E0  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00008220 000082E4  7C 7E 1B 78 */	mr r30, r3
/* 00008224 000082E8  7F 63 DB 78 */	mr r3, r27
/* 00008228 000082EC  4B FF E0 15 */	bl evtGetValue
/* 0000822C 000082F0  7C 7F 1B 78 */	mr r31, r3
/* 00008230 000082F4  7F A3 EB 78 */	mr r3, r29
/* 00008234 000082F8  4B FF E0 09 */	bl BattleSearchObjectPtr
/* 00008238 000082FC  3C 80 43 30 */	lis r4, 0x4330
/* 0000823C 00008300  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 00008240 00008304  90 01 00 0C */	stw r0, 0xc(r1)
/* 00008244 00008308  3C A0 00 00 */	lis r5, double_to_int_aji_00016b80@ha
/* 00008248 0000830C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 0000824C 00008310  C8 45 00 00 */	lfd f2, double_to_int_aji_00016b80@l(r5)
/* 00008250 00008314  90 81 00 08 */	stw r4, 0x8(r1)
/* 00008254 00008318  3C C0 00 00 */	lis r6, float_360_aji_00016b7c@ha
/* 00008258 0000831C  38 BE 00 01 */	addi r5, r30, 0x1
/* 0000825C 00008320  C0 66 00 00 */	lfs f3, float_360_aji_00016b7c@l(r6)
/* 00008260 00008324  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00008264 00008328  7C 05 F8 00 */	cmpw r5, r31
/* 00008268 0000832C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000826C 00008330  EC 20 10 28 */	fsubs f1, f0, f2
/* 00008270 00008334  90 81 00 10 */	stw r4, 0x10(r1)
/* 00008274 00008338  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00008278 0000833C  EC 23 00 72 */	fmuls f1, f3, f1
/* 0000827C 00008340  EC 00 10 28 */	fsubs f0, f0, f2
/* 00008280 00008344  EC 01 00 24 */	fdivs f0, f1, f0
/* 00008284 00008348  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 00008288 0000834C  41 80 00 08 */	blt .L_00008290
/* 0000828C 00008350  38 A0 00 00 */	li r5, 0x0
.L_00008290:
/* 00008290 00008354  7F 63 DB 78 */	mr r3, r27
/* 00008294 00008358  7F 84 E3 78 */	mr r4, r28
/* 00008298 0000835C  4B FF DF A5 */	bl evtSetValue
/* 0000829C 00008360  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 000082A0 00008364  38 60 00 02 */	li r3, 0x2
/* 000082A4 00008368  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000082A8 0000836C  7C 08 03 A6 */	mtlr r0
/* 000082AC 00008370  38 21 00 30 */	addi r1, r1, 0x30
/* 000082B0 00008374  4E 80 00 20 */	blr
.endfn _space_rotate

# 0x000058F0..0x00005D20 | size: 0x430
.rodata
.balign 8

# .rodata:0x0 | 0x58F0 | size: 0xA
.obj str_dentou_01_aji_00016758, local
	.string "dentou_01"
.endobj str_dentou_01_aji_00016758

# .rodata:0xA | 0x58FA | size: 0x2
.obj gap_03_000058FA_rodata, global
.hidden gap_03_000058FA_rodata
	.2byte 0x0000
.endobj gap_03_000058FA_rodata

# .rodata:0xC | 0x58FC | size: 0xA
.obj str_dentou_02_aji_00016764, local
	.string "dentou_02"
.endobj str_dentou_02_aji_00016764

# .rodata:0x16 | 0x5906 | size: 0x2
.obj gap_03_00005906_rodata, global
.hidden gap_03_00005906_rodata
	.2byte 0x0000
.endobj gap_03_00005906_rodata

# .rodata:0x18 | 0x5908 | size: 0xA
.obj str_dentou_03_aji_00016770, local
	.string "dentou_03"
.endobj str_dentou_03_aji_00016770

# .rodata:0x22 | 0x5912 | size: 0x2
.obj gap_03_00005912_rodata, global
.hidden gap_03_00005912_rodata
	.2byte 0x0000
.endobj gap_03_00005912_rodata

# .rodata:0x24 | 0x5914 | size: 0xA
.obj str_dentou_04_aji_0001677c, local
	.string "dentou_04"
.endobj str_dentou_04_aji_0001677c

# .rodata:0x2E | 0x591E | size: 0x2
.obj gap_03_0000591E_rodata, global
.hidden gap_03_0000591E_rodata
	.2byte 0x0000
.endobj gap_03_0000591E_rodata

# .rodata:0x30 | 0x5920 | size: 0x2
.obj str_C_aji_00016788, local
	.string "C"
.endobj str_C_aji_00016788

# .rodata:0x32 | 0x5922 | size: 0x2
.obj gap_03_00005922_rodata, global
.hidden gap_03_00005922_rodata
	.2byte 0x0000
.endobj gap_03_00005922_rodata

# .rodata:0x34 | 0x5924 | size: 0xB
.obj str_haikei_C_a_aji_0001678c, local
	.string "haikei_C_a"
.endobj str_haikei_C_a_aji_0001678c

# .rodata:0x3F | 0x592F | size: 0x1
.obj gap_03_0000592F_rodata, global
.hidden gap_03_0000592F_rodata
	.byte 0x00
.endobj gap_03_0000592F_rodata

# .rodata:0x40 | 0x5930 | size: 0x2
.obj str_B_aji_00016798, local
	.string "B"
.endobj str_B_aji_00016798

# .rodata:0x42 | 0x5932 | size: 0x2
.obj gap_03_00005932_rodata, global
.hidden gap_03_00005932_rodata
	.2byte 0x0000
.endobj gap_03_00005932_rodata

# .rodata:0x44 | 0x5934 | size: 0x3
.obj str_A2_aji_0001679c, local
	.string "A2"
.endobj str_A2_aji_0001679c

# .rodata:0x47 | 0x5937 | size: 0x1
.obj gap_03_00005937_rodata, global
.hidden gap_03_00005937_rodata
	.byte 0x00
.endobj gap_03_00005937_rodata

# .rodata:0x48 | 0x5938 | size: 0xB
.obj str_haikei_C_b_aji_000167a0, local
	.string "haikei_C_b"
.endobj str_haikei_C_b_aji_000167a0

# .rodata:0x53 | 0x5943 | size: 0x1
.obj gap_03_00005943_rodata, global
.hidden gap_03_00005943_rodata
	.byte 0x00
.endobj gap_03_00005943_rodata

# .rodata:0x54 | 0x5944 | size: 0xB
.obj str_haikei_C_c_aji_000167ac, local
	.string "haikei_C_c"
.endobj str_haikei_C_c_aji_000167ac

# .rodata:0x5F | 0x594F | size: 0x1
.obj gap_03_0000594F_rodata, global
.hidden gap_03_0000594F_rodata
	.byte 0x00
.endobj gap_03_0000594F_rodata

# .rodata:0x60 | 0x5950 | size: 0x3
.obj str_A1_aji_000167b8, local
	.string "A1"
.endobj str_A1_aji_000167b8

# .rodata:0x63 | 0x5953 | size: 0x1
.obj gap_03_00005953_rodata, global
.hidden gap_03_00005953_rodata
	.byte 0x00
.endobj gap_03_00005953_rodata

# .rodata:0x64 | 0x5954 | size: 0x6
.obj str_c_ten_aji_000167bc, local
	.string "c_ten"
.endobj str_c_ten_aji_000167bc

# .rodata:0x6A | 0x595A | size: 0x2
.obj gap_03_0000595A_rodata, global
.hidden gap_03_0000595A_rodata
	.2byte 0x0000
.endobj gap_03_0000595A_rodata

# .rodata:0x6C | 0x595C | size: 0x7
.obj str_c_kabe_aji_000167c4, local
	.string "c_kabe"
.endobj str_c_kabe_aji_000167c4

# .rodata:0x73 | 0x5963 | size: 0x1
.obj gap_03_00005963_rodata, global
.hidden gap_03_00005963_rodata
	.byte 0x00
.endobj gap_03_00005963_rodata

# .rodata:0x74 | 0x5964 | size: 0x4
.obj str_c_o_aji_000167cc, local
	.string "c_o"
.endobj str_c_o_aji_000167cc

# .rodata:0x78 | 0x5968 | size: 0x6
.obj str_space_aji_000167d0, local
	.string "space"
.endobj str_space_aji_000167d0

# .rodata:0x7E | 0x596E | size: 0x2
.obj gap_03_0000596E_rodata, global
.hidden gap_03_0000596E_rodata
	.2byte 0x0000
.endobj gap_03_0000596E_rodata

# .rodata:0x80 | 0x5970 | size: 0x8
.obj str_star_01_aji_000167d8, local
	.string "star_01"
.endobj str_star_01_aji_000167d8

# .rodata:0x88 | 0x5978 | size: 0x8
.obj str_star_02_aji_000167e0, local
	.string "star_02"
.endobj str_star_02_aji_000167e0

# .rodata:0x90 | 0x5980 | size: 0x8
.obj str_star_03_aji_000167e8, local
	.string "star_03"
.endobj str_star_03_aji_000167e8

# .rodata:0x98 | 0x5988 | size: 0x7
.obj str_bti_01_aji_000167f0, local
	.string "bti_01"
.endobj str_bti_01_aji_000167f0

# .rodata:0x9F | 0x598F | size: 0x1
.obj gap_03_0000598F_rodata, global
.hidden gap_03_0000598F_rodata
	.byte 0x00
.endobj gap_03_0000598F_rodata

# .rodata:0xA0 | 0x5990 | size: 0x9
.obj str_stg_07_5_aji_000167f8, local
	.string "stg_07_5"
.endobj str_stg_07_5_aji_000167f8

# .rodata:0xA9 | 0x5999 | size: 0x3
.obj gap_03_00005999_rodata, global
.hidden gap_03_00005999_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005999_rodata

# .rodata:0xAC | 0x599C | size: 0x9
.obj str_stg_07_1_aji_00016804, local
	.string "stg_07_1"
.endobj str_stg_07_1_aji_00016804

# .rodata:0xB5 | 0x59A5 | size: 0x3
.obj gap_03_000059A5_rodata, global
.hidden gap_03_000059A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059A5_rodata

# .rodata:0xB8 | 0x59A8 | size: 0x9
.obj str_stg_07_2_aji_00016810, local
	.string "stg_07_2"
.endobj str_stg_07_2_aji_00016810

# .rodata:0xC1 | 0x59B1 | size: 0x3
.obj gap_03_000059B1_rodata, global
.hidden gap_03_000059B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059B1_rodata

# .rodata:0xC4 | 0x59B4 | size: 0x9
.obj str_stg_07_3_aji_0001681c, local
	.string "stg_07_3"
.endobj str_stg_07_3_aji_0001681c

# .rodata:0xCD | 0x59BD | size: 0x3
.obj gap_03_000059BD_rodata, global
.hidden gap_03_000059BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059BD_rodata

# .rodata:0xD0 | 0x59C0 | size: 0x9
.obj str_stg_07_6_aji_00016828, local
	.string "stg_07_6"
.endobj str_stg_07_6_aji_00016828

# .rodata:0xD9 | 0x59C9 | size: 0x3
.obj gap_03_000059C9_rodata, global
.hidden gap_03_000059C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059C9_rodata

# .rodata:0xDC | 0x59CC | size: 0xF
.obj str_マップstg_07_1_aji_00016834, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x31, 0x00
.endobj str_マップstg_07_1_aji_00016834

# .rodata:0xEB | 0x59DB | size: 0x1
.obj gap_03_000059DB_rodata, global
.hidden gap_03_000059DB_rodata
	.byte 0x00
.endobj gap_03_000059DB_rodata

# .rodata:0xEC | 0x59DC | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_aji_00016844, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_aji_00016844

# .rodata:0xFD | 0x59ED | size: 0x3
.obj gap_03_000059ED_rodata, global
.hidden gap_03_000059ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059ED_rodata

# .rodata:0x100 | 0x59F0 | size: 0xF
.obj str_マップstg_07_2_aji_00016858, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x32, 0x00
.endobj str_マップstg_07_2_aji_00016858

# .rodata:0x10F | 0x59FF | size: 0x1
.obj gap_03_000059FF_rodata, global
.hidden gap_03_000059FF_rodata
	.byte 0x00
.endobj gap_03_000059FF_rodata

# .rodata:0x110 | 0x5A00 | size: 0xF
.obj str_マップstg_07_3_aji_00016868, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x33, 0x00
.endobj str_マップstg_07_3_aji_00016868

# .rodata:0x11F | 0x5A0F | size: 0x1
.obj gap_03_00005A0F_rodata, global
.hidden gap_03_00005A0F_rodata
	.byte 0x00
.endobj gap_03_00005A0F_rodata

# .rodata:0x120 | 0x5A10 | size: 0xF
.obj str_マップstg_07_5_aji_00016878, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x35, 0x00
.endobj str_マップstg_07_5_aji_00016878

# .rodata:0x12F | 0x5A1F | size: 0x1
.obj gap_03_00005A1F_rodata, global
.hidden gap_03_00005A1F_rodata
	.byte 0x00
.endobj gap_03_00005A1F_rodata

# .rodata:0x130 | 0x5A20 | size: 0xF
.obj str_マップstg_07_6_aji_00016888, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x36, 0x00
.endobj str_マップstg_07_6_aji_00016888

# .rodata:0x13F | 0x5A2F | size: 0x1
.obj gap_03_00005A2F_rodata, global
.hidden gap_03_00005A2F_rodata
	.byte 0x00
.endobj gap_03_00005A2F_rodata

# .rodata:0x140 | 0x5A30 | size: 0x19
.obj str_マグナムバッテンダー幕痛_aji_00016898, local
	.4byte 0x837D834F
	.4byte 0x83698380
	.4byte 0x836F8362
	.4byte 0x83658393
	.4byte 0x835F815B
	.4byte 0x968B92C9
	.byte 0x00
.endobj str_マグナムバッテンダー幕痛_aji_00016898

# .rodata:0x159 | 0x5A49 | size: 0x3
.obj gap_03_00005A49_rodata, global
.hidden gap_03_00005A49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A49_rodata

# .rodata:0x15C | 0x5A4C | size: 0x7
.obj str_aji_14_aji_000168b4, local
	.string "aji_14"
.endobj str_aji_14_aji_000168b4

# .rodata:0x163 | 0x5A53 | size: 0x1
.obj gap_03_00005A53_rodata, global
.hidden gap_03_00005A53_rodata
	.byte 0x00
.endobj gap_03_00005A53_rodata

# .rodata:0x164 | 0x5A54 | size: 0x19
.obj str_BGM_BOSS_STG3_3RDLEA_aji_000168bc, local
	.string "BGM_BOSS_STG3_3RDLEADER1"
.endobj str_BGM_BOSS_STG3_3RDLEA_aji_000168bc

# .rodata:0x17D | 0x5A6D | size: 0x3
.obj gap_03_00005A6D_rodata, global
.hidden gap_03_00005A6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A6D_rodata

# .rodata:0x180 | 0x5A70 | size: 0x11
.obj str_軍団ザコエリート_aji_000168d8, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.4byte 0x8347838A
	.4byte 0x815B8367
	.byte 0x00
.endobj str_軍団ザコエリート_aji_000168d8

# .rodata:0x191 | 0x5A81 | size: 0x3
.obj gap_03_00005A81_rodata, global
.hidden gap_03_00005A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A81_rodata

# .rodata:0x194 | 0x5A84 | size: 0x14
.obj str_BGM_CHUBOSS_BATTLE1_aji_000168ec, local
	.string "BGM_CHUBOSS_BATTLE1"
.endobj str_BGM_CHUBOSS_BATTLE1_aji_000168ec

# .rodata:0x1A8 | 0x5A98 | size: 0x16
.obj str_aji01軍団ザコエリート_aji_00016900, local
	.4byte 0x616A6930
	.4byte 0x318C5292
	.4byte 0x63835583
	.4byte 0x52834783
	.4byte 0x8A815B83
	.2byte 0x6700
.endobj str_aji01軍団ザコエリート_aji_00016900

# .rodata:0x1BE | 0x5AAE | size: 0x2
.obj gap_03_00005AAE_rodata, global
.hidden gap_03_00005AAE_rodata
	.2byte 0x0000
.endobj gap_03_00005AAE_rodata

# .rodata:0x1C0 | 0x5AB0 | size: 0xE
.obj str_aji01軍団ザコ_aji_00016918, local
	.4byte 0x616A6930
	.4byte 0x318C5292
	.4byte 0x63835583
	.2byte 0x5200
.endobj str_aji01軍団ザコ_aji_00016918

# .rodata:0x1CE | 0x5ABE | size: 0x2
.obj gap_03_00005ABE_rodata, global
.hidden gap_03_00005ABE_rodata
	.2byte 0x0000
.endobj gap_03_00005ABE_rodata

# .rodata:0x1D0 | 0x5AC0 | size: 0x16
.obj str_aji01軍団ザコ魔法使い_aji_00016928, local
	.4byte 0x616A6930
	.4byte 0x318C5292
	.4byte 0x63835583
	.4byte 0x52968296
	.4byte 0x408E6782
	.2byte 0xA200
.endobj str_aji01軍団ザコ魔法使い_aji_00016928

# .rodata:0x1E6 | 0x5AD6 | size: 0x2
.obj gap_03_00005AD6_rodata, global
.hidden gap_03_00005AD6_rodata
	.2byte 0x0000
.endobj gap_03_00005AD6_rodata

# .rodata:0x1E8 | 0x5AD8 | size: 0x12
.obj str_aji01バリアーンＺ_aji_00016940, local
	.4byte 0x616A6930
	.4byte 0x31836F83
	.4byte 0x8A834181
	.4byte 0x5B839382
	.2byte 0x7900
.endobj str_aji01バリアーンＺ_aji_00016940

# .rodata:0x1FA | 0x5AEA | size: 0x2
.obj gap_03_00005AEA_rodata, global
.hidden gap_03_00005AEA_rodata
	.2byte 0x0000
.endobj gap_03_00005AEA_rodata

# .rodata:0x1FC | 0x5AEC | size: 0x18
.obj str_aji04バリアーンカスタム_aji_00016954, local
	.4byte 0x616A6930
	.4byte 0x34836F83
	.4byte 0x8A834181
	.4byte 0x5B839383
	.4byte 0x4A835883
	.4byte 0x5E838000
.endobj str_aji04バリアーンカスタム_aji_00016954

# .rodata:0x214 | 0x5B04 | size: 0x16
.obj str_aji06軍団ザコ魔法使い_aji_0001696c, local
	.4byte 0x616A6930
	.4byte 0x368C5292
	.4byte 0x63835583
	.4byte 0x52968296
	.4byte 0x408E6782
	.2byte 0xA200
.endobj str_aji06軍団ザコ魔法使い_aji_0001696c

# .rodata:0x22A | 0x5B1A | size: 0x2
.obj gap_03_00005B1A_rodata, global
.hidden gap_03_00005B1A_rodata
	.2byte 0x0000
.endobj gap_03_00005B1A_rodata

# .rodata:0x22C | 0x5B1C | size: 0x16
.obj str_aji08軍団ザコ魔法使い_aji_00016984, local
	.4byte 0x616A6930
	.4byte 0x388C5292
	.4byte 0x63835583
	.4byte 0x52968296
	.4byte 0x408E6782
	.2byte 0xA200
.endobj str_aji08軍団ザコ魔法使い_aji_00016984

# .rodata:0x242 | 0x5B32 | size: 0x2
.obj gap_03_00005B32_rodata, global
.hidden gap_03_00005B32_rodata
	.2byte 0x0000
.endobj gap_03_00005B32_rodata

# .rodata:0x244 | 0x5B34 | size: 0xE
.obj str_aji09軍団ザコ_aji_0001699c, local
	.4byte 0x616A6930
	.4byte 0x398C5292
	.4byte 0x63835583
	.2byte 0x5200
.endobj str_aji09軍団ザコ_aji_0001699c

# .rodata:0x252 | 0x5B42 | size: 0x2
.obj gap_03_00005B42_rodata, global
.hidden gap_03_00005B42_rodata
	.2byte 0x0000
.endobj gap_03_00005B42_rodata

# .rodata:0x254 | 0x5B44 | size: 0x18
.obj str_aji10バリアーンカスタム_aji_000169ac, local
	.4byte 0x616A6931
	.4byte 0x30836F83
	.4byte 0x8A834181
	.4byte 0x5B839383
	.4byte 0x4A835883
	.4byte 0x5E838000
.endobj str_aji10バリアーンカスタム_aji_000169ac

# .rodata:0x26C | 0x5B5C | size: 0x16
.obj str_aji13軍団ザコ魔法使い_aji_000169c4, local
	.4byte 0x616A6931
	.4byte 0x338C5292
	.4byte 0x63835583
	.4byte 0x52968296
	.4byte 0x408E6782
	.2byte 0xA200
.endobj str_aji13軍団ザコ魔法使い_aji_000169c4

# .rodata:0x282 | 0x5B72 | size: 0x2
.obj gap_03_00005B72_rodata, global
.hidden gap_03_00005B72_rodata
	.2byte 0x0000
.endobj gap_03_00005B72_rodata

# .rodata:0x284 | 0x5B74 | size: 0x12
.obj str_aji13バリアーンＺ_aji_000169dc, local
	.4byte 0x616A6931
	.4byte 0x33836F83
	.4byte 0x8A834181
	.4byte 0x5B839382
	.2byte 0x7900
.endobj str_aji13バリアーンＺ_aji_000169dc

# .rodata:0x296 | 0x5B86 | size: 0x2
.obj gap_03_00005B86_rodata, global
.hidden gap_03_00005B86_rodata
	.2byte 0x0000
.endobj gap_03_00005B86_rodata

# .rodata:0x298 | 0x5B88 | size: 0x16
.obj str_aji15軍団ザコエリート_aji_000169f0, local
	.4byte 0x616A6931
	.4byte 0x358C5292
	.4byte 0x63835583
	.4byte 0x52834783
	.4byte 0x8A815B83
	.2byte 0x6700
.endobj str_aji15軍団ザコエリート_aji_000169f0

# .rodata:0x2AE | 0x5B9E | size: 0x2
.obj gap_03_00005B9E_rodata, global
.hidden gap_03_00005B9E_rodata
	.2byte 0x0000
.endobj gap_03_00005B9E_rodata

# .rodata:0x2B0 | 0x5BA0 | size: 0x10
.obj str_BTLNO_AJI_TEST1_aji_00016a08, local
	.string "BTLNO_AJI_TEST1"
.endobj str_BTLNO_AJI_TEST1_aji_00016a08

# .rodata:0x2C0 | 0x5BB0 | size: 0x10
.obj str_BTLNO_AJI_TEST2_aji_00016a18, local
	.string "BTLNO_AJI_TEST2"
.endobj str_BTLNO_AJI_TEST2_aji_00016a18

# .rodata:0x2D0 | 0x5BC0 | size: 0x10
.obj str_BTLNO_AJI_TEST3_aji_00016a28, local
	.string "BTLNO_AJI_TEST3"
.endobj str_BTLNO_AJI_TEST3_aji_00016a28

# .rodata:0x2E0 | 0x5BD0 | size: 0x10
.obj str_BTLNO_AJI_TEST4_aji_00016a38, local
	.string "BTLNO_AJI_TEST4"
.endobj str_BTLNO_AJI_TEST4_aji_00016a38

# .rodata:0x2F0 | 0x5BE0 | size: 0x10
.obj str_BTLNO_AJI_TEST5_aji_00016a48, local
	.string "BTLNO_AJI_TEST5"
.endobj str_BTLNO_AJI_TEST5_aji_00016a48

# .rodata:0x300 | 0x5BF0 | size: 0x11
.obj str_BTLNO_AJI_MBMKII_aji_00016a58, local
	.string "BTLNO_AJI_MBMKII"
.endobj str_BTLNO_AJI_MBMKII_aji_00016a58

# .rodata:0x311 | 0x5C01 | size: 0x3
.obj gap_03_00005C01_rodata, global
.hidden gap_03_00005C01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C01_rodata

# .rodata:0x314 | 0x5C04 | size: 0x10
.obj str_BTLNO_AJI_00_00_aji_00016a6c, local
	.string "BTLNO_AJI_00_00"
.endobj str_BTLNO_AJI_00_00_aji_00016a6c

# .rodata:0x324 | 0x5C14 | size: 0x10
.obj str_BTLNO_AJI_01_01_aji_00016a7c, local
	.string "BTLNO_AJI_01_01"
.endobj str_BTLNO_AJI_01_01_aji_00016a7c

# .rodata:0x334 | 0x5C24 | size: 0x10
.obj str_BTLNO_AJI_01_02_aji_00016a8c, local
	.string "BTLNO_AJI_01_02"
.endobj str_BTLNO_AJI_01_02_aji_00016a8c

# .rodata:0x344 | 0x5C34 | size: 0x10
.obj str_BTLNO_AJI_01_03_aji_00016a9c, local
	.string "BTLNO_AJI_01_03"
.endobj str_BTLNO_AJI_01_03_aji_00016a9c

# .rodata:0x354 | 0x5C44 | size: 0x10
.obj str_BTLNO_AJI_01_04_aji_00016aac, local
	.string "BTLNO_AJI_01_04"
.endobj str_BTLNO_AJI_01_04_aji_00016aac

# .rodata:0x364 | 0x5C54 | size: 0x10
.obj str_BTLNO_AJI_01_05_aji_00016abc, local
	.string "BTLNO_AJI_01_05"
.endobj str_BTLNO_AJI_01_05_aji_00016abc

# .rodata:0x374 | 0x5C64 | size: 0x10
.obj str_BTLNO_AJI_01_06_aji_00016acc, local
	.string "BTLNO_AJI_01_06"
.endobj str_BTLNO_AJI_01_06_aji_00016acc

# .rodata:0x384 | 0x5C74 | size: 0x10
.obj str_BTLNO_AJI_01_07_aji_00016adc, local
	.string "BTLNO_AJI_01_07"
.endobj str_BTLNO_AJI_01_07_aji_00016adc

# .rodata:0x394 | 0x5C84 | size: 0x10
.obj str_BTLNO_AJI_01_08_aji_00016aec, local
	.string "BTLNO_AJI_01_08"
.endobj str_BTLNO_AJI_01_08_aji_00016aec

# .rodata:0x3A4 | 0x5C94 | size: 0x10
.obj str_BTLNO_AJI_04_01_aji_00016afc, local
	.string "BTLNO_AJI_04_01"
.endobj str_BTLNO_AJI_04_01_aji_00016afc

# .rodata:0x3B4 | 0x5CA4 | size: 0x10
.obj str_BTLNO_AJI_06_01_aji_00016b0c, local
	.string "BTLNO_AJI_06_01"
.endobj str_BTLNO_AJI_06_01_aji_00016b0c

# .rodata:0x3C4 | 0x5CB4 | size: 0x10
.obj str_BTLNO_AJI_08_01_aji_00016b1c, local
	.string "BTLNO_AJI_08_01"
.endobj str_BTLNO_AJI_08_01_aji_00016b1c

# .rodata:0x3D4 | 0x5CC4 | size: 0x10
.obj str_BTLNO_AJI_09_01_aji_00016b2c, local
	.string "BTLNO_AJI_09_01"
.endobj str_BTLNO_AJI_09_01_aji_00016b2c

# .rodata:0x3E4 | 0x5CD4 | size: 0x10
.obj str_BTLNO_AJI_10_01_aji_00016b3c, local
	.string "BTLNO_AJI_10_01"
.endobj str_BTLNO_AJI_10_01_aji_00016b3c

# .rodata:0x3F4 | 0x5CE4 | size: 0x10
.obj str_BTLNO_AJI_13_01_aji_00016b4c, local
	.string "BTLNO_AJI_13_01"
.endobj str_BTLNO_AJI_13_01_aji_00016b4c

# .rodata:0x404 | 0x5CF4 | size: 0x10
.obj str_BTLNO_AJI_13_02_aji_00016b5c, local
	.string "BTLNO_AJI_13_02"
.endobj str_BTLNO_AJI_13_02_aji_00016b5c

# .rodata:0x414 | 0x5D04 | size: 0x10
.obj str_BTLNO_AJI_15_01_aji_00016b6c, local
	.string "BTLNO_AJI_15_01"
.endobj str_BTLNO_AJI_15_01_aji_00016b6c

# .rodata:0x424 | 0x5D14 | size: 0x4
.obj float_360_aji_00016b7c, local
	.float 360
.endobj float_360_aji_00016b7c

# .rodata:0x428 | 0x5D18 | size: 0x8
.obj double_to_int_aji_00016b80, local
	.double 4503601774854144
.endobj double_to_int_aji_00016b80

# 0x0002B558..0x0002D900 | size: 0x23A8
.data
.balign 8

# .data:0x0 | 0x2B558 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2B560 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2B564 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2B568 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2B56C | size: 0x4
.obj gap_04_0002B56C_data, global
.hidden gap_04_0002B56C_data
	.4byte 0x00000000
.endobj gap_04_0002B56C_data

# .data:0x18 | 0x2B570 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2B578 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2B57C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2B580 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2B588 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2B58C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2B590 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2B594 | size: 0x4
.obj gap_04_0002B594_data, global
.hidden gap_04_0002B594_data
	.4byte 0x00000000
.endobj gap_04_0002B594_data

# .data:0x40 | 0x2B598 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2B5A0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2B5A4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2B5A8 | size: 0x288
.obj aji_btlobject_data, local
	.4byte str_dentou_01_aji_00016758
	.4byte 0x00020000
	.4byte 0x43100000
	.4byte 0x00000000
	.4byte 0xC2580000
	.4byte 0x003C0000
	.4byte str_dentou_02_aji_00016764
	.4byte 0x00020000
	.4byte 0x42800000
	.4byte 0x00000000
	.4byte 0xC23C0000
	.4byte 0x0A320000
	.4byte str_dentou_03_aji_00016770
	.4byte 0x00020000
	.4byte 0xC2800000
	.4byte 0x00000000
	.4byte 0xC23C0000
	.4byte 0x14280000
	.4byte str_dentou_04_aji_0001677c
	.4byte 0x00020000
	.4byte 0xC3100000
	.4byte 0x00000000
	.4byte 0xC2580000
	.4byte 0x1E1E0000
	.4byte str_C_aji_00016788
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0002B620:
	.4byte str_haikei_C_a_aji_0001678c
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_B_aji_00016798
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_A2_aji_0001679c
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2940000
	.4byte 0x003C0000
.L_0002B668:
	.4byte str_haikei_C_b_aji_000167a0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_B_aji_00016798
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_A2_aji_0001679c
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2940000
	.4byte 0x003C0000
.L_0002B6B0:
	.4byte str_haikei_C_c_aji_000167ac
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_B_aji_00016798
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_A2_aji_0001679c
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2940000
	.4byte 0x003C0000
.L_0002B6F8:
	.4byte str_C_aji_00016788
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_B_aji_00016798
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_A1_aji_000167b8
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC1F00000
	.4byte 0x003C0000
.L_0002B740:
	.4byte str_C_aji_00016788
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_B_aji_00016798
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_A1_aji_000167b8
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2500000
	.4byte 0x003C0000
.L_0002B788:
	.4byte str_c_ten_aji_000167bc
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x003C0000
	.4byte str_c_kabe_aji_000167c4
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x003C0000
	.4byte str_c_o_aji_000167cc
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40E00000
	.4byte 0x003C0000
	.4byte str_space_aji_000167d0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40E00000
	.4byte 0x003C0000
	.4byte str_star_01_aji_000167d8
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x421C0000
	.4byte 0x003C0000
	.4byte str_star_02_aji_000167e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x003C0000
	.4byte str_star_03_aji_000167e8
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F80000
	.4byte 0x003C0000
.endobj aji_btlobject_data

# .data:0x2D8 | 0x2B830 | size: 0xBEC
.obj aji_btlstage_data, local
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_5_aji_000167f8
	.4byte 0x00000005
	.4byte aji_btlobject_data
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.L_0002B9E4:
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_1_aji_00016804
	.4byte 0x00000003
	.rel aji_btlobject_data, .L_0002B620
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
.L_0002BB98:
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_1_aji_00016804
	.4byte 0x00000003
	.rel aji_btlobject_data, .L_0002B668
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
.L_0002BD4C:
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_1_aji_00016804
	.4byte 0x00000003
	.rel aji_btlobject_data, .L_0002B6B0
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
.L_0002BF00:
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_2_aji_00016810
	.4byte 0x00000003
	.rel aji_btlobject_data, .L_0002B740
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
.L_0002C0B4:
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_3_aji_0001681c
	.4byte 0x00000003
	.rel aji_btlobject_data, .L_0002B6F8
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
.L_0002C268:
	.4byte str_bti_01_aji_000167f0
	.4byte str_stg_07_6_aji_00016828
	.4byte 0x00000007
	.rel aji_btlobject_data, .L_0002B788
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
	.4byte bgset_aji_space_event
	.4byte 0x00000000
.endobj aji_btlstage_data

# .data:0xEC4 | 0x2C41C | size: 0x30
.obj btlparty_aji_aji_mbmkII, local
	.4byte unit_boss_magnum_battender_mkII_2_data_27440
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
	.4byte battle_item_default_param_list
.endobj btlparty_aji_aji_mbmkII

# .data:0xEF4 | 0x2C44C | size: 0x20
.obj btlgrp_aji_aji_mbmkII, local
	.4byte 0x00000001
	.4byte btlparty_aji_aji_mbmkII
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_mbmkII

# .data:0xF14 | 0x2C46C | size: 0x60
.obj btlparty_aji_aji_zako, local
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_zako

# .data:0xF74 | 0x2C4CC | size: 0x20
.obj btlgrp_aji_aji_zako, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_zako
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_zako

# .data:0xF94 | 0x2C4EC | size: 0x60
.obj btlparty_aji_aji_01_01_off_1, local
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_01_01_off_1

# .data:0xFF4 | 0x2C54C | size: 0x20
.obj btlgrp_aji_aji_01_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_01_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_01_off_1

# .data:0x1014 | 0x2C56C | size: 0x90
.obj btlparty_aji_aji_01_02_off_1, local
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_01_02_off_1

# .data:0x10A4 | 0x2C5FC | size: 0x20
.obj btlgrp_aji_aji_01_02_off_1, local
	.4byte 0x00000003
	.4byte btlparty_aji_aji_01_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_02_off_1

# .data:0x10C4 | 0x2C61C | size: 0xC0
.obj btlparty_aji_aji_01_03_off_1, local
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
.endobj btlparty_aji_aji_01_03_off_1

# .data:0x1184 | 0x2C6DC | size: 0x20
.obj btlgrp_aji_aji_01_03_off_1, local
	.4byte 0x00000004
	.4byte btlparty_aji_aji_01_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_03_off_1

# .data:0x11A4 | 0x2C6FC | size: 0x60
.obj btlparty_aji_aji_01_04_off_1, local
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_01_04_off_1

# .data:0x1204 | 0x2C75C | size: 0x20
.obj btlgrp_aji_aji_01_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_01_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_04_off_1

# .data:0x1224 | 0x2C77C | size: 0x60
.obj btlparty_aji_aji_01_05_off_1, local
	.4byte unit_barriern_z_2_data_30598
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
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
.endobj btlparty_aji_aji_01_05_off_1

# .data:0x1284 | 0x2C7DC | size: 0x20
.obj btlgrp_aji_aji_01_05_off_1, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_01_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_05_off_1

# .data:0x12A4 | 0x2C7FC | size: 0xC0
.obj btlparty_aji_aji_01_06_off_1, local
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_01_06_off_1

# .data:0x1364 | 0x2C8BC | size: 0x20
.obj btlgrp_aji_aji_01_06_off_1, local
	.4byte 0x00000004
	.4byte btlparty_aji_aji_01_06_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_06_off_1

# .data:0x1384 | 0x2C8DC | size: 0x90
.obj btlparty_aji_aji_01_07_off_1, local
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_barriern_z_2_data_30598
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
	.4byte unit_barriern_z_2_data_30598
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
	.4byte battle_item_barriern_z
.endobj btlparty_aji_aji_01_07_off_1

# .data:0x1414 | 0x2C96C | size: 0x20
.obj btlgrp_aji_aji_01_07_off_1, local
	.4byte 0x00000003
	.4byte btlparty_aji_aji_01_07_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_07_off_1

# .data:0x1434 | 0x2C98C | size: 0xC0
.obj btlparty_aji_aji_01_08_off_1, local
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_01_08_off_1

# .data:0x14F4 | 0x2CA4C | size: 0x20
.obj btlgrp_aji_aji_01_08_off_1, local
	.4byte 0x00000004
	.4byte btlparty_aji_aji_01_08_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_01_08_off_1

# .data:0x1514 | 0x2CA6C | size: 0x60
.obj btlparty_aji_aji_04_01_off_1, local
	.4byte unit_barriern_custom_2_data_373A0
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
	.4byte battle_item_barriern_custom
	.4byte unit_barriern_custom_2_data_373A0
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
	.4byte battle_item_barriern_custom
.endobj btlparty_aji_aji_04_01_off_1

# .data:0x1574 | 0x2CACC | size: 0x20
.obj btlgrp_aji_aji_04_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_04_01_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_04_01_off_1

# .data:0x1594 | 0x2CAEC | size: 0x60
.obj btlparty_aji_aji_06_01_off_1, local
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
.endobj btlparty_aji_aji_06_01_off_1

# .data:0x15F4 | 0x2CB4C | size: 0x20
.obj btlgrp_aji_aji_06_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_06_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_aji_aji_06_01_off_1

# .data:0x1614 | 0x2CB6C | size: 0x90
.obj btlparty_aji_aji_08_01_off_1, local
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_barriern_2_data_3AA00
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
	.4byte battle_item_barriern
	.4byte unit_barriern_z_2_data_30598
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
	.4byte battle_item_barriern_z
.endobj btlparty_aji_aji_08_01_off_1

# .data:0x16A4 | 0x2CBFC | size: 0x20
.obj btlgrp_aji_aji_08_01_off_1, local
	.4byte 0x00000003
	.4byte btlparty_aji_aji_08_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_aji_aji_08_01_off_1

# .data:0x16C4 | 0x2CC1C | size: 0xF0
.obj btlparty_aji_aji_09_01_off_1, local
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_2_data_2EA68
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
	.4byte battle_item_gundan_zako
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
.endobj btlparty_aji_aji_09_01_off_1

# .data:0x17B4 | 0x2CD0C | size: 0x20
.obj btlgrp_aji_aji_09_01_off_1, local
	.4byte 0x00000005
	.4byte btlparty_aji_aji_09_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_09_01_off_1

# .data:0x17D4 | 0x2CD2C | size: 0x30
.obj btlparty_aji_aji_10_01_off_1, local
	.4byte unit_barriern_custom_2_data_373A0
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
	.4byte battle_item_barriern_custom
.endobj btlparty_aji_aji_10_01_off_1

# .data:0x1804 | 0x2CD5C | size: 0x20
.obj btlgrp_aji_aji_10_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_aji_aji_10_01_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_10_01_off_1

# .data:0x1824 | 0x2CD7C | size: 0xC0
.obj btlparty_aji_aji_13_01_off_1, local
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
	.4byte unit_gundan_zako_magician_2_data_34CA8
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
	.4byte battle_item_gundan_zako_magician
.endobj btlparty_aji_aji_13_01_off_1

# .data:0x18E4 | 0x2CE3C | size: 0x20
.obj btlgrp_aji_aji_13_01_off_1, local
	.4byte 0x00000004
	.4byte btlparty_aji_aji_13_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_aji_aji_13_01_off_1

# .data:0x1904 | 0x2CE5C | size: 0x60
.obj btlparty_aji_aji_13_02_off_1, local
	.4byte unit_barriern_z_2_data_30598
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
	.4byte unit_barriern_z_2_data_30598
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
.endobj btlparty_aji_aji_13_02_off_1

# .data:0x1964 | 0x2CEBC | size: 0x20
.obj btlgrp_aji_aji_13_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_aji_aji_13_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_13_02_off_1

# .data:0x1984 | 0x2CEDC | size: 0x30
.obj btlparty_aji_aji_15_01_off_1, local
	.4byte unit_gundan_zako_elite_2_data_336B8
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
	.4byte battle_item_gundan_zako_elite
.endobj btlparty_aji_aji_15_01_off_1

# .data:0x19B4 | 0x2CF0C | size: 0x20
.obj btlgrp_aji_aji_15_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_aji_aji_15_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_aji_aji_15_01_off_1

# .data:0x19D4 | 0x2CF2C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_zako
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_test1_off

# .data:0x19EC | 0x2CF44 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_test2_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_zako
	.rel aji_btlstage_data, .L_0002BF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_test2_off

# .data:0x1A04 | 0x2CF5C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_test3_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_zako
	.rel aji_btlstage_data, .L_0002C0B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_test3_off

# .data:0x1A1C | 0x2CF74 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_test4_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_zako
	.4byte aji_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_test4_off

# .data:0x1A34 | 0x2CF8C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_test5_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_zako
	.rel aji_btlstage_data, .L_0002C268
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_test5_off

# .data:0x1A4C | 0x2CFA4 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_mbmkii_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_mbmkII
	.rel aji_btlstage_data, .L_0002C0B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_mbmkii_off

# .data:0x1A64 | 0x2CFBC | size: 0x18
.obj btlgrpsel_aji_btlno_aji_00_00_off, local
	.4byte 0x00000032
	.4byte btlgrp_aji_aji_zako
	.rel aji_btlstage_data, .L_0002C268
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_00_00_off

# .data:0x1A7C | 0x2CFD4 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_01_off_1
	.rel aji_btlstage_data, .L_0002C268
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_01_off

# .data:0x1A94 | 0x2CFEC | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_02_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_02_off

# .data:0x1AAC | 0x2D004 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_03_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_03_off

# .data:0x1AC4 | 0x2D01C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_04_off_1
	.rel aji_btlstage_data, .L_0002BB98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_04_off

# .data:0x1ADC | 0x2D034 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_05_off_1
	.rel aji_btlstage_data, .L_0002BB98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_05_off

# .data:0x1AF4 | 0x2D04C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_06_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_06_off_1
	.rel aji_btlstage_data, .L_0002BB98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_06_off

# .data:0x1B0C | 0x2D064 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_07_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_07_off_1
	.rel aji_btlstage_data, .L_0002BD4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_07_off

# .data:0x1B24 | 0x2D07C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_01_08_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_01_08_off_1
	.rel aji_btlstage_data, .L_0002BD4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_01_08_off

# .data:0x1B3C | 0x2D094 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_04_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_04_01_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_04_01_off

# .data:0x1B54 | 0x2D0AC | size: 0x18
.obj btlgrpsel_aji_btlno_aji_06_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_06_01_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_06_01_off

# .data:0x1B6C | 0x2D0C4 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_08_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_08_01_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_08_01_off

# .data:0x1B84 | 0x2D0DC | size: 0x18
.obj btlgrpsel_aji_btlno_aji_09_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_09_01_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_09_01_off

# .data:0x1B9C | 0x2D0F4 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_10_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_10_01_off_1
	.4byte aji_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_10_01_off

# .data:0x1BB4 | 0x2D10C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_13_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_13_01_off_1
	.rel aji_btlstage_data, .L_0002BF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_13_01_off

# .data:0x1BCC | 0x2D124 | size: 0x18
.obj btlgrpsel_aji_btlno_aji_13_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_13_02_off_1
	.rel aji_btlstage_data, .L_0002BF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_13_02_off

# .data:0x1BE4 | 0x2D13C | size: 0x18
.obj btlgrpsel_aji_btlno_aji_15_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_aji_aji_15_01_off_1
	.rel aji_btlstage_data, .L_0002B9E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_aji_btlno_aji_15_01_off

# .data:0x1BFC | 0x2D154 | size: 0x660
.obj btlsetup_aji_tbl_2_data_2D154, global
	.4byte str_マップstg_07_1_aji_00016834
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_test1_off
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
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_マップstg_07_2_aji_00016858
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_test2_off
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
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_マップstg_07_3_aji_00016868
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_test3_off
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
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_マップstg_07_5_aji_00016878
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_test4_off
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
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_マップstg_07_6_aji_00016888
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_test5_off
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
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_マグナムバッテンダー幕痛_aji_00016898
	.4byte str_aji_14_aji_000168b4
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_mbmkii_off
	.4byte 0x20000010
	.4byte 0x00000006
	.4byte 0x00000A0A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG3_3RDLEA_aji_000168bc
	.4byte str_軍団ザコエリート_aji_000168d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_00_00_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_CHUBOSS_BATTLE1_aji_000168ec
	.4byte str_aji01軍団ザコエリート_aji_00016900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01軍団ザコ_aji_00016918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01軍団ザコエリート_aji_00016900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01軍団ザコ魔法使い_aji_00016928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01バリアーンＺ_aji_00016940
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_05_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01軍団ザコエリート_aji_00016900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_06_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01軍団ザコ_aji_00016918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_07_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji01軍団ザコ_aji_00016918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_01_08_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji04バリアーンカスタム_aji_00016954
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_04_01_off
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji06軍団ザコ魔法使い_aji_0001696c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_06_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji08軍団ザコ魔法使い_aji_00016984
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_08_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji09軍団ザコ_aji_0001699c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_09_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji10バリアーンカスタム_aji_000169ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_10_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji13軍団ザコ魔法使い_aji_000169c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_13_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji13バリアーンＺ_aji_000169dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_13_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte str_aji15軍団ザコエリート_aji_000169f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_aji_btlno_aji_15_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030A0A
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_aji_00016844
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_aji_tbl_2_data_2D154

# .data:0x225C | 0x2D7B4 | size: 0xC0
.obj btl_aji_setup_no_tbl_2_data_2D7B4, global
	.4byte str_BTLNO_AJI_TEST1_aji_00016a08
	.4byte 0x00000000
	.4byte str_BTLNO_AJI_TEST2_aji_00016a18
	.4byte 0x00000001
	.4byte str_BTLNO_AJI_TEST3_aji_00016a28
	.4byte 0x00000002
	.4byte str_BTLNO_AJI_TEST4_aji_00016a38
	.4byte 0x00000003
	.4byte str_BTLNO_AJI_TEST5_aji_00016a48
	.4byte 0x00000004
	.4byte str_BTLNO_AJI_MBMKII_aji_00016a58
	.4byte 0x00000005
	.4byte str_BTLNO_AJI_00_00_aji_00016a6c
	.4byte 0x00000006
	.4byte str_BTLNO_AJI_01_01_aji_00016a7c
	.4byte 0x00000007
	.4byte str_BTLNO_AJI_01_02_aji_00016a8c
	.4byte 0x00000008
	.4byte str_BTLNO_AJI_01_03_aji_00016a9c
	.4byte 0x00000009
	.4byte str_BTLNO_AJI_01_04_aji_00016aac
	.4byte 0x0000000A
	.4byte str_BTLNO_AJI_01_05_aji_00016abc
	.4byte 0x0000000B
	.4byte str_BTLNO_AJI_01_06_aji_00016acc
	.4byte 0x0000000C
	.4byte str_BTLNO_AJI_01_07_aji_00016adc
	.4byte 0x0000000D
	.4byte str_BTLNO_AJI_01_08_aji_00016aec
	.4byte 0x0000000E
	.4byte str_BTLNO_AJI_04_01_aji_00016afc
	.4byte 0x0000000F
	.4byte str_BTLNO_AJI_06_01_aji_00016b0c
	.4byte 0x00000010
	.4byte str_BTLNO_AJI_08_01_aji_00016b1c
	.4byte 0x00000011
	.4byte str_BTLNO_AJI_09_01_aji_00016b2c
	.4byte 0x00000012
	.4byte str_BTLNO_AJI_10_01_aji_00016b3c
	.4byte 0x00000013
	.4byte str_BTLNO_AJI_13_01_aji_00016b4c
	.4byte 0x00000014
	.4byte str_BTLNO_AJI_13_02_aji_00016b5c
	.4byte 0x00000015
	.4byte str_BTLNO_AJI_15_01_aji_00016b6c
	.4byte 0x00000016
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_aji_setup_no_tbl_2_data_2D7B4

# .data:0x231C | 0x2D874 | size: 0x8C
.obj bgset_aji_space_event, local
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
	.4byte str_star_01_aji_000167d8
	.4byte 0xFE363C81
	.4byte 0x00001D4C
	.4byte 0x0004005B
	.4byte _space_rotate
	.4byte str_star_02_aji_000167e0
	.4byte 0xFE363C82
	.4byte 0x00001A5E
	.4byte 0x0004005B
	.4byte _space_rotate
	.4byte str_star_03_aji_000167e8
	.4byte 0xFE363C83
	.4byte 0x00001770
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_aji_space_event
