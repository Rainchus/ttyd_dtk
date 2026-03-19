.include "macros.inc"
.file "kpa_00.o"

# 0x00000240..0x000002C8 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x240 | size: 0x11
.obj str_BGM_STGK_CASTLE1_kpa_000016d0, local
	.string "BGM_STGK_CASTLE1"
.endobj str_BGM_STGK_CASTLE1_kpa_000016d0

# .rodata:0x11 | 0x251 | size: 0x3
.obj gap_03_00000251_rodata, global
.hidden gap_03_00000251_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000251_rodata

# .rodata:0x14 | 0x254 | size: 0x7
.obj str_kpa_01_kpa_000016e4, local
	.string "kpa_01"
.endobj str_kpa_01_kpa_000016e4

# .rodata:0x1B | 0x25B | size: 0x1
.obj gap_03_0000025B_rodata, global
.hidden gap_03_0000025B_rodata
	.byte 0x00
.endobj gap_03_0000025B_rodata

# .rodata:0x1C | 0x25C | size: 0x1
.obj zero_kpa_000016ec, local
	.byte 0x00
.endobj zero_kpa_000016ec

# .rodata:0x1D | 0x25D | size: 0x3
.obj gap_03_0000025D_rodata, global
.hidden gap_03_0000025D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000025D_rodata

# .rodata:0x20 | 0x260 | size: 0x5
.obj str_ババ_kpa_000016f0, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_kpa_000016f0

# .rodata:0x25 | 0x265 | size: 0x3
.obj gap_03_00000265_rodata, global
.hidden gap_03_00000265_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000265_rodata

# .rodata:0x28 | 0x268 | size: 0x9
.obj str_飛クッパ_kpa_000016f8, local
	.4byte 0x94F2834E
	.4byte 0x83628370
	.byte 0x00
.endobj str_飛クッパ_kpa_000016f8

# .rodata:0x31 | 0x271 | size: 0x3
.obj gap_03_00000271_rodata, global
.hidden gap_03_00000271_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000271_rodata

# .rodata:0x34 | 0x274 | size: 0x18
.obj str_SFX_KUPPA_KAMEBABA_F_kpa_00001704, local
	.string "SFX_KUPPA_KAMEBABA_FLY1"
.endobj str_SFX_KUPPA_KAMEBABA_F_kpa_00001704

# .rodata:0x4C | 0x28C | size: 0x18
.obj str_SFX_KUPPA_AIRSHIP_MO_kpa_0000171c, local
	.string "SFX_KUPPA_AIRSHIP_MOVE1"
.endobj str_SFX_KUPPA_AIRSHIP_MO_kpa_0000171c

# .rodata:0x64 | 0x2A4 | size: 0x7
.obj str_nok_01_kpa_00001734, local
	.string "nok_01"
.endobj str_nok_01_kpa_00001734

# .rodata:0x6B | 0x2AB | size: 0x1
.obj gap_03_000002AB_rodata, global
.hidden gap_03_000002AB_rodata
	.byte 0x00
.endobj gap_03_000002AB_rodata

# .rodata:0x6C | 0x2AC | size: 0xA
.obj str_nokotarou_kpa_0000173c, local
	.string "nokotarou"
.endobj str_nokotarou_kpa_0000173c

# .rodata:0x76 | 0x2B6 | size: 0x2
.obj gap_03_000002B6_rodata, global
.hidden gap_03_000002B6_rodata
	.2byte 0x0000
.endobj gap_03_000002B6_rodata

# .rodata:0x78 | 0x2B8 | size: 0xF
.obj str_ENV_KOOPA_KPA1_kpa_00001748, local
	.string "ENV_KOOPA_KPA1"
.endobj str_ENV_KOOPA_KPA1_kpa_00001748

# .rodata:0x87 | 0x2C7 | size: 0x1
.obj gap_03_000002C7_rodata, global
.hidden gap_03_000002C7_rodata
	.byte 0x00
.endobj gap_03_000002C7_rodata

# 0x00001690..0x00001F38 | size: 0x8A8
.data
.balign 8

# .data:0x0 | 0x1690 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1698 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x169C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x16A0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x16A4 | size: 0x4
.obj gap_04_000016A4_data, global
.hidden gap_04_000016A4_data
	.4byte 0x00000000
.endobj gap_04_000016A4_data

# .data:0x18 | 0x16A8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x16B0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x16B4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x16B8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16C0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x16C4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16C8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x16CC | size: 0x4
.obj gap_04_000016CC_data, global
.hidden gap_04_000016CC_data
	.4byte 0x00000000
.endobj gap_04_000016CC_data

# .data:0x40 | 0x16D0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x16D8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x16DC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x16E0 | size: 0xF4
.obj kpa_00_first_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000124
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x000000CB
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STGK_CASTLE1_kpa_000016d0
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000086
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x00001388
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00001194
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_kpa_01_kpa_000016e4
	.4byte zero_kpa_000016ec
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_00_first_evt

# .data:0x144 | 0x17D4 | size: 0x5F0
.obj kpa_00_fly_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_kpa_000016f0
	.4byte 0x00040000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_kpa_000016f8
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFF1
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_飛クッパ_kpa_000016f8
	.4byte 0xF24A7AE6
	.4byte 0xF24A7AE6
	.4byte 0xF24A7AE6
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_飛クッパ_kpa_000016f8
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_000016f0
	.4byte 0x0000000A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_ババ_kpa_000016f0
	.4byte 0xF24A7AE6
	.4byte 0xF24A7AE6
	.4byte 0xF24A7AE6
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_000016f0
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000086
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7B80
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xF24A7A80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x00000258
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_飛クッパ_kpa_000016f8
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x00000258
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_ババ_kpa_000016f0
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0004005B
	.4byte evt_npc_kamek_kemuri2
	.4byte str_ババ_kpa_000016f0
	.4byte 0x000007D0
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFFFFFC18
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_000016f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_kpa_00001704
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x000000BE
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F82
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24B6A80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_000016f0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_kpa_0000171c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFFFFFC18
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24B9280
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_kpa_000016f8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF1
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000003D
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000006
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte unk_evt_803bac3c
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000003A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_nok_01_kpa_00001734
	.4byte str_nokotarou_kpa_0000173c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_00_fly_evt

# .data:0x734 | 0x1DC4 | size: 0x114
.obj npcEnt, local
	.4byte str_ババ_kpa_000016f0
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_飛クッパ_kpa_000016f8
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x848 | 0x1ED8 | size: 0x60
.obj kpa_00_init_evt_15_data_1ED8, global
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_KOOPA_KPA1_kpa_00001748
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000003B
	.4byte 0x0001005C
	.4byte kpa_00_first_evt
	.4byte 0x00010024
	.4byte 0x0000003C
	.4byte 0x0001005C
	.4byte kpa_00_fly_evt
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj kpa_00_init_evt_15_data_1ED8
