.include "macros.inc"
.file "las_27.o"

# 0x00005DEC..0x00005E54 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x5DEC | size: 0x68
.fn make_name, local
/* 00005DEC 00005EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005DF0 00005EBC  7C 08 02 A6 */	mflr r0
/* 00005DF4 00005EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005DF8 00005EC4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005DFC 00005EC8  7C 7E 1B 78 */	mr r30, r3
/* 00005E00 00005ECC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005E04 00005ED0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005E08 00005ED4  4B FF A3 35 */	bl evtGetValue
/* 00005E0C 00005ED8  3C 80 00 00 */	lis r4, str_hiPCTd_las_00015268@ha
/* 00005E10 00005EDC  3C C0 00 00 */	lis r6, name@ha
/* 00005E14 00005EE0  7C 65 1B 78 */	mr r5, r3
/* 00005E18 00005EE4  38 66 00 00 */	addi r3, r6, name@l
/* 00005E1C 00005EE8  38 84 00 00 */	addi r4, r4, str_hiPCTd_las_00015268@l
/* 00005E20 00005EEC  4C C6 31 82 */	crclr cr1eq
/* 00005E24 00005EF0  4B FF A3 19 */	bl sprintf
/* 00005E28 00005EF4  3C 60 00 00 */	lis r3, name@ha
/* 00005E2C 00005EF8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005E30 00005EFC  38 A3 00 00 */	addi r5, r3, name@l
/* 00005E34 00005F00  7F C3 F3 78 */	mr r3, r30
/* 00005E38 00005F04  4B FF A3 05 */	bl evtSetValue
/* 00005E3C 00005F08  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005E40 00005F0C  38 60 00 02 */	li r3, 0x2
/* 00005E44 00005F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005E48 00005F14  7C 08 03 A6 */	mtlr r0
/* 00005E4C 00005F18  38 21 00 10 */	addi r1, r1, 0x10
/* 00005E50 00005F1C  4E 80 00 20 */	blr
.endfn make_name

# 0x00003778..0x00003808 | size: 0x90
.rodata
.balign 8

# .rodata:0x0 | 0x3778 | size: 0xA
.obj str_S_door1_1_las_000151e0, local
	.string "S_door1_1"
.endobj str_S_door1_1_las_000151e0

# .rodata:0xA | 0x3782 | size: 0x2
.obj gap_03_00003782_rodata, global
.hidden gap_03_00003782_rodata
	.2byte 0x0000
.endobj gap_03_00003782_rodata

# .rodata:0xC | 0x3784 | size: 0xA
.obj str_S_door1_2_las_000151ec, local
	.string "S_door1_2"
.endobj str_S_door1_2_las_000151ec

# .rodata:0x16 | 0x378E | size: 0x2
.obj gap_03_0000378E_rodata, global
.hidden gap_03_0000378E_rodata
	.2byte 0x0000
.endobj gap_03_0000378E_rodata

# .rodata:0x18 | 0x3790 | size: 0xA
.obj str_S_door2_1_las_000151f8, local
	.string "S_door2_1"
.endobj str_S_door2_1_las_000151f8

# .rodata:0x22 | 0x379A | size: 0x2
.obj gap_03_0000379A_rodata, global
.hidden gap_03_0000379A_rodata
	.2byte 0x0000
.endobj gap_03_0000379A_rodata

# .rodata:0x24 | 0x379C | size: 0xA
.obj str_S_door2_2_las_00015204, local
	.string "S_door2_2"
.endobj str_S_door2_2_las_00015204

# .rodata:0x2E | 0x37A6 | size: 0x2
.obj gap_03_000037A6_rodata, global
.hidden gap_03_000037A6_rodata
	.2byte 0x0000
.endobj gap_03_000037A6_rodata

# .rodata:0x30 | 0x37A8 | size: 0x7
.obj str_w_bero_las_00015210, local
	.string "w_bero"
.endobj str_w_bero_las_00015210

# .rodata:0x37 | 0x37AF | size: 0x1
.obj gap_03_000037AF_rodata, global
.hidden gap_03_000037AF_rodata
	.byte 0x00
.endobj gap_03_000037AF_rodata

# .rodata:0x38 | 0x37B0 | size: 0x7
.obj str_las_25_las_00015218, local
	.string "las_25"
.endobj str_las_25_las_00015218

# .rodata:0x3F | 0x37B7 | size: 0x1
.obj gap_03_000037B7_rodata, global
.hidden gap_03_000037B7_rodata
	.byte 0x00
.endobj gap_03_000037B7_rodata

# .rodata:0x40 | 0x37B8 | size: 0x9
.obj str_e_bero_2_las_00015220, local
	.string "e_bero_2"
.endobj str_e_bero_2_las_00015220

# .rodata:0x49 | 0x37C1 | size: 0x3
.obj gap_03_000037C1_rodata, global
.hidden gap_03_000037C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000037C1_rodata

# .rodata:0x4C | 0x37C4 | size: 0x7
.obj str_e_bero_las_0001522c, local
	.string "e_bero"
.endobj str_e_bero_las_0001522c

# .rodata:0x53 | 0x37CB | size: 0x1
.obj gap_03_000037CB_rodata, global
.hidden gap_03_000037CB_rodata
	.byte 0x00
.endobj gap_03_000037CB_rodata

# .rodata:0x54 | 0x37CC | size: 0x7
.obj str_las_28_las_00015234, local
	.string "las_28"
.endobj str_las_28_las_00015234

# .rodata:0x5B | 0x37D3 | size: 0x1
.obj gap_03_000037D3_rodata, global
.hidden gap_03_000037D3_rodata
	.byte 0x00
.endobj gap_03_000037D3_rodata

# .rodata:0x5C | 0x37D4 | size: 0x5
.obj str_fire_las_0001523c, local
	.string "fire"
.endobj str_fire_las_0001523c

# .rodata:0x61 | 0x37D9 | size: 0x3
.obj gap_03_000037D9_rodata, global
.hidden gap_03_000037D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000037D9_rodata

# .rodata:0x64 | 0x37DC | size: 0xE
.obj str_ENV_STG8_LAS9_las_00015244, local
	.string "ENV_STG8_LAS9"
.endobj str_ENV_STG8_LAS9_las_00015244

# .rodata:0x72 | 0x37EA | size: 0x2
.obj gap_03_000037EA_rodata, global
.hidden gap_03_000037EA_rodata
	.2byte 0x0000
.endobj gap_03_000037EA_rodata

# .rodata:0x74 | 0x37EC | size: 0xA
.obj str_mobj_save_las_00015254, local
	.string "mobj_save"
.endobj str_mobj_save_las_00015254

# .rodata:0x7E | 0x37F6 | size: 0x2
.obj gap_03_000037F6_rodata, global
.hidden gap_03_000037F6_rodata
	.2byte 0x0000
.endobj gap_03_000037F6_rodata

# .rodata:0x80 | 0x37F8 | size: 0x6
.obj str_r_blk_las_00015260, local
	.string "r_blk"
.endobj str_r_blk_las_00015260

# .rodata:0x86 | 0x37FE | size: 0x2
.obj gap_03_000037FE_rodata, global
.hidden gap_03_000037FE_rodata
	.2byte 0x0000
.endobj gap_03_000037FE_rodata

# .rodata:0x88 | 0x3800 | size: 0x5
.obj str_hiPCTd_las_00015268, local
	.string "hi%d"
.endobj str_hiPCTd_las_00015268

# .rodata:0x8D | 0x3805 | size: 0x3
.obj gap_03_00003805_rodata, global
.hidden gap_03_00003805_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003805_rodata

# 0x00013720..0x00013AD8 | size: 0x3B8
.data
.balign 8

# .data:0x0 | 0x13720 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13728 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1372C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13730 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x13734 | size: 0x4
.obj gap_04_00013734_data, global
.hidden gap_04_00013734_data
	.4byte 0x00000000
.endobj gap_04_00013734_data

# .data:0x18 | 0x13738 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13740 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x13744 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13748 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13750 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x13754 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13758 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1375C | size: 0x4
.obj gap_04_0001375C_data, global
.hidden gap_04_0001375C_data
	.4byte 0x00000000
.endobj gap_04_0001375C_data

# .data:0x40 | 0x13760 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x13768 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1376C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x13770 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_000151e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_000151ec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x137C8 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_000151e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_000151ec
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x13820 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_000151f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00015204
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x13878 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_000151f8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00015204
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x138D0 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00015210
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_25_las_00015218
	.4byte str_e_bero_2_las_00015220
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_0001522c
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_28_las_00015234
	.4byte str_w_bero_las_00015210
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

# .data:0x264 | 0x13984 | size: 0xB8
.obj shan_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000001C
	.4byte 0x0003005B
	.4byte make_name
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xF24A9E80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_fire_las_0001523c
	.4byte 0x00000003
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF24A7D4C
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shan_init

# .data:0x31C | 0x13A3C | size: 0x98
.obj las_27_init_evt_16_data_13A3C, global
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS9_las_00015244
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
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_las_00015254
	.4byte 0x00000208
	.4byte 0x0000003C
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_r_blk_las_00015260
	.4byte 0x0000000A
	.4byte 0x000001C2
	.4byte 0x0000003C
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte shan_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_27_init_evt_16_data_13A3C

# .data:0x3B4 | 0x13AD4 | size: 0x4
.obj gap_04_00013AD4_data, global
.hidden gap_04_00013AD4_data
	.4byte 0x00000000
.endobj gap_04_00013AD4_data

# 0x00000060..0x00000068 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x60 | size: 0x8
.obj name, local
	.skip 0x8
.endobj name
