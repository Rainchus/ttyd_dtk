.include "macros.inc"
.file "eki_04.o"

# 0x00000A50..0x00000AD0 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0xA50 | size: 0x7
.obj str_e_door_eki_00009230, local
	.string "e_door"
.endobj str_e_door_eki_00009230

# .rodata:0x7 | 0xA57 | size: 0x1
.obj gap_03_00000A57_rodata, global
.hidden gap_03_00000A57_rodata
	.byte 0x00
.endobj gap_03_00000A57_rodata

# .rodata:0x8 | 0xA58 | size: 0x7
.obj str_s_door_eki_00009238, local
	.string "s_door"
.endobj str_s_door_eki_00009238

# .rodata:0xF | 0xA5F | size: 0x1
.obj gap_03_00000A5F_rodata, global
.hidden gap_03_00000A5F_rodata
	.byte 0x00
.endobj gap_03_00000A5F_rodata

# .rodata:0x10 | 0xA60 | size: 0x7
.obj str_e_bero_eki_00009240, local
	.string "e_bero"
.endobj str_e_bero_eki_00009240

# .rodata:0x17 | 0xA67 | size: 0x1
.obj gap_03_00000A67_rodata, global
.hidden gap_03_00000A67_rodata
	.byte 0x00
.endobj gap_03_00000A67_rodata

# .rodata:0x18 | 0xA68 | size: 0x7
.obj str_eki_03_eki_00009248, local
	.string "eki_03"
.endobj str_eki_03_eki_00009248

# .rodata:0x1F | 0xA6F | size: 0x1
.obj gap_03_00000A6F_rodata, global
.hidden gap_03_00000A6F_rodata
	.byte 0x00
.endobj gap_03_00000A6F_rodata

# .rodata:0x20 | 0xA70 | size: 0x9
.obj str_w_bero_2_eki_00009250, local
	.string "w_bero_2"
.endobj str_w_bero_2_eki_00009250

# .rodata:0x29 | 0xA79 | size: 0x3
.obj gap_03_00000A79_rodata, global
.hidden gap_03_00000A79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A79_rodata

# .rodata:0x2C | 0xA7C | size: 0x7
.obj str_s_bero_eki_0000925c, local
	.string "s_bero"
.endobj str_s_bero_eki_0000925c

# .rodata:0x33 | 0xA83 | size: 0x1
.obj gap_03_00000A83_rodata, global
.hidden gap_03_00000A83_rodata
	.byte 0x00
.endobj gap_03_00000A83_rodata

# .rodata:0x34 | 0xA84 | size: 0x7
.obj str_eki_05_eki_00009264, local
	.string "eki_05"
.endobj str_eki_05_eki_00009264

# .rodata:0x3B | 0xA8B | size: 0x1
.obj gap_03_00000A8B_rodata, global
.hidden gap_03_00000A8B_rodata
	.byte 0x00
.endobj gap_03_00000A8B_rodata

# .rodata:0x3C | 0xA8C | size: 0x7
.obj str_n_bero_eki_0000926c, local
	.string "n_bero"
.endobj str_n_bero_eki_0000926c

# .rodata:0x43 | 0xA93 | size: 0x1
.obj gap_03_00000A93_rodata, global
.hidden gap_03_00000A93_rodata
	.byte 0x00
.endobj gap_03_00000A93_rodata

# .rodata:0x44 | 0xA94 | size: 0xE
.obj str_ENV_STG6_EKI2_eki_00009274, local
	.string "ENV_STG6_EKI2"
.endobj str_ENV_STG6_EKI2_eki_00009274

# .rodata:0x52 | 0xAA2 | size: 0x2
.obj gap_03_00000AA2_rodata, global
.hidden gap_03_00000AA2_rodata
	.2byte 0x0000
.endobj gap_03_00000AA2_rodata

# .rodata:0x54 | 0xAA4 | size: 0xA
.obj str_mobj_jump_eki_00009284, local
	.string "mobj_jump"
.endobj str_mobj_jump_eki_00009284

# .rodata:0x5E | 0xAAE | size: 0x2
.obj gap_03_00000AAE_rodata, global
.hidden gap_03_00000AAE_rodata
	.2byte 0x0000
.endobj gap_03_00000AAE_rodata

# .rodata:0x60 | 0xAB0 | size: 0x7
.obj str_item01_eki_00009290, local
	.string "item01"
.endobj str_item01_eki_00009290

# .rodata:0x67 | 0xAB7 | size: 0x1
.obj gap_03_00000AB7_rodata, global
.hidden gap_03_00000AB7_rodata
	.byte 0x00
.endobj gap_03_00000AB7_rodata

# .rodata:0x68 | 0xAB8 | size: 0x7
.obj str_item02_eki_00009298, local
	.string "item02"
.endobj str_item02_eki_00009298

# .rodata:0x6F | 0xABF | size: 0x1
.obj gap_03_00000ABF_rodata, global
.hidden gap_03_00000ABF_rodata
	.byte 0x00
.endobj gap_03_00000ABF_rodata

# .rodata:0x70 | 0xAC0 | size: 0x6
.obj str_futi_eki_000092a0, local
	.string "futi_"
.endobj str_futi_eki_000092a0

# .rodata:0x76 | 0xAC6 | size: 0x2
.obj gap_03_00000AC6_rodata, global
.hidden gap_03_00000AC6_rodata
	.2byte 0x0000
.endobj gap_03_00000AC6_rodata

# .rodata:0x78 | 0xAC8 | size: 0x7
.obj str_hasira_eki_000092a8, local
	.string "hasira"
.endobj str_hasira_eki_000092a8

# .rodata:0x7F | 0xACF | size: 0x1
.obj gap_03_00000ACF_rodata, global
.hidden gap_03_00000ACF_rodata
	.byte 0x00
.endobj gap_03_00000ACF_rodata

# 0x00003CB8..0x00003FD8 | size: 0x320
.data
.balign 8

# .data:0x0 | 0x3CB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3CC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3CC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3CC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3CCC | size: 0x4
.obj gap_04_00003CCC_data, global
.hidden gap_04_00003CCC_data
	.4byte 0x00000000
.endobj gap_04_00003CCC_data

# .data:0x18 | 0x3CD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3CD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3CDC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3CE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3CE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3CEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3CF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3CF4 | size: 0x4
.obj gap_04_00003CF4_data, global
.hidden gap_04_00003CF4_data
	.4byte 0x00000000
.endobj gap_04_00003CF4_data

# .data:0x40 | 0x3CF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3D00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3D04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3D08 | size: 0x30
.obj e_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_e_door_eki_00009230
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_close

# .data:0x80 | 0x3D38 | size: 0x30
.obj e_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_e_door_eki_00009230
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_open

# .data:0xB0 | 0x3D68 | size: 0x30
.obj s_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_s_door_eki_00009238
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_close

# .data:0xE0 | 0x3D98 | size: 0x30
.obj s_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_s_door_eki_00009238
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_open

# .data:0x110 | 0x3DC8 | size: 0xB4
.obj bero_data, local
	.4byte str_e_bero_eki_00009240
	.4byte 0x00010003
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_eki_03_eki_00009248
	.4byte str_w_bero_2_eki_00009250
	.4byte 0x00050005
	.4byte e_close
	.4byte e_open
	.4byte str_s_bero_eki_0000925c
	.4byte 0x00010003
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_eki_05_eki_00009264
	.4byte str_n_bero_eki_0000926c
	.4byte 0x00050005
	.4byte s_close
	.4byte s_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data

# .data:0x1C4 | 0x3E7C | size: 0x54
.obj evt_jump, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_mario_jump_jumpstand
	.4byte 0x00000168
	.4byte 0xFFFFFC7C
	.4byte 0x00000046
	.4byte 0x0000012C
	.4byte 0x000002BC
	.4byte 0x0000004B
	.4byte 0x00000136
	.4byte 0xFFFFFC7C
	.4byte 0x00000041
	.4byte 0x00001770
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_jump

# .data:0x218 | 0x3ED0 | size: 0x108
.obj eki_04_init_evt_6_data_3ED0, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_EKI2_eki_00009274
	.4byte 0x0008005B
	.4byte evt_mobj_jumpstand_red
	.4byte 0x00000000
	.4byte str_mobj_jump_eki_00009284
	.4byte 0x00000168
	.4byte 0xFFFFFC7C
	.4byte 0x00000046
	.4byte evt_jump
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_eki_00009290
	.4byte 0x00000098
	.4byte 0xFFFFFF06
	.4byte 0xFFFFFCD1
	.4byte 0x00000046
	.4byte 0x00000010
	.4byte 0xF8406A20
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item02_eki_00009298
	.4byte 0x00000106
	.4byte 0xFFFFFF06
	.4byte 0x000000E6
	.4byte 0x00000028
	.4byte 0x00000010
	.4byte 0xF8406A23
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_futi_eki_000092a0
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hasira_eki_000092a8
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000013C
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000013C
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj eki_04_init_evt_6_data_3ED0
