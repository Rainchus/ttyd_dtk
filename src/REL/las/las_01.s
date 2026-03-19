.include "macros.inc"
.file "las_01.o"

# 0x00000260..0x000002E0 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x260 | size: 0xB
.obj str_S_doa_l_01_las_00011cc8, local
	.string "S_doa_l_01"
.endobj str_S_doa_l_01_las_00011cc8

# .rodata:0xB | 0x26B | size: 0x1
.obj gap_03_0000026B_rodata, global
.hidden gap_03_0000026B_rodata
	.byte 0x00
.endobj gap_03_0000026B_rodata

# .rodata:0xC | 0x26C | size: 0xB
.obj str_S_doa_l_02_las_00011cd4, local
	.string "S_doa_l_02"
.endobj str_S_doa_l_02_las_00011cd4

# .rodata:0x17 | 0x277 | size: 0x1
.obj gap_03_00000277_rodata, global
.hidden gap_03_00000277_rodata
	.byte 0x00
.endobj gap_03_00000277_rodata

# .rodata:0x18 | 0x278 | size: 0xB
.obj str_S_doa_r_01_las_00011ce0, local
	.string "S_doa_r_01"
.endobj str_S_doa_r_01_las_00011ce0

# .rodata:0x23 | 0x283 | size: 0x1
.obj gap_03_00000283_rodata, global
.hidden gap_03_00000283_rodata
	.byte 0x00
.endobj gap_03_00000283_rodata

# .rodata:0x24 | 0x284 | size: 0xB
.obj str_S_doa_r_02_las_00011cec, local
	.string "S_doa_r_02"
.endobj str_S_doa_r_02_las_00011cec

# .rodata:0x2F | 0x28F | size: 0x1
.obj gap_03_0000028F_rodata, global
.hidden gap_03_0000028F_rodata
	.byte 0x00
.endobj gap_03_0000028F_rodata

# .rodata:0x30 | 0x290 | size: 0x7
.obj str_w_bero_las_00011cf8, local
	.string "w_bero"
.endobj str_w_bero_las_00011cf8

# .rodata:0x37 | 0x297 | size: 0x1
.obj gap_03_00000297_rodata, global
.hidden gap_03_00000297_rodata
	.byte 0x00
.endobj gap_03_00000297_rodata

# .rodata:0x38 | 0x298 | size: 0x7
.obj str_las_00_las_00011d00, local
	.string "las_00"
.endobj str_las_00_las_00011d00

# .rodata:0x3F | 0x29F | size: 0x1
.obj gap_03_0000029F_rodata, global
.hidden gap_03_0000029F_rodata
	.byte 0x00
.endobj gap_03_0000029F_rodata

# .rodata:0x40 | 0x2A0 | size: 0x7
.obj str_e_bero_las_00011d08, local
	.string "e_bero"
.endobj str_e_bero_las_00011d08

# .rodata:0x47 | 0x2A7 | size: 0x1
.obj gap_03_000002A7_rodata, global
.hidden gap_03_000002A7_rodata
	.byte 0x00
.endobj gap_03_000002A7_rodata

# .rodata:0x48 | 0x2A8 | size: 0x7
.obj str_las_02_las_00011d10, local
	.string "las_02"
.endobj str_las_02_las_00011d10

# .rodata:0x4F | 0x2AF | size: 0x1
.obj gap_03_000002AF_rodata, global
.hidden gap_03_000002AF_rodata
	.byte 0x00
.endobj gap_03_000002AF_rodata

# .rodata:0x50 | 0x2B0 | size: 0xE
.obj str_BGM_STG8_LST1_las_00011d18, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_00011d18

# .rodata:0x5E | 0x2BE | size: 0x2
.obj gap_03_000002BE_rodata, global
.hidden gap_03_000002BE_rodata
	.2byte 0x0000
.endobj gap_03_000002BE_rodata

# .rodata:0x60 | 0x2C0 | size: 0xE
.obj str_ENV_STG8_LAS2_las_00011d28, local
	.string "ENV_STG8_LAS2"
.endobj str_ENV_STG8_LAS2_las_00011d28

# .rodata:0x6E | 0x2CE | size: 0x2
.obj gap_03_000002CE_rodata, global
.hidden gap_03_000002CE_rodata
	.2byte 0x0000
.endobj gap_03_000002CE_rodata

# .rodata:0x70 | 0x2D0 | size: 0x6
.obj str_hamon_las_00011d38, local
	.string "hamon"
.endobj str_hamon_las_00011d38

# .rodata:0x76 | 0x2D6 | size: 0x2
.obj gap_03_000002D6_rodata, global
.hidden gap_03_000002D6_rodata
	.2byte 0x0000
.endobj gap_03_000002D6_rodata

# .rodata:0x78 | 0x2D8 | size: 0x8
.obj str_item_01_las_00011d40, local
	.string "item_01"
.endobj str_item_01_las_00011d40

# 0x00000C88..0x00000F78 | size: 0x2F0
.data
.balign 8

# .data:0x0 | 0xC88 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xC90 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC94 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xC98 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xC9C | size: 0x4
.obj gap_04_00000C9C_data, global
.hidden gap_04_00000C9C_data
	.4byte 0x00000000
.endobj gap_04_00000C9C_data

# .data:0x18 | 0xCA0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xCA8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xCAC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xCB0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xCB8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xCBC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xCC0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xCC4 | size: 0x4
.obj gap_04_00000CC4_data, global
.hidden gap_04_00000CC4_data
	.4byte 0x00000000
.endobj gap_04_00000CC4_data

# .data:0x40 | 0xCC8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xCD0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xCD4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xCD8 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00011cc8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00011cd4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0xD30 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_01_las_00011cc8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_l_02_las_00011cd4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0xD88 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00011ce0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_00011cec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0xDE0 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_01_las_00011ce0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_doa_r_02_las_00011cec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0xE38 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00011cf8
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_00_las_00011d00
	.4byte str_e_bero_las_00011d08
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_00011d08
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_02_las_00011d10
	.4byte str_w_bero_las_00011cf8
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
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

# .data:0x264 | 0xEEC | size: 0x8C
.obj las_01_init_evt_16_data_EEC, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_00011d18
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS2_las_00011d28
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
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hamon_las_00011d38
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_las_00011d40
	.4byte 0x0000008C
	.4byte 0xFFFFFD3A
	.4byte 0x000001C0
	.4byte 0xFFFFFF51
	.4byte 0x00000010
	.4byte 0xF8406C9F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_01_init_evt_16_data_EEC
