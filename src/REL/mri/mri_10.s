.include "macros.inc"
.file "mri_10.o"

# 0x00003E40..0x00003ED0 | size: 0x90
.rodata
.balign 8

# .rodata:0x0 | 0x3E40 | size: 0x7
.obj str_s_bero_mri_000244e0, local
	.string "s_bero"
.endobj str_s_bero_mri_000244e0

# .rodata:0x7 | 0x3E47 | size: 0x1
.obj gap_03_00003E47_rodata, global
.hidden gap_03_00003E47_rodata
	.byte 0x00
.endobj gap_03_00003E47_rodata

# .rodata:0x8 | 0x3E48 | size: 0x7
.obj str_mri_09_mri_000244e8, local
	.string "mri_09"
.endobj str_mri_09_mri_000244e8

# .rodata:0xF | 0x3E4F | size: 0x1
.obj gap_03_00003E4F_rodata, global
.hidden gap_03_00003E4F_rodata
	.byte 0x00
.endobj gap_03_00003E4F_rodata

# .rodata:0x10 | 0x3E50 | size: 0x7
.obj str_n_bero_mri_000244f0, local
	.string "n_bero"
.endobj str_n_bero_mri_000244f0

# .rodata:0x17 | 0x3E57 | size: 0x1
.obj gap_03_00003E57_rodata, global
.hidden gap_03_00003E57_rodata
	.byte 0x00
.endobj gap_03_00003E57_rodata

# .rodata:0x18 | 0x3E58 | size: 0xB
.obj str_mobj_box00_mri_000244f8, local
	.string "mobj_box00"
.endobj str_mobj_box00_mri_000244f8

# .rodata:0x23 | 0x3E63 | size: 0x1
.obj gap_03_00003E63_rodata, global
.hidden gap_03_00003E63_rodata
	.byte 0x00
.endobj gap_03_00003E63_rodata

# .rodata:0x24 | 0x3E64 | size: 0x7
.obj str_item00_mri_00024504, local
	.string "item00"
.endobj str_item00_mri_00024504

# .rodata:0x2B | 0x3E6B | size: 0x1
.obj gap_03_00003E6B_rodata, global
.hidden gap_03_00003E6B_rodata
	.byte 0x00
.endobj gap_03_00003E6B_rodata

# .rodata:0x2C | 0x3E6C | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_0002450c, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_0002450c

# .rodata:0x3C | 0x3E7C | size: 0xE
.obj str_ENV_STG2_MRI9_mri_0002451c, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_0002451c

# .rodata:0x4A | 0x3E8A | size: 0x2
.obj gap_03_00003E8A_rodata, global
.hidden gap_03_00003E8A_rodata
	.2byte 0x0000
.endobj gap_03_00003E8A_rodata

# .rodata:0x4C | 0x3E8C | size: 0xE
.obj str_BGM_STG2_MRI1_mri_0002452c, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_0002452c

# .rodata:0x5A | 0x3E9A | size: 0x2
.obj gap_03_00003E9A_rodata, global
.hidden gap_03_00003E9A_rodata
	.2byte 0x0000
.endobj gap_03_00003E9A_rodata

# .rodata:0x5C | 0x3E9C | size: 0xE
.obj str_ENV_STG2_MRI1_mri_0002453c, local
	.string "ENV_STG2_MRI1"
.endobj str_ENV_STG2_MRI1_mri_0002453c

# .rodata:0x6A | 0x3EAA | size: 0x2
.obj gap_03_00003EAA_rodata, global
.hidden gap_03_00003EAA_rodata
	.2byte 0x0000
.endobj gap_03_00003EAA_rodata

# .rodata:0x6C | 0x3EAC | size: 0x8
.obj str_mizu_01_mri_0002454c, local
	.string "mizu_01"
.endobj str_mizu_01_mri_0002454c

# .rodata:0x74 | 0x3EB4 | size: 0x8
.obj str_mizu_02_mri_00024554, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00024554

# .rodata:0x7C | 0x3EBC | size: 0x7
.obj str_awa_01_mri_0002455c, local
	.string "awa_01"
.endobj str_awa_01_mri_0002455c

# .rodata:0x83 | 0x3EC3 | size: 0x1
.obj gap_03_00003EC3_rodata, global
.hidden gap_03_00003EC3_rodata
	.byte 0x00
.endobj gap_03_00003EC3_rodata

# .rodata:0x84 | 0x3EC4 | size: 0x7
.obj str_awa_02_mri_00024564, local
	.string "awa_02"
.endobj str_awa_02_mri_00024564

# .rodata:0x8B | 0x3ECB | size: 0x5
.obj gap_03_00003ECB_rodata, global
.hidden gap_03_00003ECB_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00003ECB_rodata

# 0x0001C320..0x0001C688 | size: 0x368
.data
.balign 8

# .data:0x0 | 0x1C320 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1C328 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1C32C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1C330 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1C334 | size: 0x4
.obj gap_04_0001C334_data, global
.hidden gap_04_0001C334_data
	.4byte 0x00000000
.endobj gap_04_0001C334_data

# .data:0x18 | 0x1C338 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1C340 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1C344 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1C348 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1C350 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1C354 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1C358 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1C35C | size: 0x4
.obj gap_04_0001C35C_data, global
.hidden gap_04_0001C35C_data
	.4byte 0x00000000
.endobj gap_04_0001C35C_data

# .data:0x40 | 0x1C360 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1C368 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1C36C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1C370 | size: 0x78
.obj bero_entry_data, local
	.4byte str_s_bero_mri_000244e0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_09_mri_000244e8
	.4byte str_n_bero_mri_000244f0
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

# .data:0xC8 | 0x1C3E8 | size: 0x110
.obj item_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_puninum_onoff_18_text_1A88C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_mri_000244f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte lect_juyoitem_rel_set
	.4byte all_juyoitem_lecture_rel_18_data_3A680
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_00024504
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_mri_000244f8
	.4byte 0x0002005B
	.4byte evt_item_get_important_item
	.4byte str_item00_mri_00024504
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_mri_00024504
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_item00_mri_00024504
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000069
	.4byte 0x0002005B
	.4byte evt_puni_puninum_onoff_18_text_1A88C
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj item_evt

# .data:0x1D8 | 0x1C4F8 | size: 0x190
.obj mri_10_init_evt_18_data_1C4F8, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0x0000006E
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_0002450c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_0002451c
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_0002452c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI1_mri_0002453c
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_0002454c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00024554
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_0002455c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_00024564
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box00_mri_000244f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte item_evt
	.4byte 0xF84066A6
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_10_init_evt_18_data_1C4F8
