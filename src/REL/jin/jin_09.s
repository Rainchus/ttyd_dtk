.include "macros.inc"
.file "jin_09.o"

# 0x00001220..0x000012A8 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x1220 | size: 0x7
.obj str_e_bero_jin_00008440, local
	.string "e_bero"
.endobj str_e_bero_jin_00008440

# .rodata:0x7 | 0x1227 | size: 0x1
.obj gap_03_00001227_rodata, global
.hidden gap_03_00001227_rodata
	.byte 0x00
.endobj gap_03_00001227_rodata

# .rodata:0x8 | 0x1228 | size: 0x7
.obj str_jin_10_jin_00008448, local
	.string "jin_10"
.endobj str_jin_10_jin_00008448

# .rodata:0xF | 0x122F | size: 0x1
.obj gap_03_0000122F_rodata, global
.hidden gap_03_0000122F_rodata
	.byte 0x00
.endobj gap_03_0000122F_rodata

# .rodata:0x10 | 0x1230 | size: 0x7
.obj str_w_bero_jin_00008450, local
	.string "w_bero"
.endobj str_w_bero_jin_00008450

# .rodata:0x17 | 0x1237 | size: 0x1
.obj gap_03_00001237_rodata, global
.hidden gap_03_00001237_rodata
	.byte 0x00
.endobj gap_03_00001237_rodata

# .rodata:0x18 | 0x1238 | size: 0xE
.obj str_BGM_STG4_JIN1_jin_00008458, local
	.string "BGM_STG4_JIN1"
.endobj str_BGM_STG4_JIN1_jin_00008458

# .rodata:0x26 | 0x1246 | size: 0x2
.obj gap_03_00001246_rodata, global
.hidden gap_03_00001246_rodata
	.2byte 0x0000
.endobj gap_03_00001246_rodata

# .rodata:0x28 | 0x1248 | size: 0xE
.obj str_ENV_STG4_JIN1_jin_00008468, local
	.string "ENV_STG4_JIN1"
.endobj str_ENV_STG4_JIN1_jin_00008468

# .rodata:0x36 | 0x1256 | size: 0x2
.obj gap_03_00001256_rodata, global
.hidden gap_03_00001256_rodata
	.2byte 0x0000
.endobj gap_03_00001256_rodata

# .rodata:0x38 | 0x1258 | size: 0x6
.obj str_blk00_jin_00008478, local
	.string "blk00"
.endobj str_blk00_jin_00008478

# .rodata:0x3E | 0x125E | size: 0x2
.obj gap_03_0000125E_rodata, global
.hidden gap_03_0000125E_rodata
	.2byte 0x0000
.endobj gap_03_0000125E_rodata

# .rodata:0x40 | 0x1260 | size: 0xA
.obj str_sizuku_01_jin_00008480, local
	.string "sizuku_01"
.endobj str_sizuku_01_jin_00008480

# .rodata:0x4A | 0x126A | size: 0x2
.obj gap_03_0000126A_rodata, global
.hidden gap_03_0000126A_rodata
	.2byte 0x0000
.endobj gap_03_0000126A_rodata

# .rodata:0x4C | 0x126C | size: 0x18
.obj str_SFX_STG4_AMB_WATERDR_jin_0000848c, local
	.string "SFX_STG4_AMB_WATERDROP1"
.endobj str_SFX_STG4_AMB_WATERDR_jin_0000848c

# .rodata:0x64 | 0x1284 | size: 0xA
.obj str_sizuku_02_jin_000084a4, local
	.string "sizuku_02"
.endobj str_sizuku_02_jin_000084a4

# .rodata:0x6E | 0x128E | size: 0x2
.obj gap_03_0000128E_rodata, global
.hidden gap_03_0000128E_rodata
	.2byte 0x0000
.endobj gap_03_0000128E_rodata

# .rodata:0x70 | 0x1290 | size: 0xA
.obj str_jumpstand_jin_000084b0, local
	.string "jumpstand"
.endobj str_jumpstand_jin_000084b0

# .rodata:0x7A | 0x129A | size: 0x2
.obj gap_03_0000129A_rodata, global
.hidden gap_03_0000129A_rodata
	.2byte 0x0000
.endobj gap_03_0000129A_rodata

# .rodata:0x7C | 0x129C | size: 0x7
.obj str_gra_06_jin_000084bc, local
	.string "gra_06"
.endobj str_gra_06_jin_000084bc

# .rodata:0x83 | 0x12A3 | size: 0x1
.obj gap_03_000012A3_rodata, global
.hidden gap_03_000012A3_rodata
	.byte 0x00
.endobj gap_03_000012A3_rodata

# .rodata:0x84 | 0x12A4 | size: 0x4
.obj str_ana_jin_000084c4, local
	.string "ana"
.endobj str_ana_jin_000084c4

# 0x00009EB0..0x0000A328 | size: 0x478
.data
.balign 8

# .data:0x0 | 0x9EB0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x9EB8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x9EBC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9EC0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x9EC4 | size: 0x4
.obj gap_04_00009EC4_data, global
.hidden gap_04_00009EC4_data
	.4byte 0x00000000
.endobj gap_04_00009EC4_data

# .data:0x18 | 0x9EC8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9ED0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x9ED4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x9ED8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9EE0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9EE4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9EE8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x9EEC | size: 0x4
.obj gap_04_00009EEC_data, global
.hidden gap_04_00009EEC_data
	.4byte 0x00000000
.endobj gap_04_00009EEC_data

# .data:0x40 | 0x9EF0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9EF8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x9EFC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9F00 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_jin_00008440
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_10_jin_00008448
	.4byte str_w_bero_jin_00008450
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

# .data:0xC8 | 0x9F78 | size: 0x54
.obj jin_09_jumpstand, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_mario_jump_jumpstand
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000708
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_09_jumpstand

# .data:0x11C | 0x9FCC | size: 0x358
.obj jin_09_init_evt_13_data_9FCC, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_00008458
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN1_jin_00008468
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
	.4byte str_blk00_jin_00008478
	.4byte 0xFFFFFF88
	.4byte 0x0000003C
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0xF840712E
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000BB8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sizuku_01_jin_00008480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_sizuku_01_jin_00008480
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_AMB_WATERDR_jin_0000848c
	.4byte 0xFFFFFFB4
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000BB8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_sizuku_02_jin_000084a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_sizuku_02_jin_000084a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_AMB_WATERDR_jin_0000848c
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0xFFFFFFC0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0008005B
	.4byte evt_mobj_jumpstand_red
	.4byte 0x00000000
	.4byte str_jumpstand_jin_000084b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte jin_09_jumpstand
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF840639F
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840639F
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x0000016D
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000018B
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x0000016D
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x0000016D
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gra_06_jin_000084bc
	.4byte str_ana_jin_000084c4
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_09_init_evt_13_data_9FCC

# .data:0x474 | 0xA324 | size: 0x4
.obj gap_04_0000A324_data, global
.hidden gap_04_0000A324_data
	.4byte 0x00000000
.endobj gap_04_0000A324_data
