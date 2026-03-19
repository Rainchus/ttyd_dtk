.include "macros.inc"
.file "moo_01.o"

# 0x00000220..0x000002C0 | size: 0xA0
.rodata
.balign 8

# .rodata:0x0 | 0x220 | size: 0x7
.obj str_w_bero_moo_000032b0, local
	.string "w_bero"
.endobj str_w_bero_moo_000032b0

# .rodata:0x7 | 0x227 | size: 0x1
.obj gap_03_00000227_rodata, global
.hidden gap_03_00000227_rodata
	.byte 0x00
.endobj gap_03_00000227_rodata

# .rodata:0x8 | 0x228 | size: 0x7
.obj str_moo_00_moo_000032b8, local
	.string "moo_00"
.endobj str_moo_00_moo_000032b8

# .rodata:0xF | 0x22F | size: 0x1
.obj gap_03_0000022F_rodata, global
.hidden gap_03_0000022F_rodata
	.byte 0x00
.endobj gap_03_0000022F_rodata

# .rodata:0x10 | 0x230 | size: 0x7
.obj str_e_bero_moo_000032c0, local
	.string "e_bero"
.endobj str_e_bero_moo_000032c0

# .rodata:0x17 | 0x237 | size: 0x1
.obj gap_03_00000237_rodata, global
.hidden gap_03_00000237_rodata
	.byte 0x00
.endobj gap_03_00000237_rodata

# .rodata:0x18 | 0x238 | size: 0x7
.obj str_moo_05_moo_000032c8, local
	.string "moo_05"
.endobj str_moo_05_moo_000032c8

# .rodata:0x1F | 0x23F | size: 0x1
.obj gap_03_0000023F_rodata, global
.hidden gap_03_0000023F_rodata
	.byte 0x00
.endobj gap_03_0000023F_rodata

# .rodata:0x20 | 0x240 | size: 0x9
.obj str_S_iwa_01_moo_000032d0, local
	.string "S_iwa_01"
.endobj str_S_iwa_01_moo_000032d0

# .rodata:0x29 | 0x249 | size: 0x3
.obj gap_03_00000249_rodata, global
.hidden gap_03_00000249_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000249_rodata

# .rodata:0x2C | 0x24C | size: 0x9
.obj str_A_iwa_01_moo_000032dc, local
	.string "A_iwa_01"
.endobj str_A_iwa_01_moo_000032dc

# .rodata:0x35 | 0x255 | size: 0x3
.obj gap_03_00000255_rodata, global
.hidden gap_03_00000255_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000255_rodata

# .rodata:0x38 | 0x258 | size: 0x9
.obj str_S_iwa_08_moo_000032e8, local
	.string "S_iwa_08"
.endobj str_S_iwa_08_moo_000032e8

# .rodata:0x41 | 0x261 | size: 0x3
.obj gap_03_00000261_rodata, global
.hidden gap_03_00000261_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000261_rodata

# .rodata:0x44 | 0x264 | size: 0x9
.obj str_A_iwa_08_moo_000032f4, local
	.string "A_iwa_08"
.endobj str_A_iwa_08_moo_000032f4

# .rodata:0x4D | 0x26D | size: 0x3
.obj gap_03_0000026D_rodata, global
.hidden gap_03_0000026D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000026D_rodata

# .rodata:0x50 | 0x270 | size: 0xE
.obj str_BGM_STG7_MON1_moo_00003300, local
	.string "BGM_STG7_MON1"
.endobj str_BGM_STG7_MON1_moo_00003300

# .rodata:0x5E | 0x27E | size: 0x2
.obj gap_03_0000027E_rodata, global
.hidden gap_03_0000027E_rodata
	.2byte 0x0000
.endobj gap_03_0000027E_rodata

# .rodata:0x60 | 0x280 | size: 0xE
.obj str_ENV_STG7_MOO1_moo_00003310, local
	.string "ENV_STG7_MOO1"
.endobj str_ENV_STG7_MOO1_moo_00003310

# .rodata:0x6E | 0x28E | size: 0x2
.obj gap_03_0000028E_rodata, global
.hidden gap_03_0000028E_rodata
	.2byte 0x0000
.endobj gap_03_0000028E_rodata

# .rodata:0x70 | 0x290 | size: 0x8
.obj str_hosi_01_moo_00003320, local
	.string "hosi_01"
.endobj str_hosi_01_moo_00003320

# .rodata:0x78 | 0x298 | size: 0x8
.obj str_hosi_02_moo_00003328, local
	.string "hosi_02"
.endobj str_hosi_02_moo_00003328

# .rodata:0x80 | 0x2A0 | size: 0x8
.obj str_hosi_03_moo_00003330, local
	.string "hosi_03"
.endobj str_hosi_03_moo_00003330

# .rodata:0x88 | 0x2A8 | size: 0xF
.obj str_OFF_d_bom_ver2_moo_00003338, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_moo_00003338

# .rodata:0x97 | 0x2B7 | size: 0x1
.obj gap_03_000002B7_rodata, global
.hidden gap_03_000002B7_rodata
	.byte 0x00
.endobj gap_03_000002B7_rodata

# .rodata:0x98 | 0x2B8 | size: 0x8
.obj str_item_01_moo_00003348, local
	.string "item_01"
.endobj str_item_01_moo_00003348

# 0x00000F40..0x00001230 | size: 0x2F0
.data
.balign 8

# .data:0x0 | 0xF40 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xF48 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xF4C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xF50 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xF54 | size: 0x4
.obj gap_04_00000F54_data, global
.hidden gap_04_00000F54_data
	.4byte 0x00000000
.endobj gap_04_00000F54_data

# .data:0x18 | 0xF58 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xF60 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xF64 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xF68 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xF70 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xF74 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xF78 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xF7C | size: 0x4
.obj gap_04_00000F7C_data, global
.hidden gap_04_00000F7C_data
	.4byte 0x00000000
.endobj gap_04_00000F7C_data

# .data:0x40 | 0xF80 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xF88 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xF8C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xF90 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_moo_000032b0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_00_moo_000032b8
	.4byte str_e_bero_moo_000032c0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_moo_000032c0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_05_moo_000032c8
	.4byte str_w_bero_moo_000032b0
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

# .data:0x104 | 0x1044 | size: 0x3C
.obj rock_evt0, local
	.4byte 0x00020032
	.4byte 0xF8406B3B
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_iwa_01_moo_000032d0
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_A_iwa_01_moo_000032dc
	.4byte 0x0001005E
	.4byte rock_main_17_data_B0C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_evt0

# .data:0x140 | 0x1080 | size: 0x3C
.obj rock_evt1, local
	.4byte 0x00020032
	.4byte 0xF8406B3C
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_iwa_08_moo_000032e8
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_A_iwa_08_moo_000032f4
	.4byte 0x0001005E
	.4byte rock_main_17_data_B0C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_evt1

# .data:0x17C | 0x10BC | size: 0x174
.obj moo_01_init_evt_17_data_10BC, global
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
	.4byte str_BGM_STG7_MON1_moo_00003300
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_MOO1_moo_00003310
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_moo_00003320
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_02_moo_00003328
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_03_moo_00003330
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_moo_00003338
	.4byte 0x00020018
	.4byte 0xF8406B3B
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_iwa_01_moo_000032dc
	.4byte 0x00000000
	.4byte rock_evt0
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_iwa_01_moo_000032d0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_iwa_01_moo_000032dc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406B3C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_iwa_08_moo_000032f4
	.4byte 0x00000000
	.4byte rock_evt1
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_iwa_08_moo_000032e8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_iwa_08_moo_000032f4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_moo_00003348
	.4byte 0x00000087
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000010
	.4byte 0xF8406B44
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj moo_01_init_evt_17_data_10BC
