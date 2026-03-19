.include "macros.inc"
.file "kpa_03.o"

# 0x000008C0..0x000008E8 | size: 0x28
.rodata
.balign 8

# .rodata:0x0 | 0x8C0 | size: 0x7
.obj str_kpa_04_kpa_00001d50, local
	.string "kpa_04"
.endobj str_kpa_04_kpa_00001d50

# .rodata:0x7 | 0x8C7 | size: 0x1
.obj gap_03_000008C7_rodata, global
.hidden gap_03_000008C7_rodata
	.byte 0x00
.endobj gap_03_000008C7_rodata

# .rodata:0x8 | 0x8C8 | size: 0xD
.obj str_kpa_next_map_kpa_00001d58, local
	.string "kpa_next_map"
.endobj str_kpa_next_map_kpa_00001d58

# .rodata:0x15 | 0x8D5 | size: 0x3
.obj gap_03_000008D5_rodata, global
.hidden gap_03_000008D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008D5_rodata

# .rodata:0x18 | 0x8D8 | size: 0x3
.obj str_me_kpa_00001d68, local
	.string "me"
.endobj str_me_kpa_00001d68

# .rodata:0x1B | 0x8DB | size: 0x1
.obj gap_03_000008DB_rodata, global
.hidden gap_03_000008DB_rodata
	.byte 0x00
.endobj gap_03_000008DB_rodata

# .rodata:0x1C | 0x8DC | size: 0x8
.obj str_anm_umi_kpa_00001d6c, local
	.string "anm_umi"
.endobj str_anm_umi_kpa_00001d6c

# .rodata:0x24 | 0x8E4 | size: 0x4
.obj gap_03_000008E4_rodata, global
.hidden gap_03_000008E4_rodata
	.4byte 0x00000000
.endobj gap_03_000008E4_rodata

# 0x000054A0..0x00005CC0 | size: 0x820
.data
.balign 8

# .data:0x0 | 0x54A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x54A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x54AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x54B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x54B4 | size: 0x4
.obj gap_04_000054B4_data, global
.hidden gap_04_000054B4_data
	.4byte 0x00000000
.endobj gap_04_000054B4_data

# .data:0x18 | 0x54B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x54C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x54C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x54C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x54D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x54D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x54D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x54DC | size: 0x4
.obj gap_04_000054DC_data, global
.hidden gap_04_000054DC_data
	.4byte 0x00000000
.endobj gap_04_000054DC_data

# .data:0x40 | 0x54E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x54E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x54EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x54F0 | size: 0x344
.obj kpa_act_stg2_mobj, local
	.4byte 0x0000000C
	.4byte 0xF2368E80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2394A80
	.4byte 0xF24D9A80
	.4byte 0x0000000C
	.4byte 0xF2394A80
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF23C0680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF23C0680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF23C0680
	.4byte 0xF24C0A80
	.4byte 0x00000000
	.4byte 0xF23E5E80
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF23F2680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF23F2680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF23F2680
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF2430E80
	.4byte 0xF24ADE80
	.4byte 0x00000004
	.4byte 0xF243D680
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF2449E80
	.4byte 0xF24ADE80
	.4byte 0x00000004
	.4byte 0xF2449E80
	.4byte 0xF24E6280
	.4byte 0x0000000C
	.4byte 0xF245CA80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF246F680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF246F680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF246F680
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF246F680
	.4byte 0xF24F2A80
	.4byte 0x00000004
	.4byte 0xF246F680
	.4byte 0xF24FF280
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24F2A80
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24FF280
	.4byte 0x0000000C
	.4byte 0xF24B4280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF24C6E80
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF24D3680
	.4byte 0xF24ADE80
	.4byte 0x00000004
	.4byte 0xF24DFE80
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF24EC680
	.4byte 0xF24ADE80
	.4byte 0x0000000C
	.4byte 0xF24FF280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2524A80
	.4byte 0xF24ADE80
	.4byte 0x00000004
	.4byte 0xF2531280
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF253DA80
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF254A280
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF2556A80
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF2563280
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF256FA80
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF257C280
	.4byte 0xF24BA680
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF24ADE80
	.4byte 0x00000004
	.4byte 0xF2524A80
	.4byte 0xF24F2A80
	.4byte 0x00000004
	.4byte 0xF2524A80
	.4byte 0xF24FF280
	.4byte 0x00000004
	.4byte 0xF2531280
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF253DA80
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF254A280
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF2556A80
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF2563280
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF256FA80
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF257C280
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF24F2A80
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF24FF280
	.4byte 0x0000000C
	.4byte 0xF259B680
	.4byte 0xF24A7A80
	.4byte 0x00000010
	.4byte 0xF25C7280
	.4byte 0xF24A7A80
	.4byte jumpstand_evt
	.4byte 0x00000004
	.4byte 0xF25F2E80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF25FF680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF25FF680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF260BE80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF260BE80
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF260BE80
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF260BE80
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF260BE80
	.4byte 0xF24F2A80
	.4byte 0x00000004
	.4byte 0xF260BE80
	.4byte 0xF24FF280
	.4byte 0x00000004
	.4byte 0xF2618680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2618680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2618680
	.4byte 0xF24C0A80
	.4byte 0x0000000B
	.4byte 0xF261EA80
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF2618680
	.4byte 0xF24E6280
	.4byte 0x00000004
	.4byte 0xF2618680
	.4byte 0xF24F2A80
	.4byte 0x00000004
	.4byte 0xF2618680
	.4byte 0xF24FF280
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg2_mobj

# .data:0x394 | 0x5834 | size: 0x154
.obj kpa_act_stg2_item, local
	.4byte 0x00000000
	.4byte 0xF23A1280
	.4byte 0xF24DCC80
	.4byte 0x00000000
	.4byte 0xF23ADA80
	.4byte 0xF24DCC80
	.4byte 0x00000000
	.4byte 0xF23CCE80
	.4byte 0xF24AAC80
	.4byte 0x00000000
	.4byte 0xF23CCE80
	.4byte 0xF24B7480
	.4byte 0x00000000
	.4byte 0xF23D9680
	.4byte 0xF24AAC80
	.4byte 0x00000000
	.4byte 0xF23D9680
	.4byte 0xF24B7480
	.4byte 0x00000000
	.4byte 0xF23E5E80
	.4byte 0xF24AAC80
	.4byte 0x00000000
	.4byte 0xF23E5E80
	.4byte 0xF24B7480
	.4byte 0x00000000
	.4byte 0xF24C6E80
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF24D3680
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF24DFE80
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF24EC680
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF253DA80
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF254A280
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF2556A80
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF2563280
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF256FA80
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF2543E80
	.4byte 0xF24CD280
	.4byte 0x00000000
	.4byte 0xF2543E80
	.4byte 0xF24D9A80
	.4byte 0x00000000
	.4byte 0xF2550680
	.4byte 0xF24CD280
	.4byte 0x00000000
	.4byte 0xF2550680
	.4byte 0xF24D9A80
	.4byte 0x00000000
	.4byte 0xF255CE80
	.4byte 0xF24CD280
	.4byte 0x00000000
	.4byte 0xF255CE80
	.4byte 0xF24D9A80
	.4byte 0x00000000
	.4byte 0xF2569680
	.4byte 0xF24CD280
	.4byte 0x00000000
	.4byte 0xF2569680
	.4byte 0xF24D9A80
	.4byte 0x00000000
	.4byte 0xF25C7280
	.4byte 0xF24F5C80
	.4byte 0x00000000
	.4byte 0xF25C7280
	.4byte 0xF24FF280
	.4byte 0x00000000
	.4byte 0xF25C7280
	.4byte 0xF2508880
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg2_item

# .data:0x4E8 | 0x5988 | size: 0xA4
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
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFFFFFFEC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFBD3E280
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

# .data:0x58C | 0x5A2C | size: 0x98
.obj kairyu_evt, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718883
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF51
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_mario_set_hosei_xyz
	.4byte 0x00000000
	.4byte 0xF24A774D
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kairyu_evt

# .data:0x624 | 0x5AC4 | size: 0xF0
.obj jumpstand_evt, local
	.4byte 0x0001005F
	.4byte 0xFD050F8F
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_koopa_get_level
	.4byte 0xF5DE0647
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_kpa_04_kpa_00001d50
	.4byte str_kpa_next_map_kpa_00001d58
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
	.4byte str_me_kpa_00001d68
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x000002BC
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

# .data:0x714 | 0x5BB4 | size: 0x5C
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

# .data:0x770 | 0x5C10 | size: 0xB0
.obj kpa_03_init_evt_15_data_5C10, global
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte kpa_init_15_data_5B0
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFA88
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg2_mobj
	.4byte 0x0001005E
	.4byte kpa_read_mobj_15_data_674
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg2_item
	.4byte 0x0001005E
	.4byte kpa_read_item_15_data_B1C
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_umi_kpa_00001d6c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte kpa_fall
	.4byte 0x0004005B
	.4byte kpa_status_init_15_text_224
	.4byte 0x00000002
	.4byte 0xF5DE0645
	.4byte 0xF5DE0646
	.4byte 0x00020032
	.4byte 0xF70F2E81
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte kpa_stage_start_15_data_11A8
	.4byte 0x0001005C
	.4byte kairyu_evt
	.4byte 0x0002005D
	.4byte kpa_time_15_data_14A4
	.4byte 0xFD050F8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_03_init_evt_15_data_5C10
