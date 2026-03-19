.include "macros.inc"
.file "hom_12.o"

# 0x000008E0..0x0000094F | size: 0x6F
.rodata
.balign 8

# .rodata:0x0 | 0x8E0 | size: 0xE
.obj str_ENV_STG6_RSH2_hom_000010d8, local
	.string "ENV_STG6_RSH2"
.endobj str_ENV_STG6_RSH2_hom_000010d8

# .rodata:0xE | 0x8EE | size: 0x2
.obj gap_03_000008EE_rodata, global
.hidden gap_03_000008EE_rodata
	.2byte 0x0000
.endobj gap_03_000008EE_rodata

# .rodata:0x10 | 0x8F0 | size: 0x8
.obj str_renketu_hom_000010e8, local
	.string "renketu"
.endobj str_renketu_hom_000010e8

# .rodata:0x18 | 0x8F8 | size: 0xA
.obj str_renketu_1_hom_000010f0, local
	.string "renketu_1"
.endobj str_renketu_1_hom_000010f0

# .rodata:0x22 | 0x902 | size: 0x2
.obj gap_03_00000902_rodata, global
.hidden gap_03_00000902_rodata
	.2byte 0x0000
.endobj gap_03_00000902_rodata

# .rodata:0x24 | 0x904 | size: 0xA
.obj str_renketu_2_hom_000010fc, local
	.string "renketu_2"
.endobj str_renketu_2_hom_000010fc

# .rodata:0x2E | 0x90E | size: 0x2
.obj gap_03_0000090E_rodata, global
.hidden gap_03_0000090E_rodata
	.2byte 0x0000
.endobj gap_03_0000090E_rodata

# .rodata:0x30 | 0x910 | size: 0xA
.obj str_renketu_3_hom_00001108, local
	.string "renketu_3"
.endobj str_renketu_3_hom_00001108

# .rodata:0x3A | 0x91A | size: 0x2
.obj gap_03_0000091A_rodata, global
.hidden gap_03_0000091A_rodata
	.2byte 0x0000
.endobj gap_03_0000091A_rodata

# .rodata:0x3C | 0x91C | size: 0xA
.obj str_renketu_4_hom_00001114, local
	.string "renketu_4"
.endobj str_renketu_4_hom_00001114

# .rodata:0x46 | 0x926 | size: 0x2
.obj gap_03_00000926_rodata, global
.hidden gap_03_00000926_rodata
	.2byte 0x0000
.endobj gap_03_00000926_rodata

# .rodata:0x48 | 0x928 | size: 0xA
.obj str_renketu_5_hom_00001120, local
	.string "renketu_5"
.endobj str_renketu_5_hom_00001120

# .rodata:0x52 | 0x932 | size: 0x2
.obj gap_03_00000932_rodata, global
.hidden gap_03_00000932_rodata
	.2byte 0x0000
.endobj gap_03_00000932_rodata

# .rodata:0x54 | 0x934 | size: 0x6
.obj str_train_hom_0000112c, local
	.string "train"
.endobj str_train_hom_0000112c

# .rodata:0x5A | 0x93A | size: 0x2
.obj gap_03_0000093A_rodata, global
.hidden gap_03_0000093A_rodata
	.2byte 0x0000
.endobj gap_03_0000093A_rodata

# .rodata:0x5C | 0x93C | size: 0x9
.obj str_rsh_02_a_hom_00001134, local
	.string "rsh_02_a"
.endobj str_rsh_02_a_hom_00001134

# .rodata:0x65 | 0x945 | size: 0x3
.obj gap_03_00000945_rodata, global
.hidden gap_03_00000945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000945_rodata

# .rodata:0x68 | 0x948 | size: 0x7
.obj str_nidome_hom_00001140, local
	.string "nidome"
.endobj str_nidome_hom_00001140

# 0x00003E38..0x000040B8 | size: 0x280
.data
.balign 8

# .data:0x0 | 0x3E38 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3E40 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3E44 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3E48 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3E4C | size: 0x4
.obj gap_04_00003E4C_data, global
.hidden gap_04_00003E4C_data
	.4byte 0x00000000
.endobj gap_04_00003E4C_data

# .data:0x18 | 0x3E50 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3E58 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3E5C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3E60 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3E68 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3E6C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3E70 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3E74 | size: 0x4
.obj gap_04_00003E74_data, global
.hidden gap_04_00003E74_data
	.4byte 0x00000000
.endobj gap_04_00003E74_data

# .data:0x40 | 0x3E78 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3E80 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3E84 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3E88 | size: 0x230
.obj hom_12_init_evt_12_data_3E88, global
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_RSH2_hom_000010d8
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right_12_data_3888
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start3_12_data_3250
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFE0C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_hom_000010e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_1_hom_000010f0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_2_hom_000010fc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_3_hom_00001108
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_4_hom_00001114
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_5_hom_00001120
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left_12_data_3914
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start4_12_data_327C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_hom_0000112c
	.4byte 0xFFFFFA24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C80
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C81
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C81
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00001F40
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_hom_00001134
	.4byte str_nidome_hom_00001140
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_12_init_evt_12_data_3E88
