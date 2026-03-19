.include "macros.inc"
.file "gra_03.o"

# 0x00000558..0x000005B8 | size: 0x60
.rodata
.balign 8

# .rodata:0x0 | 0x558 | size: 0x7
.obj str_e_bero_gra_00001a18, local
	.string "e_bero"
.endobj str_e_bero_gra_00001a18

# .rodata:0x7 | 0x55F | size: 0x1
.obj gap_03_0000055F_rodata, global
.hidden gap_03_0000055F_rodata
	.byte 0x00
.endobj gap_03_0000055F_rodata

# .rodata:0x8 | 0x560 | size: 0x7
.obj str_gra_02_gra_00001a20, local
	.string "gra_02"
.endobj str_gra_02_gra_00001a20

# .rodata:0xF | 0x567 | size: 0x1
.obj gap_03_00000567_rodata, global
.hidden gap_03_00000567_rodata
	.byte 0x00
.endobj gap_03_00000567_rodata

# .rodata:0x10 | 0x568 | size: 0x9
.obj str_w_bero_2_gra_00001a28, local
	.string "w_bero_2"
.endobj str_w_bero_2_gra_00001a28

# .rodata:0x19 | 0x571 | size: 0x3
.obj gap_03_00000571_rodata, global
.hidden gap_03_00000571_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000571_rodata

# .rodata:0x1C | 0x574 | size: 0x7
.obj str_w_bero_gra_00001a34, local
	.string "w_bero"
.endobj str_w_bero_gra_00001a34

# .rodata:0x23 | 0x57B | size: 0x1
.obj gap_03_0000057B_rodata, global
.hidden gap_03_0000057B_rodata
	.byte 0x00
.endobj gap_03_0000057B_rodata

# .rodata:0x24 | 0x57C | size: 0x7
.obj str_gra_04_gra_00001a3c, local
	.string "gra_04"
.endobj str_gra_04_gra_00001a3c

# .rodata:0x2B | 0x583 | size: 0x1
.obj gap_03_00000583_rodata, global
.hidden gap_03_00000583_rodata
	.byte 0x00
.endobj gap_03_00000583_rodata

# .rodata:0x2C | 0x584 | size: 0xE
.obj str_BGM_STG4_GRA1_gra_00001a44, local
	.string "BGM_STG4_GRA1"
.endobj str_BGM_STG4_GRA1_gra_00001a44

# .rodata:0x3A | 0x592 | size: 0x2
.obj gap_03_00000592_rodata, global
.hidden gap_03_00000592_rodata
	.2byte 0x0000
.endobj gap_03_00000592_rodata

# .rodata:0x3C | 0x594 | size: 0xE
.obj str_ENV_STG4_GRA1_gra_00001a54, local
	.string "ENV_STG4_GRA1"
.endobj str_ENV_STG4_GRA1_gra_00001a54

# .rodata:0x4A | 0x5A2 | size: 0x2
.obj gap_03_000005A2_rodata, global
.hidden gap_03_000005A2_rodata
	.2byte 0x0000
.endobj gap_03_000005A2_rodata

# .rodata:0x4C | 0x5A4 | size: 0x6
.obj str_blk00_gra_00001a64, local
	.string "blk00"
.endobj str_blk00_gra_00001a64

# .rodata:0x52 | 0x5AA | size: 0x2
.obj gap_03_000005AA_rodata, global
.hidden gap_03_000005AA_rodata
	.2byte 0x0000
.endobj gap_03_000005AA_rodata

# .rodata:0x54 | 0x5AC | size: 0x6
.obj str_blk01_gra_00001a6c, local
	.string "blk01"
.endobj str_blk01_gra_00001a6c

# .rodata:0x5A | 0x5B2 | size: 0x6
.obj gap_03_000005B2_rodata, global
.hidden gap_03_000005B2_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_000005B2_rodata

# 0x00002518..0x000026C0 | size: 0x1A8
.data
.balign 8

# .data:0x0 | 0x2518 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2520 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2524 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2528 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x252C | size: 0x4
.obj gap_04_0000252C_data, global
.hidden gap_04_0000252C_data
	.4byte 0x00000000
.endobj gap_04_0000252C_data

# .data:0x18 | 0x2530 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2538 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x253C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2540 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2548 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x254C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2550 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2554 | size: 0x4
.obj gap_04_00002554_data, global
.hidden gap_04_00002554_data
	.4byte 0x00000000
.endobj gap_04_00002554_data

# .data:0x40 | 0x2558 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2560 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2564 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2568 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_e_bero_gra_00001a18
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_02_gra_00001a20
	.4byte str_w_bero_2_gra_00001a28
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_gra_00001a34
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_04_gra_00001a3c
	.4byte str_e_bero_gra_00001a18
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

# .data:0x104 | 0x261C | size: 0xA4
.obj gra_03_init_evt_10_data_261C, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_GRA1_gra_00001a44
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_GRA1_gra_00001a54
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_blk00_gra_00001a64
	.4byte 0xFFFFFF88
	.4byte 0x0000003C
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0xF84063A3
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_blk01_gra_00001a6c
	.4byte 0x000000E6
	.4byte 0x0000003C
	.4byte 0xFFFFFFA8
	.4byte 0x00000085
	.4byte 0x00000000
	.4byte 0xF84063A4
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_kagemario_init_10_text_820
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_10_data_5028
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_03_init_evt_10_data_261C
