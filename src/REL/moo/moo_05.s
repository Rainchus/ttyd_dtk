.include "macros.inc"
.file "moo_05.o"

# 0x00000978..0x000009F8 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x978 | size: 0x7
.obj str_w_bero_moo_00003a08, local
	.string "w_bero"
.endobj str_w_bero_moo_00003a08

# .rodata:0x7 | 0x97F | size: 0x1
.obj gap_03_0000097F_rodata, global
.hidden gap_03_0000097F_rodata
	.byte 0x00
.endobj gap_03_0000097F_rodata

# .rodata:0x8 | 0x980 | size: 0x7
.obj str_moo_01_moo_00003a10, local
	.string "moo_01"
.endobj str_moo_01_moo_00003a10

# .rodata:0xF | 0x987 | size: 0x1
.obj gap_03_00000987_rodata, global
.hidden gap_03_00000987_rodata
	.byte 0x00
.endobj gap_03_00000987_rodata

# .rodata:0x10 | 0x988 | size: 0x7
.obj str_e_bero_moo_00003a18, local
	.string "e_bero"
.endobj str_e_bero_moo_00003a18

# .rodata:0x17 | 0x98F | size: 0x1
.obj gap_03_0000098F_rodata, global
.hidden gap_03_0000098F_rodata
	.byte 0x00
.endobj gap_03_0000098F_rodata

# .rodata:0x18 | 0x990 | size: 0x7
.obj str_moo_02_moo_00003a20, local
	.string "moo_02"
.endobj str_moo_02_moo_00003a20

# .rodata:0x1F | 0x997 | size: 0x1
.obj gap_03_00000997_rodata, global
.hidden gap_03_00000997_rodata
	.byte 0x00
.endobj gap_03_00000997_rodata

# .rodata:0x20 | 0x998 | size: 0x9
.obj str_S_iwa_07_moo_00003a28, local
	.string "S_iwa_07"
.endobj str_S_iwa_07_moo_00003a28

# .rodata:0x29 | 0x9A1 | size: 0x3
.obj gap_03_000009A1_rodata, global
.hidden gap_03_000009A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009A1_rodata

# .rodata:0x2C | 0x9A4 | size: 0x9
.obj str_A_iwa_07_moo_00003a34, local
	.string "A_iwa_07"
.endobj str_A_iwa_07_moo_00003a34

# .rodata:0x35 | 0x9AD | size: 0x3
.obj gap_03_000009AD_rodata, global
.hidden gap_03_000009AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009AD_rodata

# .rodata:0x38 | 0x9B0 | size: 0xE
.obj str_BGM_STG7_MON1_moo_00003a40, local
	.string "BGM_STG7_MON1"
.endobj str_BGM_STG7_MON1_moo_00003a40

# .rodata:0x46 | 0x9BE | size: 0x2
.obj gap_03_000009BE_rodata, global
.hidden gap_03_000009BE_rodata
	.2byte 0x0000
.endobj gap_03_000009BE_rodata

# .rodata:0x48 | 0x9C0 | size: 0xE
.obj str_ENV_STG7_MOO1_moo_00003a50, local
	.string "ENV_STG7_MOO1"
.endobj str_ENV_STG7_MOO1_moo_00003a50

# .rodata:0x56 | 0x9CE | size: 0x2
.obj gap_03_000009CE_rodata, global
.hidden gap_03_000009CE_rodata
	.2byte 0x0000
.endobj gap_03_000009CE_rodata

# .rodata:0x58 | 0x9D0 | size: 0x8
.obj str_hosi_01_moo_00003a60, local
	.string "hosi_01"
.endobj str_hosi_01_moo_00003a60

# .rodata:0x60 | 0x9D8 | size: 0x8
.obj str_hosi_02_moo_00003a68, local
	.string "hosi_02"
.endobj str_hosi_02_moo_00003a68

# .rodata:0x68 | 0x9E0 | size: 0x8
.obj str_hosi_03_moo_00003a70, local
	.string "hosi_03"
.endobj str_hosi_03_moo_00003a70

# .rodata:0x70 | 0x9E8 | size: 0xF
.obj str_OFF_d_bom_ver2_moo_00003a78, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_moo_00003a78

# .rodata:0x7F | 0x9F7 | size: 0x1
.obj gap_03_000009F7_rodata, global
.hidden gap_03_000009F7_rodata
	.byte 0x00
.endobj gap_03_000009F7_rodata

# 0x00004F00..0x00005130 | size: 0x230
.data
.balign 8

# .data:0x0 | 0x4F00 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4F08 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4F0C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4F10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4F14 | size: 0x4
.obj gap_04_00004F14_data, global
.hidden gap_04_00004F14_data
	.4byte 0x00000000
.endobj gap_04_00004F14_data

# .data:0x18 | 0x4F18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4F20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4F24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4F28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4F30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4F34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4F38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4F3C | size: 0x4
.obj gap_04_00004F3C_data, global
.hidden gap_04_00004F3C_data
	.4byte 0x00000000
.endobj gap_04_00004F3C_data

# .data:0x40 | 0x4F40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4F48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4F4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4F50 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_moo_00003a08
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_01_moo_00003a10
	.4byte str_e_bero_moo_00003a18
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_moo_00003a18
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_moo_02_moo_00003a20
	.4byte str_w_bero_moo_00003a08
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

# .data:0x104 | 0x5004 | size: 0x3C
.obj rock_evt0, local
	.4byte 0x00020032
	.4byte 0xF8406B3F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_S_iwa_07_moo_00003a28
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_A_iwa_07_moo_00003a34
	.4byte 0x0001005E
	.4byte rock_main_17_data_B0C
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rock_evt0

# .data:0x140 | 0x5040 | size: 0xEC
.obj moo_05_init_evt_17_data_5040, global
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
	.4byte str_BGM_STG7_MON1_moo_00003a40
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_MOO1_moo_00003a50
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_01_moo_00003a60
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_02_moo_00003a68
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hosi_03_moo_00003a70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_moo_00003a78
	.4byte 0x00020018
	.4byte 0xF8406B3F
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_iwa_07_moo_00003a34
	.4byte 0x00000000
	.4byte rock_evt0
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_iwa_07_moo_00003a28
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_iwa_07_moo_00003a34
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj moo_05_init_evt_17_data_5040

# .data:0x22C | 0x512C | size: 0x4
.obj gap_04_0000512C_data, global
.hidden gap_04_0000512C_data
	.4byte 0x00000000
.endobj gap_04_0000512C_data
