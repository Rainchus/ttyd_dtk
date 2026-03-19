.include "macros.inc"
.file "kpa_02.o"

# 0x00000000..0x00000010 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_nok_00_kpa_00001490, local
	.string "nok_00"
.endobj str_nok_00_kpa_00001490

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_w_bero_kpa_00001498, local
	.string "w_bero"
.endobj str_w_bero_kpa_00001498

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# 0x00000000..0x00000560 | size: 0x560
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14 | size: 0x4
.obj gap_04_00000014_data, global
.hidden gap_04_00000014_data
	.4byte 0x00000000
.endobj gap_04_00000014_data

# .data:0x18 | 0x18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3C | size: 0x4
.obj gap_04_0000003C_data, global
.hidden gap_04_0000003C_data
	.4byte 0x00000000
.endobj gap_04_0000003C_data

# .data:0x40 | 0x40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50 | size: 0x8
.obj _three$localstatic4$sqrtf, local
	.4byte 0x40080000
	.4byte 0x00000000
.endobj _three$localstatic4$sqrtf

# .data:0x58 | 0x58 | size: 0x8
.obj _half$localstatic3$sqrtf, local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj _half$localstatic3$sqrtf

# .data:0x60 | 0x60 | size: 0x25C
.obj kpa_act_stg1_mobj, local
	.4byte 0x00000004
	.4byte 0xF2375680
	.4byte 0xF24C6E80
	.4byte 0x00000004
	.4byte 0xF2394A80
	.4byte 0xF24C6E80
	.4byte 0x00000000
	.4byte 0xF23A1280
	.4byte 0xF24C6E80
	.4byte 0x00000004
	.4byte 0xF23ADA80
	.4byte 0xF24C6E80
	.4byte 0x00000004
	.4byte 0xF23ADA80
	.4byte 0xF24EC680
	.4byte 0x00000004
	.4byte 0xF23BA280
	.4byte 0xF24C6E80
	.4byte 0x00000004
	.4byte 0xF23C6A80
	.4byte 0xF24C6E80
	.4byte 0x00000009
	.4byte 0xF23EC280
	.4byte 0xF24A7A80
	.4byte 0x00000007
	.4byte 0xF240E880
	.4byte 0xF24ADE80
	.4byte 0x00000079
	.4byte 0x0000000A
	.4byte 0xF2417E80
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0xF2449E80
	.4byte 0xF24C6E80
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24ADE80
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0xF24ADE80
	.4byte 0x00000007
	.4byte 0xF24DCC80
	.4byte 0xF24ADE80
	.4byte 0x00000079
	.4byte 0x0000000A
	.4byte 0xF24E6280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF249B280
	.4byte 0xF24D9A80
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24D9A80
	.4byte 0x00000004
	.4byte 0xF24B4280
	.4byte 0xF24D9A80
	.4byte 0x00000004
	.4byte 0xF24C0A80
	.4byte 0xF24D9A80
	.4byte 0x00000000
	.4byte 0xF2524A80
	.4byte 0xF24DFE80
	.4byte 0x00000009
	.4byte 0xF2537680
	.4byte 0xF24A7A80
	.4byte 0x00000009
	.4byte 0xF2563280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF256FA80
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF256FA80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF257C280
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF257C280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF257C280
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2588A80
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF2595280
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF2595280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2595280
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2595280
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF2595280
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF25A1A80
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF25A1A80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF25A1A80
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF25A1A80
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF25A1A80
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF25A1A80
	.4byte 0xF24D9A80
	.4byte 0x00000004
	.4byte 0xF25AE280
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF25AE280
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF25AE280
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF25AE280
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF25AE280
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF25AE280
	.4byte 0xF24D9A80
	.4byte 0x0000000F
	.4byte 0xF25DD080
	.4byte 0xF24A7A80
	.4byte kpa_goal
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg1_mobj

# .data:0x2BC | 0x2BC | size: 0x7C
.obj kpa_act_stg1_item, local
	.4byte 0x00000000
	.4byte 0xF23FBC80
	.4byte 0xF24C3C80
	.4byte 0x00000000
	.4byte 0xF2405280
	.4byte 0xF24C3C80
	.4byte 0x00000000
	.4byte 0xF242AA80
	.4byte 0xF24CA080
	.4byte 0x00000000
	.4byte 0xF2434080
	.4byte 0xF24CA080
	.4byte 0x00000000
	.4byte 0xF246F680
	.4byte 0xF24B7480
	.4byte 0x00000000
	.4byte 0xF2478C80
	.4byte 0xF24B7480
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0xF24C6E80
	.4byte 0x00000000
	.4byte 0xF24D6880
	.4byte 0xF24C6E80
	.4byte 0x00000000
	.4byte 0xF24F8E80
	.4byte 0xF24D0480
	.4byte 0x00000000
	.4byte 0xF2502480
	.4byte 0xF24D0480
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg1_item

# .data:0x338 | 0x338 | size: 0xA4
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

# .data:0x3DC | 0x3DC | size: 0x98
.obj kpa_goal, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000074
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00001000
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_seq_set_seq
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_nok_00_kpa_00001490
	.4byte str_w_bero_kpa_00001498
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_goal

# .data:0x474 | 0x474 | size: 0x5C
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

# .data:0x4D0 | 0x4D0 | size: 0x90
.obj kpa_02_init_evt_15_data_4D0, global
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte kpa_init_15_data_5B0
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFA56
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg1_mobj
	.4byte 0x0001005E
	.4byte kpa_read_mobj_15_data_674
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg1_item
	.4byte 0x0001005E
	.4byte kpa_read_item_15_data_B1C
	.4byte 0x0001005C
	.4byte kpa_fall
	.4byte 0x0004005B
	.4byte kpa_status_init_15_text_224
	.4byte 0x00000001
	.4byte 0xF5DE0645
	.4byte 0xF5DE0646
	.4byte 0x00020032
	.4byte 0xF70F2E81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte kpa_stage_start_15_data_11A8
	.4byte 0x0001005C
	.4byte kpa_time_15_data_14A4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_02_init_evt_15_data_4D0
