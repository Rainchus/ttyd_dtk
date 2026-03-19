.include "macros.inc"
.file "dou_00.o"

# 0x0000023C..0x0000025C | size: 0x20
.text
.balign 4

# .text:0x0 | 0x23C | size: 0x20
.fn water_tev, local
/* 0000023C 00000300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000240 00000304  7C 08 02 A6 */	mflr r0
/* 00000244 00000308  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000248 0000030C  4B FF FE 25 */	bl envSetWater
/* 0000024C 00000310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000250 00000314  7C 08 03 A6 */	mtlr r0
/* 00000254 00000318  38 21 00 10 */	addi r1, r1, 0x10
/* 00000258 0000031C  4E 80 00 20 */	blr
.endfn water_tev

# 0x00000088..0x00000108 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x88 | size: 0x7
.obj str_w_bero_dou_00003d18, local
	.string "w_bero"
.endobj str_w_bero_dou_00003d18

# .rodata:0x7 | 0x8F | size: 0x1
.obj gap_03_0000008F_rodata, global
.hidden gap_03_0000008F_rodata
	.byte 0x00
.endobj gap_03_0000008F_rodata

# .rodata:0x8 | 0x90 | size: 0x7
.obj str_muj_05_dou_00003d20, local
	.string "muj_05"
.endobj str_muj_05_dou_00003d20

# .rodata:0xF | 0x97 | size: 0x1
.obj gap_03_00000097_rodata, global
.hidden gap_03_00000097_rodata
	.byte 0x00
.endobj gap_03_00000097_rodata

# .rodata:0x10 | 0x98 | size: 0x7
.obj str_e_bero_dou_00003d28, local
	.string "e_bero"
.endobj str_e_bero_dou_00003d28

# .rodata:0x17 | 0x9F | size: 0x1
.obj gap_03_0000009F_rodata, global
.hidden gap_03_0000009F_rodata
	.byte 0x00
.endobj gap_03_0000009F_rodata

# .rodata:0x18 | 0xA0 | size: 0x7
.obj str_dou_01_dou_00003d30, local
	.string "dou_01"
.endobj str_dou_01_dou_00003d30

# .rodata:0x1F | 0xA7 | size: 0x1
.obj gap_03_000000A7_rodata, global
.hidden gap_03_000000A7_rodata
	.byte 0x00
.endobj gap_03_000000A7_rodata

# .rodata:0x20 | 0xA8 | size: 0x6
.obj str_mario_dou_00003d38, local
	.string "mario"
.endobj str_mario_dou_00003d38

# .rodata:0x26 | 0xAE | size: 0x2
.obj gap_03_000000AE_rodata, global
.hidden gap_03_000000AE_rodata
	.2byte 0x0000
.endobj gap_03_000000AE_rodata

# .rodata:0x28 | 0xB0 | size: 0xC
.obj str_stg5_dou_00_dou_00003d40, local
	.string "stg5_dou_00"
.endobj str_stg5_dou_00_dou_00003d40

# .rodata:0x34 | 0xBC | size: 0xE
.obj str_BGM_STG5_DOU1_dou_00003d4c, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_00003d4c

# .rodata:0x42 | 0xCA | size: 0x2
.obj gap_03_000000CA_rodata, global
.hidden gap_03_000000CA_rodata
	.2byte 0x0000
.endobj gap_03_000000CA_rodata

# .rodata:0x44 | 0xCC | size: 0xE
.obj str_ENV_STG5_DOU1_dou_00003d5c, local
	.string "ENV_STG5_DOU1"
.endobj str_ENV_STG5_DOU1_dou_00003d5c

# .rodata:0x52 | 0xDA | size: 0x2
.obj gap_03_000000DA_rodata, global
.hidden gap_03_000000DA_rodata
	.2byte 0x0000
.endobj gap_03_000000DA_rodata

# .rodata:0x54 | 0xDC | size: 0x5
.obj str_nami_dou_00003d6c, local
	.string "nami"
.endobj str_nami_dou_00003d6c

# .rodata:0x59 | 0xE1 | size: 0x3
.obj gap_03_000000E1_rodata, global
.hidden gap_03_000000E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000000E1_rodata

# .rodata:0x5C | 0xE4 | size: 0xA
.obj str_mobj_save_dou_00003d74, local
	.string "mobj_save"
.endobj str_mobj_save_dou_00003d74

# .rodata:0x66 | 0xEE | size: 0x2
.obj gap_03_000000EE_rodata, global
.hidden gap_03_000000EE_rodata
	.2byte 0x0000
.endobj gap_03_000000EE_rodata

# .rodata:0x68 | 0xF0 | size: 0x8
.obj str_item_01_dou_00003d80, local
	.string "item_01"
.endobj str_item_01_dou_00003d80

# .rodata:0x70 | 0xF8 | size: 0xB
.obj str_s00_suimen_dou_00003d88, local
	.string "s00_suimen"
.endobj str_s00_suimen_dou_00003d88

# .rodata:0x7B | 0x103 | size: 0x5
.obj gap_03_00000103_rodata, global
.hidden gap_03_00000103_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00000103_rodata

# 0x00000278..0x000005E0 | size: 0x368
.data
.balign 8

# .data:0x0 | 0x278 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x280 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x284 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x288 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x28C | size: 0x4
.obj gap_04_0000028C_data, global
.hidden gap_04_0000028C_data
	.4byte 0x00000000
.endobj gap_04_0000028C_data

# .data:0x18 | 0x290 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x298 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x29C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2B4 | size: 0x4
.obj gap_04_000002B4_data, global
.hidden gap_04_000002B4_data
	.4byte 0x00000000
.endobj gap_04_000002B4_data

# .data:0x40 | 0x2B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2C8 | size: 0x2C
.obj bero_in_event, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000F2
	.4byte 0x0001005E
	.4byte totsunyu_event
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_in_event

# .data:0x7C | 0x2F4 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_dou_00003d18
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_in_event
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_05_dou_00003d20
	.4byte str_e_bero_dou_00003d28
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_dou_00003d28
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_01_dou_00003d30
	.4byte str_w_bero_dou_00003d18
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

# .data:0x130 | 0x3A8 | size: 0x8C
.obj back_light, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_mario_dou_00003d38
	.4byte 0x00000800
	.4byte 0x0002005B
	.4byte evt_map_blend_off
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj back_light

# .data:0x1BC | 0x434 | size: 0xB8
.obj totsunyu_event, local
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_00_dou_00003d40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte back_light
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F3
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x0000000A
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj totsunyu_event

# .data:0x274 | 0x4EC | size: 0xF4
.obj dou_00_init_evt_5_data_4EC, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_00003d4c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU1_dou_00003d5c
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
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_dou_00003d6c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_dou_00003d74
	.4byte 0x0000001E
	.4byte 0x00000055
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_dou_00003d80
	.4byte 0x00000089
	.4byte 0xFFFFFF0B
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x00000010
	.4byte 0xF840672E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte water_tev
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_s00_suimen_dou_00003d88
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_s00_suimen_dou_00003d88
	.4byte 0x00000100
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_00_init_evt_5_data_4EC
