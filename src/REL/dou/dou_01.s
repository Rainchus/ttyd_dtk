.include "macros.inc"
.file "dou_01.o"

# 0x00000108..0x000001B8 | size: 0xB0
.rodata
.balign 8

# .rodata:0x0 | 0x108 | size: 0x7
.obj str_w_bero_dou_00003d98, local
	.string "w_bero"
.endobj str_w_bero_dou_00003d98

# .rodata:0x7 | 0x10F | size: 0x1
.obj gap_03_0000010F_rodata, global
.hidden gap_03_0000010F_rodata
	.byte 0x00
.endobj gap_03_0000010F_rodata

# .rodata:0x8 | 0x110 | size: 0x7
.obj str_dou_00_dou_00003da0, local
	.string "dou_00"
.endobj str_dou_00_dou_00003da0

# .rodata:0xF | 0x117 | size: 0x1
.obj gap_03_00000117_rodata, global
.hidden gap_03_00000117_rodata
	.byte 0x00
.endobj gap_03_00000117_rodata

# .rodata:0x10 | 0x118 | size: 0x7
.obj str_e_bero_dou_00003da8, local
	.string "e_bero"
.endobj str_e_bero_dou_00003da8

# .rodata:0x17 | 0x11F | size: 0x1
.obj gap_03_0000011F_rodata, global
.hidden gap_03_0000011F_rodata
	.byte 0x00
.endobj gap_03_0000011F_rodata

# .rodata:0x18 | 0x120 | size: 0x7
.obj str_dou_02_dou_00003db0, local
	.string "dou_02"
.endobj str_dou_02_dou_00003db0

# .rodata:0x1F | 0x127 | size: 0x1
.obj gap_03_00000127_rodata, global
.hidden gap_03_00000127_rodata
	.byte 0x00
.endobj gap_03_00000127_rodata

# .rodata:0x20 | 0x128 | size: 0x9
.obj str_w_bero_1_dou_00003db8, local
	.string "w_bero_1"
.endobj str_w_bero_1_dou_00003db8

# .rodata:0x29 | 0x131 | size: 0x3
.obj gap_03_00000131_rodata, global
.hidden gap_03_00000131_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000131_rodata

# .rodata:0x2C | 0x134 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_dou_00003dc4, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_dou_00003dc4

# .rodata:0x49 | 0x151 | size: 0x3
.obj gap_03_00000151_rodata, global
.hidden gap_03_00000151_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000151_rodata

# .rodata:0x4C | 0x154 | size: 0x1
.obj zero_dou_00003de4, local
	.byte 0x00
.endobj zero_dou_00003de4

# .rodata:0x4D | 0x155 | size: 0x3
.obj gap_03_00000155_rodata, global
.hidden gap_03_00000155_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000155_rodata

# .rodata:0x50 | 0x158 | size: 0x16
.obj str_SFX_STG5_ELMOS_VOICE_dou_00003de8, local
	.string "SFX_STG5_ELMOS_VOICE1"
.endobj str_SFX_STG5_ELMOS_VOICE_dou_00003de8

# .rodata:0x66 | 0x16E | size: 0x2
.obj gap_03_0000016E_rodata, global
.hidden gap_03_0000016E_rodata
	.2byte 0x0000
.endobj gap_03_0000016E_rodata

# .rodata:0x68 | 0x170 | size: 0xC
.obj str_stg5_dou_01_dou_00003e00, local
	.string "stg5_dou_01"
.endobj str_stg5_dou_01_dou_00003e00

# .rodata:0x74 | 0x17C | size: 0xE
.obj str_BGM_STG5_DOU1_dou_00003e0c, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_00003e0c

# .rodata:0x82 | 0x18A | size: 0x2
.obj gap_03_0000018A_rodata, global
.hidden gap_03_0000018A_rodata
	.2byte 0x0000
.endobj gap_03_0000018A_rodata

# .rodata:0x84 | 0x18C | size: 0xE
.obj str_ENV_STG5_DOU2_dou_00003e1c, local
	.string "ENV_STG5_DOU2"
.endobj str_ENV_STG5_DOU2_dou_00003e1c

# .rodata:0x92 | 0x19A | size: 0x2
.obj gap_03_0000019A_rodata, global
.hidden gap_03_0000019A_rodata
	.2byte 0x0000
.endobj gap_03_0000019A_rodata

# .rodata:0x94 | 0x19C | size: 0xC
.obj str_mobj_jump00_dou_00003e2c, local
	.string "mobj_jump00"
.endobj str_mobj_jump00_dou_00003e2c

# .rodata:0xA0 | 0x1A8 | size: 0xC
.obj str_mobj_jump01_dou_00003e38, local
	.string "mobj_jump01"
.endobj str_mobj_jump01_dou_00003e38

# .rodata:0xAC | 0x1B4 | size: 0x4
.obj gap_03_000001B4_rodata, global
.hidden gap_03_000001B4_rodata
	.4byte 0x00000000
.endobj gap_03_000001B4_rodata

# 0x000005E0..0x000008D0 | size: 0x2F0
.data
.balign 8

# .data:0x0 | 0x5E0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5E8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5EC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5F0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5F4 | size: 0x4
.obj gap_04_000005F4_data, global
.hidden gap_04_000005F4_data
	.4byte 0x00000000
.endobj gap_04_000005F4_data

# .data:0x18 | 0x5F8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x600 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x604 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x608 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x610 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x614 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x618 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x61C | size: 0x4
.obj gap_04_0000061C_data, global
.hidden gap_04_0000061C_data
	.4byte 0x00000000
.endobj gap_04_0000061C_data

# .data:0x40 | 0x620 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x628 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x62C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x630 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_dou_00003d98
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_00_dou_00003da0
	.4byte str_e_bero_dou_00003da8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_dou_00003da8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_02_dou_00003db0
	.4byte str_w_bero_1_dou_00003db8
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

# .data:0x104 | 0x6E4 | size: 0x128
.obj korutesu_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_dou_00003dc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_dou_00003de4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_dou_00003de4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_VOICE_dou_00003de8
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_01_dou_00003e00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj korutesu_event

# .data:0x22C | 0x80C | size: 0xC0
.obj dou_01_init_evt_5_data_80C, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_00003e0c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU2_dou_00003e1c
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
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_mobj_jumpstand_blue
	.4byte 0x00000000
	.4byte str_mobj_jump00_dou_00003e2c
	.4byte 0x00000190
	.4byte 0x0000005C
	.4byte 0x00000177
	.4byte 0xFFFFFFEB
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_jumpstand_blue
	.4byte 0x00000000
	.4byte str_mobj_jump01_dou_00003e38
	.4byte 0x0000015E
	.4byte 0xFFFFFFD3
	.4byte 0x00000032
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000F3
	.4byte 0x0001005C
	.4byte korutesu_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_01_init_evt_5_data_80C

# .data:0x2EC | 0x8CC | size: 0x4
.obj gap_04_000008CC_data, global
.hidden gap_04_000008CC_data
	.4byte 0x00000000
.endobj gap_04_000008CC_data
