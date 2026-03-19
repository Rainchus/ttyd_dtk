.include "macros.inc"
.file "las_00.o"

# 0x00000460..0x000004C8 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x460 | size: 0x68
.fn make_name, local
/* 00000460 0000052C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000464 00000530  7C 08 02 A6 */	mflr r0
/* 00000468 00000534  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000046C 00000538  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000470 0000053C  7C 7E 1B 78 */	mr r30, r3
/* 00000474 00000540  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000478 00000544  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000047C 00000548  4B FF FC C1 */	bl evtGetValue
/* 00000480 0000054C  3C 80 00 00 */	lis r4, str_S_shan_rou_0PCTd_las_00011cb4@ha
/* 00000484 00000550  3C C0 00 00 */	lis r6, name$535@ha
/* 00000488 00000554  7C 65 1B 78 */	mr r5, r3
/* 0000048C 00000558  38 66 00 00 */	addi r3, r6, name$535@l
/* 00000490 0000055C  38 84 00 00 */	addi r4, r4, str_S_shan_rou_0PCTd_las_00011cb4@l
/* 00000494 00000560  4C C6 31 82 */	crclr cr1eq
/* 00000498 00000564  4B FF FC A5 */	bl sprintf
/* 0000049C 00000568  3C 60 00 00 */	lis r3, name$535@ha
/* 000004A0 0000056C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000004A4 00000570  38 A3 00 00 */	addi r5, r3, name$535@l
/* 000004A8 00000574  7F C3 F3 78 */	mr r3, r30
/* 000004AC 00000578  4B FF FC 91 */	bl evtSetValue
/* 000004B0 0000057C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000004B4 00000580  38 60 00 02 */	li r3, 0x2
/* 000004B8 00000584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000004BC 00000588  7C 08 03 A6 */	mtlr r0
/* 000004C0 0000058C  38 21 00 10 */	addi r1, r1, 0x10
/* 000004C4 00000590  4E 80 00 20 */	blr
.endfn make_name

# 0x000001A0..0x00000260 | size: 0xC0
.rodata
.balign 8

# .rodata:0x0 | 0x1A0 | size: 0xB
.obj str_S_doa_l_01_las_00011c08, local
	.string "S_doa_l_01"
.endobj str_S_doa_l_01_las_00011c08

# .rodata:0xB | 0x1AB | size: 0x1
.obj gap_03_000001AB_rodata, global
.hidden gap_03_000001AB_rodata
	.byte 0x00
.endobj gap_03_000001AB_rodata

# .rodata:0xC | 0x1AC | size: 0xB
.obj str_S_doa_l_02_las_00011c14, local
	.string "S_doa_l_02"
.endobj str_S_doa_l_02_las_00011c14

# .rodata:0x17 | 0x1B7 | size: 0x1
.obj gap_03_000001B7_rodata, global
.hidden gap_03_000001B7_rodata
	.byte 0x00
.endobj gap_03_000001B7_rodata

# .rodata:0x18 | 0x1B8 | size: 0xB
.obj str_S_doa_r_01_las_00011c20, local
	.string "S_doa_r_01"
.endobj str_S_doa_r_01_las_00011c20

# .rodata:0x23 | 0x1C3 | size: 0x1
.obj gap_03_000001C3_rodata, global
.hidden gap_03_000001C3_rodata
	.byte 0x00
.endobj gap_03_000001C3_rodata

# .rodata:0x24 | 0x1C4 | size: 0xB
.obj str_S_doa_r_02_las_00011c2c, local
	.string "S_doa_r_02"
.endobj str_S_doa_r_02_las_00011c2c

# .rodata:0x2F | 0x1CF | size: 0x1
.obj gap_03_000001CF_rodata, global
.hidden gap_03_000001CF_rodata
	.byte 0x00
.endobj gap_03_000001CF_rodata

# .rodata:0x30 | 0x1D0 | size: 0x7
.obj str_w_bero_las_00011c38, local
	.string "w_bero"
.endobj str_w_bero_las_00011c38

# .rodata:0x37 | 0x1D7 | size: 0x1
.obj gap_03_000001D7_rodata, global
.hidden gap_03_000001D7_rodata
	.byte 0x00
.endobj gap_03_000001D7_rodata

# .rodata:0x38 | 0x1D8 | size: 0x7
.obj str_tik_05_las_00011c40, local
	.string "tik_05"
.endobj str_tik_05_las_00011c40

# .rodata:0x3F | 0x1DF | size: 0x1
.obj gap_03_000001DF_rodata, global
.hidden gap_03_000001DF_rodata
	.byte 0x00
.endobj gap_03_000001DF_rodata

# .rodata:0x40 | 0x1E0 | size: 0x7
.obj str_n_bero_las_00011c48, local
	.string "n_bero"
.endobj str_n_bero_las_00011c48

# .rodata:0x47 | 0x1E7 | size: 0x1
.obj gap_03_000001E7_rodata, global
.hidden gap_03_000001E7_rodata
	.byte 0x00
.endobj gap_03_000001E7_rodata

# .rodata:0x48 | 0x1E8 | size: 0x7
.obj str_e_bero_las_00011c50, local
	.string "e_bero"
.endobj str_e_bero_las_00011c50

# .rodata:0x4F | 0x1EF | size: 0x1
.obj gap_03_000001EF_rodata, global
.hidden gap_03_000001EF_rodata
	.byte 0x00
.endobj gap_03_000001EF_rodata

# .rodata:0x50 | 0x1F0 | size: 0x7
.obj str_las_01_las_00011c58, local
	.string "las_01"
.endobj str_las_01_las_00011c58

# .rodata:0x57 | 0x1F7 | size: 0x1
.obj gap_03_000001F7_rodata, global
.hidden gap_03_000001F7_rodata
	.byte 0x00
.endobj gap_03_000001F7_rodata

# .rodata:0x58 | 0x1F8 | size: 0xC
.obj str_stg8_las_01_las_00011c60, local
	.string "stg8_las_01"
.endobj str_stg8_las_01_las_00011c60

# .rodata:0x64 | 0x204 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_las_00011c6c, local
	.string "SFX_VOICE_MARIO_NOD1_4"
.endobj str_SFX_VOICE_MARIO_NOD1_las_00011c6c

# .rodata:0x7B | 0x21B | size: 0x1
.obj gap_03_0000021B_rodata, global
.hidden gap_03_0000021B_rodata
	.byte 0x00
.endobj gap_03_0000021B_rodata

# .rodata:0x7C | 0x21C | size: 0x6
.obj str_M_N_2_las_00011c84, local
	.string "M_N_2"
.endobj str_M_N_2_las_00011c84

# .rodata:0x82 | 0x222 | size: 0x2
.obj gap_03_00000222_rodata, global
.hidden gap_03_00000222_rodata
	.2byte 0x0000
.endobj gap_03_00000222_rodata

# .rodata:0x84 | 0x224 | size: 0x5
.obj str_fire_las_00011c8c, local
	.string "fire"
.endobj str_fire_las_00011c8c

# .rodata:0x89 | 0x229 | size: 0x3
.obj gap_03_00000229_rodata, global
.hidden gap_03_00000229_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000229_rodata

# .rodata:0x8C | 0x22C | size: 0xE
.obj str_BGM_STG8_LST1_las_00011c94, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_00011c94

# .rodata:0x9A | 0x23A | size: 0x2
.obj gap_03_0000023A_rodata, global
.hidden gap_03_0000023A_rodata
	.2byte 0x0000
.endobj gap_03_0000023A_rodata

# .rodata:0x9C | 0x23C | size: 0xE
.obj str_ENV_STG8_LAS1_las_00011ca4, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00011ca4

# .rodata:0xAA | 0x24A | size: 0x2
.obj gap_03_0000024A_rodata, global
.hidden gap_03_0000024A_rodata
	.2byte 0x0000
.endobj gap_03_0000024A_rodata

# .rodata:0xAC | 0x24C | size: 0xF
.obj str_S_shan_rou_0PCTd_las_00011cb4, local
	.string "S_shan_rou_0%d"
.endobj str_S_shan_rou_0PCTd_las_00011cb4

# .rodata:0xBB | 0x25B | size: 0x5
.obj gap_03_0000025B_rodata, global
.hidden gap_03_0000025B_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_0000025B_rodata

# 0x00000608..0x00000C88 | size: 0x680
.data
.balign 8

# .data:0x0 | 0x608 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x610 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x614 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x618 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x61C | size: 0x4
.obj gap_04_0000061C_data, global
.hidden gap_04_0000061C_data
	.4byte 0x00000000
.endobj gap_04_0000061C_data

# .data:0x18 | 0x620 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x628 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x62C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x630 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x638 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x63C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x640 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x644 | size: 0x4
.obj gap_04_00000644_data, global
.hidden gap_04_00000644_data
	.4byte 0x00000000
.endobj gap_04_00000644_data

# .data:0x40 | 0x648 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x650 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x654 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x658 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00011c08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00011c14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x6B0 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00011c08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00011c14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x708 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00011c20
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_00011c2c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x760 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00011c20
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_00011c2c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x7B8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00011c38
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tik_05_las_00011c40
	.4byte str_n_bero_las_00011c48
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_00011c50
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_01_las_00011c58
	.4byte str_w_bero_las_00011c38
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
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

# .data:0x264 | 0x86C | size: 0x2E0
.obj first_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_set_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE5C
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFE2A
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE7F
	.4byte 0x000005A1
	.4byte 0x000002FB
	.4byte 0xFFFFFFDB
	.4byte 0x00000282
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000241
	.4byte 0x00000023
	.4byte 0x00000208
	.4byte 0xFFFFFF65
	.4byte 0x00000087
	.4byte 0x00000063
	.4byte 0x00001B58
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00001B58
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_w_bero_las_00011c38
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_w_bero_las_00011c38
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEE
	.4byte 0x00000014
	.4byte 0x000000CD
	.4byte 0xFFFFFE3B
	.4byte 0x00000050
	.4byte 0xFFFFFF7D
	.4byte 0x00000960
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000960
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_01_las_00011c60
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_las_00011c6c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_las_00011c84
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000017E
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x00000011
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_evt

# .data:0x544 | 0xB4C | size: 0xB8
.obj shan_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0003005B
	.4byte make_name
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xF24A9E80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_fire_las_00011c8c
	.4byte 0x00000003
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF24A7E80
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shan_init

# .data:0x5FC | 0xC04 | size: 0x80
.obj las_00_init_evt_16_data_C04, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_00011c94
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00011ca4
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000017E
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000017E
	.4byte 0x0001005C
	.4byte first_evt
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte shan_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_00_init_evt_16_data_C04

# .data:0x67C | 0xC84 | size: 0x4
.obj gap_04_00000C84_data, global
.hidden gap_04_00000C84_data
	.4byte 0x00000000
.endobj gap_04_00000C84_data

# 0x00000000..0x00000010 | size: 0x10
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x10
.obj name$535, local
	.skip 0x10
.endobj name$535
