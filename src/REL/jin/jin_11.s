.include "macros.inc"
.file "jin_11.o"

# 0x00001338..0x000013A8 | size: 0x70
.rodata
.balign 8

# .rodata:0x0 | 0x1338 | size: 0x7
.obj str_jin_07_jin_00008558, local
	.string "jin_07"
.endobj str_jin_07_jin_00008558

# .rodata:0x7 | 0x133F | size: 0x1
.obj gap_03_0000133F_rodata, global
.hidden gap_03_0000133F_rodata
	.byte 0x00
.endobj gap_03_0000133F_rodata

# .rodata:0x8 | 0x1340 | size: 0x7
.obj str_door10_jin_00008560, local
	.string "door10"
.endobj str_door10_jin_00008560

# .rodata:0xF | 0x1347 | size: 0x1
.obj gap_03_00001347_rodata, global
.hidden gap_03_00001347_rodata
	.byte 0x00
.endobj gap_03_00001347_rodata

# .rodata:0x10 | 0x1348 | size: 0x7
.obj str_s_bero_jin_00008568, local
	.string "s_bero"
.endobj str_s_bero_jin_00008568

# .rodata:0x17 | 0x134F | size: 0x1
.obj gap_03_0000134F_rodata, global
.hidden gap_03_0000134F_rodata
	.byte 0x00
.endobj gap_03_0000134F_rodata

# .rodata:0x18 | 0x1350 | size: 0x7
.obj str_jin_10_jin_00008570, local
	.string "jin_10"
.endobj str_jin_10_jin_00008570

# .rodata:0x1F | 0x1357 | size: 0x1
.obj gap_03_00001357_rodata, global
.hidden gap_03_00001357_rodata
	.byte 0x00
.endobj gap_03_00001357_rodata

# .rodata:0x20 | 0x1358 | size: 0x7
.obj str_n_bero_jin_00008578, local
	.string "n_bero"
.endobj str_n_bero_jin_00008578

# .rodata:0x27 | 0x135F | size: 0x1
.obj gap_03_0000135F_rodata, global
.hidden gap_03_0000135F_rodata
	.byte 0x00
.endobj gap_03_0000135F_rodata

# .rodata:0x28 | 0x1360 | size: 0x4
.obj str_ana_jin_00008580, local
	.string "ana"
.endobj str_ana_jin_00008580

# .rodata:0x2C | 0x1364 | size: 0xE
.obj str_BGM_STG4_JIN1_jin_00008584, local
	.string "BGM_STG4_JIN1"
.endobj str_BGM_STG4_JIN1_jin_00008584

# .rodata:0x3A | 0x1372 | size: 0x2
.obj gap_03_00001372_rodata, global
.hidden gap_03_00001372_rodata
	.2byte 0x0000
.endobj gap_03_00001372_rodata

# .rodata:0x3C | 0x1374 | size: 0xE
.obj str_ENV_STG4_JIN1_jin_00008594, local
	.string "ENV_STG4_JIN1"
.endobj str_ENV_STG4_JIN1_jin_00008594

# .rodata:0x4A | 0x1382 | size: 0x2
.obj gap_03_00001382_rodata, global
.hidden gap_03_00001382_rodata
	.2byte 0x0000
.endobj gap_03_00001382_rodata

# .rodata:0x4C | 0x1384 | size: 0xA
.obj str_mobj_save_jin_000085a4, local
	.string "mobj_save"
.endobj str_mobj_save_jin_000085a4

# .rodata:0x56 | 0x138E | size: 0x2
.obj gap_03_0000138E_rodata, global
.hidden gap_03_0000138E_rodata
	.2byte 0x0000
.endobj gap_03_0000138E_rodata

# .rodata:0x58 | 0x1390 | size: 0x7
.obj str_pblk00_jin_000085b0, local
	.string "pblk00"
.endobj str_pblk00_jin_000085b0

# .rodata:0x5F | 0x1397 | size: 0x1
.obj gap_03_00001397_rodata, global
.hidden gap_03_00001397_rodata
	.byte 0x00
.endobj gap_03_00001397_rodata

# .rodata:0x60 | 0x1398 | size: 0xA
.obj str_mobj_bf00_jin_000085b8, local
	.string "mobj_bf00"
.endobj str_mobj_bf00_jin_000085b8

# .rodata:0x6A | 0x13A2 | size: 0x6
.obj gap_03_000013A2_rodata, global
.hidden gap_03_000013A2_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_000013A2_rodata

# 0x0000AC20..0x0000AEA0 | size: 0x280
.data
.balign 8

# .data:0x0 | 0xAC20 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xAC28 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xAC2C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xAC30 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xAC34 | size: 0x4
.obj gap_04_0000AC34_data, global
.hidden gap_04_0000AC34_data
	.4byte 0x00000000
.endobj gap_04_0000AC34_data

# .data:0x18 | 0xAC38 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xAC40 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xAC44 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xAC48 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xAC50 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xAC54 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xAC58 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xAC5C | size: 0x4
.obj gap_04_0000AC5C_data, global
.hidden gap_04_0000AC5C_data
	.4byte 0x00000000
.endobj gap_04_0000AC5C_data

# .data:0x40 | 0xAC60 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAC68 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAC6C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAC70 | size: 0x30
.obj jin_11_ana, local
	.4byte 0x00020032
	.4byte 0xF840639F
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_jin_07_jin_00008558
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_11_ana

# .data:0x80 | 0xACA0 | size: 0x30
.obj s_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door10_jin_00008560
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_close

# .data:0xB0 | 0xACD0 | size: 0x30
.obj s_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door10_jin_00008560
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_open

# .data:0xE0 | 0xAD00 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_s_bero_jin_00008568
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_10_jin_00008570
	.4byte str_n_bero_jin_00008578
	.4byte 0x00050005
	.4byte s_close
	.4byte s_open
	.4byte str_ana_jin_00008580
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0000034D
	.4byte 0x00000073
	.4byte 0x0000004D
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte jin_11_ana
	.4byte str_jin_07_jin_00008558
	.4byte 0x00000000
	.4byte 0x00040004
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

# .data:0x194 | 0xADB4 | size: 0x14
.obj evt_yuka, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000D0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_yuka

# .data:0x1A8 | 0xADC8 | size: 0xD8
.obj jin_11_init_evt_13_data_ADC8, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_00008584
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN1_jin_00008594
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_kagemario_init_13_text_4DE8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_13_data_AF00
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_jin_000085a4
	.4byte 0xFFFFFFCE
	.4byte 0x0000003C
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_jin_000085b0
	.4byte 0x00000028
	.4byte 0x0000003C
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xF840712F
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000D0
	.4byte 0x0008005B
	.4byte evt_mobj_breaking_floor
	.4byte str_mobj_bf00_jin_000085b8
	.4byte 0x0000034D
	.4byte 0x00000073
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte evt_yuka
	.4byte 0xF8406439
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_11_init_evt_13_data_ADC8
