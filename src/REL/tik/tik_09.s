.include "macros.inc"
.file "tik_09.o"

# 0x00002AF8..0x00002B50 | size: 0x58
.rodata
.balign 8

# .rodata:0x0 | 0x2AF8 | size: 0x8
.obj str_dokan_1_tik_0000a960, local
	.string "dokan_1"
.endobj str_dokan_1_tik_0000a960

# .rodata:0x8 | 0x2B00 | size: 0x7
.obj str_tik_10_tik_0000a968, local
	.string "tik_10"
.endobj str_tik_10_tik_0000a968

# .rodata:0xF | 0x2B07 | size: 0x1
.obj gap_03_00002B07_rodata, global
.hidden gap_03_00002B07_rodata
	.byte 0x00
.endobj gap_03_00002B07_rodata

# .rodata:0x10 | 0x2B08 | size: 0x8
.obj str_dokan_2_tik_0000a970, local
	.string "dokan_2"
.endobj str_dokan_2_tik_0000a970

# .rodata:0x18 | 0x2B10 | size: 0x7
.obj str_tik_06_tik_0000a978, local
	.string "tik_06"
.endobj str_tik_06_tik_0000a978

# .rodata:0x1F | 0x2B17 | size: 0x1
.obj gap_03_00002B17_rodata, global
.hidden gap_03_00002B17_rodata
	.byte 0x00
.endobj gap_03_00002B17_rodata

# .rodata:0x20 | 0x2B18 | size: 0xA
.obj str_a_dokan_1_tik_0000a980, local
	.string "a_dokan_1"
.endobj str_a_dokan_1_tik_0000a980

# .rodata:0x2A | 0x2B22 | size: 0x2
.obj gap_03_00002B22_rodata, global
.hidden gap_03_00002B22_rodata
	.2byte 0x0000
.endobj gap_03_00002B22_rodata

# .rodata:0x2C | 0x2B24 | size: 0xA
.obj str_dokan_1_s_tik_0000a98c, local
	.string "dokan_1_s"
.endobj str_dokan_1_s_tik_0000a98c

# .rodata:0x36 | 0x2B2E | size: 0x2
.obj gap_03_00002B2E_rodata, global
.hidden gap_03_00002B2E_rodata
	.2byte 0x0000
.endobj gap_03_00002B2E_rodata

# .rodata:0x38 | 0x2B30 | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000a998, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000a998

# .rodata:0x46 | 0x2B3E | size: 0x2
.obj gap_03_00002B3E_rodata, global
.hidden gap_03_00002B3E_rodata
	.2byte 0x0000
.endobj gap_03_00002B3E_rodata

# .rodata:0x48 | 0x2B40 | size: 0xE
.obj str_ENV_STG0_TIK1_tik_0000a9a8, local
	.string "ENV_STG0_TIK1"
.endobj str_ENV_STG0_TIK1_tik_0000a9a8

# .rodata:0x56 | 0x2B4E | size: 0x2
.obj gap_03_00002B4E_rodata, global
.hidden gap_03_00002B4E_rodata
	.2byte 0x0000
.endobj gap_03_00002B4E_rodata

# 0x00013210..0x00013470 | size: 0x260
.data
.balign 8

# .data:0x0 | 0x13210 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13218 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1321C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13220 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x13224 | size: 0x4
.obj gap_04_00013224_data, global
.hidden gap_04_00013224_data
	.4byte 0x00000000
.endobj gap_04_00013224_data

# .data:0x18 | 0x13228 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13230 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x13234 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13238 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13240 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x13244 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13248 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1324C | size: 0x4
.obj gap_04_0001324C_data, global
.hidden gap_04_0001324C_data
	.4byte 0x00000000
.endobj gap_04_0001324C_data

# .data:0x40 | 0x13250 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x13258 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1325C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x13260 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_dokan_1_tik_0000a960
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_10_tik_0000a968
	.4byte str_dokan_2_tik_0000a970
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_tik_0000a970
	.4byte 0x00020000
	.4byte 0x00000008
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_tik_06_tik_0000a978
	.4byte str_dokan_1_tik_0000a960
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

# .data:0x104 | 0x13314 | size: 0xCC
.obj evt_tik09_dokan, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_dokan_1_tik_0000a980
	.4byte str_dokan_1_s_tik_0000a98c
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_dokan_1_s_tik_0000a98c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dokan_1_tik_0000a980
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_dokan_1_s_tik_0000a98c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dokan_1_tik_0000a980
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_dokan_1_s_tik_0000a98c
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dokan_1_tik_0000a980
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_tik09_dokan

# .data:0x1D0 | 0x133E0 | size: 0x90
.obj tik_09_init_evt_24_data_133E0, global
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_dokan_1_tik_0000a980
	.4byte str_dokan_1_s_tik_0000a98c
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_dokan_1_s_tik_0000a98c
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_dokan_1_tik_0000a980
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000a998
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK1_tik_0000a9a8
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
	.4byte 0x0001005C
	.4byte evt_tik09_dokan
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_09_init_evt_24_data_133E0
