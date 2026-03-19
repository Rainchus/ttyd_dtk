.include "macros.inc"
.file "hom_11.o"

# 0x00000870..0x000008E0 | size: 0x70
.rodata
.balign 8

# .rodata:0x0 | 0x870 | size: 0xE
.obj str_ENV_STG6_RSH2_hom_00001068, local
	.string "ENV_STG6_RSH2"
.endobj str_ENV_STG6_RSH2_hom_00001068

# .rodata:0xE | 0x87E | size: 0x2
.obj gap_03_0000087E_rodata, global
.hidden gap_03_0000087E_rodata
	.2byte 0x0000
.endobj gap_03_0000087E_rodata

# .rodata:0x10 | 0x880 | size: 0x8
.obj str_renketu_hom_00001078, local
	.string "renketu"
.endobj str_renketu_hom_00001078

# .rodata:0x18 | 0x888 | size: 0xA
.obj str_renketu_1_hom_00001080, local
	.string "renketu_1"
.endobj str_renketu_1_hom_00001080

# .rodata:0x22 | 0x892 | size: 0x2
.obj gap_03_00000892_rodata, global
.hidden gap_03_00000892_rodata
	.2byte 0x0000
.endobj gap_03_00000892_rodata

# .rodata:0x24 | 0x894 | size: 0xA
.obj str_renketu_2_hom_0000108c, local
	.string "renketu_2"
.endobj str_renketu_2_hom_0000108c

# .rodata:0x2E | 0x89E | size: 0x2
.obj gap_03_0000089E_rodata, global
.hidden gap_03_0000089E_rodata
	.2byte 0x0000
.endobj gap_03_0000089E_rodata

# .rodata:0x30 | 0x8A0 | size: 0xA
.obj str_renketu_3_hom_00001098, local
	.string "renketu_3"
.endobj str_renketu_3_hom_00001098

# .rodata:0x3A | 0x8AA | size: 0x2
.obj gap_03_000008AA_rodata, global
.hidden gap_03_000008AA_rodata
	.2byte 0x0000
.endobj gap_03_000008AA_rodata

# .rodata:0x3C | 0x8AC | size: 0xA
.obj str_renketu_4_hom_000010a4, local
	.string "renketu_4"
.endobj str_renketu_4_hom_000010a4

# .rodata:0x46 | 0x8B6 | size: 0x2
.obj gap_03_000008B6_rodata, global
.hidden gap_03_000008B6_rodata
	.2byte 0x0000
.endobj gap_03_000008B6_rodata

# .rodata:0x48 | 0x8B8 | size: 0xA
.obj str_renketu_5_hom_000010b0, local
	.string "renketu_5"
.endobj str_renketu_5_hom_000010b0

# .rodata:0x52 | 0x8C2 | size: 0x2
.obj gap_03_000008C2_rodata, global
.hidden gap_03_000008C2_rodata
	.2byte 0x0000
.endobj gap_03_000008C2_rodata

# .rodata:0x54 | 0x8C4 | size: 0x6
.obj str_train_hom_000010bc, local
	.string "train"
.endobj str_train_hom_000010bc

# .rodata:0x5A | 0x8CA | size: 0x2
.obj gap_03_000008CA_rodata, global
.hidden gap_03_000008CA_rodata
	.2byte 0x0000
.endobj gap_03_000008CA_rodata

# .rodata:0x5C | 0x8CC | size: 0x9
.obj str_rsh_02_b_hom_000010c4, local
	.string "rsh_02_b"
.endobj str_rsh_02_b_hom_000010c4

# .rodata:0x65 | 0x8D5 | size: 0x3
.obj gap_03_000008D5_rodata, global
.hidden gap_03_000008D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008D5_rodata

# .rodata:0x68 | 0x8D8 | size: 0x7
.obj str_nidome_hom_000010d0, local
	.string "nidome"
.endobj str_nidome_hom_000010d0

# .rodata:0x6F | 0x8DF | size: 0x1
.obj gap_03_000008DF_rodata, global
.hidden gap_03_000008DF_rodata
	.byte 0x00
.endobj gap_03_000008DF_rodata

# 0x00003BB8..0x00003E38 | size: 0x280
.data
.balign 8

# .data:0x0 | 0x3BB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x3BC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3BC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x3BC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3BCC | size: 0x4
.obj gap_04_00003BCC_data, global
.hidden gap_04_00003BCC_data
	.4byte 0x00000000
.endobj gap_04_00003BCC_data

# .data:0x18 | 0x3BD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x3BD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3BDC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x3BE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x3BE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3BEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3BF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3BF4 | size: 0x4
.obj gap_04_00003BF4_data, global
.hidden gap_04_00003BF4_data
	.4byte 0x00000000
.endobj gap_04_00003BF4_data

# .data:0x40 | 0x3BF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3C00 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3C04 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3C08 | size: 0x230
.obj hom_11_init_evt_12_data_3C08, global
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_RSH2_hom_00001068
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
	.4byte str_renketu_hom_00001078
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_1_hom_00001080
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_2_hom_0000108c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_3_hom_00001098
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_4_hom_000010a4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_5_hom_000010b0
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
	.4byte str_train_hom_000010bc
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
	.4byte str_rsh_02_b_hom_000010c4
	.4byte str_nidome_hom_000010d0
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_11_init_evt_12_data_3C08
