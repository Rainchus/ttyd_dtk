.include "macros.inc"
.file "kpa_04.o"

# 0x000008E8..0x000008F8 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x8E8 | size: 0x7
.obj str_gor_00_kpa_00001d78, local
	.string "gor_00"
.endobj str_gor_00_kpa_00001d78

# .rodata:0x7 | 0x8EF | size: 0x1
.obj gap_03_000008EF_rodata, global
.hidden gap_03_000008EF_rodata
	.byte 0x00
.endobj gap_03_000008EF_rodata

# .rodata:0x8 | 0x8F0 | size: 0x1
.obj zero_kpa_00001d80, local
	.byte 0x00
.endobj zero_kpa_00001d80

# .rodata:0x9 | 0x8F1 | size: 0x7
.obj gap_03_000008F1_rodata, global
.hidden gap_03_000008F1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000008F1_rodata

# 0x00005CC0..0x00006090 | size: 0x3D0
.data
.balign 8

# .data:0x0 | 0x5CC0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5CC8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5CCC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5CD0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5CD4 | size: 0x4
.obj gap_04_00005CD4_data, global
.hidden gap_04_00005CD4_data
	.4byte 0x00000000
.endobj gap_04_00005CD4_data

# .data:0x18 | 0x5CD8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5CE0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5CE4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5CE8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5CF0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5CF4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5CF8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5CFC | size: 0x4
.obj gap_04_00005CFC_data, global
.hidden gap_04_00005CFC_data
	.4byte 0x00000000
.endobj gap_04_00005CFC_data

# .data:0x40 | 0x5D00 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5D08 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5D0C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5D10 | size: 0x140
.obj kpa_act_stg2_mobj, local
	.4byte 0x00000009
	.4byte 0xF246F680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF247BE80
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF247BE80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2488680
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF2488680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2488680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF2494E80
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF24A1680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF24A1680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF24A1680
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF24A1680
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF24ADE80
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF24ADE80
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF24ADE80
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF24ADE80
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF24ADE80
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF24ADE80
	.4byte 0xF24D9A80
	.4byte 0x00000004
	.4byte 0xF24BA680
	.4byte 0xF249B280
	.4byte 0x00000004
	.4byte 0xF24BA680
	.4byte 0xF24A7A80
	.4byte 0x00000004
	.4byte 0xF24BA680
	.4byte 0xF24B4280
	.4byte 0x00000004
	.4byte 0xF24BA680
	.4byte 0xF24C0A80
	.4byte 0x00000004
	.4byte 0xF24BA680
	.4byte 0xF24CD280
	.4byte 0x00000004
	.4byte 0xF24BA680
	.4byte 0xF24D9A80
	.4byte 0x0000000F
	.4byte 0xF24E9480
	.4byte 0xF24A7A80
	.4byte kpa_goal
	.4byte 0xFFFFFFFF
.endobj kpa_act_stg2_mobj

# .data:0x190 | 0x5E50 | size: 0xA4
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

# .data:0x234 | 0x5EF4 | size: 0x58
.obj kpa_goal, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000D9
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_00_kpa_00001d78
	.4byte zero_kpa_00001d80
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_goal

# .data:0x28C | 0x5F4C | size: 0x5C
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

# .data:0x2E8 | 0x5FA8 | size: 0xE8
.obj kpa_04_init_evt_15_data_5FA8, global
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte kpa_init_15_data_5B0
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFE70
	.4byte 0x000001F4
	.4byte 0xFFFFFFFB
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kpa_act_stg2_mobj
	.4byte 0x0001005E
	.4byte kpa_read_mobj_15_data_674
	.4byte 0x0001005C
	.4byte kpa_fall
	.4byte 0x0004005B
	.4byte kpa_status_init_15_text_224
	.4byte 0x00000002
	.4byte 0xF5DE0645
	.4byte 0xF5DE0646
	.4byte 0x00010073
	.4byte 0xF5DE0646
	.4byte 0x00020032
	.4byte 0xF70F2E81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718882
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte kpa_bgm_change_15_data_ED8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0001005C
	.4byte kpa_time_15_data_14A4
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_koopa_set_level
	.4byte 0xF5DE0647
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_04_init_evt_15_data_5FA8
