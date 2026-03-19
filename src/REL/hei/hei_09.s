.include "macros.inc"
.file "hei_09.o"

# 0x000011F4..0x00001214 | size: 0x20
.text
.balign 4

# .text:0x0 | 0x11F4 | size: 0x20
.fn hei_test_water_tev_11_text_11F4, global
/* 000011F4 000012B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000011F8 000012BC  7C 08 02 A6 */	mflr r0
/* 000011FC 000012C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001200 000012C4  4B FF EE 01 */	bl envSetWater
/* 00001204 000012C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001208 000012CC  7C 08 03 A6 */	mtlr r0
/* 0000120C 000012D0  38 21 00 10 */	addi r1, r1, 0x10
/* 00001210 000012D4  4E 80 00 20 */	blr
.endfn hei_test_water_tev_11_text_11F4

# 0x00001AE8..0x00001B38 | size: 0x50
.rodata
.balign 8

# .rodata:0x0 | 0x1AE8 | size: 0x7
.obj str_w_bero_hei_000079c8, local
	.string "w_bero"
.endobj str_w_bero_hei_000079c8

# .rodata:0x7 | 0x1AEF | size: 0x1
.obj gap_03_00001AEF_rodata, global
.hidden gap_03_00001AEF_rodata
	.byte 0x00
.endobj gap_03_00001AEF_rodata

# .rodata:0x8 | 0x1AF0 | size: 0x7
.obj str_hei_08_hei_000079d0, local
	.string "hei_08"
.endobj str_hei_08_hei_000079d0

# .rodata:0xF | 0x1AF7 | size: 0x1
.obj gap_03_00001AF7_rodata, global
.hidden gap_03_00001AF7_rodata
	.byte 0x00
.endobj gap_03_00001AF7_rodata

# .rodata:0x10 | 0x1AF8 | size: 0x7
.obj str_e_bero_hei_000079d8, local
	.string "e_bero"
.endobj str_e_bero_hei_000079d8

# .rodata:0x17 | 0x1AFF | size: 0x1
.obj gap_03_00001AFF_rodata, global
.hidden gap_03_00001AFF_rodata
	.byte 0x00
.endobj gap_03_00001AFF_rodata

# .rodata:0x18 | 0x1B00 | size: 0x7
.obj str_hei_10_hei_000079e0, local
	.string "hei_10"
.endobj str_hei_10_hei_000079e0

# .rodata:0x1F | 0x1B07 | size: 0x1
.obj gap_03_00001B07_rodata, global
.hidden gap_03_00001B07_rodata
	.byte 0x00
.endobj gap_03_00001B07_rodata

# .rodata:0x20 | 0x1B08 | size: 0x11
.obj str_BGM_STG1_TORIDE1_hei_000079e8, local
	.string "BGM_STG1_TORIDE1"
.endobj str_BGM_STG1_TORIDE1_hei_000079e8

# .rodata:0x31 | 0x1B19 | size: 0x3
.obj gap_03_00001B19_rodata, global
.hidden gap_03_00001B19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B19_rodata

# .rodata:0x34 | 0x1B1C | size: 0xE
.obj str_ENV_STG1_HEI3_hei_000079fc, local
	.string "ENV_STG1_HEI3"
.endobj str_ENV_STG1_HEI3_hei_000079fc

# .rodata:0x42 | 0x1B2A | size: 0x2
.obj gap_03_00001B2A_rodata, global
.hidden gap_03_00001B2A_rodata
	.2byte 0x0000
.endobj gap_03_00001B2A_rodata

# .rodata:0x44 | 0x1B2C | size: 0x5
.obj str_mizu_hei_00007a0c, local
	.string "mizu"
.endobj str_mizu_hei_00007a0c

# .rodata:0x49 | 0x1B31 | size: 0x7
.obj gap_03_00001B31_rodata, global
.hidden gap_03_00001B31_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B31_rodata

# 0x00009978..0x00009B30 | size: 0x1B8
.data
.balign 8

# .data:0x0 | 0x9978 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x9980 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x9984 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9988 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x998C | size: 0x4
.obj gap_04_0000998C_data, global
.hidden gap_04_0000998C_data
	.4byte 0x00000000
.endobj gap_04_0000998C_data

# .data:0x18 | 0x9990 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9998 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x999C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x99A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x99A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x99AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x99B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x99B4 | size: 0x4
.obj gap_04_000099B4_data, global
.hidden gap_04_000099B4_data
	.4byte 0x00000000
.endobj gap_04_000099B4_data

# .data:0x40 | 0x99B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x99C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x99C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x99C8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_hei_000079c8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_08_hei_000079d0
	.4byte str_e_bero_hei_000079d8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_hei_000079d8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_10_hei_000079e0
	.4byte str_w_bero_hei_000079c8
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

# .data:0x104 | 0x9A7C | size: 0xB0
.obj hei_09_init_evt_11_data_9A7C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_TORIDE1_hei_000079e8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI3_hei_000079fc
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_hei_00007a0c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte hei_test_water_tev_11_text_11F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_mizu_hei_00007a0c
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_mizu_hei_00007a0c
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_09_init_evt_11_data_9A7C

# .data:0x1B4 | 0x9B2C | size: 0x4
.obj gap_04_00009B2C_data, global
.hidden gap_04_00009B2C_data
	.4byte 0x00000000
.endobj gap_04_00009B2C_data
