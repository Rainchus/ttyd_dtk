.include "macros.inc"
.file "jin_05.o"

# 0x00000D00..0x00000D78 | size: 0x78
.rodata
.balign 8

# .rodata:0x0 | 0xD00 | size: 0x7
.obj str_s_bero_jin_00007f20, local
	.string "s_bero"
.endobj str_s_bero_jin_00007f20

# .rodata:0x7 | 0xD07 | size: 0x1
.obj gap_03_00000D07_rodata, global
.hidden gap_03_00000D07_rodata
	.byte 0x00
.endobj gap_03_00000D07_rodata

# .rodata:0x8 | 0xD08 | size: 0x7
.obj str_jin_00_jin_00007f28, local
	.string "jin_00"
.endobj str_jin_00_jin_00007f28

# .rodata:0xF | 0xD0F | size: 0x1
.obj gap_03_00000D0F_rodata, global
.hidden gap_03_00000D0F_rodata
	.byte 0x00
.endobj gap_03_00000D0F_rodata

# .rodata:0x10 | 0xD10 | size: 0x9
.obj str_n_bero_1_jin_00007f30, local
	.string "n_bero_1"
.endobj str_n_bero_1_jin_00007f30

# .rodata:0x19 | 0xD19 | size: 0x3
.obj gap_03_00000D19_rodata, global
.hidden gap_03_00000D19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000D19_rodata

# .rodata:0x1C | 0xD1C | size: 0xB
.obj str_mobj_box00_jin_00007f3c, local
	.string "mobj_box00"
.endobj str_mobj_box00_jin_00007f3c

# .rodata:0x27 | 0xD27 | size: 0x1
.obj gap_03_00000D27_rodata, global
.hidden gap_03_00000D27_rodata
	.byte 0x00
.endobj gap_03_00000D27_rodata

# .rodata:0x28 | 0xD28 | size: 0x8
.obj str_item00_jin_00007f48, local
	.string "_item00"
.endobj str_item00_jin_00007f48

# .rodata:0x30 | 0xD30 | size: 0xB
.obj str_mobj_box01_jin_00007f50, local
	.string "mobj_box01"
.endobj str_mobj_box01_jin_00007f50

# .rodata:0x3B | 0xD3B | size: 0x1
.obj gap_03_00000D3B_rodata, global
.hidden gap_03_00000D3B_rodata
	.byte 0x00
.endobj gap_03_00000D3B_rodata

# .rodata:0x3C | 0xD3C | size: 0x8
.obj str_item01_jin_00007f5c, local
	.string "_item01"
.endobj str_item01_jin_00007f5c

# .rodata:0x44 | 0xD44 | size: 0xE
.obj str_BGM_STG4_JIN1_jin_00007f64, local
	.string "BGM_STG4_JIN1"
.endobj str_BGM_STG4_JIN1_jin_00007f64

# .rodata:0x52 | 0xD52 | size: 0x2
.obj gap_03_00000D52_rodata, global
.hidden gap_03_00000D52_rodata
	.2byte 0x0000
.endobj gap_03_00000D52_rodata

# .rodata:0x54 | 0xD54 | size: 0xE
.obj str_ENV_STG4_JIN1_jin_00007f74, local
	.string "ENV_STG4_JIN1"
.endobj str_ENV_STG4_JIN1_jin_00007f74

# .rodata:0x62 | 0xD62 | size: 0x2
.obj gap_03_00000D62_rodata, global
.hidden gap_03_00000D62_rodata
	.2byte 0x0000
.endobj gap_03_00000D62_rodata

# .rodata:0x64 | 0xD64 | size: 0x7
.obj str_pblk00_jin_00007f84, local
	.string "pblk00"
.endobj str_pblk00_jin_00007f84

# .rodata:0x6B | 0xD6B | size: 0x1
.obj gap_03_00000D6B_rodata, global
.hidden gap_03_00000D6B_rodata
	.byte 0x00
.endobj gap_03_00000D6B_rodata

# .rodata:0x6C | 0xD6C | size: 0x8
.obj str_item_00_jin_00007f8c, local
	.string "item_00"
.endobj str_item_00_jin_00007f8c

# .rodata:0x74 | 0xD74 | size: 0x4
.obj gap_03_00000D74_rodata, global
.hidden gap_03_00000D74_rodata
	.4byte 0x00000000
.endobj gap_03_00000D74_rodata

# 0x00007948..0x00007C60 | size: 0x318
.data
.balign 8

# .data:0x0 | 0x7948 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x7950 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x7954 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x7958 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x795C | size: 0x4
.obj gap_04_0000795C_data, global
.hidden gap_04_0000795C_data
	.4byte 0x00000000
.endobj gap_04_0000795C_data

# .data:0x18 | 0x7960 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x7968 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x796C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x7970 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x7978 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x797C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x7980 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x7984 | size: 0x4
.obj gap_04_00007984_data, global
.hidden gap_04_00007984_data
	.4byte 0x00000000
.endobj gap_04_00007984_data

# .data:0x40 | 0x7988 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7990 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x7994 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7998 | size: 0x40
.obj check_roll, local
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000016
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj check_roll

# .data:0x90 | 0x79D8 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_jin_00007f20
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte check_roll
	.4byte str_jin_00_jin_00007f28
	.4byte str_n_bero_1_jin_00007f30
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

# .data:0x108 | 0x7A50 | size: 0x88
.obj item_box_00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_jin_00007f3c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_jin_00007f48
	.4byte 0x0000003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_jin_00007f48
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_jin_00007f3c
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_jin_00007f48
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_box_00

# .data:0x190 | 0x7AD8 | size: 0x88
.obj mobj_box01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box01_jin_00007f50
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_jin_00007f5c
	.4byte 0x000000FD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item01_jin_00007f5c
	.4byte 0x00000102
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box01_jin_00007f50
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item01_jin_00007f5c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box01

# .data:0x218 | 0x7B60 | size: 0xFC
.obj jin_05_init_evt_13_data_7B60, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_00007f64
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN1_jin_00007f74
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_kagemario_init_13_text_4DE8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_13_data_AF00
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_jin_00007f84
	.4byte 0x00000041
	.4byte 0x0000003C
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0xF840712D
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_jin_00007f3c
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_box_00
	.4byte 0xF840643B
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box01_jin_00007f50
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box01
	.4byte 0xF840643D
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_jin_00007f8c
	.4byte 0x0000007D
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x00000010
	.4byte 0xF8407183
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_05_init_evt_13_data_7B60

# .data:0x314 | 0x7C5C | size: 0x4
.obj gap_04_00007C5C_data, global
.hidden gap_04_00007C5C_data
	.4byte 0x00000000
.endobj gap_04_00007C5C_data
