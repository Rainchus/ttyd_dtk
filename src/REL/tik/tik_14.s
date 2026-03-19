.include "macros.inc"
.file "tik_14.o"

# 0x00003948..0x000039A0 | size: 0x58
.rodata
.balign 8

# .rodata:0x0 | 0x3948 | size: 0x8
.obj str_dokan_1_tik_0000b7b0, local
	.string "dokan_1"
.endobj str_dokan_1_tik_0000b7b0

# .rodata:0x8 | 0x3950 | size: 0x7
.obj str_tik_06_tik_0000b7b8, local
	.string "tik_06"
.endobj str_tik_06_tik_0000b7b8

# .rodata:0xF | 0x3957 | size: 0x1
.obj gap_03_00003957_rodata, global
.hidden gap_03_00003957_rodata
	.byte 0x00
.endobj gap_03_00003957_rodata

# .rodata:0x10 | 0x3958 | size: 0x8
.obj str_dokan_3_tik_0000b7c0, local
	.string "dokan_3"
.endobj str_dokan_3_tik_0000b7c0

# .rodata:0x18 | 0x3960 | size: 0x8
.obj str_dokan_2_tik_0000b7c8, local
	.string "dokan_2"
.endobj str_dokan_2_tik_0000b7c8

# .rodata:0x20 | 0x3968 | size: 0xB
.obj str_mobj_box00_tik_0000b7d0, local
	.string "mobj_box00"
.endobj str_mobj_box00_tik_0000b7d0

# .rodata:0x2B | 0x3973 | size: 0x1
.obj gap_03_00003973_rodata, global
.hidden gap_03_00003973_rodata
	.byte 0x00
.endobj gap_03_00003973_rodata

# .rodata:0x2C | 0x3974 | size: 0x7
.obj str_item00_tik_0000b7dc, local
	.string "item00"
.endobj str_item00_tik_0000b7dc

# .rodata:0x33 | 0x397B | size: 0x1
.obj gap_03_0000397B_rodata, global
.hidden gap_03_0000397B_rodata
	.byte 0x00
.endobj gap_03_0000397B_rodata

# .rodata:0x34 | 0x397C | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000b7e4, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000b7e4

# .rodata:0x42 | 0x398A | size: 0x2
.obj gap_03_0000398A_rodata, global
.hidden gap_03_0000398A_rodata
	.2byte 0x0000
.endobj gap_03_0000398A_rodata

# .rodata:0x44 | 0x398C | size: 0xE
.obj str_ENV_STG0_TIK1_tik_0000b7f4, local
	.string "ENV_STG0_TIK1"
.endobj str_ENV_STG0_TIK1_tik_0000b7f4

# .rodata:0x52 | 0x399A | size: 0x6
.obj gap_03_0000399A_rodata, global
.hidden gap_03_0000399A_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_0000399A_rodata

# 0x0001B2E8..0x0001B4F0 | size: 0x208
.data
.balign 8

# .data:0x0 | 0x1B2E8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1B2F0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1B2F4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1B2F8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1B2FC | size: 0x4
.obj gap_04_0001B2FC_data, global
.hidden gap_04_0001B2FC_data
	.4byte 0x00000000
.endobj gap_04_0001B2FC_data

# .data:0x18 | 0x1B300 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1B308 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1B30C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1B310 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1B318 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1B31C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1B320 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1B324 | size: 0x4
.obj gap_04_0001B324_data, global
.hidden gap_04_0001B324_data
	.4byte 0x00000000
.endobj gap_04_0001B324_data

# .data:0x40 | 0x1B328 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1B330 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1B334 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1B338 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_dokan_1_tik_0000b7b0
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_tik_06_tik_0000b7b8
	.4byte str_dokan_3_tik_0000b7c0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_tik_0000b7c8
	.4byte 0x00020000
	.4byte 0x00000008
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_06_tik_0000b7b8
	.4byte str_dokan_3_tik_0000b7c0
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

# .data:0x104 | 0x1B3EC | size: 0x88
.obj item_get00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_tik_0000b7d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_tik_0000b7dc
	.4byte 0x00000094
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_tik_0000b7dc
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_tik_0000b7d0
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_tik_0000b7dc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_get00

# .data:0x18C | 0x1B474 | size: 0x78
.obj tik_14_init_evt_24_data_1B474, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000b7e4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK1_tik_0000b7f4
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
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_tik_0000b7d0
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_get00
	.4byte 0xF84060D1
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_14_init_evt_24_data_1B474

# .data:0x204 | 0x1B4EC | size: 0x4
.obj gap_04_0001B4EC_data, global
.hidden gap_04_0001B4EC_data
	.4byte 0x00000000
.endobj gap_04_0001B4EC_data
