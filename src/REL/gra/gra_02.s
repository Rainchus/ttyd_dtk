.include "macros.inc"
.file "gra_02.o"

# 0x00000434..0x00000470 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x434 | size: 0x3C
.fn booboo_main, local
/* 00000434 000004F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000438 000004FC  7C 08 02 A6 */	mflr r0
/* 0000043C 00000500  3C 60 00 00 */	lis r3, booboo_name@ha
/* 00000440 00000504  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000444 00000508  38 63 00 00 */	addi r3, r3, booboo_name@l
/* 00000448 0000050C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000044C 00000510  48 00 00 C5 */	bl npcNameToPtr
/* 00000450 00000514  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00000454 00000518  38 80 00 10 */	li r4, 0x10
/* 00000458 0000051C  48 00 00 B9 */	bl animPoseSetMaterialLightFlagOn
/* 0000045C 00000520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000460 00000524  38 60 00 02 */	li r3, 0x2
/* 00000464 00000528  7C 08 03 A6 */	mtlr r0
/* 00000468 0000052C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000046C 00000530  4E 80 00 20 */	blr
.endfn booboo_main

# 0x00000468..0x00000558 | size: 0xF0
.rodata
.balign 8

# .rodata:0x0 | 0x468 | size: 0xF
.obj str_ブタお店の主人_gra_00001928, local
	.4byte 0x8375835E
	.4byte 0x82A89358
	.4byte 0x82CC8EE5
	.byte 0x90, 0x6C, 0x00
.endobj str_ブタお店の主人_gra_00001928

# .rodata:0xF | 0x477 | size: 0x1
.obj gap_03_00000477_rodata, global
.hidden gap_03_00000477_rodata
	.byte 0x00
.endobj gap_03_00000477_rodata

# .rodata:0x10 | 0x478 | size: 0x3
.obj str_me_gra_00001938, local
	.string "me"
.endobj str_me_gra_00001938

# .rodata:0x13 | 0x47B | size: 0x1
.obj gap_03_0000047B_rodata, global
.hidden gap_03_0000047B_rodata
	.byte 0x00
.endobj gap_03_0000047B_rodata

# .rodata:0x14 | 0x47C | size: 0x14
.obj str_SFX_STG4_VOICE_PIG1_gra_0000193c, local
	.string "SFX_STG4_VOICE_PIG1"
.endobj str_SFX_STG4_VOICE_PIG1_gra_0000193c

# .rodata:0x28 | 0x490 | size: 0xC
.obj str_stg4_gra_17_gra_00001950, local
	.string "stg4_gra_17"
.endobj str_stg4_gra_17_gra_00001950

# .rodata:0x34 | 0x49C | size: 0xC
.obj str_stg4_gra_18_gra_0000195c, local
	.string "stg4_gra_18"
.endobj str_stg4_gra_18_gra_0000195c

# .rodata:0x40 | 0x4A8 | size: 0x9
.obj str_w_bero_1_gra_00001968, local
	.string "w_bero_1"
.endobj str_w_bero_1_gra_00001968

# .rodata:0x49 | 0x4B1 | size: 0x3
.obj gap_03_000004B1_rodata, global
.hidden gap_03_000004B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004B1_rodata

# .rodata:0x4C | 0x4B4 | size: 0x7
.obj str_gra_01_gra_00001974, local
	.string "gra_01"
.endobj str_gra_01_gra_00001974

# .rodata:0x53 | 0x4BB | size: 0x1
.obj gap_03_000004BB_rodata, global
.hidden gap_03_000004BB_rodata
	.byte 0x00
.endobj gap_03_000004BB_rodata

# .rodata:0x54 | 0x4BC | size: 0x8
.obj str_e_bero1_gra_0000197c, local
	.string "e_bero1"
.endobj str_e_bero1_gra_0000197c

# .rodata:0x5C | 0x4C4 | size: 0x9
.obj str_w_bero_2_gra_00001984, local
	.string "w_bero_2"
.endobj str_w_bero_2_gra_00001984

# .rodata:0x65 | 0x4CD | size: 0x3
.obj gap_03_000004CD_rodata, global
.hidden gap_03_000004CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004CD_rodata

# .rodata:0x68 | 0x4D0 | size: 0x7
.obj str_gra_03_gra_00001990, local
	.string "gra_03"
.endobj str_gra_03_gra_00001990

# .rodata:0x6F | 0x4D7 | size: 0x1
.obj gap_03_000004D7_rodata, global
.hidden gap_03_000004D7_rodata
	.byte 0x00
.endobj gap_03_000004D7_rodata

# .rodata:0x70 | 0x4D8 | size: 0x7
.obj str_e_bero_gra_00001998, local
	.string "e_bero"
.endobj str_e_bero_gra_00001998

# .rodata:0x77 | 0x4DF | size: 0x1
.obj gap_03_000004DF_rodata, global
.hidden gap_03_000004DF_rodata
	.byte 0x00
.endobj gap_03_000004DF_rodata

# .rodata:0x78 | 0x4E0 | size: 0x8
.obj str_dokan_1_gra_000019a0, local
	.string "dokan_1"
.endobj str_dokan_1_gra_000019a0

# .rodata:0x80 | 0x4E8 | size: 0x8
.obj str_dokan_2_gra_000019a8, local
	.string "dokan_2"
.endobj str_dokan_2_gra_000019a8

# .rodata:0x88 | 0x4F0 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_gra_000019b0, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_gra_000019b0

# .rodata:0x9C | 0x504 | size: 0xE
.obj str_BGM_STG4_GRA1_gra_000019c4, local
	.string "BGM_STG4_GRA1"
.endobj str_BGM_STG4_GRA1_gra_000019c4

# .rodata:0xAA | 0x512 | size: 0x2
.obj gap_03_00000512_rodata, global
.hidden gap_03_00000512_rodata
	.2byte 0x0000
.endobj gap_03_00000512_rodata

# .rodata:0xAC | 0x514 | size: 0xE
.obj str_ENV_STG4_USU1_gra_000019d4, local
	.string "ENV_STG4_USU1"
.endobj str_ENV_STG4_USU1_gra_000019d4

# .rodata:0xBA | 0x522 | size: 0x2
.obj gap_03_00000522_rodata, global
.hidden gap_03_00000522_rodata
	.2byte 0x0000
.endobj gap_03_00000522_rodata

# .rodata:0xBC | 0x524 | size: 0x7
.obj str_item00_gra_000019e4, local
	.string "item00"
.endobj str_item00_gra_000019e4

# .rodata:0xC3 | 0x52B | size: 0x1
.obj gap_03_0000052B_rodata, global
.hidden gap_03_0000052B_rodata
	.byte 0x00
.endobj gap_03_0000052B_rodata

# .rodata:0xC4 | 0x52C | size: 0x7
.obj str_item01_gra_000019ec, local
	.string "item01"
.endobj str_item01_gra_000019ec

# .rodata:0xCB | 0x533 | size: 0x1
.obj gap_03_00000533_rodata, global
.hidden gap_03_00000533_rodata
	.byte 0x00
.endobj gap_03_00000533_rodata

# .rodata:0xCC | 0x534 | size: 0x6
.obj str_key00_gra_000019f4, local
	.string "key00"
.endobj str_key00_gra_000019f4

# .rodata:0xD2 | 0x53A | size: 0x2
.obj gap_03_0000053A_rodata, global
.hidden gap_03_0000053A_rodata
	.2byte 0x0000
.endobj gap_03_0000053A_rodata

# .rodata:0xD4 | 0x53C | size: 0x7
.obj str_S_wara_gra_000019fc, local
	.string "S_wara"
.endobj str_S_wara_gra_000019fc

# .rodata:0xDB | 0x543 | size: 0x1
.obj gap_03_00000543_rodata, global
.hidden gap_03_00000543_rodata
	.byte 0x00
.endobj gap_03_00000543_rodata

# .rodata:0xDC | 0x544 | size: 0x14
.obj str_polySurface981_q023_gra_00001a04, local
	.string "polySurface981_q023"
.endobj str_polySurface981_q023_gra_00001a04

# 0x00001FE8..0x00002518 | size: 0x530
.data
.balign 8

# .data:0x0 | 0x1FE8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1FF0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1FF4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1FF8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1FFC | size: 0x4
.obj gap_04_00001FFC_data, global
.hidden gap_04_00001FFC_data
	.4byte 0x00000000
.endobj gap_04_00001FFC_data

# .data:0x18 | 0x2000 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2008 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x200C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2010 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2018 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x201C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2020 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2024 | size: 0x4
.obj gap_04_00002024_data, global
.hidden gap_04_00002024_data
	.4byte 0x00000000
.endobj gap_04_00002024_data

# .data:0x40 | 0x2028 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2030 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2034 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2038 | size: 0x38
.obj shopmaster_pig_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブタお店の主人_gra_00001928
	.4byte 0x00000000
	.4byte 0xFFFFF830
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shopmaster_pig_init

# .data:0x88 | 0x2070 | size: 0x84
.obj shopmaster_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_gra_00001938
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_VOICE_PIG1_gra_0000193c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_17_gra_00001950
	.4byte 0x00000000
	.4byte str_me_gra_00001938
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_18_gra_0000195c
	.4byte 0x00000000
	.4byte str_me_gra_00001938
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shopmaster_talk

# .data:0x10C | 0x20F4 | size: 0x60
.obj urouro_move, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_gra_00001938
	.4byte 0x40000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_gra_00001938
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_gra_00001938
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B4280
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_gra_00001938
	.4byte 0x00000002
	.4byte 0x00000001
.endobj urouro_move

# .data:0x16C | 0x2154 | size: 0xB8
.obj npcEnt, local
	.4byte str_ブタお店の主人_gra_00001928
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte shopmaster_pig_init
	.4byte urouro_move
	.4byte shopmaster_talk
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

# .data:0x224 | 0x220C | size: 0x14
.obj w_bero_2_in, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_bero_2_in

# .data:0x238 | 0x2220 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_1_gra_00001968
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_01_gra_00001974
	.4byte str_e_bero1_gra_0000197c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_2_gra_00001984
	.4byte 0x10000000
	.4byte 0x00000006
	.4byte 0x000000F2
	.4byte 0x00000015
	.4byte 0xFFFFFE3E
	.4byte 0xFFFFFFFF
	.4byte w_bero_2_in
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_gra_03_gra_00001990
	.4byte str_e_bero_gra_00001998
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_gra_000019a0
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
	.4byte str_dokan_2_gra_000019a8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_gra_000019a8
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_gra_000019a0
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

# .data:0x364 | 0x234C | size: 0x14
.obj gra02_get_key, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000B8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra02_get_key

# .data:0x378 | 0x2360 | size: 0x5C
.obj gra02_straw_blow_evt, local
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_gra_000019b0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000BC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra02_straw_blow_evt

# .data:0x3D4 | 0x23BC | size: 0x4
.obj booboo_name, local
	.4byte str_ブタお店の主人_gra_00001928
.endobj booboo_name

# .data:0x3D8 | 0x23C0 | size: 0x158
.obj gra_02_init_evt_10_data_23C0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_GRA1_gra_000019c4
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_USU1_gra_000019d4
	.4byte 0x0001005B
	.4byte evt_kagemario_init_10_text_820
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_gra_000019e4
	.4byte 0x0000007D
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000010
	.4byte 0xF840717F
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_gra_000019ec
	.4byte 0x0000007D
	.4byte 0x00000131
	.4byte 0x00000000
	.4byte 0xFFFFFFDD
	.4byte 0x00000010
	.4byte 0xF8407180
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_10_data_5028
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000B8
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_key00_gra_000019f4
	.4byte 0x00000015
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte gra02_get_key
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000BC
	.4byte 0x0001005B
	.4byte evt_cloud_init
	.4byte 0x0005005B
	.4byte evt_cloud_ent
	.4byte 0x00000000
	.4byte str_S_wara_gra_000019fc
	.4byte str_polySurface981_q023_gra_00001a04
	.4byte gra02_straw_blow_evt
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_wara_gra_000019fc
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_polySurface981_q023_gra_00001a04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte booboo_main
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_02_init_evt_10_data_23C0
