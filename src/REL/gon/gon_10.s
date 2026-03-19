.include "macros.inc"
.file "gon_10.o"

# 0x00001828..0x000018A8 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0x1828 | size: 0x7
.obj str_door03_gon_000055f8, local
	.string "door03"
.endobj str_door03_gon_000055f8

# .rodata:0x7 | 0x182F | size: 0x1
.obj gap_03_0000182F_rodata, global
.hidden gap_03_0000182F_rodata
	.byte 0x00
.endobj gap_03_0000182F_rodata

# .rodata:0x8 | 0x1830 | size: 0x7
.obj str_door04_gon_00005600, local
	.string "door04"
.endobj str_door04_gon_00005600

# .rodata:0xF | 0x1837 | size: 0x1
.obj gap_03_00001837_rodata, global
.hidden gap_03_00001837_rodata
	.byte 0x00
.endobj gap_03_00001837_rodata

# .rodata:0x10 | 0x1838 | size: 0x7
.obj str_door01_gon_00005608, local
	.string "door01"
.endobj str_door01_gon_00005608

# .rodata:0x17 | 0x183F | size: 0x1
.obj gap_03_0000183F_rodata, global
.hidden gap_03_0000183F_rodata
	.byte 0x00
.endobj gap_03_0000183F_rodata

# .rodata:0x18 | 0x1840 | size: 0x7
.obj str_door02_gon_00005610, local
	.string "door02"
.endobj str_door02_gon_00005610

# .rodata:0x1F | 0x1847 | size: 0x1
.obj gap_03_00001847_rodata, global
.hidden gap_03_00001847_rodata
	.byte 0x00
.endobj gap_03_00001847_rodata

# .rodata:0x20 | 0x1848 | size: 0x7
.obj str_w_bero_gon_00005618, local
	.string "w_bero"
.endobj str_w_bero_gon_00005618

# .rodata:0x27 | 0x184F | size: 0x1
.obj gap_03_0000184F_rodata, global
.hidden gap_03_0000184F_rodata
	.byte 0x00
.endobj gap_03_0000184F_rodata

# .rodata:0x28 | 0x1850 | size: 0x7
.obj str_gon_11_gon_00005620, local
	.string "gon_11"
.endobj str_gon_11_gon_00005620

# .rodata:0x2F | 0x1857 | size: 0x1
.obj gap_03_00001857_rodata, global
.hidden gap_03_00001857_rodata
	.byte 0x00
.endobj gap_03_00001857_rodata

# .rodata:0x30 | 0x1858 | size: 0x7
.obj str_e_bero_gon_00005628, local
	.string "e_bero"
.endobj str_e_bero_gon_00005628

# .rodata:0x37 | 0x185F | size: 0x1
.obj gap_03_0000185F_rodata, global
.hidden gap_03_0000185F_rodata
	.byte 0x00
.endobj gap_03_0000185F_rodata

# .rodata:0x38 | 0x1860 | size: 0x7
.obj str_gon_05_gon_00005630, local
	.string "gon_05"
.endobj str_gon_05_gon_00005630

# .rodata:0x3F | 0x1867 | size: 0x1
.obj gap_03_00001867_rodata, global
.hidden gap_03_00001867_rodata
	.byte 0x00
.endobj gap_03_00001867_rodata

# .rodata:0x40 | 0x1868 | size: 0x9
.obj str_w_bero_5_gon_00005638, local
	.string "w_bero_5"
.endobj str_w_bero_5_gon_00005638

# .rodata:0x49 | 0x1871 | size: 0x3
.obj gap_03_00001871_rodata, global
.hidden gap_03_00001871_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001871_rodata

# .rodata:0x4C | 0x1874 | size: 0xE
.obj str_ENV_STG1_GON3_gon_00005644, local
	.string "ENV_STG1_GON3"
.endobj str_ENV_STG1_GON3_gon_00005644

# .rodata:0x5A | 0x1882 | size: 0x2
.obj gap_03_00001882_rodata, global
.hidden gap_03_00001882_rodata
	.2byte 0x0000
.endobj gap_03_00001882_rodata

# .rodata:0x5C | 0x1884 | size: 0xA
.obj str_mobj_save_gon_00005654, local
	.string "mobj_save"
.endobj str_mobj_save_gon_00005654

# .rodata:0x66 | 0x188E | size: 0x2
.obj gap_03_0000188E_rodata, global
.hidden gap_03_0000188E_rodata
	.2byte 0x0000
.endobj gap_03_0000188E_rodata

# .rodata:0x68 | 0x1890 | size: 0xD
.obj str_mobj_recover_gon_00005660, local
	.string "mobj_recover"
.endobj str_mobj_recover_gon_00005660

# .rodata:0x75 | 0x189D | size: 0x3
.obj gap_03_0000189D_rodata, global
.hidden gap_03_0000189D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000189D_rodata

# .rodata:0x78 | 0x18A0 | size: 0x3
.obj str_en_gon_00005670, local
	.string "en"
.endobj str_en_gon_00005670

# .rodata:0x7B | 0x18A3 | size: 0x5
.obj gap_03_000018A3_rodata, global
.hidden gap_03_000018A3_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_000018A3_rodata

# 0x0000B308..0x0000B628 | size: 0x320
.data
.balign 8

# .data:0x0 | 0xB308 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xB310 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xB314 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xB318 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xB31C | size: 0x4
.obj gap_04_0000B31C_data, global
.hidden gap_04_0000B31C_data
	.4byte 0x00000000
.endobj gap_04_0000B31C_data

# .data:0x18 | 0xB320 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xB328 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xB32C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xB330 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xB338 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xB33C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xB340 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xB344 | size: 0x4
.obj gap_04_0000B344_data, global
.hidden gap_04_0000B344_data
	.4byte 0x00000000
.endobj gap_04_0000B344_data

# .data:0x40 | 0xB348 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xB350 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xB354 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xB358 | size: 0x58
.obj door02_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door03_gon_000055f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door04_gon_00005600
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door02_close

# .data:0xA8 | 0xB3B0 | size: 0x58
.obj door02_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door03_gon_000055f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door04_gon_00005600
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door02_open

# .data:0x100 | 0xB408 | size: 0x58
.obj door01_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door01_gon_00005608
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door02_gon_00005610
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door01_close

# .data:0x158 | 0xB460 | size: 0x58
.obj door01_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door01_gon_00005608
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door02_gon_00005610
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door01_open

# .data:0x1B0 | 0xB4B8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_gon_00005618
	.4byte 0x0001000D
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gon_11_gon_00005620
	.4byte str_w_bero_gon_00005618
	.4byte 0x00050005
	.4byte door02_close
	.4byte door02_open
	.4byte str_e_bero_gon_00005628
	.4byte 0x0001000C
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gon_05_gon_00005630
	.4byte str_w_bero_5_gon_00005638
	.4byte 0x00050005
	.4byte door01_close
	.4byte door01_open
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

# .data:0x264 | 0xB56C | size: 0xB8
.obj gon_10_init_evt_8_data_B56C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_GON3_gon_00005644
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_gon_00005654
	.4byte 0xFFFFFE34
	.4byte 0x000003F2
	.4byte 0xFFFFFF6F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_gon_00005660
	.4byte 0x00000006
	.4byte 0xFFFFFE70
	.4byte 0x000003F2
	.4byte 0xFFFFFF6E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000037
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_en_gon_00005670
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gon_10_init_evt_8_data_B56C

# .data:0x31C | 0xB624 | size: 0x4
.obj gap_04_0000B624_data, global
.hidden gap_04_0000B624_data
	.4byte 0x00000000
.endobj gap_04_0000B624_data
