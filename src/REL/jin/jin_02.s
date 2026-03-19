.include "macros.inc"
.file "jin_02.o"

# 0x00000668..0x000006F0 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x668 | size: 0x7
.obj str_door03_jin_00007888, local
	.string "door03"
.endobj str_door03_jin_00007888

# .rodata:0x7 | 0x66F | size: 0x1
.obj gap_03_0000066F_rodata, global
.hidden gap_03_0000066F_rodata
	.byte 0x00
.endobj gap_03_0000066F_rodata

# .rodata:0x8 | 0x670 | size: 0x7
.obj str_door00_jin_00007890, local
	.string "door00"
.endobj str_door00_jin_00007890

# .rodata:0xF | 0x677 | size: 0x1
.obj gap_03_00000677_rodata, global
.hidden gap_03_00000677_rodata
	.byte 0x00
.endobj gap_03_00000677_rodata

# .rodata:0x10 | 0x678 | size: 0x9
.obj str_n_bero_2_jin_00007898, local
	.string "n_bero_2"
.endobj str_n_bero_2_jin_00007898

# .rodata:0x19 | 0x681 | size: 0x3
.obj gap_03_00000681_rodata, global
.hidden gap_03_00000681_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000681_rodata

# .rodata:0x1C | 0x684 | size: 0x7
.obj str_jin_03_jin_000078a4, local
	.string "jin_03"
.endobj str_jin_03_jin_000078a4

# .rodata:0x23 | 0x68B | size: 0x1
.obj gap_03_0000068B_rodata, global
.hidden gap_03_0000068B_rodata
	.byte 0x00
.endobj gap_03_0000068B_rodata

# .rodata:0x24 | 0x68C | size: 0x7
.obj str_s_bero_jin_000078ac, local
	.string "s_bero"
.endobj str_s_bero_jin_000078ac

# .rodata:0x2B | 0x693 | size: 0x1
.obj gap_03_00000693_rodata, global
.hidden gap_03_00000693_rodata
	.byte 0x00
.endobj gap_03_00000693_rodata

# .rodata:0x2C | 0x694 | size: 0x9
.obj str_n_bero_1_jin_000078b4, local
	.string "n_bero_1"
.endobj str_n_bero_1_jin_000078b4

# .rodata:0x35 | 0x69D | size: 0x3
.obj gap_03_0000069D_rodata, global
.hidden gap_03_0000069D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000069D_rodata

# .rodata:0x38 | 0x6A0 | size: 0x7
.obj str_jin_00_jin_000078c0, local
	.string "jin_00"
.endobj str_jin_00_jin_000078c0

# .rodata:0x3F | 0x6A7 | size: 0x1
.obj gap_03_000006A7_rodata, global
.hidden gap_03_000006A7_rodata
	.byte 0x00
.endobj gap_03_000006A7_rodata

# .rodata:0x40 | 0x6A8 | size: 0x16
.obj str_SFX_STG4_KAIDAN_MOVE_jin_000078c8, local
	.string "SFX_STG4_KAIDAN_MOVE1"
.endobj str_SFX_STG4_KAIDAN_MOVE_jin_000078c8

# .rodata:0x56 | 0x6BE | size: 0x2
.obj gap_03_000006BE_rodata, global
.hidden gap_03_000006BE_rodata
	.2byte 0x0000
.endobj gap_03_000006BE_rodata

# .rodata:0x58 | 0x6C0 | size: 0xE
.obj str_BGM_STG4_JIN1_jin_000078e0, local
	.string "BGM_STG4_JIN1"
.endobj str_BGM_STG4_JIN1_jin_000078e0

# .rodata:0x66 | 0x6CE | size: 0x2
.obj gap_03_000006CE_rodata, global
.hidden gap_03_000006CE_rodata
	.2byte 0x0000
.endobj gap_03_000006CE_rodata

# .rodata:0x68 | 0x6D0 | size: 0xE
.obj str_ENV_STG4_JIN2_jin_000078f0, local
	.string "ENV_STG4_JIN2"
.endobj str_ENV_STG4_JIN2_jin_000078f0

# .rodata:0x76 | 0x6DE | size: 0x2
.obj gap_03_000006DE_rodata, global
.hidden gap_03_000006DE_rodata
	.2byte 0x0000
.endobj gap_03_000006DE_rodata

# .rodata:0x78 | 0x6E0 | size: 0xD
.obj str_mobj_switch1_jin_00007900, local
	.string "mobj_switch1"
.endobj str_mobj_switch1_jin_00007900

# .rodata:0x85 | 0x6ED | size: 0x3
.obj gap_03_000006ED_rodata, global
.hidden gap_03_000006ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006ED_rodata

# 0x00003FF8..0x00004578 | size: 0x580
.data
.balign 8

# .data:0x0 | 0x3FF8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4000 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4004 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4008 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x400C | size: 0x4
.obj gap_04_0000400C_data, global
.hidden gap_04_0000400C_data
	.4byte 0x00000000
.endobj gap_04_0000400C_data

# .data:0x18 | 0x4010 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4018 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x401C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4020 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4028 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x402C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4030 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4034 | size: 0x4
.obj gap_04_00004034_data, global
.hidden gap_04_00004034_data
	.4byte 0x00000000
.endobj gap_04_00004034_data

# .data:0x40 | 0x4038 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4040 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4044 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4048 | size: 0x30
.obj n2_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door03_jin_00007888
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n2_close

# .data:0x80 | 0x4078 | size: 0x30
.obj n2_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door03_jin_00007888
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n2_open

# .data:0xB0 | 0x40A8 | size: 0x30
.obj n1_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door00_jin_00007890
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n1_close

# .data:0xE0 | 0x40D8 | size: 0x30
.obj n1_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door00_jin_00007890
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n1_open

# .data:0x110 | 0x4108 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_n_bero_2_jin_00007898
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_03_jin_000078a4
	.4byte str_s_bero_jin_000078ac
	.4byte 0x00050005
	.4byte n2_close
	.4byte n2_open
	.4byte str_n_bero_1_jin_000078b4
	.4byte 0x00010002
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_jin_00_jin_000078c0
	.4byte str_s_bero_jin_000078ac
	.4byte 0x00050005
	.4byte n1_close
	.4byte n1_open
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

# .data:0x1C4 | 0x41BC | size: 0xF8
.obj cam_shake, local
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_KAIDAN_MOVE_jin_000078c8
	.4byte 0x0000012C
	.4byte 0x00000064
	.4byte 0xFFFFFF38
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_shake

# .data:0x2BC | 0x42B4 | size: 0x240
.obj evt_kaidan_temae, local
	.4byte 0x00020019
	.4byte 0xF70F2E81
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840643A
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001006C
	.4byte 0xFE363C84
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte cam_shake
	.4byte 0x00020018
	.4byte 0xF840643A
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005F
	.4byte 0xFE363C83
	.4byte 0x0001005F
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xF840643A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xF70F2E81
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kaidan_temae

# .data:0x4FC | 0x44F4 | size: 0x84
.obj jin_02_init_evt_13_data_44F4, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_JIN1_jin_000078e0
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_JIN2_jin_000078f0
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
	.4byte 0x0008005B
	.4byte evt_mobj_switch_red
	.4byte 0x00000000
	.4byte str_mobj_switch1_jin_00007900
	.4byte 0x000001E5
	.4byte 0x0000001E
	.4byte 0xFFFFFFF6
	.4byte evt_kaidan_temae
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jin_02_init_evt_13_data_44F4
