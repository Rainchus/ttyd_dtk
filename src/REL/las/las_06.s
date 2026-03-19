.include "macros.inc"
.file "las_06.o"

# 0x000048E8..0x00004950 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x48E8 | size: 0x68
.fn make_name, local
/* 000048E8 000049B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000048EC 000049B8  7C 08 02 A6 */	mflr r0
/* 000048F0 000049BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 000048F4 000049C0  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000048F8 000049C4  7C 7E 1B 78 */	mr r30, r3
/* 000048FC 000049C8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004900 000049CC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004904 000049D0  4B FF B8 39 */	bl evtGetValue
/* 00004908 000049D4  3C 80 00 00 */	lis r4, str_hiPCTd_las_00012548@ha
/* 0000490C 000049D8  3C C0 00 00 */	lis r6, name@ha
/* 00004910 000049DC  7C 65 1B 78 */	mr r5, r3
/* 00004914 000049E0  38 66 00 00 */	addi r3, r6, name@l
/* 00004918 000049E4  38 84 00 00 */	addi r4, r4, str_hiPCTd_las_00012548@l
/* 0000491C 000049E8  4C C6 31 82 */	crclr cr1eq
/* 00004920 000049EC  4B FF B8 1D */	bl sprintf
/* 00004924 000049F0  3C 60 00 00 */	lis r3, name@ha
/* 00004928 000049F4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000492C 000049F8  38 A3 00 00 */	addi r5, r3, name@l
/* 00004930 000049FC  7F C3 F3 78 */	mr r3, r30
/* 00004934 00004A00  4B FF B8 09 */	bl evtSetValue
/* 00004938 00004A04  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000493C 00004A08  38 60 00 02 */	li r3, 0x2
/* 00004940 00004A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004944 00004A10  7C 08 03 A6 */	mtlr r0
/* 00004948 00004A14  38 21 00 10 */	addi r1, r1, 0x10
/* 0000494C 00004A18  4E 80 00 20 */	blr
.endfn make_name

# 0x000009E8..0x00000AE8 | size: 0x100
.rodata
.balign 8

# .rodata:0x0 | 0x9E8 | size: 0xA
.obj str_S_door1_1_las_00012450, local
	.string "S_door1_1"
.endobj str_S_door1_1_las_00012450

# .rodata:0xA | 0x9F2 | size: 0x2
.obj gap_03_000009F2_rodata, global
.hidden gap_03_000009F2_rodata
	.2byte 0x0000
.endobj gap_03_000009F2_rodata

# .rodata:0xC | 0x9F4 | size: 0xA
.obj str_S_door1_2_las_0001245c, local
	.string "S_door1_2"
.endobj str_S_door1_2_las_0001245c

# .rodata:0x16 | 0x9FE | size: 0x2
.obj gap_03_000009FE_rodata, global
.hidden gap_03_000009FE_rodata
	.2byte 0x0000
.endobj gap_03_000009FE_rodata

# .rodata:0x18 | 0xA00 | size: 0xA
.obj str_S_door2_1_las_00012468, local
	.string "S_door2_1"
.endobj str_S_door2_1_las_00012468

# .rodata:0x22 | 0xA0A | size: 0x2
.obj gap_03_00000A0A_rodata, global
.hidden gap_03_00000A0A_rodata
	.2byte 0x0000
.endobj gap_03_00000A0A_rodata

# .rodata:0x24 | 0xA0C | size: 0xA
.obj str_S_door2_2_las_00012474, local
	.string "S_door2_2"
.endobj str_S_door2_2_las_00012474

# .rodata:0x2E | 0xA16 | size: 0x2
.obj gap_03_00000A16_rodata, global
.hidden gap_03_00000A16_rodata
	.2byte 0x0000
.endobj gap_03_00000A16_rodata

# .rodata:0x30 | 0xA18 | size: 0x7
.obj str_w_bero_las_00012480, local
	.string "w_bero"
.endobj str_w_bero_las_00012480

# .rodata:0x37 | 0xA1F | size: 0x1
.obj gap_03_00000A1F_rodata, global
.hidden gap_03_00000A1F_rodata
	.byte 0x00
.endobj gap_03_00000A1F_rodata

# .rodata:0x38 | 0xA20 | size: 0x7
.obj str_las_05_las_00012488, local
	.string "las_05"
.endobj str_las_05_las_00012488

# .rodata:0x3F | 0xA27 | size: 0x1
.obj gap_03_00000A27_rodata, global
.hidden gap_03_00000A27_rodata
	.byte 0x00
.endobj gap_03_00000A27_rodata

# .rodata:0x40 | 0xA28 | size: 0x9
.obj str_e_bero_1_las_00012490, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_00012490

# .rodata:0x49 | 0xA31 | size: 0x3
.obj gap_03_00000A31_rodata, global
.hidden gap_03_00000A31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A31_rodata

# .rodata:0x4C | 0xA34 | size: 0x7
.obj str_e_bero_las_0001249c, local
	.string "e_bero"
.endobj str_e_bero_las_0001249c

# .rodata:0x53 | 0xA3B | size: 0x1
.obj gap_03_00000A3B_rodata, global
.hidden gap_03_00000A3B_rodata
	.byte 0x00
.endobj gap_03_00000A3B_rodata

# .rodata:0x54 | 0xA3C | size: 0x7
.obj str_las_07_las_000124a4, local
	.string "las_07"
.endobj str_las_07_las_000124a4

# .rodata:0x5B | 0xA43 | size: 0x1
.obj gap_03_00000A43_rodata, global
.hidden gap_03_00000A43_rodata
	.byte 0x00
.endobj gap_03_00000A43_rodata

# .rodata:0x5C | 0xA44 | size: 0x9
.obj str_w_bero_1_las_000124ac, local
	.string "w_bero_1"
.endobj str_w_bero_1_las_000124ac

# .rodata:0x65 | 0xA4D | size: 0x3
.obj gap_03_00000A4D_rodata, global
.hidden gap_03_00000A4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A4D_rodata

# .rodata:0x68 | 0xA50 | size: 0x5
.obj str_fire_las_000124b8, local
	.string "fire"
.endobj str_fire_las_000124b8

# .rodata:0x6D | 0xA55 | size: 0x3
.obj gap_03_00000A55_rodata, global
.hidden gap_03_00000A55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A55_rodata

# .rodata:0x70 | 0xA58 | size: 0xE
.obj str_BGM_STG8_LST1_las_000124c0, local
	.string "BGM_STG8_LST1"
.endobj str_BGM_STG8_LST1_las_000124c0

# .rodata:0x7E | 0xA66 | size: 0x2
.obj gap_03_00000A66_rodata, global
.hidden gap_03_00000A66_rodata
	.2byte 0x0000
.endobj gap_03_00000A66_rodata

# .rodata:0x80 | 0xA68 | size: 0xE
.obj str_ENV_STG8_LAS1_las_000124d0, local
	.string "ENV_STG8_LAS1"
.endobj str_ENV_STG8_LAS1_las_000124d0

# .rodata:0x8E | 0xA76 | size: 0x2
.obj gap_03_00000A76_rodata, global
.hidden gap_03_00000A76_rodata
	.2byte 0x0000
.endobj gap_03_00000A76_rodata

# .rodata:0x90 | 0xA78 | size: 0x7
.obj str_mobj00_las_000124e0, local
	.string "mobj00"
.endobj str_mobj00_las_000124e0

# .rodata:0x97 | 0xA7F | size: 0x1
.obj gap_03_00000A7F_rodata, global
.hidden gap_03_00000A7F_rodata
	.byte 0x00
.endobj gap_03_00000A7F_rodata

# .rodata:0x98 | 0xA80 | size: 0x15
.obj str_スーパーキラー大砲１_las_000124e8, local
	.4byte 0x8358815B
	.4byte 0x8370815B
	.4byte 0x834C8389
	.4byte 0x815B91E5
	.4byte 0x96438250
	.byte 0x00
.endobj str_スーパーキラー大砲１_las_000124e8

# .rodata:0xAD | 0xA95 | size: 0x3
.obj gap_03_00000A95_rodata, global
.hidden gap_03_00000A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A95_rodata

# .rodata:0xB0 | 0xA98 | size: 0x15
.obj str_スーパーキラー大砲２_las_00012500, local
	.4byte 0x8358815B
	.4byte 0x8370815B
	.4byte 0x834C8389
	.4byte 0x815B91E5
	.4byte 0x96438251
	.byte 0x00
.endobj str_スーパーキラー大砲２_las_00012500

# .rodata:0xC5 | 0xAAD | size: 0x3
.obj gap_03_00000AAD_rodata, global
.hidden gap_03_00000AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AAD_rodata

# .rodata:0xC8 | 0xAB0 | size: 0x15
.obj str_スーパーキラー大砲３_las_00012518, local
	.4byte 0x8358815B
	.4byte 0x8370815B
	.4byte 0x834C8389
	.4byte 0x815B91E5
	.4byte 0x96438252
	.byte 0x00
.endobj str_スーパーキラー大砲３_las_00012518

# .rodata:0xDD | 0xAC5 | size: 0x3
.obj gap_03_00000AC5_rodata, global
.hidden gap_03_00000AC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AC5_rodata

# .rodata:0xE0 | 0xAC8 | size: 0x15
.obj str_スーパーキラー大砲４_las_00012530, local
	.4byte 0x8358815B
	.4byte 0x8370815B
	.4byte 0x834C8389
	.4byte 0x815B91E5
	.4byte 0x96438253
	.byte 0x00
.endobj str_スーパーキラー大砲４_las_00012530

# .rodata:0xF5 | 0xADD | size: 0x3
.obj gap_03_00000ADD_rodata, global
.hidden gap_03_00000ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ADD_rodata

# .rodata:0xF8 | 0xAE0 | size: 0x5
.obj str_hiPCTd_las_00012548, local
	.string "hi%d"
.endobj str_hiPCTd_las_00012548

# .rodata:0xFD | 0xAE5 | size: 0x3
.obj gap_03_00000AE5_rodata, global
.hidden gap_03_00000AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AE5_rodata

# 0x000039C8..0x00003DC8 | size: 0x400
.data
.balign 8

# .data:0x0 | 0x39C8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x39D0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x39D4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x39D8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x39DC | size: 0x4
.obj gap_04_000039DC_data, global
.hidden gap_04_000039DC_data
	.4byte 0x00000000
.endobj gap_04_000039DC_data

# .data:0x18 | 0x39E0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x39E8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x39EC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x39F0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x39F8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x39FC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x3A00 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3A04 | size: 0x4
.obj gap_04_00003A04_data, global
.hidden gap_04_00003A04_data
	.4byte 0x00000000
.endobj gap_04_00003A04_data

# .data:0x40 | 0x3A08 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x3A10 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3A14 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x3A18 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00012450
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_0001245c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x3A70 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00012450
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_0001245c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x3AC8 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00012468
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00012474
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0x158 | 0x3B20 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00012468
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_00012474
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x1B0 | 0x3B78 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00012480
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_05_las_00012488
	.4byte str_e_bero_1_las_00012490
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_0001249c
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_07_las_000124a4
	.4byte str_w_bero_1_las_000124ac
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

# .data:0x264 | 0x3C2C | size: 0xB8
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
	.4byte str_fire_las_000124b8
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

# .data:0x31C | 0x3CE4 | size: 0xE0
.obj las_06_init_evt_16_data_3CE4, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST1_las_000124c0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS1_las_000124d0
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
	.4byte str_mobj00_las_000124e0
	.4byte 0xFFFFFDDA
	.4byte 0x000001E0
	.4byte 0x0000003C
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0xF8406C94
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_スーパーキラー大砲１_las_000124e8
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_スーパーキラー大砲１_las_000124e8
	.4byte str_スーパーキラー大砲２_las_00012500
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_スーパーキラー大砲３_las_00012518
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_スーパーキラー大砲３_las_00012518
	.4byte str_スーパーキラー大砲４_las_00012530
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte rousoku_init
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_06_init_evt_16_data_3CE4

# .data:0x3FC | 0x3DC4 | size: 0x4
.obj gap_04_00003DC4_data, global
.hidden gap_04_00003DC4_data
	.4byte 0x00000000
.endobj gap_04_00003DC4_data

# 0x00000050..0x00000058 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x50 | size: 0x8
.obj name, local
	.skip 0x8
.endobj name
