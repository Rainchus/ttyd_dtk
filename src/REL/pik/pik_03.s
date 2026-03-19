.include "macros.inc"
.file "pik_03.o"

# 0x00001DE0..0x00001E50 | size: 0x70
.rodata
.balign 8

# .rodata:0x0 | 0x1DE0 | size: 0x7
.obj str_s_bero_pik_000032a8, local
	.string "s_bero"
.endobj str_s_bero_pik_000032a8

# .rodata:0x7 | 0x1DE7 | size: 0x1
.obj gap_03_00001DE7_rodata, global
.hidden gap_03_00001DE7_rodata
	.byte 0x00
.endobj gap_03_00001DE7_rodata

# .rodata:0x8 | 0x1DE8 | size: 0x7
.obj str_pik_02_pik_000032b0, local
	.string "pik_02"
.endobj str_pik_02_pik_000032b0

# .rodata:0xF | 0x1DEF | size: 0x1
.obj gap_03_00001DEF_rodata, global
.hidden gap_03_00001DEF_rodata
	.byte 0x00
.endobj gap_03_00001DEF_rodata

# .rodata:0x10 | 0x1DF0 | size: 0x7
.obj str_h_bero_pik_000032b8, local
	.string "h_bero"
.endobj str_h_bero_pik_000032b8

# .rodata:0x17 | 0x1DF7 | size: 0x1
.obj gap_03_00001DF7_rodata, global
.hidden gap_03_00001DF7_rodata
	.byte 0x00
.endobj gap_03_00001DF7_rodata

# .rodata:0x18 | 0x1DF8 | size: 0x5
.obj str_star_pik_000032c0, local
	.string "star"
.endobj str_star_pik_000032c0

# .rodata:0x1D | 0x1DFD | size: 0x3
.obj gap_03_00001DFD_rodata, global
.hidden gap_03_00001DFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DFD_rodata

# .rodata:0x20 | 0x1E00 | size: 0xE
.obj str_BGM_STG6_PIK2_pik_000032c8, local
	.string "BGM_STG6_PIK2"
.endobj str_BGM_STG6_PIK2_pik_000032c8

# .rodata:0x2E | 0x1E0E | size: 0x2
.obj gap_03_00001E0E_rodata, global
.hidden gap_03_00001E0E_rodata
	.2byte 0x0000
.endobj gap_03_00001E0E_rodata

# .rodata:0x30 | 0x1E10 | size: 0xE
.obj str_ENV_STG6_PIK3_pik_000032d8, local
	.string "ENV_STG6_PIK3"
.endobj str_ENV_STG6_PIK3_pik_000032d8

# .rodata:0x3E | 0x1E1E | size: 0x2
.obj gap_03_00001E1E_rodata, global
.hidden gap_03_00001E1E_rodata
	.2byte 0x0000
.endobj gap_03_00001E1E_rodata

# .rodata:0x40 | 0x1E20 | size: 0x6
.obj str_dai_a_pik_000032e8, local
	.string "dai_a"
.endobj str_dai_a_pik_000032e8

# .rodata:0x46 | 0x1E26 | size: 0x2
.obj gap_03_00001E26_rodata, global
.hidden gap_03_00001E26_rodata
	.2byte 0x0000
.endobj gap_03_00001E26_rodata

# .rodata:0x48 | 0x1E28 | size: 0x7
.obj str_item01_pik_000032f0, local
	.string "item01"
.endobj str_item01_pik_000032f0

# .rodata:0x4F | 0x1E2F | size: 0x1
.obj gap_03_00001E2F_rodata, global
.hidden gap_03_00001E2F_rodata
	.byte 0x00
.endobj gap_03_00001E2F_rodata

# .rodata:0x50 | 0x1E30 | size: 0x7
.obj str_pblk00_pik_000032f8, local
	.string "pblk00"
.endobj str_pblk00_pik_000032f8

# .rodata:0x57 | 0x1E37 | size: 0x1
.obj gap_03_00001E37_rodata, global
.hidden gap_03_00001E37_rodata
	.byte 0x00
.endobj gap_03_00001E37_rodata

# .rodata:0x58 | 0x1E38 | size: 0x6
.obj str_hikou_pik_00003300, local
	.string "hikou"
.endobj str_hikou_pik_00003300

# .rodata:0x5E | 0x1E3E | size: 0x2
.obj gap_03_00001E3E_rodata, global
.hidden gap_03_00001E3E_rodata
	.2byte 0x0000
.endobj gap_03_00001E3E_rodata

# .rodata:0x60 | 0x1E40 | size: 0x6
.obj str_a_hi1_pik_00003308, local
	.string "a_hi1"
.endobj str_a_hi1_pik_00003308

# .rodata:0x66 | 0x1E46 | size: 0x2
.obj gap_03_00001E46_rodata, global
.hidden gap_03_00001E46_rodata
	.2byte 0x0000
.endobj gap_03_00001E46_rodata

# .rodata:0x68 | 0x1E48 | size: 0x5
.obj str_next_pik_00003310, local
	.string "next"
.endobj str_next_pik_00003310

# .rodata:0x6D | 0x1E4D | size: 0x3
.obj gap_03_00001E4D_rodata, global
.hidden gap_03_00001E4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E4D_rodata

# 0x0000AEA8..0x0000B330 | size: 0x488
.data
.balign 8

# .data:0x0 | 0xAEA8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xAEB0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xAEB4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xAEB8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xAEBC | size: 0x4
.obj gap_04_0000AEBC_data, global
.hidden gap_04_0000AEBC_data
	.4byte 0x00000000
.endobj gap_04_0000AEBC_data

# .data:0x18 | 0xAEC0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xAEC8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xAECC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xAED0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xAED8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xAEDC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xAEE0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xAEE4 | size: 0x4
.obj gap_04_0000AEE4_data, global
.hidden gap_04_0000AEE4_data
	.4byte 0x00000000
.endobj gap_04_0000AEE4_data

# .data:0x40 | 0xAEE8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAEF0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAEF4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAEF8 | size: 0xB4
.obj bero_in, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000294
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000029E
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000023
	.4byte 0x00000262
	.4byte 0xF24C5A80
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000026C
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_in

# .data:0x104 | 0xAFAC | size: 0xD4
.obj bero_out, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_yoshi_ride
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_s_bero_pik_000032a8
	.4byte 0x00800000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000023
	.4byte 0x00000262
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFF6
	.4byte 0x0000029E
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_pik_02_pik_000032b0
	.4byte str_h_bero_pik_000032b8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000026C
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000294
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_out

# .data:0x1D8 | 0xB080 | size: 0x78
.obj bero_data, local
	.4byte str_s_bero_pik_000032a8
	.4byte 0x00010000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_in
	.4byte 0x00000008
	.4byte bero_out
	.4byte str_pik_02_pik_000032b0
	.4byte str_h_bero_pik_000032b8
	.4byte 0x00040004
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
.endobj bero_data

# .data:0x250 | 0xB0F8 | size: 0x70
.obj evt_daiza, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000152
	.4byte 0x0001005B
	.4byte evt_npc_stop_for_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_star_pik_000032c0
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0001005E
	.4byte evt_sub_starstone
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_daiza

# .data:0x2C0 | 0xB168 | size: 0x1C4
.obj pik_03_init_evt_21_data_B168, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG6_PIK2_pik_000032c8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_PIK3_pik_000032d8
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000152
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_star_pik_000032c0
	.4byte 0x00000077
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFC4A
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000152
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_dai_a_pik_000032e8
	.4byte 0x00000000
	.4byte evt_daiza
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_pik_000032f0
	.4byte 0x00000147
	.4byte 0xFFFFFECF
	.4byte 0x0000014A
	.4byte 0xFFFFFC22
	.4byte 0x00000010
	.4byte 0xF840684D
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_pik_000032f8
	.4byte 0xFFFFFEF7
	.4byte 0x00000122
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0xF840713C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000000
	.4byte str_hikou_pik_00003300
	.4byte str_a_hi1_pik_00003308
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_next_pik_00003310
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFE7
	.4byte 0x00000009
	.4byte 0xFFFFFC63
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x00000009
	.4byte 0xFFFFFC63
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pik_03_init_evt_21_data_B168

# .data:0x484 | 0xB32C | size: 0x4
.obj gap_04_0000B32C_data, global
.hidden gap_04_0000B32C_data
	.4byte 0x00000000
.endobj gap_04_0000B32C_data
