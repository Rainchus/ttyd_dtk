.include "macros.inc"
.file "aji_04.o"

# 0x00000CF0..0x00000E84 | size: 0x194
.text
.balign 4

# .text:0x0 | 0xCF0 | size: 0x124
.fn callback, local
/* 00000CF0 00000DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000CF4 00000DB8  7C 08 02 A6 */	mflr r0
/* 00000CF8 00000DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000CFC 00000DC0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000D00 00000DC4  7C 9F 23 78 */	mr r31, r4
/* 00000D04 00000DC8  3C 80 00 00 */	lis r4, str_stg7_aji_06_aji_00012030@ha
/* 00000D08 00000DCC  7C 7E 1B 78 */	mr r30, r3
/* 00000D0C 00000DD0  38 84 00 00 */	addi r4, r4, str_stg7_aji_06_aji_00012030@l
/* 00000D10 00000DD4  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 00000D14 00000DD8  3C A6 00 01 */	addis r5, r6, 0x1
/* 00000D18 00000DDC  80 66 00 00 */	lwz r3, 0x0(r6)
/* 00000D1C 00000DE0  83 A5 F2 00 */	lwz r29, -0xe00(r5)
/* 00000D20 00000DE4  48 00 55 1D */	bl strcmp
/* 00000D24 00000DE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000D28 00000DEC  40 82 00 58 */	bne .L_00000D80
/* 00000D2C 00000DF0  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00000D30 00000DF4  40 82 00 88 */	bne .L_00000DB8
/* 00000D34 00000DF8  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 00000D38 00000DFC  38 03 00 01 */	addi r0, r3, 0x1
/* 00000D3C 00000E00  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 00000D40 00000E04  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 00000D44 00000E08  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000D48 00000E0C  40 82 00 14 */	bne .L_00000D5C
/* 00000D4C 00000E10  3C 60 00 00 */	lis r3, str_SFX_STG7_QUIZ_START1_aji_000121ec@ha
/* 00000D50 00000E14  38 63 00 00 */	addi r3, r3, str_SFX_STG7_QUIZ_START1_aji_000121ec@l
/* 00000D54 00000E18  48 00 54 E9 */	bl psndSFXOn
/* 00000D58 00000E1C  48 00 00 60 */	b .L_00000DB8
.L_00000D5C:
/* 00000D5C 00000E20  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000D60 00000E24  40 82 00 58 */	bne .L_00000DB8
/* 00000D64 00000E28  38 60 04 00 */	li r3, 0x400
/* 00000D68 00000E2C  48 00 54 D5 */	bl psndBGMOff
/* 00000D6C 00000E30  3C 80 00 00 */	lis r4, str_BGM_EVT_QUIZ2_aji_00012384@ha
/* 00000D70 00000E34  38 60 00 01 */	li r3, 0x1
/* 00000D74 00000E38  38 84 00 00 */	addi r4, r4, str_BGM_EVT_QUIZ2_aji_00012384@l
/* 00000D78 00000E3C  48 00 54 C5 */	bl psndBGMOn
/* 00000D7C 00000E40  48 00 00 3C */	b .L_00000DB8
.L_00000D80:
/* 00000D80 00000E44  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00000D84 00000E48  40 82 00 34 */	bne .L_00000DB8
/* 00000D88 00000E4C  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 00000D8C 00000E50  38 03 00 01 */	addi r0, r3, 0x1
/* 00000D90 00000E54  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 00000D94 00000E58  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 00000D98 00000E5C  2C 00 00 01 */	cmpwi r0, 0x1
/* 00000D9C 00000E60  40 82 00 1C */	bne .L_00000DB8
/* 00000DA0 00000E64  38 60 04 00 */	li r3, 0x400
/* 00000DA4 00000E68  48 00 54 99 */	bl psndBGMOff
/* 00000DA8 00000E6C  3C 80 00 00 */	lis r4, str_BGM_EVT_QUIZ2_aji_00012384@ha
/* 00000DAC 00000E70  38 60 00 01 */	li r3, 0x1
/* 00000DB0 00000E74  38 84 00 00 */	addi r4, r4, str_BGM_EVT_QUIZ2_aji_00012384@l
/* 00000DB4 00000E78  48 00 54 89 */	bl psndBGMOn
.L_00000DB8:
/* 00000DB8 00000E7C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00000DBC 00000E80  3C 63 00 01 */	addis r3, r3, 0x1
/* 00000DC0 00000E84  83 E3 F2 00 */	lwz r31, -0xe00(r3)
/* 00000DC4 00000E88  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 00000DC8 00000E8C  28 03 00 00 */	cmplwi r3, 0x0
/* 00000DCC 00000E90  41 82 00 14 */	beq .L_00000DE0
/* 00000DD0 00000E94  80 63 01 5C */	lwz r3, 0x15c(r3)
/* 00000DD4 00000E98  48 00 54 69 */	bl evtCheckID
/* 00000DD8 00000E9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000DDC 00000EA0  40 82 00 24 */	bne .L_00000E00
.L_00000DE0:
/* 00000DE0 00000EA4  2C 1E 00 05 */	cmpwi r30, 0x5
/* 00000DE4 00000EA8  40 82 00 1C */	bne .L_00000E00
/* 00000DE8 00000EAC  3C 60 00 00 */	lis r3, UNK_0x00022c3c@ha
/* 00000DEC 00000EB0  38 80 00 00 */	li r4, 0x0
/* 00000DF0 00000EB4  38 63 00 00 */	addi r3, r3, UNK_0x00022c3c@l
/* 00000DF4 00000EB8  38 A0 00 00 */	li r5, 0x0
/* 00000DF8 00000EBC  48 00 54 45 */	bl evtEntry
/* 00000DFC 00000EC0  90 7F 00 BC */	stw r3, 0xbc(r31)
.L_00000E00:
/* 00000E00 00000EC4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000E04 00000EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000E08 00000ECC  7C 08 03 A6 */	mtlr r0
/* 00000E0C 00000ED0  38 21 00 20 */	addi r1, r1, 0x20
/* 00000E10 00000ED4  4E 80 00 20 */	blr
.endfn callback

# .text:0x124 | 0xE14 | size: 0x70
.fn unk_aji_00000ed8, local
/* 00000E14 00000ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000E18 00000EDC  7C 08 02 A6 */	mflr r0
/* 00000E1C 00000EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000E20 00000EE4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000E24 00000EE8  7C 7E 1B 78 */	mr r30, r3
/* 00000E28 00000EEC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000E2C 00000EF0  3C 64 00 01 */	addis r3, r4, 0x1
/* 00000E30 00000EF4  83 E3 F2 00 */	lwz r31, -0xe00(r3)
/* 00000E34 00000EF8  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 00000E38 00000EFC  28 03 00 00 */	cmplwi r3, 0x0
/* 00000E3C 00000F00  41 82 00 14 */	beq .L_00000E50
/* 00000E40 00000F04  80 63 01 5C */	lwz r3, 0x15c(r3)
/* 00000E44 00000F08  48 00 53 F9 */	bl evtCheckID
/* 00000E48 00000F0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000E4C 00000F10  40 82 00 24 */	bne .L_00000E70
.L_00000E50:
/* 00000E50 00000F14  2C 1E 00 05 */	cmpwi r30, 0x5
/* 00000E54 00000F18  40 82 00 1C */	bne .L_00000E70
/* 00000E58 00000F1C  3C 60 00 00 */	lis r3, UNK_0x00022c3c@ha
/* 00000E5C 00000F20  38 80 00 00 */	li r4, 0x0
/* 00000E60 00000F24  38 63 00 00 */	addi r3, r3, UNK_0x00022c3c@l
/* 00000E64 00000F28  38 A0 00 00 */	li r5, 0x0
/* 00000E68 00000F2C  48 00 53 D5 */	bl evtEntry
/* 00000E6C 00000F30  90 7F 00 BC */	stw r3, 0xbc(r31)
.L_00000E70:
/* 00000E70 00000F34  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000E74 00000F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000E78 00000F3C  7C 08 03 A6 */	mtlr r0
/* 00000E7C 00000F40  38 21 00 10 */	addi r1, r1, 0x10
/* 00000E80 00000F44  4E 80 00 20 */	blr
.endfn unk_aji_00000ed8

# 0x000010A0..0x00001530 | size: 0x490
.rodata
.balign 8

# .rodata:0x0 | 0x10A0 | size: 0xA
.obj str_S_door1_1_aji_00011f08, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00011f08

# .rodata:0xA | 0x10AA | size: 0x2
.obj gap_03_000010AA_rodata, global
.hidden gap_03_000010AA_rodata
	.2byte 0x0000
.endobj gap_03_000010AA_rodata

# .rodata:0xC | 0x10AC | size: 0xA
.obj str_S_door1_2_aji_00011f14, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00011f14

# .rodata:0x16 | 0x10B6 | size: 0x2
.obj gap_03_000010B6_rodata, global
.hidden gap_03_000010B6_rodata
	.2byte 0x0000
.endobj gap_03_000010B6_rodata

# .rodata:0x18 | 0x10B8 | size: 0x7
.obj str_w_bero_aji_00011f20, local
	.string "w_bero"
.endobj str_w_bero_aji_00011f20

# .rodata:0x1F | 0x10BF | size: 0x1
.obj gap_03_000010BF_rodata, global
.hidden gap_03_000010BF_rodata
	.byte 0x00
.endobj gap_03_000010BF_rodata

# .rodata:0x20 | 0x10C0 | size: 0x7
.obj str_aji_01_aji_00011f28, local
	.string "aji_01"
.endobj str_aji_01_aji_00011f28

# .rodata:0x27 | 0x10C7 | size: 0x1
.obj gap_03_000010C7_rodata, global
.hidden gap_03_000010C7_rodata
	.byte 0x00
.endobj gap_03_000010C7_rodata

# .rodata:0x28 | 0x10C8 | size: 0x9
.obj str_e_bero_2_aji_00011f30, local
	.string "e_bero_2"
.endobj str_e_bero_2_aji_00011f30

# .rodata:0x31 | 0x10D1 | size: 0x3
.obj gap_03_000010D1_rodata, global
.hidden gap_03_000010D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000010D1_rodata

# .rodata:0x34 | 0x10D4 | size: 0x14
.obj str_SFX_STG7_DSN_ROUND1_aji_00011f3c, local
	.string "SFX_STG7_DSN_ROUND1"
.endobj str_SFX_STG7_DSN_ROUND1_aji_00011f3c

# .rodata:0x48 | 0x10E8 | size: 0x10
.obj str_SFX_STG7_QUAKE2_aji_00011f50, local
	.string "SFX_STG7_QUAKE2"
.endobj str_SFX_STG7_QUAKE2_aji_00011f50

# .rodata:0x58 | 0x10F8 | size: 0x11
.obj str_SFX_OFF1_PUZZLE1_aji_00011f60, local
	.string "SFX_OFF1_PUZZLE1"
.endobj str_SFX_OFF1_PUZZLE1_aji_00011f60

# .rodata:0x69 | 0x1109 | size: 0x3
.obj gap_03_00001109_rodata, global
.hidden gap_03_00001109_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001109_rodata

# .rodata:0x6C | 0x110C | size: 0x16
.obj str_SFX_OFF1_PUZZLE_MOVE_aji_00011f74, local
	.string "SFX_OFF1_PUZZLE_MOVE1"
.endobj str_SFX_OFF1_PUZZLE_MOVE_aji_00011f74

# .rodata:0x82 | 0x1122 | size: 0x2
.obj gap_03_00001122_rodata, global
.hidden gap_03_00001122_rodata
	.2byte 0x0000
.endobj gap_03_00001122_rodata

# .rodata:0x84 | 0x1124 | size: 0x11
.obj str_SFX_OFF1_PUZZLE2_aji_00011f8c, local
	.string "SFX_OFF1_PUZZLE2"
.endobj str_SFX_OFF1_PUZZLE2_aji_00011f8c

# .rodata:0x95 | 0x1135 | size: 0x3
.obj gap_03_00001135_rodata, global
.hidden gap_03_00001135_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001135_rodata

# .rodata:0x98 | 0x1138 | size: 0xB
.obj str_OFF_d_pazu_aji_00011fa0, local
	.string "OFF_d_pazu"
.endobj str_OFF_d_pazu_aji_00011fa0

# .rodata:0xA3 | 0x1143 | size: 0x1
.obj gap_03_00001143_rodata, global
.hidden gap_03_00001143_rodata
	.byte 0x00
.endobj gap_03_00001143_rodata

# .rodata:0xA4 | 0x1144 | size: 0xC
.obj str_capture_img_aji_00011fac, local
	.string "capture_img"
.endobj str_capture_img_aji_00011fac

# .rodata:0xB0 | 0x1150 | size: 0x4
.obj str_Z_1_aji_00011fb8, local
	.string "Z_1"
.endobj str_Z_1_aji_00011fb8

# .rodata:0xB4 | 0x1154 | size: 0x9
.obj str_S_aji_04_aji_00011fbc, local
	.string "S_aji_04"
.endobj str_S_aji_04_aji_00011fbc

# .rodata:0xBD | 0x115D | size: 0x3
.obj gap_03_0000115D_rodata, global
.hidden gap_03_0000115D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000115D_rodata

# .rodata:0xC0 | 0x1160 | size: 0x8
.obj str_S_kuizu_aji_00011fc8, local
	.string "S_kuizu"
.endobj str_S_kuizu_aji_00011fc8

# .rodata:0xC8 | 0x1168 | size: 0x8
.obj str_me_ato2_aji_00011fd0, local
	.string "me_ato2"
.endobj str_me_ato2_aji_00011fd0

# .rodata:0xD0 | 0x1170 | size: 0x7
.obj str_me_aka_aji_00011fd8, local
	.string "me_aka"
.endobj str_me_aka_aji_00011fd8

# .rodata:0xD7 | 0x1177 | size: 0x1
.obj gap_03_00001177_rodata, global
.hidden gap_03_00001177_rodata
	.byte 0x00
.endobj gap_03_00001177_rodata

# .rodata:0xD8 | 0x1178 | size: 0x6
.obj str_me_ao_aji_00011fe0, local
	.string "me_ao"
.endobj str_me_ao_aji_00011fe0

# .rodata:0xDE | 0x117E | size: 0x2
.obj gap_03_0000117E_rodata, global
.hidden gap_03_0000117E_rodata
	.2byte 0x0000
.endobj gap_03_0000117E_rodata

# .rodata:0xE0 | 0x1180 | size: 0xA
.obj str_dennshoku_aji_00011fe8, local
	.string "dennshoku"
.endobj str_dennshoku_aji_00011fe8

# .rodata:0xEA | 0x118A | size: 0x2
.obj gap_03_0000118A_rodata, global
.hidden gap_03_0000118A_rodata
	.2byte 0x0000
.endobj gap_03_0000118A_rodata

# .rodata:0xEC | 0x118C | size: 0xC
.obj str_dennshoku_2_aji_00011ff4, local
	.string "dennshoku_2"
.endobj str_dennshoku_2_aji_00011ff4

# .rodata:0xF8 | 0x1198 | size: 0x4
.obj str_A_1_aji_00012000, local
	.string "A_1"
.endobj str_A_1_aji_00012000

# .rodata:0xFC | 0x119C | size: 0xA
.obj str_offscreen_aji_00012004, local
	.string "offscreen"
.endobj str_offscreen_aji_00012004

# .rodata:0x106 | 0x11A6 | size: 0x2
.obj gap_03_000011A6_rodata, global
.hidden gap_03_000011A6_rodata
	.2byte 0x0000
.endobj gap_03_000011A6_rodata

# .rodata:0x108 | 0x11A8 | size: 0x4
.obj str_A_2_aji_00012010, local
	.string "A_2"
.endobj str_A_2_aji_00012010

# .rodata:0x10C | 0x11AC | size: 0x7
.obj str_me_mae_aji_00012014, local
	.string "me_mae"
.endobj str_me_mae_aji_00012014

# .rodata:0x113 | 0x11B3 | size: 0x1
.obj gap_03_000011B3_rodata, global
.hidden gap_03_000011B3_rodata
	.byte 0x00
.endobj gap_03_000011B3_rodata

# .rodata:0x114 | 0x11B4 | size: 0x7
.obj str_me_ato_aji_0001201c, local
	.string "me_ato"
.endobj str_me_ato_aji_0001201c

# .rodata:0x11B | 0x11BB | size: 0x1
.obj gap_03_000011BB_rodata, global
.hidden gap_03_000011BB_rodata
	.byte 0x00
.endobj gap_03_000011BB_rodata

# .rodata:0x11C | 0x11BC | size: 0x9
.obj str_anm_1mon_aji_00012024, local
	.string "anm_1mon"
.endobj str_anm_1mon_aji_00012024

# .rodata:0x125 | 0x11C5 | size: 0x3
.obj gap_03_000011C5_rodata, global
.hidden gap_03_000011C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011C5_rodata

# .rodata:0x128 | 0x11C8 | size: 0xC
.obj str_stg7_aji_06_aji_00012030, local
	.string "stg7_aji_06"
.endobj str_stg7_aji_06_aji_00012030

# .rodata:0x134 | 0x11D4 | size: 0xC
.obj str_stg7_aji_07_aji_0001203c, local
	.string "stg7_aji_07"
.endobj str_stg7_aji_07_aji_0001203c

# .rodata:0x140 | 0x11E0 | size: 0x9
.obj str_anm_2mon_aji_00012048, local
	.string "anm_2mon"
.endobj str_anm_2mon_aji_00012048

# .rodata:0x149 | 0x11E9 | size: 0x3
.obj gap_03_000011E9_rodata, global
.hidden gap_03_000011E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000011E9_rodata

# .rodata:0x14C | 0x11EC | size: 0xC
.obj str_stg7_aji_08_aji_00012054, local
	.string "stg7_aji_08"
.endobj str_stg7_aji_08_aji_00012054

# .rodata:0x158 | 0x11F8 | size: 0xC
.obj str_stg7_aji_09_aji_00012060, local
	.string "stg7_aji_09"
.endobj str_stg7_aji_09_aji_00012060

# .rodata:0x164 | 0x1204 | size: 0x9
.obj str_anm_3mon_aji_0001206c, local
	.string "anm_3mon"
.endobj str_anm_3mon_aji_0001206c

# .rodata:0x16D | 0x120D | size: 0x3
.obj gap_03_0000120D_rodata, global
.hidden gap_03_0000120D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000120D_rodata

# .rodata:0x170 | 0x1210 | size: 0xC
.obj str_stg7_aji_10_aji_00012078, local
	.string "stg7_aji_10"
.endobj str_stg7_aji_10_aji_00012078

# .rodata:0x17C | 0x121C | size: 0xC
.obj str_stg7_aji_11_aji_00012084, local
	.string "stg7_aji_11"
.endobj str_stg7_aji_11_aji_00012084

# .rodata:0x188 | 0x1228 | size: 0x9
.obj str_anm_4mon_aji_00012090, local
	.string "anm_4mon"
.endobj str_anm_4mon_aji_00012090

# .rodata:0x191 | 0x1231 | size: 0x3
.obj gap_03_00001231_rodata, global
.hidden gap_03_00001231_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001231_rodata

# .rodata:0x194 | 0x1234 | size: 0xC
.obj str_stg7_aji_12_aji_0001209c, local
	.string "stg7_aji_12"
.endobj str_stg7_aji_12_aji_0001209c

# .rodata:0x1A0 | 0x1240 | size: 0xC
.obj str_stg7_aji_13_aji_000120a8, local
	.string "stg7_aji_13"
.endobj str_stg7_aji_13_aji_000120a8

# .rodata:0x1AC | 0x124C | size: 0x9
.obj str_anm_5mon_aji_000120b4, local
	.string "anm_5mon"
.endobj str_anm_5mon_aji_000120b4

# .rodata:0x1B5 | 0x1255 | size: 0x3
.obj gap_03_00001255_rodata, global
.hidden gap_03_00001255_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001255_rodata

# .rodata:0x1B8 | 0x1258 | size: 0xC
.obj str_stg7_aji_14_aji_000120c0, local
	.string "stg7_aji_14"
.endobj str_stg7_aji_14_aji_000120c0

# .rodata:0x1C4 | 0x1264 | size: 0xC
.obj str_stg7_aji_15_aji_000120cc, local
	.string "stg7_aji_15"
.endobj str_stg7_aji_15_aji_000120cc

# .rodata:0x1D0 | 0x1270 | size: 0x9
.obj str_anm_6mon_aji_000120d8, local
	.string "anm_6mon"
.endobj str_anm_6mon_aji_000120d8

# .rodata:0x1D9 | 0x1279 | size: 0x3
.obj gap_03_00001279_rodata, global
.hidden gap_03_00001279_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001279_rodata

# .rodata:0x1DC | 0x127C | size: 0xC
.obj str_stg7_aji_16_aji_000120e4, local
	.string "stg7_aji_16"
.endobj str_stg7_aji_16_aji_000120e4

# .rodata:0x1E8 | 0x1288 | size: 0xC
.obj str_stg7_aji_17_aji_000120f0, local
	.string "stg7_aji_17"
.endobj str_stg7_aji_17_aji_000120f0

# .rodata:0x1F4 | 0x1294 | size: 0x9
.obj str_anm_7mon_aji_000120fc, local
	.string "anm_7mon"
.endobj str_anm_7mon_aji_000120fc

# .rodata:0x1FD | 0x129D | size: 0x3
.obj gap_03_0000129D_rodata, global
.hidden gap_03_0000129D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000129D_rodata

# .rodata:0x200 | 0x12A0 | size: 0xC
.obj str_stg7_aji_18_aji_00012108, local
	.string "stg7_aji_18"
.endobj str_stg7_aji_18_aji_00012108

# .rodata:0x20C | 0x12AC | size: 0xC
.obj str_stg7_aji_19_aji_00012114, local
	.string "stg7_aji_19"
.endobj str_stg7_aji_19_aji_00012114

# .rodata:0x218 | 0x12B8 | size: 0x9
.obj str_confetti_aji_00012120, local
	.string "confetti"
.endobj str_confetti_aji_00012120

# .rodata:0x221 | 0x12C1 | size: 0x3
.obj gap_03_000012C1_rodata, global
.hidden gap_03_000012C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012C1_rodata

# .rodata:0x224 | 0x12C4 | size: 0xB
.obj str_anm_seikai_aji_0001212c, local
	.string "anm_seikai"
.endobj str_anm_seikai_aji_0001212c

# .rodata:0x22F | 0x12CF | size: 0x1
.obj gap_03_000012CF_rodata, global
.hidden gap_03_000012CF_rodata
	.byte 0x00
.endobj gap_03_000012CF_rodata

# .rodata:0x230 | 0x12D0 | size: 0xD
.obj str_anm_fuseikai_aji_00012138, local
	.string "anm_fuseikai"
.endobj str_anm_fuseikai_aji_00012138

# .rodata:0x23D | 0x12DD | size: 0x3
.obj gap_03_000012DD_rodata, global
.hidden gap_03_000012DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012DD_rodata

# .rodata:0x240 | 0x12E0 | size: 0x5
.obj str_kuti_aji_00012148, local
	.string "kuti"
.endobj str_kuti_aji_00012148

# .rodata:0x245 | 0x12E5 | size: 0x3
.obj gap_03_000012E5_rodata, global
.hidden gap_03_000012E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012E5_rodata

# .rodata:0x248 | 0x12E8 | size: 0x6
.obj str_kuti2_aji_00012150, local
	.string "kuti2"
.endobj str_kuti2_aji_00012150

# .rodata:0x24E | 0x12EE | size: 0x2
.obj gap_03_000012EE_rodata, global
.hidden gap_03_000012EE_rodata
	.2byte 0x0000
.endobj gap_03_000012EE_rodata

# .rodata:0x250 | 0x12F0 | size: 0x10
.obj str_SFX_STG7_QUAKE1_aji_00012158, local
	.string "SFX_STG7_QUAKE1"
.endobj str_SFX_STG7_QUAKE1_aji_00012158

# .rodata:0x260 | 0x1300 | size: 0x14
.obj str_SFX_STG7_DSN_AWAKE1_aji_00012168, local
	.string "SFX_STG7_DSN_AWAKE1"
.endobj str_SFX_STG7_DSN_AWAKE1_aji_00012168

# .rodata:0x274 | 0x1314 | size: 0xC
.obj str_stg7_aji_01_aji_0001217c, local
	.string "stg7_aji_01"
.endobj str_stg7_aji_01_aji_0001217c

# .rodata:0x280 | 0x1320 | size: 0xC
.obj str_stg7_aji_02_aji_00012188, local
	.string "stg7_aji_02"
.endobj str_stg7_aji_02_aji_00012188

# .rodata:0x28C | 0x132C | size: 0x5
.obj str_DOSN_aji_00012194, local
	.string "DOSN"
.endobj str_DOSN_aji_00012194

# .rodata:0x291 | 0x1331 | size: 0x3
.obj gap_03_00001331_rodata, global
.hidden gap_03_00001331_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001331_rodata

# .rodata:0x294 | 0x1334 | size: 0xC
.obj str_stg7_aji_04_aji_0001219c, local
	.string "stg7_aji_04"
.endobj str_stg7_aji_04_aji_0001219c

# .rodata:0x2A0 | 0x1340 | size: 0xC
.obj str_stg7_aji_05_aji_000121a8, local
	.string "stg7_aji_05"
.endobj str_stg7_aji_05_aji_000121a8

# .rodata:0x2AC | 0x134C | size: 0xD
.obj str_anm_denshoku_aji_000121b4, local
	.string "anm_denshoku"
.endobj str_anm_denshoku_aji_000121b4

# .rodata:0x2B9 | 0x1359 | size: 0x3
.obj gap_03_00001359_rodata, global
.hidden gap_03_00001359_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001359_rodata

# .rodata:0x2BC | 0x135C | size: 0xD
.obj str_anm_mamekyuu_aji_000121c4, local
	.string "anm_mamekyuu"
.endobj str_anm_mamekyuu_aji_000121c4

# .rodata:0x2C9 | 0x1369 | size: 0x3
.obj gap_03_00001369_rodata, global
.hidden gap_03_00001369_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001369_rodata

# .rodata:0x2CC | 0x136C | size: 0xE
.obj str_BGM_EVT_QUIZ1_aji_000121d4, local
	.string "BGM_EVT_QUIZ1"
.endobj str_BGM_EVT_QUIZ1_aji_000121d4

# .rodata:0x2DA | 0x137A | size: 0x2
.obj gap_03_0000137A_rodata, global
.hidden gap_03_0000137A_rodata
	.2byte 0x0000
.endobj gap_03_0000137A_rodata

# .rodata:0x2DC | 0x137C | size: 0x6
.obj str_DOSN2_aji_000121e4, local
	.string "DOSN2"
.endobj str_DOSN2_aji_000121e4

# .rodata:0x2E2 | 0x1382 | size: 0x2
.obj gap_03_00001382_rodata, global
.hidden gap_03_00001382_rodata
	.2byte 0x0000
.endobj gap_03_00001382_rodata

# .rodata:0x2E4 | 0x1384 | size: 0x15
.obj str_SFX_STG7_QUIZ_START1_aji_000121ec, local
	.string "SFX_STG7_QUIZ_START1"
.endobj str_SFX_STG7_QUIZ_START1_aji_000121ec

# .rodata:0x2F9 | 0x1399 | size: 0x3
.obj gap_03_00001399_rodata, global
.hidden gap_03_00001399_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001399_rodata

# .rodata:0x2FC | 0x139C | size: 0x9
.obj str_せいかい_aji_00012204, local
	.4byte 0x82B982A2
	.4byte 0x82A982A2
	.byte 0x00
.endobj str_せいかい_aji_00012204

# .rodata:0x305 | 0x13A5 | size: 0x3
.obj gap_03_000013A5_rodata, global
.hidden gap_03_000013A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013A5_rodata

# .rodata:0x308 | 0x13A8 | size: 0xB
.obj str_ふせいかい_aji_00012210, local
	.4byte 0x82D382B9
	.4byte 0x82A282A9
	.byte 0x82, 0xA2, 0x00
.endobj str_ふせいかい_aji_00012210

# .rodata:0x313 | 0x13B3 | size: 0x1
.obj gap_03_000013B3_rodata, global
.hidden gap_03_000013B3_rodata
	.byte 0x00
.endobj gap_03_000013B3_rodata

# .rodata:0x314 | 0x13B4 | size: 0xC
.obj str_stg7_aji_20_aji_0001221c, local
	.string "stg7_aji_20"
.endobj str_stg7_aji_20_aji_0001221c

# .rodata:0x320 | 0x13C0 | size: 0xC
.obj str_stg7_aji_03_aji_00012228, local
	.string "stg7_aji_03"
.endobj str_stg7_aji_03_aji_00012228

# .rodata:0x32C | 0x13CC | size: 0xC
.obj str_stg7_aji_21_aji_00012234, local
	.string "stg7_aji_21"
.endobj str_stg7_aji_21_aji_00012234

# .rodata:0x338 | 0x13D8 | size: 0x15
.obj str_SFX_STG7_GOOD_SOUND2_aji_00012240, local
	.string "SFX_STG7_GOOD_SOUND2"
.endobj str_SFX_STG7_GOOD_SOUND2_aji_00012240

# .rodata:0x34D | 0x13ED | size: 0x3
.obj gap_03_000013ED_rodata, global
.hidden gap_03_000013ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013ED_rodata

# .rodata:0x350 | 0x13F0 | size: 0x15
.obj str_SFX_STG7_GOOD_SOUND1_aji_00012258, local
	.string "SFX_STG7_GOOD_SOUND1"
.endobj str_SFX_STG7_GOOD_SOUND1_aji_00012258

# .rodata:0x365 | 0x1405 | size: 0x3
.obj gap_03_00001405_rodata, global
.hidden gap_03_00001405_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001405_rodata

# .rodata:0x368 | 0x1408 | size: 0xC
.obj str_stg7_aji_22_aji_00012270, local
	.string "stg7_aji_22"
.endobj str_stg7_aji_22_aji_00012270

# .rodata:0x374 | 0x1414 | size: 0xC
.obj str_stg7_aji_23_aji_0001227c, local
	.string "stg7_aji_23"
.endobj str_stg7_aji_23_aji_0001227c

# .rodata:0x380 | 0x1420 | size: 0xC
.obj str_stg7_aji_24_aji_00012288, local
	.string "stg7_aji_24"
.endobj str_stg7_aji_24_aji_00012288

# .rodata:0x38C | 0x142C | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00012294, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00012294

# .rodata:0x39A | 0x143A | size: 0x2
.obj gap_03_0000143A_rodata, global
.hidden gap_03_0000143A_rodata
	.2byte 0x0000
.endobj gap_03_0000143A_rodata

# .rodata:0x39C | 0x143C | size: 0xE
.obj str_ENV_STG7_AJI1_aji_000122a4, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_000122a4

# .rodata:0x3AA | 0x144A | size: 0x2
.obj gap_03_0000144A_rodata, global
.hidden gap_03_0000144A_rodata
	.2byte 0x0000
.endobj gap_03_0000144A_rodata

# .rodata:0x3AC | 0x144C | size: 0xC
.obj str_stg7_aji_25_aji_000122b4, local
	.string "stg7_aji_25"
.endobj str_stg7_aji_25_aji_000122b4

# .rodata:0x3B8 | 0x1458 | size: 0x14
.obj str_SFX_STG7_BAD_SOUND2_aji_000122c0, local
	.string "SFX_STG7_BAD_SOUND2"
.endobj str_SFX_STG7_BAD_SOUND2_aji_000122c0

# .rodata:0x3CC | 0x146C | size: 0x14
.obj str_SFX_STG7_BAD_SOUND1_aji_000122d4, local
	.string "SFX_STG7_BAD_SOUND1"
.endobj str_SFX_STG7_BAD_SOUND1_aji_000122d4

# .rodata:0x3E0 | 0x1480 | size: 0xC
.obj str_stg7_aji_26_aji_000122e8, local
	.string "stg7_aji_26"
.endobj str_stg7_aji_26_aji_000122e8

# .rodata:0x3EC | 0x148C | size: 0xC
.obj str_stg7_aji_27_aji_000122f4, local
	.string "stg7_aji_27"
.endobj str_stg7_aji_27_aji_000122f4

# .rodata:0x3F8 | 0x1498 | size: 0xC
.obj str_stg7_aji_28_aji_00012300, local
	.string "stg7_aji_28"
.endobj str_stg7_aji_28_aji_00012300

# .rodata:0x404 | 0x14A4 | size: 0xC
.obj str_stg7_aji_29_aji_0001230c, local
	.string "stg7_aji_29"
.endobj str_stg7_aji_29_aji_0001230c

# .rodata:0x410 | 0x14B0 | size: 0xD
.obj str_バリアーン１_aji_00012318, local
	.4byte 0x836F838A
	.4byte 0x8341815B
	.4byte 0x83938250
	.byte 0x00
.endobj str_バリアーン１_aji_00012318

# .rodata:0x41D | 0x14BD | size: 0x3
.obj gap_03_000014BD_rodata, global
.hidden gap_03_000014BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000014BD_rodata

# .rodata:0x420 | 0x14C0 | size: 0xD
.obj str_バリアーン２_aji_00012328, local
	.4byte 0x836F838A
	.4byte 0x8341815B
	.4byte 0x83938251
	.byte 0x00
.endobj str_バリアーン２_aji_00012328

# .rodata:0x42D | 0x14CD | size: 0x3
.obj gap_03_000014CD_rodata, global
.hidden gap_03_000014CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000014CD_rodata

# .rodata:0x430 | 0x14D0 | size: 0xC
.obj str_stg7_aji_30_aji_00012338, local
	.string "stg7_aji_30"
.endobj str_stg7_aji_30_aji_00012338

# .rodata:0x43C | 0x14DC | size: 0x6
.obj str_M_N_7_aji_00012344, local
	.string "M_N_7"
.endobj str_M_N_7_aji_00012344

# .rodata:0x442 | 0x14E2 | size: 0x2
.obj gap_03_000014E2_rodata, global
.hidden gap_03_000014E2_rodata
	.2byte 0x0000
.endobj gap_03_000014E2_rodata

# .rodata:0x444 | 0x14E4 | size: 0x6
.obj str_M_S_1_aji_0001234c, local
	.string "M_S_1"
.endobj str_M_S_1_aji_0001234c

# .rodata:0x44A | 0x14EA | size: 0x2
.obj gap_03_000014EA_rodata, global
.hidden gap_03_000014EA_rodata
	.2byte 0x0000
.endobj gap_03_000014EA_rodata

# .rodata:0x44C | 0x14EC | size: 0xC
.obj str_stg7_aji_31_aji_00012354, local
	.string "stg7_aji_31"
.endobj str_stg7_aji_31_aji_00012354

# .rodata:0x458 | 0x14F8 | size: 0x6
.obj str_dummy_aji_00012360, local
	.string "dummy"
.endobj str_dummy_aji_00012360

# .rodata:0x45E | 0x14FE | size: 0x2
.obj gap_03_000014FE_rodata, global
.hidden gap_03_000014FE_rodata
	.2byte 0x0000
.endobj gap_03_000014FE_rodata

# .rodata:0x460 | 0x1500 | size: 0xC
.obj str_stg7_aji_32_aji_00012368, local
	.string "stg7_aji_32"
.endobj str_stg7_aji_32_aji_00012368

# .rodata:0x46C | 0x150C | size: 0xE
.obj str_a_sekizou_1_a_aji_00012374, local
	.string "a_sekizou_1_a"
.endobj str_a_sekizou_1_a_aji_00012374

# .rodata:0x47A | 0x151A | size: 0x2
.obj gap_03_0000151A_rodata, global
.hidden gap_03_0000151A_rodata
	.2byte 0x0000
.endobj gap_03_0000151A_rodata

# .rodata:0x47C | 0x151C | size: 0xE
.obj str_BGM_EVT_QUIZ2_aji_00012384, local
	.string "BGM_EVT_QUIZ2"
.endobj str_BGM_EVT_QUIZ2_aji_00012384

# .rodata:0x48A | 0x152A | size: 0x6
.obj gap_03_0000152A_rodata, global
.hidden gap_03_0000152A_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_0000152A_rodata

# 0x00009BB0..0x0000BA88 | size: 0x1ED8
.data
.balign 8

# .data:0x0 | 0x9BB0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x9BB8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x9BBC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9BC0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x9BC4 | size: 0x4
.obj gap_04_00009BC4_data, global
.hidden gap_04_00009BC4_data
	.4byte 0x00000000
.endobj gap_04_00009BC4_data

# .data:0x18 | 0x9BC8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9BD0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x9BD4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x9BD8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9BE0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9BE4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9BE8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x9BEC | size: 0x4
.obj gap_04_00009BEC_data, global
.hidden gap_04_00009BEC_data
	.4byte 0x00000000
.endobj gap_04_00009BEC_data

# .data:0x40 | 0x9BF0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9BF8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x9BFC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9C00 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00011f08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00011f14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x9C58 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00011f08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00011f14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x9CB0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00011f20
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00011f28
	.4byte str_e_bero_2_aji_00011f30
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x178 | 0x9D28 | size: 0x144
.obj sekizou_kaiten, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DSN_ROUND1_aji_00011f3c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0xFFFFFFCE
	.4byte 0xFE363C81
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_QUAKE2_aji_00011f50
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekizou_kaiten

# .data:0x2BC | 0x9E6C | size: 0xE0
.obj sekizou_kaiten2, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DSN_ROUND1_aji_00011f3c
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_QUAKE2_aji_00011f50
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekizou_kaiten2

# .data:0x39C | 0x9F4C | size: 0x8
.obj sekizou_talk, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekizou_talk

# .data:0x3A4 | 0x9F54 | size: 0x14
.obj evt_item, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000016F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_item

# .data:0x3B8 | 0x9F68 | size: 0x1D0
.obj evt_down_snd, local
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000029A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000B7
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000A6
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000085
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_aji_00011f60
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_down_snd

# .data:0x588 | 0xA138 | size: 0x30
.obj evt_up_snd_, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE_MOVE_aji_00011f74
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000016E
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE2_aji_00011f8c
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_up_snd_

# .data:0x5B8 | 0xA168 | size: 0x130
.obj evt_up_snd__, local
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x000000B7
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x0000029A
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_up_snd__

# .data:0x6E8 | 0xA298 | size: 0x1FC
.obj offscreen_to_kuizu, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_pazu_aji_00011fa0
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_aji_00011fac
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_aji_00011fac
	.4byte str_OFF_d_pazu_aji_00011fa0
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_aji_00011fac
	.4byte str_Z_1_aji_00011fb8
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_aji_04_aji_00011fbc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kuizu_aji_00011fc8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_ato2_aji_00011fd0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_aka_aji_00011fd8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ao_aji_00011fe0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFA6
	.4byte 0x00000014
	.4byte 0xFFFFFFF6
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF97
	.4byte 0x00000014
	.4byte 0xFFFFFFEC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte evt_down_snd
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_aji_00011fac
	.4byte str_A_1_aji_00012000
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_aji_00011fac
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj offscreen_to_kuizu

# .data:0x8E4 | 0xA494 | size: 0x1E4
.obj offscreen_to_normal, local
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_aji_00012004
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_aji_04_aji_00011fbc
	.4byte str_offscreen_aji_00012004
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_kuizu_aji_00011fc8
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000000
	.4byte str_offscreen_aji_00012004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0001005C
	.4byte evt_up_snd__
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_aji_00011fac
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_aji_00011fac
	.4byte str_A_2_aji_00012010
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_aji_00011fac
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_aji_00011fac
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_aji_00011fac
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_aji_04_aji_00011fbc
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_aji_00012004
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_aji_04_aji_00011fbc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kuizu_aji_00011fc8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_mae_aji_00012014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_ato_aji_0001201c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF97
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj offscreen_to_normal

# .data:0xAC8 | 0xA678 | size: 0x70
.obj kuizu_data, local
	.4byte str_anm_1mon_aji_00012024
	.4byte str_stg7_aji_06_aji_00012030
	.4byte str_stg7_aji_07_aji_0001203c
	.4byte 0x00000002
	.4byte str_anm_2mon_aji_00012048
	.4byte str_stg7_aji_08_aji_00012054
	.4byte str_stg7_aji_09_aji_00012060
	.4byte 0x00000003
	.4byte str_anm_3mon_aji_0001206c
	.4byte str_stg7_aji_10_aji_00012078
	.4byte str_stg7_aji_11_aji_00012084
	.4byte 0x00000001
	.4byte str_anm_4mon_aji_00012090
	.4byte str_stg7_aji_12_aji_0001209c
	.4byte str_stg7_aji_13_aji_000120a8
	.4byte 0x00000002
	.4byte str_anm_5mon_aji_000120b4
	.4byte str_stg7_aji_14_aji_000120c0
	.4byte str_stg7_aji_15_aji_000120cc
	.4byte 0x00000000
	.4byte str_anm_6mon_aji_000120d8
	.4byte str_stg7_aji_16_aji_000120e4
	.4byte str_stg7_aji_17_aji_000120f0
	.4byte 0x00000002
	.4byte str_anm_7mon_aji_000120fc
	.4byte str_stg7_aji_18_aji_00012108
	.4byte str_stg7_aji_19_aji_00012114
	.4byte 0x00000003
.endobj kuizu_data

# .data:0xB38 | 0xA6E8 | size: 0xB8
.obj UNK_0x00022a90, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000096
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_confetti_aji_00012120
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_seikai_aji_0001212c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000708
	.4byte 0x00000002
	.4byte 0x00000001
.endobj UNK_0x00022a90

# .data:0xBF0 | 0xA7A0 | size: 0x4C
.obj quiz_ok, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_seikai_aji_0001212c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj quiz_ok

# .data:0xC3C | 0xA7EC | size: 0x54
.obj quiz_ng, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_fuseikai_aji_00012138
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj quiz_ng

# .data:0xC90 | 0xA840 | size: 0x54
.obj UNK_0x00022be8, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_fuseikai_aji_00012138
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj UNK_0x00022be8

# .data:0xCE4 | 0xA894 | size: 0x108
.obj UNK_0x00022c3c, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000064
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_kuti_aji_00012148
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_kuti2_aji_00012150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_kuti_aji_00012148
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_kuti2_aji_00012150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj UNK_0x00022c3c

# .data:0xDEC | 0xA99C | size: 0xF50
.obj kuizu_sekizou, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_QUAKE1_aji_00012158
	.4byte 0xFD050F8A
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000009C4
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG7_DSN_AWAKE1_aji_00012168
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_mae_aji_00012014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_ato_aji_0001201c
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_01_aji_0001217c
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_02_aji_00012188
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN_aji_00012194
	.4byte 0x0001005E
	.4byte sekizou_kaiten
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_aji_04_aji_0001219c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_mae_aji_00012014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ato_aji_0001201c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN_aji_00012194
	.4byte 0x0001005E
	.4byte sekizou_kaiten
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_aji_05_aji_000121a8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_denshoku_aji_000121b4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mamekyuu_aji_000121c4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_QUIZ1_aji_000121d4
	.4byte 0x0001005E
	.4byte offscreen_to_kuizu
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x0000024F
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000005B
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001003E
	.4byte kuizu_data
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte 0xFE363C89
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN2_aji_000121e4
	.4byte 0x0001005C
	.4byte sekizou_kaiten
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_QUIZ_START1_aji_000121ec
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010071
	.4byte str_せいかい_aji_00012204
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_ふせいかい_aji_00012210
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_aji_20_aji_0001221c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_aji_03_aji_00012228
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_aji_21_aji_00012234
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_GOOD_SOUND2_aji_00012240
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_GOOD_SOUND1_aji_00012258
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ato2_aji_00011fd0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_ao_aji_00011fe0
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte UNK_0x00022a90
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00010073
	.4byte 0xFE363C8E
	.4byte 0x00010022
	.4byte 0xFE363C8E
	.4byte 0x00010026
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN2_aji_000121e4
	.4byte 0x0001005C
	.4byte sekizou_kaiten2
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_22_aji_00012270
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN2_aji_000121e4
	.4byte 0x0001005C
	.4byte sekizou_kaiten2
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_23_aji_0001227c
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000438
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN2_aji_000121e4
	.4byte 0x0001005C
	.4byte sekizou_kaiten
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_24_aji_00012288
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte offscreen_to_normal
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00012294
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_000122a4
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_25_aji_000122b4
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte quiz_ok
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_BAD_SOUND2_aji_000122c0
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_BAD_SOUND1_aji_000122d4
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ato2_aji_00011fd0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_aka_aji_00011fd8
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte quiz_ng
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00010073
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_26_aji_000122e8
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_27_aji_000122f4
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_28_aji_00012300
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001005E
	.4byte offscreen_to_normal
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN_aji_00012194
	.4byte 0x0001005C
	.4byte sekizou_kaiten2
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_29_aji_0001230c
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x00000032
	.4byte 0x000000C8
	.4byte 0xFFFFFFCE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x00000032
	.4byte 0x000000C8
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x000000C8
	.4byte 0x00000014
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFCE
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x000000C8
	.4byte 0x00000014
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x00000032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_30_aji_00012338
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_バリアーン１_aji_00012318
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_バリアーン２_aji_00012328
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_aji_00012344
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_バリアーン１_aji_00012318
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x0000000F
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_aji_0001234c
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG7_DUN2_aji_00012294
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_snd_envon_f
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_000122a4
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_バリアーン１_aji_00012318
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_バリアーン２_aji_00012328
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x000008FC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000438
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN_aji_00012194
	.4byte 0x0001005E
	.4byte sekizou_kaiten
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_31_aji_00012354
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte UNK_0x00022be8
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x0000024F
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000005B
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_ato2_aji_00011fd0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ao_aji_00011fe0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_aka_aji_00011fd8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG7_QUAKE1_aji_00012158
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_00012360
	.4byte 0x0000001C
	.4byte 0x00000032
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte evt_item
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte sekizou_talk
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_aji_32_aji_00012368
	.4byte unk_aji_00000ed8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_DOSN_aji_00012194
	.4byte 0x0001005E
	.4byte sekizou_kaiten2
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_mae_aji_00012014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ato_aji_0001201c
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000016E
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kuizu_sekizou

# .data:0x1D3C | 0xB8EC | size: 0xBC
.obj sekizou_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_mae_aji_00012014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ato_aji_0001201c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_aji_00011fe8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_aji_00011ff4
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_kuizu_aji_00011fc8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kuizu_aji_00011fc8
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_sekizou_1_a_aji_00012374
	.4byte 0x00000000
	.4byte kuizu_sekizou
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekizou_init

# .data:0x1DF8 | 0xB9A8 | size: 0xDC
.obj aji_04_init_evt_2_data_B9A8, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00012294
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_000122a4
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000016E
	.4byte 0x0001005E
	.4byte sekizou_init
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_me_mae_aji_00012014
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_me_ato_aji_0001201c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000016E
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_00012360
	.4byte 0x0000001C
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte evt_item
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_04_init_evt_2_data_B9A8

# .data:0x1ED4 | 0xBA84 | size: 0x4
.obj gap_04_0000BA84_data, global
.hidden gap_04_0000BA84_data
	.4byte 0x00000000
.endobj gap_04_0000BA84_data
