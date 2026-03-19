.include "macros.inc"
.file "gor_12.o"

# 0x0000C518..0x0000C558 | size: 0x40
.rodata
.balign 8

# .rodata:0x0 | 0xC518 | size: 0xD
.obj str_ENV_END_MUJ1_gor_00020018, local
	.string "ENV_END_MUJ1"
.endobj str_ENV_END_MUJ1_gor_00020018

# .rodata:0xD | 0xC525 | size: 0x3
.obj gap_03_0000C525_rodata, global
.hidden gap_03_0000C525_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000C525_rodata

# .rodata:0x10 | 0xC528 | size: 0x7
.obj str_aaa_00_gor_00020028, local
	.string "aaa_00"
.endobj str_aaa_00_gor_00020028

# .rodata:0x17 | 0xC52F | size: 0x1
.obj gap_03_0000C52F_rodata, global
.hidden gap_03_0000C52F_rodata
	.byte 0x00
.endobj gap_03_0000C52F_rodata

# .rodata:0x18 | 0xC530 | size: 0x1
.obj zero_gor_00020030, local
	.byte 0x00
.endobj zero_gor_00020030

# .rodata:0x19 | 0xC531 | size: 0x3
.obj gap_03_0000C531_rodata, global
.hidden gap_03_0000C531_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000C531_rodata

# .rodata:0x1C | 0xC534 | size: 0x8
.obj str_anm_umi_gor_00020034, local
	.string "anm_umi"
.endobj str_anm_umi_gor_00020034

# .rodata:0x24 | 0xC53C | size: 0x9
.obj str_anm_nami_gor_0002003c, local
	.string "anm_nami"
.endobj str_anm_nami_gor_0002003c

# .rodata:0x2D | 0xC545 | size: 0x3
.obj gap_03_0000C545_rodata, global
.hidden gap_03_0000C545_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000C545_rodata

# .rodata:0x30 | 0xC548 | size: 0xD
.obj str_anm_kirakira_gor_00020048, local
	.string "anm_kirakira"
.endobj str_anm_kirakira_gor_00020048

# .rodata:0x3D | 0xC555 | size: 0x3
.obj gap_03_0000C555_rodata, global
.hidden gap_03_0000C555_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000C555_rodata

# 0x0004D450..0x0004D5F0 | size: 0x1A0
.data
.balign 8

# .data:0x0 | 0x4D450 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4D458 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4D45C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4D460 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4D464 | size: 0x4
.obj gap_04_0004D464_data, global
.hidden gap_04_0004D464_data
	.4byte 0x00000000
.endobj gap_04_0004D464_data

# .data:0x18 | 0x4D468 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4D470 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4D474 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4D478 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4D480 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4D484 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4D488 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4D48C | size: 0x4
.obj gap_04_0004D48C_data, global
.hidden gap_04_0004D48C_data
	.4byte 0x00000000
.endobj gap_04_0004D48C_data

# .data:0x40 | 0x4D490 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4D498 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4D49C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4D4A0 | size: 0xC4
.obj epilogue_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_END_MUJ1_gor_00020018
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
	.4byte 0x0001000A
	.4byte 0x00001B58
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00001F40
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x00001F40
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000FA0
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aaa_00_gor_00020028
	.4byte zero_gor_00020030
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x114 | 0x4D564 | size: 0x8C
.obj gor_12_init_evt_9_data_4D564, global
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_umi_gor_00020034
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_nami_gor_0002003c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_kirakira_gor_00020048
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
	.4byte 0x00000000
.endobj gor_12_init_evt_9_data_4D564
