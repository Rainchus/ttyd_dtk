.include "macros.inc"
.file "las_02.o"

# 0x000004C8..0x00000530 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x4C8 | size: 0x68
.fn make_name, local
/* 000004C8 00000594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000004CC 00000598  7C 08 02 A6 */	mflr r0
/* 000004D0 0000059C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000004D4 000005A0  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000004D8 000005A4  7C 7E 1B 78 */	mr r30, r3
/* 000004DC 000005A8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000004E0 000005AC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000004E4 000005B0  4B FF FC 59 */	bl evtGetValue
/* 000004E8 000005B4  3C 80 00 00 */	lis r4, str_hiPCTd_las_00011df8@ha
/* 000004EC 000005B8  3C C0 00 00 */	lis r6, name@ha
/* 000004F0 000005BC  7C 65 1B 78 */	mr r5, r3
/* 000004F4 000005C0  38 66 00 00 */	addi r3, r6, name@l
/* 000004F8 000005C4  38 84 00 00 */	addi r4, r4, str_hiPCTd_las_00011df8@l
/* 000004FC 000005C8  4C C6 31 82 */	crclr cr1eq
/* 00000500 000005CC  4B FF FC 3D */	bl sprintf
/* 00000504 000005D0  3C 60 00 00 */	lis r3, name@ha
/* 00000508 000005D4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000050C 000005D8  38 A3 00 00 */	addi r5, r3, name@l
/* 00000510 000005DC  7F C3 F3 78 */	mr r3, r30
/* 00000514 000005E0  4B FF FC 29 */	bl evtSetValue
/* 00000518 000005E4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000051C 000005E8  38 60 00 02 */	li r3, 0x2
/* 00000520 000005EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000524 000005F0  7C 08 03 A6 */	mtlr r0
/* 00000528 000005F4  38 21 00 10 */	addi r1, r1, 0x10
/* 0000052C 000005F8  4E 80 00 20 */	blr
.endfn make_name

# 0x000002E0..0x00000398 | size: 0xB8
.rodata
.balign 8

# .rodata:0x0 | 0x2E0 | size: 0xA
.obj str_S_door1_1_las_00011d48, local
	.string "S_door1_1"
.endobj str_S_door1_1_las_00011d48

# .rodata:0xA | 0x2EA | size: 0x2
.obj gap_03_000002EA_rodata, global
.hidden gap_03_000002EA_rodata
	.2byte 0x0000
.endobj gap_03_000002EA_rodata

# .rodata:0xC | 0x2EC | size: 0xA
.obj str_S_door1_2_las_00011d54, local
	.string "S_door1_2"
.endobj str_S_door1_2_las_00011d54

# .rodata:0x16 | 0x2F6 | size: 0x2
.obj gap_03_000002F6_rodata, global
.hidden gap_03_000002F6_rodata
	.2byte 0x0000
.endobj gap_03_000002F6_rodata

# .rodata:0x18 | 0x2F8 | size: 0xA
.obj str_S_door2_1_las_00011d60, local
	.string "S_door2_1"
.endobj str_S_door2_1_las_00011d60

# .rodata:0x22 | 0x302 | size: 0x2
.obj gap_03_00000302_rodata, global
.hidden gap_03_00000302_rodata
	.2byte 0x0000
.endobj gap_03_00000302_rodata

# .rodata:0x24 | 0x304 | size: 0xA
.obj str_S_door2_2_las_00011d6c, local
	.string "S_door2_2"
.endobj str_S_door2_2_las_00011d6c

# .rodata:0x2E | 0x30E | size: 0x2
.obj gap_03_0000030E_rodata, global
.hidden gap_03_0000030E_rodata
	.2byte 0x0000
.endobj gap_03_0000030E_rodata

# .rodata:0x30 | 0x310 | size: 0x7
.obj str_w_bero_las_00011d78, local
	.string "w_bero"
.endobj str_w_bero_las_00011d78

# .rodata:0x37 | 0x317 | size: 0x1
.obj gap_03_00000317_rodata, global
.hidden gap_03_00000317_rodata
	.byte 0x00
.endobj gap_03_00000317_rodata

# .rodata:0x38 | 0x318 | size: 0x7
.obj str_las_01_las_00011d80, local
	.string "las_01"
.endobj str_las_01_las_00011d80

# .rodata:0x3F | 0x31F | size: 0x1
.obj gap_03_0000031F_rodata, global
.hidden gap_03_0000031F_rodata
	.byte 0x00
.endobj gap_03_0000031F_rodata

# .rodata:0x40 | 0x320 | size: 0x7
.obj str_e_bero_las_00011d88, local
	.string "e_bero"
.endobj str_e_bero_las_00011d88

# .rodata:0x47 | 0x327 | size: 0x1
.obj gap_03_00000327_rodata, global
.hidden gap_03_00000327_rodata
	.byte 0x00
.endobj gap_03_00000327_rodata

# .rodata:0x48 | 0x328 | size: 0x7
.obj str_las_03_las_00011d90, local
	.string "las_03"
.endobj str_las_03_las_00011d90

# .rodata:0x4F | 0x32F | size: 0x1
.obj gap_03_0000032F_rodata, global
.hidden gap_03_0000032F_rodata
	.byte 0x00
.endobj gap_03_0000032F_rodata

# .rodata:0x50 | 0x330 | size: 0x5
.obj str_fire_las_00011d98, local
	.string "fire"
.endobj str_fire_las_00011d98

# .rodata:0x55 | 0x335 | size: 0x3
.obj gap_03_00000335_rodata, global
.hidden gap_03_00000335_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000335_rodata

# .rodata:0x58 | 0x338 | size: 0xE
.obj str_BGM_STG8_LST1_las_00011da0, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_00011da0

# .rodata:0x66 | 0x346 | size: 0x2
.obj gap_03_00000346_rodata, global
.hidden gap_03_00000346_rodata
	.2byte 0x0000
.endobj gap_03_00000346_rodata

# .rodata:0x68 | 0x348 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00011db0, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00011db0

# .rodata:0x76 | 0x356 | size: 0x2
.obj gap_03_00000356_rodata, global
.hidden gap_03_00000356_rodata
	.2byte 0x0000
.endobj gap_03_00000356_rodata

# .rodata:0x78 | 0x358 | size: 0x7
.obj str_mobj00_las_00011dc0, local
	.string "mobj00"
.endobj str_mobj00_las_00011dc0

# .rodata:0x7F | 0x35F | size: 0x1
.obj gap_03_0000035F_rodata, global
.hidden gap_03_0000035F_rodata
	.byte 0x00
.endobj gap_03_0000035F_rodata

# .rodata:0x80 | 0x360 | size: 0x15
.obj str_スーパーキラー大砲１_las_00011dc8, local
	.4byte 0x8358815B
	.4byte 0x8370815B
	.4byte 0x834C8389
	.4byte 0x815B91E5
	.4byte 0x96438250
	.byte 0x00
.endobj str_スーパーキラー大砲１_las_00011dc8

# .rodata:0x95 | 0x375 | size: 0x3
.obj gap_03_00000375_rodata, global
.hidden gap_03_00000375_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000375_rodata

# .rodata:0x98 | 0x378 | size: 0x15
.obj str_スーパーキラー大砲２_las_00011de0, local
	.4byte 0x8358815B
	.4byte 0x8370815B
	.4byte 0x834C8389
	.4byte 0x815B91E5
	.4byte 0x96438251
	.byte 0x00
.endobj str_スーパーキラー大砲２_las_00011de0

# .rodata:0xAD | 0x38D | size: 0x3
.obj gap_03_0000038D_rodata, global
.hidden gap_03_0000038D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000038D_rodata

# .rodata:0xB0 | 0x390 | size: 0x5
.obj str_hiPCTd_las_00011df8, local
	.string "hi%d"
.endobj str_hiPCTd_las_00011df8

# .rodata:0xB5 | 0x395 | size: 0x3
.obj gap_03_00000395_rodata, global
.hidden gap_03_00000395_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000395_rodata

# 0x00000F78..0x00001348 | size: 0x3D0
.data
.balign 8

# .data:0x0 | 0xF78 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xF80 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xF84 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xF88 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xF8C | size: 0x4
.obj gap_04_00000F8C_data, global
.hidden gap_04_00000F8C_data
	.4byte 0x00000000
.endobj gap_04_00000F8C_data

# .data:0x18 | 0xF90 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xF98 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xF9C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xFA0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xFA8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xFAC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xFB0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xFB4 | size: 0x4
.obj gap_04_00000FB4_data, global
.hidden gap_04_00000FB4_data
	.4byte 0x00000000
.endobj gap_04_00000FB4_data

# .data:0x40 | 0xFB8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xFC0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xFC4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xFC8 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00011d48
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00011d54
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x1020 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00011d48
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00011d54
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x1078 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00011d60
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00011d6c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x10D0 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00011d60
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00011d6c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x1128 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00011d78
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_01_las_00011d80
	.4byte str_e_bero_las_00011d88
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_00011d88
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_03_las_00011d90
	.4byte str_w_bero_las_00011d78
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

# .data:0x264 | 0x11DC | size: 0xB8
.obj rousoku_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000012
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
	.4byte 0xF24A9680
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_fire_las_00011d98
	.4byte 0x00000003
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF24A7E80
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
.endobj rousoku_init

# .data:0x31C | 0x1294 | size: 0xB0
.obj las_02_init_evt_16_data_1294, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_00011da0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00011db0
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
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj00_las_00011dc0
	.4byte 0xFFFFFDDA
	.4byte 0x000001E0
	.4byte 0x0000003C
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0xF8406C93
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_スーパーキラー大砲１_las_00011dc8
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_スーパーキラー大砲１_las_00011dc8
	.4byte str_スーパーキラー大砲２_las_00011de0
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte rousoku_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_02_init_evt_16_data_1294

# .data:0x3CC | 0x1344 | size: 0x4
.obj gap_04_00001344_data, global
.hidden gap_04_00001344_data
	.4byte 0x00000000
.endobj gap_04_00001344_data

# 0x00000010..0x00000018 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x10 | size: 0x8
.obj name, local
	.skip 0x8
.endobj name
