.include "macros.inc"
.file "win_02.o"

# 0x00000A30..0x00000BB0 | size: 0x180
.rodata
.balign 8

# .rodata:0x0 | 0xA30 | size: 0x7
.obj str_w_bero_win_00004178, local
	.string "w_bero"
.endobj str_w_bero_win_00004178

# .rodata:0x7 | 0xA37 | size: 0x1
.obj gap_03_00000A37_rodata, global
.hidden gap_03_00000A37_rodata
	.byte 0x00
.endobj gap_03_00000A37_rodata

# .rodata:0x8 | 0xA38 | size: 0x7
.obj str_win_01_win_00004180, local
	.string "win_01"
.endobj str_win_01_win_00004180

# .rodata:0xF | 0xA3F | size: 0x1
.obj gap_03_00000A3F_rodata, global
.hidden gap_03_00000A3F_rodata
	.byte 0x00
.endobj gap_03_00000A3F_rodata

# .rodata:0x10 | 0xA40 | size: 0x7
.obj str_e_bero_win_00004188, local
	.string "e_bero"
.endobj str_e_bero_win_00004188

# .rodata:0x17 | 0xA47 | size: 0x1
.obj gap_03_00000A47_rodata, global
.hidden gap_03_00000A47_rodata
	.byte 0x00
.endobj gap_03_00000A47_rodata

# .rodata:0x18 | 0xA48 | size: 0x7
.obj str_win_03_win_00004190, local
	.string "win_03"
.endobj str_win_03_win_00004190

# .rodata:0x1F | 0xA4F | size: 0x1
.obj gap_03_00000A4F_rodata, global
.hidden gap_03_00000A4F_rodata
	.byte 0x00
.endobj gap_03_00000A4F_rodata

# .rodata:0x20 | 0xA50 | size: 0x7
.obj str_dokan2_win_00004198, local
	.string "dokan2"
.endobj str_dokan2_win_00004198

# .rodata:0x27 | 0xA57 | size: 0x1
.obj gap_03_00000A57_rodata, global
.hidden gap_03_00000A57_rodata
	.byte 0x00
.endobj gap_03_00000A57_rodata

# .rodata:0x28 | 0xA58 | size: 0x7
.obj str_dokan1_win_000041a0, local
	.string "dokan1"
.endobj str_dokan1_win_000041a0

# .rodata:0x2F | 0xA5F | size: 0x1
.obj gap_03_00000A5F_rodata, global
.hidden gap_03_00000A5F_rodata
	.byte 0x00
.endobj gap_03_00000A5F_rodata

# .rodata:0x30 | 0xA60 | size: 0x6
.obj str_a_dai_win_000041a8, local
	.string "a_dai"
.endobj str_a_dai_win_000041a8

# .rodata:0x36 | 0xA66 | size: 0x2
.obj gap_03_00000A66_rodata, global
.hidden gap_03_00000A66_rodata
	.2byte 0x0000
.endobj gap_03_00000A66_rodata

# .rodata:0x38 | 0xA68 | size: 0x6
.obj str_hikou_win_000041b0, local
	.string "hikou"
.endobj str_hikou_win_000041b0

# .rodata:0x3E | 0xA6E | size: 0x2
.obj gap_03_00000A6E_rodata, global
.hidden gap_03_00000A6E_rodata
	.2byte 0x0000
.endobj gap_03_00000A6E_rodata

# .rodata:0x40 | 0xA70 | size: 0x5
.obj str_a_hi_win_000041b8, local
	.string "a_hi"
.endobj str_a_hi_win_000041b8

# .rodata:0x45 | 0xA75 | size: 0x3
.obj gap_03_00000A75_rodata, global
.hidden gap_03_00000A75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A75_rodata

# .rodata:0x48 | 0xA78 | size: 0x9
.obj str_A_dokan1_win_000041c0, local
	.string "A_dokan1"
.endobj str_A_dokan1_win_000041c0

# .rodata:0x51 | 0xA81 | size: 0x3
.obj gap_03_00000A81_rodata, global
.hidden gap_03_00000A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A81_rodata

# .rodata:0x54 | 0xA84 | size: 0x9
.obj str_S_dokan2_win_000041cc, local
	.string "S_dokan2"
.endobj str_S_dokan2_win_000041cc

# .rodata:0x5D | 0xA8D | size: 0x3
.obj gap_03_00000A8D_rodata, global
.hidden gap_03_00000A8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A8D_rodata

# .rodata:0x60 | 0xA90 | size: 0xA
.obj str_A_hi_kabe_win_000041d8, local
	.string "A_hi_kabe"
.endobj str_A_hi_kabe_win_000041d8

# .rodata:0x6A | 0xA9A | size: 0x2
.obj gap_03_00000A9A_rodata, global
.hidden gap_03_00000A9A_rodata
	.2byte 0x0000
.endobj gap_03_00000A9A_rodata

# .rodata:0x6C | 0xA9C | size: 0xB
.obj str_S_nob_tree_win_000041e4, local
	.string "S_nob_tree"
.endobj str_S_nob_tree_win_000041e4

# .rodata:0x77 | 0xAA7 | size: 0x1
.obj gap_03_00000AA7_rodata, global
.hidden gap_03_00000AA7_rodata
	.byte 0x00
.endobj gap_03_00000AA7_rodata

# .rodata:0x78 | 0xAA8 | size: 0xD
.obj str_A_dokan_nobi_win_000041f0, local
	.string "A_dokan_nobi"
.endobj str_A_dokan_nobi_win_000041f0

# .rodata:0x85 | 0xAB5 | size: 0x3
.obj gap_03_00000AB5_rodata, global
.hidden gap_03_00000AB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AB5_rodata

# .rodata:0x88 | 0xAB8 | size: 0xB
.obj str_S_dokan_ha_win_00004200, local
	.string "S_dokan_ha"
.endobj str_S_dokan_ha_win_00004200

# .rodata:0x93 | 0xAC3 | size: 0x1
.obj gap_03_00000AC3_rodata, global
.hidden gap_03_00000AC3_rodata
	.byte 0x00
.endobj gap_03_00000AC3_rodata

# .rodata:0x94 | 0xAC4 | size: 0xC
.obj str_S_tree_ha04_win_0000420c, local
	.string "S_tree_ha04"
.endobj str_S_tree_ha04_win_0000420c

# .rodata:0xA0 | 0xAD0 | size: 0x17
.obj str_SFX_STG2_SWITCH_QUAK_win_00004218, local
	.string "SFX_STG2_SWITCH_QUAKE1"
.endobj str_SFX_STG2_SWITCH_QUAK_win_00004218

# .rodata:0xB7 | 0xAE7 | size: 0x1
.obj gap_03_00000AE7_rodata, global
.hidden gap_03_00000AE7_rodata
	.byte 0x00
.endobj gap_03_00000AE7_rodata

# .rodata:0xB8 | 0xAE8 | size: 0x16
.obj str_SFX_STG2_STEP_EXTEND_win_00004230, local
	.string "SFX_STG2_STEP_EXTEND1"
.endobj str_SFX_STG2_STEP_EXTEND_win_00004230

# .rodata:0xCE | 0xAFE | size: 0x2
.obj gap_03_00000AFE_rodata, global
.hidden gap_03_00000AFE_rodata
	.2byte 0x0000
.endobj gap_03_00000AFE_rodata

# .rodata:0xD0 | 0xB00 | size: 0xA
.obj str_A_tree_01_win_00004248, local
	.string "A_tree_01"
.endobj str_A_tree_01_win_00004248

# .rodata:0xDA | 0xB0A | size: 0x2
.obj gap_03_00000B0A_rodata, global
.hidden gap_03_00000B0A_rodata
	.2byte 0x0000
.endobj gap_03_00000B0A_rodata

# .rodata:0xDC | 0xB0C | size: 0xE
.obj str_S_tree_mki_01_win_00004254, local
	.string "S_tree_mki_01"
.endobj str_S_tree_mki_01_win_00004254

# .rodata:0xEA | 0xB1A | size: 0x2
.obj gap_03_00000B1A_rodata, global
.hidden gap_03_00000B1A_rodata
	.2byte 0x0000
.endobj gap_03_00000B1A_rodata

# .rodata:0xEC | 0xB1C | size: 0xC
.obj str_S_tree_ha01_win_00004264, local
	.string "S_tree_ha01"
.endobj str_S_tree_ha01_win_00004264

# .rodata:0xF8 | 0xB28 | size: 0xA
.obj str_A_tree_02_win_00004270, local
	.string "A_tree_02"
.endobj str_A_tree_02_win_00004270

# .rodata:0x102 | 0xB32 | size: 0x2
.obj gap_03_00000B32_rodata, global
.hidden gap_03_00000B32_rodata
	.2byte 0x0000
.endobj gap_03_00000B32_rodata

# .rodata:0x104 | 0xB34 | size: 0xE
.obj str_S_tree_mki_02_win_0000427c, local
	.string "S_tree_mki_02"
.endobj str_S_tree_mki_02_win_0000427c

# .rodata:0x112 | 0xB42 | size: 0x2
.obj gap_03_00000B42_rodata, global
.hidden gap_03_00000B42_rodata
	.2byte 0x0000
.endobj gap_03_00000B42_rodata

# .rodata:0x114 | 0xB44 | size: 0xC
.obj str_S_tree_ha02_win_0000428c, local
	.string "S_tree_ha02"
.endobj str_S_tree_ha02_win_0000428c

# .rodata:0x120 | 0xB50 | size: 0xE
.obj str_BGM_STG2_WIN1_win_00004298, local
	.string "BGM_STG2_WIN1"
.endobj str_BGM_STG2_WIN1_win_00004298

# .rodata:0x12E | 0xB5E | size: 0x2
.obj gap_03_00000B5E_rodata, global
.hidden gap_03_00000B5E_rodata
	.2byte 0x0000
.endobj gap_03_00000B5E_rodata

# .rodata:0x130 | 0xB60 | size: 0xE
.obj str_ENV_STG2_WIN1_win_000042a8, local
	.string "ENV_STG2_WIN1"
.endobj str_ENV_STG2_WIN1_win_000042a8

# .rodata:0x13E | 0xB6E | size: 0x2
.obj gap_03_00000B6E_rodata, global
.hidden gap_03_00000B6E_rodata
	.2byte 0x0000
.endobj gap_03_00000B6E_rodata

# .rodata:0x140 | 0xB70 | size: 0x7
.obj str_pblk00_win_000042b8, local
	.string "pblk00"
.endobj str_pblk00_win_000042b8

# .rodata:0x147 | 0xB77 | size: 0x1
.obj gap_03_00000B77_rodata, global
.hidden gap_03_00000B77_rodata
	.byte 0x00
.endobj gap_03_00000B77_rodata

# .rodata:0x148 | 0xB78 | size: 0xB
.obj str_mobj_box01_win_000042c0, local
	.string "mobj_box01"
.endobj str_mobj_box01_win_000042c0

# .rodata:0x153 | 0xB83 | size: 0x1
.obj gap_03_00000B83_rodata, global
.hidden gap_03_00000B83_rodata
	.byte 0x00
.endobj gap_03_00000B83_rodata

# .rodata:0x154 | 0xB84 | size: 0xF
.obj str_mobj_badge_gat_win_000042cc, local
	.string "mobj_badge_gat"
.endobj str_mobj_badge_gat_win_000042cc

# .rodata:0x163 | 0xB93 | size: 0x1
.obj gap_03_00000B93_rodata, global
.hidden gap_03_00000B93_rodata
	.byte 0x00
.endobj gap_03_00000B93_rodata

# .rodata:0x164 | 0xB94 | size: 0x8
.obj str_item_00_win_000042dc, local
	.string "item_00"
.endobj str_item_00_win_000042dc

# .rodata:0x16C | 0xB9C | size: 0xC
.obj str_mobj_hashi0_win_000042e4, local
	.string "mobj_hashi0"
.endobj str_mobj_hashi0_win_000042e4

# .rodata:0x178 | 0xBA8 | size: 0x8
.obj str_S_hikou_win_000042f0, local
	.string "S_hikou"
.endobj str_S_hikou_win_000042f0

# 0x000043F0..0x00004BA0 | size: 0x7B0
.data
.balign 8

# .data:0x0 | 0x43F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x43F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x43FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4400 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4404 | size: 0x4
.obj gap_04_00004404_data, global
.hidden gap_04_00004404_data
	.4byte 0x00000000
.endobj gap_04_00004404_data

# .data:0x18 | 0x4408 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4410 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4414 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4418 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4420 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4424 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4428 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x442C | size: 0x4
.obj gap_04_0000442C_data, global
.hidden gap_04_0000442C_data
	.4byte 0x00000000
.endobj gap_04_0000442C_data

# .data:0x40 | 0x4430 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4438 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x443C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4440 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_win_00004178
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_01_win_00004180
	.4byte str_e_bero_win_00004188
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_win_00004188
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_win_03_win_00004190
	.4byte str_w_bero_win_00004178
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_win_00004198
	.4byte 0x00020000
	.4byte 0x00000006
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan1_win_000041a0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan1_win_000041a0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan2_win_00004198
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

# .data:0x17C | 0x456C | size: 0x164
.obj evt_hikou_nobiru_init, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_dai_win_000041a8
	.4byte str_hikou_win_000041b0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_hi_win_000041b8
	.4byte str_hikou_win_000041b0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dokan1_win_000041c0
	.4byte str_S_dokan2_win_000041cc
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_hi_kabe_win_000041d8
	.4byte str_S_nob_tree_win_000041e4
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dokan_nobi_win_000041f0
	.4byte str_S_dokan2_win_000041cc
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000AF
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dokan_ha_win_00004200
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_dokan2_win_000041cc
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000AF
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikou_win_000041b0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0x00000074
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0x00000074
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_nob_tree_win_000041e4
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dai_win_000041a8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_hi_win_000041b8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan1_win_000041c0
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan_nobi_win_000041f0
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_hi_kabe_win_000041d8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hikou_nobiru_init

# .data:0x2E0 | 0x46D0 | size: 0x32C
.obj evt_hikou_nobiru, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tree_ha04_win_0000420c
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFECD
	.4byte 0x000000DC
	.4byte 0x00000215
	.4byte 0xFFFFFECD
	.4byte 0x0000007C
	.4byte 0xFFFFFFF9
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG2_SWITCH_QUAK_win_00004218
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8F
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFECD
	.4byte 0x00000189
	.4byte 0x00000215
	.4byte 0xFFFFFECD
	.4byte 0x00000129
	.4byte 0xFFFFFFF9
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_dai_win_000041a8
	.4byte str_hikou_win_000041b0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_hi_win_000041b8
	.4byte str_hikou_win_000041b0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dokan1_win_000041c0
	.4byte str_S_dokan2_win_000041cc
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_hi_kabe_win_000041d8
	.4byte str_S_nob_tree_win_000041e4
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_dokan_nobi_win_000041f0
	.4byte str_S_dokan2_win_000041cc
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_A_dokan1_win_000041c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_STEP_EXTEND_win_00004230
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000AF
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_dokan_ha_win_00004200
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_dokan2_win_000041cc
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan1_win_000041c0
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan_nobi_win_000041f0
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_hi_kabe_win_000041d8
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000AF
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikou_win_000041b0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0x00000074
	.4byte 0x0002003D
	.4byte 0xFE363C82
	.4byte 0x00000074
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_nob_tree_win_000041e4
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dai_win_000041a8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_hi_win_000041b8
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_dokan1_win_000041c0
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_tree_ha04_win_0000420c
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hikou_nobiru

# .data:0x60C | 0x49FC | size: 0x48
.obj tree_access_data, local
	.4byte 0x00000004
	.4byte str_A_tree_01_win_00004248
	.4byte str_S_tree_mki_01_win_00004254
	.4byte str_S_tree_ha01_win_00004264
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte str_A_tree_02_win_00004270
	.4byte str_S_tree_mki_02_win_0000427c
	.4byte str_S_tree_ha02_win_0000428c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_access_data

# .data:0x654 | 0x4A44 | size: 0x15C
.obj win_02_init_evt_28_data_4A44, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_WIN1_win_00004298
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_WIN1_win_000042a8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_access_data
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000000
	.4byte str_hikou_win_000041b0
	.4byte str_a_hi_win_000041b8
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_win_000042b8
	.4byte 0xFFFFFE2A
	.4byte 0x0000012C
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF8407125
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_mobj_box01_win_000042c0
	.4byte 0x00000043
	.4byte 0x0000006E
	.4byte 0xFFFFFF7E
	.4byte 0x0000010F
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0xF84065FB
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj_badge_gat_win_000042cc
	.4byte 0x00000258
	.4byte 0x000000B9
	.4byte 0xFFFFFFB5
	.4byte 0x000000F8
	.4byte 0x00000000
	.4byte 0xF84065F5
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_win_000042dc
	.4byte 0x0000007D
	.4byte 0xFFFFFE28
	.4byte 0x00000032
	.4byte 0xFFFFFF7A
	.4byte 0x00000010
	.4byte 0xF8407168
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84065F6
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_hikou_nobiru_init
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000000
	.4byte str_mobj_hashi0_win_000042e4
	.4byte 0xFFFFFE61
	.4byte 0x00000032
	.4byte 0xFFFFFF83
	.4byte evt_hikou_nobiru
	.4byte 0xF84065F6
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hikou_win_000042f0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj win_02_init_evt_28_data_4A44
