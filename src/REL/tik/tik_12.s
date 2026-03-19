.include "macros.inc"
.file "tik_12.o"

# 0x0000533C..0x000054C8 | size: 0x18C
.text
.balign 4

# .text:0x0 | 0x533C | size: 0x70
.fn majinaisi_ryokin_kaisu, local
/* 0000533C 00005400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005340 00005404  7C 08 02 A6 */	mflr r0
/* 00005344 00005408  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005348 0000540C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000534C 00005410  7C 7D 1B 78 */	mr r29, r3
/* 00005350 00005414  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00005354 00005418  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00005358 0000541C  4B FF AD F1 */	bl evtGetValue
/* 0000535C 00005420  3C A0 00 00 */	lis r5, majinaisi_ryokin_kaisu_tbl@ha
/* 00005360 00005424  54 7F 18 38 */	slwi r31, r3, 3
/* 00005364 00005428  38 A5 00 00 */	addi r5, r5, majinaisi_ryokin_kaisu_tbl@l
/* 00005368 0000542C  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000536C 00005430  7C A5 F8 2E */	lwzx r5, r5, r31
/* 00005370 00005434  7F A3 EB 78 */	mr r3, r29
/* 00005374 00005438  4B FF AD D5 */	bl evtSetValue
/* 00005378 0000543C  3C 60 00 00 */	lis r3, majinaisi_ryokin_kaisu_tbl@ha
/* 0000537C 00005440  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00005380 00005444  38 03 00 00 */	addi r0, r3, majinaisi_ryokin_kaisu_tbl@l
/* 00005384 00005448  7F A3 EB 78 */	mr r3, r29
/* 00005388 0000544C  7C A0 FA 14 */	add r5, r0, r31
/* 0000538C 00005450  80 A5 00 04 */	lwz r5, 0x4(r5)
/* 00005390 00005454  4B FF AD B9 */	bl evtSetValue
/* 00005394 00005458  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005398 0000545C  38 60 00 02 */	li r3, 0x2
/* 0000539C 00005460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000053A0 00005464  7C 08 03 A6 */	mtlr r0
/* 000053A4 00005468  38 21 00 20 */	addi r1, r1, 0x20
/* 000053A8 0000546C  4E 80 00 20 */	blr
.endfn majinaisi_ryokin_kaisu

# .text:0x70 | 0x53AC | size: 0x40
.fn setmertn, local
/* 000053AC 00005470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000053B0 00005474  7C 08 02 A6 */	mflr r0
/* 000053B4 00005478  90 01 00 14 */	stw r0, 0x14(r1)
/* 000053B8 0000547C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000053BC 00005480  7C 7F 1B 78 */	mr r31, r3
/* 000053C0 00005484  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000053C4 00005488  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000053C8 0000548C  4B FF AD 81 */	bl evtGetValue
/* 000053CC 00005490  4B FF AD 7D */	bl npcNameToPtr
/* 000053D0 00005494  90 7F 01 70 */	stw r3, 0x170(r31)
/* 000053D4 00005498  38 60 00 02 */	li r3, 0x2
/* 000053D8 0000549C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000053DC 000054A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000053E0 000054A4  7C 08 03 A6 */	mtlr r0
/* 000053E4 000054A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000053E8 000054AC  4E 80 00 20 */	blr
.endfn setmertn

# .text:0xB0 | 0x53EC | size: 0xDC
.fn effect_stardust, local
/* 000053EC 000054B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000053F0 000054B4  7C 08 02 A6 */	mflr r0
/* 000053F4 000054B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 000053F8 000054BC  39 61 00 40 */	addi r11, r1, 0x40
/* 000053FC 000054C0  4B FF AD 4D */	bl _savefpr_27
/* 00005400 000054C4  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 00005404 000054C8  7C 7D 1B 78 */	mr r29, r3
/* 00005408 000054CC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000540C 000054D0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005410 000054D4  4B FF AD 39 */	bl evtGetValue
/* 00005414 000054D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005418 000054DC  7C 7E 1B 78 */	mr r30, r3
/* 0000541C 000054E0  7F A3 EB 78 */	mr r3, r29
/* 00005420 000054E4  4B FF AD 29 */	bl evtGetFloat
/* 00005424 000054E8  FF E0 08 90 */	fmr f31, f1
/* 00005428 000054EC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000542C 000054F0  7F A3 EB 78 */	mr r3, r29
/* 00005430 000054F4  4B FF AD 19 */	bl evtGetFloat
/* 00005434 000054F8  FF C0 08 90 */	fmr f30, f1
/* 00005438 000054FC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000543C 00005500  7F A3 EB 78 */	mr r3, r29
/* 00005440 00005504  4B FF AD 09 */	bl evtGetFloat
/* 00005444 00005508  FF A0 08 90 */	fmr f29, f1
/* 00005448 0000550C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000544C 00005510  7F A3 EB 78 */	mr r3, r29
/* 00005450 00005514  4B FF AC F9 */	bl evtGetFloat
/* 00005454 00005518  FF 80 08 90 */	fmr f28, f1
/* 00005458 0000551C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 0000545C 00005520  7F A3 EB 78 */	mr r3, r29
/* 00005460 00005524  4B FF AC E9 */	bl evtGetFloat
/* 00005464 00005528  FF 60 08 90 */	fmr f27, f1
/* 00005468 0000552C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 0000546C 00005530  7F A3 EB 78 */	mr r3, r29
/* 00005470 00005534  4B FF AC D9 */	bl evtGetValue
/* 00005474 00005538  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 00005478 0000553C  7C 7F 1B 78 */	mr r31, r3
/* 0000547C 00005540  7F A3 EB 78 */	mr r3, r29
/* 00005480 00005544  4B FF AC C9 */	bl evtGetValue
/* 00005484 00005548  FC 20 F8 90 */	fmr f1, f31
/* 00005488 0000554C  7C 65 1B 78 */	mr r5, r3
/* 0000548C 00005550  FC 40 F0 90 */	fmr f2, f30
/* 00005490 00005554  7F C3 F3 78 */	mr r3, r30
/* 00005494 00005558  FC 60 E8 90 */	fmr f3, f29
/* 00005498 0000555C  7F E4 FB 78 */	mr r4, r31
/* 0000549C 00005560  FC 80 E0 90 */	fmr f4, f28
/* 000054A0 00005564  FC A0 D8 90 */	fmr f5, f27
/* 000054A4 00005568  4B FF AC A5 */	bl effStardustEntry
/* 000054A8 0000556C  38 60 00 02 */	li r3, 0x2
/* 000054AC 00005570  39 61 00 40 */	addi r11, r1, 0x40
/* 000054B0 00005574  4B FF AC 99 */	bl _restfpr_27
/* 000054B4 00005578  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 000054B8 0000557C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000054BC 00005580  7C 08 03 A6 */	mtlr r0
/* 000054C0 00005584  38 21 00 40 */	addi r1, r1, 0x40
/* 000054C4 00005588  4E 80 00 20 */	blr
.endfn effect_stardust

# 0x00002F48..0x00003248 | size: 0x300
.rodata
.balign 8

# .rodata:0x0 | 0x2F48 | size: 0x7
.obj str_e_bero_tik_0000adb0, local
	.string "e_bero"
.endobj str_e_bero_tik_0000adb0

# .rodata:0x7 | 0x2F4F | size: 0x1
.obj gap_03_00002F4F_rodata, global
.hidden gap_03_00002F4F_rodata
	.byte 0x00
.endobj gap_03_00002F4F_rodata

# .rodata:0x8 | 0x2F50 | size: 0x7
.obj str_tik_01_tik_0000adb8, local
	.string "tik_01"
.endobj str_tik_01_tik_0000adb8

# .rodata:0xF | 0x2F57 | size: 0x1
.obj gap_03_00002F57_rodata, global
.hidden gap_03_00002F57_rodata
	.byte 0x00
.endobj gap_03_00002F57_rodata

# .rodata:0x10 | 0x2F58 | size: 0x9
.obj str_w_dero_2_tik_0000adc0, local
	.string "w_dero_2"
.endobj str_w_dero_2_tik_0000adc0

# .rodata:0x19 | 0x2F61 | size: 0x3
.obj gap_03_00002F61_rodata, global
.hidden gap_03_00002F61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F61_rodata

# .rodata:0x1C | 0x2F64 | size: 0x7
.obj str_uranai_tik_0000adcc, local
	.string "uranai"
.endobj str_uranai_tik_0000adcc

# .rodata:0x23 | 0x2F6B | size: 0x1
.obj gap_03_00002F6B_rodata, global
.hidden gap_03_00002F6B_rodata
	.byte 0x00
.endobj gap_03_00002F6B_rodata

# .rodata:0x24 | 0x2F6C | size: 0x5
.obj str_aaax_tik_0000add4, local
	.string "aaax"
.endobj str_aaax_tik_0000add4

# .rodata:0x29 | 0x2F71 | size: 0x3
.obj gap_03_00002F71_rodata, global
.hidden gap_03_00002F71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F71_rodata

# .rodata:0x2C | 0x2F74 | size: 0xE
.obj str_lensflare_n64_tik_0000addc, local
	.string "lensflare_n64"
.endobj str_lensflare_n64_tik_0000addc

# .rodata:0x3A | 0x2F82 | size: 0x2
.obj gap_03_00002F82_rodata, global
.hidden gap_03_00002F82_rodata
	.2byte 0x0000
.endobj gap_03_00002F82_rodata

# .rodata:0x3C | 0x2F84 | size: 0xB
.obj str_まじない師_tik_0000adec, local
	.4byte 0x82DC82B6
	.4byte 0x82C882A2
	.byte 0x8E, 0x74, 0x00
.endobj str_まじない師_tik_0000adec

# .rodata:0x47 | 0x2F8F | size: 0x1
.obj gap_03_00002F8F_rodata, global
.hidden gap_03_00002F8F_rodata
	.byte 0x00
.endobj gap_03_00002F8F_rodata

# .rodata:0x48 | 0x2F90 | size: 0x3
.obj str_me_tik_0000adf8, local
	.string "me"
.endobj str_me_tik_0000adf8

# .rodata:0x4B | 0x2F93 | size: 0x1
.obj gap_03_00002F93_rodata, global
.hidden gap_03_00002F93_rodata
	.byte 0x00
.endobj gap_03_00002F93_rodata

# .rodata:0x4C | 0x2F94 | size: 0x6
.obj str_mario_tik_0000adfc, local
	.string "mario"
.endobj str_mario_tik_0000adfc

# .rodata:0x52 | 0x2F9A | size: 0x2
.obj gap_03_00002F9A_rodata, global
.hidden gap_03_00002F9A_rodata
	.2byte 0x0000
.endobj gap_03_00002F9A_rodata

# .rodata:0x54 | 0x2F9C | size: 0xD
.obj str_majinaisi_01_tik_0000ae04, local
	.string "majinaisi_01"
.endobj str_majinaisi_01_tik_0000ae04

# .rodata:0x61 | 0x2FA9 | size: 0x3
.obj gap_03_00002FA9_rodata, global
.hidden gap_03_00002FA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FA9_rodata

# .rodata:0x64 | 0x2FAC | size: 0xD
.obj str_majinaisi_02_tik_0000ae14, local
	.string "majinaisi_02"
.endobj str_majinaisi_02_tik_0000ae14

# .rodata:0x71 | 0x2FB9 | size: 0x3
.obj gap_03_00002FB9_rodata, global
.hidden gap_03_00002FB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FB9_rodata

# .rodata:0x74 | 0x2FBC | size: 0xD
.obj str_majinaisi_03_tik_0000ae24, local
	.string "majinaisi_03"
.endobj str_majinaisi_03_tik_0000ae24

# .rodata:0x81 | 0x2FC9 | size: 0x3
.obj gap_03_00002FC9_rodata, global
.hidden gap_03_00002FC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FC9_rodata

# .rodata:0x84 | 0x2FCC | size: 0xD
.obj str_majinaisi_04_tik_0000ae34, local
	.string "majinaisi_04"
.endobj str_majinaisi_04_tik_0000ae34

# .rodata:0x91 | 0x2FD9 | size: 0x3
.obj gap_03_00002FD9_rodata, global
.hidden gap_03_00002FD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FD9_rodata

# .rodata:0x94 | 0x2FDC | size: 0xD
.obj str_majinaisi_05_tik_0000ae44, local
	.string "majinaisi_05"
.endobj str_majinaisi_05_tik_0000ae44

# .rodata:0xA1 | 0x2FE9 | size: 0x3
.obj gap_03_00002FE9_rodata, global
.hidden gap_03_00002FE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FE9_rodata

# .rodata:0xA4 | 0x2FEC | size: 0xD
.obj str_majinaisi_06_tik_0000ae54, local
	.string "majinaisi_06"
.endobj str_majinaisi_06_tik_0000ae54

# .rodata:0xB1 | 0x2FF9 | size: 0x3
.obj gap_03_00002FF9_rodata, global
.hidden gap_03_00002FF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FF9_rodata

# .rodata:0xB4 | 0x2FFC | size: 0xD
.obj str_majinaisi_07_tik_0000ae64, local
	.string "majinaisi_07"
.endobj str_majinaisi_07_tik_0000ae64

# .rodata:0xC1 | 0x3009 | size: 0x3
.obj gap_03_00003009_rodata, global
.hidden gap_03_00003009_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003009_rodata

# .rodata:0xC4 | 0x300C | size: 0x4
.obj str_T_2_tik_0000ae74, local
	.string "T_2"
.endobj str_T_2_tik_0000ae74

# .rodata:0xC8 | 0x3010 | size: 0xC
.obj str_majinai_BOX_tik_0000ae78, local
	.string "majinai_BOX"
.endobj str_majinai_BOX_tik_0000ae78

# .rodata:0xD4 | 0x301C | size: 0x4
.obj str_D_1_tik_0000ae84, local
	.string "D_1"
.endobj str_D_1_tik_0000ae84

# .rodata:0xD8 | 0x3020 | size: 0x16
.obj str_SFX_EVT_INCANT_LIGHT_tik_0000ae88, local
	.string "SFX_EVT_INCANT_LIGHT1"
.endobj str_SFX_EVT_INCANT_LIGHT_tik_0000ae88

# .rodata:0xEE | 0x3036 | size: 0x2
.obj gap_03_00003036_rodata, global
.hidden gap_03_00003036_rodata
	.2byte 0x0000
.endobj gap_03_00003036_rodata

# .rodata:0xF0 | 0x3038 | size: 0x15
.obj str_SFX_EVT_INCANT_CUBE1_tik_0000aea0, local
	.string "SFX_EVT_INCANT_CUBE1"
.endobj str_SFX_EVT_INCANT_CUBE1_tik_0000aea0

# .rodata:0x105 | 0x304D | size: 0x3
.obj gap_03_0000304D_rodata, global
.hidden gap_03_0000304D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000304D_rodata

# .rodata:0x108 | 0x3050 | size: 0x8
.obj str_anm_sen_tik_0000aeb8, local
	.string "anm_sen"
.endobj str_anm_sen_tik_0000aeb8

# .rodata:0x110 | 0x3058 | size: 0x5
.obj str_senn_tik_0000aec0, local
	.string "senn"
.endobj str_senn_tik_0000aec0

# .rodata:0x115 | 0x305D | size: 0x3
.obj gap_03_0000305D_rodata, global
.hidden gap_03_0000305D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000305D_rodata

# .rodata:0x118 | 0x3060 | size: 0x15
.obj str_SFX_EVT_INCANT_CUBE2_tik_0000aec8, local
	.string "SFX_EVT_INCANT_CUBE2"
.endobj str_SFX_EVT_INCANT_CUBE2_tik_0000aec8

# .rodata:0x12D | 0x3075 | size: 0x3
.obj gap_03_00003075_rodata, global
.hidden gap_03_00003075_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003075_rodata

# .rodata:0x130 | 0x3078 | size: 0x8
.obj str_anm_men_tik_0000aee0, local
	.string "anm_men"
.endobj str_anm_men_tik_0000aee0

# .rodata:0x138 | 0x3080 | size: 0x7
.obj str_group4_tik_0000aee8, local
	.string "group4"
.endobj str_group4_tik_0000aee8

# .rodata:0x13F | 0x3087 | size: 0x1
.obj gap_03_00003087_rodata, global
.hidden gap_03_00003087_rodata
	.byte 0x00
.endobj gap_03_00003087_rodata

# .rodata:0x140 | 0x3088 | size: 0x4
.obj str_H_1_tik_0000aef0, local
	.string "H_1"
.endobj str_H_1_tik_0000aef0

# .rodata:0x144 | 0x308C | size: 0x15
.obj str_SFX_EVT_INCANT_CUBE3_tik_0000aef4, local
	.string "SFX_EVT_INCANT_CUBE3"
.endobj str_SFX_EVT_INCANT_CUBE3_tik_0000aef4

# .rodata:0x159 | 0x30A1 | size: 0x3
.obj gap_03_000030A1_rodata, global
.hidden gap_03_000030A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000030A1_rodata

# .rodata:0x15C | 0x30A4 | size: 0x4
.obj str_S_2_tik_0000af0c, local
	.string "S_2"
.endobj str_S_2_tik_0000af0c

# .rodata:0x160 | 0x30A8 | size: 0x17
.obj str_SFX_EVT_INCANT_CUBE4_tik_0000af10, local
	.string "SFX_EVT_INCANT_CUBE4_2"
.endobj str_SFX_EVT_INCANT_CUBE4_tik_0000af10

# .rodata:0x177 | 0x30BF | size: 0x1
.obj gap_03_000030BF_rodata, global
.hidden gap_03_000030BF_rodata
	.byte 0x00
.endobj gap_03_000030BF_rodata

# .rodata:0x178 | 0x30C0 | size: 0xC
.obj str_crystal_n64_tik_0000af28, local
	.string "crystal_n64"
.endobj str_crystal_n64_tik_0000af28

# .rodata:0x184 | 0x30CC | size: 0x15
.obj str_SFX_EVT_INCANT_CUBE4_tik_0000af34, local
	.string "SFX_EVT_INCANT_CUBE4"
.endobj str_SFX_EVT_INCANT_CUBE4_tik_0000af34

# .rodata:0x199 | 0x30E1 | size: 0x3
.obj gap_03_000030E1_rodata, global
.hidden gap_03_000030E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000030E1_rodata

# .rodata:0x19C | 0x30E4 | size: 0x4
.obj str_H_2_tik_0000af4c, local
	.string "H_2"
.endobj str_H_2_tik_0000af4c

# .rodata:0x1A0 | 0x30E8 | size: 0x15
.obj str_SFX_EVT_INCANT_CUBE5_tik_0000af50, local
	.string "SFX_EVT_INCANT_CUBE5"
.endobj str_SFX_EVT_INCANT_CUBE5_tik_0000af50

# .rodata:0x1B5 | 0x30FD | size: 0x3
.obj gap_03_000030FD_rodata, global
.hidden gap_03_000030FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000030FD_rodata

# .rodata:0x1B8 | 0x3100 | size: 0x6
.obj str_party_tik_0000af68, local
	.string "party"
.endobj str_party_tik_0000af68

# .rodata:0x1BE | 0x3106 | size: 0x2
.obj gap_03_00003106_rodata, global
.hidden gap_03_00003106_rodata
	.2byte 0x0000
.endobj gap_03_00003106_rodata

# .rodata:0x1C0 | 0x3108 | size: 0x9
.obj str_extparty_tik_0000af70, local
	.string "extparty"
.endobj str_extparty_tik_0000af70

# .rodata:0x1C9 | 0x3111 | size: 0x3
.obj gap_03_00003111_rodata, global
.hidden gap_03_00003111_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003111_rodata

# .rodata:0x1CC | 0x3114 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__tik_0000af7c, local
	.string "SFX_VOICE_MARIO_FLD_JUMP2"
.endobj str_SFX_VOICE_MARIO_FLD__tik_0000af7c

# .rodata:0x1E6 | 0x312E | size: 0x2
.obj gap_03_0000312E_rodata, global
.hidden gap_03_0000312E_rodata
	.2byte 0x0000
.endobj gap_03_0000312E_rodata

# .rodata:0x1E8 | 0x3130 | size: 0x6
.obj str_M_I_1_tik_0000af98, local
	.string "M_I_1"
.endobj str_M_I_1_tik_0000af98

# .rodata:0x1EE | 0x3136 | size: 0x2
.obj gap_03_00003136_rodata, global
.hidden gap_03_00003136_rodata
	.2byte 0x0000
.endobj gap_03_00003136_rodata

# .rodata:0x1F0 | 0x3138 | size: 0x15
.obj str_SFX_EVT_INCANT_CUBE7_tik_0000afa0, local
	.string "SFX_EVT_INCANT_CUBE7"
.endobj str_SFX_EVT_INCANT_CUBE7_tik_0000afa0

# .rodata:0x205 | 0x314D | size: 0x3
.obj gap_03_0000314D_rodata, global
.hidden gap_03_0000314D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000314D_rodata

# .rodata:0x208 | 0x3150 | size: 0x8
.obj str_anm_ten_tik_0000afb8, local
	.string "anm_ten"
.endobj str_anm_ten_tik_0000afb8

# .rodata:0x210 | 0x3158 | size: 0xB
.obj str_BOX_tenkai_tik_0000afc0, local
	.string "BOX_tenkai"
.endobj str_BOX_tenkai_tik_0000afc0

# .rodata:0x21B | 0x3163 | size: 0x1
.obj gap_03_00003163_rodata, global
.hidden gap_03_00003163_rodata
	.byte 0x00
.endobj gap_03_00003163_rodata

# .rodata:0x21C | 0x3164 | size: 0xD
.obj str_majinaisi_08_tik_0000afcc, local
	.string "majinaisi_08"
.endobj str_majinaisi_08_tik_0000afcc

# .rodata:0x229 | 0x3171 | size: 0x3
.obj gap_03_00003171_rodata, global
.hidden gap_03_00003171_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003171_rodata

# .rodata:0x22C | 0x3174 | size: 0xB
.obj str_irai_14_00_tik_0000afdc, local
	.string "irai_14_00"
.endobj str_irai_14_00_tik_0000afdc

# .rodata:0x237 | 0x317F | size: 0x1
.obj gap_03_0000317F_rodata, global
.hidden gap_03_0000317F_rodata
	.byte 0x00
.endobj gap_03_0000317F_rodata

# .rodata:0x238 | 0x3180 | size: 0xB
.obj str_irai_14_01_tik_0000afe8, local
	.string "irai_14_01"
.endobj str_irai_14_01_tik_0000afe8

# .rodata:0x243 | 0x318B | size: 0x1
.obj gap_03_0000318B_rodata, global
.hidden gap_03_0000318B_rodata
	.byte 0x00
.endobj gap_03_0000318B_rodata

# .rodata:0x244 | 0x318C | size: 0x6
.obj str_M_I_2_tik_0000aff4, local
	.string "M_I_2"
.endobj str_M_I_2_tik_0000aff4

# .rodata:0x24A | 0x3192 | size: 0x2
.obj gap_03_00003192_rodata, global
.hidden gap_03_00003192_rodata
	.2byte 0x0000
.endobj gap_03_00003192_rodata

# .rodata:0x24C | 0x3194 | size: 0x6
.obj str_M_S_1_tik_0000affc, local
	.string "M_S_1"
.endobj str_M_S_1_tik_0000affc

# .rodata:0x252 | 0x319A | size: 0x2
.obj gap_03_0000319A_rodata, global
.hidden gap_03_0000319A_rodata
	.2byte 0x0000
.endobj gap_03_0000319A_rodata

# .rodata:0x254 | 0x319C | size: 0xB
.obj str_irai_14_02_tik_0000b004, local
	.string "irai_14_02"
.endobj str_irai_14_02_tik_0000b004

# .rodata:0x25F | 0x31A7 | size: 0x1
.obj gap_03_000031A7_rodata, global
.hidden gap_03_000031A7_rodata
	.byte 0x00
.endobj gap_03_000031A7_rodata

# .rodata:0x260 | 0x31A8 | size: 0xB
.obj str_irai_14_04_tik_0000b010, local
	.string "irai_14_04"
.endobj str_irai_14_04_tik_0000b010

# .rodata:0x26B | 0x31B3 | size: 0x1
.obj gap_03_000031B3_rodata, global
.hidden gap_03_000031B3_rodata
	.byte 0x00
.endobj gap_03_000031B3_rodata

# .rodata:0x26C | 0x31B4 | size: 0xB
.obj str_irai_14_05_tik_0000b01c, local
	.string "irai_14_05"
.endobj str_irai_14_05_tik_0000b01c

# .rodata:0x277 | 0x31BF | size: 0x1
.obj gap_03_000031BF_rodata, global
.hidden gap_03_000031BF_rodata
	.byte 0x00
.endobj gap_03_000031BF_rodata

# .rodata:0x278 | 0x31C0 | size: 0x13
.obj str_sys_request_finish_tik_0000b028, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_tik_0000b028

# .rodata:0x28B | 0x31D3 | size: 0x1
.obj gap_03_000031D3_rodata, global
.hidden gap_03_000031D3_rodata
	.byte 0x00
.endobj gap_03_000031D3_rodata

# .rodata:0x28C | 0x31D4 | size: 0xB
.obj str_irai_14_03_tik_0000b03c, local
	.string "irai_14_03"
.endobj str_irai_14_03_tik_0000b03c

# .rodata:0x297 | 0x31DF | size: 0x1
.obj gap_03_000031DF_rodata, global
.hidden gap_03_000031DF_rodata
	.byte 0x00
.endobj gap_03_000031DF_rodata

# .rodata:0x298 | 0x31E0 | size: 0xD
.obj str_majinaisi_00_tik_0000b048, local
	.string "majinaisi_00"
.endobj str_majinaisi_00_tik_0000b048

# .rodata:0x2A5 | 0x31ED | size: 0x3
.obj gap_03_000031ED_rodata, global
.hidden gap_03_000031ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000031ED_rodata

# .rodata:0x2A8 | 0x31F0 | size: 0xA
.obj str_a_majinai_tik_0000b058, local
	.string "a_majinai"
.endobj str_a_majinai_tik_0000b058

# .rodata:0x2B2 | 0x31FA | size: 0x2
.obj gap_03_000031FA_rodata, global
.hidden gap_03_000031FA_rodata
	.2byte 0x0000
.endobj gap_03_000031FA_rodata

# .rodata:0x2B4 | 0x31FC | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000b064, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000b064

# .rodata:0x2C2 | 0x320A | size: 0x2
.obj gap_03_0000320A_rodata, global
.hidden gap_03_0000320A_rodata
	.2byte 0x0000
.endobj gap_03_0000320A_rodata

# .rodata:0x2C4 | 0x320C | size: 0xE
.obj str_ENV_STG0_TIK1_tik_0000b074, local
	.string "ENV_STG0_TIK1"
.endobj str_ENV_STG0_TIK1_tik_0000b074

# .rodata:0x2D2 | 0x321A | size: 0x2
.obj gap_03_0000321A_rodata, global
.hidden gap_03_0000321A_rodata
	.2byte 0x0000
.endobj gap_03_0000321A_rodata

# .rodata:0x2D4 | 0x321C | size: 0x9
.obj str_e_yuka_s_tik_0000b084, local
	.string "e_yuka_s"
.endobj str_e_yuka_s_tik_0000b084

# .rodata:0x2DD | 0x3225 | size: 0x3
.obj gap_03_00003225_rodata, global
.hidden gap_03_00003225_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003225_rodata

# .rodata:0x2E0 | 0x3228 | size: 0x7
.obj str_group2_tik_0000b090, local
	.string "group2"
.endobj str_group2_tik_0000b090

# .rodata:0x2E7 | 0x322F | size: 0x1
.obj gap_03_0000322F_rodata, global
.hidden gap_03_0000322F_rodata
	.byte 0x00
.endobj gap_03_0000322F_rodata

# .rodata:0x2E8 | 0x3230 | size: 0x9
.obj str_ie_kakoi_tik_0000b098, local
	.string "ie_kakoi"
.endobj str_ie_kakoi_tik_0000b098

# .rodata:0x2F1 | 0x3239 | size: 0x3
.obj gap_03_00003239_rodata, global
.hidden gap_03_00003239_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003239_rodata

# .rodata:0x2F4 | 0x323C | size: 0x4
.obj str_mad_tik_0000b0a4, local
	.string "mad"
.endobj str_mad_tik_0000b0a4

# .rodata:0x2F8 | 0x3240 | size: 0x8
.obj str_anm_kem_tik_0000b0a8, local
	.string "anm_kem"
.endobj str_anm_kem_tik_0000b0a8

# 0x000155D0..0x00016860 | size: 0x1290
.data
.balign 8

# .data:0x0 | 0x155D0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x155D8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x155DC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x155E0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x155E4 | size: 0x4
.obj gap_04_000155E4_data, global
.hidden gap_04_000155E4_data
	.4byte 0x00000000
.endobj gap_04_000155E4_data

# .data:0x18 | 0x155E8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x155F0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x155F4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x155F8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x15600 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x15604 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x15608 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1560C | size: 0x4
.obj gap_04_0001560C_data, global
.hidden gap_04_0001560C_data
	.4byte 0x00000000
.endobj gap_04_0001560C_data

# .data:0x40 | 0x15610 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x15618 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1561C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x15620 | size: 0x18
.obj majinaisi_ryokin_kaisu_tbl, local
	.4byte 0x00000032
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x00000005
.endobj majinaisi_ryokin_kaisu_tbl

# .data:0x68 | 0x15638 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_tik_0000adb0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tik_01_tik_0000adb8
	.4byte str_w_dero_2_tik_0000adc0
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

# .data:0xE0 | 0x156B0 | size: 0x78
.obj suisyou_kirakira, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_uranai_tik_0000adcc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_aaax_tik_0000add4
	.4byte str_lensflare_n64_tik_0000addc
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suisyou_kirakira

# .data:0x158 | 0x15728 | size: 0xDB4
.obj majinaisi_table_talk, local
	.4byte 0x0002005B
	.4byte setmertn
	.4byte str_まじない師_tik_0000adec
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_tik_0000adf8
	.4byte str_mario_tik_0000adfc
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tik_0000adf8
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_majinaisi_01_tik_0000ae04
	.4byte 0x00000000
	.4byte str_me_tik_0000adf8
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_majinaisi_02_tik_0000ae14
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_majinaisi_03_tik_0000ae24
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
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_majinaisi_04_tik_0000ae34
	.4byte 0x0002005B
	.4byte evt_unitwin_alloc
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte unitwincoin_disp_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_majinaisi_05_tik_0000ae44
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte unitwincoin_disp_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_unitwin_free
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_majinaisi_03_tik_0000ae24
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
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte majinaisi_ryokin_kaisu
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_majinaisi_06_tik_0000ae54
	.4byte 0x0002005B
	.4byte unitwincoin_disp_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_unitwin_free
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
	.4byte 0x00000021
	.4byte 0x00020037
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0xFE363C81
	.4byte 0x0001005B
	.4byte unitwincoin_wait
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte unitwincoin_disp_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_unitwin_free
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_majinaisi_07_tik_0000ae64
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tik_0000adf8
	.4byte str_T_2_tik_0000ae74
	.4byte 0x0002005B
	.4byte evt_pouch_majinai_set
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x00000069
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tik_0000adf8
	.4byte str_D_1_tik_0000ae84
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_LIGHT_tik_0000ae88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFD050F81
	.4byte 0x0002005D
	.4byte suisyou_kirakira
	.4byte 0xFD050F80
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE1_tik_0000aea0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_sen_tik_0000aeb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_senn_tik_0000aec0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_sen_tik_0000aeb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE2_tik_0000aec8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_men_tik_0000aee0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group4_tik_0000aee8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_men_tik_0000aee0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tik_0000adf8
	.4byte str_H_1_tik_0000aef0
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE3_tik_0000aef4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tik_0000adf8
	.4byte str_S_2_tik_0000af0c
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000005F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE4_tik_0000af10
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_crystal_n64_tik_0000af28
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24A7A1A
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A72E7
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF24A7A62
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE4_tik_0000af34
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010028
	.4byte 0xFFFFF8F8
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010028
	.4byte 0xFFFFFE98
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0002001B
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C84
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFE98
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF2501A80
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0xFFFFFE98
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF244DA80
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF244DA80
	.4byte 0x0002003B
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x0002003D
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFE98
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_tik_0000adf8
	.4byte str_H_2_tik_0000af4c
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C8E
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE5_tik_0000af50
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFD050F80
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_aaax_tik_0000add4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F81
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_group4_tik_0000aee8
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_senn_tik_0000aec0
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_mario_tik_0000adfc
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_party_tik_0000af68
	.4byte 0x00000800
	.4byte 0x0002005B
	.4byte evt_mario_get_exparty
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_extparty_tik_0000af70
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_まじない師_tik_0000adec
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__tik_0000af7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_1_tik_0000af98
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24AC280
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE7_tik_0000afa0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte effect_stardust
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24B4280
	.4byte 0xF24B4280
	.4byte 0x00000014
	.4byte 0x0000003C
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_EVT_INCANT_CUBE3_tik_0000aef4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_ten_tik_0000afb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_senn_tik_0000aec0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_group4_tik_0000aee8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_BOX_tenkai_tik_0000afc0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_BOX_tenkai_tik_0000afc0
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_ten_tik_0000afb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_majinaisi_08_tik_0000afcc
	.4byte 0x00000000
	.4byte str_me_tik_0000adf8
	.4byte 0x0002005B
	.4byte evt_mario_set_motion
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_map_blend_off
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_mario_tik_0000adfc
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_party_tik_0000af68
	.4byte 0x00000800
	.4byte 0x0002005B
	.4byte evt_mario_get_exparty
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_extparty_tik_0000af70
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_まじない師_tik_0000adec
	.4byte 0x00000800
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
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
.endobj majinaisi_table_talk

# .data:0xF0C | 0x164DC | size: 0x8
.obj iri_14_item_tbl, local
	.4byte 0x000000AC
	.4byte 0xFFFFFFFF
.endobj iri_14_item_tbl

# .data:0xF14 | 0x164E4 | size: 0x1B0
.obj majinaisi_direct_talk, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000000E
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_00_tik_0000afdc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_01_tik_0000afe8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tik_0000aff4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tik_0000affc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_02_tik_0000b004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x000000AC
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_04_tik_0000b010
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_14_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x000000AC
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_05_tik_0000b01c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840708C
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_tik_0000b028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_14_03_tik_0000b03c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_majinaisi_00_tik_0000b048
	.4byte 0x00000000
	.4byte str_me_tik_0000adf8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majinaisi_direct_talk

# .data:0x10C4 | 0x16694 | size: 0x28
.obj majinaisi_init, local
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_majinai_tik_0000b058
	.4byte 0x00000000
	.4byte majinaisi_table_talk
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majinaisi_init

# .data:0x10EC | 0x166BC | size: 0xB8
.obj npcEnt, local
	.4byte str_まじない師_tik_0000adec
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte majinaisi_init
	.4byte 0x00000000
	.4byte majinaisi_direct_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x11A4 | 0x16774 | size: 0xE8
.obj tik_12_init_evt_24_data_16774, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000b064
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK1_tik_0000b074
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
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
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_e_yuka_s_tik_0000b084
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_group2_tik_0000b090
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ie_kakoi_tik_0000b098
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_mad_tik_0000b0a4
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_majinai_BOX_tik_0000ae78
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_kem_tik_0000b0a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_12_init_evt_24_data_16774

# .data:0x128C | 0x1685C | size: 0x4
.obj gap_04_0001685C_data, global
.hidden gap_04_0001685C_data
	.4byte 0x00000000
.endobj gap_04_0001685C_data
