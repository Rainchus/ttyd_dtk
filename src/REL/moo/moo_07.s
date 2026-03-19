.include "macros.inc"
.file "moo_07.o"

# 0x00000A98..0x00000B20 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0xA98 | size: 0x7
.obj str_w_bero_moo_00003b28, local
	.string "w_bero"
.endobj str_w_bero_moo_00003b28

# .rodata:0x7 | 0xA9F | size: 0x1
.obj gap_03_00000A9F_rodata, global
.hidden gap_03_00000A9F_rodata
	.byte 0x00
.endobj gap_03_00000A9F_rodata

# .rodata:0x8 | 0xAA0 | size: 0x7
.obj str_moo_06_moo_00003b30, local
	.string "moo_06"
.endobj str_moo_06_moo_00003b30

# .rodata:0xF | 0xAA7 | size: 0x1
.obj gap_03_00000AA7_rodata, global
.hidden gap_03_00000AA7_rodata
	.byte 0x00
.endobj gap_03_00000AA7_rodata

# .rodata:0x10 | 0xAA8 | size: 0x7
.obj str_e_bero_moo_00003b38, local
	.string "e_bero"
.endobj str_e_bero_moo_00003b38

# .rodata:0x17 | 0xAAF | size: 0x1
.obj gap_03_00000AAF_rodata, global
.hidden gap_03_00000AAF_rodata
	.byte 0x00
.endobj gap_03_00000AAF_rodata

# .rodata:0x18 | 0xAB0 | size: 0x7
.obj str_moo_00_moo_00003b40, local
	.string "moo_00"
.endobj str_moo_00_moo_00003b40

# .rodata:0x1F | 0xAB7 | size: 0x1
.obj gap_03_00000AB7_rodata, global
.hidden gap_03_00000AB7_rodata
	.byte 0x00
.endobj gap_03_00000AB7_rodata

# .rodata:0x20 | 0xAB8 | size: 0x9
.obj str_S_iwa_07_moo_00003b48, local
	.string "S_iwa_07"
.endobj str_S_iwa_07_moo_00003b48

# .rodata:0x29 | 0xAC1 | size: 0x3
.obj gap_03_00000AC1_rodata, global
.hidden gap_03_00000AC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AC1_rodata

# .rodata:0x2C | 0xAC4 | size: 0x9
.obj str_A_iwa_07_moo_00003b54, local
	.string "A_iwa_07"
.endobj str_A_iwa_07_moo_00003b54

# .rodata:0x35 | 0xACD | size: 0x3
.obj gap_03_00000ACD_rodata, global
.hidden gap_03_00000ACD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ACD_rodata

# .rodata:0x38 | 0xAD0 | size: 0xE
.obj str_BGM_STG7_MON1_moo_00003b60, local
	.string "BGM_STG7_MON1"
.endobj str_BGM_STG7_MON1_moo_00003b60

# .rodata:0x46 | 0xADE | size: 0x2
.obj gap_03_00000ADE_rodata, global
.hidden gap_03_00000ADE_rodata
	.2byte 0x0000
.endobj gap_03_00000ADE_rodata

# .rodata:0x48 | 0xAE0 | size: 0xE
.obj str_ENV_STG7_MOO1_moo_00003b70, local
	.string "ENV_STG7_MOO1"
.endobj str_ENV_STG7_MOO1_moo_00003b70

# .rodata:0x56 | 0xAEE | size: 0x2
.obj gap_03_00000AEE_rodata, global
.hidden gap_03_00000AEE_rodata
	.2byte 0x0000
.endobj gap_03_00000AEE_rodata

# .rodata:0x58 | 0xAF0 | size: 0x8
.obj str_hosi_01_moo_00003b80, local
	.string "hosi_01"
.endobj str_hosi_01_moo_00003b80

# .rodata:0x60 | 0xAF8 | size: 0x8
.obj str_hosi_02_moo_00003b88, local
	.string "hosi_02"
.endobj str_hosi_02_moo_00003b88

# .rodata:0x68 | 0xB00 | size: 0x8
.obj str_hosi_03_moo_00003b90, local
	.string "hosi_03"
.endobj str_hosi_03_moo_00003b90

# .rodata:0x70 | 0xB08 | size: 0xF
.obj str_OFF_d_bom_ver2_moo_00003b98, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_moo_00003b98

# .rodata:0x7F | 0xB17 | size: 0x1
.obj gap_03_00000B17_rodata, global
.hidden gap_03_00000B17_rodata
	.byte 0x00
.endobj gap_03_00000B17_rodata

# .rodata:0x80 | 0xB18 | size: 0x8
.obj str_item_01_moo_00003ba8, local
	.string "item_01"
.endobj str_item_01_moo_00003ba8

# 0x00005420..0x00005678 | size: 0x258
.data
.balign 8

# .data:0x0 | 0x5420 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5428 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x542C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5430 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5434 | size: 0x4
.obj gap_04_00005434_data, global
.hidden gap_04_00005434_data
	.4byte 0x00000000
.endobj gap_04_00005434_data

# .data:0x18 | 0x5438 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5440 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5444 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5448 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5450 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5454 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5458 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x545C | size: 0x4
.obj gap_04_0000545C_data, global
.hidden gap_04_0000545C_data
	.4byte 0x00000000
.endobj gap_04_0000545C_data

# .data:0x40 | 0x5460 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5468 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x546C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5470 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_moo_00003b28
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_06_moo_00003b30
	.4byte str_e_bero_moo_00003b38
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_moo_00003b38
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_00_moo_00003b40
	.4byte str_w_bero_moo_00003b28
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

# .data:0x104 | 0x5524 | size: 0x3C
.obj rock_evt0, local
	.4byte 0x00020032
	.4byte 0xF8406B42
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_iwa_07_moo_00003b48
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_A_iwa_07_moo_00003b54
	.4byte 0x0001005E
	.4byte rock_main_17_data_B0C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_evt0

# .data:0x140 | 0x5560 | size: 0x114
.obj moo_07_init_evt_17_data_5560, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_MON1_moo_00003b60
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_MOO1_moo_00003b70
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_moo_00003b80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_02_moo_00003b88
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_03_moo_00003b90
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_moo_00003b98
	.4byte 0x00020018
	.4byte 0xF8406B42
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_iwa_07_moo_00003b54
	.4byte 0x00000000
	.4byte rock_evt0
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_iwa_07_moo_00003b48
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_iwa_07_moo_00003b54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_moo_00003ba8
	.4byte 0x0000008F
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00000010
	.4byte 0xF8406B47
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj moo_07_init_evt_17_data_5560

# .data:0x254 | 0x5674 | size: 0x4
.obj gap_04_00005674_data, global
.hidden gap_04_00005674_data
	.4byte 0x00000000
.endobj gap_04_00005674_data
