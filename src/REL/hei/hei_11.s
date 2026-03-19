.include "macros.inc"
.file "hei_11.o"

# 0x00001D78..0x00001DC8 | size: 0x50
.rodata
.balign 8

# .rodata:0x0 | 0x1D78 | size: 0x7
.obj str_w_bero_hei_00007c58, local
	.string "w_bero"
.endobj str_w_bero_hei_00007c58

# .rodata:0x7 | 0x1D7F | size: 0x1
.obj gap_03_00001D7F_rodata, global
.hidden gap_03_00001D7F_rodata
	.byte 0x00
.endobj gap_03_00001D7F_rodata

# .rodata:0x8 | 0x1D80 | size: 0x7
.obj str_hei_10_hei_00007c60, local
	.string "hei_10"
.endobj str_hei_10_hei_00007c60

# .rodata:0xF | 0x1D87 | size: 0x1
.obj gap_03_00001D87_rodata, global
.hidden gap_03_00001D87_rodata
	.byte 0x00
.endobj gap_03_00001D87_rodata

# .rodata:0x10 | 0x1D88 | size: 0x7
.obj str_e_bero_hei_00007c68, local
	.string "e_bero"
.endobj str_e_bero_hei_00007c68

# .rodata:0x17 | 0x1D8F | size: 0x1
.obj gap_03_00001D8F_rodata, global
.hidden gap_03_00001D8F_rodata
	.byte 0x00
.endobj gap_03_00001D8F_rodata

# .rodata:0x18 | 0x1D90 | size: 0x7
.obj str_hei_12_hei_00007c70, local
	.string "hei_12"
.endobj str_hei_12_hei_00007c70

# .rodata:0x1F | 0x1D97 | size: 0x1
.obj gap_03_00001D97_rodata, global
.hidden gap_03_00001D97_rodata
	.byte 0x00
.endobj gap_03_00001D97_rodata

# .rodata:0x20 | 0x1D98 | size: 0x11
.obj str_BGM_STG1_TORIDE1_hei_00007c78, local
	.string "BGM_STG1_TORIDE1"
.endobj str_BGM_STG1_TORIDE1_hei_00007c78

# .rodata:0x31 | 0x1DA9 | size: 0x3
.obj gap_03_00001DA9_rodata, global
.hidden gap_03_00001DA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DA9_rodata

# .rodata:0x34 | 0x1DAC | size: 0xE
.obj str_ENV_STG1_HEI3_hei_00007c8c, local
	.string "ENV_STG1_HEI3"
.endobj str_ENV_STG1_HEI3_hei_00007c8c

# .rodata:0x42 | 0x1DBA | size: 0x2
.obj gap_03_00001DBA_rodata, global
.hidden gap_03_00001DBA_rodata
	.2byte 0x0000
.endobj gap_03_00001DBA_rodata

# .rodata:0x44 | 0x1DBC | size: 0x5
.obj str_mizu_hei_00007c9c, local
	.string "mizu"
.endobj str_mizu_hei_00007c9c

# .rodata:0x49 | 0x1DC1 | size: 0x7
.obj gap_03_00001DC1_rodata, global
.hidden gap_03_00001DC1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DC1_rodata

# 0x0000A4B8..0x0000A670 | size: 0x1B8
.data
.balign 8

# .data:0x0 | 0xA4B8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA4C0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA4C4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA4C8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA4CC | size: 0x4
.obj gap_04_0000A4CC_data, global
.hidden gap_04_0000A4CC_data
	.4byte 0x00000000
.endobj gap_04_0000A4CC_data

# .data:0x18 | 0xA4D0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA4D8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA4DC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA4E0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA4E8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA4EC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA4F0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA4F4 | size: 0x4
.obj gap_04_0000A4F4_data, global
.hidden gap_04_0000A4F4_data
	.4byte 0x00000000
.endobj gap_04_0000A4F4_data

# .data:0x40 | 0xA4F8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA500 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xA504 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xA508 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_hei_00007c58
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_10_hei_00007c60
	.4byte str_e_bero_hei_00007c68
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_hei_00007c68
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_12_hei_00007c70
	.4byte str_w_bero_hei_00007c58
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

# .data:0x104 | 0xA5BC | size: 0xB0
.obj hei_11_init_evt_11_data_A5BC, global
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
	.4byte str_BGM_STG1_TORIDE1_hei_00007c78
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI3_hei_00007c8c
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_hei_00007c9c
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
	.4byte str_mizu_hei_00007c9c
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_mizu_hei_00007c9c
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_11_init_evt_11_data_A5BC

# .data:0x1B4 | 0xA66C | size: 0x4
.obj gap_04_0000A66C_data, global
.hidden gap_04_0000A66C_data
	.4byte 0x00000000
.endobj gap_04_0000A66C_data
