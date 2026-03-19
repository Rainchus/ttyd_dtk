.include "macros.inc"
.file "kpa_05.o"

# 0x00000FC4..0x00001008 | size: 0x44
.text
.balign 4

# .text:0x0 | 0xFC4 | size: 0x44
.fn kpa_get_level, local
/* 00000FC4 00001088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000FC8 0000108C  7C 08 02 A6 */	mflr r0
/* 00000FCC 00001090  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000FD0 00001094  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000FD4 00001098  7C 7E 1B 78 */	mr r30, r3
/* 00000FD8 0000109C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000FDC 000010A0  4B FF FB E1 */	bl kpaGetLevel
/* 00000FE0 000010A4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000FE4 000010A8  7C 65 1B 78 */	mr r5, r3
/* 00000FE8 000010AC  7F C3 F3 78 */	mr r3, r30
/* 00000FEC 000010B0  4B FF FB D1 */	bl evtSetValue
/* 00000FF0 000010B4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000FF4 000010B8  38 60 00 02 */	li r3, 0x2
/* 00000FF8 000010BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000FFC 000010C0  7C 08 03 A6 */	mtlr r0
/* 00001000 000010C4  38 21 00 10 */	addi r1, r1, 0x10
/* 00001004 000010C8  4E 80 00 20 */	blr
.endfn kpa_get_level

# 0x000008F8..0x00000938 | size: 0x40
.rodata
.balign 8

# .rodata:0x0 | 0x8F8 | size: 0x7
.obj str_a_magu_kpa_00001d88, local
	.string "a_magu"
.endobj str_a_magu_kpa_00001d88

# .rodata:0x7 | 0x8FF | size: 0x1
.obj gap_03_000008FF_rodata, global
.hidden gap_03_000008FF_rodata
	.byte 0x00
.endobj gap_03_000008FF_rodata

# .rodata:0x8 | 0x900 | size: 0x1
.obj zero_kpa_00001d90, local
	.byte 0x00
.endobj zero_kpa_00001d90

# .rodata:0x9 | 0x901 | size: 0x3
.obj gap_03_00000901_rodata, global
.hidden gap_03_00000901_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000901_rodata

# .rodata:0xC | 0x904 | size: 0x7
.obj str_splash_kpa_00001d94, local
	.string "splash"
.endobj str_splash_kpa_00001d94

# .rodata:0x13 | 0x90B | size: 0x1
.obj gap_03_0000090B_rodata, global
.hidden gap_03_0000090B_rodata
	.byte 0x00
.endobj gap_03_0000090B_rodata

# .rodata:0x14 | 0x90C | size: 0x7
.obj str_kpa_06_kpa_00001d9c, local
	.string "kpa_06"
.endobj str_kpa_06_kpa_00001d9c

# .rodata:0x1B | 0x913 | size: 0x1
.obj gap_03_00000913_rodata, global
.hidden gap_03_00000913_rodata
	.byte 0x00
.endobj gap_03_00000913_rodata

# .rodata:0x1C | 0x914 | size: 0xD
.obj str_kpa_next_map_kpa_00001da4, local
	.string "kpa_next_map"
.endobj str_kpa_next_map_kpa_00001da4

# .rodata:0x29 | 0x921 | size: 0x3
.obj gap_03_00000921_rodata, global
.hidden gap_03_00000921_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000921_rodata

# .rodata:0x2C | 0x924 | size: 0x3
.obj str_me_kpa_00001db4, local
	.string "me"
.endobj str_me_kpa_00001db4

# .rodata:0x2F | 0x927 | size: 0x1
.obj gap_03_00000927_rodata, global
.hidden gap_03_00000927_rodata
	.byte 0x00
.endobj gap_03_00000927_rodata

# .rodata:0x30 | 0x928 | size: 0x9
.obj str_anm_magu_kpa_00001db8, local
	.string "anm_magu"
.endobj str_anm_magu_kpa_00001db8

# .rodata:0x39 | 0x931 | size: 0x7
.obj gap_03_00000931_rodata, global
.hidden gap_03_00000931_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000931_rodata

# 0x00006090..0x00006760 | size: 0x6D0
.data
.balign 8

# .data:0x0 | 0x6090 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6098 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x609C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x60A0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x60A4 | size: 0x4
.obj gap_04_000060A4_data, global
.hidden gap_04_000060A4_data
	.4byte 0x00000000
.endobj gap_04_000060A4_data

# .data:0x18 | 0x60A8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x60B0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x60B4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x60B8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x60C0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x60C4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x60C8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x60CC | size: 0x4
.obj gap_04_000060CC_data, global
.hidden gap_04_000060CC_data
	.4byte 0x00000000
.endobj gap_04_000060CC_data

# .data:0x40 | 0x60D0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x60D8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x60DC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x60E0 | size: 0x1D8
.obj kpa_act_stg3_mobj, local
	.4byte 0x0000000D
	.4byte 0xF239E080
	.4byte 0xF24C0A80
	.4byte 0x00000003
	.4byte 0xF24A7E80
	.4byte 0x0000000D
	.4byte 0xF23FBC80
	.4byte 0xF24C0A80
	.4byte 0x00000002
	.4byte 0xF24A8280
	.4byte 0x0000000E
	.4byte 0xF2427880
	.4byte 0xF24DFE80
	.4byte 0x00000003
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0xF2456680
	.4byte 0xF24D9A80
	.4byte 0x00000005
	.4byte 0xF246F680
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF247BE80
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF2488680
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF2494E80
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF24A1680
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF24ADE80
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF24BA680
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF24C6E80
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0xF24E6280
	.4byte 0xF24ADE80
	.4byte 0x00000001
	.4byte 0xF24F2A80
	.4byte 0xF24ADE80
	.4byte 0x00000001
	.4byte 0xF24F2A80
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0xF24FF280
	.4byte 0xF24BA680
	.4byte 0x00000000
	.4byte 0xF250BA80
	.4byte 0xF24A7A80
	.4byte 0x00000001
	.4byte 0xF250BA80
	.4byte 0xF24BA680
	.4byte 0x0000000E
	.4byte 0xF2508880
	.4byte 0xF24C6E80
	.4byte 0x00000006
	.4byte 0xF24A7C80
	.4byte 0x00000001
	.4byte 0xF2518280
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0xF2524A80
	.4byte 0xF24ADE80
	.4byte 0x00000001
	.4byte 0xF2524A80
	.4byte 0xF24BA680
	.4byte 0x00000001
	.4byte 0xF2531280
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF255CE80
	.4byte 0xF24A7A80
	.4byte 0x00000005
	.4byte 0xF2569680
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF2556A80
	.4byte 0xF24D3680
	.4byte 0x00000005
	.4byte 0xF2595280
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF25A1A80
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF25AE280
	.4byte 0xF24B4280
	.4byte 0x00000005
	.4byte 0xF25AE280
	.4byte 0xF24C0A80
	.4byte 0x00000010
	.4byte 0xF25C0E80
	.4byte 0xF24A7A80
	.4byte jumpstand_evt
	.4byte 0x00000005
	.4byte 0xF25D3A80
	.4byte 0xF24B4280
	.4byte 0x00000005
	.4byte 0xF25D3A80
	.4byte 0xF24C0A80
	.4byte 0x00000005
	.4byte 0xF25E0280
	.4byte 0xF24ADE80
	.4byte 0x00000005
	.4byte 0xF25ECA80
	.4byte 0xF24ADE80
	.4byte 0x0000000B
	.4byte 0xF2618680
	.4byte 0xF24D9A80
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg3_mobj

# .data:0x228 | 0x62B8 | size: 0x13C
.obj kpa_act_stg3_item, local
	.4byte 0x00000000
	.4byte 0xF247BE80
	.4byte 0xF24D3680
	.4byte 0x00000000
	.4byte 0xF2488680
	.4byte 0xF24D3680
	.4byte 0x00000000
	.4byte 0xF24A1680
	.4byte 0xF24D3680
	.4byte 0x00000000
	.4byte 0xF24ADE80
	.4byte 0xF24D3680
	.4byte 0x00000000
	.4byte 0xF24E6280
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF24F2A80
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF24FF280
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF24FF280
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF24FF280
	.4byte 0xF24B4280
	.4byte 0x00000000
	.4byte 0xF250BA80
	.4byte 0xF24B4280
	.4byte 0x00000000
	.4byte 0xF2518280
	.4byte 0xF24B4280
	.4byte 0x00000000
	.4byte 0xF2518280
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF2518280
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF2524A80
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF2531280
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF253DA80
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF2556A80
	.4byte 0xF24BD880
	.4byte 0x00000000
	.4byte 0xF2563280
	.4byte 0xF24BD880
	.4byte 0x00000000
	.4byte 0xF256FA80
	.4byte 0xF24BD880
	.4byte 0x00000000
	.4byte 0xF25C0E80
	.4byte 0xF24BD880
	.4byte 0x00000000
	.4byte 0xF25C0E80
	.4byte 0xF24C6E80
	.4byte 0x00000000
	.4byte 0xF25C0E80
	.4byte 0xF24D0480
	.4byte 0x00000000
	.4byte 0xF25FF680
	.4byte 0xF24AAC80
	.4byte 0x00000000
	.4byte 0xF25FF680
	.4byte 0xF24B4280
	.4byte 0x00000000
	.4byte 0xF260BE80
	.4byte 0xF24AAC80
	.4byte 0x00000000
	.4byte 0xF260BE80
	.4byte 0xF24B4280
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg3_item

# .data:0x364 | 0x63F4 | size: 0x170
.obj kpa_fall, local
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_koopa_chk_dead
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_a_magu_kpa_00001d88
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24A8680
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24A8E80
	.4byte 0x0002005B
	.4byte kpa_get_level
	.4byte 0xFE363C83
	.4byte 0x00010022
	.4byte 0xFE363C83
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7DB3
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A814C
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A8680
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A8C80
	.4byte 0x00000031
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_kpa_00001d90
	.4byte str_splash_kpa_00001d94
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte kpa_fall_sub_15_data_E44
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte kpa_dead_15_data_BA4
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_fall

# .data:0x4D4 | 0x6564 | size: 0xF0
.obj jumpstand_evt, local
	.4byte 0x0001005F
	.4byte 0xFD050F8F
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_koopa_get_level
	.4byte 0xF5DE0647
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_kpa_06_kpa_00001d9c
	.4byte str_kpa_next_map_kpa_00001da4
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000190
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_cam_off
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_me_kpa_00001db4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000320
	.4byte 0x000C005B
	.4byte evt_mario_jump_jumpstand
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00000FA0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jumpstand_evt

# .data:0x5C4 | 0x6654 | size: 0x5C
.obj npcEnt, local
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x620 | 0x66B0 | size: 0xB0
.obj kpa_05_init_evt_15_data_66B0, global
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte kpa_init_15_data_5B0
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFA24
	.4byte 0x00000096
	.4byte 0xFFFFFFFB
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg3_mobj
	.4byte 0x0001005E
	.4byte kpa_read_mobj_15_data_674
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg3_item
	.4byte 0x0001005E
	.4byte kpa_read_item_15_data_B1C
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_magu_kpa_00001db8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte kpa_fall
	.4byte 0x0004005B
	.4byte kpa_status_init_15_text_224
	.4byte 0x00000003
	.4byte 0xF5DE0645
	.4byte 0xF5DE0646
	.4byte 0x00020032
	.4byte 0xF70F2E81
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte kpa_stage_start_15_data_11A8
	.4byte 0x0002005D
	.4byte kpa_time_15_data_14A4
	.4byte 0xFD050F8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_05_init_evt_15_data_66B0
