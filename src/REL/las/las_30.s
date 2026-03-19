.include "macros.inc"
.file "las_30.o"

# 0x0000C1C4..0x0000C22C | size: 0x68
.text
.balign 4

# .text:0x0 | 0xC1C4 | size: 0x68
.fn make_name, local
/* 0000C1C4 0000C290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000C1C8 0000C294  7C 08 02 A6 */	mflr r0
/* 0000C1CC 0000C298  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000C1D0 0000C29C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000C1D4 0000C2A0  7C 7E 1B 78 */	mr r30, r3
/* 0000C1D8 0000C2A4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000C1DC 0000C2A8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000C1E0 0000C2AC  4B FF 3F 5D */	bl evtGetValue
/* 0000C1E4 0000C2B0  3C 80 00 00 */	lis r4, str_hiPCTd_las_00018e34@ha
/* 0000C1E8 0000C2B4  3C C0 00 00 */	lis r6, name@ha
/* 0000C1EC 0000C2B8  7C 65 1B 78 */	mr r5, r3
/* 0000C1F0 0000C2BC  38 66 00 00 */	addi r3, r6, name@l
/* 0000C1F4 0000C2C0  38 84 00 00 */	addi r4, r4, str_hiPCTd_las_00018e34@l
/* 0000C1F8 0000C2C4  4C C6 31 82 */	crclr cr1eq
/* 0000C1FC 0000C2C8  4B FF 3F 41 */	bl sprintf
/* 0000C200 0000C2CC  3C 60 00 00 */	lis r3, name@ha
/* 0000C204 0000C2D0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000C208 0000C2D4  38 A3 00 00 */	addi r5, r3, name@l
/* 0000C20C 0000C2D8  7F C3 F3 78 */	mr r3, r30
/* 0000C210 0000C2DC  4B FF 3F 2D */	bl evtSetValue
/* 0000C214 0000C2E0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000C218 0000C2E4  38 60 00 02 */	li r3, 0x2
/* 0000C21C 0000C2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000C220 0000C2EC  7C 08 03 A6 */	mtlr r0
/* 0000C224 0000C2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 0000C228 0000C2F4  4E 80 00 20 */	blr
.endfn make_name

# 0x00007318..0x000073D8 | size: 0xC0
.rodata
.balign 8

# .rodata:0x0 | 0x7318 | size: 0xA
.obj str_S_door2_1_las_00018d80, local
	.string "S_door2_1"
.endobj str_S_door2_1_las_00018d80

# .rodata:0xA | 0x7322 | size: 0x2
.obj gap_03_00007322_rodata, global
.hidden gap_03_00007322_rodata
	.2byte 0x0000
.endobj gap_03_00007322_rodata

# .rodata:0xC | 0x7324 | size: 0xA
.obj str_S_door2_2_las_00018d8c, local
	.string "S_door2_2"
.endobj str_S_door2_2_las_00018d8c

# .rodata:0x16 | 0x732E | size: 0x2
.obj gap_03_0000732E_rodata, global
.hidden gap_03_0000732E_rodata
	.2byte 0x0000
.endobj gap_03_0000732E_rodata

# .rodata:0x18 | 0x7330 | size: 0x9
.obj str_door_1_1_las_00018d98, local
	.string "door_1_1"
.endobj str_door_1_1_las_00018d98

# .rodata:0x21 | 0x7339 | size: 0x3
.obj gap_03_00007339_rodata, global
.hidden gap_03_00007339_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007339_rodata

# .rodata:0x24 | 0x733C | size: 0x9
.obj str_door_1_2_las_00018da4, local
	.string "door_1_2"
.endobj str_door_1_2_las_00018da4

# .rodata:0x2D | 0x7345 | size: 0x3
.obj gap_03_00007345_rodata, global
.hidden gap_03_00007345_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007345_rodata

# .rodata:0x30 | 0x7348 | size: 0x7
.obj str_w_bero_las_00018db0, local
	.string "w_bero"
.endobj str_w_bero_las_00018db0

# .rodata:0x37 | 0x734F | size: 0x1
.obj gap_03_0000734F_rodata, global
.hidden gap_03_0000734F_rodata
	.byte 0x00
.endobj gap_03_0000734F_rodata

# .rodata:0x38 | 0x7350 | size: 0x7
.obj str_las_28_las_00018db8, local
	.string "las_28"
.endobj str_las_28_las_00018db8

# .rodata:0x3F | 0x7357 | size: 0x1
.obj gap_03_00007357_rodata, global
.hidden gap_03_00007357_rodata
	.byte 0x00
.endobj gap_03_00007357_rodata

# .rodata:0x40 | 0x7358 | size: 0x7
.obj str_e_bero_las_00018dc0, local
	.string "e_bero"
.endobj str_e_bero_las_00018dc0

# .rodata:0x47 | 0x735F | size: 0x1
.obj gap_03_0000735F_rodata, global
.hidden gap_03_0000735F_rodata
	.byte 0x00
.endobj gap_03_0000735F_rodata

# .rodata:0x48 | 0x7360 | size: 0x7
.obj str_las_29_las_00018dc8, local
	.string "las_29"
.endobj str_las_29_las_00018dc8

# .rodata:0x4F | 0x7367 | size: 0x1
.obj gap_03_00007367_rodata, global
.hidden gap_03_00007367_rodata
	.byte 0x00
.endobj gap_03_00007367_rodata

# .rodata:0x50 | 0x7368 | size: 0x5
.obj str_fire_las_00018dd0, local
	.string "fire"
.endobj str_fire_las_00018dd0

# .rodata:0x55 | 0x736D | size: 0x3
.obj gap_03_0000736D_rodata, global
.hidden gap_03_0000736D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000736D_rodata

# .rodata:0x58 | 0x7370 | size: 0xB
.obj str_mobj_box01_las_00018dd8, local
	.string "mobj_box01"
.endobj str_mobj_box01_las_00018dd8

# .rodata:0x63 | 0x737B | size: 0x1
.obj gap_03_0000737B_rodata, global
.hidden gap_03_0000737B_rodata
	.byte 0x00
.endobj gap_03_0000737B_rodata

# .rodata:0x64 | 0x737C | size: 0x7
.obj str_item01_las_00018de4, local
	.string "item01"
.endobj str_item01_las_00018de4

# .rodata:0x6B | 0x7383 | size: 0x1
.obj gap_03_00007383_rodata, global
.hidden gap_03_00007383_rodata
	.byte 0x00
.endobj gap_03_00007383_rodata

# .rodata:0x6C | 0x7384 | size: 0xB
.obj str_mobj_box02_las_00018dec, local
	.string "mobj_box02"
.endobj str_mobj_box02_las_00018dec

# .rodata:0x77 | 0x738F | size: 0x1
.obj gap_03_0000738F_rodata, global
.hidden gap_03_0000738F_rodata
	.byte 0x00
.endobj gap_03_0000738F_rodata

# .rodata:0x78 | 0x7390 | size: 0x7
.obj str_item02_las_00018df8, local
	.string "item02"
.endobj str_item02_las_00018df8

# .rodata:0x7F | 0x7397 | size: 0x1
.obj gap_03_00007397_rodata, global
.hidden gap_03_00007397_rodata
	.byte 0x00
.endobj gap_03_00007397_rodata

# .rodata:0x80 | 0x7398 | size: 0x10
.obj str_BGM_EVT_DANGER2_las_00018e00, local
	.string "BGM_EVT_DANGER2"
.endobj str_BGM_EVT_DANGER2_las_00018e00

# .rodata:0x90 | 0x73A8 | size: 0xE
.obj str_ENV_STG8_LAS1_las_00018e10, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_00018e10

# .rodata:0x9E | 0x73B6 | size: 0x2
.obj gap_03_000073B6_rodata, global
.hidden gap_03_000073B6_rodata
	.2byte 0x0000
.endobj gap_03_000073B6_rodata

# .rodata:0xA0 | 0x73B8 | size: 0xA
.obj str_mobj_save_las_00018e20, local
	.string "mobj_save"
.endobj str_mobj_save_las_00018e20

# .rodata:0xAA | 0x73C2 | size: 0x2
.obj gap_03_000073C2_rodata, global
.hidden gap_03_000073C2_rodata
	.2byte 0x0000
.endobj gap_03_000073C2_rodata

# .rodata:0xAC | 0x73C4 | size: 0x6
.obj str_r_blk_las_00018e2c, local
	.string "r_blk"
.endobj str_r_blk_las_00018e2c

# .rodata:0xB2 | 0x73CA | size: 0x2
.obj gap_03_000073CA_rodata, global
.hidden gap_03_000073CA_rodata
	.2byte 0x0000
.endobj gap_03_000073CA_rodata

# .rodata:0xB4 | 0x73CC | size: 0x5
.obj str_hiPCTd_las_00018e34, local
	.string "hi%d"
.endobj str_hiPCTd_las_00018e34

# .rodata:0xB9 | 0x73D1 | size: 0x7
.obj gap_03_000073D1_rodata, global
.hidden gap_03_000073D1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000073D1_rodata

# 0x000419C8..0x00041F10 | size: 0x548
.data
.balign 8

# .data:0x0 | 0x419C8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x419D0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x419D4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x419D8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x419DC | size: 0x4
.obj gap_04_000419DC_data, global
.hidden gap_04_000419DC_data
	.4byte 0x00000000
.endobj gap_04_000419DC_data

# .data:0x18 | 0x419E0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x419E8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x419EC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x419F0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x419F8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x419FC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x41A00 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x41A04 | size: 0x4
.obj gap_04_00041A04_data, global
.hidden gap_04_00041A04_data
	.4byte 0x00000000
.endobj gap_04_00041A04_data

# .data:0x40 | 0x41A08 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x41A10 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x41A14 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x41A18 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00018d80
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00018d8c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x41A70 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00018d80
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00018d8c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x41AC8 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_1_las_00018d98
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_2_las_00018da4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x41B20 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_1_las_00018d98
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_2_las_00018da4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x41B78 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00018db0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_28_las_00018db8
	.4byte str_e_bero_las_00018dc0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_las_00018dc0
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_29_las_00018dc8
	.4byte str_w_bero_las_00018db0
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

# .data:0x264 | 0x41C2C | size: 0xB8
.obj rousoku_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000000C
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
	.4byte str_fire_las_00018dd0
	.4byte 0x00000003
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF24A7C80
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

# .data:0x31C | 0x41CE4 | size: 0x88
.obj mobj_box01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box01_las_00018dd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item01_las_00018de4
	.4byte 0x00000096
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item01_las_00018de4
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box01_las_00018dd8
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item01_las_00018de4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box01

# .data:0x3A4 | 0x41D6C | size: 0x88
.obj mobj_box02, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box02_las_00018dec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item02_las_00018df8
	.4byte 0x0000009C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item02_las_00018df8
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box02_las_00018dec
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item02_las_00018df8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box02

# .data:0x42C | 0x41DF4 | size: 0x11C
.obj las_30_init_evt_16_data_41DF4, global
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER2_las_00018e00
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_00018e10
	.4byte 0x00000021
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
	.4byte str_mobj_save_las_00018e20
	.4byte 0x0000047E
	.4byte 0x0000003C
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_r_blk_las_00018e2c
	.4byte 0x0000000A
	.4byte 0xFFFFFBE6
	.4byte 0x0000035C
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box01_las_00018dd8
	.4byte 0xFFFFFB82
	.4byte 0x00000320
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box01
	.4byte 0xF8406CA9
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_box02_las_00018dec
	.4byte 0x0000041A
	.4byte 0x00000000
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box02
	.4byte 0xF8406CAA
	.4byte 0x0001005E
	.4byte rousoku_init
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj las_30_init_evt_16_data_41DF4

# 0x00000240..0x00000248 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x240 | size: 0x8
.obj name, local
	.skip 0x8
.endobj name
