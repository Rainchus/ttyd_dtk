.include "macros.inc"
.file "gon_13.o"

# 0x000037C8..0x00003868 | size: 0xA0
.rodata
.balign 8

# .rodata:0x0 | 0x37C8 | size: 0x7
.obj str_w_bero_gon_00007598, local
	.string "w_bero"
.endobj str_w_bero_gon_00007598

# .rodata:0x7 | 0x37CF | size: 0x1
.obj gap_03_000037CF_rodata, global
.hidden gap_03_000037CF_rodata
	.byte 0x00
.endobj gap_03_000037CF_rodata

# .rodata:0x8 | 0x37D0 | size: 0x7
.obj str_gon_07_gon_000075a0, local
	.string "gon_07"
.endobj str_gon_07_gon_000075a0

# .rodata:0xF | 0x37D7 | size: 0x1
.obj gap_03_000037D7_rodata, global
.hidden gap_03_000037D7_rodata
	.byte 0x00
.endobj gap_03_000037D7_rodata

# .rodata:0x10 | 0x37D8 | size: 0x7
.obj str_e_bero_gon_000075a8, local
	.string "e_bero"
.endobj str_e_bero_gon_000075a8

# .rodata:0x17 | 0x37DF | size: 0x1
.obj gap_03_000037DF_rodata, global
.hidden gap_03_000037DF_rodata
	.byte 0x00
.endobj gap_03_000037DF_rodata

# .rodata:0x18 | 0x37E0 | size: 0xB
.obj str_mobj_box04_gon_000075b0, local
	.string "mobj_box04"
.endobj str_mobj_box04_gon_000075b0

# .rodata:0x23 | 0x37EB | size: 0x1
.obj gap_03_000037EB_rodata, global
.hidden gap_03_000037EB_rodata
	.byte 0x00
.endobj gap_03_000037EB_rodata

# .rodata:0x24 | 0x37EC | size: 0x7
.obj str_item00_gon_000075bc, local
	.string "item00"
.endobj str_item00_gon_000075bc

# .rodata:0x2B | 0x37F3 | size: 0x1
.obj gap_03_000037F3_rodata, global
.hidden gap_03_000037F3_rodata
	.byte 0x00
.endobj gap_03_000037F3_rodata

# .rodata:0x2C | 0x37F4 | size: 0xB
.obj str_OFF_d_biri_gon_000075c4, local
	.string "OFF_d_biri"
.endobj str_OFF_d_biri_gon_000075c4

# .rodata:0x37 | 0x37FF | size: 0x1
.obj gap_03_000037FF_rodata, global
.hidden gap_03_000037FF_rodata
	.byte 0x00
.endobj gap_03_000037FF_rodata

# .rodata:0x38 | 0x3800 | size: 0x4
.obj str_img_gon_000075d0, local
	.string "img"
.endobj str_img_gon_000075d0

# .rodata:0x3C | 0x3804 | size: 0x15
.obj str_SFX_OFF1_PERA_BREAK1_gon_000075d4, local
	.string "SFX_OFF1_PERA_BREAK1"
.endobj str_SFX_OFF1_PERA_BREAK1_gon_000075d4

# .rodata:0x51 | 0x3819 | size: 0x3
.obj gap_03_00003819_rodata, global
.hidden gap_03_00003819_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003819_rodata

# .rodata:0x54 | 0x381C | size: 0x14
.obj str_SFX_OFF1_PERA_FALL1_gon_000075ec, local
	.string "SFX_OFF1_PERA_FALL1"
.endobj str_SFX_OFF1_PERA_FALL1_gon_000075ec

# .rodata:0x68 | 0x3830 | size: 0x4
.obj str_A_1_gon_00007600, local
	.string "A_1"
.endobj str_A_1_gon_00007600

# .rodata:0x6C | 0x3834 | size: 0xE
.obj str_BGM_STG1_GON1_gon_00007604, local
	.string "BGM_STG1_GON1"
.endobj str_BGM_STG1_GON1_gon_00007604

# .rodata:0x7A | 0x3842 | size: 0x2
.obj gap_03_00003842_rodata, global
.hidden gap_03_00003842_rodata
	.2byte 0x0000
.endobj gap_03_00003842_rodata

# .rodata:0x7C | 0x3844 | size: 0xE
.obj str_ENV_STG1_GON1_gon_00007614, local
	.string "ENV_STG1_GON1"
.endobj str_ENV_STG1_GON1_gon_00007614

# .rodata:0x8A | 0x3852 | size: 0x2
.obj gap_03_00003852_rodata, global
.hidden gap_03_00003852_rodata
	.2byte 0x0000
.endobj gap_03_00003852_rodata

# .rodata:0x8C | 0x3854 | size: 0xE
.obj str_mobj_switch00_gon_00007624, local
	.string "mobj_switch00"
.endobj str_mobj_switch00_gon_00007624
	.4byte 0x00000000
	.2byte 0x0000

# 0x0001E980..0x0001ECC0 | size: 0x340
.data
.balign 8

# .data:0x0 | 0x1E980 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1E988 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1E98C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1E990 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1E994 | size: 0x4
.obj gap_04_0001E994_data, global
.hidden gap_04_0001E994_data
	.4byte 0x00000000
.endobj gap_04_0001E994_data

# .data:0x18 | 0x1E998 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1E9A0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1E9A4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1E9A8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1E9B0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1E9B4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1E9B8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1E9BC | size: 0x4
.obj gap_04_0001E9BC_data, global
.hidden gap_04_0001E9BC_data
	.4byte 0x00000000
.endobj gap_04_0001E9BC_data

# .data:0x40 | 0x1E9C0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1E9C8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1E9CC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1E9D0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_gon_00007598
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gon_07_gon_000075a0
	.4byte str_e_bero_gon_000075a8
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

# .data:0xC8 | 0x1EA48 | size: 0x88
.obj item_get03, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_gon_000075bc
	.4byte 0x0000006C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_gon_000075bc
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_gon_000075bc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_get03

# .data:0x150 | 0x1EAD0 | size: 0x110
.obj switch_evt, local
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_biri_gon_000075c4
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_gon_000075d0
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_gon_000075d0
	.4byte str_OFF_d_biri_gon_000075c4
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gon_000075d0
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_gon_000075d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000025C
	.4byte 0x000001E0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gon_000075d0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000000
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PERA_BREAK1_gon_000075d4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000546
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PERA_FALL1_gon_000075ec
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gon_000075d0
	.4byte str_A_1_gon_00007600
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_gon_000075d0
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_gon_000075d0
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_biri_gon_000075c4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj switch_evt

# .data:0x260 | 0x1EBE0 | size: 0xE0
.obj gon_13_init_evt_8_data_1EBE0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_GON1_gon_00007604
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_GON1_gon_00007614
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0008005B
	.4byte evt_mobj_floatswitch_blue
	.4byte 0x00000000
	.4byte str_mobj_switch00_gon_00007624
	.4byte 0x00000032
	.4byte 0x0000003C
	.4byte 0x00000028
	.4byte switch_evt
	.4byte 0xF840615B
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte item_get03
	.4byte 0xF8406166
	.4byte 0x00020018
	.4byte 0xF840615B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte evt_mobj_hit_onoff
	.4byte str_mobj_box04_gon_000075b0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gon_13_init_evt_8_data_1EBE0
