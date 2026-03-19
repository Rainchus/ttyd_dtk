.include "macros.inc"
.file "unit_act_kinopio.o"

# 0x000019F0..0x00001AA0 | size: 0xB0
.rodata
.balign 8

# .rodata:0x0 | 0x19F0 | size: 0x13
.obj str_btl_un_act_kinopio_nok_00002450, local
	.string "btl_un_act_kinopio"
.endobj str_btl_un_act_kinopio_nok_00002450

# .rodata:0x13 | 0x1A03 | size: 0x1
.obj gap_03_00001A03_rodata, global
.hidden gap_03_00001A03_rodata
	.byte 0x00
.endobj gap_03_00001A03_rodata

# .rodata:0x14 | 0x1A04 | size: 0x10
.obj str_SFX_BTL_DAMAGE1_nok_00002464, local
	.string "SFX_BTL_DAMAGE1"
.endobj str_SFX_BTL_DAMAGE1_nok_00002464

# .rodata:0x24 | 0x1A14 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_nok_00002474, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_nok_00002474

# .rodata:0x39 | 0x1A29 | size: 0x3
.obj gap_03_00001A29_rodata, global
.hidden gap_03_00001A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A29_rodata

# .rodata:0x3C | 0x1A2C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_nok_0000248c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_nok_0000248c

# .rodata:0x50 | 0x1A40 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_nok_000024a0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_nok_000024a0

# .rodata:0x69 | 0x1A59 | size: 0x3
.obj gap_03_00001A59_rodata, global
.hidden gap_03_00001A59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A59_rodata

# .rodata:0x6C | 0x1A5C | size: 0x8
.obj str_KNP_S_1_nok_000024bc, local
	.string "KNP_S_1"
.endobj str_KNP_S_1_nok_000024bc

# .rodata:0x74 | 0x1A64 | size: 0x8
.obj str_KNP_D_1_nok_000024c4, local
	.string "KNP_D_1"
.endobj str_KNP_D_1_nok_000024c4

# .rodata:0x7C | 0x1A6C | size: 0x8
.obj str_KNP_R_1_nok_000024cc, local
	.string "KNP_R_1"
.endobj str_KNP_R_1_nok_000024cc

# .rodata:0x84 | 0x1A74 | size: 0x8
.obj str_KNP_W_1_nok_000024d4, local
	.string "KNP_W_1"
.endobj str_KNP_W_1_nok_000024d4

# .rodata:0x8C | 0x1A7C | size: 0x8
.obj str_KNP_T_1_nok_000024dc, local
	.string "KNP_T_1"
.endobj str_KNP_T_1_nok_000024dc

# .rodata:0x94 | 0x1A84 | size: 0xE
.obj str_btl_un_teresa_nok_000024e4, local
	.string "btl_un_teresa"
.endobj str_btl_un_teresa_nok_000024e4

# .rodata:0xA2 | 0x1A92 | size: 0x2
.obj gap_03_00001A92_rodata, global
.hidden gap_03_00001A92_rodata
	.2byte 0x0000
.endobj gap_03_00001A92_rodata

# .rodata:0xA4 | 0x1A94 | size: 0xA
.obj str_c_kinopio_nok_000024f4, local
	.string "c_kinopio"
.endobj str_c_kinopio_nok_000024f4

# .rodata:0xAE | 0x1A9E | size: 0x2
.obj gap_03_00001A9E_rodata, global
.hidden gap_03_00001A9E_rodata
	.2byte 0x0000
.endobj gap_03_00001A9E_rodata

# 0x000078E0..0x00007B00 | size: 0x220
.data
.balign 8

# .data:0x0 | 0x78E0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x78E8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x78EC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x78F0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x78F4 | size: 0x4
.obj gap_04_000078F4_data, global
.hidden gap_04_000078F4_data
	.4byte 0x00000000
.endobj gap_04_000078F4_data

# .data:0x18 | 0x78F8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x7900 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x7904 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x7908 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x7910 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x7914 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x7918 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x791C | size: 0x4
.obj gap_04_0000791C_data, global
.hidden gap_04_0000791C_data
	.4byte 0x00000000
.endobj gap_04_0000791C_data

# .data:0x40 | 0x7920 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7928 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x792C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7930 | size: 0xC4
.obj unit_act_kinopio_20_data_7930, global
	.4byte 0x000000B9
	.4byte str_btl_un_act_kinopio_nok_00002450
	.4byte 0x000A0000
	.4byte 0x01010100
	.4byte 0x00000064
	.4byte 0x0009001C
	.4byte 0x00180005
	.4byte 0x00190000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x4179999A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BTL_DAMAGE1_nok_00002464
	.4byte str_SFX_BTL_DAMAGE_FIRE1_nok_00002474
	.4byte str_SFX_BTL_DAMAGE_ICE1_nok_0000248c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_nok_000024a0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_act_kinopio_20_data_7930

# .data:0x114 | 0x79F4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x79F9 | size: 0x3
.obj gap_04_000079F9_data, global
.hidden gap_04_000079F9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000079F9_data

# .data:0x11C | 0x79FC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x7A01 | size: 0x3
.obj gap_04_00007A01_data, global
.hidden gap_04_00007A01_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00007A01_data

# .data:0x124 | 0x7A04 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x7A1A | size: 0x2
.obj gap_04_00007A1A_data, global
.hidden gap_04_00007A1A_data
	.2byte 0x0000
.endobj gap_04_00007A1A_data

# .data:0x13C | 0x7A1C | size: 0x38
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_KNP_S_1_nok_000024bc
	.4byte 0x0000001F
	.4byte str_KNP_S_1_nok_000024bc
	.4byte 0x00000027
	.4byte str_KNP_D_1_nok_000024c4
	.4byte 0x0000002A
	.4byte str_KNP_R_1_nok_000024cc
	.4byte 0x00000028
	.4byte str_KNP_W_1_nok_000024d4
	.4byte 0x00000041
	.4byte str_KNP_T_1_nok_000024dc
	.4byte 0x00000045
	.4byte str_KNP_S_1_nok_000024bc
.endobj pose_table

# .data:0x174 | 0x7A54 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x17C | 0x7A5C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_teresa_nok_000024e4
	.4byte str_c_kinopio_nok_000024f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1C8 | 0x7AA8 | size: 0x24
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x1EC | 0x7ACC | size: 0x8
.obj damage_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x1F4 | 0x7AD4 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1FC | 0x7ADC | size: 0x8
.obj attack_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x204 | 0x7AE4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x21C | 0x7AFC | size: 0x4
.obj gap_04_00007AFC_data, global
.hidden gap_04_00007AFC_data
	.4byte 0x00000000
.endobj gap_04_00007AFC_data
