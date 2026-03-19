.include "macros.inc"
.file "tik_10.o"

# 0x00002B50..0x00002BD0 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x2B50 | size: 0x8
.obj str_dokan_1_tik_0000a9b8, local
	.string "dokan_1"
.endobj str_dokan_1_tik_0000a9b8

# .rodata:0x8 | 0x2B58 | size: 0x7
.obj str_tik_06_tik_0000a9c0, local
	.string "tik_06"
.endobj str_tik_06_tik_0000a9c0

# .rodata:0xF | 0x2B5F | size: 0x1
.obj gap_03_00002B5F_rodata, global
.hidden gap_03_00002B5F_rodata
	.byte 0x00
.endobj gap_03_00002B5F_rodata

# .rodata:0x10 | 0x2B60 | size: 0x8
.obj str_dokan_3_tik_0000a9c8, local
	.string "dokan_3"
.endobj str_dokan_3_tik_0000a9c8

# .rodata:0x18 | 0x2B68 | size: 0x8
.obj str_dokan_2_tik_0000a9d0, local
	.string "dokan_2"
.endobj str_dokan_2_tik_0000a9d0

# .rodata:0x20 | 0x2B70 | size: 0x7
.obj str_tik_09_tik_0000a9d8, local
	.string "tik_09"
.endobj str_tik_09_tik_0000a9d8

# .rodata:0x27 | 0x2B77 | size: 0x1
.obj gap_03_00002B77_rodata, global
.hidden gap_03_00002B77_rodata
	.byte 0x00
.endobj gap_03_00002B77_rodata

# .rodata:0x28 | 0x2B78 | size: 0x7
.obj str_tik_14_tik_0000a9e0, local
	.string "tik_14"
.endobj str_tik_14_tik_0000a9e0

# .rodata:0x2F | 0x2B7F | size: 0x1
.obj gap_03_00002B7F_rodata, global
.hidden gap_03_00002B7F_rodata
	.byte 0x00
.endobj gap_03_00002B7F_rodata

# .rodata:0x30 | 0x2B80 | size: 0xB
.obj str_mobj_box00_tik_0000a9e8, local
	.string "mobj_box00"
.endobj str_mobj_box00_tik_0000a9e8

# .rodata:0x3B | 0x2B8B | size: 0x1
.obj gap_03_00002B8B_rodata, global
.hidden gap_03_00002B8B_rodata
	.byte 0x00
.endobj gap_03_00002B8B_rodata

# .rodata:0x3C | 0x2B8C | size: 0x7
.obj str_item00_tik_0000a9f4, local
	.string "item00"
.endobj str_item00_tik_0000a9f4

# .rodata:0x43 | 0x2B93 | size: 0x1
.obj gap_03_00002B93_rodata, global
.hidden gap_03_00002B93_rodata
	.byte 0x00
.endobj gap_03_00002B93_rodata

# .rodata:0x44 | 0x2B94 | size: 0xA
.obj str_a_dokan_3_tik_0000a9fc, local
	.string "a_dokan_3"
.endobj str_a_dokan_3_tik_0000a9fc

# .rodata:0x4E | 0x2B9E | size: 0x2
.obj gap_03_00002B9E_rodata, global
.hidden gap_03_00002B9E_rodata
	.2byte 0x0000
.endobj gap_03_00002B9E_rodata

# .rodata:0x50 | 0x2BA0 | size: 0xA
.obj str_dokan_1_s_tik_0000aa08, local
	.string "dokan_1_s"
.endobj str_dokan_1_s_tik_0000aa08

# .rodata:0x5A | 0x2BAA | size: 0x2
.obj gap_03_00002BAA_rodata, global
.hidden gap_03_00002BAA_rodata
	.2byte 0x0000
.endobj gap_03_00002BAA_rodata

# .rodata:0x5C | 0x2BAC | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000aa14, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000aa14

# .rodata:0x6A | 0x2BBA | size: 0x2
.obj gap_03_00002BBA_rodata, global
.hidden gap_03_00002BBA_rodata
	.2byte 0x0000
.endobj gap_03_00002BBA_rodata

# .rodata:0x6C | 0x2BBC | size: 0xE
.obj str_ENV_STG0_TIK1_tik_0000aa24, local
	.string "ENV_STG0_TIK1"
.endobj str_ENV_STG0_TIK1_tik_0000aa24

# .rodata:0x7A | 0x2BCA | size: 0x6
.obj gap_03_00002BCA_rodata, global
.hidden gap_03_00002BCA_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_00002BCA_rodata

# 0x00013470..0x000136E8 | size: 0x278
.data
.balign 8

# .data:0x0 | 0x13470 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13478 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1347C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13480 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x13484 | size: 0x4
.obj gap_04_00013484_data, global
.hidden gap_04_00013484_data
	.4byte 0x00000000
.endobj gap_04_00013484_data

# .data:0x18 | 0x13488 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13490 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x13494 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13498 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x134A0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x134A4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x134A8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x134AC | size: 0x4
.obj gap_04_000134AC_data, global
.hidden gap_04_000134AC_data
	.4byte 0x00000000
.endobj gap_04_000134AC_data

# .data:0x40 | 0x134B0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x134B8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x134BC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x134C0 | size: 0xF0
.obj bero_entry_data, local
	.4byte str_dokan_1_tik_0000a9b8
	.4byte 0x00020000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte str_tik_06_tik_0000a9c0
	.4byte str_dokan_3_tik_0000a9c8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_tik_0000a9d0
	.4byte 0x00020000
	.4byte 0x00000008
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_09_tik_0000a9d8
	.4byte str_dokan_1_tik_0000a9b8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_3_tik_0000a9c8
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_14_tik_0000a9e0
	.4byte str_dokan_2_tik_0000a9d0
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

# .data:0x140 | 0x135B0 | size: 0x88
.obj item_get00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_tik_0000a9e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_tik_0000a9f4
	.4byte 0x00000094
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_tik_0000a9f4
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_tik_0000a9e8
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_tik_0000a9f4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_get00

# .data:0x1C8 | 0x13638 | size: 0xB0
.obj tik_10_init_evt_24_data_13638, global
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_dokan_3_tik_0000a9fc
	.4byte str_dokan_1_s_tik_0000aa08
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_dokan_1_s_tik_0000aa08
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dokan_3_tik_0000a9fc
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000aa14
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK1_tik_0000aa24
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
	.4byte str_mobj_box00_tik_0000a9e8
	.4byte 0x00000000
	.4byte 0x0000001A
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_get00
	.4byte 0xF84060D0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_10_init_evt_24_data_13638
