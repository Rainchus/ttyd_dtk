.include "macros.inc"
.file "muj_11.o"

# 0x000036B8..0x00003750 | size: 0x98
.rodata
.balign 8

# .rodata:0x0 | 0x36B8 | size: 0x8
.obj str_S_doa_l_muj_00011368, local
	.string "S_doa_l"
.endobj str_S_doa_l_muj_00011368

# .rodata:0x8 | 0x36C0 | size: 0x8
.obj str_S_doa_r_muj_00011370, local
	.string "S_doa_r"
.endobj str_S_doa_r_muj_00011370

# .rodata:0x10 | 0x36C8 | size: 0x7
.obj str_w_bero_muj_00011378, local
	.string "w_bero"
.endobj str_w_bero_muj_00011378

# .rodata:0x17 | 0x36CF | size: 0x1
.obj gap_03_000036CF_rodata, global
.hidden gap_03_000036CF_rodata
	.byte 0x00
.endobj gap_03_000036CF_rodata

# .rodata:0x18 | 0x36D0 | size: 0x7
.obj str_muj_10_muj_00011380, local
	.string "muj_10"
.endobj str_muj_10_muj_00011380

# .rodata:0x1F | 0x36D7 | size: 0x1
.obj gap_03_000036D7_rodata, global
.hidden gap_03_000036D7_rodata
	.byte 0x00
.endobj gap_03_000036D7_rodata

# .rodata:0x20 | 0x36D8 | size: 0xB
.obj str_A_b_bero03_muj_00011388, local
	.string "A_b_bero03"
.endobj str_A_b_bero03_muj_00011388

# .rodata:0x2B | 0x36E3 | size: 0x1
.obj gap_03_000036E3_rodata, global
.hidden gap_03_000036E3_rodata
	.byte 0x00
.endobj gap_03_000036E3_rodata

# .rodata:0x2C | 0x36E4 | size: 0x7
.obj str_e_bero_muj_00011394, local
	.string "e_bero"
.endobj str_e_bero_muj_00011394

# .rodata:0x33 | 0x36EB | size: 0x1
.obj gap_03_000036EB_rodata, global
.hidden gap_03_000036EB_rodata
	.byte 0x00
.endobj gap_03_000036EB_rodata

# .rodata:0x34 | 0x36EC | size: 0x7
.obj str_muj_12_muj_0001139c, local
	.string "muj_12"
.endobj str_muj_12_muj_0001139c

# .rodata:0x3B | 0x36F3 | size: 0x1
.obj gap_03_000036F3_rodata, global
.hidden gap_03_000036F3_rodata
	.byte 0x00
.endobj gap_03_000036F3_rodata

# .rodata:0x3C | 0x36F4 | size: 0x16
.obj str_SFX_STG5_ELMOS_VOICE_muj_000113a4, local
	.string "SFX_STG5_ELMOS_VOICE1"
.endobj str_SFX_STG5_ELMOS_VOICE_muj_000113a4

# .rodata:0x52 | 0x370A | size: 0x2
.obj gap_03_0000370A_rodata, global
.hidden gap_03_0000370A_rodata
	.2byte 0x0000
.endobj gap_03_0000370A_rodata

# .rodata:0x54 | 0x370C | size: 0xC
.obj str_stg5_dou_20_muj_000113bc, local
	.string "stg5_dou_20"
.endobj str_stg5_dou_20_muj_000113bc

# .rodata:0x60 | 0x3718 | size: 0x14
.obj str_BGM_EVT_STG5_GHOST1_muj_000113c8, local
	.string "BGM_EVT_STG5_GHOST1"
.endobj str_BGM_EVT_STG5_GHOST1_muj_000113c8

# .rodata:0x74 | 0x372C | size: 0xE
.obj str_BGM_STG5_DOU1_muj_000113dc, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_muj_000113dc

# .rodata:0x82 | 0x373A | size: 0x2
.obj gap_03_0000373A_rodata, global
.hidden gap_03_0000373A_rodata
	.2byte 0x0000
.endobj gap_03_0000373A_rodata

# .rodata:0x84 | 0x373C | size: 0xE
.obj str_ENV_STG5_MUJ9_muj_000113ec, local
	.string "ENV_STG5_MUJ9"
.endobj str_ENV_STG5_MUJ9_muj_000113ec

# .rodata:0x92 | 0x374A | size: 0x6
.obj gap_03_0000374A_rodata, global
.hidden gap_03_0000374A_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_0000374A_rodata

# 0x00018898..0x00018B80 | size: 0x2E8
.data
.balign 8

# .data:0x0 | 0x18898 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x188A0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x188A4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x188A8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x188AC | size: 0x4
.obj gap_04_000188AC_data, global
.hidden gap_04_000188AC_data
	.4byte 0x00000000
.endobj gap_04_000188AC_data

# .data:0x18 | 0x188B0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x188B8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x188BC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x188C0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x188C8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x188CC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x188D0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x188D4 | size: 0x4
.obj gap_04_000188D4_data, global
.hidden gap_04_000188D4_data
	.4byte 0x00000000
.endobj gap_04_000188D4_data

# .data:0x40 | 0x188D8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x188E0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x188E4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x188E8 | size: 0x30
.obj w_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_muj_00011368
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_close

# .data:0x80 | 0x18918 | size: 0x30
.obj w_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_muj_00011368
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_open

# .data:0xB0 | 0x18948 | size: 0x30
.obj e_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_muj_00011370
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_close

# .data:0xE0 | 0x18978 | size: 0x30
.obj e_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_muj_00011370
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_open

# .data:0x110 | 0x189A8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_muj_00011378
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_10_muj_00011380
	.4byte str_A_b_bero03_muj_00011388
	.4byte 0x00050005
	.4byte w_close
	.4byte w_open
	.4byte str_e_bero_muj_00011394
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_12_muj_0001139c
	.4byte str_w_bero_muj_00011378
	.4byte 0x00050005
	.4byte e_close
	.4byte e_open
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

# .data:0x1C4 | 0x18A5C | size: 0x98
.obj warning_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_VOICE_muj_000113a4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_VOICE_muj_000113a4
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_20_muj_000113bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FC
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj warning_event

# .data:0x25C | 0x18AF4 | size: 0x8C
.obj muj_11_init_evt_19_data_18AF4, global
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG5_GHOST1_muj_000113c8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_muj_000113dc
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ9_muj_000113ec
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FB
	.4byte 0x0001005C
	.4byte warning_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_11_init_evt_19_data_18AF4
