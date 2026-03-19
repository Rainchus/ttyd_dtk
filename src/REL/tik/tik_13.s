.include "macros.inc"
.file "tik_13.o"

# 0x00002BD0..0x00002C40 | size: 0x70
.rodata
.balign 8

# .rodata:0x0 | 0x2BD0 | size: 0x7
.obj str_e_bero_tik_0000aa38, local
	.string "e_bero"
.endobj str_e_bero_tik_0000aa38

# .rodata:0x7 | 0x2BD7 | size: 0x1
.obj gap_03_00002BD7_rodata, global
.hidden gap_03_00002BD7_rodata
	.byte 0x00
.endobj gap_03_00002BD7_rodata

# .rodata:0x8 | 0x2BD8 | size: 0x7
.obj str_tik_02_tik_0000aa40, local
	.string "tik_02"
.endobj str_tik_02_tik_0000aa40

# .rodata:0xF | 0x2BDF | size: 0x1
.obj gap_03_00002BDF_rodata, global
.hidden gap_03_00002BDF_rodata
	.byte 0x00
.endobj gap_03_00002BDF_rodata

# .rodata:0x10 | 0x2BE0 | size: 0x7
.obj str_w_bero_tik_0000aa48, local
	.string "w_bero"
.endobj str_w_bero_tik_0000aa48

# .rodata:0x17 | 0x2BE7 | size: 0x1
.obj gap_03_00002BE7_rodata, global
.hidden gap_03_00002BE7_rodata
	.byte 0x00
.endobj gap_03_00002BE7_rodata

# .rodata:0x18 | 0x2BE8 | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000aa50, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000aa50

# .rodata:0x26 | 0x2BF6 | size: 0x2
.obj gap_03_00002BF6_rodata, global
.hidden gap_03_00002BF6_rodata
	.2byte 0x0000
.endobj gap_03_00002BF6_rodata

# .rodata:0x28 | 0x2BF8 | size: 0xE
.obj str_ENV_STG0_TIK6_tik_0000aa60, local
	.string "ENV_STG0_TIK6"
.endobj str_ENV_STG0_TIK6_tik_0000aa60

# .rodata:0x36 | 0x2C06 | size: 0x2
.obj gap_03_00002C06_rodata, global
.hidden gap_03_00002C06_rodata
	.2byte 0x0000
.endobj gap_03_00002C06_rodata

# .rodata:0x38 | 0x2C08 | size: 0x9
.obj str_anm_mizu_tik_0000aa70, local
	.string "anm_mizu"
.endobj str_anm_mizu_tik_0000aa70

# .rodata:0x41 | 0x2C11 | size: 0x3
.obj gap_03_00002C11_rodata, global
.hidden gap_03_00002C11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C11_rodata

# .rodata:0x44 | 0x2C14 | size: 0x7
.obj str_Tshatu_tik_0000aa7c, local
	.string "Tshatu"
.endobj str_Tshatu_tik_0000aa7c

# .rodata:0x4B | 0x2C1B | size: 0x1
.obj gap_03_00002C1B_rodata, global
.hidden gap_03_00002C1B_rodata
	.byte 0x00
.endobj gap_03_00002C1B_rodata

# .rodata:0x4C | 0x2C1C | size: 0x18
.obj str_SFX_STG0_AMB_WATERDR_tik_0000aa84, local
	.string "SFX_STG0_AMB_WATERDROP2"
.endobj str_SFX_STG0_AMB_WATERDR_tik_0000aa84

# .rodata:0x64 | 0x2C34 | size: 0x8
.obj str_item_00_tik_0000aa9c, local
	.string "item_00"
.endobj str_item_00_tik_0000aa9c

# .rodata:0x6C | 0x2C3C | size: 0x4
.obj gap_03_00002C3C_rodata, global
.hidden gap_03_00002C3C_rodata
	.4byte 0x00000000
.endobj gap_03_00002C3C_rodata

# 0x000136E8..0x000138A0 | size: 0x1B8
.data
.balign 8

# .data:0x0 | 0x136E8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x136F0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x136F4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x136F8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x136FC | size: 0x4
.obj gap_04_000136FC_data, global
.hidden gap_04_000136FC_data
	.4byte 0x00000000
.endobj gap_04_000136FC_data

# .data:0x18 | 0x13700 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13708 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1370C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13710 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13718 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1371C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13720 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x13724 | size: 0x4
.obj gap_04_00013724_data, global
.hidden gap_04_00013724_data
	.4byte 0x00000000
.endobj gap_04_00013724_data

# .data:0x40 | 0x13728 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x13730 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x13734 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x13738 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_tik_0000aa38
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tik_02_tik_0000aa40
	.4byte str_w_bero_tik_0000aa48
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

# .data:0xC8 | 0x137B0 | size: 0xF0
.obj tik_13_init_evt_24_data_137B0, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000aa50
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK6_tik_0000aa60
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
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mizu_tik_0000aa70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_mizu_tik_0000aa70
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_Tshatu_tik_0000aa7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG0_AMB_WATERDR_tik_0000aa84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_tik_0000aa9c
	.4byte 0x0000007D
	.4byte 0xFFFFFFE2
	.4byte 0x00000034
	.4byte 0xFFFFFFBA
	.4byte 0x00000010
	.4byte 0xF840715C
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_13_init_evt_24_data_137B0
