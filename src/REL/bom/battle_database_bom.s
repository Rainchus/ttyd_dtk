.include "macros.inc"
.file "battle_database_bom.o"

# 0x00005C3C..0x00005C70 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x5C3C | size: 0x34
.fn _snow_control, local
/* 00005C3C 00005D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005C40 00005D04  7C 08 02 A6 */	mflr r0
/* 00005C44 00005D08  2C 04 00 00 */	cmpwi r4, 0x0
/* 00005C48 00005D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005C4C 00005D10  41 82 00 10 */	beq .L_00005C5C
/* 00005C50 00005D14  38 60 00 00 */	li r3, 0x0
/* 00005C54 00005D18  38 80 00 40 */	li r4, 0x40
/* 00005C58 00005D1C  4B FF A3 A9 */	bl effSnowfallN64Entry
.L_00005C5C:
/* 00005C5C 00005D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005C60 00005D24  38 60 00 00 */	li r3, 0x0
/* 00005C64 00005D28  7C 08 03 A6 */	mtlr r0
/* 00005C68 00005D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 00005C6C 00005D30  4E 80 00 20 */	blr
.endfn _snow_control

# 0x00001DB8..0x00001F00 | size: 0x148
.rodata
.balign 8

# .rodata:0x0 | 0x1DB8 | size: 0xB
.obj str_yuki_front_bom_00008018, local
	.string "yuki_front"
.endobj str_yuki_front_bom_00008018

# .rodata:0xB | 0x1DC3 | size: 0x1
.obj gap_03_00001DC3_rodata, global
.hidden gap_03_00001DC3_rodata
	.byte 0x00
.endobj gap_03_00001DC3_rodata

# .rodata:0xC | 0x1DC4 | size: 0xA
.obj str_yuki_back_bom_00008024, local
	.string "yuki_back"
.endobj str_yuki_back_bom_00008024

# .rodata:0x16 | 0x1DCE | size: 0x2
.obj gap_03_00001DCE_rodata, global
.hidden gap_03_00001DCE_rodata
	.2byte 0x0000
.endobj gap_03_00001DCE_rodata

# .rodata:0x18 | 0x1DD0 | size: 0x8
.obj str_kusa_01_bom_00008030, local
	.string "kusa_01"
.endobj str_kusa_01_bom_00008030

# .rodata:0x20 | 0x1DD8 | size: 0x8
.obj str_kusa_02_bom_00008038, local
	.string "kusa_02"
.endobj str_kusa_02_bom_00008038

# .rodata:0x28 | 0x1DE0 | size: 0x8
.obj str_kabe_01_bom_00008040, local
	.string "kabe_01"
.endobj str_kabe_01_bom_00008040

# .rodata:0x30 | 0x1DE8 | size: 0x8
.obj str_kabe_02_bom_00008048, local
	.string "kabe_02"
.endobj str_kabe_02_bom_00008048

# .rodata:0x38 | 0x1DF0 | size: 0x8
.obj str_kabe_03_bom_00008050, local
	.string "kabe_03"
.endobj str_kabe_03_bom_00008050

# .rodata:0x40 | 0x1DF8 | size: 0x6
.obj str_ki_01_bom_00008058, local
	.string "ki_01"
.endobj str_ki_01_bom_00008058

# .rodata:0x46 | 0x1DFE | size: 0x2
.obj gap_03_00001DFE_rodata, global
.hidden gap_03_00001DFE_rodata
	.2byte 0x0000
.endobj gap_03_00001DFE_rodata

# .rodata:0x48 | 0x1E00 | size: 0x6
.obj str_ki_02_bom_00008060, local
	.string "ki_02"
.endobj str_ki_02_bom_00008060

# .rodata:0x4E | 0x1E06 | size: 0x2
.obj gap_03_00001E06_rodata, global
.hidden gap_03_00001E06_rodata
	.2byte 0x0000
.endobj gap_03_00001E06_rodata

# .rodata:0x50 | 0x1E08 | size: 0x2
.obj str_B_bom_00008068, local
	.string "B"
.endobj str_B_bom_00008068

# .rodata:0x52 | 0x1E0A | size: 0x2
.obj gap_03_00001E0A_rodata, global
.hidden gap_03_00001E0A_rodata
	.2byte 0x0000
.endobj gap_03_00001E0A_rodata

# .rodata:0x54 | 0x1E0C | size: 0x2
.obj str_C_bom_0000806c, local
	.string "C"
.endobj str_C_bom_0000806c

# .rodata:0x56 | 0x1E0E | size: 0x2
.obj gap_03_00001E0E_rodata, global
.hidden gap_03_00001E0E_rodata
	.2byte 0x0000
.endobj gap_03_00001E0E_rodata

# .rodata:0x58 | 0x1E10 | size: 0x7
.obj str_bti_01_bom_00008070, local
	.string "bti_01"
.endobj str_bti_01_bom_00008070

# .rodata:0x5F | 0x1E17 | size: 0x1
.obj gap_03_00001E17_rodata, global
.hidden gap_03_00001E17_rodata
	.byte 0x00
.endobj gap_03_00001E17_rodata

# .rodata:0x60 | 0x1E18 | size: 0x9
.obj str_stg_07_0_bom_00008078, local
	.string "stg_07_0"
.endobj str_stg_07_0_bom_00008078

# .rodata:0x69 | 0x1E21 | size: 0x3
.obj gap_03_00001E21_rodata, global
.hidden gap_03_00001E21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E21_rodata

# .rodata:0x6C | 0x1E24 | size: 0xF
.obj str_マップstg_07_0_bom_00008084, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3037
	.byte 0x5F, 0x30, 0x00
.endobj str_マップstg_07_0_bom_00008084

# .rodata:0x7B | 0x1E33 | size: 0x1
.obj gap_03_00001E33_rodata, global
.hidden gap_03_00001E33_rodata
	.byte 0x00
.endobj gap_03_00001E33_rodata

# .rodata:0x7C | 0x1E34 | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_bom_00008094, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_bom_00008094

# .rodata:0x8D | 0x1E45 | size: 0x3
.obj gap_03_00001E45_rodata, global
.hidden gap_03_00001E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E45_rodata

# .rodata:0x90 | 0x1E48 | size: 0x10
.obj str_bom03ブリザード_bom_000080a8, local
	.4byte 0x626F6D30
	.4byte 0x33837583
	.4byte 0x8A835581
	.4byte 0x5B836800
.endobj str_bom03ブリザード_bom_000080a8

# .rodata:0xA0 | 0x1E58 | size: 0x14
.obj str_bom03アイスパックン_bom_000080b8, local
	.4byte 0x626F6D30
	.4byte 0x33834183
	.4byte 0x43835883
	.4byte 0x70836283
	.4byte 0x4E839300
.endobj str_bom03アイスパックン_bom_000080b8

# .rodata:0xB4 | 0x1E6C | size: 0x14
.obj str_bom04アイスパックン_bom_000080cc, local
	.4byte 0x626F6D30
	.4byte 0x34834183
	.4byte 0x43835883
	.4byte 0x70836283
	.4byte 0x4E839300
.endobj str_bom04アイスパックン_bom_000080cc

# .rodata:0xC8 | 0x1E80 | size: 0x10
.obj str_bom04ブリザード_bom_000080e0, local
	.4byte 0x626F6D30
	.4byte 0x34837583
	.4byte 0x8A835581
	.4byte 0x5B836800
.endobj str_bom04ブリザード_bom_000080e0

# .rodata:0xD8 | 0x1E90 | size: 0x10
.obj str_BTLNO_BOM_TEST1_bom_000080f0, local
	.string "BTLNO_BOM_TEST1"
.endobj str_BTLNO_BOM_TEST1_bom_000080f0

# .rodata:0xE8 | 0x1EA0 | size: 0x10
.obj str_BTLNO_BOM_03_01_bom_00008100, local
	.string "BTLNO_BOM_03_01"
.endobj str_BTLNO_BOM_03_01_bom_00008100

# .rodata:0xF8 | 0x1EB0 | size: 0x10
.obj str_BTLNO_BOM_03_02_bom_00008110, local
	.string "BTLNO_BOM_03_02"
.endobj str_BTLNO_BOM_03_02_bom_00008110

# .rodata:0x108 | 0x1EC0 | size: 0x10
.obj str_BTLNO_BOM_03_03_bom_00008120, local
	.string "BTLNO_BOM_03_03"
.endobj str_BTLNO_BOM_03_03_bom_00008120

# .rodata:0x118 | 0x1ED0 | size: 0x10
.obj str_BTLNO_BOM_04_01_bom_00008130, local
	.string "BTLNO_BOM_04_01"
.endobj str_BTLNO_BOM_04_01_bom_00008130

# .rodata:0x128 | 0x1EE0 | size: 0x10
.obj str_BTLNO_BOM_04_02_bom_00008140, local
	.string "BTLNO_BOM_04_02"
.endobj str_BTLNO_BOM_04_02_bom_00008140

# .rodata:0x138 | 0x1EF0 | size: 0x10
.obj str_BTLNO_BOM_04_03_bom_00008150, local
	.string "BTLNO_BOM_04_03"
.endobj str_BTLNO_BOM_04_03_bom_00008150

# 0x0000A068..0x0000ACB8 | size: 0xC50
.data
.balign 8

# .data:0x0 | 0xA068 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA070 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA074 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA078 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA07C | size: 0x4
.obj gap_04_0000A07C_data, global
.hidden gap_04_0000A07C_data
	.4byte 0x00000000
.endobj gap_04_0000A07C_data

# .data:0x18 | 0xA080 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA088 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA08C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA090 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA098 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA09C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA0A0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA0A4 | size: 0x4
.obj gap_04_0000A0A4_data, global
.hidden gap_04_0000A0A4_data
	.4byte 0x00000000
.endobj gap_04_0000A0A4_data

# .data:0x40 | 0xA0A8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA0B0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xA0B4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xA0B8 | size: 0x108
.obj bom_btlobject_data, local
	.4byte str_yuki_front_bom_00008018
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42980000
	.4byte 0x003C0000
	.4byte str_yuki_back_bom_00008024
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2200000
	.4byte 0x0A320000
	.4byte str_kusa_01_bom_00008030
	.4byte 0x00020001
	.4byte 0xC3270000
	.4byte 0x00000000
	.4byte 0xC1A80000
	.4byte 0x14280000
	.4byte str_kusa_02_bom_00008038
	.4byte 0x00020001
	.4byte 0x43220000
	.4byte 0x00000000
	.4byte 0xC1300000
	.4byte 0x1E1E0000
	.4byte str_kabe_01_bom_00008040
	.4byte 0x00020001
	.4byte 0x43420000
	.4byte 0x00000000
	.4byte 0x42840000
	.4byte 0x003C0000
	.4byte str_kabe_02_bom_00008048
	.4byte 0x00020001
	.4byte 0x42DE0000
	.4byte 0x00000000
	.4byte 0xC1C80000
	.4byte 0x0A320000
	.4byte str_kabe_03_bom_00008050
	.4byte 0x00020000
	.4byte 0xC28E0000
	.4byte 0x00000000
	.4byte 0xC2700000
	.4byte 0x003C0000
	.4byte str_ki_01_bom_00008058
	.4byte 0x00020000
	.4byte 0x43390000
	.4byte 0x00000000
	.4byte 0xC25C0000
	.4byte 0x0A320000
	.4byte str_ki_02_bom_00008060
	.4byte 0x00020000
	.4byte 0x42980000
	.4byte 0x00000000
	.4byte 0xC2480000
	.4byte 0x14280000
	.4byte str_B_bom_00008068
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_bom_0000806c
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.endobj bom_btlobject_data

# .data:0x158 | 0xA1C0 | size: 0x1B4
.obj bom_btlstage_data, local
	.4byte str_bti_01_bom_00008070
	.4byte str_stg_07_0_bom_00008078
	.4byte 0x0000000B
	.4byte bom_btlobject_data
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
	.4byte bgset_bom_snow_event
	.4byte 0x00010101
.endobj bom_btlstage_data

# .data:0x30C | 0xA374 | size: 0x30
.obj btlparty_bom_bom_00_01_off_1, local
	.4byte unit_kuriboo_3_data_AD08
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
.endobj btlparty_bom_bom_00_01_off_1

# .data:0x33C | 0xA3A4 | size: 0x20
.obj btlgrp_bom_bom_00_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_bom_bom_00_01_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_bom_bom_00_01_off_1

# .data:0x35C | 0xA3C4 | size: 0x60
.obj btlparty_bom_bom_03_01_off_1, local
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
.endobj btlparty_bom_bom_03_01_off_1

# .data:0x3BC | 0xA424 | size: 0x20
.obj btlgrp_bom_bom_03_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_bom_bom_03_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_bom_bom_03_01_off_1

# .data:0x3DC | 0xA444 | size: 0x90
.obj btlparty_bom_bom_03_01_off_2, local
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
.endobj btlparty_bom_bom_03_01_off_2

# .data:0x46C | 0xA4D4 | size: 0x20
.obj btlgrp_bom_bom_03_01_off_2, local
	.4byte 0x00000003
	.4byte btlparty_bom_bom_03_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_bom_bom_03_01_off_2

# .data:0x48C | 0xA4F4 | size: 0x60
.obj btlparty_bom_bom_03_03_off_1, local
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
.endobj btlparty_bom_bom_03_03_off_1

# .data:0x4EC | 0xA554 | size: 0x20
.obj btlgrp_bom_bom_03_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_bom_bom_03_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_bom_bom_03_03_off_1

# .data:0x50C | 0xA574 | size: 0x90
.obj btlparty_bom_bom_03_03_off_2, local
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
.endobj btlparty_bom_bom_03_03_off_2

# .data:0x59C | 0xA604 | size: 0x20
.obj btlgrp_bom_bom_03_03_off_2, local
	.4byte 0x00000003
	.4byte btlparty_bom_bom_03_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_bom_bom_03_03_off_2

# .data:0x5BC | 0xA624 | size: 0x60
.obj btlparty_bom_bom_04_01_off_1, local
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
.endobj btlparty_bom_bom_04_01_off_1

# .data:0x61C | 0xA684 | size: 0x20
.obj btlgrp_bom_bom_04_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_bom_bom_04_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_bom_bom_04_01_off_1

# .data:0x63C | 0xA6A4 | size: 0x90
.obj btlparty_bom_bom_04_01_off_2, local
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
.endobj btlparty_bom_bom_04_01_off_2

# .data:0x6CC | 0xA734 | size: 0x20
.obj btlgrp_bom_bom_04_01_off_2, local
	.4byte 0x00000003
	.4byte btlparty_bom_bom_04_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_bom_bom_04_01_off_2

# .data:0x6EC | 0xA754 | size: 0x60
.obj btlparty_bom_bom_04_02_off_1, local
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
.endobj btlparty_bom_bom_04_02_off_1

# .data:0x74C | 0xA7B4 | size: 0x20
.obj btlgrp_bom_bom_04_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_bom_bom_04_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_bom_bom_04_02_off_1

# .data:0x76C | 0xA7D4 | size: 0x90
.obj btlparty_bom_bom_04_02_off_2, local
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_bllizard_3_data_B8A0
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
	.4byte battle_item_bllizard
.endobj btlparty_bom_bom_04_02_off_2

# .data:0x7FC | 0xA864 | size: 0x20
.obj btlgrp_bom_bom_04_02_off_2, local
	.4byte 0x00000003
	.4byte btlparty_bom_bom_04_02_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_bom_bom_04_02_off_2

# .data:0x81C | 0xA884 | size: 0xC0
.obj btlparty_bom_bom_04_03_off_1, local
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
	.4byte unit_ice_pakkun_3_data_CE60
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
	.4byte battle_item_ice_pakkun
.endobj btlparty_bom_bom_04_03_off_1

# .data:0x8DC | 0xA944 | size: 0x20
.obj btlgrp_bom_bom_04_03_off_1, local
	.4byte 0x00000004
	.4byte btlparty_bom_bom_04_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_bom_bom_04_03_off_1

# .data:0x8FC | 0xA964 | size: 0x18
.obj btlgrpsel_bom_btlno_bom_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_bom_bom_00_01_off_1
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_test1_off

# .data:0x914 | 0xA97C | size: 0x24
.obj btlgrpsel_bom_btlno_bom_03_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_bom_bom_03_01_off_1
	.4byte bom_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_03_01_off_2
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_03_01_off

# .data:0x938 | 0xA9A0 | size: 0x24
.obj btlgrpsel_bom_btlno_bom_03_02_off, local
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_03_01_off_1
	.4byte bom_btlstage_data
	.4byte 0x00000014
	.4byte btlgrp_bom_bom_03_01_off_2
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_03_02_off

# .data:0x95C | 0xA9C4 | size: 0x24
.obj btlgrpsel_bom_btlno_bom_03_03_off, local
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_03_03_off_1
	.4byte bom_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_03_03_off_2
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_03_03_off

# .data:0x980 | 0xA9E8 | size: 0x24
.obj btlgrpsel_bom_btlno_bom_04_01_off, local
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_04_01_off_1
	.4byte bom_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_04_01_off_2
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_04_01_off

# .data:0x9A4 | 0xAA0C | size: 0x24
.obj btlgrpsel_bom_btlno_bom_04_02_off, local
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_04_02_off_1
	.4byte bom_btlstage_data
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_04_02_off_2
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_04_02_off

# .data:0x9C8 | 0xAA30 | size: 0x18
.obj btlgrpsel_bom_btlno_bom_04_03_off, local
	.4byte 0x0000000A
	.4byte btlgrp_bom_bom_04_03_off_1
	.4byte bom_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_bom_btlno_bom_04_03_off

# .data:0x9E0 | 0xAA48 | size: 0x220
.obj btlsetup_bom_tbl_3_data_AA48, global
	.4byte str_マップstg_07_0_bom_00008084
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_test1_off
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
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte str_bom03ブリザード_bom_000080a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_03_01_off
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
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte str_bom03ブリザード_bom_000080a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_03_02_off
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
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte str_bom03アイスパックン_bom_000080b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_03_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte str_bom04アイスパックン_bom_000080cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_04_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte str_bom04ブリザード_bom_000080e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_04_02_off
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
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte str_bom04アイスパックン_bom_000080cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_bom_btlno_bom_04_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_bom_00008094
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_bom_tbl_3_data_AA48

# .data:0xC00 | 0xAC68 | size: 0x40
.obj btl_bom_setup_no_tbl_3_data_AC68, global
	.4byte str_BTLNO_BOM_TEST1_bom_000080f0
	.4byte 0x00000000
	.4byte str_BTLNO_BOM_03_01_bom_00008100
	.4byte 0x00000001
	.4byte str_BTLNO_BOM_03_02_bom_00008110
	.4byte 0x00000002
	.4byte str_BTLNO_BOM_03_03_bom_00008120
	.4byte 0x00000003
	.4byte str_BTLNO_BOM_04_01_bom_00008130
	.4byte 0x00000004
	.4byte str_BTLNO_BOM_04_02_bom_00008140
	.4byte 0x00000005
	.4byte str_BTLNO_BOM_04_03_bom_00008150
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_bom_setup_no_tbl_3_data_AC68

# .data:0xC40 | 0xACA8 | size: 0x10
.obj bgset_bom_snow_event, local
	.4byte 0x0001005B
	.4byte _snow_control
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_bom_snow_event
