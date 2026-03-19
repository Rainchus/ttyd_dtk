.include "macros.inc"
.file "gor_11.o"

# 0x0000C558..0x0000C585 | size: 0x2D
.rodata
.balign 8

# .rodata:0x0 | 0xC558 | size: 0xD
.obj str_ENV_END_MUJ1_gor_00020058, local
	.string "ENV_END_MUJ1"
.endobj str_ENV_END_MUJ1_gor_00020058

# .rodata:0xD | 0xC565 | size: 0x3
.obj gap_03_0000C565_rodata, global
.hidden gap_03_0000C565_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000C565_rodata

# .rodata:0x10 | 0xC568 | size: 0x7
.obj str_gor_00_gor_00020068, local
	.string "gor_00"
.endobj str_gor_00_gor_00020068

# .rodata:0x17 | 0xC56F | size: 0x1
.obj gap_03_0000C56F_rodata, global
.hidden gap_03_0000C56F_rodata
	.byte 0x00
.endobj gap_03_0000C56F_rodata

# .rodata:0x18 | 0xC570 | size: 0x1
.obj zero_gor_00020070, local
	.byte 0x00
.endobj zero_gor_00020070

# .rodata:0x19 | 0xC571 | size: 0x3
.obj gap_03_0000C571_rodata, global
.hidden gap_03_0000C571_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000C571_rodata

# .rodata:0x1C | 0xC574 | size: 0x8
.obj str_anm_umi_gor_00020074, local
	.string "anm_umi"
.endobj str_anm_umi_gor_00020074

# .rodata:0x24 | 0xC57C | size: 0x9
.obj str_anm_nami_gor_0002007c, local
	.string "anm_nami"
.endobj str_anm_nami_gor_0002007c

# 0x0004D5F0..0x0004D7AC | size: 0x1BC
.data
.balign 8

# .data:0x0 | 0x4D5F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4D5F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4D5FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4D600 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4D604 | size: 0x4
.obj gap_04_0004D604_data, global
.hidden gap_04_0004D604_data
	.4byte 0x00000000
.endobj gap_04_0004D604_data

# .data:0x18 | 0x4D608 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4D610 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4D614 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4D618 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4D620 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4D624 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4D628 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4D62C | size: 0x4
.obj gap_04_0004D62C_data, global
.hidden gap_04_0004D62C_data
	.4byte 0x00000000
.endobj gap_04_0004D62C_data

# .data:0x40 | 0x4D630 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4D638 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4D63C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4D640 | size: 0xF8
.obj epilogue_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_END_MUJ1_gor_00020058
	.4byte 0x0003005B
	.4byte evt_cam_ctrl_onoff
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_fade_in
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x000005DC
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_00_gor_00020068
	.4byte zero_gor_00020070
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x148 | 0x4D738 | size: 0x74
.obj gor_11_init_evt_9_data_4D738, global
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_umi_gor_00020074
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_nami_gor_0002007c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gor_11_init_evt_9_data_4D738
