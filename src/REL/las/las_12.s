.include "macros.inc"
.file "las_12.o"

# 0x00001B98..0x00001C18 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x1B98 | size: 0x8
.obj str_S_door1_las_00013600, local
	.string "S_door1"
.endobj str_S_door1_las_00013600

# .rodata:0x8 | 0x1BA0 | size: 0x9
.obj str_w_bero_1_las_00013608, local
	.string "w_bero_1"
.endobj str_w_bero_1_las_00013608

# .rodata:0x11 | 0x1BA9 | size: 0x3
.obj gap_03_00001BA9_rodata, global
.hidden gap_03_00001BA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BA9_rodata

# .rodata:0x14 | 0x1BAC | size: 0x7
.obj str_las_10_las_00013614, local
	.string "las_10"
.endobj str_las_10_las_00013614

# .rodata:0x1B | 0x1BB3 | size: 0x1
.obj gap_03_00001BB3_rodata, global
.hidden gap_03_00001BB3_rodata
	.byte 0x00
.endobj gap_03_00001BB3_rodata

# .rodata:0x1C | 0x1BB4 | size: 0xA
.obj str_ne_bero_1_las_0001361c, local
	.string "ne_bero_1"
.endobj str_ne_bero_1_las_0001361c

# .rodata:0x26 | 0x1BBE | size: 0x2
.obj gap_03_00001BBE_rodata, global
.hidden gap_03_00001BBE_rodata
	.2byte 0x0000
.endobj gap_03_00001BBE_rodata

# .rodata:0x28 | 0x1BC0 | size: 0x4
.obj str_box_las_00013628, local
	.string "box"
.endobj str_box_las_00013628

# .rodata:0x2C | 0x1BC4 | size: 0x4
.obj str_key_las_0001362c, local
	.string "key"
.endobj str_key_las_0001362c

# .rodata:0x30 | 0x1BC8 | size: 0xC
.obj str_stg8_las_37_las_00013630, local
	.string "stg8_las_37"
.endobj str_stg8_las_37_las_00013630

# .rodata:0x3C | 0x1BD4 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_las_0001363c, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_las_0001363c

# .rodata:0x50 | 0x1BE8 | size: 0xE
.obj str_BGM_STG8_LST2_las_00013650, local
	.string "BGM_STG8_LST2"
.endobj str_BGM_STG8_LST2_las_00013650

# .rodata:0x5E | 0x1BF6 | size: 0x2
.obj gap_03_00001BF6_rodata, global
.hidden gap_03_00001BF6_rodata
	.2byte 0x0000
.endobj gap_03_00001BF6_rodata

# .rodata:0x60 | 0x1BF8 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00013660, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00013660

# .rodata:0x6E | 0x1C06 | size: 0x2
.obj gap_03_00001C06_rodata, global
.hidden gap_03_00001C06_rodata
	.2byte 0x0000
.endobj gap_03_00001C06_rodata

# .rodata:0x70 | 0x1C08 | size: 0x7
.obj str_switch_las_00013670, local
	.string "switch"
.endobj str_switch_las_00013670

# .rodata:0x77 | 0x1C0F | size: 0x1
.obj gap_03_00001C0F_rodata, global
.hidden gap_03_00001C0F_rodata
	.byte 0x00
.endobj gap_03_00001C0F_rodata

# .rodata:0x78 | 0x1C10 | size: 0x7
.obj str_A_pure_las_00013678, local
	.string "A_pure"
.endobj str_A_pure_las_00013678

# .rodata:0x7F | 0x1C17 | size: 0x1
.obj gap_03_00001C17_rodata, global
.hidden gap_03_00001C17_rodata
	.byte 0x00
.endobj gap_03_00001C17_rodata

# 0x0000A588..0x0000A9B8 | size: 0x430
.data
.balign 8

# .data:0x0 | 0xA588 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA590 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA594 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA598 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA59C | size: 0x4
.obj gap_04_0000A59C_data, global
.hidden gap_04_0000A59C_data
	.4byte 0x00000000
.endobj gap_04_0000A59C_data

# .data:0x18 | 0xA5A0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA5A8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA5AC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA5B0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA5B8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA5BC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA5C0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA5C4 | size: 0x4
.obj gap_04_0000A5C4_data, global
.hidden gap_04_0000A5C4_data
	.4byte 0x00000000
.endobj gap_04_0000A5C4_data

# .data:0x40 | 0xA5C8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA5D0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xA5D4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xA5D8 | size: 0x30
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door1_las_00013600
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0x80 | 0xA608 | size: 0x30
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door1_las_00013600
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0xB0 | 0xA638 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_1_las_00013608
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_10_las_00013614
	.4byte str_ne_bero_1_las_0001361c
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

# .data:0x128 | 0xA6B0 | size: 0x78
.obj box_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_las_00013628
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key_las_0001362c
	.4byte 0x00000027
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_las_00013628
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_key_las_0001362c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj box_evt

# .data:0x1A0 | 0xA728 | size: 0xB8
.obj switch_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000004E2
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x00000064
	.4byte 0x0000016B
	.4byte 0xFFFFFF6A
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mobj_set_position
	.4byte str_box_las_00013628
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_box_las_00013628
	.4byte 0x00004040
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_box_las_00013628
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_box_las_00013628
	.4byte 0x0001005E
	.4byte box_syutugen_16_data_60
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_evt

# .data:0x258 | 0xA7E0 | size: 0x38
.obj hint_plate, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_37_las_00013630
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hint_plate

# .data:0x290 | 0xA818 | size: 0xA8
.obj kabenuke_check_evt, local
	.4byte 0x00020018
	.4byte 0xF8406C9D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_las_0001363c
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406C9D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kabenuke_check_evt

# .data:0x338 | 0xA8C0 | size: 0xF8
.obj las_12_init_evt_16_data_A8C0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST2_las_00013650
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00013660
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
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_blue
	.4byte 0x00000000
	.4byte str_switch_las_00013670
	.4byte 0x00000096
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte switch_evt
	.4byte 0xF8406C76
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_las_00013628
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte box_evt
	.4byte 0xF8406C8B
	.4byte 0x00020018
	.4byte 0xF8406C76
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_box_las_00013628
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_box_las_00013628
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_pure_las_00013678
	.4byte 0x00000000
	.4byte hint_plate
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte kabenuke_check_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_12_init_evt_16_data_A8C0
